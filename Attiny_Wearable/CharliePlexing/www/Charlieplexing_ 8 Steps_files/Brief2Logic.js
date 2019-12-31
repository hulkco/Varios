/*
Logic :

Geo
Lang

// Retargeting - Priority 1 
// Input : Geo_Lang_Pid via cookie
1. Retargeting cookie available?
2. If yes, 4 or less?
3. If 4, show all 4.
4. If less than 4, what is the gender and cat of all available?
5. Make a call to gender_cat db and get rest of the products.
6. Populate them in the Ad.

//Audience catagory Id via DS1 (Feed) - Priority 2
// Input : Geo_Lang_AudienceId - This will give us enough creative. In case of less creative - majority
1. Look at DS1 and get the Audience id.
2. Make a call to Audience db and get the set of products.
3. Populate them in the Ad.

//Prospecting DCM Id via DS2 (Google sheet) - Priority 3
// Input : This will tell us Catogory
1. Look at DS1 and get the Audience id.
2. Make a call to Audience db and get the set of products.
3. Populate them in the Ad.

//Default - Geo_Lang Default - Priority 4
//Default - Universal Default - Priority 5
*/

//Start of the widget.
;
console.log('Dynamic data :', dynamicData);
//console.log('DynamicJSONData :', parent.dynamicJSONData);
 
if (typeof ap_geoLang != "undefined")
    console.log('ap_geoLang from preprocessing :', ap_geoLang);
//var ap_geoLang = "united kingdom_english";
(function(_root, _jvxAd, _dataset) {
    //console.log('_dataset :', _dataset, ap_geoLang);
   var widget = widget || {};
    widget.defaults = {
        adSize: dynamicData['campaignProperties:campaignProperties.creativeDim'],
        numberOfProducts: 3,
		productids : []
    }
    //reportingupdate
	var reportingPrefix = "rep1";
	console.log('############### reportingPrefix stage1 retargeting')
    function arrayMaxRepeat(array) {
        if (array.length == 0)
            return null;
        var modeMap = {};
        var maxEl = array[0],
            maxCount = 1;
        for (var i = 0; i < array.length; i++) {
            var el = array[i];
            if (modeMap[el] == null)
                modeMap[el] = 1;
            else
                modeMap[el]++;
            if (modeMap[el] > maxCount) {
                maxEl = el;
                maxCount = modeMap[el];
            }
        }
        return maxEl;
    };
	function compare(a,b) {
		console.log("coming_sort_function");
	   if (parseInt(a.sequence) < parseInt(b.sequence))
		return -1;
	   if (parseInt(a.sequence) > parseInt(b.sequence))
		return 1;
	  return 0;
	};
   	function feedSetup(feedItems,item) {
		
		 var anchor = document.getElementById("container");
			var att = document.createAttribute("data-value");
			att.value = item;
			anchor.setAttributeNode(att);
			
   		var isSale = [];
	    var t6 = document.getElementById('t6');
	    var t4 = document.getElementById('t4');
	    var t5 = document.getElementById('t5');
        var howManyProducts = 0;
        if(widget.defaults.adSize == "300x300" || widget.defaults.adSize == "250x250" || widget.defaults.adSize == "300x250"){
        	var discountArray = new Array(t7, t8, t9);
        }
        if(widget.defaults.adSize == "120x600" || widget.defaults.adSize == "160x600" || widget.defaults.adSize == "320x50" || widget.defaults.adSize == "728x90" || widget.defaults.adSize == "970x250"){
        	var discountArray = new Array(t4, t5, t6);
        }
        if(widget.defaults.adSize == "300x600"){
            var discountArray = new Array(t10, t11, t12);
        }
        for (i = 0; i < 3; i++) {
            // var p = document.createElement('p');
            // p.className = "name op0 verticalAlign";
            // p.id = "p" + (i + 1);
            if(item == "Retargeting"){
            	//Retargeting starts
                 var p = document.createElement('p');
                  p.className = "name op0 verticalAlign";
                  p.id = "p" + (i + 1);
            	if(widget.defaults.adSize == "120x600" && i==0){
            		//console.log("<retargetingi>flN.,NVC.ZN</retargetingi>")
            		var txt1 = document.createElement("p");
			        txt1.className = "tCopy";
			        txt1.innerHTML = dynamicData['Nike2_Title'][0]['BRIEF2_Frame'+4];

			        document.getElementById("t1").appendChild(txt1);
			        // shrinkr(txt1);

			        var txt2 = document.createElement("p");
			        txt2.className = "tCopy";
			        txt2.innerHTML = dynamicData['Nike2_Title'][0]['BRIEF2_Frame'+5];


			        document.getElementById("t2").appendChild(txt2);
			        // shrinkr(txt2);

			        var txt3 = document.createElement("p");
			        txt3.className = "tCopy";
			        txt3.innerHTML = dynamicData['Nike2_Title'][0]['BRIEF2_Frame'+6];

			        document.getElementById("t3").appendChild(txt3);
			        // shrinkr(txt3);

            	}
            	if(widget.defaults.adSize == "160x600" || widget.defaults.adSize == "320x50" || widget.defaults.adSize == "728x90" || widget.defaults.adSize == "970x250"){
            		document.getElementById("t1").innerHTML = dynamicData['Nike2_Title'][0]['BRIEF2_Frame'+4];
			        document.getElementById("t2").innerHTML = dynamicData['Nike2_Title'][0]['BRIEF2_Frame'+5];
			        document.getElementById("t3").innerHTML = dynamicData['Nike2_Title'][0]['BRIEF2_Frame'+6];
            	}
                if(widget.defaults.adSize == "250x250" || widget.defaults.adSize == "300x250" || widget.defaults.adSize == "300x300"){
                    headlineText('BRIEF2_Frame1','BRIEF2_Frame2','BRIEF2_Frame3');
                }
                if(widget.defaults.adSize == "300x600"){
                    //headlineText('BRIEF2_Frame4','BRIEF2_Frame5','BRIEF2_Frame6');
                    $('.t1').each(function() {
                        this.innerHTML = dynamicData['Nike2_Title'][0]["BRIEF2_Frame4"];
                        shrinkr(this);
                        //SPLASH.utils.autoSizeText();
                    })
                    $('.t2').each(function() {
                        this.innerHTML = dynamicData['Nike2_Title'][0]["BRIEF2_Frame5"];
                        shrinkr(this);
                        //SPLASH.utils.autoSizeText();
                    })
                    $('.t3').each(function() {
                        this.innerHTML = dynamicData['Nike2_Title'][0]["BRIEF2_Frame6"];
                        shrinkr(this);
                        //SPLASH.utils.autoSizeText();
                    })
                }
                function headlineText(a,b,c){
                    $('.t1').each(function() {
                        this.innerHTML = dynamicData['Nike2_Title'][0][a];
                        shrinkr(this);
                        //SPLASH.utils.autoSizeText();
                    })
                    $('.t2').each(function() {
                        this.innerHTML = dynamicData['Nike2_Title'][0][b];
                        shrinkr(this);
                        //SPLASH.utils.autoSizeText();
                    })
                    $('.t3').each(function() {
                        this.innerHTML = dynamicData['Nike2_Title'][0][c];
                        shrinkr(this);
                        //SPLASH.utils.autoSizeText();
                    })
                }
                if(widget.defaults.adSize == "160x600" || widget.defaults.adSize == "120x600" || widget.defaults.adSize == "320x50" || widget.defaults.adSize == "728x90" || widget.defaults.adSize == "970x250"){
					
					if((document.getElementById("t1").innerHTML == "undefined") || (document.getElementById("t2").innerHTML == "undefined") || (document.getElementById("t3").innerHTML == "undefined")){
						jvxAd.recordEventByName("Code27_Retargeting", 0);
						if(document.getElementById("t1").innerHTML == "undefined"){document.getElementById("t1").innerHTML = "FREE<br>STANDARD<br>DELIVERY";}
						if(document.getElementById("t2").innerHTML == "undefined"){document.getElementById("t2").innerHTML = "FREE <br>30-DAY<br>RETURNS";}
						if(document.getElementById("t3").innerHTML == "undefined"){document.getElementById("t3").innerHTML = "CLICK &<br>COLLECT<br>DELIVERY";}
					}
                }
                if(widget.defaults.adSize == "250x250" || widget.defaults.adSize == "300x250" || widget.defaults.adSize == "300x300"){
                    $('.t1').each(function() {
                        if(this.innerHTML == "undefined"){
                            this.innerHTML = "FREE<br>DELIVERY";
							jvxAd.recordEventByName("Code27_Retargeting", 0);
                        }
                        shrinkr(this);
                        //SPLASH.utils.autoSizeText();
                    })
                    $('.t2').each(function() {
                        if(this.innerHTML == "undefined"){
                            this.innerHTML = "FREE 30-DAY<br>RETURNS";
                        }
                        shrinkr(this);
                        //SPLASH.utils.autoSizeText();
                    })
                    $('.t3').each(function() {
                        if(this.innerHTML == "undefined"){
                            this.innerHTML = "CLICK AND COLLECT<br>DELIVERY AVAILABLE";
                        }
                        shrinkr(this);
                        //SPLASH.utils.autoSizeText();
                    })
                   
                }
                if(widget.defaults.adSize == "300x600"){
                    $('.t1').each(function() {
                        if(this.innerHTML == "undefined"){
                            this.innerHTML = "FREE<br>STANDARD<br>DELIVERY";
							jvxAd.recordEventByName("Code27_Retargeting", 0);
                        }
                        //shrinkr(this);
                        //SPLASH.utils.autoSizeText();
                    })
                    $('.t2').each(function() {
                        if(this.innerHTML == "undefined"){
                            this.innerHTML = "FREE <br>30-DAY<br>RETURNS";
                        }
                        //shrinkr(this);
                        //SPLASH.utils.autoSizeText();
                    })
                    $('.t3').each(function() {
                        if(this.innerHTML == "undefined"){
                            this.innerHTML = "CLICK &<br>COLLECT<br>DELIVERY";
                        }
                        //shrinkr(this);
                        //SPLASH.utils.autoSizeText();
                    })
                    
                }
            	if(feedItems[i]['model_type'] == "Footwear"){
	                var titleValue = feedItems[i]['style_line1'];
	            }else{
	                var titleValue = feedItems[i]['style_line2'];
	            }
	            p.innerHTML = titleValue;
	            var price;
	            var sp;
	            var perChange;
	            var pIn = document.createElement('div');
	            var txt = document.createElement("p");

	            pIn.className = "price op0 verticalAlign";
	            pIn.id = "p" + (i + 1) + "_price";

	            price = feedItems[i]['Price'];
	            sp = feedItems[i]['SalePrice'];
	            priceC = price;
	            spC = sp;
	            txt.className = "tCopy sale";
	            perChange = feedItems[i]['sale_percentage'];
	            isSale.push(perChange);

	            txt.innerHTML = "-"+perChange;
	            discountArray[i].appendChild(txt);
	            if (sp != price) {
                    if(widget.defaults.adSize == "120x600" || widget.defaults.adSize == "160x600"){
                        if(price.length > 6){
                            pIn.innerHTML = '<span>' + priceC + '</span>' + "<br>" + spC;   
                        }else{
                            pIn.innerHTML = '<span>' + priceC + '</span>' + "&nbsp;&nbsp;" + spC;
                        }
                    }
	                pIn.innerHTML = '<span>' + priceC + '</span>' + "&nbsp;&nbsp;" + spC;
	            } else {
	                pIn.innerHTML = priceC;
	            }
				var foot = document.getElementById('footer_');
				var priceContainer = document.getElementById("priceContainer");
				priceContainer.appendChild(p);
	            priceContainer.appendChild(pIn);
				foot.appendChild(priceContainer);
                shrinkr(p);
				console.log(isSale,"sale_array");
                if(widget.defaults.adSize == "250x250" || widget.defaults.adSize == "300x250" || widget.defaults.adSize == "300x300"){
                    var anchor_re = document.getElementById("t7");
                }else if(widget.defaults.adSize == "300x600"){
                    var anchor_re = document.getElementById("t10");
                }else if(widget.defaults.adSize == "320x50" || widget.defaults.adSize == "728x90" || widget.defaults.adSize == "970x250"){
                    var anchor_re = document.getElementById("t4");
                }else{
                    var anchor_re = document.getElementById("t1");
                }
				var attVal = document.createAttribute("data-percentage");
				attVal.value = isSale;
				anchor_re.setAttributeNode(attVal);

	            //Retargeting ends
            }else{
            	//prospecting starts
				
            	if(widget.defaults.adSize == "300x300" || widget.defaults.adSize == "250x250" || widget.defaults.adSize == "300x250" && i==0){
            		$('.t1').each(function() {
		            this.innerHTML = feedItems[i]['Frame_2'];
		            //SPLASH.utils.autoSizeText();
					 shrinkr(this);
		            })
		            $('.t2').each(function() {
		                this.innerHTML = feedItems[i]['Frame_2'];
		                //SPLASH.utils.autoSizeText();
						 shrinkr(this);
		            })
		            $('.t3').each(function() {
		                this.innerHTML = feedItems[i]['Frame_2'];
		                //SPLASH.utils.autoSizeText();
						 shrinkr(this);
		            })
            	}
				
					var p = document.createElement('p');
					p.className = "name op0 verticalAlign";
					p.id = "p" + (i + 1);
					p.innerHTML = feedItems[i]['style_line1'] +'<span>'+feedItems[i]['style_line2']+'</span>';
					var foot = document.getElementById('footer_');
					var priceContainer = document.getElementById("priceContainer");
					priceContainer.appendChild(p);
					foot.appendChild(priceContainer); 
					if(widget.defaults.adSize == "250x250" || widget.defaults.adSize == "300x300" || widget.defaults.adSize == "300x600"){
					document.getElementsByClassName("name")[i].style.cssText +="max-height:40px !important";
					}else if(widget.defaults.adSize == "300x250" || widget.defaults.adSize == "320x50"){
						document.getElementsByClassName("name")[i].style.cssText +="max-height:30px !important";
					}else{
						document.getElementsByClassName("name")[i].style.cssText +="max-height:50px !important";
					}
	
					//document.getElementsByClassName("name")[i].style.cssText +="max-height:40px";
					shrinkr(p);
				
				
                if(widget.defaults.adSize == "300x600" && i==0){
                    $('.t1').each(function() {
                        this.innerHTML = feedItems[i]['Frame_1'];
                    })
                    $('.t2').each(function() {
                        this.innerHTML = feedItems[i]['Frame_1'];
                    })
                    $('.t3').each(function() {
                        this.innerHTML = feedItems[i]['Frame_1'];
                    })
                }
                if((widget.defaults.adSize == "120x600") && (i === 0)){
                	console.log("ivalue",i)
                    var txt1 = document.createElement("p");
                    txt1.className = "tCopy";
                    txt1.innerHTML = feedItems[0]['Frame_1'];
                    document.getElementById("t1").appendChild(txt1);
                    shrinkr(txt1);
                }
                if(widget.defaults.adSize == "160x600"){
                	document.getElementById("t1").innerHTML = feedItems[i]['Frame_1'];
                }
                if(widget.defaults.adSize == "970x250" || widget.defaults.adSize == "728x90" || widget.defaults.adSize == "320x50"){
                    document.getElementById("t1").innerHTML = feedItems[i]['Frame_1'];
                    document.getElementById("t2").innerHTML = feedItems[i]['Frame_1'];
                    document.getElementById("t3").innerHTML = feedItems[i]['Frame_1'];
                }
                if(widget.defaults.adSize == "300x300" || widget.defaults.adSize == "250x250" || widget.defaults.adSize == "300x250" && i==0){
                    $('.t1').each(function() {
                    if(this.innerHTML == "undefined"){
                            this.innerHTML = "OUR TOP<br>SELLERS";
							jvxAd.recordEventByName("Code27_Prospecting", 0);
                        }
                    //SPLASH.utils.autoSizeText();
                     shrinkr(this);
                    })
                    $('.t2').each(function() {
                        if(this.innerHTML == "undefined"){
                            this.innerHTML = "OUR TOP<br>SELLERS";
                        }
                        //SPLASH.utils.autoSizeText();
                         shrinkr(this);
                    })
                    $('.t3').each(function() {
                        if(this.innerHTML == "undefined"){
                            this.innerHTML = "OUR TOP<br>SELLERS";
                        }
                        //SPLASH.utils.autoSizeText();
                         shrinkr(this);
                    })
                    
                }
                if(widget.defaults.adSize == "970x250" || widget.defaults.adSize == "728x90" || widget.defaults.adSize == "320x50"){
					
					 if((document.getElementById("t1").innerHTML == "undefined") || (document.getElementById("t2").innerHTML == "undefined") || (document.getElementById("t3").innerHTML == "undefined")){
					 jvxAd.recordEventByName("Code27_Prospecting", 0);
						if(document.getElementById("t1").innerHTML == "undefined"){document.getElementById("t1").innerHTML = "OUR<br>TOP<br>SELLERS";}
						if(document.getElementById("t2").innerHTML == "undefined"){document.getElementById("t2").innerHTML = "OUR<br>TOP<br>SELLERS";}
						if(document.getElementById("t3").innerHTML == "undefined"){document.getElementById("t3").innerHTML = "OUR<br>TOP<br>SELLERS";}
                   
					 }
                }
                if(widget.defaults.adSize == "160x600"){
                    if(document.getElementById("t1").innerHTML == "undefined"){
						document.getElementById("t1").innerHTML = "OUR<br>TOP<br>SELLERS";
						jvxAd.recordEventByName("Code27_Prospecting", 0);
					}
                    
                }
                if(widget.defaults.adSize == "120x600"){
                    if(document.getElementsByClassName("tCopy")[0].innerHTML == "undefined"){
						document.getElementsByClassName("tCopy")[0].innerHTML = "OUR<br>TOP<br>SELLERS";
						jvxAd.recordEventByName("Code27_Prospecting", 0);
					}
                }
                if(widget.defaults.adSize == "300x600" && i==0){
                    $('.t1').each(function() {
                    if(this.innerHTML == "undefined"){
                            this.innerHTML = "OUR<br>TOP<br>SELLERS";
							 jvxAd.recordEventByName("Code27_Prospecting", 0);
                        }
                    //SPLASH.utils.autoSizeText();
                     //shrinkr(this);
                    })
                    $('.t2').each(function() {
                        if(this.innerHTML == "undefined"){
                            this.innerHTML = "OUR<br>TOP<br>SELLERS";
                        }
                        //SPLASH.utils.autoSizeText();
                         //shrinkr(this);
                    })
                    $('.t3').each(function() {
                        if(this.innerHTML == "undefined"){
                            this.innerHTML = "OUR<br>TOP<br>SELLERS";
                        }
                        //SPLASH.utils.autoSizeText();
                         //shrinkr(this);
                    })
                   
                }
            }
           
            var c = document.getElementById('container')
           //shrinkr(p)
            if(widget.defaults.adSize == "300x300" || widget.defaults.adSize == "250x250" || widget.defaults.adSize == "300x250" || widget.defaults.adSize == "300x600"){
                for (var copy = 0; copy < 3; copy++) {
                    n = (copy * 2) + (6 * i); //(3*i) + (copy);
                    if (copy == 0) {
                        var bgi1 = $('.cbg')[n];
                        var bgi2 = $('.cbg')[n + 1];
                        bgi1.style.backgroundImage = bgi2.style.backgroundImage = "url("+feedItems[i]['Grey_image'+(1)]+")";
                    }
                    if (copy == 1) {
                        var bgi1 = $('.cbg')[n];
                        var bgi2 = $('.cbg')[n + 1];

                        bgi1.style.backgroundImage = bgi2.style.backgroundImage = "url("+feedItems[i]['Grey_image'+(2)]+")";
                    }
                    if (copy == 2) {
                        var bgi1 = $('.cbg')[n];
                        var bgi2 = $('.cbg')[n + 1];
                        bgi1.style.backgroundImage = bgi2.style.backgroundImage = "url("+feedItems[i]['Grey_image'+(3)]+")";
                    }
                }
            }
            if(widget.defaults.adSize == "120x600" || widget.defaults.adSize == "160x600" || widget.defaults.adSize == "728x90" || widget.defaults.adSize == "970x250"){
                for (var copy = 0; copy < 3; copy++) {
                    var d = document.createElement('div');
                    d.className = "pix";
                    d.id = "pix" + ((3 * i) + (copy + 1));
                    var d2 = document.createElement('div');
                    d2.className = "pix";
                    d2.id = "pixC" + ((3 * i) + (copy + 1));
                    if (copy == 0) {
                        d.style.backgroundImage = d2.style.backgroundImage = "url("+feedItems[i]['Grey_image'+(1)]+")";
                    }
                    if (copy == 1) {
                        d.style.backgroundImage = d2.style.backgroundImage = "url("+feedItems[i]['Grey_image'+(2)]+")";
                    }
                    if (copy == 2) {
                        d.style.backgroundImage = d2.style.backgroundImage = "url("+feedItems[i]['Grey_image'+(3)]+")";
                    }
                    c.appendChild(d);
                    c.appendChild(d2);
                }
            }
            if(widget.defaults.adSize == "970x250"){
                var c2 = document.createElement('div');
                    c2.className = "pix";
                    c2.id = "pixC1_2";
                    c2.style.backgroundImage = "url("+feedItems[i]['Grey_image'+(1)]+")";
                    c.appendChild(c2);
            }
            if(widget.defaults.adSize == "320x50"){
                for (var copy = 0; copy < 3; copy++) {
                    var d = document.createElement('div');
                    d.className = "pix";
                    d.id = "pix" + ((3 * i) + (copy + 1));
                    var d2 = document.createElement('div');
                    d2.className = "pix";
                    d2.id = "pix" + ((3 * i) + (copy + 1)) + "b";
                    if (copy == 0) { 
                        d.style.backgroundImage = d2.style.backgroundImage = "url("+feedItems[i]['Grey_image'+(1)]+")";
                    }
                    if (copy == 1) {
                        d.style.backgroundImage = d2.style.backgroundImage = "url("+feedItems[i]['Grey_image'+(2)]+")";
                    }
                    if (copy == 2) {
                        d.style.backgroundImage = d2.style.backgroundImage = "url("+feedItems[i]['Grey_image'+(3)]+")";
                    }
                    c.appendChild(d);
                    c.appendChild(d2);
                }
            }
			
            SPLASH.app.productArray.push("product" + (i + 1));
            //console.log("productArray",SPLASH.app.productArray);
           
        }
		if(widget.defaults.adSize == "300x600"){
			 $('#cta p').html(dynamicData['Nike2_Title'][0]['CTA']);
		}else{
			$("#cta_txt")[0].innerHTML = dynamicData['Nike2_Title'][0]['CTA'];
			shrinkr($("#cta_txt")[0]);
		}
        SPLASH.app.howManyProducts = 3;
        //delay, any better way of doing it?
        SPLASH.utils.autoSizeText();
        if(item == "Retargeting"){
            if(widget.defaults.adSize == "300x300"){
                for (var i = 1; i < 4; i++) {
                    $('.t'+i).each(function() {
                    if(this.innerHTML.length > 27)
                        this.style.cssText += "font-size: 10px";
                        //SPLASH.utils.autoSizeText();
                    })
                }
            }
            if(widget.defaults.adSize == "120x600"){
                for (var i = 0; i < 3; i++) {
                    if(document.getElementsByClassName("tCopy")[i].innerHTML.length > 36){
                        document.getElementsByClassName("tCopy")[i].style.cssText += "line-height:1.1;font-size:17px;";
                    }
                }
            }
            if(widget.defaults.adSize == "320x50"){
                var textcopy1 = document.getElementById("t1").innerHTML;
                if(textcopy1 == "GRATIS<br>STANDAARD-<br>VERZENDING"){
                    document.getElementById("t1").style.cssText += "font-size:8.4px;";
                }
            }
			if(widget.defaults.adSize == "120x600"){
                var textcopy1 = document.getElementById("cta_txt").innerHTML;
                if(textcopy1.length > 14){
                    document.getElementById("cta_txt").style.cssText += "top:6px;font-size:11px;";
                }
            }
            if(widget.defaults.adSize == "728x90"){
                var textcopy1 = document.getElementById("t1").innerHTML;
                var textcopy2 = document.getElementById("t2").innerHTML;
                var textcopy3 = document.getElementById("t3").innerHTML;
                if(textcopy1.length > 30){
                    document.getElementById("t1").style.cssText += "line-height:1.1;font-size:13px;";
                }
                if(textcopy2.length > 30){
                    document.getElementById("t2").style.cssText += "line-height:1.1;font-size:13px;";
                }
                if(textcopy3.length > 30){
                    document.getElementById("t3").style.cssText += "line-height:1.1;font-size:13px;";
                }
            }
        }else{
            if(widget.defaults.adSize == "300x300"){
                for (var i = 1; i < 4; i++) {
                        $('.t'+i).each(function() {
                    if(this.innerHTML.length > 21)
                        this.style.cssText += "font-size: 12px";
                        //SPLASH.utils.autoSizeText();
                    })
                }
            }
            if(widget.defaults.adSize == "120x600"){
                var textcopy1 = document.getElementById("cta_txt").innerHTML;
                if(textcopy1.length > 14){
                    document.getElementById("cta_txt").style.cssText += "top:6px;font-size:11px;";
                }
            }
            if(widget.defaults.adSize == "728x90"){
                var textcopy1 = document.getElementById("t1").innerHTML;
                var textcopy2 = document.getElementById("t2").innerHTML;
                var textcopy3 = document.getElementById("t3").innerHTML;
                if(textcopy1.length > 30){
                    document.getElementById("t1").style.cssText += "line-height:1.1;font-size:13px;";
                }
                if(textcopy2.length > 30){
                    document.getElementById("t2").style.cssText += "line-height:1.1;font-size:13px;";
                }
                if(textcopy3.length > 30){
                    document.getElementById("t3").style.cssText += "line-height:1.1;font-size:13px;";
                }
            }
        }
       	
        setTimeout(function() {
            SPLASH.utils.positionPrice();
            $('.op0').each(function() { this.style.opacity = 1 });
            TweenMax.to("#load", 0.15, { css: { opacity: 0 }, ease: Power2.easeOut });
            TweenMax.set("#load", { css: { display: "none" } })
            SPLASH.app.controlSet();
            SPLASH.app.init();
            SPLASH.utils.common();
        }, 1000);
    }
    (function() {
		var self = this,
            productSet = [],
            productIds = [],
            getCatagory = [],
            getGender = [];
        this.getDynamicData = function(key) {
            if (typeof _dataset !== "undefined" && typeof _dataset[key] !== "undefined") return _dataset[key];
            else return false;
        }
        this.dynamicDataCallback = function(dbName, keyTrigger, callbackFn) {
            var responseString = jvxAd.assetDBReq(dbName).keys(keyTrigger).order("random").build();
            _jvxAd.dynamicDataCallback(callbackFn).get(responseString);
        }
        this.isRetargeting = function() {
            return JSON.parse(self.getDynamicData('cookieData:cookieData.jvxdynsl-isSet'));
        };
        this.generateGallery = function(result,creativeVariationReporting,customWidgetReporting) {
            var productReporting = [];
			console.log(result,"result----",result.length);
			for (var key in result) {
				productReporting.push(result[key]['ID']);
				console.log(productReporting,"ids_updated");
			}
            var priority = creativeVariationReporting.split("_")[0];
			console.log("priorityVal",priority);
							
				if(priority == "LineItemIds" || priority == "GeoLanguageDefault" || priority == "BaseDefault"){
						
						function loadcssfile(filename, filetype){
                                if (filetype=="css"){ //if filename is an external CSS file
                                    var fileref = document.createElement("link")
                                    fileref.setAttribute("rel", "stylesheet")
                                    fileref.setAttribute("type", "text/css")
                                    fileref.setAttribute("href", filename)
                                }
                                if (typeof fileref!="undefined"){
                                    document.getElementsByTagName("head")[0].appendChild(fileref);
                                }
                            }

                           
                                loadcssfile("css/"+widget.defaults.adSize+".css", "css");
                           
                          
						  feedSetup(result,"Prospecting");
						
					}else{
					feedSetup(result,"Retargeting");
				}
            //reportingupdate
          
            $("#banner").attr("onclick", "").unbind("click").on("click", function(){
                    console.log(SPLASH.app.currentProductURL, SPLASH.app.productArray.length,"currentProductURL");
                    if(SPLASH.app.currentProductURL == SPLASH.app.productArray.length){
                        console.log(result[SPLASH.app.productArray.length-1]['URL'])
                        jvxAd.openClickThrough(result[SPLASH.app.productArray.length-1]['URL']);
						jvxAd.recordAssetVariation("click", creativeVariationReporting+"-ProductIDs"+"_"+productReporting.join('_'));
						jvxAd.recordEventByName(customWidgetReporting+"-"+result[SPLASH.app.productArray.length-1]['ID']+"_Interaction", 1);
                    }else if(SPLASH.app.currentProductURL < SPLASH.app.productArray.length){
                        console.log(result[SPLASH.app.currentProductURL -1]['URL'])
                        jvxAd.openClickThrough(result[SPLASH.app.currentProductURL -1]['URL']);
						jvxAd.recordAssetVariation("click", creativeVariationReporting+"-ProductIDs"+"_"+productReporting.join('_'));
						jvxAd.recordEventByName(customWidgetReporting+"-"+result[SPLASH.app.currentProductURL -1]['ID']+"_Interaction", 1);
                    }
                });
            var report_1 = document.getElementById("report1");
                var att_Val1 = document.createAttribute("data-report1");
                att_Val1.value = customWidgetReporting+"-"+result[0]['ID'];
                report_1.setAttributeNode(att_Val1);
			 var report_2 = document.getElementById("report2");
                var att_Val2 = document.createAttribute("data-report2");
                att_Val2.value = customWidgetReporting+"-"+result[1]['ID'];
                report_2.setAttributeNode(att_Val2);
			 var report_3 = document.getElementById("report3");
                var att_Val3 = document.createAttribute("data-report3");
                att_Val3.value = customWidgetReporting+"-"+result[2]['ID'];
                report_3.setAttributeNode(att_Val3);
				
            _jvxAd.recordAssetVariation("impression", creativeVariationReporting+"-ProductIDs"+"_"+productReporting.join('_'));
        };
		this.getCatogoryProductsType = function(result) {
            console.log("CatogoryProductsType : ", result, result['g_l_g-c_B2:g_l_g-c_B2'].length);
            if (result['g_l_g-c_B2:g_l_g-c_B2'].length >0) { // wips changed
                result = result[Object.keys(result)[0]];
                console.log('CatogoryProducts2_1 result : ', result);
                for (var key in result) {
                    productSet.push(result[key]);
                }
				if(productSet.length >= widget.defaults.numberOfProducts){
					self.generateGallery(productSet.slice(0, widget.defaults.numberOfProducts),"Retargeting"+"_"+ap_geoLang,"Retargeting"+"_"+ap_geoLang)
				}else if((ap_DataSignal6 != "undefined") && (ap_geoLang !== "NA_NA")) { 
					var dspDS2 = ap_DataSignal6;
					self.validateAudienceId(dspDS2);
				}else if ((self.getDynamicData('tagVarService:tagVarService.DataSignal1')) && (ap_geoLang !== "NA_NA")){ 
					var dspDS1 = self.getDynamicData('tagVarService:tagVarService.DataSignal1');
					self.validateDSPId(dspDS1);
				}else{
					 self.callGeoLangDefaults(ap_geoLang + "_default");
				}
            }else if((ap_DataSignal6 != "undefined") && (ap_geoLang !== "NA_NA")) { 
                var dspDS2 = ap_DataSignal6;
                self.validateAudienceId(dspDS2);
            }else if ((self.getDynamicData('tagVarService:tagVarService.DataSignal1')) && (ap_geoLang !== "NA_NA")){ 
                var dspDS1 = self.getDynamicData('tagVarService:tagVarService.DataSignal1');
                self.validateDSPId(dspDS1);
            }else{
				 self.callGeoLangDefaults(ap_geoLang + "_default");
			}
        }
        this.getCatogoryProducts = function(result) {
            console.log("CatogoryProducts : ", result, result['g_l_g-c_B2:g_l_g-c_B2'].length);
            if (result['g_l_g-c_B2:g_l_g-c_B2'].length >0) { 
                result = result[Object.keys(result)[0]];
                console.log('CatogoryProducts2 result : ', result);
                for (var key in result) {
                    productSet.push(result[key]);
                }
				var genderVal1 = productSet[0]['Gender'].toLowerCase(),
					catVal1 = productSet[0]['Category'].toLowerCase(),
					modelTypeVal1 = productSet[0]['model_type'].toLowerCase();
                if(productSet.length < widget.defaults.numberOfProducts){
					 var DB2Req = jvxAd.assetDBReq('g_l_g-c_B2').keys(ap_geoLang + "_" + genderVal1 + "_" + catVal1+"_"+modelTypeVal1).max(1).order("random").build();
					 jvxAd.dynamicDataCallback("getCatogoryProductsType").get(DB2Req);
				}else{
					if(productSet.length >= widget.defaults.numberOfProducts){
						self.generateGallery(productSet.slice(0, widget.defaults.numberOfProducts),"Retargeting"+"_"+ap_geoLang,"Retargeting"+"_"+ap_geoLang)
					}else if((ap_DataSignal6 != "undefined") && (ap_geoLang !== "NA_NA")) { 
						var dspDS2 = ap_DataSignal6;
						self.validateAudienceId(dspDS2);
					}else if ((self.getDynamicData('tagVarService:tagVarService.DataSignal1')) && (ap_geoLang !== "NA_NA")){ 
						var dspDS1 = self.getDynamicData('tagVarService:tagVarService.DataSignal1');
						self.validateDSPId(dspDS1);
					}else{
						 self.callGeoLangDefaults(ap_geoLang + "_default");
					}
				}
            }else if (result['g_l_g-c_B2:g_l_g-c_B2'].length == 0) {				// wips changed
				var genderVal1 = productSet[0]['Gender'].toLowerCase(),
					catVal1 = productSet[0]['Category'].toLowerCase(),
					modelTypeVal1 = productSet[0]['model_type'].toLowerCase();
                if(productSet.length < widget.defaults.numberOfProducts){
					 var DB2Req = jvxAd.assetDBReq('g_l_g-c_B2').keys(ap_geoLang + "_" + genderVal1 + "_" + catVal1+"_"+modelTypeVal1).max(2).order("random").build();
					 jvxAd.dynamicDataCallback("getCatogoryProductsType").get(DB2Req);
				}
            }else if ((ap_DataSignal6 != "undefined") && (ap_geoLang !== "NA_NA")) { // wips changed
                var dspDS2 = ap_DataSignal6;
                self.validateAudienceId(dspDS2);
            } else if ((self.getDynamicData('tagVarService:tagVarService.DataSignal1')) && (ap_geoLang !== "NA_NA")) {  
               console.log('getaudienceSetx has lesser result');
                var dspDS1 = self.getDynamicData('tagVarService:tagVarService.DataSignal1');
                self.validateDSPId(dspDS1);
            } else{
				 self.callGeoLangDefaults(ap_geoLang + "_default");
			}
        }
        this.getProductIds = function(result) {
            if (result['g_l_pid_B2:g_l_pid_B2'].length > 0) {
                console.log('Products length', result, result['g_l_pid_B2:g_l_pid_B2'].length);
                result = result[Object.keys(result)[0]];
                console.log('result : ', result);
                for (var key in result) {
                    productSet.push(result[key]);
                }
                console.log('productSet : ', productSet, productSet.length, widget.defaults.numberOfProducts);
				if(productSet.length >= widget.defaults.numberOfProducts){ //wips changed
					self.generateGallery(productSet.slice(0, widget.defaults.numberOfProducts),"Retargeting"+"_"+ap_geoLang,"Retargeting"+"_"+ap_geoLang);
				}else if ((productSet.length < widget.defaults.numberOfProducts) && (productSet.length !== 0)) {
					if(productSet.length ==1){
						console.log("We have one cookie product");
						var genderVal = productSet[0]['Gender'].toLowerCase(),
							catVal = productSet[0]['Category'].toLowerCase(),
							modelTypeVal = productSet[0]['model_type'].toLowerCase();
						
						if(modelTypeVal == "footwear"){
							var finalModel = "apparel";
						}else{
							var finalModel = "footwear";
						}
						 var DB1Req = jvxAd.assetDBReq('g_l_g-c_B2').keys(ap_geoLang + "_" + genderVal + "_" + catVal+"_"+finalModel).max(1).order("random").build();
						 jvxAd.dynamicDataCallback("getCatogoryProducts").get(DB1Req);
						
					}else{
						console.log("We have two cookie product");
						var modelType0 = productSet[0]['model_type'].toLowerCase(),
							modelType1 = productSet[1]['model_type'].toLowerCase();
						if((modelType0 == "footwear") && (modelType1 == "footwear")){
							var finalModel = "apparel";
						}else if((modelType0 == "apparel") && (modelType1 == "apparel")){
							var finalModel = "footwear";
						}else{
							var finalModel = productSet[0]['model_type'].toLowerCase();
						}
						console.log(productSet[0]['model_type']);
						console.log(productSet[1]['model_type']);
						
						productSet.forEach(function(element) {
							getCatagory.unshift(element['Category']);
							getGender.unshift(element['Gender']);
						});
                    //call category
                    var maxGen = arrayMaxRepeat(getGender).toLowerCase(),
                        maxCat = arrayMaxRepeat(getCatagory).toLowerCase();
                    self.dynamicDataCallback("g_l_g-c_B2", ap_geoLang + "_" + maxGen + "_" + maxCat+"_" + finalModel, "getCatogoryProducts");
					}
                   
                }
			}else if ((ap_DataSignal6 != "undefined") && (ap_geoLang !== "NA_NA")) { // wips changed
              //  console.log('priority 2')
                var dspDS2 = ap_DataSignal6;
                self.validateAudienceId(dspDS2);
            } else if ((self.getDynamicData('tagVarService:tagVarService.DataSignal1')) && (ap_geoLang !== "NA_NA")) {  
               console.log('getaudienceSetx has lesser result');
                var dspDS1 = self.getDynamicData('tagVarService:tagVarService.DataSignal1');
                self.validateDSPId(dspDS1);
            } else{
				 self.callGeoLangDefaults(ap_geoLang + "_default");
			}
        }
		this.getConverterCatProducts = function(result) {
            if (result['g_l_c_B2:g_l_c_B2'].length >= widget.defaults.numberOfProducts) {
                console.log('getDSPCatProductsz :',result,result['g_l_c_B2:g_l_c_B2']);
                result = result[Object.keys(result)[0]];
                console.log('getConverterCatProducts result : ', result);
                for (var key in result) {
                    productSet.push(result[key]);
                }
				console.log('productSetConverterCat_before_sort : ',productSet, productSet.length, typeof productSet); 
				productSet.sort(compare);
                console.log('productSetConverterCat_after_sort : ',productSet, productSet.length, typeof productSet); 
                self.generateGallery(productSet.slice(0, widget.defaults.numberOfProducts),"RecentConverter_"+result[0]['Category'].toLowerCase()+"_"+ap_geoLang+"-"+ap_DataSignal1,"RecentConverter_"+result[0]['Category'].toLowerCase()+"_"+ap_geoLang);	
            }else if ((self.isRetargeting()) && (ap_geoLang !== "NA_NA") && (self.getDynamicData('cookieData:cookieData.jvxdynsl_group1'))) { //Retargeting - Priority 1 // && (1==2)
                console.log('isRetargeting | Priority 1 ');
                var cookieValG1 = self.getDynamicData('cookieData:cookieData.jvxdynsl_group1');
                self.validateRetargetingProducts(cookieValG1)
                console.log('productSet0 : ', productSet);
            } else if ((ap_DataSignal6 != "undefined") && (ap_geoLang !== "NA_NA")) { //Audience catagory Id via DS2 (Feed) - Priority 2 
                console.log('Audience Id available | Priority 2', ap_DataSignal6);
                var dspDS2 = ap_DataSignal6;
                self.validateAudienceId(dspDS2)
            } else if ((self.getDynamicData('tagVarService:tagVarService.DataSignal1')) && (ap_geoLang !== "NA_NA")) { //Prospecting DCM Id via DS1 (Google sheet) - Priority 3
                console.log('Prospecting DCM Id available | Priority 3', self.getDynamicData('tagVarService:tagVarService.DataSignal1'));
                var dspDS1 = self.getDynamicData('tagVarService:tagVarService.DataSignal1');
                self.validateDSPId(dspDS1);
            }else if ((ap_geoLang !== "NA_NA")) { //Default - Geo_Lang Default - Priority 4
                console.log('ap_geoLang matching | Priority 4', ap_geoLang);
                self.callGeoLangDefaults(ap_geoLang + "_default");
            } else { //Default - Universal Default - Priority 5 UK
                console.log('Base default loaded | Priority 5');
                //self.loadDefault();
                self.dynamicDataCallback("Defaults_B2", "_default_", "loadDefault");
            }
        }
        this.getDSPCatProducts = function(result) {
            if (result['g_l_c_B2:g_l_c_B2'].length >= widget.defaults.numberOfProducts) {
                console.log('getDSPCatProductsz :',result,result['g_l_c_B2:g_l_c_B2']);
                result = result[Object.keys(result)[0]];
                console.log('getDSPCatProducts result : ', result);
                for (var key in result) {
                    productSet.push(result[key]);
                }
				console.log('productSetCat_before_sort : ',productSet, productSet.slice(0, 3), productSet.length, typeof productSet);
				if(ap_bestsellerID != "bestseller"){
					productSet.sort(compare);
				}
                console.log('productSetCat_after_sort : ',productSet, productSet.slice(0, 3), productSet.length, typeof productSet); 
                self.generateGallery(productSet.slice(0, widget.defaults.numberOfProducts),"LineItemIds_"+result[0]['Category'].toLowerCase()+"_"+ap_geoLang+"-"+ap_DataSignal1,"LineItemIds_"+result[0]['Category'].toLowerCase()+"_"+ap_geoLang);
				
				
            } else {
                self.callGeoLangDefaults(ap_geoLang + "_default");
            }
        }
        this.getaudienceSet = function(result) {
            console.log('getaudienceSetz : ', result, result['g_l_aid_B2:g_l_aid_B2'].length);
            if (result['g_l_aid_B2:g_l_aid_B2'].length >= widget.defaults.numberOfProducts) {
                result = result[Object.keys(result)[0]];
                console.log('getaudienceSetx result : ', result);
                for (var key in result) {
                    productSet.push(result[key]);
                }
				console.log(ap_DataSignal6,"DS2_Val");
				if(ap_DataSignal6 == "172846969" || ap_DataSignal6 == "245899369" || ap_DataSignal6 == "259539049"){
					var audienceIdReport = "HomepageTargeting_";
				}else{
					var audienceIdReport = "AudienceId_";
				}
                self.generateGallery(productSet.slice(0, widget.defaults.numberOfProducts),audienceIdReport+result[0]['Gender'].toLowerCase()+"_"+result[0]['model_type'].toLowerCase()+"_"+result[0]['Category'].toLowerCase()+"_"+ap_geoLang+"-"+ap_DataSignal1,audienceIdReport+result[0]['Gender'].toLowerCase()+"_"+result[0]['model_type'].toLowerCase()+"_"+result[0]['Category'].toLowerCase()+"_"+ap_geoLang)
				
            } else if((self.getDynamicData('tagVarService:tagVarService.DataSignal1'))  && (ap_geoLang !== "NA_NA")) { //wips changed
                console.log('getaudienceSetx has lesser result');
                var dspDS1 = self.getDynamicData('tagVarService:tagVarService.DataSignal1');
                self.validateDSPId(dspDS1);
            } else {
				self.callGeoLangDefaults(ap_geoLang + "_default");
			}
        }
		this.getConverterCat = function(result) {
			console.log("getConverterId");
            console.log('getConverterCat : ', result, result['line_id_B2:line_id_B2'].length);
            if (result['line_id_B2:line_id_B2'].length >= 1) {
                var catDBConverter = ap_geoLang + "_" + result['line_id_B2:line_id_B2'][0]['category'].toLowerCase();
                self.dynamicDataCallback("g_l_c_B2", catDBConverter, "getConverterCatProducts");
            }else if ((self.isRetargeting()) && (ap_geoLang !== "NA_NA") && (self.getDynamicData('cookieData:cookieData.jvxdynsl_group1'))) { //Retargeting - Priority 1 // && (1==2)
                console.log('isRetargeting | Priority 1 ');
                var cookieValG1 = self.getDynamicData('cookieData:cookieData.jvxdynsl_group1');
                self.validateRetargetingProducts(cookieValG1)
                console.log('productSet0 : ', productSet);
            } else if ((ap_DataSignal6 != "undefined") && (ap_geoLang !== "NA_NA")) { //Audience catagory Id via DS2 (Feed) - Priority 2 
                console.log('Audience Id available | Priority 2', ap_DataSignal6);
                var dspDS2 = ap_DataSignal6;
                self.validateAudienceId(dspDS2)
            } else if ((self.getDynamicData('tagVarService:tagVarService.DataSignal1')) && (ap_geoLang !== "NA_NA")) { //Prospecting DCM Id via DS1 (Google sheet) - Priority 3
                console.log('Prospecting DCM Id available | Priority 3', self.getDynamicData('tagVarService:tagVarService.DataSignal1'));
                var dspDS1 = self.getDynamicData('tagVarService:tagVarService.DataSignal1');
                self.validateDSPId(dspDS1);
            }else if ((ap_geoLang !== "NA_NA")) { //Default - Geo_Lang Default - Priority 4
                console.log('ap_geoLang matching | Priority 4', ap_geoLang);
                self.callGeoLangDefaults(ap_geoLang + "_default");
            } else { //Default - Universal Default - Priority 5 UK
                console.log('Base default loaded | Priority 5');
                //self.loadDefault();
                self.dynamicDataCallback("Defaults_B2", "_default_", "loadDefault");
            }
        }
        this.getDSPCat = function(result) {
			console.log("getDSP");
            console.log('getDSPCat : ', result, result['line_id_B2:line_id_B2'].length);
            if (result['line_id_B2:line_id_B2'].length >= 1) {
				if(ap_bestsellerID == "bestseller"){
					console.log("BestSeller_Logic_ID",ap_bestsellerID);
					var catDBTrigger = ap_geoLang + "_" + result['line_id_B2:line_id_B2'][0]['category'].toLowerCase()+ "_bestseller";
				}else{
					var catDBTrigger = ap_geoLang + "_" + result['line_id_B2:line_id_B2'][0]['category'].toLowerCase();
				}
                self.dynamicDataCallback("g_l_c_B2", catDBTrigger, "getDSPCatProducts");
            } else {
                console.log('Not valid DSP');
                self.callGeoLangDefaults(ap_geoLang + "_default");
            }
        }
        this.getGeoLangDefaults = function(result) {
            console.log('getGeoLangDefaultsz : ', result, result['Defaults_B2:Defaults_B2'], result['Defaults_B2:Defaults_B2'].length); 
            if ((result['Defaults_B2:Defaults_B2'].length >= widget.defaults.numberOfProducts) && (ap_geoLang !== "NA_NA")) { //wips changed
                result = result[Object.keys(result)[0]];
                console.log('getGeoLangDefaultsx result : ', result);
                for (var key in result) {
                    productSet.push(result[key]);
                }
                //console.log('productSetCat : ',productSet, productSet.slice(0, 3), productSet.length, typeof productSet); 
                self.generateGallery(productSet.slice(0, widget.defaults.numberOfProducts),"GeoLanguageDefault"+"_"+ap_geoLang+"-"+ap_DataSignal1,"GeoLanguageDefault"+"_"+ap_geoLang);
                //reportingPrefix = "GeoLanguageDefault";
            } else {
                console.log('Geo Lang def not found. Call base default'); //Base default is not required as DB will always return _default_ in case of non matching.
                self.dynamicDataCallback("Defaults_B2", "_default_", "loadDefault");
            }
        }
        this.loadDefault = function(result) {
            console.log('Base default loaded', result);
            //self.dynamicDataCallback("g_l_pid_B2","ireland_english_12323776",2,"random","getProductIds");
            result = result[Object.keys(result)[0]];
            console.log('Base default resultx : ', result);
            for (var key in result) {
                productSet.push(result[key]);
            }
            //console.log('productSetCat : ',productSet, productSet.slice(0, 3), productSet.length, typeof productSet); 
            self.generateGallery(productSet.slice(0, widget.defaults.numberOfProducts),"BaseDefault"+"_"+ap_geoLang,"BaseDefault"+"_"+ap_geoLang);
            //reportingPrefix = "BaseDefault";
        };
        this.validateRetargetingProducts = function(cookieData) {
            console.log('validateRetargetingProducts loaded');
            var cookieProductsIds = cookieData.split(',');
            console.log('####### :', cookieProductsIds);
            cookieProductsIds.forEach(function(element) {
                //console.log(element);
                productIds.push(ap_geoLang + "_" + element);
            });
            console.log('productIds :', productIds);
            self.dynamicDataCallback("g_l_pid_B2", productIds.join(','), "getProductIds");
        };
        this.validateAudienceId = function(id) {
            console.log('validateAudienceId loaded', id, id.length);
            var audienceSet = ap_geoLang + "_" + id;
            self.dynamicDataCallback("g_l_aid_B2", audienceSet, "getaudienceSet");
        };
		this.validateConverterId = function(converterid) {
            console.log('validateConverterId loaded', converterid);
            self.dynamicDataCallback("line_id_B2", converterid, "getConverterCat");
        };
        this.validateDSPId = function(dspid) {
            console.log('validateDSPId loaded', dspid);
            self.dynamicDataCallback("line_id_B2", dspid, "getDSPCat");
        };
        this.callGeoLangDefaults = function(result) {
            console.log('callGeoLangDefaults loadedx', result);
            self.dynamicDataCallback("Defaults_B2", result,"getGeoLangDefaults");
        };
        this.init = function() {
        	//document.getElementsByTagName('body')[0].style.opacity = 0;
            _root["getProductIds"] = self.getProductIds;
            _root["getCatogoryProducts"] = self.getCatogoryProducts;
			_root["getCatogoryProductsType"] = self.getCatogoryProductsType;
            _root["getaudienceSet"] = self.getaudienceSet;
            _root["getDSPCat"] = self.getDSPCat;
			_root["getConverterCat"] = self.getConverterCat;
            _root["getDSPCatProducts"] = self.getDSPCatProducts;
			_root["getConverterCatProducts"] = self.getConverterCatProducts;
            _root["getGeoLangDefaults"] = self.getGeoLangDefaults;
            _root["loadDefault"] = self.loadDefault;
			
            console.log('Init called');
			console.log(ap_bestsellerID,ap_DataSignal8,ap_DataSignal6,ap_DataSignal1,"ds6Val");
			var cookieValG1_1 = self.getDynamicData('cookieData:cookieData.jvxdynsl_group1');
				console.log(cookieValG1_1,"cookiee_values_outside");
			if ((ap_DataSignal8 != "undefined") && (ap_geoLang !== "NA_NA")) {
				console.log('Converter Id available | Priority 0', ap_DataSignal8);
				var dspDS8 = ap_DataSignal8;
				console.log(dspDS8,"dspDS8");
                self.validateConverterId(dspDS8);
			}else if ((self.isRetargeting()) && (ap_geoLang !== "NA_NA") && (self.getDynamicData('cookieData:cookieData.jvxdynsl_group1'))) { //Retargeting - Priority 1 // && (1==2)
                console.log('isRetargeting | Priority 1 ');
                var cookieValG1 = self.getDynamicData('cookieData:cookieData.jvxdynsl_group1');
                self.validateRetargetingProducts(cookieValG1)
                console.log('productSet0 : ', productSet);
            } else if ((ap_DataSignal6 != "undefined") && (ap_geoLang !== "NA_NA")) { //Audience catagory Id via DS2 (Feed) - Priority 2 
                console.log('Audience Id available | Priority 2', ap_DataSignal6);
                var dspDS2 = ap_DataSignal6;
                self.validateAudienceId(dspDS2)
            } else if ((self.getDynamicData('tagVarService:tagVarService.DataSignal1')) && (ap_geoLang !== "NA_NA")) { //Prospecting DCM Id via DS1 (Google sheet) - Priority 3
                console.log('Prospecting DCM Id available | Priority 3', self.getDynamicData('tagVarService:tagVarService.DataSignal1'));
                var dspDS1 = self.getDynamicData('tagVarService:tagVarService.DataSignal1');
                self.validateDSPId(dspDS1);
            }else if ((ap_geoLang !== "NA_NA")) { //Default - Geo_Lang Default - Priority 4
                console.log('ap_geoLang matching | Priority 4', ap_geoLang);
                self.callGeoLangDefaults(ap_geoLang + "_default");
            } else { //Default - Universal Default - Priority 5 UK
                console.log('Base default loaded | Priority 5');
                //self.loadDefault();
                self.dynamicDataCallback("Defaults_B2", "_default_", "loadDefault");
            }
        };
		
		
    }).apply(widget);
    _root["initiate"] = widget.init;
}(window, jvxAd, dynamicData));