module.exports = function(app, mongodb) {

  var pool = require('../../config/mysqldb')

  const asyncMiddleware = fn => (req, res, next) => {
    Promise.resolve(fn(req, res, next))
      .catch(next);
  };

  //PM1 get dati
app.get('/misurazioni/mediapm1/zoom=:zoom&lat1=:lat1&lat2=:lat2&long1=:long1&long2=:long2', async function (req, res) {
  try {
    var misurazioni = await pool.query('SELECT latitudine, longitudine, weight FROM media_zoom' + req.params.zoom +'_pm1'+' WHERE' +
            ' latitudine>=' + req.params.lat2 + ' AND latitudine<=' + req.params.lat1 + ' AND longitudine>=' + req.params.long1 + ' AND longitudine<=' + req.params.long2);
    res.send(misurazioni);
  } catch (err) {
    res.status(500).send();
    throw new Error(err)
  }
});

//PM2.5 get dati
app.get('/misurazioni/mediapm25/zoom=:zoom&lat1=:lat1&lat2=:lat2&long1=:long1&long2=:long2', async function (req, res) {
  try {
    var misurazioni = await pool.query('SELECT latitudine, longitudine, weight FROM media_zoom' + req.params.zoom +'_pm25'+' WHERE' +
            ' latitudine>=' + req.params.lat2 + ' AND latitudine<=' + req.params.lat1 + ' AND longitudine>=' + req.params.long1 + ' AND longitudine<=' + req.params.long2);
    res.send(misurazioni);
  } catch (err) {
    res.status(500).send();
    throw new Error(err)
  }
});
 
  app.get('/misurazioni/mediapm10/zoom=:zoom&lat1=:lat1&lat2=:lat2&long1=:long1&long2=:long2', async function (req, res) {
    try {
      var misurazioni = await pool.query('SELECT latitudine, longitudine, weight FROM media_zoom' + req.params.zoom + '_pm10' + ' WHERE' +
              ' latitudine>=' + req.params.lat2 + ' AND latitudine<=' + req.params.lat1 + ' AND longitudine>=' + req.params.long1 + ' AND longitudine<=' + req.params.long2);
      res.send(misurazioni);
    } catch (err) {
      res.status(500).send();
      throw new Error(err)
    }
  });

  app.get('/misurazioni/getyears', async function (req, res) {
    try {
      var anni = await pool.query('SELECT data AS anno FROM media_anno_zoom1_pm1;');
      res.send(anni);
    } catch (err) {
      res.status(500).send();
      throw new Error(err)
    }
  });



  app.get('/misurazioni/getmonthofyear/:year', async function (req, res) {
    try {
      var mesi = await pool.query('SELECT SUBSTRING(data, 6, 8) AS mese FROM media_mese_zoom1_pm1 WHERE SUBSTRING(data, 1, 4) = ' + req.params.year + '  ORDER BY mese ASC;');
      res.send(mesi);
    } catch (err) {
      res.status(500).send();
      throw new Error(err)
    }
  });

  app.get('/misurazioni/getdayofmonth/year=:year&month=:month', async function (req, res) {
    try {
      var giorni = await pool.query('SELECT SUBSTRING(data, 9, 10) AS giorno FROM media_giorno_zoom1_pm1 WHERE SUBSTRING(data, 1, 7) = \'' + req.params.year + '-' + req.params.month + '\';');
      res.send(giorni);
    } catch (err) {
      res.status(500).send();
      throw new Error(err)
    }
  });

  app.get('/misurazioni/gethourofday/year=:year&month=:month&day=:day', async function (req, res) {
    try {
      var ore = await pool.query('SELECT SUBSTRING(data, 12) AS ora FROM media_ora_zoom1_pm1 WHERE SUBSTRING(data, 1, 10) = \'' + req.params.year + '-' + req.params.month + '-' + req.params.day + '\';');
      res.send(ore);
    } catch (err) {
      res.status(500).send();
      throw new Error(err)
    }
  });

  app.get('/misurazioni/media/anno/from=:start&to=:end&zoom=:zoom&lat1=:lat1&lat2=:lat2&long1=:long1&long2=:long2&animation_backend_param=:animation_backend_param', async function (req, res) {
    try {
      var arr = await pool.query('SELECT latitudine, longitudine, weight, data FROM media_anno_zoom' + req.params.zoom + req.params.animation_backend_param +' WHERE' +
              ' latitudine>=' + req.params.lat2 + ' AND latitudine<=' + req.params.lat1 + ' AND longitudine>=' + req.params.long1 + ' AND longitudine<=' + req.params.long2 + ' AND ' +
              'STR_TO_DATE(data, \'%Y\')>=STR_TO_DATE(\'' + req.params.start + '\', \'%Y\') AND STR_TO_DATE(data, \'%Y\')<=STR_TO_DATE(\'' + req.params.end + '\', \'%Y\')');
      var sorted = {};
      for( var i = 0, max = arr.length; i < max ; i++ ){
        if( sorted[arr[i].data] == undefined ){
          sorted[arr[i].data] = [];
        }
        sorted[arr[i].data].push(arr[i]);
      }
      res.send(sorted);
    } catch (err) {
      res.status(500).send();
      throw new Error(err)
    }
  });

  app.get('/misurazioni/media/mese/from=:start&to=:end&zoom=:zoom&lat1=:lat1&lat2=:lat2&long1=:long1&long2=:long2&animation_backend_param=:animation_backend_param', async function (req, res) {
    try {
      var arr = await pool.query('SELECT latitudine, longitudine, weight, data FROM media_mese_zoom' + req.params.zoom + req.params.animation_backend_param +' WHERE' +
              ' latitudine>=' + req.params.lat2 + ' AND latitudine<=' + req.params.lat1 + ' AND longitudine>=' + req.params.long1 + ' AND longitudine<=' + req.params.long2 + ' AND ' +
              'STR_TO_DATE(data, \'%Y-%m\')>=STR_TO_DATE(\'' + req.params.start + '\', \'%Y-%m\') AND STR_TO_DATE(data, \'%Y-%m\')<=STR_TO_DATE(\'' + req.params.end + '\', \'%Y-%m\')');
      var sorted = {};
      for( var i = 0, max = arr.length; i < max ; i++ ){
        if( sorted[arr[i].data] == undefined ){
          sorted[arr[i].data] = [];
        }
        sorted[arr[i].data].push(arr[i]);
      }
      res.send(sorted);
    } catch (err) {
      res.status(500).send();
      throw new Error(err)
    }
  });

  app.get('/misurazioni/media/giorno/from=:start&to=:end&zoom=:zoom&lat1=:lat1&lat2=:lat2&long1=:long1&long2=:long2&animation_backend_param=:animation_backend_param', async function (req, res) {
    try {
      var arr = await pool.query('SELECT latitudine, longitudine, weight, data FROM media_giorno_zoom' + req.params.zoom + req.params.animation_backend_param +' WHERE' +
              ' latitudine>=' + req.params.lat2 + ' AND latitudine<=' + req.params.lat1 + ' AND longitudine>=' + req.params.long1 + ' AND longitudine<=' + req.params.long2 + ' AND ' +
              'STR_TO_DATE(data, \'%Y-%m-%d\')>=STR_TO_DATE(\'' + req.params.start + '\', \'%Y-%m-%d\') AND STR_TO_DATE(data, \'%Y-%m-%d\')<=STR_TO_DATE(\'' + req.params.end + '\', \'%Y-%m-%d\')');
      var sorted = {};
      for( var i = 0, max = arr.length; i < max ; i++ ){
        if( sorted[arr[i].data] == undefined ){
          sorted[arr[i].data] = [];
        }
        sorted[arr[i].data].push(arr[i]);
      }
      res.send(sorted);
    } catch (err) {
      res.status(500).send();
      throw new Error(err)
    }
  });

  app.get('/misurazioni/media/ora/from=:start&to=:end&zoom=:zoom&lat1=:lat1&lat2=:lat2&long1=:long1&long2=:long2&animation_backend_param=:animation_backend_param', async function (req, res) {
    try {
      var arr = await pool.query('SELECT latitudine, longitudine, weight, data FROM media_ora_zoom' + req.params.zoom + req.params.animation_backend_param + ' WHERE' +
              ' latitudine>=' + req.params.lat2 + ' AND latitudine<=' + req.params.lat1 + ' AND longitudine>=' + req.params.long1 + ' AND longitudine<=' + req.params.long2 + ' AND ' +
              'STR_TO_DATE(data, \'%Y-%m-%d %H:%i:%s\')>=STR_TO_DATE(\'' + req.params.start + '\', \'%Y-%m-%d %H:%i:%s\') AND STR_TO_DATE(data, \'%Y-%m-%d %H:%i:%s\')<=STR_TO_DATE(\'' + req.params.end + '\', \'%Y-%m-%d %H:%i:%s\')');
      var sorted = {};
      for( var i = 0, max = arr.length; i < max ; i++ ){
        if( sorted[arr[i].data] == undefined ){
          sorted[arr[i].data] = [];
        }
        sorted[arr[i].data].push(arr[i]);
      }
      res.send(sorted);
    } catch (err) {
      res.status(500).send();
      throw new Error(err)
    }
  });

  app.get('/misurazioni/averageDB_PM10', asyncMiddleware(async (req, res, next) => {
    try {
      var low =  await pool.query('SELECT ((COUNT(result.media)*100)/(SELECT COUNT(DISTINCT(report.persona_idpersona)) FROM report)) AS percentage_safe_person FROM (SELECT AVG(misurazione_pm.valore) AS media FROM misurazione_pm, report WHERE misurazione_pm.report_idreport = report.idreport AND misurazione_pm.pm_type = "PM10" GROUP BY report.persona_idpersona) AS result WHERE result.media <= 15')
      var med =  await pool.query('SELECT ((COUNT(result.media)*100)/(SELECT COUNT(DISTINCT(report.persona_idpersona)) FROM report)) AS percentage_safe_person FROM (SELECT AVG(misurazione_pm.valore) AS media FROM misurazione_pm, report WHERE misurazione_pm.report_idreport = report.idreport AND misurazione_pm.pm_type = "PM10" GROUP BY report.persona_idpersona) AS result WHERE result.media > 15 AND result.media <= 40')
      var high =  await pool.query('SELECT ((COUNT(result.media)*100)/(SELECT COUNT(DISTINCT(report.persona_idpersona)) FROM report)) AS percentage_safe_person FROM (SELECT AVG(misurazione_pm.valore) AS media FROM misurazione_pm, report WHERE misurazione_pm.report_idreport = report.idreport AND misurazione_pm.pm_type = "PM10" GROUP BY report.persona_idpersona) AS result WHERE result.media > 40')

      res.send([{label: 'Basso', percentage: low[0].percentage_safe_person},
                {label: 'Medio', percentage: med[0].percentage_safe_person},
                {label: 'Alto', percentage: high[0].percentage_safe_person}]);
    } catch (err) {
      res.status(500).send();
      throw new Error(err)
    }
  }));

  app.get('/misurazioni/averageDB_PM2_5', asyncMiddleware(async (req, res, next) => {
    try {
      var low =  await pool.query('SELECT ((COUNT(result.media)*100)/(SELECT COUNT(DISTINCT(report.persona_idpersona)) FROM report)) AS percentage_safe_person FROM (SELECT AVG(misurazione_pm.valore) AS media FROM misurazione_pm, report WHERE misurazione_pm.report_idreport = report.idreport AND misurazione_pm.pm_type = "PM2.5" GROUP BY report.persona_idpersona) AS result WHERE result.media <= 25')
      var med =  await pool.query('SELECT ((COUNT(result.media)*100)/(SELECT COUNT(DISTINCT(report.persona_idpersona)) FROM report)) AS percentage_safe_person FROM (SELECT AVG(misurazione_pm.valore) AS media FROM misurazione_pm, report WHERE misurazione_pm.report_idreport = report.idreport AND misurazione_pm.pm_type = "PM2.5" GROUP BY report.persona_idpersona) AS result WHERE result.media > 25 AND result.media <= 29')
      var high =  await pool.query('SELECT ((COUNT(result.media)*100)/(SELECT COUNT(DISTINCT(report.persona_idpersona)) FROM report)) AS percentage_safe_person FROM (SELECT AVG(misurazione_pm.valore) AS media FROM misurazione_pm, report WHERE misurazione_pm.report_idreport = report.idreport AND misurazione_pm.pm_type = "PM2.5" GROUP BY report.persona_idpersona) AS result WHERE result.media > 29')

      res.send([{label: 'Basso', percentage: low[0].percentage_safe_person},
                {label: 'Medio', percentage: med[0].percentage_safe_person},
                {label: 'Alto', percentage: high[0].percentage_safe_person}]);
    } catch (err) {
      res.status(500).send();
      throw new Error(err)
    }
  }));

  app.get('/misurazioni/averageDB_PM1', asyncMiddleware(async (req, res, next) => {
    try {
      var low =  await pool.query('SELECT ((COUNT(result.media)*100)/(SELECT COUNT(DISTINCT(report.persona_idpersona)) FROM report)) AS percentage_safe_person FROM (SELECT AVG(misurazione_pm.valore) AS media FROM misurazione_pm, report WHERE misurazione_pm.report_idreport = report.idreport AND misurazione_pm.pm_type = "PM1" GROUP BY report.persona_idpersona) AS result WHERE result.media <= 30')
      var med =  await pool.query('SELECT ((COUNT(result.media)*100)/(SELECT COUNT(DISTINCT(report.persona_idpersona)) FROM report)) AS percentage_safe_person FROM (SELECT AVG(misurazione_pm.valore) AS media FROM misurazione_pm, report WHERE misurazione_pm.report_idreport = report.idreport AND misurazione_pm.pm_type = "PM1" GROUP BY report.persona_idpersona) AS result WHERE result.media > 30 AND result.media <= 55')
      var high =  await pool.query('SELECT ((COUNT(result.media)*100)/(SELECT COUNT(DISTINCT(report.persona_idpersona)) FROM report)) AS percentage_safe_person FROM (SELECT AVG(misurazione_pm.valore) AS media FROM misurazione_pm, report WHERE misurazione_pm.report_idreport = report.idreport AND misurazione_pm.pm_type = "PM1" GROUP BY report.persona_idpersona) AS result WHERE result.media > 55')

      res.send([{label: 'Basso', percentage: low[0].percentage_safe_person},
                {label: 'Medio', percentage: med[0].percentage_safe_person},
                {label: 'Alto', percentage: high[0].percentage_safe_person}]);
    } catch (err) {
      res.status(500).send();
      throw new Error(err)
    }
  }));

app.get('/misurazioni/daychangesPM10', asyncMiddleware(async (req, res, next) => {
  try {
    let daychanges = [];
    
    var dayaverage = await pool.query("SELECT HOUR(report.data_report) as hour_of_day ,AVG(misurazione_pm.valore) as media FROM misurazione_pm, report WHERE misurazione_pm.report_idreport = report.idreport AND misurazione_pm.pm_type = 'PM10' GROUP BY HOUR(report.data_report) ORDER BY hour_of_day;");
    for(let m=0; m<dayaverage.length; m++){
        daychanges.push({hour: dayaverage[m].hour_of_day, level: dayaverage[m].media})}
   
    res.send(daychanges)
  } catch (err) {
    res.status(500).send();
    throw new Error(err)
  }
}));

app.get('/misurazioni/daychangesPM25', asyncMiddleware(async (req, res, next) => {
  try {
    let daychanges = [];
    
    var dayaverage = await pool.query("SELECT HOUR(report.data_report) as hour_of_day ,AVG(misurazione_pm.valore) as media FROM misurazione_pm, report WHERE misurazione_pm.report_idreport = report.idreport AND misurazione_pm.pm_type = 'PM2.5' GROUP BY HOUR(report.data_report) ORDER BY hour_of_day;");
    for(let m=0; m<dayaverage.length; m++){
        daychanges.push({hour: dayaverage[m].hour_of_day, level: dayaverage[m].media})}
   
    res.send(daychanges)
  } catch (err) {
    res.status(500).send();
    throw new Error(err)
  }
}));

app.get('/misurazioni/daychangesPM1', asyncMiddleware(async (req, res, next) => {
  try {
    let daychanges = [];
    
    var dayaverage = await pool.query("SELECT HOUR(report.data_report) as hour_of_day ,AVG(misurazione_pm.valore) as media FROM misurazione_pm, report WHERE misurazione_pm.report_idreport = report.idreport AND misurazione_pm.pm_type = 'PM1' GROUP BY HOUR(report.data_report) ORDER BY hour_of_day;");
    for(let m=0; m<dayaverage.length; m++){
        daychanges.push({hour: dayaverage[m].hour_of_day, level: dayaverage[m].media})}

    res.send(daychanges)
  } catch (err) {
    res.status(500).send();
    throw new Error(err)
  }
}));

app.get('/misurazioni/carriermedium', asyncMiddleware(async (req, res, next) => {
  try {
    //var medium = await mongodb.collection('misurazioni').aggregate([{$group:{_id: "$simInfo.carrier", avgdbm: { $avg: "$networkMeasure.measure.value" }}}]).toArray()
    var medium = await pool.query('SELECT AVG(misurazione_rete_cellulare.valore) AS \'avgdbm\', gestore.nome AS \'_id\'FROM misurazione_rete_cellulare, gestore WHERE misurazione_rete_cellulare.gestore_idgestore = gestore.idgestore GROUP BY misurazione_rete_cellulare.gestore_idgestore;')
    res.send(medium);
  } catch (err) {
    res.status(500).send();
    throw new Error(err)
  }
})
);

  app.post('/misurazioni', asyncMiddleware(async (req, res, next) => {
    try {
      req.body.timestamp = new Date(req.body.timestamp);
      const result = await mongodb.collection('misurazioni_aria').insert(req.body);
      res.send(result)
    } catch(err) {
      res.status(500).send();
      console.log(req.body);
      throw new Error(err)
    }
  })
);

app.post('/misurazioni/mockup', asyncMiddleware(async(req, res) => {
  try {
    console.log("- MOCKUP DATA -")

      for(let j in req.body) {
        var date = new Date(req.body[j].timestamp)
        req.body[j].timestamp = getFormattedDate(date)
        //console.log(req.body[j])
      }

      mongodb.collection('misurazioni_aria').insertMany(req.body, function(error, inserted) {
        if(error) {
            console.error(error);
        }
        else {
          console.log(inserted.result.n + " documents received and inserted correctly")
          res.send(inserted);
        }
      });
      

    } catch (err) {
      res.status(500).send();
      throw new Error(err)
    }
  })
);

function getFormattedDate(date) {
  var userTimezoneOffset = date.getTimezoneOffset() * 60000;
  return new Date(date.getTime() - userTimezoneOffset);
}
};
