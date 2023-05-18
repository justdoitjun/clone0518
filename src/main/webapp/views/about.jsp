<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
  let chart = {
    init:function() {
      $.ajax({
        url: '/chart',
        success: function (data) {
          chart.display(data);
        }
      });
    },
    display:function(data){
      const chart = new Highcharts.Chart({
        chart: {
          renderTo: 'chart',
          type: 'column',
          options3d: {
            enabled: true,
            alpha: 15,
            beta: 15,
            depth: 50,
            viewDistance: 25
          }
        },
        xAxis: {
          categories: data.id
        },
        yAxis: {
          title: {
            enabled: false
          }
        },
        tooltip: {
          headerFormat: '<b>{point.key}</b><br>',
          pointFormat: 'Shoes Price : {point.y}'
        },
        title: {
          text: 'ID별 가격',
          align: 'left'
        },
        subtitle: {
          text: 'Source: ' +
                  '<a href="https://ofv.no/registreringsstatistikk"' +
                  'target="_blank">OFV</a>',
          align: 'left'
        },
        legend: {
          enabled: false
        },
        plotOptions: {
          column: {
            depth: 25
          }
        },
        series: [{
          data:  data.price,
          colorByPoint: true
        }]
      });

      function showValues() {
        document.getElementById('alpha-value').innerHTML = chart.options.chart.options3d.alpha;
        document.getElementById('beta-value').innerHTML = chart.options.chart.options3d.beta;
        document.getElementById('depth-value').innerHTML = chart.options.chart.options3d.depth;
      }

// Activate the sliders
      document.querySelectorAll('#sliders input').forEach(input => input.addEventListener('input', e => {
        chart.options.chart.options3d[e.target.id] = parseFloat(e.target.value);
        showValues();
        chart.redraw(false);
      }));

      showValues();
    }
  };

  $(function(){
    chart.init();
  });
</script>
<div class="breadcrumbs">
  <div class="container">
    <div class="row">
      <div class="col">
        <p class="bread"><span><a href="index.jsp">Home</a></span> / <span>About</span></p>
      </div>
    </div>
  </div>
</div>


<div class="colorlib-about">
  <div class="container">
    <div class="row row-pb-lg">
      <div class="col-sm-6 mb-3">
        <div class="video colorlib-video" style="background-image: url(images/about.jpg);">
          <a href="https://vimeo.com/channels/staffpicks/93951774" class="popup-vimeo"><i class="icon-play3"></i></a>
          <div class="overlay"></div>
        </div>
      </div>
      <div class="col-sm-6">
        <div class="about-wrap">
          <h2>Footwear the leading eCommerce Store around the Globe</h2>
          <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>
          <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
        </div>
      </div>
    </div>
    <div id="chart">
    </div>
  </div>
</div>


</div>

<div class="gototop js-top">
  <a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
</div>