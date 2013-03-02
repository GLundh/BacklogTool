/**
 * Original plugin by Jeremy Martin
 * http://www.jeremymartin.name/projects.php?project=jTruncate
 * 
 * Slightly modified for BacklogTool by Fredrik Persson,
 * Sony Mobile Communications AB.
 */
(function($){
	$.fn.jTruncate = function(options) {
	   
		var defaults = {
			length: 300,
			minTrail: 20,
			moreImage: "more",
			lessImage: "less",
			ellipsisText: "...",
			moreAni: "",
			lessAni: ""
		};
		
		var options = $.extend(defaults, options);
	   
		return this.each(function() {
			obj = $(this);
			var parent = obj.parents("li");
			var body = obj.html();
			
			if(body.length > options.length + options.minTrail) {
				var splitLocation = body.indexOf(' ', options.length);
				if(splitLocation != -1) {
					// truncate tip
					var splitLocation = body.indexOf(' ', options.length);
					var str1 = body.substring(0, splitLocation);
					var str2 = body.substring(splitLocation, body.length - 1);
					obj.html(str1 + '<span class="truncate_ellipsis">' + options.ellipsisText + 
						'</span>' + '<span class="truncate_more">' + str2 + '</span>');
					obj.find('.truncate_more').css("display", "none");
					
					// insert more link
					parent.append(
						'<div class="clearboth">' +
							'<center><a href="#" class="truncate_more_link"><img src="' + options.moreImage + '"/></a></center>' +
						'</div>'
					);

					// set onclick event for more/less link
					var moreLink = $('.truncate_more_link', parent);
					var moreContent = $('.truncate_more', parent);
					var ellipsis = $('.truncate_ellipsis', parent);
					moreLink.click(function() {
						if(moreLink.children("img").attr("src") == options.moreImage) {
							moreContent.show(options.moreAni);
							moreLink.children("img").attr("src", options.lessImage);
							ellipsis.css("display", "none");
						} else {
							moreContent.hide(options.lessAni);
							moreLink.children("img").attr("src", options.moreImage);
							ellipsis.css("display", "inline");
						}
						return false;
				  	});
				}
			}
			
		});
	};
})(jQuery);