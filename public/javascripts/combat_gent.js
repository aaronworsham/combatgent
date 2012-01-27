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
	
	/* TO-DO: Moving price to the right spot, we should get this done in Ruby instead. */
	var actualPrice = "<span>" + $(".price.selling").text() + "</span>";
	$("p.prices").remove();
	$("#product-title").append(actualPrice);
	
	// $("#add-to-closet-form").appendTo("#cart-form");
	// $("#match-to-outfit").appendTo("#cart-form");	


	$("#product-thumbnails li:nth-child(2)").addClass("current");

	$("#product-thumbnails a").click(function(e){
		e.preventDefault();
		// Load the new image
		var newImg = $(this).attr("href");
		$("#product-images img").attr("src", newImg);
		
		// Change nav state
		$(this).parent("li").siblings().removeClass("current");
		$(this).parent("li").addClass("current");
		
		return false;
	});
	
	$("select[name='[quantity]'], #inside_product_cart_form select").selectmenu({
		width:'225',
		direction:'down'
	});	
	
	
	$("#slot_1 .product.a, #slot_1 .product.b").tooltip({ 
		// tip: #tipId,
		effect: 'slide',
		direction: 'right'
	});	
	
	$("#toolbar .action.cart:empty").remove();
	
	
	
	// if($("#toolbar .action.cart").is(":empty")){
	// 	alert("nanigga");
	// }
	

});