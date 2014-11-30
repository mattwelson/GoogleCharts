# CoffeeScript
console.debug "Chart application started"

# Load the Visualization API and the piechart package.
google.load('visualization', '1.0', {'packages':['corechart']});

# Callback that creates and populates a data table, 
# instantiates the pie chart, passes in the data and
# draws it.
drawChart = ->
    console.debug "Drawing chart"
    # Create the data table.
    data = google.visualization.arrayToDataTable([
        ["Day", "Average", "Last week"],
        ["Monday", 8000, 11000],
        ["Tuesday", 7000, 10000],
        ["Wednesday", 7500, 6000],
        ["Thursday", 7000, 7000],
        ["Friday", 9000, 8000],
        ["Saturday", 5000, 10000],
        ["Sunday", 7000, 10000],
    ]);
    

    # Set chart options
    options = {'title':'Average steps per day of week', 'width':1200, 'height':800};

    # Instantiate and draw our chart, passing in some options.
    chart = new google.visualization.LineChart(document.getElementById('chart_div'));
    chart.draw(data, options);

      
# Set a callback to run when the Google Visualization API is loaded.
google.setOnLoadCallback(drawChart);