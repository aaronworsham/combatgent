jQuery(document).ready(function(){  
  $("#tabs").tabs();

   $.getJSON('http://blog.combatgent.com/api/read/json?callback=?',
       function(response) {
          $('#tumblink').attr('href',response.posts[0].url);
					$('#tumblink').text(response.posts[0]['regular-title']);
					// console.log(response.posts[0].title);
   });

	if($("#announcement").length > 0){
		$("body").addClass("announcement");
		$("#announcement").fadeIn();
	}

	// if($("#order_use_billing").is(":checked")){
	// 	$("#shipping .inner").hide();
	// 	$(this).change(function(){
	// 		$("#shipping .inner").slideToggle();
	// 	});
	// } else {
	// 	$(this).change(function(){
	// 		$("#shipping .inner").slideToggle();
	// 	});		
	// }
	// 
	// $("#order_use_billing").change(function(){
	// 	$("#shipping .inner").slideToggle();
	// });
	
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
		$("#product-images a").attr("href", newImg);
		
		// Change nav state
		$(this).parent("li").siblings().removeClass("current");
		$(this).parent("li").addClass("current");
		
		return false;
	});
	
	
	$("a#toggle-images").click(function(e){
		e.preventDefault();
			$("#product-fit").fadeOut("slow", function(){
				$("#product-thumbnails").fadeIn("slow");							
			});
			$(this).parent("li").siblings("li").find("a").removeClass("current");
			$(this).addClass("current");
		return false;
	});
	
	$("a#toggle-fit").click(function(e){
		e.preventDefault();
			$("#product-thumbnails").fadeOut("slow", function(){
				$("#product-fit").fadeIn("slow");							
			});
			$(this).parent("li").siblings("li").find("a").removeClass("current");
			$(this).addClass("current");			
		return false;
	});	
	
	$("select[name='[quantity]'], #inside_product_cart_form select").selectmenu({
		width:'225',
		direction:'down'
	});	
	
	
	$(".panel-wrapper .product").tooltip({ 
		// tip: #tipId,
		effect: 'slide',
		direction: 'right'
	});	
	
	$("#toolbar .action.cart:empty").remove();
	
	// If no outfit matches available, inflate size of 
	// add to cart button to occupy more of box
	if($("#match-to-outfit input[type=submit]").length === 0){
		$("#closet_item_submit, .closet_button").css({
			"width" : 300
		});
	}
	
  $("a.single_image").fancybox();
	
	$("#product-details #populate_order_form").submit(function(){
	  needs_to_select = false;
	  $('#populate_order_form select').each(function() {
      if($(this).val() == ""){ needs_to_select = true;}
    });
    if(needs_to_select){
      alert("Please select all product options")
      return false;
    }
    else { return true; }
	});
	
	$('#user_closet #populate_order_form').submit(function(){
	  needs_to_select = false;
	  $(this).parent('.product').find('.size select').each(function() {
      if($(this).val() == ""){ needs_to_select = true;}
    });
    if(needs_to_select){
      alert("Please select all product options")
      return false;
    }
    else { return true; }
	});
	
	
	$("#product-images a").click(function(e){
		e.preventDefault();
		return false;
	});
	
});