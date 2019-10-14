	var SPLASH = SPLASH || {};

	    		SPLASH.utils = {
		autoSizeText: function(){
			var el, elements, _i, _len, _results;
			var stopCount = 0;
			elements = $( '.autoresize' );
			// //console.log( elements );

			if (elements.length < 0) {
				return;
			}

			_results = [];
			for (_i = 0, _len = elements.length; _i < _len; _i++) {
				el = elements[_i];
				_results.push((function(el) {
					var resizeText, _results1;

					resizeText = function() {
						stopCount++;
						var elNewFontSize;
						
						elNewFontSize = (parseInt($(el).css('font-size').slice(0, -2)) - 1) + 'px';
				
						return $(el).css('font-size', elNewFontSize);
					};

					_results1 = [];
					 while ((el.scrollHeight > el.offsetHeight) && (stopCount<100)) {
						_results1.push(resizeText());

					} 
				
					
					
					return _results1;
				})(el));

		
			}
			////console.log(_results)
			

			//return _results;
		},
		positionPrice:function() {

			
			elements = $( '.price' );
			if (elements.length < 0) {
				return;
			}
			//_results = [];
			for (_i = 0; _i < elements.length; _i++) {
				el = elements[_i];
			
					//check for the previous one font size.
					var fs = 	$(el).prev().css( "font-size" );
					var t = $(el).prev().position().top
					var h = $(el).prev().height();
					//matching the font size to the product
					// $(el).css('font-size',fs);
					//position the price 
					$(el).css('top',t+h+5 )
					
			

			}
		},
		common: function() {
           var reportId1 = document.getElementById("report1").getAttribute("data-report1");
            var reportId2 = document.getElementById("report2").getAttribute("data-report2");
            var reportId3 = document.getElementById("report3").getAttribute("data-report3");
            if(SPLASH.app.currentProductURL == "1"){
                jvxAd.recordEventByName(reportId1+"_NonInteraction",0);
            }else if(SPLASH.app.currentProductURL == "2"){
                jvxAd.recordEventByName(reportId2+"_NonInteraction",0);
            }else if(SPLASH.app.currentProductURL == "3"){
                jvxAd.recordEventByName(reportId3+"_NonInteraction",0);
            }
        }
	};