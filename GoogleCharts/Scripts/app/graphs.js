(function() {
  var drawChart;

  console.debug("Chart application started");

  google.load('visualization', '1.0', {
    'packages': ['corechart']
  });

  drawChart = function() {
    var chart, data, options;
    console.debug("Drawing chart");
    data = google.visualization.arrayToDataTable([["Day", "Average", "Last week"], ["Monday", 8000, 11000], ["Tuesday", 7000, 10000], ["Wednesday", 7500, 6000], ["Thursday", 7000, 7000], ["Friday", 9000, 8000], ["Saturday", 5000, 10000], ["Sunday", 7000, 10000]]);
    options = {
      'title': 'Average steps per day of week',
      'width': 1200,
      'height': 800
    };
    chart = new google.visualization.LineChart(document.getElementById('chart_div'));
    return chart.draw(data, options);
  };

  google.setOnLoadCallback(drawChart);

}).call(this);

//# sourceMappingURL=graphs.js.map
