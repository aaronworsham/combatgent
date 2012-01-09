$(function(){


  $.getJSON('http://blog.combatgent.com/api/read/json?callback=?',
      function(response) {
         $('#tumblink').attr('href',response.posts[0].url);
  });

});
