jQuery(document).ready(function(){  
  $("#tabs").tabs();

   $.getJSON('http://blog.combatgent.com/api/read/json?callback=?',
       function(response) {
          $('#tumblink').attr('href',response.posts[0].url);
					$('#tumblink').text(response.posts[0]['regular-title']);
					// console.log(response.posts[0].title);
   });

	$("#order_use_billing").change(function(){
		$("#shipping .inner").slideToggle();
	});


});