// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.jcrop
//= require papercrop
//= require turbolinks
//= require bootstrap.min
//= require jasny-bootstrap.min
//= require jquery.bsPhotoGallery
//= require bootstrap-select.min
//= require cocoon

function scrollFunction() {
    //document.getElementById("go-to-bottom").style.display = "block";
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("go-to-top").style.display = "block";
    } else {
      //  document.getElementById("go-to-bottom").style.display = "none";
        document.getElementById("go-to-top").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0; // For Chrome, Safari and Opera 
    document.documentElement.scrollTop = 0; // For IE and Firefox
}
function bottomFunction() {
		window.scrollTo(0,document.body.scrollHeight);
}

window.onscroll = function() {scrollFunction()};

function createAutoClosingAlert(selector, delay) {
   var alert = $(selector).alert();
   window.setTimeout(function() { alert.alert('close') }, delay);
}

$(document).on('turbolinks:load', function() {
  $('ul.first').bsPhotoGallery({
    "classes" : "col-lg-2 col-md-4 col-sm-3 col-xs-4 col-xxs-12",
    "hasModal" : true
  });
  $('[data-toggle="tooltip"]').tooltip();
  $('select.form-control').selectpicker();

  createAutoClosingAlert(".alert", 2000);

});
