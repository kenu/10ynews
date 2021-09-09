var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  const news = {
    today: new Date().toLocaleDateString()
  }
  res.render('index', { title: '10년전 오늘', news });
});

module.exports = router;
