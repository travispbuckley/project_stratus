$(document).ready(function() {
  $("#check-weather form").on('submit', function(e){
    e.preventDefault();
    var that = $(this);
    var city = $(this).find("input[name=city]").val();
    var state = $(this).find("input[name=state]").val();

    $.get("http://api.wunderground.com/api/0f9d8611536a96e6/conditions/q/"+state+"/"+city+".json")
      .done(function(response){
        $(".temperature").append(response.current_observation.feelslike_f);
        $('.temperature').trigger('reset')
        // $(that).closest(".show-city").removeClass('show-city');
        // $(that).closest(".hello").addClass('display-city');

        // debugger
    })
  })
});
