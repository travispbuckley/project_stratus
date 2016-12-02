$(document).ready(function() {

var test = $.get('/locations').done(function(re){

return response;
});
$.get(test).done(function(response){
  console.log(response);
})
});
