module.exports = function(mongodb) {
    let cron = require('cron');
    var pool = require('../../config/mysqldb');
    var checkpoint = true;

    let countJob = new cron.CronJob({
        cronTime : '0 */59 * * * *',  // The time pattern when you want the job to start
        onTick : dbTransfer, // Task to run
        start : true, // immediately starts the job.
    });

    //cronTime : '0 */3 * * * *',

    async function dbTransfer(){
        console.log("running task " + new Date())
       
        try{
            //let i = 0;
            var date = new Date();
            /* MOCK DATE */
            //var timestamp = new Date("2019-05-31T07:00:00.458Z")
            //var userTimezoneOffset = timestamp.getTimezoneOffset() * 60000;
            //var date = new Date(timestamp.getTime() - userTimezoneOffset);
            /*************/

            var currentDate = getFormattedDate(date)
            var oneHourBackDate = getOneHourBackDate(date);
        

            const misurazioni = await mongodb.collection('misurazioni_aria').find({"timestamp": { $gte: oneHourBackDate, $lt: currentDate } }).toArray();
            console.log(misurazioni);
            //{ "timestamp": { $gte: oneHourBackDate, $lt: currentDate } }
            //const misurazioni = await mongodb.collection('misurazioni').find().toArray();
            //const misurazioni = [];
            //console.log(misurazioni.length)
            if(misurazioni.length != 0 && checkpoint) {
                checkpoint=false;
                for(let m of misurazioni) {

                    var persona = await pool.query('SELECT * FROM persona WHERE persona.email = ?', m.userID)

                    /***********************DISPOSITIVO************************/

                    var dispositivo = await pool.query('SELECT * FROM dispositivo WHERE nome_dispositivo=?', m.source)

                    if(dispositivo.length == 0) { //dispositivo non esiste
                        var dispositivo = await pool.query('INSERT INTO dispositivo (nome_dispositivo) VALUES (?)', m.source)
                        var owner = await pool.query('INSERT INTO persona_has_dispositivo (persona_idpersona, dispositivo_iddispositivo) VALUES (?,?)', [persona[0].idpersona, dispositivo.insertId])
                        
                    } else { //dispositivo esiste
                        var owner = await pool.query('INSERT INTO persona_has_dispositivo (persona_idpersona, dispositivo_iddispositivo) VALUES (?,?)', [persona[0].idpersona, dispositivo[0].id_dispositivo])
                    }

                    /***********************GPS************************/
                    var gps =  await pool.query('SELECT * FROM misurazione_gps WHERE latitudine=? AND longitudine=?',[m.latitude,  m.longitude])
                    if(gps.length == 0) { //coord gps non esistono
                        gps =  await pool.query('INSERT INTO misurazione_gps (latitudine,longitudine) VALUES(?,?)',[m.latitude,  m.longitude])
                        gps =  await pool.query('SELECT * FROM misurazione_gps WHERE latitudine=? AND longitudine=?',[m.latitude,  m.longitude])
                    }
                    /***********************REPORT************************/
                    var dispositivo_estrazione = await pool.query('SELECT * FROM dispositivo WHERE nome_dispositivo=?', m.source)

                    var report = await pool.query('INSERT INTO report (data_report, misurazione_gps_idmisurazione_gps, persona_idpersona, dispositivo_iddispositivo) VALUES (?, ?, ?, ?)', [getSQLDate(m.timestamp), gps[0].idmisurazione_gps, persona[0].idpersona, dispositivo_estrazione[0].id_dispositivo])

                    /***********************MISURE************************/
                    var unit_measure_pm = await pool.query('SELECT * FROM unita_misura WHERE unita_misura.nome = ?',[m.PM1.unitMeasure])
                    var unit_measure_temp = await pool.query('SELECT * FROM unita_misura WHERE unita_misura.nome = ?',[m.temperature.unitMeasure])
                    var unit_measure_hum = await pool.query('SELECT * FROM unita_misura WHERE unita_misura.nome = ?',[m.relative_humidity.unitMeasure])

                    /***********************PM************************/
                    if(unit_measure_pm.length == 0) { //unita di misura non esiste
                        unit_measure_pm = await pool.query('INSERT INTO unita_misura (nome) VALUES (?)', m.PM1.unitMeasure)
                        unit_measure_pm = await pool.query('SELECT * FROM unita_misura WHERE unita_misura.nome=?', m.PM1.unitMeasure)
                    }

                    var pm1_measure = await pool.query('INSERT INTO misurazione_pm (valore, pm_type, unita_misura_idunita_misura, report_idreport, valore_max, valore_min) VALUES (?, ?, ?, ?, ?, ?)', [m.PM1.value, 'PM1', unit_measure_pm[0].idunita_misura, report.insertId, m.PM1.max_value, m.PM1.min_value])
                    var pm25_measure = await pool.query('INSERT INTO misurazione_pm (valore, pm_type, unita_misura_idunita_misura, report_idreport, valore_max, valore_min) VALUES (?, ?, ?, ?, ?, ?)', [m.PM2_5.value, 'PM2.5', unit_measure_pm[0].idunita_misura, report.insertId, m.PM2_5.max_value, m.PM2_5.min_value])
                    var pm10_measure = await pool.query('INSERT INTO misurazione_pm (valore, pm_type, unita_misura_idunita_misura, report_idreport, valore_max, valore_min) VALUES (?, ?, ?, ?, ?, ?)', [m.PM10.value, 'PM10', unit_measure_pm[0].idunita_misura, report.insertId, m.PM10.max_value, m.PM10.min_value])
                    
                    /***********************TEMPERATURE************************/
                    if(unit_measure_temp.length == 0) { //unita di misura non esiste
                        unit_measure_temp = await pool.query('INSERT INTO unita_misura (nome) VALUES (?)', m.temperature.unitMeasure)
                        unit_measure_temp = await pool.query('SELECT * FROM unita_misura WHERE unita_misura.nome=?', m.temperature.unitMeasure)
                    }

                    var temperature_measure = await pool.query('INSERT INTO misurazione_temperatura (valore, unita_misura_idunita_misura, report_idreport, valore_max, valore_min) VALUES (?, ?, ?, ?, ?)', [m.temperature.value,  unit_measure_temp[0].idunita_misura, report.insertId, m.temperature.max_value, m.temperature.min_value])
                    
                    /***********************HUMIDITY************************/
                    if(unit_measure_hum.length == 0) { //unita di misura non esiste
                        unit_measure_hum = await pool.query('INSERT INTO unita_misura (nome) VALUES (?)', m.relative_humidity.unitMeasure)
                        unit_measure_hum = await pool.query('SELECT * FROM unita_misura WHERE unita_misura.nome=?', m.relative_humidity.unitMeasure)
                    }

                    var humidity_measure = await pool.query('INSERT INTO misurazione_umidità (valore, unita_misura_idunita_misura, report_idreport, valore_max, valore_min) VALUES (?, ?, ?, ?, ?)', [m.relative_humidity.value, unit_measure_hum[0].idunita_misura, report.insertId, m.relative_humidity.max_value, m.relative_humidity.min_value])
                        
                    }
                }
                        
            checkpoint = true;
        } catch (err){
            console.log(err)
        }

            //console.log("finish")
    };


    function getOneHourBackDate(date) {
        var newDate = getFormattedDate(date)
        newDate.setTime(newDate.getTime() - (60*60*1000))
        return new Date(newDate.toISOString());
    }

    function getSQLDate(date) {
        return date.toISOString().substring(0, date.toISOString().length-5)
    }

    function getFormattedDate(date) {
        var userTimezoneOffset = date.getTimezoneOffset() * 60000;
        return new Date(date.getTime() - userTimezoneOffset);
    }
    
};