// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require rails.validations
//= require bootstrap
//= require cocoon
//= require jquery.ui.all
//= require jquery.ui.datepicker-ru
//= require_self

$(function() {
  $.datepicker.setDefaults( $.datepicker.regional[ gon.locale ] );
  $('input.date_picker').live('focus', function(){
    $(this).datepicker({ dateFormat: "yy-mm-dd" });
  });
});

var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-32712743-1']);
_gaq.push(['_trackPageview']);

(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();

var reformalOptions = {
    project_id: 64810,
    project_host: "deadline-camp.reformal.ru",
    tab_orientation: "right",
    tab_indent: "50%",
    tab_bg_color: "#F05A00",
    tab_border_color: "#FFFFFF",
    tab_image_url: "http://tab.reformal.ru/0JLQvtC%252F0YDQvtGB0Ysg0Lgg0L%252FRgNC10LTQu9C%252B0LbQtdC90LjRjw==/FFFFFF/11f125fc88b60dacc6849e2b13ac6111/left/1/tab.png",
    tab_border_width: 2
};

(function() {
    var script = document.createElement('script');
    script.type = 'text/javascript'; script.async = true;
    script.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'media.reformal.ru/widgets/v3/reformal.js';
    document.getElementsByTagName('head')[0].appendChild(script);
})();
