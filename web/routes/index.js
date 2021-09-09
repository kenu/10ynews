const express = require('express');
const router = express.Router();

function lpad(number) {
  return number > 9 ? String(number) : '0' + number;
}
function getToday() {
  const date = new Date();
  const year = date.getFullYear() - 10;
  const month = date.getMonth() + 1;
  const day = date.getDate();
  const today = year + '-' + lpad(month) + '-' + lpad(day);
  return today;
}
/* GET home page. */
router.get('/', function(req, res, next) {
  const today = getToday();
  const query = `%22%EB%93%B1%EB%A1%9D+%3A${today}%22`;
  const news = {
    today,
    query
  }
  res.render('index', { title: '10년전 오늘', news });
});

module.exports = router;
