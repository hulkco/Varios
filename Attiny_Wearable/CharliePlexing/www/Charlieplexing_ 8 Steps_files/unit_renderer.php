
if(typeof jvxObjectList == "undefined"){
	var jvxObjectList = ["jvx_5da23f8190334"];
}else{
	jvxObjectList.push("jvx_5da23f8190334");
}

//get the current executing script's parent node to append nodes
function getCurrScrNode(){
    var cScrNode = null;
    try{
        cScrNode = document.currentScript;
        if(cScrNode == undefined){
            scrNodes = document.getElementsByTagName("script");
            for(var i=0;i<scrNodes.length;i++){
                var scrSrc = scrNodes[i].src;
                if(scrSrc &&  scrSrc.indexOf("https://as.jivox.com/unit/unit_renderer.php?creativeUnitType=22&bDim=300x600&bUnitId=2200&siteId=65c616660e0b0a&campaignId=128974&es_pId=63E14k&isDynamic=1&ap_DataSignal1=28226997&ap_DataSignal2=ABAjH0hwY7MwejKj_hpFJdgz3svx&ap_DataSignal3=197232787&ap_DataSignal4=4104757683&jvxVer=2&cMacro=https://googleads.g.doubleclick.net/dbm/clk%3Fsa%3DL%26ai%3DCXUSXcz-iXYuKENP_iQP1z7-ADIbLvN9YiM6ciL0Kk62BlJMKEAEg7N-yEWDli_uEvBagAa3Dz5EDyAEJqAMBqgTDAU_QWuMFNUBoYuQi6IBgEIbG45YSosrAYdvZXBM9mIOGo_IYXlR2RvjZIP6_uVumrgRslbxvdhce59IJ_sbJaFPqx25XxLbJuPIajcekRSaSduHzPNBwaiyyRxW-8guzQ-xPT1Izp-sns4F6YrUhm8S99CMLR_BHIaOgSZQLN501uYeWLXssqCaYMygZR1Ar_sm-UaQ6eZVM_A0ryfJcqY1St3a2aQaQcBbTogHIIZ4WWC03UBh8V45YsuTp-rbUq2OH0OAEA5AGAaAGTYAHu7ywbogHAZAHAqgHjs4bqAfVyRuoB8HTG6gHhdQbqAeB1BuoB4LUG6gHhtQbqAeE1BuoB5PYG6gH4NMbqAe6BqgH2csbqAfPzBuoB-zVG6gHpr4bqAfz0RvYBwDSCAYIABACGA2ACgOwE4WTswfQEwDYEw3YFAE%26ae%3D1%26num%3D1%26cid%3DCAMSeQClSFh3OHLJiWICfw6OXVZ73JFo2Nmm3JGWt0GGN8obHVK-Bhen2b0rfCOsPpXlcFFhqnwHj9M1S0w0JP4tBn_NJEP-_nxGWDpUEmHBvgzg81AqfuDxCmOVFYUR2hkeL8GjjBmuOx6HDEQGX82U7lvhRB5OPjsEE9Y%26sig%3DAOD64_27J9GnBbSxXt7tT4uKDNsZaj1Uvw%26client%3Dca-pub-8258389452460729%26dbm_c%3DAKAmf-DXSDesiMgvbQ8Rm908DuHAN4a1oXX2Tve_UtSCEEtLvbK7lEipWU6rA53WebcCxqxjUdBz7QCVM8VssR27JrO1O28gqg%26dbm_d%3DAKAmf-B93LDry1ph1W92Z82sw_r5qYMBGrsrhqjbDg3Chuz-2wV3o9aJm09YL9cw-PkdcmwPy_eLv_KTd9fIhBWr_VMjzi7q13aGKBQDgPLj20eAgqlA1xdn51_3ZkyhoLYudNp4kQZhMEyDix_8_-sAXSIdlS8nCAwtC6FT2FTrZpYoN5i8s8QhSR0P4n7KC3gstRFpvNDBrysIejMcn_RrNGOJMNMOPWBnWtCFyCxjrCCCdeDD67puqrsAp9x5LNT1yezXbH2-Ozn-vfEJArL3OWqYV1Qa4SUIfeGdrgwMwnvG_w5NSUVgIY-boniQNJRJwH4t8-hbAcPtQkmu1oNBWREN_mtxIj3dyy2K5o67JZbXYYfhopL2OXsTg8ARJdCFGSj8n9tNnxOLZ4vj9xyVhlLnMzzT0sPDIBNwARcJTtPPZpB52enkPIs7af6lE7WMwbmebsYqXtMpzzudWb9kyhh1b4kircfDvXzVHb2_s6wJWNUtmKLBLJWTTBL-GbhztEA7bbzsUGi2rggkA__HHWYBZxarOg%26adurl%3D&r=1570914163263435") != -1){
                    cScrNode = scrNodes[i];
                }
            }
        }   
    } catch(e){
            }
    return cScrNode;
}

function createiFrameNode(obj){
    /* obj should be of this format - {'id':'frame1','src':'http://www.jivox.com/','width':'1024','height':'768'} */
    var ifrm = document.createElement('iframe');
        ifrm.id = obj.id;
        ifrm.src = obj.src;
        ifrm.width = obj.width;
        ifrm.height = obj.height;
        ifrm.style = obj.style;
        ifrm.frameborder = "0";
        ifrm.scrolling = "no";
        return ifrm;
}

function jvxCopyObject(target,obj){
    for(var k in obj) {
        target[k]=obj[k];
    }
    return target;
}

	// when document.body is not there, inject document.write which will be default create the html structure
	if(document.body == null){
		document.write("<div id='jvxSkeletonRef_5da23f8190334' style='display:none;'></div>")
	}
/*
JavaScript responsible for frame busting
*/
var jvx_5da23f8190334TraffickedInFrame = false,			// COM: should be true, if !busted and self != top
	jvx_5da23f8190334SafeFrameSupported = false,		// COM: should be true only when safeFrame is supported in the page
	jvx_5da23f8190334CanBustFromFrame = true,			// COM: should be false, when all busting method fails
	jvx_5da23f8190334InNestedFrame = false;				// COM: should be true, when tag trafficked inside nested frame

if(self != top){
	jvx_5da23f8190334TraffickedInFrame = true;
}

try{
		$sf.ext.register(300, 600);
		jvx_5da23f8190334SafeFrameSupported = true;
}catch(e){
	jvx_5da23f8190334SafeFrameSupported = false;
}


for(var jvxLoopVar=0; jvxLoopVar<1; jvxLoopVar++){



// Adding close button CSS style to document.head
var css = '.jvx_boxclose{padding:0px; margin:0px; top:1px; right:1px; position:absolute; width:20px; height:19px; display:block; text-decoration:none; color:#fff; background:#111; font-family:"Tahoma", Helvetica, sans-serif; text-align:center; font-size:20px; font-weight:bold; border-radius:50%; box-shadow:0px 0px 2px 0px #FFF; cursor:pointer; line-height:17px; opacity:1; border:2px Solid #999; -webkit-border:2px Solid #999;}',
	head = document.head || document.getElementsByTagName('head')[0],
	style = document.createElement('style');
		css += '.jvx_boxclose{ -webkit-transition:-webkit-transform .25s, opacity .25s; -moz-transition:-moz-transform .25s, opacity .25s; transition: transform .25s, opacity .25s; opacity:.55; -webkit-perspective: 1000; -webkit-backface-visibility: hidden; -moz-backface-visibility: hidden;backface-visibility: hidden;} .jvx_boxclose:hover{ -webkit-transform: rotate(360deg); -moz-transform: rotate(360deg); transform: rotate(360deg); opacity:1;}';
		style.type = 'text/css';
	if (style.styleSheet){
	  style.styleSheet.cssText = css;
	} else {
	  style.appendChild(document.createTextNode(css));
	}
	head.appendChild(style);




var adInVPForOneSec = false;
var timeoutHandle;
var timerRunning = false;

var adViewabilityDetectInit = function (visibilityThreshold) { 
    try {
        var boxElement;

        boxElement = document.querySelector('#adUnitContainer_5da23f8190334');

        createObserver();

        function createObserver() {
            var observer;
            var options = {
                root: null,
                rootMargin: "0px",
                threshold: [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1]
            };

            observer = new IntersectionObserver(handleIntersect, options);
            observer.observe(boxElement);
        }

        function handleIntersect(entries, observer) {
            entries.forEach(function (entry) {
                                if (entry.intersectionRatio > visibilityThreshold) {
                    if (!adInVPForOneSec && !timerRunning) {
                        timerRunning = true;
                        timeoutHandle = setTimeout(function () {
                            adInVPForOneSec = true;
                            if(typeof jvx_5da23f8190334 != "undefined")
                            jvx_5da23f8190334.recordEvent(73);
                            else 
                            recordEvent(73);
                        }, 1000);
                    }
                }
                if (timerRunning && entry.intersectionRatio < visibilityThreshold) {
                    window.clearTimeout(timeoutHandle);
                    timerRunning = false;
                }
            });
        }
    } catch(e){
            }
};
var CreativeUnit = (function(){
	var creativeResolveBeginTime = new Date();
	var isMSIE = false;
		var hasFlashPlugin = (function(){
		var flashPluginAvailable = false;
		if(navigator.mimeTypes && navigator.mimeTypes["application/x-shockwave-flash"]){
			flashPluginAvailable = navigator.mimeTypes["application/x-shockwave-flash"].enabledPlugin;
		} 
		if(!flashPluginAvailable && isMSIE){
			// if we are here, this is for MSIE only.
			try {
				var flashObj = new ActiveXObject('ShockwaveFlash.ShockwaveFlash');
				if(flashObj)
					flashPluginAvailable = true;
			} catch (ex) {
			}
		}		
		return flashPluginAvailable;
	})();
	
        
	    addEvent(window, "message", receiveHtml5Message, false);

	function receiveHtml5Message(e){
  		if(typeof e.data != "string"){
			return;
		}
        var s = e.data.split(':', 10);
		        if(s && s.length >= 2 && s[0] == 'jvx_5da23f8190334'){
			var msg = s[1];
			if(msg == 'openExpansion'){
									jvx_5da23f8190334.openClickThrough();
							} else if(msg == 'closeExpansion'){
				jvx_5da23f8190334.closeExpansion(false, false);
			} else if(msg == 'expansionLoaded'){
							} else if(msg == 'recordUIR'){
				jvx_5da23f8190334.UIRRecorded = true;
			} else if(msg == 'lastMouseLeave'){
				jvx_5da23f8190334.lastMLeaveId = s[2];
			} else if(msg == 'clearUIR'){
				clearTimeout(jvx_5da23f8190334.UIRTimer);
			} else if(msg == 'recordDwell'){
				if(!jvx_5da23f8190334.DwellRecorded){
					jvx_5da23f8190334.recordDwellEvent(49, jvx_5da23f8190334.DwellElapsedTime);
				}
			}
									else if(msg=="dynamicProperties") {
                jvx_5da23f8190334.updateDYProperties(s[2],1);
							}
												                        else if(msg == "miniScrollerBgInfo"){
                var miniScrollerBgURL = decodeURIComponent(s[2]);
                jvx_5da23f8190334.fixedBgAstLeft = parseInt(s[3]);
                jvx_5da23f8190334.renderFixedPageBg(miniScrollerBgURL,s[3]);
            } 
		}
	}

	function postHtml5Message(winRef, msg){
		try{
			winRef.postMessage('jvx_5da23f8190334' + ':' + msg, "*");
		}catch(e){
			if(typeof(winRef.contentWindow) != 'undefined')
				winRef.contentWindow.postMessage('jvx_5da23f8190334' + ':' + msg, "*");
		}
	}
		function addEvent(el, event, fn, capture){
		if(el.addEventListener){
			el.addEventListener(event,fn,capture);
		}else{
			el.attachEvent("on" + event, fn);
		}
	}
	
	function removeEvent(el, event, fn, capture){
		if(el.removeEventListener){
			el.removeEventListener(event,fn,capture);
		}else{
			el.detachEvent("on" + event, fn);
		}
	}

	function getElById(id){
		return document.getElementById(id);
	}

	function getElByClass(cName){
		if(document.getElementsByClassName){				
			return document.getElementsByClassName(cName);
		}else if(document.querySelectorAll){	// For IE8
			return document.querySelectorAll(cName);
		}
	}

	function getBox(el){
		return el.getBoundingClientRect();
	}

	function getElemByQuerySelect(el){
		return document.querySelector('#'+el+', .'+el);
	}

	function getOffset(elem) {
		if (elem.getBoundingClientRect) {
			return getOffsetRect(elem);
		} else { // old browser
			return getOffsetSum(elem);
		}
	}

	function getOffsetSum(elem) {
	  var top=0, left=0;
	  while(elem) {
		top = top + parseInt(elem.offsetTop);
		left = left + parseInt(elem.offsetLeft);
		elem = elem.offsetParent;        
	  }
	   
	  return {top: top, left: left};
	}

	function getOffsetRect(elem) {
		var box = elem.getBoundingClientRect();
		
		var body = document.body;
		var docElem = document.documentElement;
		
		var scrollTop = window.pageYOffset || docElem.scrollTop || body.scrollTop;
		var scrollLeft = window.pageXOffset || docElem.scrollLeft || body.scrollLeft;
		
		var clientTop = docElem.clientTop || body.clientTop || 0;
		var clientLeft = docElem.clientLeft || body.clientLeft || 0;
		
		var top  = box.top +  scrollTop - clientTop;
		var left = box.left + scrollLeft - clientLeft;
		
		return { top: Math.round(top), left: Math.round(left) };
	}

	function getOffset(elem) {
		if (elem.getBoundingClientRect) {
			return getOffsetRect(elem);
		} else {
			return getOffsetSum(elem);
		}
	}

	/**
	* Creates and returns element from html chunk
	* Uses innerHTML to create an element
	*/
	var toElement = (function(){
		var div = document.createElement('div');
		return function(html){
			div.innerHTML = html;
			var el = div.firstChild;
			return div.removeChild(el);
		};
	})();

	var getElComputedStyle = function(){
		var func = null;
		if (document.defaultView && document.defaultView.getComputedStyle) {
			func = document.defaultView.getComputedStyle;
		} else if (typeof(document.body.currentStyle) !== "undefined") {
			func = function(element, anything) {
			  return element["currentStyle"];
			};
		}
		return function(element, style) {
			if(typeof func === 'function')
				return func(element, null)[style];
		}
	}();

    function hasClass(el, name){        
        var re = new RegExp('\\b' + name + '\\b');        
        return re.test(el.className);
    }  
	
    function addClass(el, name){
        if(!hasClass(el, name)){
			if(el.classList && el.classList.length > 0){
				el.className += ' ' + name;
			} else {
				el.className =  name;	
			}
        }	
    }   
	
    function removeClass(el, name){
        var re = new RegExp('\\b' + name + '\\b');                
        el.className = el.className.replace(re, '');        
    }
    
    function removeNode(el){
        el.parentNode.removeChild(el);
    }

	function createImg(obj){
		/* obj should be of this format - {'id':'image1','src':'http://www.jivox.com/image.jpg','width':'180','height':'150'} */
		var id = obj.id, 
			src = obj.src, 
			width = obj.width, 
			height = obj.height,
			str = '';

		str += '<img id="'+id+'" src="'+src+'" width="'+width+'" height="'+height+'" border="0" style="margin:0;padding:0;border:0;display:block;" />';
		return str;
	}
	
	function createSWF(obj){
		var id = obj.id, 
			src = obj.src, 
			width = obj.width, 
			height = obj.height,
			params = obj.params,
			paramsHTMLStr = '',
			str = '';

		for(var paramName in params){
			paramsHTMLStr += '<param name="'+paramName+'" value="'+params[paramName]+'" />';
		}

		str += '<object type="application/x-shockwave-flash" data="'+src+'" id="'+id+'" name="'+id+'" width="'+width+'" height="'+height+'" style="display:block;">';
		str += paramsHTMLStr;
		str += '</object>';
		return str;		
	}

	function createIframe(obj){
		/* obj should be of this format - {'id':'frame1','src':'http://www.jivox.com/','width':'1024','height':'768'} */
		var id = obj.id, 
			src = obj.src, 
			width = obj.width, 
			height = obj.height,
			str = '',
			customCss = '';
				if(!isEmpty(obj.styles)){
			var styles = obj.styles;
			customCss = ";";
			for (var name in styles) {
			  if(styles.hasOwnProperty(name)){
				  customCss += name+ ":" +styles[name]+ ";";
			   }
			}
		}	
		
		var	iframeStyleVal = "";
				iframeStyleVal += "margin:0;padding:0;border:0;display:block" + customCss;

		str += '<iframe id="'+id+'" name="'+id+'" src="'+src+'" width="'+width+'" height="'+height+'" frameborder="0" scrolling="no" allowtransparency="true" style="'+iframeStyleVal+'" onload="this.style.visibility=\'visible\';"></iframe>';
		return str;
	}

	function createFIF(obj){
		/* obj should be of this format - {'id':'frame1','src':'http://www.jivox.com/','width':'1024','height':'768'} */
		var id = obj.id, 
			src = obj.src, 
			width = obj.width, 
			height = obj.height,
			str = '';
		src = '<style>body{padding:0;margin:0;}</style>' + src;
		str += '<iframe id="'+id+'" name="'+id+'" srcdoc="'+src+'" src="about:blank" width="'+width+'" height="'+height+'" frameborder="0" scrolling="no" allowtransparency="true" style="margin:0;padding:0;border:0;visibility:hidden;" onload="this.style.visibility=\'visible\';"></iframe>';

		return str;
	}

    function createDivNode(id){
        var divNode =  document.createElement('div');
        divNode.id = id;
        return divNode;
    }

    function prependNode(cNode, pNode){
		pNode.insertBefore(cNode, pNode.firstChild);
    }
	
	function setPixel(pValue){
		var pxVal = pValue.toString();
		if(pxVal.indexOf("%") >= 0){
			return "";
		}
		return "px";
	}
	
	function clearNode(pNode, idPrefix){
		var i = 0, 
			elList = pNode.getElementsByTagName('div'),
			elLen = (elList) ? elList.length : 0;
		for (i = 0; i < elLen; i++) {
			var elId = elList[i].id;
			if(elId && elId.indexOf(idPrefix) == 0){
				pNode.removeChild(elList[i]);
								return;
			}
		}
	}

		function getPageURL(){
                var currPageURL = window.location.href;
        if(currPageURL != "about:blank" || currPageURL != ""){
            return currPageURL;
        }
        var parentWindow;
                		var resolvePageURL = function(){
            try{
                parentWindow = typeof parentWindow != "undefined" ? parentWindow['parent'] : window.parent;
                var pageUrlRef = parentWindow.location.href;
                if(pageUrlRef == "about:blank"){
                    resolvePageURL();
                } else if(pageUrlRef != ""){
                    currPageURL = pageUrlRef;
                }
            } catch(e){
                console.log("Error in getting the pageURL from resolvePageURL(): " + e);
            }
        }
        if(jvx_5da23f8190334TraffickedInFrame){
                        try{
                currPageURL = top.window.location.href;
            } catch(e){
                                console.log("Error in getting the pageURL from getPageURL(): " + e);
                resolvePageURL();
            }
        } 
				return currPageURL;
	}
	
	/**
     * Helper that takes object literal
     * and returns the object after removing blank values
     * @param {Object} sourceObj
     */
	function deleteBlankAttr(sourceObj){
		for (var i in sourceObj) {
			  if (sourceObj[i] == "" || sourceObj[i] == "undefined") {
				delete sourceObj[i];
			  }
			}
		return sourceObj;	
	}
	
	/**
     * Helper that takes object literal
     * and add all properties to element.style
     * @param {Element} node
     * @param {Object} styles
     */
    function addStyles(node, styles){
		if(!isEmpty(styles)){
			styles = deleteBlankAttr(styles);
			var fChar = "",
			nodeCSS = node.style.cssText;	
			if(nodeCSS){
				fChar = " ";
				if(nodeCSS[nodeCSS.length-1] != ";"){
				  nodeCSS += ";";	// For IE8 and less
				}
			}
			for (var name in styles) {
			  if(styles.hasOwnProperty(name)){
				  nodeCSS += fChar +name+ ": " +styles[name]+ ";";
			   }
			}
			if(nodeCSS) node.style.cssText = nodeCSS.toString();
		}
	}

	/**
     * Helper that takes object literal
     * and remove all properties to element.style
     * @param {Element} el
     * @param {Object} styles
     */
    function removeStyles(el, styles){
		if(!isEmpty(styles)){
		//	styles = deleteBlankAttr(styles);
			for (var name in styles) {
				if(styles.hasOwnProperty(name)){
					el.style[name] = '';
				}
			}
		}	
    }
	
	/**
     * Helper that creates a Div component with the Id passed 
     * and add default CSS class, innerText and extra styles to the component 
	 * and then append the component to the main element
     * @param {Main element to which new node has to appended } mainEl
	 * @param {Id for the new node} nodeId
	 * @param {default CSS class name to be added} className
	 * @param {innerText to the node} text
	 * @param {Object - styles to be added to the node} styleObj
     */
	function addDivComponent(mainEl, nodeId, className, text, styleObj)
	{
		var node = createDivNode(nodeId);
		node.innerHTML = text;							
		if(className != '')
			addClass(node, className);					
		if(!isEmpty(styleObj))
			addStyles(node, styleObj);
		return mainEl.appendChild(node);
	}
	
	function setAttributes(el, attrs)
	{
		for(var key in attrs) {
			el.setAttribute(key, attrs[key]);
		}
	}
	
	function getBrowserPrefix(browserName){
		var prefix = "";
		if(!isEmpty(browserName)){
			if((browserName == 'Chrome') || (browserName == 'Safari') || (browserName == 'iPhone') || (browserName == 'iPod') || (browserName == 'iPad'))
				prefix = "webkit";
			else if(browserName == 'Firefox')
				prefix = "moz";
			else if(browserName == 'Internet Explorer')
				prefix = "ms";
			else if(browserName == 'Opera')
				prefix = "o";
			else{
							}	
		}
		return prefix;
	}
	
	function getBrowserWindowProps() {
        var browserWidth = 0, browserHeight = 0;
		var doc = document,
			docElem = doc && doc.documentElement,
			docBody = doc && doc.body;
						
		 if(typeof (window.innerWidth) == 'number') {
			// For checking non-IE browsers Mozilla, Safari, Opera, Chrome.
			browserWidth = window.innerWidth;
		}
				//All IE except version 4
		else if (docElem && docElem.clientWidth) {
            browserWidth = docElem.clientWidth;
        }
				//IE 4
        else if (docBody && docBody.clientWidth) {
			 browserWidth = docBody.clientWidth;
		}
		
		 if(typeof (window.innerHeight) == 'number') {
			// For checking non-IE browsers Mozilla, Safari, Opera, Chrome.
			browserHeight = window.innerHeight;
		}
				//All IE except version 4
		else if (docElem && docElem.clientHeight) {
            browserHeight = docElem.clientHeight;
        }
				//IE 4
        else if (docBody && docBody.clientHeight) {
			 browserHeight = docBody.clientHeight;
		}
		
        return [browserWidth, browserHeight];
    };
	
	function getCenterAlignXY(objWidth,objHeight){ 
		var winPos = getBrowserWindowProps(),
			objX = '';
		if(window.innerWidth == document.documentElement.clientWidth) {
			objX = (winPos[0] - objWidth) / 2 ;
		} else {
			var scrollWidth = window.innerWidth - document.documentElement.clientWidth;
			objX = ((winPos[0]- scrollWidth) - objWidth) / 2 ;
		}	
		 var objY = (winPos[1] - objHeight) / 2 ;
		 		 objX = (objX < 0) ? 0 : objX;
		 		 objY = (objY < 0) ? 0 : objY;
		 return [objX,objY];
	}
	
	function isEmpty(obj) {
		
		// null and undefined are "empty"
		if (obj == null) return true;

		// Assume if it has a length property with a non-zero value
		if (obj.length === 0)  return true;
		if (obj.length && obj.length > 0)    return false;

		for (var key in obj) {
			if (Object.prototype.hasOwnProperty.call(obj, key)) return false;
		}
		return true;	
	}
	/* Function used to create an event manually with the help of CustomEvent constructor for the 'evtName' */
	function createCustomEvent(evtName){
		var event = null;
		if (typeof CustomEvent === 'function') {
			event = new CustomEvent(evtName)
		} else {	// For IE browser
			event = document.createEvent("CustomEvent");
			event.initCustomEvent(evtName, false, false, '');
		}
		if(!event) return;
		return event;
	}
	
		
	function fireTracker(url){
		var imgEl = document.createElement('img');
		var finalURL = "";
		if(!url.match("http://evs.jivox.com/jivox/serverAPIs/saveImpression.php")){
			var replaceCacheBuster0 = url.replace('[timestamp]', Math.random()); 
var replaceCacheBuster1 = replaceCacheBuster0.replace('[randomNumber]', Math.random()); 
var replaceCacheBuster2 = replaceCacheBuster1.replace('{cacheBuster}', Math.random()); 
var replaceCacheBuster3 = replaceCacheBuster2.replace('{RANDOMNUM}', Math.random()); 
var replaceCacheBuster4 = replaceCacheBuster3.replace('%%CACHEBUSTER%%', Math.random()); 
finalURL = replaceCacheBuster4;			//finalURL = replaceCacheBuster;
		}else{
			if(url.indexOf("?") == -1){
				finalURL = url + "?r=" + Math.random();
			}else{
				finalURL = url + "&r=" + Math.random();
			}
		}
					if(typeof jvx_5da23f8190334 != 'undefined'){
				finalURL += "&es_cgName_"+jvx_5da23f8190334.DYReportingKey;
                if(jvx_5da23f8190334.DYSegmentName != ""){
                    finalURL += "&es_segName_"+jvx_5da23f8190334.DYSegmentName;
                }
			}
				imgEl.src = finalURL;
			}       

	function setStylesFromStr(node, styleStr){
		if(styleStr == ''){
			return;
		}
		var splittedStyles = styleStr.split(";");
		var stylesLen = splittedStyles.length;
		if(stylesLen < 1){
			return;
		}
		for(var i=0;i<stylesLen;i++){
			var splittedRule = splittedStyles[i].split(":");
			if(splittedRule.length < 2){
				continue;
			}
			var prop = splittedRule[0];
			var val = splittedRule[1];
			node.style[prop] = val;
		}
	}

	function setOpacity(myElement, opacityValue) {
		if(typeof myElement.style.opacity !== 'undefined'){
			myElement.style.opacity = opacityValue/100; // Gecko/Opera
		} else {
			myElement.style.filter = "alpha(opacity="
				 + opacityValue + ")"; // IE			
		}
	}
		function setCloseBtnProp(btnSize){
		var prop = {};
		prop.width = btnSize;
		prop.height = btnSize - 1;
				prop.size = (btnSize < 20) ? btnSize - 3 : btnSize - 2;
		prop.lHeight = (btnSize < 20) ? btnSize - 3 : btnSize - 5;
				return prop;
	}
			function alignAdUnitContainer(sfLeft, sfTop){
		var cLeft = sfLeft + "px",
			cTop = sfTop + "px",
			cNode = getElById(jvx_5da23f8190334.adUnitContainerId);
		addStyles(cNode, {"left":cLeft, "top":cTop});
	}
	function renderAdInsideSafeFrame(animDir){
		if(jvx_5da23f8190334SafeFrameSupported){
			/* ------------- SafeFrame Settings--------------- */
						var ref = jvx_5da23f8190334,
				safeFrameExpX = ref.expansionWidth - ref.baseWidth,
				safeFrameExpY = ref.expansionHeight - ref.baseHeight,
				sfTop = parseInt('0'),
				sfLeft = parseInt('0'),
				sfX = parseInt(safeFrameExpX),
				sfY = parseInt(safeFrameExpY);
				
			if(sfTop < 0){
				// expansion to come from above base
				sfTop = -(sfTop);
			}else{
				// expansion to come from base level
				sfY = sfY + sfTop;
				sfTop = 0;
			}
			if(sfY < 0) sfY = 0;	// doesn't need to reduce the height of the safeframe iframe
			try{
									if(animDir == "SlideRight" || animDir == "DiagonalTopLeft" || animDir == "SlideBottom"){
						$sf.ext.expand({t:sfTop, l:0, b:sfY, r:sfX}, 0, false);
					} else {
						$sf.ext.expand({t:sfTop, l:sfX, b:sfY, r:0}, 0, false);
											}
							}catch(e){
							}
			/* ------------- End ------------- */
		}
	}
		function findPos(obj){
		var curleft = 0;
		var curtop = 0;
		var pageY = 0;
		var pageX = 0;
	 /* var rect = obj.getBoundingClientRect();
		curleft = rect.left;
		curtop =  rect.top; */
		if (obj.offsetParent) {
			do{
				curleft += obj.offsetLeft;
				curtop += obj.offsetTop;
			}while (obj = obj.offsetParent);
		}
		
		if(!isNaN(window.pageYOffset)) {
			pageX = window.pageXOffset;
			pageY = window.pageYOffset;
		} else {
			pageY=document.body.scrollTop || document.documentElement.scrollTop;
			pageX=document.body.scrollLeft || document.documentElement.scrollLeft;
		}
		return [curleft,curtop,pageX,pageY];
	}
		function expandFromVP(expObj){
		var vpStyles = findPos(getElById(jvx_5da23f8190334.adUnitContainerId)),
			vpTop = "", vpLeft = "";
				var centerAlign = getCenterAlignXY(expObj.expWidth, expObj.expHeight);
		vpTop = parseInt(vpStyles[3]);
		if(expObj.animationDirection == "SlideLeft" || expObj.animationDirection == "SlideInRight"
		 || expObj.animationDirection == "DiagonalTopRight" || expObj.animationDirection == "SlideInDiagonalRight"
		 || (expObj.expansionOpen && (expObj.animationDirection == "SlideBottom" || expObj.animationDirection == "SlideInTop"))){
		 
			vpLeft = parseInt(centerAlign[0]) + parseInt(expObj.expWidth);
		}else{
			vpLeft = parseInt(centerAlign[0]);
		}
				
		return [vpLeft, vpTop];
	}
			// return CSS styles array for expansion unit animation
	function createStyleObject(obj){
		var transL = "", transT = "", transB = "", transR = "",
			overflowVal = "", transPos = "",
			transStr = "all "+ obj.animationSpeed +"s linear",
			transW = obj.expWidth + "px", 
			transH = obj.expHeight + "px",
			bLeft = Math.round(obj.baseBox.left),
			bTop = Math.round(obj.baseBox.top),
			expTopOffset = parseInt("0"),
			expLeftOffset = parseInt("0");
									transPos = "absolute";
							
				
				overflowVal = "hidden";
				
		switch(obj.animationDirection){
			case "SlideLeft":
			case "SlideInRight":
			case "DiagonalTopRight":
			case "SlideInDiagonalRight":
			case "DiagonalBottomRight":
			case "SlideBottom":
			case "SlideInTop":
				if(obj.animationDirection == "DiagonalTopRight" || obj.animationDirection == "SlideInDiagonalRight"
					|| obj.animationDirection == "DiagonalBottomRight"){
										transW = "0px";
					transH = "0px";
				} else if(obj.animationDirection == "SlideBottom" || obj.animationDirection == "SlideInTop"){
										
					transH = "0px";
										transStr = "height "+ obj.animationSpeed +"s linear";
										
									} else {
										transW = "0px";
					transStr = "width .5s linear, left .5s linear";
				}
				if(!obj.preStyleExpansion){
										var width = obj.bWidth;
					if(!obj.expansionOpen && (lastAnimDir == "SlideRight" || lastAnimDir == "DiagonalTopLeft") && (obj.animationDirection == "SlideInRight" || obj.animationDirection == "SlideInDiagonalRight")){
						if(obj.expWidth != obj.bWidth){
							width = obj.expWidth;
						}
					}
					if(obj.insertExpansionTo != "adUnitContainer"){
						var left = "";
						if(!obj.alignToVP){
							if(!obj.expansionOpen && (obj.animationDirection == "SlideBottom" || 
														obj.animationDirection == "SlideInTop")){
								left = "";
							} else {
								left = parseInt(bLeft) + width;
								transL = left - expLeftOffset + "px";
							}
						} else {
							if(!obj.expansionOpen && (obj.animationDirection == "SlideBottom" ||
																				obj.animationDirection == "SlideTop")){

								left = parseInt(bLeft);
							}else{
								if(obj.animationDirection != "SlideBottom" && obj.animationDirection != "SlideInTop")
									left = parseInt(bLeft) + width;
								else
									left = parseInt(bLeft);
							}
							transL = left - expLeftOffset + "px";
						}
						var winDim = getBrowserWindowProps();
																		transT = bTop + expTopOffset + 'px';
																	} else {
												var left = "";
						if(!obj.alignToVP){
							if(!obj.expansionOpen && obj.animationDirection == "SlideBottom" ||
														obj.animationDirection == "SlideInTop"){
							//	left = "";
							} else {
								left = width;
								transL = left - expLeftOffset + "px";
							}
						} else {
							if(!obj.expansionOpen && (obj.animationDirection == "SlideBottom" ||
																				obj.animationDirection == "SlideInTop")){
							//	left = "";
							} else {
								if(obj.animationDirection != "SlideBottom" && obj.animationDirection != "SlideInTop"){
									left = width;
									transL = left - expLeftOffset + "px";
								}
							}	
						}
												
												transT = expTopOffset + 'px';
											}
									}
				break;
			case "SlideRight":
			case "SlideInLeft":
			case "DiagonalTopLeft":
			case "SlideInDiagonalLeft":
			
				if(obj.animationDirection == "DiagonalTopLeft" || obj.animationDirection == "SlideInDiagonalLeft"){
										transW = "0px";
					transH = "0px";
				} else if(obj.animationDirection == "SlideRight" || obj.animationDirection == "SlideInLeft"){
																transW = "0px";
						transStr = "width "+ obj.animationSpeed +"s linear";
									} else if(obj.animationDirection == "SlideBottom" || obj.animationDirection == "SlideInTop"){
										
					transH = "0px";
										transStr = "height "+ obj.animationSpeed +"s linear";
										
									}
				
				if(!obj.preStyleExpansion){
										var el = getElById(obj.expContainerId);
					if(obj.insertExpansionTo != "adUnitContainer"){
																					var left = (el.style.left) ? parseInt(el.style.left) : parseInt(bLeft);
																			
												transL = left - expLeftOffset + "px";
												transT = bTop + expTopOffset + 'px';
					} else {
																					var left = (el.style.left) ? parseInt(el.style.left) : parseInt(bLeft);
																									transL = left - expLeftOffset + 'px';
												transT = expTopOffset + 'px';
					}
									}
				break;
			case "Center":
								var startDim = 	getCenterAlignXY(0, 0);
				transW = "0px";
				transH = "0px";
								transL = parseInt(startDim[0]) + expLeftOffset + "px";
								transT = parseInt(startDim[1]) + expTopOffset + "px";
				break;
			case "SlideTop":
			case "SlideInBottom":
								transH = "0px";
								break;
			default:
								break;	
		}
		
				
				
				
		if(0){
			transB = 0 + expTopOffset + "px";
			transT = "";
		}
		var browserPrefixTransParam = "-" + obj.browserPrefix + "-transition",
			browserPrefixParam_1 = "-" + obj.browserPrefix + "-perspective",
			browserPrefixParam_2 = "-" + obj.browserPrefix + "-backface-visibility";
			
		/* Creating style object */	
		var styleObj = {
					'overflow'				: overflowVal,
					'width'					: transW,
					'height'				: transH,
					'top'					: transT,
					'left'					: transL,
					'bottom'				: transB,
					
					'transition'					: transStr,					
					'position'				: transPos
				};
		
				
				styleObj[browserPrefixTransParam] = transStr;
		styleObj[browserPrefixParam_1] = 1000;
		styleObj[browserPrefixParam_2] = "hidden";
				lastAnimDir = obj.animationDirection;
		return styleObj;
	}
	
		
		
		
		
	
	function mraidHandleOnViewable(viewable){
		jvxMraidIsShown = viewable;		 
			if(!jvxMraidIsShown || getElById(jvx_5da23f8190334.baseContainerId)){
				return; 
			}
		jvx_5da23f8190334.init();
		handleMraidViewableImprFiring();
	}
	
	function mraidHandleViewableChange(viewable){
		mraidHandleOnViewable(viewable);
	}

	//fire viewable impression 
	function handleMraidViewableImprFiring(){
		if (!adInVPForOneSec && !timerRunning) {
			timerRunning = true;
			var timeoutHandle = setTimeout(function () {
				adInVPForOneSec = true;
				jvx_5da23f8190334.recordEvent(74);
			}, 1000);
		}
	}

	function validateVal(val){
		return (val == undefined || val == "" || val == 0) ? false : true; 
	};

	/**
	 * Constructor Function / Class for the Creative Unit
	 */
	function CreativeUnit(uniqId){

	    this.id = uniqId;  
		this.playerParamsMap = {"reportingURL":"https:\/\/evs.jivox.com","creativeUnitType":"22","bDim":"300x600","bUnitId":"2200","siteId":"65c616660e0b0a","campaignId":"128974","es_pId":"63E14k","isDynamic":"1","ap_DataSignal1":"28226997","ap_DataSignal2":"ABAjH0hwY7MwejKj_hpFJdgz3svx","ap_DataSignal3":"197232787","ap_DataSignal4":"4104757683","jvxVer":"2","cMacro":"https:\/\/googleads.g.doubleclick.net\/dbm\/clk?sa=L&ai=CXUSXcz-iXYuKENP_iQP1z7-ADIbLvN9YiM6ciL0Kk62BlJMKEAEg7N-yEWDli_uEvBagAa3Dz5EDyAEJqAMBqgTDAU_QWuMFNUBoYuQi6IBgEIbG45YSosrAYdvZXBM9mIOGo_IYXlR2RvjZIP6_uVumrgRslbxvdhce59IJ_sbJaFPqx25XxLbJuPIajcekRSaSduHzPNBwaiyyRxW-8guzQ-xPT1Izp-sns4F6YrUhm8S99CMLR_BHIaOgSZQLN501uYeWLXssqCaYMygZR1Ar_sm-UaQ6eZVM_A0ryfJcqY1St3a2aQaQcBbTogHIIZ4WWC03UBh8V45YsuTp-rbUq2OH0OAEA5AGAaAGTYAHu7ywbogHAZAHAqgHjs4bqAfVyRuoB8HTG6gHhdQbqAeB1BuoB4LUG6gHhtQbqAeE1BuoB5PYG6gH4NMbqAe6BqgH2csbqAfPzBuoB-zVG6gHpr4bqAfz0RvYBwDSCAYIABACGA2ACgOwE4WTswfQEwDYEw3YFAE&ae=1&num=1&cid=CAMSeQClSFh3OHLJiWICfw6OXVZ73JFo2Nmm3JGWt0GGN8obHVK-Bhen2b0rfCOsPpXlcFFhqnwHj9M1S0w0JP4tBn_NJEP-_nxGWDpUEmHBvgzg81AqfuDxCmOVFYUR2hkeL8GjjBmuOx6HDEQGX82U7lvhRB5OPjsEE9Y&sig=AOD64_27J9GnBbSxXt7tT4uKDNsZaj1Uvw&client=ca-pub-8258389452460729&dbm_c=AKAmf-DXSDesiMgvbQ8Rm908DuHAN4a1oXX2Tve_UtSCEEtLvbK7lEipWU6rA53WebcCxqxjUdBz7QCVM8VssR27JrO1O28gqg&dbm_d=AKAmf-B93LDry1ph1W92Z82sw_r5qYMBGrsrhqjbDg3Chuz-2wV3o9aJm09YL9cw-PkdcmwPy_eLv_KTd9fIhBWr_VMjzi7q13aGKBQDgPLj20eAgqlA1xdn51_3ZkyhoLYudNp4kQZhMEyDix_8_-sAXSIdlS8nCAwtC6FT2FTrZpYoN5i8s8QhSR0P4n7KC3gstRFpvNDBrysIejMcn_RrNGOJMNMOPWBnWtCFyCxjrCCCdeDD67puqrsAp9x5LNT1yezXbH2-Ozn-vfEJArL3OWqYV1Qa4SUIfeGdrgwMwnvG_w5NSUVgIY-boniQNJRJwH4t8-hbAcPtQkmu1oNBWREN_mtxIj3dyy2K5o67JZbXYYfhopL2OXsTg8ARJdCFGSj8n9tNnxOLZ4vj9xyVhlLnMzzT0sPDIBNwARcJTtPPZpB52enkPIs7af6lE7WMwbmebsYqXtMpzzudWb9kyhh1b4kircfDvXzVHb2_s6wJWNUtmKLBLJWTTBL-GbhztEA7bbzsUGi2rggkA__HHWYBZxarOg&adurl=","r":"1570914163263435","0":"","serverURL":"https:\/\/as.jivox.com"};
		this.campaignId = '128974';
		this.siteId = '65c616660e0b0a';
		this.placementId = '63E14k';
		this.creativeUnitType = '22';
		this.baseDim = '300x600';
		this.expDim = '';
                        this.apParamsArr = {"ap_DataSignal1":"28226997","ap_DataSignal2":"ABAjH0hwY7MwejKj_hpFJdgz3svx","ap_DataSignal3":"197232787","ap_DataSignal4":"4104757683"};
        this.apParamsInEventFormat = "";
						this.browserName = 'Chrome';
		this.browserVersion = '77.0.3865.90';
								
		this.adUnitContainerId = 'adUnitContainer' + uniqId;
		this.baseContainerId = 'baseContainer' + uniqId;
		this.baseId = 'jvxBase' + uniqId;
		this.base2Id = 'jvxBase' + uniqId + '0';
		this.baseCloseId = 'baseClose' + uniqId;
		this.baseBgId = 'baseBg' + uniqId;
		this.baseBg2Id = 'baseBg' + uniqId + '0';
		this.expansionContainerId = 'expansionContainer' + uniqId;
		this.expansionId = 'expansion' + uniqId;
		this.expansion2Id = 'expansion' + uniqId + '0';
		this.expansionBgId = 'expansionBg' + uniqId;
		this.logContainerId = 'logContainer' + uniqId;
		this.closeExpansionId = 'closeExpansion' + uniqId;
		this.expansionLoaderId = 'expansionLoader' + uniqId;
		this.baseInterceptorId = 'baseInterceptor' + uniqId;
		this.expInterceptorId = 'expInterceptor' + uniqId;
		this.base2InterceptorId = 'baseInterceptor' + uniqId + '0';
		this.maskId = 'mask' + uniqId;
        this.fixedPageBgId = 'fixedPageBg' + uniqId;
		this.loaderId = 'loader' + uniqId;
		this.iBusterFrame = null;
		/*Smooth responsive and stretch variables*/
				this.baseType = 'html';
		this.baseHasLayout = '1';
		this.baseURL = 'https://as.jivox.com/unit/layout_renderer.php?creativeUnitType=22&bDim=300x600&bUnitId=2200&siteId=65c616660e0b0a&campaignId=128974&es_pId=63E14k&isDynamic=1&ap_DataSignal1=28226997&ap_DataSignal2=ABAjH0hwY7MwejKj_hpFJdgz3svx&ap_DataSignal3=197232787&ap_DataSignal4=4104757683&jvxVer=2&cMacro=https%3A%2F%2Fgoogleads.g.doubleclick.net%2Fdbm%2Fclk%3Fsa%3DL%26ai%3DCXUSXcz-iXYuKENP_iQP1z7-ADIbLvN9YiM6ciL0Kk62BlJMKEAEg7N-yEWDli_uEvBagAa3Dz5EDyAEJqAMBqgTDAU_QWuMFNUBoYuQi6IBgEIbG45YSosrAYdvZXBM9mIOGo_IYXlR2RvjZIP6_uVumrgRslbxvdhce59IJ_sbJaFPqx25XxLbJuPIajcekRSaSduHzPNBwaiyyRxW-8guzQ-xPT1Izp-sns4F6YrUhm8S99CMLR_BHIaOgSZQLN501uYeWLXssqCaYMygZR1Ar_sm-UaQ6eZVM_A0ryfJcqY1St3a2aQaQcBbTogHIIZ4WWC03UBh8V45YsuTp-rbUq2OH0OAEA5AGAaAGTYAHu7ywbogHAZAHAqgHjs4bqAfVyRuoB8HTG6gHhdQbqAeB1BuoB4LUG6gHhtQbqAeE1BuoB5PYG6gH4NMbqAe6BqgH2csbqAfPzBuoB-zVG6gHpr4bqAfz0RvYBwDSCAYIABACGA2ACgOwE4WTswfQEwDYEw3YFAE%26ae%3D1%26num%3D1%26cid%3DCAMSeQClSFh3OHLJiWICfw6OXVZ73JFo2Nmm3JGWt0GGN8obHVK-Bhen2b0rfCOsPpXlcFFhqnwHj9M1S0w0JP4tBn_NJEP-_nxGWDpUEmHBvgzg81AqfuDxCmOVFYUR2hkeL8GjjBmuOx6HDEQGX82U7lvhRB5OPjsEE9Y%26sig%3DAOD64_27J9GnBbSxXt7tT4uKDNsZaj1Uvw%26client%3Dca-pub-8258389452460729%26dbm_c%3DAKAmf-DXSDesiMgvbQ8Rm908DuHAN4a1oXX2Tve_UtSCEEtLvbK7lEipWU6rA53WebcCxqxjUdBz7QCVM8VssR27JrO1O28gqg%26dbm_d%3DAKAmf-B93LDry1ph1W92Z82sw_r5qYMBGrsrhqjbDg3Chuz-2wV3o9aJm09YL9cw-PkdcmwPy_eLv_KTd9fIhBWr_VMjzi7q13aGKBQDgPLj20eAgqlA1xdn51_3ZkyhoLYudNp4kQZhMEyDix_8_-sAXSIdlS8nCAwtC6FT2FTrZpYoN5i8s8QhSR0P4n7KC3gstRFpvNDBrysIejMcn_RrNGOJMNMOPWBnWtCFyCxjrCCCdeDD67puqrsAp9x5LNT1yezXbH2-Ozn-vfEJArL3OWqYV1Qa4SUIfeGdrgwMwnvG_w5NSUVgIY-boniQNJRJwH4t8-hbAcPtQkmu1oNBWREN_mtxIj3dyy2K5o67JZbXYYfhopL2OXsTg8ARJdCFGSj8n9tNnxOLZ4vj9xyVhlLnMzzT0sPDIBNwARcJTtPPZpB52enkPIs7af6lE7WMwbmebsYqXtMpzzudWb9kyhh1b4kircfDvXzVHb2_s6wJWNUtmKLBLJWTTBL-GbhztEA7bbzsUGi2rggkA__HHWYBZxarOg%26adurl%3D&r=1570914163263435&objectName=jvx_5da23f8190334&adUnitId=2200&jvxSessionId=1570914177.5939';
        			this.baseURL += '&base=1';
            this.baseURL += '&creativeResolveBeginTime='+Date.parse(creativeResolveBeginTime);
            		        this.baseBgType = 'image';
		this.baseBgURL = '';
		this.baseBgColor = '';
		this.baseFallbackType = '';
		this.baseFallbackURL = '';		
		this.baseFallbackFileName = '';
		this.baseFallbackWidgetSrc = '';
        this.baseWidth = '300';
		this.baseHeight = '600';
                        this.origBaseWidth = '300';
        this.origBaseHeight = '600';
        		this.baseCloseRight = '0';
		this.baseBehaviourId = '0';
		this.behaviourId = '1';
		this.behaviourName = '0x0 Expansion';
        this.insertAdUnitContainerTo = 'slot';
        this.insertAdUnitContainerAs = 'fc';
        this.insertBaseTo = 'adUnitContainer';
        this.insertBaseAs = 'fc';
						var pageURL = getPageURL();
		this.encodedPageURL = encodeURIComponent(pageURL);
				//check the current state of the expansion
		this.expansionOpen = false;
		//check whether the expansion has really opened
		this.expansionHasOpened = false;
		//make sure openExpansionComplete msg is fired only once, because openExpComplete was getting fired incase of orientationchange(css transition was happening in this case)
		this.postOpenExpCompMsg = true;
						
			
						
				this.storeTransitionEndEvt = {};
		this.autoExpandTimerRef = null;
		this.autoCollapseTimerRef = null;
		this.timeSpentOnAd = 0;
				this.UIRTimer = null;
		this.UIRRecorded = false;
		this.DwellTimer = null;
		this.DwellRecorded = true;
		this.DwellElapsedTimer = null;
		this.DwellElapsedTime = 0;
							//	this.sfCollapseFirst = false;
										this.openExpAgain = false;
						this.raiseCMacroFlag = false;
										
			}

	/*
	Prototype object of the CreativeUnit. Add methods / properties to this so that they get shared 
	among all objects created out of this class but at the same time it's created only once.
	*/
	CreativeUnit.prototype = {
		constructor:CreativeUnit,
						         addScriptTagToBody: function(srcLink){
	         var script = document.createElement('script');
	         script.src = srcLink;
	         document.body.appendChild(script);
         },
         sendCookieRequest: function(cookieName){
	        if(jvx_5da23f8190334SafeFrameSupported){
		         var callBackFnName ='jvx_5da23f8190334'+".updateDYProperties";
		         jvx_5da23f8190334.addScriptTagToBody('https://as.jivox.com'+"/unit/getCookies.php?cookieName="+cookieName+"&callback="+callBackFnName+"&deleteCookie="+1+"&r_="+Math.random());  
	         }                  
         },
         updateDYProperties: function(val,isNotCookieData){
            if(!val) return;
            if(isNotCookieData != 1) var val = JSON.parse(val);
            var dynPropArr = val.split("|");
            jvx_5da23f8190334.DYReportingKey = dynPropArr[0] ? decodeURIComponent(dynPropArr[0]) : "";
            jvx_5da23f8190334.DYSegmentName = dynPropArr[1] ? decodeURIComponent(dynPropArr[1]) : "";
            //this.fireCREvent();
         },
						fireCreativeLoadedEvent: function(eventSrc){
			var doFireCreativeLoadEvt = (eventSrc.id == this.baseId) || (this.baseDim == "" && eventSrc.id == this.expansionId);
			if(doFireCreativeLoadEvt){
				var creativeLoadEndTime = new Date();
				var creativeLoadElapseTime = Math.round((creativeLoadEndTime - creativeResolveBeginTime)/1000);
				jvx_5da23f8190334.recordEvent(72, 'es_et_' + creativeLoadElapseTime);
			}
		},
		onLoadEventHandler:function(event){
			var eventSrc = event.target || event.srcElement;
			if(eventSrc != 'undefined' && eventSrc != null){
				this.fireCreativeLoadedEvent(eventSrc);
								               	
                    if(jvx_5da23f8190334SafeFrameSupported){
                        var getReportingKeyFromCookie = false,
                            baseAndExpHasLayout = (this.baseHasLayout == 1 && this.expansionHasLayout == 1),
                            elId = eventSrc.id;
                            if(baseAndExpHasLayout){
                                if(elId.indexOf("jvxBase_") != -1){
                                    getReportingKeyFromCookie = true;
                                }
                            } else {
                                if(elId.indexOf("jvxBase_") != -1 && this.baseHasLayout == 1){
                                    getReportingKeyFromCookie = true;
                                }else if(elId.indexOf("expansion_") != -1 && this.expansionHasLayout == 1){
                                    getReportingKeyFromCookie = true;
                                }
                            }
                            if(getReportingKeyFromCookie){
                                jvx_5da23f8190334.sendCookieRequest('jvx_5da23f8190334'+"_dynamicProperties");
                            }
                    }
                											}	
		},
						restyleExpansion:function(){
			var that = this,
				expEl = getElById(this.expansionContainerId),
				offLeft = parseInt(0),
				offTop = parseInt(0);
				
			var getCoords = function(){
				var baseBox = "";
				baseBox = that.getAdUnitBox();
				return baseBox;
			};
										if(this.expansionOpen){
					var box = getCoords();
					var newLeft = "", newTop = "";
					if(this.insertExpansionTo != 'adUnitContainer'){
						if(this.expAnimDir == "DiagonalTopRight" || this.expAnimDir == "SlideLeft" ||
							this.expAnimDir == "SlideBottom" || this.expAnimDir == "SlideTop"){
							
							newLeft = Math.round(box.left) - (parseInt(this.expansionWidth) - parseInt(this.baseWidth)) - offLeft;
						} else {
							newLeft = Math.round(box.left) + offLeft;
						}
						newTop = Math.round(box.top) + offTop;
					}else{
						if(this.expAnimDir == "DiagonalTopRight" || this.expAnimDir == "SlideLeft" ||
							this.expAnimDir == "SlideBottom" || this.expAnimDir == "SlideTop"){
							
							newLeft = parseInt(this.expansionWidth) - parseInt(this.baseWidth) + offLeft;
							newLeft = "-" +newLeft+ 'px';
						} else {
							newLeft = offLeft;
						}
						newTop = offTop;
					}
										addStyles(expEl, {'left': newLeft + 'px', 'top': newTop + 'px'});
				} else {
					this.preStyleExpContainer();
				}
					},
						        renderBase:function(responsive){
                        if(this.baseHasLayout == 1){
               if(!this.dmpDSValue && !this.cJsExecuted) return;
                        }
                        if(responsive) {
				var baseContainerNode = getElById(this.baseContainerId);
				baseContainerNode.style.backgroundColor = this.baseBgColor;
				var cNode = getElById(this.adUnitContainerId);
				if(cNode != null) {
					// Reset width and height for base container
					cNode.style.width = this.baseWidth + 'px';
					cNode.style.height = this.baseHeight + 'px';
				}
								var bNode = getElById(this.baseId);
				var b2Node = getElById(this.base2Id);
				if(bNode != null) {
					var iframeNode = (bNode.nodeName.toLowerCase() == "iframe") ? bNode : b2Node;
					var imgNode = (bNode.nodeName.toLowerCase() == "img") ? bNode : b2Node;
										if(this.baseType == "html" && iframeNode != null) {
						iframeNode.style.display = 'block';
						if(imgNode != null) {
							imgNode.style.display = 'none';
						}
						 
						iframeNode.width = this.baseWidth;
												iframeNode.height = this.baseHeight;
						if(this.baseHasLayout == 1){
							// Layout renderer should render new layout						
							/*Smooth responsive and stretch variables*/
															postHtml5Message(iframeNode, 'reRenderLayout');
								setTimeout(function(){
                                	postHtml5Message(iframeNode, 'activateScene');
                                },1);
													} else {
							// html banner
							iframeNode.src = this.baseURL;
						}
						
												return;
					} 
										else if(this.baseHasLayout != 1 && imgNode != null) {
						imgNode.style.display = 'block';
												if(iframeNode != null) {
							iframeNode.style.display = 'none';
							//Layout renderer should pause all the activities like video
							postHtml5Message(iframeNode, 'pauseInteraction');
							postHtml5Message(iframeNode, 'deActivateScene');
						}
												 
						imgNode.width = this.baseWidth;
												imgNode.height = this.baseHeight;
						imgNode.src = this.baseURL;
												return;
					} else {
						var origBaseId = this.baseId;
						this.baseId = this.base2Id;
					}
				}
			}
			var that = this;
			var baseHTMLStr = this.getBase();
			var baseNode = toElement(baseHTMLStr);
			var baseContainerNode = getElById(this.baseContainerId);
			baseContainerNode.appendChild(baseNode);
									addEvent(getElById(this.baseId), "load", function(event){ that.onLoadEventHandler(event); }, false);
						if(this.baseId == this.base2Id) {
				//Reset baseId to original value
				this.baseId = origBaseId;
				//Set style for baseNode
				var baseNode = getElById(this.baseId);
				baseNode.style.position = 'absolute';
				baseNode.style.display = 'none';
				if(bNode.nodeName.toLowerCase() == "iframe") {
					//Layout renderer should pause all the activities like video
					postHtml5Message(bNode, 'pauseInteraction');
					postHtml5Message(bNode, 'deActivateScene');
				}
				//Set style for base2Node
				var base2Node = getElById(this.base2Id);
				base2Node.style.position = 'absolute';
				base2Node.style.display = 'block';
				//Add load event handler
				addEvent(getElById(this.base2Id), "load", function(event){ that.onLoadEventHandler(event); }, false);
			}
					},
        getBase:function(){
			var baseType = this.baseType;
			var str = "";
			switch(baseType){
				case "image":
					str = this.getBaseImage();
					break;
								case "html":
					str = this.getBaseHTML();
					break;
				default:
					break;
			}
			return str;
		},
		getBaseImage:function(){
			var obj = {};
			obj.id = this.baseId;
			var bUrl = this.baseURL,
				ext = bUrl.substr(bUrl.lastIndexOf('.')+1),
				cacheBustBgImg = '';
						if(ext == "gif" && (cacheBustBgImg.length == 0 || parseInt(cacheBustBgImg))){
				bUrl = bUrl + "?" + Math.random();
			}else{
							if(parseInt(cacheBustBgImg)){
					bUrl = bUrl + "?" + Math.random();
				}
			}
			obj.src = bUrl;
			obj.width = this.baseWidth;
			obj.height = this.baseHeight;
			return createImg(obj);
		},
				getBaseHTML:function(){
						var obj = {};
			obj.id = this.baseId;
			obj.src = this.baseURL;
			if(this.baseHasLayout == 1){
					            				var tzOffset = new Date().getTimezoneOffset();
				obj.src += "&localTimeOffset=" + tzOffset;
																obj.src += '&pageURL='+this.encodedPageURL;
							}
							if(this.baseHasLayout == 1){
            		obj.src += '&allowExp=0';
            	}
                        if(this.baseHasLayout == 1){
                                                    if(jvx_5da23f8190334SafeFrameSupported){
                        obj.src += '&isSF=1';
                    }
                            }
						if(this.baseHasLayout == 1 && this.expansionHasLayout == 1){
								obj.src += '&useBaseCVForExp=1';
			}
						obj.width = this.baseWidth;
			obj.height = this.baseHeight;
			return createIframe(obj);
		}, 
		getBaseFallback:function(){
			var fallbackType = this.baseFallbackType;
			var str = "";
			switch(fallbackType){
				case "image":
					str = this.getBaseFallbackImage();
					break;
				case "widget":
					str = this.getBaseFallbackWidget();
					break;
				case "swiffy":
				case "html5":
					str = this.getBaseFallbackHTML();
					break;
				default:
					break;
			}
			return str;
		},
		getBaseFallbackImage:function(){
						var obj = {};
			obj.id = this.baseId;
			obj.src = this.baseFallbackURL;
			obj.width = this.baseWidth;
			obj.height = this.baseHeight;
			return createImg(obj);
		},
		getBaseFallbackWidget:function(){
			var obj = {};
			obj.id = this.baseId;
			obj.src = this.baseFallbackWidgetSrc;
			obj.width = this.baseWidth;
			obj.height = this.baseHeight;
			return createFIF(obj);
		},
		getBaseFallbackHTML:function(){
			var obj = {};
			obj.id = this.baseId;
			obj.src = this.baseFallbackURL;
			obj.width = this.baseWidth;
			obj.height = this.baseHeight;
			return createIframe(obj);
		}, 
		getBaseClose:function(){
			var obj = {};
			obj.id = this.baseCloseId;
			obj.src = '';
			obj.width = '';
			obj.height = '';
			return createImg(obj);
		},
						getExpansionRef:function(){
			var eNode = getElById(this.expansionId);
            var e2Node = getElById(this.expansion2Id);
            if(!eNode) return null;
            var eIframeNode = (eNode.nodeName.toLowerCase() == "iframe") ? eNode : e2Node;
            return eIframeNode;
		},
		fnCallback:function(evt){
			var ref = jvx_5da23f8190334,
				pName = '', targetId = '', key = '';
			if(evt){
				pName = evt.propertyName,
				targetId = evt.target.id,
				key = targetId;	
			}
			if(targetId == ref.loaderId)
				return;
		/*	var addPNameToKey = function(pName){
				if(pName == 'width'){
					key += evt.target.clientWidth;	
				}else if(pName == 'height'){
					key += evt.target.clientHeight;
				}else if(pName == 'top'){
					key += evt.target.clientTop;
				}else if(pName == 'left'){
					key += evt.target.clientLeft;
				}
				return key;
			};	
		*/
			var executeCallBack = function(transitionEvt){
								if(ref != 'undefined' && ref != null){
					var el = ref.getExpansionRef(),
						expEl = getElById(ref.expansionContainerId);
					if(ref.expansionOpen){
						
																			
																		var clsEl = getElById(ref.closeExpansionId);
						if(clsEl){
														clsEl.style.display = 'block';
						}	
																		if(ref.expansionHasLayout == 1 && ref.postOpenExpCompMsg){
														if(transitionEvt){
								postHtml5Message(el,'openExpansionComplete');
								postHtml5Message(el,'activateScene');
							}else{
															}
							ref.postOpenExpCompMsg = false;
						}
					}else{
						if(ref.openExpAgain) ref.openExpAgain = false; 
												
												if(jvx_5da23f8190334SafeFrameSupported && transitionEvt){
							try{
								$sf.ext.collapse();
															}catch(e){}
						}
												
												var clsEl = getElById(ref.closeExpansionId);
						if(clsEl)
							clsEl.style.display = 'none';
												if(ref.expansionHasLayout == 1){
							if(transitionEvt){
								postHtml5Message(el,'closeExpansionComplete');
							}else{
															}
													}
						
												
						/* Removing Styles from adUnitContainer which is set during openExpansion and adding default styles for Billboard */
												/* End */
						
						/* Removing Styles from document.body which is set during openExpansion for Sidekick */
												/* End */

						ref.expansionHasOpened = false;
						ref.postOpenExpCompMsg = true;
					}
				}
			};
			if(!isEmpty(ref.storeTransitionEndEvt)){
				if(!ref.storeTransitionEndEvt.hasOwnProperty(key)){		// If KEY not present in the object, add the New Key to the object and 
					ref.storeTransitionEndEvt[key] = targetId;			// execute callback
					if(targetId != ref.closeExpansionId){
						executeCallBack(evt);
					}	
				}else{
				//	log("already exist");
				}
			}else{
				ref.storeTransitionEndEvt[key] = targetId;
				if(targetId != ref.closeExpansionId){
					executeCallBack(evt);
				}	
				setTimeout(function(){ref.storeTransitionEndEvt = {};},200);
			}
		},
										applyInterceptorStyle:function(iNode,pNode){
			iNode.style.position = "absolute";
			iNode.style.cursor = "pointer"; // In iOS, event delegation don't work for div "clicks" unless this is set.
			iNode.style.top = "0px";
			iNode.style.left = "0px";
			pNode.appendChild(iNode);
		},
		renderInterceptor:function(type){
			var iNode = '', pNode = '';
			if(type == 'base'){
				iNode = createDivNode(this.baseInterceptorId); //interceptor node
				pNode = getElById(this.baseContainerId);
				iNode.style.width = this.baseWidth + "px";
				iNode.style.height = this.baseHeight + "px";
											} else if(type == 'expansion'){
				iNode = createDivNode(this.expInterceptorId); //interceptor node
				pNode = getElById(this.expansionContainerId);
				iNode.style.width = this.expansionWidth + "px";
				iNode.style.height = this.expansionHeight + "px";
			}
			this.applyInterceptorStyle(iNode,pNode);
		},
								setAdUnitStyle:function(obj){
			if(this.insertExpansionTo == "adUnitContainer") {
				var transitionPos = "",
				mainContStyle = {};
								addStyles(getElById(this.adUnitContainerId), mainContStyle);		// Setting CSS styles to #adUnitContainer 
			}
		},
								
				
		getIBusterFrameInfo:function(){
			if(typeof(jivoxIBusterAdObject) != "undefined"){
				var hostIframes = document.body.getElementsByTagName("iframe"),
					iFramesLen = (hostIframes) ? hostIframes.length : 0;
				for(var i=0; i < iFramesLen; i++){
					if(hostIframes[i].contentWindow == jivoxIBusterAdObject["jvx_5da23f8190334"].foreignWindow){
						cords = getBox(hostIframes[i]);
						return [cords, hostIframes[i]];
					//	this.iBusterFrameCords = cords;
					//	this.iBusterFrame = hostIframes[i];
					}
				}
			}
		},
				getAdUnitBox: function(){
						var box = getOffset(getElById(this.adUnitContainerId));
						return box;
		},
		animate: function(obj){
			var styles = {},
				expEl = getElById(this.expansionContainerId),
				expLeft = parseInt(expEl.style.left),
				expTop = parseInt(expEl.style.top),
				startTimeOut = 80, endTimeOut = 80,
				jsAnimSpeed = obj.animationSpeed*1000;
				
			var adUnitBox = this.getAdUnitBox();
			obj.browserPrefix = getBrowserPrefix(this.browserName);
			obj.expWidth = parseInt(this.expansionWidth);
			obj.expHeight = parseInt(this.expansionHeight);
			obj.bWidth = parseInt(this.baseWidth);
			obj.bHeight = parseInt(this.baseHeight);
			obj.alignToVP = this.alignToVP;
			
			var that = this;
			var openAnimSettings = function(styleObj){
				var returnVal = null;
				if(!that.preStyleExpansion){
					if(that.expAnimDir != "SlideTop"){
						if(styleObj['left'] != "")
							returnVal = parseInt(styleObj['left']) -  obj.expWidth
					}	
				} else {
					that.preStyleExpansion = false;
					if(that.expAnimDir != "SlideTop"){
						returnVal = expLeft -  obj.expWidth;
					} else {
												returnVal = parseInt(adUnitBox.top) - (parseInt(that.expansionHeight) - parseInt(that.baseHeight));
											}
				}
				return returnVal;
			};
				
						
						
			obj.preStyleExpansion = this.preStyleExpansion;
			obj.insertExpansionTo = this.insertExpansionTo;
			obj.expContainerId = this.expansionContainerId;
			
						//adding close button to Expansion
			var closeDiv = getElById(this.closeExpansionId);
			if(!closeDiv) {
				var dispType = "none", clsLeft = "", clsTop = "";
																		var clsStyles = {'display' : dispType,
									 'top'	   : clsTop + 'px',
									 'left'    : clsLeft +'px',
									 									};	
					closeDiv = addDivComponent(expEl, this.closeExpansionId, 'jvx_boxclose', '&times;', clsStyles);
							} else {
				closeDiv.style.display = 'block';
			}
						
											styles = createStyleObject(obj);
				if(this.vAlignToVP && !this.preStyleExpansion){
					if(obj.expansionOpen){
						var vpTop = setVAlignTop(styles);
						styles['top'] = vpTop + 'px';
					}else{
						styles['top'] = expTop + "px";
					}
				}
									if(!obj.expansionOpen && (obj.animationDirection == "SlideInDiagonalRight"
						|| obj.animationDirection == "SlideInRight")){
						var clsExpLeft = expLeft +  parseInt(that.expansionWidth);
						styles['left'] = clsExpLeft + "px";
					}
					addStyles(expEl, styles);
								
				if(obj.expansionOpen){
					if(obj.animationDirection == "DiagonalTopRight" || obj.animationDirection == "SlideInDiagonalRight"
						|| obj.animationDirection == "SlideLeft" || obj.animationDirection == "SlideInRight"
						|| obj.animationDirection == "SlideBottom" || obj.animationDirection == "SlideInTop"){
						
						var newLeft = openAnimSettings(styles);
					}
										var that = this;
					setTimeout(function() {
						expEl.style.width = obj.expWidth + "px";
						expEl.style.height = obj.expHeight + "px";
						if(!that.alignToVP || (that.alignToVP && (obj.animationDirection != "SlideBottom" &&
																obj.animationDirection != "SlideInTop"))){
							
							if(newLeft != "undefined") expEl.style.left = newLeft + "px";
						}
					},startTimeOut);
									} else {
									}
						// COM: transition end evt is not triggered when animSpeed is 0
					},
		
	/* Expansion code starts */ 
        renderExpansionBg:function(){
			var str = "";
            var expansionContainerEl = getElById(this.expansionContainerId);
            var expansionBgElement = null;
			switch(this.expansionBgType){
				case "image":
					str = this.getExpansionBgImage();
					break;
				default:
					break;
			}
            expansionBgEl = toElement(str);
            expansionContainerEl.appendChild(expansionBgEl);
        },
        getExpansionBgImage:function(){
			var obj = {};
			obj.id = this.expansionBgId;
			obj.src = this.expansionBgURL;
			obj.width = this.expansionWidth;
			obj.height = this.expansionHeight;
			return createImg(obj);
        },
				// this function decides whether to call intermediate/actual layout file incase of loading the expansion
		getExpansionURL:function(url){
			var expansionURL = '';
			if(this.baseHasLayout == 1 && this.expansionHasLayout == 1 && url.indexOf("layout_renderer.php") > 0){
				url += "&useBaseCVForExp=1";
				expansionURL = url.replace("layout_renderer.php", this.expIntermediateFileName);
			}else{
				expansionURL = url;
			}
			return expansionURL;
		},
				renderExpansion:function(mobileVP){
			var eNode = getElById(this.expansionId);
			if(eNode != null) {
				if(mobileVP) {
					var winDim = getBrowserWindowProps();
					//Re-style expansion container
					var eContainerNode = getElById(this.expansionContainerId);
					if(eContainerNode != null) {
						//Reset width and height for expansion container
																				eContainerNode.style.width = winDim[0]+'px';
							eContainerNode.style.height = winDim[1]+'px';
														
					}
					
					//Re-render expansion node in expansionType hybrid (!'C' and !'I')
					var e2Node = getElById(this.expansion2Id);
					var eIframeNode = (eNode.nodeName.toLowerCase() == "iframe") ? eNode : e2Node;
					var eImgNode = (eNode.nodeName.toLowerCase() == "img") ? eNode : e2Node;

					if(this.expansionHasLayout == 1 && eIframeNode != null) {
						eIframeNode.style.display = 'block';
						if(eImgNode != null) {
							eImgNode.style.display = 'none';
						}
						eIframeNode.width = this.expansionWidth;
						eIframeNode.height = this.expansionHeight;
												//Reposition expansion div
//						var mt = (winDim[1] - this.expansionHeight)/2 + 'px',
//							ml = (winDim[0] - this.expansionWidth)/2 + 'px';
//					//	eIframeNode.style.margin = mt + ' 0 0 ' + ml;
						//Post a message to layout renderer
						
						/*Smooth responsive and stretch variables*/
													postHtml5Message(eIframeNode, 'reRenderLayout');
												if(eIframeNode.src == 'about:blank'){
							var eNodeSrc = this.expansionURL;
														// do the same in mobile case also
							var expURL = this.getExpansionURL(eNodeSrc);
							if(expURL != eNodeSrc){ eNodeSrc = expURL; }
														eIframeNode.src = eNodeSrc;
						}
						return;
					} else if(this.expansionHasLayout != 1 && eImgNode != null) {
						eImgNode.style.display = 'block';
						if(eIframeNode != null) {
							eIframeNode.style.display = 'none';
							//Layout renderer should pause all the activities like video
							postHtml5Message(eIframeNode, 'pauseInteraction');
							postHtml5Message(eIframeNode, 'deActivateScene');
						}
						eImgNode.width = this.expansionWidth;
						eImgNode.height = this.expansionHeight;
						//Reposition expansion div
						//Center align expansion node if expansion is an image no layout,
						//If expansion has layout then layout_renderer takes care of alignment
						var mt = (winDim[1] - this.expansionHeight)/2 + 'px',
							ml = (winDim[0] - this.expansionWidth)/2 + 'px';
						eImgNode.style.margin = mt + ' 0 0 ' + ml;
						//Process image based expansion 
						eImgNode.src = this.expansionURL;
						return;
					} else {
						var origExpansionId = this.expansionId;
						this.expansionId = this.expansion2Id;
					}
				} else {
									return;
				}
			}
			var expansionType = this.expansionType;
			var that = this;
			var str = "";
			switch(expansionType){
				case "image":
					str = this.getExpansionImage();
					break;
								case "html":
					str = this.getExpansionHTML();
					break;
				default:
					break;
			}
			if(!str) return false;
			var expansionContainerNode = getElById(this.expansionContainerId);
            var expansionNode = toElement(str);
            expansionContainerNode.appendChild(expansionNode);
						if(expansionNode)
				expansionNode.style.cursor = "pointer";
						addEvent(getElById(this.expansionId), "load", function(event){ that.onLoadEventHandler(event); }, false);
			
						if(this.expansionId == this.expansion2Id) {
				//Reset expansionId to original value
				this.expansionId = origExpansionId;
				//Set style for eNode
				var eNode = getElById(this.expansionId);
				//eNode.style.position = 'absolute';
				eNode.style.display = 'none';
				if(eNode.nodeName.toLowerCase() == "iframe") {
					//Layout renderer should pause all the activities like video
					postHtml5Message(eNode, 'pauseInteraction');
					postHtml5Message(eNode, 'deActivateScene');
				}
				//Set style for base2Node
				var e2Node = getElById(this.expansion2Id);
				//e2Node.style.position = 'absolute';
				e2Node.style.display = 'block';
				//Reposition expansion div
//				var mt = (winDim[1] - this.expansionHeight)/2 + 'px',
//					ml = (winDim[0] - this.expansionWidth)/2 + 'px';
//				e2Node.style.margin = mt + ' 0 0 ' + ml;
				//Add load event handler
				addEvent(e2Node, "load", function(event){ that.onLoadEventHandler(event); }, false);
			}
						//Center align expansion node if expansion is an image no layout,
			//If expansion has layout then layout_renderer takes care of alignment
			if(mobileVP && expansionType == "image") {
				var winDim = getBrowserWindowProps();
				var eNode = getElById(this.expansionId);
				var mt = (winDim[1] - this.expansionHeight)/2 + 'px',
					ml = (winDim[0] - this.expansionWidth)/2 + 'px';
				eNode.style.margin = mt + ' 0 0 ' + ml;
			}
		},
		getExpansionImage:function(){
			var obj = {};
			obj.id = this.expansionId;
			obj.src = this.expansionURL;
			obj.width = this.expansionWidth;
			obj.height = this.expansionHeight;
			return createImg(obj);
		},
				getExpansionHTML:function(){
			var obj = {};
			obj.id = this.expansionId;
			obj.src = this.expansionURL;
			if(this.userInitAction && parseInt(this.expansionHasLayout)){
				// add this param so that expansion layout knows it got opened manualy and not an auto-expansion
				obj.src += "&userInitAction=1";				
			}
			if(this.expansionHasLayout == 1){
								                var tzOffset = new Date().getTimezoneOffset();
				obj.src += "&localTimeOffset=" + tzOffset;
								                    if(jvx_5da23f8190334SafeFrameSupported){
                        obj.src += '&isSF=1';
                    }
                																obj.src += '&pageURL='+this.encodedPageURL;
							}
			obj.width = this.expansionWidth;
			obj.height = this.expansionHeight;
						
						obj.styles = {'max-width':'none !important'};
			
						var expURL = this.getExpansionURL(obj.src);
			if(expURL != obj.src){ obj.src = expURL; }
						return createIframe(obj);
		}, 
		getExpansionFallback:function(){
			var fallbackType = this.expansionFallbackType;
			var str = "";
			switch(fallbackType){
				case "image":
					str = this.getExpansionFallbackImage();
					break;
				case "widget":
					str = this.getExpansionFallbackWidget();
					break;
				case "swiffy":
				case "html5":
					str = this.getExpansionFallbackHTML();
					break;
				default:
					break;
			}
			return str;
		},
		getExpansionFallbackImage:function(){
			var obj = {};
			obj.id = this.expansionId;
			obj.src = this.expansionFallbackURL;
			obj.width = this.expansionWidth;
			obj.height = this.expansionHeight;
			return createImg(obj);
		},
		getExpansionFallbackWidget:function(){
			var obj = {};
			obj.id = this.expansionId;
			obj.src = this.expansionFallbackWidgetSrc;
			obj.width = this.expansionWidth;
			obj.height = this.expansionHeight;
			return createFIF(obj);
		},
		getExpansionFallbackHTML:function(){
			var obj = {};
			obj.id = this.expansionId;
			obj.src = this.expansionFallbackURL;
			obj.width = this.expansionWidth;
			obj.height = this.expansionHeight;
			return createIframe(obj);
		},
		
		openClickThrough:function(){
						window.open('https://googleads.g.doubleclick.net/dbm/clk?sa=L&ai=CXUSXcz-iXYuKENP_iQP1z7-ADIbLvN9YiM6ciL0Kk62BlJMKEAEg7N-yEWDli_uEvBagAa3Dz5EDyAEJqAMBqgTDAU_QWuMFNUBoYuQi6IBgEIbG45YSosrAYdvZXBM9mIOGo_IYXlR2RvjZIP6_uVumrgRslbxvdhce59IJ_sbJaFPqx25XxLbJuPIajcekRSaSduHzPNBwaiyyRxW-8guzQ-xPT1Izp-sns4F6YrUhm8S99CMLR_BHIaOgSZQLN501uYeWLXssqCaYMygZR1Ar_sm-UaQ6eZVM_A0ryfJcqY1St3a2aQaQcBbTogHIIZ4WWC03UBh8V45YsuTp-rbUq2OH0OAEA5AGAaAGTYAHu7ywbogHAZAHAqgHjs4bqAfVyRuoB8HTG6gHhdQbqAeB1BuoB4LUG6gHhtQbqAeE1BuoB5PYG6gH4NMbqAe6BqgH2csbqAfPzBuoB-zVG6gHpr4bqAfz0RvYBwDSCAYIABACGA2ACgOwE4WTswfQEwDYEw3YFAE&ae=1&num=1&cid=CAMSeQClSFh3OHLJiWICfw6OXVZ73JFo2Nmm3JGWt0GGN8obHVK-Bhen2b0rfCOsPpXlcFFhqnwHj9M1S0w0JP4tBn_NJEP-_nxGWDpUEmHBvgzg81AqfuDxCmOVFYUR2hkeL8GjjBmuOx6HDEQGX82U7lvhRB5OPjsEE9Y&sig=AOD64_27J9GnBbSxXt7tT4uKDNsZaj1Uvw&client=ca-pub-8258389452460729&dbm_c=AKAmf-DXSDesiMgvbQ8Rm908DuHAN4a1oXX2Tve_UtSCEEtLvbK7lEipWU6rA53WebcCxqxjUdBz7QCVM8VssR27JrO1O28gqg&dbm_d=AKAmf-B93LDry1ph1W92Z82sw_r5qYMBGrsrhqjbDg3Chuz-2wV3o9aJm09YL9cw-PkdcmwPy_eLv_KTd9fIhBWr_VMjzi7q13aGKBQDgPLj20eAgqlA1xdn51_3ZkyhoLYudNp4kQZhMEyDix_8_-sAXSIdlS8nCAwtC6FT2FTrZpYoN5i8s8QhSR0P4n7KC3gstRFpvNDBrysIejMcn_RrNGOJMNMOPWBnWtCFyCxjrCCCdeDD67puqrsAp9x5LNT1yezXbH2-Ozn-vfEJArL3OWqYV1Qa4SUIfeGdrgwMwnvG_w5NSUVgIY-boniQNJRJwH4t8-hbAcPtQkmu1oNBWREN_mtxIj3dyy2K5o67JZbXYYfhopL2OXsTg8ARJdCFGSj8n9tNnxOLZ4vj9xyVhlLnMzzT0sPDIBNwARcJTtPPZpB52enkPIs7af6lE7WMwbmebsYqXtMpzzudWb9kyhh1b4kircfDvXzVHb2_s6wJWNUtmKLBLJWTTBL-GbhztEA7bbzsUGi2rggkA__HHWYBZxarOg&adurl=https%3A%2F%2Fwww.nike.com%2F');
						
												// raise Macro flag if cMacro is not replaced
										
				if(!this.raiseCMacroFlag){
					this.recordEvent(1);
				}else{
					var eventRecordParams = "es_clkMac_1";
					this.recordEvent(1, eventRecordParams);
				}
									if(!adInVPForOneSec){
												this.recordEvent(73);
												adInVPForOneSec = true;
						if (timerRunning) {
							window.clearTimeout(timeoutHandle);
							timerRunning = false;
						}
					}
													},
				openExpansion:function(autoExpand, skipOpenEvent){
			
						
						if(!jvx_5da23f8190334CanBustFromFrame || jvx_5da23f8190334InNestedFrame){
				return;
			}
									
						
			if(!this.expansionHasOpened){
																				if(jvx_5da23f8190334SafeFrameSupported)
					renderAdInsideSafeFrame(this.expAnimDir);
												this.expansionOpen = true;
								this.userInitAction = autoExpand ? false : true;
				if(!this.openExpAgain){
															if(!autoExpand && !skipOpenEvent){
						this.recordEvent(37);
					}
														}
				var obj = {};
				obj.baseBox = this.getAdUnitBox();
							//	obj.baseBox = getOffset(getElById(this.adUnitContainerId));
													obj.animationDirection = this.expAnimDir;
				obj.animationSpeed = this.expAnimSpeed;
				obj.expansionOpen = this.expansionOpen;
				
				if(this.behaviourId != "" || this.behaviourId != "undefined")
					obj.transitionType = parseInt(this.behaviourId);						// hard code the value for testing
								
				var expRendered = this.renderExpansion();
				if(expRendered != false){
					if(!this.expInterceptorDomRef){
												var userHandlesExpClick = "";
						var eFlashClick = "";
						if(this.expansionType == "flash"){
							if(!hasFlashPlugin){
								eFlashClick = "";
							}else{
								eFlashClick = "";
							}
							if(eFlashClick){
								eFlashClick = parseInt(eFlashClick);
							}
						}
												if((userHandlesExpClick && this.expansionType == 'html') 
							|| (this.expansionType == 'flash' && (!eFlashClick && eFlashClick !== ""))){
							
							this.renderInterceptor('expansion');
							if(getElById(this.expInterceptorId)){
								this.expInterceptorDomRef = getElById(this.expInterceptorId);
							}
						}
											}else{
						this.expInterceptorDomRef.style.display = 'block';
					}
					this.expansionHasOpened = true;
					if(this.expansionHasLayout == 1) {
						postHtml5Message(this.getExpansionRef(),'openExpansion');
					}
					
										
										
					if(jvx_5da23f8190334SafeFrameSupported){						
												this.animate(obj);
											}else{
						this.animate(obj);
					}
				}
							}	
		},
		closeExpansion:function(autoClose, skipCloseEvent){	// Only animation applied to hide, expUnit is not deleted
			var that = this;
			if(this.expansionHasOpened){
																												if(!autoClose && !skipCloseEvent){
					this.recordEvent(47);
				}
								this.expansionOpen = false;
								if(!autoClose){
					if(this.autoExpandTimerRef != null){
						clearTimeout(that.autoExpandTimerRef);
					}
				}
				if(this.expansionHasLayout == 1) {
					postHtml5Message(this.getExpansionRef(),'closeExpansion');
				}

				var obj = {};
				obj.transitionType = parseInt(this.behaviourId);			// hard code the value for testing
								obj.animationDirection = this.expAnimDir;
								if(!this.clsExpAnimSpeed && this.clsExpAnimSpeed !== 0){
					obj.animationSpeed = this.expAnimSpeed;
				} else {
					// when close exp anim speed value is not ""
					obj.animationSpeed = "";
				}
				obj.baseBox = this.getAdUnitBox();
							//	obj.baseBox = getOffset(getElById(this.adUnitContainerId));
													obj.expansionOpen = this.expansionOpen;
				
								if(this.expInterceptorDomRef){		// hide expansion interceptor if exists. 
					this.expInterceptorDomRef.style.display = 'none';
				}
								this.animate(obj);
				
							}	
		},
		loadExpansion:function(){

		},
		/* Expansion code ends */

		onBaseMouseOver:function(){
								}, 
		onBaseMouseOut:function(){
					},
		onAdUnitMouseOut:function(){
			var that = this;
									clearTimeout(this.UIRTimer);
			if(!this.DwellRecorded){
            	this.recordDwellEvent(49, this.DwellElapsedTime);
            }
								},
		recordEvent:function(eventId,addnlParams){
							var rand = Math.random();
				var imgEl = document.createElement("img");
                var tempURL = "";
                var eventReportingURL = "https://evs.jivox.com/trk" + "/" + eventId + "/" + "128974/65c616660e0b0a/22/jvxSId_1570914177.5939";
                eventReportingURL += "/es_pId_63E14k";
                tempURL += "";
                                tempURL += this.apParamsInEventFormat ? this.apParamsInEventFormat : "";
                                tempURL = addnlParams ? (tempURL + "/" + addnlParams) : tempURL;
				tempURL = tempURL + "/jvxRandom_" + rand;
				//eventReportingURL = (eventId == 1) ? (eventReportingURL + ";https://googleads.g.doubleclick.net/dbm/clk?sa=L&ai=CXUSXcz-iXYuKENP_iQP1z7-ADIbLvN9YiM6ciL0Kk62BlJMKEAEg7N-yEWDli_uEvBagAa3Dz5EDyAEJqAMBqgTDAU_QWuMFNUBoYuQi6IBgEIbG45YSosrAYdvZXBM9mIOGo_IYXlR2RvjZIP6_uVumrgRslbxvdhce59IJ_sbJaFPqx25XxLbJuPIajcekRSaSduHzPNBwaiyyRxW-8guzQ-xPT1Izp-sns4F6YrUhm8S99CMLR_BHIaOgSZQLN501uYeWLXssqCaYMygZR1Ar_sm-UaQ6eZVM_A0ryfJcqY1St3a2aQaQcBbTogHIIZ4WWC03UBh8V45YsuTp-rbUq2OH0OAEA5AGAaAGTYAHu7ywbogHAZAHAqgHjs4bqAfVyRuoB8HTG6gHhdQbqAeB1BuoB4LUG6gHhtQbqAeE1BuoB5PYG6gH4NMbqAe6BqgH2csbqAfPzBuoB-zVG6gHpr4bqAfz0RvYBwDSCAYIABACGA2ACgOwE4WTswfQEwDYEw3YFAE&ae=1&num=1&cid=CAMSeQClSFh3OHLJiWICfw6OXVZ73JFo2Nmm3JGWt0GGN8obHVK-Bhen2b0rfCOsPpXlcFFhqnwHj9M1S0w0JP4tBn_NJEP-_nxGWDpUEmHBvgzg81AqfuDxCmOVFYUR2hkeL8GjjBmuOx6HDEQGX82U7lvhRB5OPjsEE9Y&sig=AOD64_27J9GnBbSxXt7tT4uKDNsZaj1Uvw&client=ca-pub-8258389452460729&dbm_c=AKAmf-DXSDesiMgvbQ8Rm908DuHAN4a1oXX2Tve_UtSCEEtLvbK7lEipWU6rA53WebcCxqxjUdBz7QCVM8VssR27JrO1O28gqg&dbm_d=AKAmf-B93LDry1ph1W92Z82sw_r5qYMBGrsrhqjbDg3Chuz-2wV3o9aJm09YL9cw-PkdcmwPy_eLv_KTd9fIhBWr_VMjzi7q13aGKBQDgPLj20eAgqlA1xdn51_3ZkyhoLYudNp4kQZhMEyDix_8_-sAXSIdlS8nCAwtC6FT2FTrZpYoN5i8s8QhSR0P4n7KC3gstRFpvNDBrysIejMcn_RrNGOJMNMOPWBnWtCFyCxjrCCCdeDD67puqrsAp9x5LNT1yezXbH2-Ozn-vfEJArL3OWqYV1Qa4SUIfeGdrgwMwnvG_w5NSUVgIY-boniQNJRJwH4t8-hbAcPtQkmu1oNBWREN_mtxIj3dyy2K5o67JZbXYYfhopL2OXsTg8ARJdCFGSj8n9tNnxOLZ4vj9xyVhlLnMzzT0sPDIBNwARcJTtPPZpB52enkPIs7af6lE7WMwbmebsYqXtMpzzudWb9kyhh1b4kircfDvXzVHb2_s6wJWNUtmKLBLJWTTBL-GbhztEA7bbzsUGi2rggkA__HHWYBZxarOg&adurl=https%3A%2F%2Fwww.nike.com%2F") : eventReportingURL;
									tempURL += "/es_cgName_"+jvx_5da23f8190334.DYReportingKey;
                    if(jvx_5da23f8190334.DYSegmentName != ""){
                        tempURL += "/es_segName_"+jvx_5da23f8190334.DYSegmentName;
                    }
								
								
				eventReportingURL += "/es_encParams_"+ btoa(tempURL);;
				imgEl.src = eventReportingURL;
									},
        
				recordUIREvent:function(eventId, elapsedTime){
			if(this.UIRRecorded){
				return;
			}
			this.recordEvent(eventId, elapsedTime);
			this.UIRRecorded = true;
					},
		recordDwellEvent:function(eventId, elapsedTime){
			var that = this;
			if(this.DwellRecorded){
				return;
			}
			clearTimeout(that.DwellTimer);
			if(elapsedTime > 0){
				var eventRecordParams = "es_et_" + elapsedTime;
				this.recordEvent(eventId, eventRecordParams);
			}
			clearInterval(this.DwellElapsedTimer);
			this.DwellElapsedTimer = null;
			this.DwellElapsedTime = 0;
			this.DwellRecorded = true;
			this.DwellTimer = null;
		},
				                				renderAdUnitContainer:function(){
						
						var cNode = createDivNode(this.adUnitContainerId);
			            												document.write('<div id="jvxScrRefNode_5da23f8190334" style="display:none;"></div>');	
				var jvxPNode = '';
				var jvxNode = getElById("jvxScrRefNode_5da23f8190334");
				pNode = (jvxNode)? (jvxPNode = jvxNode.parentNode) : document.body;
				if(jvxPNode) jvxPNode.removeChild(jvxNode);
																cNode.style.position = "relative";
			cNode.style.margin = "0 auto";
			
											cNode.style.width = this.baseWidth + setPixel(this.baseWidth);
				cNode.style.height = this.baseHeight + setPixel(this.baseHeight);
							
																						document.write('<div id="'+this.adUnitContainerId+'" style="position:relative;width:'+this.baseWidth+setPixel(this.baseWidth)+';height:'+this.baseHeight+setPixel(this.baseHeight)+';cursor:pointer;"></div>');
																							/* bgSkinUnit - align adUnit center portion in viewport */
								},
		        getInsertToNode:function(insertTo){
            var pNode = null;
			insertTo = (insertTo == 'adUnitContainer') ? this.adUnitContainerId : insertTo;
			if(insertTo == 'body'){
                pNode = document.body;
            } 
						else {
				pNode = getElById(insertTo); // get the node by id
				if(!pNode){
					pNode = document.querySelector(insertTo);
				}
				if(!pNode){
					if(getElByClass(insertTo))
						pNode = getElByClass(insertTo)[0]; // get the node by class
				}	
            }
            pNode = (pNode == null) ? document.body : pNode;
            return pNode;
        },
				renderBaseContainer:function(){
            				var insertBaseTo = this.insertBaseTo;
				var pNode = this.getInsertToNode(insertBaseTo); //parent node
				var cNode = createDivNode(this.baseContainerId); //child node
				cNode.style.backgroundColor = this.baseBgColor;
				
				/*Smooth responsive and stretch variables*/
								
												prependNode(cNode, pNode);
												if(insertBaseTo == 'adUnitContainer'){
					cNode.style.position = 'relative';
				} else {
					var box = getBox(getElById(this.adUnitContainerId));
					var t = box.top;
					var l = box.left;
					cNode.style.left = l + "px";
					cNode.style.top = t + "px";
					cNode.style.position = 'absolute';
				}
									},
								renderExpansionContainer:function(){
            var insertExpansionTo = this.insertExpansionTo;
            var pNode = this.getInsertToNode(insertExpansionTo); //parent node
            var cNode = createDivNode(this.expansionContainerId); //child node
			if(insertExpansionTo != "adUnitContainer" && (this.expansionType == "image" || this.expansionType == "flash"))
				cNode.style.cursor = "pointer";
			cNode.style.backgroundColor = this.expansionBgColor;
						cNode.style.zIndex = 1999998;
						if(this.insertExpansionAs == "fc"){
				prependNode(cNode, pNode);
			}else{
				pNode.appendChild(cNode);
			}
					},
				getClosestDim:function(unitArr, pWidth, pHeight){
						// COM: Setting winWidth = adSlotWidth, when there are multiple ad units and bpType='as'
							var winDim = getBrowserWindowProps();
				var currentWinWidth = winDim[0],
					currentWinHeight = winDim[1];
						
			var leastDiff = 10000; 
			var leastWidthDiff = 10000; 
			var	leastHeightDiff = 10000;
			var bestFitBannerDim = '';
			var diffArr = new Array();
			var cdwObj,cdhObj = {};
			var chkDiff = false;
			var smallestDiff = -1; 
			var smallestWidth, smallestDim = null;

			for(var auIndex in unitArr){
				var currentObjKey = unitArr[auIndex]['dimension'],
					specifiedWidthAvl = unitArr[auIndex].hasOwnProperty('specifiedWidth');
					
				var assetWidthVal = (specifiedWidthAvl) ? parseInt(unitArr[auIndex]['specifiedWidth']) :
									parseInt(currentObjKey.split('x')[0]);
								var assetWidth = assetWidthVal;
				var assetHeight = parseInt(currentObjKey.split('x')[1]);
								if(assetWidth == currentWinWidth) {
					leastDiff = 0;
					bestFitBannerDim = currentObjKey;
					break;
				} else if(assetWidth < currentWinWidth && (currentWinWidth - assetWidth) < leastDiff) {
					leastDiff = (currentWinWidth - assetWidth);
					bestFitBannerDim = currentObjKey;
				} 
				if(smallestWidth == null || assetWidth < smallestWidth) {
					smallestWidth = assetWidth;
					smallestDim = currentObjKey;
				}
							}
						if(bestFitBannerDim == '' && smallestDim != null) {
				bestFitBannerDim = smallestDim;
			}
			
			
			return bestFitBannerDim;
		},
				setBaseProperties:function(bestFitDim){
						var bestFitBase = {};
			for(var auIndex in this.responsiveBaseUnitArr) {
				bestFitBase = this.responsiveBaseUnitArr[auIndex];
				if(bestFitBase['dimension'] == bestFitDim)
					break;
			}
			if(bestFitBase) {
				this.baseHasLayout = bestFitBase['hasLayout'];
				this.baseBgType = '';
				this.baseBgURL = '';
				this.baseBgColor = '';
				if(this.baseHasLayout == 1) {
					this.baseType = 'html';
					this.baseURL = 'https://as.jivox.com/unit/layout_renderer.php?creativeUnitType=22&bDim=300x600&bUnitId=2200&siteId=65c616660e0b0a&campaignId=128974&es_pId=63E14k&isDynamic=1&ap_DataSignal1=28226997&ap_DataSignal2=ABAjH0hwY7MwejKj_hpFJdgz3svx&ap_DataSignal3=197232787&ap_DataSignal4=4104757683&jvxVer=2&cMacro=https%3A%2F%2Fgoogleads.g.doubleclick.net%2Fdbm%2Fclk%3Fsa%3DL%26ai%3DCXUSXcz-iXYuKENP_iQP1z7-ADIbLvN9YiM6ciL0Kk62BlJMKEAEg7N-yEWDli_uEvBagAa3Dz5EDyAEJqAMBqgTDAU_QWuMFNUBoYuQi6IBgEIbG45YSosrAYdvZXBM9mIOGo_IYXlR2RvjZIP6_uVumrgRslbxvdhce59IJ_sbJaFPqx25XxLbJuPIajcekRSaSduHzPNBwaiyyRxW-8guzQ-xPT1Izp-sns4F6YrUhm8S99CMLR_BHIaOgSZQLN501uYeWLXssqCaYMygZR1Ar_sm-UaQ6eZVM_A0ryfJcqY1St3a2aQaQcBbTogHIIZ4WWC03UBh8V45YsuTp-rbUq2OH0OAEA5AGAaAGTYAHu7ywbogHAZAHAqgHjs4bqAfVyRuoB8HTG6gHhdQbqAeB1BuoB4LUG6gHhtQbqAeE1BuoB5PYG6gH4NMbqAe6BqgH2csbqAfPzBuoB-zVG6gHpr4bqAfz0RvYBwDSCAYIABACGA2ACgOwE4WTswfQEwDYEw3YFAE%26ae%3D1%26num%3D1%26cid%3DCAMSeQClSFh3OHLJiWICfw6OXVZ73JFo2Nmm3JGWt0GGN8obHVK-Bhen2b0rfCOsPpXlcFFhqnwHj9M1S0w0JP4tBn_NJEP-_nxGWDpUEmHBvgzg81AqfuDxCmOVFYUR2hkeL8GjjBmuOx6HDEQGX82U7lvhRB5OPjsEE9Y%26sig%3DAOD64_27J9GnBbSxXt7tT4uKDNsZaj1Uvw%26client%3Dca-pub-8258389452460729%26dbm_c%3DAKAmf-DXSDesiMgvbQ8Rm908DuHAN4a1oXX2Tve_UtSCEEtLvbK7lEipWU6rA53WebcCxqxjUdBz7QCVM8VssR27JrO1O28gqg%26dbm_d%3DAKAmf-B93LDry1ph1W92Z82sw_r5qYMBGrsrhqjbDg3Chuz-2wV3o9aJm09YL9cw-PkdcmwPy_eLv_KTd9fIhBWr_VMjzi7q13aGKBQDgPLj20eAgqlA1xdn51_3ZkyhoLYudNp4kQZhMEyDix_8_-sAXSIdlS8nCAwtC6FT2FTrZpYoN5i8s8QhSR0P4n7KC3gstRFpvNDBrysIejMcn_RrNGOJMNMOPWBnWtCFyCxjrCCCdeDD67puqrsAp9x5LNT1yezXbH2-Ozn-vfEJArL3OWqYV1Qa4SUIfeGdrgwMwnvG_w5NSUVgIY-boniQNJRJwH4t8-hbAcPtQkmu1oNBWREN_mtxIj3dyy2K5o67JZbXYYfhopL2OXsTg8ARJdCFGSj8n9tNnxOLZ4vj9xyVhlLnMzzT0sPDIBNwARcJTtPPZpB52enkPIs7af6lE7WMwbmebsYqXtMpzzudWb9kyhh1b4kircfDvXzVHb2_s6wJWNUtmKLBLJWTTBL-GbhztEA7bbzsUGi2rggkA__HHWYBZxarOg%26adurl%3D&r=1570914163263435&objectName=jvx_5da23f8190334';
											this.baseURL += '&jvxSessionId=1570914177.5939';
										if(bestFitBase['type'] == 'banner') {
						this.baseURL += '&base=1';
					}
															this.baseURL += '&loadLayout=0';
										this.baseBgType = bestFitBase['backgroundType'];
					this.baseBgURL = bestFitBase['url'];
                    this.baseURL += "&creativeResolveBeginTime="+Date.parse(creativeResolveBeginTime);
                    				} else {
					this.baseType = bestFitBase['backgroundType'];
					this.baseURL = bestFitBase['url'];
				}

				if(bestFitBase['backgroundColor'] != null && bestFitBase['backgroundColor'] != '') {
					this.baseBgColor = bestFitBase['backgroundColor'];
				} else {
					this.baseBgColor = '';
				}
				this.baseFallbackType = bestFitBase['fallbackType'];
				this.baseFallbackURL = bestFitBase['fallbackURL'];		
				this.baseFallbackFileName = bestFitBase['fallbackFileName'];

				//Todo: replace special characters, make sure that widget source is syntactically correct
 				this.baseFallbackWidgetSrc = bestFitBase['fallbackWidgetSrc'];
				
								this.baseWidth = bestFitDim.split('x')[0];
								this.baseHeight = bestFitDim.split('x')[1];
                
                                this.origBaseWidth = bestFitDim.split('x')[0];
                this.origBaseHeight = bestFitDim.split('x')[1];
                
				
								
				/*Smooth responsive and stretch variables*/
					
												this.baseDim = bestFitBase['dimension'];
				
							}
		},
		setExpandProperties:function(bestFitDim){
						var bestFitExpand = {};
			for(var auIndex in this.responsiveExpandUnitArr) {
				bestFitExpand = this.responsiveExpandUnitArr[auIndex];
				if(bestFitExpand['dimension'] == bestFitDim)
					break;
			}
			if(bestFitExpand) {
				this.expansionHasLayout = bestFitExpand['hasLayout'];
				this.expansionType = '';
				this.expansionURL = '';
				this.expansionBgType = '';
				this.expansionBgURL = '';
				this.expansionBgColor = '';
				if(this.expansionHasLayout == 1) {
					this.expansionType = 'html';
										var adUnitIdStr = '';
										this.expansionURL = 'https://as.jivox.com/unit/layout_renderer.php?creativeUnitType=22&bDim=300x600&&siteId=65c616660e0b0a&campaignId=128974&es_pId=63E14k&isDynamic=1&ap_DataSignal1=28226997&ap_DataSignal2=ABAjH0hwY7MwejKj_hpFJdgz3svx&ap_DataSignal3=197232787&ap_DataSignal4=4104757683&jvxVer=2&cMacro=https%3A%2F%2Fgoogleads.g.doubleclick.net%2Fdbm%2Fclk%3Fsa%3DL%26ai%3DCXUSXcz-iXYuKENP_iQP1z7-ADIbLvN9YiM6ciL0Kk62BlJMKEAEg7N-yEWDli_uEvBagAa3Dz5EDyAEJqAMBqgTDAU_QWuMFNUBoYuQi6IBgEIbG45YSosrAYdvZXBM9mIOGo_IYXlR2RvjZIP6_uVumrgRslbxvdhce59IJ_sbJaFPqx25XxLbJuPIajcekRSaSduHzPNBwaiyyRxW-8guzQ-xPT1Izp-sns4F6YrUhm8S99CMLR_BHIaOgSZQLN501uYeWLXssqCaYMygZR1Ar_sm-UaQ6eZVM_A0ryfJcqY1St3a2aQaQcBbTogHIIZ4WWC03UBh8V45YsuTp-rbUq2OH0OAEA5AGAaAGTYAHu7ywbogHAZAHAqgHjs4bqAfVyRuoB8HTG6gHhdQbqAeB1BuoB4LUG6gHhtQbqAeE1BuoB5PYG6gH4NMbqAe6BqgH2csbqAfPzBuoB-zVG6gHpr4bqAfz0RvYBwDSCAYIABACGA2ACgOwE4WTswfQEwDYEw3YFAE%26ae%3D1%26num%3D1%26cid%3DCAMSeQClSFh3OHLJiWICfw6OXVZ73JFo2Nmm3JGWt0GGN8obHVK-Bhen2b0rfCOsPpXlcFFhqnwHj9M1S0w0JP4tBn_NJEP-_nxGWDpUEmHBvgzg81AqfuDxCmOVFYUR2hkeL8GjjBmuOx6HDEQGX82U7lvhRB5OPjsEE9Y%26sig%3DAOD64_27J9GnBbSxXt7tT4uKDNsZaj1Uvw%26client%3Dca-pub-8258389452460729%26dbm_c%3DAKAmf-DXSDesiMgvbQ8Rm908DuHAN4a1oXX2Tve_UtSCEEtLvbK7lEipWU6rA53WebcCxqxjUdBz7QCVM8VssR27JrO1O28gqg%26dbm_d%3DAKAmf-B93LDry1ph1W92Z82sw_r5qYMBGrsrhqjbDg3Chuz-2wV3o9aJm09YL9cw-PkdcmwPy_eLv_KTd9fIhBWr_VMjzi7q13aGKBQDgPLj20eAgqlA1xdn51_3ZkyhoLYudNp4kQZhMEyDix_8_-sAXSIdlS8nCAwtC6FT2FTrZpYoN5i8s8QhSR0P4n7KC3gstRFpvNDBrysIejMcn_RrNGOJMNMOPWBnWtCFyCxjrCCCdeDD67puqrsAp9x5LNT1yezXbH2-Ozn-vfEJArL3OWqYV1Qa4SUIfeGdrgwMwnvG_w5NSUVgIY-boniQNJRJwH4t8-hbAcPtQkmu1oNBWREN_mtxIj3dyy2K5o67JZbXYYfhopL2OXsTg8ARJdCFGSj8n9tNnxOLZ4vj9xyVhlLnMzzT0sPDIBNwARcJTtPPZpB52enkPIs7af6lE7WMwbmebsYqXtMpzzudWb9kyhh1b4kircfDvXzVHb2_s6wJWNUtmKLBLJWTTBL-GbhztEA7bbzsUGi2rggkA__HHWYBZxarOg%26adurl%3D&r=1570914163263435&objectName=jvx_5da23f8190334'+adUnitIdStr;
											this.expansionURL += '&jvxSessionId=1570914177.5939';
										this.expansionBgType = bestFitExpand['backgroundType'];
					this.expansionBgURL = bestFitExpand['url'];
                    				} else {
					this.expansionType = bestFitExpand['backgroundType'];
					this.expansionURL = bestFitExpand['url'];
				}
				
				var expURL = this.expansionURL;
				if(this.baseDim == "" && this.expansionHasLayout == 1){
					expURL = (expURL.indexOf("&fireViewabilityEvent=1") != -1) ? expURL : (expURL + "&fireViewabilityEvent=1");
				} else {
					expURL = (expURL.indexOf("&fireViewabilityEvent=0") != -1) ? expURL : (expURL + "&fireViewabilityEvent=0");
				}
								if(this.baseHasLayout == 1 && this.expansionHasLayout == 1){
					expURL = (expURL.indexOf("&fireCL=0") != -1) ? expURL : (expURL + "&fireCL=0");
				}
								
				if(this.baseHasLayout != 1 && this.expansionHasLayout == 1){
                    expURL = (expURL.indexOf("&creativeResolveBeginTime") != -1) ? expURL : (expURL + "&creativeResolveBeginTime="+Date.parse(creativeResolveBeginTime));
                }
				this.expansionURL = expURL;
				this.expansionBgColor = bestFitExpand['backgroundColor'];
				if(this.expansionBgColor == '' || this.expansionBgColor == null) {
					this.expansionBgColor = 'transparent';
				}

				this.expansionFallbackType = bestFitExpand['fallbackType'];
				this.expansionFallbackURL = bestFitExpand['fallbackURL'];
				this.expansionFallbackFileName = bestFitExpand['fallbackFileName'];

				//Todo: replace special characters, make sure that widget source is syntactically correct
				this.expansionFallbackWidgetSrc = bestFitExpand['fallbackWidgetSrc'];
				this.expansionWidth = bestFitDim.split('x')[0];
				this.expansionHeight = bestFitDim.split('x')[1];
								this.expDim = bestFitExpand['dimension'];
			}
		},
		onAdUnitMouseOver:function(e) {
			var that = this;			
						this.DwellRecorded = false;
			if(null == this.DwellElapsedTimer){
				this.DwellElapsedTimer = setInterval(function(){ ++that.DwellElapsedTime; }, 1000);
			}
			
			if(null == this.DwellTimer){
				var dwellTime = parseInt(60000) + 50; //adding 50ms to make sure setTimeOut is triggered after setInterval.
				this.DwellTimer = setTimeout(function(){that.recordDwellEvent(49, that.DwellElapsedTime); },dwellTime);
			}
			
			if(!this.UIRRecorded){
				this.UIRTimer = setTimeout(function(){that.recordUIREvent(48);},500);
			}
								},

		clickHandler:function(eventSrc){
			if(eventSrc){
				var eventSrcId = eventSrc.id;
				if(eventSrc.parentNode != null)
					var parentId = eventSrc.parentNode.id;
				if(eventSrcId == this.baseId || eventSrcId == this.base2Id){
										this.openClickThrough();
									} else if(eventSrcId == this.baseBgId) {
									} else if(eventSrcId == this.baseInterceptorId || eventSrcId == this.base2InterceptorId){
															this.openClickThrough();
									} else if(eventSrcId == this.expansionId){
											this.openClickThrough();
									} else if(eventSrcId == this.expInterceptorId){
											this.openClickThrough();
									} else if(eventSrcId == this.closeExpansionId){
					this.closeExpansion();
				} else if(eventSrcId == this.baseCloseId) {
					this.closeBase();
				} 
											}
		},
		mouseenterHandler:function(event){
			var eventSrc = event.target || event.srcElement;
			var fromEl = event.fromElement || event.relatedTarget;
			var toEl = event.toElement || event.relatedTarget;
			if(eventSrc){
				var eventSrcId = eventSrc.id;
				if(eventSrcId == this.baseContainerId || eventSrcId == this.baseContainerId+'0' || eventSrcId == this.countDownContainerId || eventSrcId == this.expansionContainerId || eventSrcId == this.closeExpansionId){
										var frmElId = (fromEl) ? fromEl.id : "";
					if(frmElId != this.expansionContainerId && frmElId != this.expansionId && frmElId != this.closeExpansionId
					 && frmElId != this.expInterceptorId && frmElId != this.expansionLoaderId){
						
						if(eventSrcId == this.baseContainerId || eventSrcId == this.baseContainerId+'0'){
							this.onBaseMouseOver();
						}
						if(this.expansionOpen){
							if(frmElId != this.baseContainerId && frmElId != this.baseContainerId+'0' && frmElId != this.baseId 
							 && frmElId != this.baseInterceptorId){
																this.onAdUnitMouseOver();
															}
						}else{
														this.onAdUnitMouseOver();
													}
					}
										
										this.allowExpToExpand = false;
									}
			}	
		},
		mouseleaveHandler:function(event){
			var eventSrc = event.target || event.srcElement;
						var fromEl = event.fromElement || event.relatedTarget;
						var toEl = event.toElement || event.relatedTarget;
			if(eventSrc){
				var eventSrcId = (eventSrc.id) ? eventSrc.id : "";
				if(eventSrcId == this.baseContainerId || eventSrcId == this.baseContainerId+'0' || eventSrcId == this.countDownContainerId || eventSrcId == this.expansionContainerId || eventSrcId == this.closeExpansionId){
				 
					var frmElId = (fromEl) ? fromEl.id : "";
					var toElId = (toEl) ? ((toEl.id) ? toEl.id : "") : "";
										if(eventSrcId == this.baseContainerId || eventSrcId == this.baseContainerId+'0'){
						this.onBaseMouseOut();
					}
										if((frmElId == this.expansionContainerId || frmElId == this.expansionId || frmElId == this.closeExpansionId 
					 || frmElId == this.expInterceptorId || frmElId == this.expansionLoaderId) && (toElId != this.baseContainerId && toElId != this.baseContainerId+'0' && toElId != this.baseId && toElId != this.baseInterceptorId)){
					 
												this.onAdUnitMouseOut();
											}else if((frmElId == this.baseContainerId || frmElId == this.baseContainerId+'0' || frmElId == this.baseId 
					 || frmElId == this.baseInterceptorId) && (toElId != this.expansionContainerId && toElId != this.expansionId && toElId != this.closeExpansionId && toElId != this.expansionLoaderId && toElId != this.expInterceptorId)){
						
												this.onAdUnitMouseOut();
											}
										
										this.allowExpToExpand = true;	// allows expansion to expand - tells whether the mouseout on adUnit happened really. #M-4891.
									}
			}
		},
		visibilityStateHandler:function(){
			if(document.visibilityState == "hidden"){
				// hasHidden = true;
			}else{
							}
		},
		onWindowResize:function(){
						if(this.leaveBehindOnVpOut && !this.isAdInOriginalState){		
			this.leaveBehindTheAd(this.leaveBehindOnVpOut,this.leaveBehindScalePer,this.leaveBehindXVal,this.leaveBehindYVal,'','1',true);
		}
																			        		},
		eventController:function(event){
			var eventSrc = event.target || event.srcElement;
			var eventType = event.type;
			if(eventType == 'click'){
				this.clickHandler(eventSrc);
			} 
						else if(eventType == 'resize'){
				this.onWindowResize();
			} else if(eventType == 'orientationchange'){
				this.onWindowResize();
			} else if(eventType == 'visibilitychange'){
				this.visibilityStateHandler();
			} else if(eventType == 'mouseenter'){
				this.mouseenterHandler(event);
			} else if(eventType == 'mouseleave'){
				this.mouseleaveHandler(event);
			}
					},
		delegateEvents:function(){
			var that = this;
						addEvent(getElById(this.baseContainerId), "mouseenter", that.listenerCallback, false);
			addEvent(getElById(this.baseContainerId), "mouseleave", that.listenerCallback, false);
							
														
			addEvent(document, "click", that.listenerCallback, false);
			addEvent(window, "resize", that.listenerCallback, false);
			addEvent(window, "orientationchange", that.listenerCallback, false);
						var browserName = this.browserName;
			if((browserName == 'Safari') || (browserName == 'iPhone') || (browserName == 'iPod') || (browserName == 'iPad')){
				addEvent(document, "visibilitychange", that.listenerCallback, false);
			}
		},
		listenerCallback:function(event) {
			jvx_5da23f8190334.eventController(event); 
		},
        removeEvents:function(){
			var that = this;
			var elArr = [{"el":window,"eventTypeArr":["resize","orientationchange","load"]},
						 {"el":document,"eventTypeArr":["click","mouseover","mouseout","visibilitychange"]}];
			var elLen = elArr.length;
            for(var i = 0;i < elLen;i++){
            	var eventLen = elArr[i]["eventTypeArr"].length;
				for(var j = 0;j < eventLen;j++){
					removeEvent(elArr[i]["el"],elArr[i]["eventTypeArr"][j],that.listenerCallback, false);
				}
			}
		},
                        onBaseReady:function(){
                                    if(this.baseHasLayout == 1 && this.baseURL){
                this.renderBase();
            }
                                },
                isLayoutURLReady:function(){
			        },
		getElById:function(id){
			return getElById(id);
		},
		createDivNode:function(id){
			return createDivNode(id);
		},
		appendNode:function(parentNode, childNode){
            return parentNode.appendChild(childNode);
		},
		addEvent:function(el, event, fn, capture){
            return addEvent(el, event, fn, capture);
		},
		autoExpand:function(){
                        this.openExpansion(true);
                        var self = this;
            this.autoExpandTimerRef = setTimeout(function(){self.closeExpansion(true);},7 * 1000);
                    },
                        queryStringToJSON:function(url) {
            if(!url || url.indexOf("?") == -1) return false;
            var queryString = url.split("?")[1];
            var pairs = queryString.split('&');        
            var result = {};
            pairs.forEach(function(pair) {
                pair = pair.split('=');
                result[pair[0]] = (pair[1] || '');
            });
                        return JSON.parse(JSON.stringify(result));
        },
                jsonToQueryString:function(obj){
            var str = "";
            for (var key in obj) {
              if (obj.hasOwnProperty(key)) {
                var val = obj[key];
                str += "&" + key + "=" + val;
              }
            }
                        return str.slice(1);
        },
                updateURLWithCJSData : function(qsJson,updateQs,base){
                        qsJson = jvxCopyObject(qsJson,updateQs);
            qsStr = this.jsonToQueryString(qsJson);
            if(base){
                this.baseURL = this.baseURL.split("?")[0] + "?" + qsStr;
            } else {
                this.expansionURL = this.expansionURL.split("?")[0] + "?" + qsStr;
            } 
        },
                jvxCallback: function(updateQs){
            var baseQsJson = this.baseURL ? this.queryStringToJSON(this.baseURL) : "";
            var expQsJson = this.expansionURL ? this.queryStringToJSON(this.expansionURL) : "";
            if(this.baseHasLayout == 1 && this.baseURL && baseQsJson) {
                this.updateURLWithCJSData(baseQsJson,updateQs,1);
            }
            if(this.expansionHasLayout == 1 && this.expansionURL && expQsJson){
                this.updateURLWithCJSData(expQsJson,updateQs,0);
            }
            this.onBaseReady();
        },
                
                        
                		init:function(){
						
						
						this.renderAdUnitContainer(); 
			            			            this.renderBaseContainer();
			
			
											this.renderBase();
                                								
			
			
						
						
												
		/*	
					*/	
								//	console.log("Load exp");
			
			 

			 
			
			
 			this.delegateEvents();
																		
													var visibilityThreshold = this.origBaseWidth * this.origBaseHeight > 242500 ? 0.3 : 0.5;
				if(!validateVal(this.baseHasLayout) || (this.baseDim == "" && !validateVal(this.expansionHasLayout)))
				adViewabilityDetectInit(visibilityThreshold);
					}
	};
	return CreativeUnit;
})();


var jvx_5da23f8190334 = new CreativeUnit("_5da23f8190334");
jvx_5da23f8190334.DYReportingKey = "";
jvx_5da23f8190334.DYSegmentName = "";
    jvx_5da23f8190334.init();

(function(jvxObject){
    	var playerParamsMap = jvxObject.playerParamsMap;
    var jvxCallback = function(updateQs,criteoCallback){
        		var modifiedApParams = {};
		if(!criteoCallback){
			jvxObject.cJsExecuted = 1;	
		}
        if(updateQs){
                        for (var key in updateQs) {
              if (updateQs.hasOwnProperty(key)) {
                if(key.indexOf("ap_") == 0){
                    modifiedApParams[key] = updateQs[key];
                }
              }
            }
                        jvxObject.jvxCallback(modifiedApParams);
            var apParamsAll = jvxObject.apParamsArr;
                        apParamsAll = jvxCopyObject(apParamsAll,modifiedApParams);
                        for (var key in apParamsAll) {
              if (apParamsAll.hasOwnProperty(key)) {
                jvxObject.apParamsInEventFormat += "/" + key + "_" + apParamsAll[key]; 
              }
            }
        }
    };
	jvxObject.cJsExecuted = 0;
    // --the json format "jvxCallback" function accepts --- {param1:value1,param2:value2,param3:value3.....}
// --jvxCallback will internally takes care of rendering the layout by updating parameter 
var geoVal, geoRt, baseLang;

	window["myDisplayFunction"] = myDisplayFunction;	
	function myDisplayFunction(myObj) {
		//console.log("val_my",geoVal);
		geoVal = myObj['geo:geo.country'];
		//console.log("val_my",geoVal);
		callPlatformFn();
		return geoVal;
		//getDataResponse(geoVal);
	}
	
	var s = document.createElement("script");
	s.src = "https://traffick.jivox.com/jivox/serverAPIs/resolveDynamicData.php?var=geo:geo.country&callback=myDisplayFunction";
	document.body.appendChild(s);

function callPlatformFn(){
	//console.log("geoVal1",geoVal);
	function getDataResponse(geoData){
	
		//Deducting user geo
		switch(geoData){
			case 'united kingdom':
				geoRt = 'united kingdom',
				baseLang = 'english';
			break;
			case 'germany':
				geoRt = 'germany',
				baseLang = 'german';
			break;
			case 'france':
				geoRt = 'france',
				baseLang = 'french';
			break;
			case 'italy':
				geoRt = 'italy',
				baseLang = 'italian';
			break;
			case 'spain':
				geoRt = 'spain',
				baseLang = 'spanish';
			break;
			case 'netherlands':
				var geoRt = 'netherlands',
				baseLang = 'dutch';
			break;
			case 'canada':
				geoRt = 'canada',
				baseLang = 'english';
			break;
			case 'australia':
				geoRt = 'australia',
				baseLang = 'english';
			break;
			case 'poland':
				geoRt = 'poland',
				baseLang = 'polish';
			break;
			case 'belgium':
				geoRt = 'belgium',
				baseLang = 'dutch';
			break;
			case 'sweden':
				geoRt = 'sweden',
				baseLang = 'swedish';
			break;
			case 'russia':
				geoRt = 'russia',
				baseLang = 'russian';
			break;
			case 'chile':
				geoRt = 'chile',
				baseLang = 'spanish';
			break;
			case 'mexico':
				geoRt = 'mexico',
				baseLang = 'spanish';
			break;
			case 'denmark':
				geoRt = 'denmark',
				baseLang = 'danish';
			break;
			case 'hungary':
				geoRt = 'hungary',
				baseLang = 'hungarian';
			break;
			case 'ireland':
				geoRt = 'ireland',
				baseLang = 'english';
			break;
			case 'switzerland':
				geoRt = 'switzerland',
				baseLang = 'german';
			break;
			case 'new zealand':
				geoRt = 'new zealand',
				baseLang = 'english';
			break;
			case 'norway':
				geoRt = 'norway',
				baseLang = 'norwegian';
			break;
			case 'romania':
				geoRt = 'romania',
				baseLang = 'english';
			break;
			case 'south africa':
				geoRt = 'south africa',
				baseLang = 'english';
			break;
			case 'austria':
				geoRt = 'austria',
				baseLang = 'german';
			break;
			case 'portugal':
				geoRt = 'portugal',
				baseLang = 'portuguese';
			break;
			case 'czechia':
				geoRt = 'czech republic',
				baseLang = 'czech';
			break;
			case 'finland':
				geoRt = 'finland',
				baseLang = 'english';
			break;
			case 'luxembourg':
				geoRt = 'luxembourg',
				baseLang = 'french';
			break;
			case 'slovenia':
				geoRt = 'slovenia',
				baseLang = 'english';
			break;
			case 'bulgaria':
				geoRt = 'bulgaria',
				baseLang = 'english';
			break;
			case 'croatia':
				geoRt = 'croatia',
				baseLang = 'english';
			break;
			case 'egypt':
				geoRt = 'egypt',
				baseLang = 'english';
			break;
			case 'morocco':
				geoRt = 'morocco',
				baseLang = 'french';
			break;
			case 'puerto rico':
				geoRt = 'puerto rico',
				baseLang = 'spanish';
			break;
			case 'saudi arabia':
				geoRt = 'saudi arabia',
				baseLang = 'english';
			break;
			case 'slovakia':
				geoRt = 'slovakia',
				baseLang = 'english';
			break;
			case 'united arab emirates':
				geoRt = 'united arab emirates',
				baseLang = 'english';
			break;
			case 'israel':
				geoRt = 'israel',
				baseLang = 'english';
			break;
			case 'turkey':
				geoRt = 'turkey',
				baseLang = 'turkish';
			break;
			case 'greece':
				geoRt = 'greece',
				baseLang = 'greek';
			break;
			default:
				geoRt = 'NA',
				baseLang = 'NA';
		}
		//console.log("geo",geoRt);
	
		function detectIE() {
			var ua = window.navigator.userAgent;

			var msie = ua.indexOf('MSIE ');
			if (msie > 0) {
				// IE 10 or older => return version number
				return parseInt(ua.substring(msie + 5, ua.indexOf('.', msie)), 10);
			}

			var trident = ua.indexOf('Trident/');
			if (trident > 0) {
				// IE 11 => return version number
				var rv = ua.indexOf('rv:');
				return parseInt(ua.substring(rv + 3, ua.indexOf('.', rv)), 10);
			}

			var edge = ua.indexOf('Edge/');
			if (edge > 0) {
			   // Edge (IE 12+) => return version number
			   return parseInt(ua.substring(edge + 5, ua.indexOf('.', edge)), 10);
			}

			// other browser
			return false;
		}
		if(detectIE()){//If IE
			//console.log("Languages :", window.navigator.language);
			var bwrLanguages = window.navigator.language;
			var bwrLanguagesx = bwrLanguages.split(',');
		}else{
			// If Not IE
			//console.log("Languages :", window.navigator.languages);
			var bwrLanguages = window.navigator.languages;
			var bwrLanguagesx = bwrLanguages.join(',').split(',');
		}		
	
		var bwrLang;
		//console.log('languages : ', bwrLanguages, typeof bwrLanguages);
		bwrLanguagesReserve = bwrLanguagesx.reverse()
		bwrLanguagesReserve.forEach(function(element) {
			//console.log(element);
			switch(element) {
				case "en-US":
				case "en-AU":
				case "en-CA":
				case "en":
				case "en-IN":
				case "en-NZ":
				case "en-ZA":
				case "en-GB":
					bwrLang = "english";
					break;
				case "nl":
					bwrLang = "dutch";
					break;
				case "de":
				case "de-AT":
				case "de-DE":
				case "de-LI":
				case "de-CH":
					bwrLang = "german";
					break;
				case "es":
				case "es-AR":
				case "es-CL":
				case "es-CO":
				case "es-CR":
				case "es-HN":
				case "es-419":
				case "es-MX":
				case "es-PE":
				case "es-ES":
				case "es-US":
				case "es-UY":
				case "es-VE":
					bwrLang = "spanish";
					break;
				case "da":
					bwrLang = "danish";
					break;
				case "el":
					bwrLang = "greek";
					break;
				case "hu":
					bwrLang = "hungarian";
					break;
				case "it-CH":
				case "it-IT":
				case "it":
					bwrLang = "italian";
					break;
				case "fr":
				case "fr-CA":
				case "fr-FR":
				case "fr-CH":
					bwrLang = "french";
					break;
				case "nb":
				case "nn":
					bwrLang = "norwegian";
					break;
				case "pl":
					bwrLang = "polish";
					break;
				case "ru":
					bwrLang = "russian";
					break;
				case "ca":
					bwrLang = "catalan";
					break;
				case "sv":
					bwrLang = "swedish";
					break;
				case "tr":
					bwrLang = "turkish";
					break;
				case "cs":
					bwrLang = "czech";
					break;
				case "pt":
				case "pt-BR":
				case "pt-PT":
					bwrLang = "portuguese";
					break;
				default:
					bwrLang = "NA";
			}//end of language switch case.  
	
		});
		
		//console.log('bwrLangx :', bwrLang, typeof bwrLang);

		//console.log("geoRt :" ,geoRt);
		
		if((geoRt == "switzerland") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "switzerland") && (bwrLang == "french")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "switzerland") && (bwrLang == "german")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "switzerland") && (bwrLang == "italian")){
			var geoLang = geoRt+"_"+bwrLang;
		}		else if((geoRt == "spain") && (bwrLang == "spanish")){ 
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "spain") && (bwrLang == "catalan")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "belgium") && (bwrLang == "french")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "belgium") && (bwrLang == "german")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "belgium") && (bwrLang == "dutch")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "czech republic") && (bwrLang == "czech")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "czech republic") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "luxembourg") && (bwrLang == "french")) {
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "luxembourg") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "luxembourg") && (bwrLang == "german")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "united kingdom") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "germany") && (bwrLang == "german")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "france") && (bwrLang == "french")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "italy") && (bwrLang == "italian")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "netherlands") && (bwrLang == "dutch")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "canada") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "australia") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "poland") && (bwrLang == "polish")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "sweden") && (bwrLang == "swedish")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "russia") && (bwrLang == "russian")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "chile") && (bwrLang == "spanish")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "denmark") && (bwrLang == "danish")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "mexico") && (bwrLang == "spanish")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "hungary") && (bwrLang == "hungarian")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "ireland") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "new zealand") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "norway") && (bwrLang == "norwegian")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "romania") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "south africa") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "austria") && (bwrLang == "german")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "portugal") && (bwrLang == "portuguese")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "finland") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "slovenia") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "bulgaria") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "croatia") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "egypt") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "morocco") && (bwrLang == "french")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "puerto rico") && (bwrLang == "spanish")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "saudi arabia") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "slovakia") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "united arab emirates") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "israel") && (bwrLang == "english")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "turkey") && (bwrLang == "turkish")){
			var geoLang = geoRt+"_"+bwrLang;
		}else if((geoRt == "greece") && (bwrLang == "greek")){
			var geoLang = geoRt+"_"+bwrLang;
		}else{
			var geoLang = geoRt + "_"+baseLang;
		}
		if(geoRt == "NA"){
			var geoLang = "NA_NA";
		}

		// if(bwrLang !== "NA" && geoRt !== "NA"){
			// var geoLang = geoRt+"_"+bwrLang;
		// }else if(geoRt !== "NA" && bwrLang == "NA"){
			// var geoLang = geoRt + "_"+baseLang;
		// }else{	
			// var geoLang = "NA_NA";
		// }

		//console.log('geoLangPreProcessing : ', geoLang, playerParamsMap);
		return geoLang;
	
	}//End of getDataResponse
	//console.log("geoVal2",geoVal);
	
	var audienceID = {
		1234:"648949241",
		1235:"651916932",
		22267537:"615855579",
		22267545:"615855720",
		22267546:"613816255",
		22267547:"648942422",
		22267566:"649562446",
		22267567:"649562680",
		22267568:"648949241",
		22267569:"651916932",
		22267570:"651917136",
		22267571:"649569721",
		22267572:"613816324",
		22267573:"613816327",
		22267574:"613753325",
		22267575:"613753793",
		22267576:"615869190",
		22267577:"613842961",
		22270483:"615855579",
		22270484:"615855720",
		22270485:"613816255",
		22270486:"648942422",
		22270487:"649562446",
		22270488:"649562680",
		22270489:"648949241",
		22270490:"651916932",
		22270491:"651917136",
		22270492:"649569721",
		22270493:"613816324",
		22270494:"613816327",
		22270495:"613753325",
		22270496:"613753793",
		22270497:"615869190",
		22270498:"613842961",
		22270499:"615855579",
		22270500:"615855720",
		22270501:"613816255",
		22270502:"648942422",
		22270503:"649562446",
		22270504:"649562680",
		22270505:"648949241",
		22270506:"651916932",
		22270507:"651917136",
		22270508:"649569721",
		22270509:"613816324",
		22270510:"613816327",
		22270511:"613753325",
		22270512:"613753793",
		22270513:"615869190",
		22270514:"613842961",
		22270517:"649569721",
		22270518:"649569721",
		22270519:"649569721",
		22270520:"651917136",
		22270521:"651917136",
		22270522:"651917136",
		22270523:"651916932",
		22270524:"651916932",
		22270525:"651916932",
		22270526:"648949241",
		22270527:"648949241",
		22270528:"648949241",
		22270529:"613842961",
		22270530:"613842961",
		22270531:"613842961",
		22270532:"615869190",
		22270533:"615869190",
		22270534:"615869190",
		22270535:"613753793",
		22270536:"613753793",
		22270537:"613753793",
		22270538:"613816255",
		22270539:"613816255",
		22270540:"613816255",
		22270541:"615855720",
		22270542:"615855720",
		22270543:"615855720",
		22270544:"615855579",
		22270545:"615855579",
		22270546:"615855579",
		22270547:"649562446",
		22270548:"649562446",
		22270549:"649562446",
		22270550:"648942422",
		22270551:"648942422",
		22270552:"648942422",
		22270553:"613816327",
		22270554:"613816327",
		22270555:"613816327",
		22270556:"613816324",
		22270557:"613816324",
		22270558:"613816324",
		22270559:"613753325",
		22270560:"613753325",
		22270561:"613753325",
		22270562:"649562680",
		22270563:"649562680",
		22270564:"649562680",
		22270574:"649569721",
		22270575:"649569721",
		22270576:"649569721",
		22270577:"651917136",
		22270578:"651917136",
		22270579:"651917136",
		22271980:"651916932",
		22271981:"651916932",
		22271982:"651916932",
		22271983:"648949241",
		22271984:"648949241",
		22271985:"648949241",
		22271986:"613842961",
		22271987:"613842961",
		22271988:"613842961",
		22271989:"615869190",
		22271990:"615869190",
		22271991:"615869190",
		22271992:"613753793",
		22271993:"613753793",
		22271994:"613753793",
		22271995:"613816255",
		22271996:"613816255",
		22271997:"613816255",
		22271998:"615855720",
		22271999:"615855720",
		22272000:"615855720",
		22272001:"615855579",
		22272002:"615855579",
		22272003:"615855579",
		22272004:"649562446",
		22272005:"649562446",
		22272006:"649562446",
		22272007:"648942422",
		22272008:"648942422",
		22272009:"648942422",
		22272010:"613816327",
		22272011:"613816327",
		22272012:"613816327",
		22272013:"613816324",
		22272014:"613816324",
		22272015:"613816324",
		22272016:"613753325",
		22272017:"613753325",
		22272018:"613753325",
		22272019:"649562680",
		22272020:"649562680",
		22272021:"649562680",
		22485755:"651917136",
		22485756:"181490809",
		22485757:"613753793",
		22485758:"615855579",
		22485763:"183117409",
		22485764:"613753325",
		22485765:"649562680",
		22485766:"649569721",
		22485767:"649569721",
		22485768:"649569721",
		22485769:"651917136",
		22485770:"651917136",
		22485771:"651917136",
		22485772:"651916932",
		22485773:"651916932",
		22485774:"651916932",
		22485775:"648949241",
		22485776:"648949241",
		22485777:"648949241",
		22485778:"613842961",
		22485779:"613842961",
		22487880:"613842961",
		22487881:"615869190",
		22487882:"615869190",
		22487883:"615869190",
		22487884:"613753793",
		22487885:"613753793",
		22487886:"613753793",
		22487887:"613816255",
		22487888:"613816255",
		22487889:"613816255",
		22487890:"615855720",
		22487891:"615855720",
		22487892:"615855720",
		22487893:"615855579",
		22487894:"615855579",
		22487895:"615855579",
		22487900:"649562446",
		22487901:"649562446",
		22487902:"649562446",
		22487903:"648942422",
		22487904:"648942422",
		22487905:"648942422",
		22487906:"613816327",
		22487907:"613816327",
		22487908:"613816327",
		22487909:"613816324",
		22487910:"613816324",
		22487911:"613816324",
		22487912:"613753325",
		22487913:"613753325",
		22487914:"613753325",
		22487915:"649562680",
		22487916:"649562680",
		22487917:"649562680",
		23988270:"172846969",
		23988271:"172846969",
		23988272:"172846969",
		23992206:"172846969",
		23992207:"172846969",
		23992208:"172846969",
		23992209:"172846969",
		23992210:"172846969",
		24078337:"245899369",
		24078338:"245899369",
		24078339:"245899369",
		24078340:"245899369",
		24078341:"245899369",
		24078342:"245899369",
		24078343:"245899369",
		24078344:"245899369",
		24078345:"259539049",
		24078346:"259539049",
		24078347:"259539049",
		24078348:"259539049",
		24078349:"259539049",
		24078350:"259539049",
		24078351:"259539049",
		24078352:"259539049",
		23988818:"172846969",
		23988819:"172846969",
		23988820:"172846969",
		23992193:"172846969",
		23992202:"172846969",
		23992203:"172846969",
		23992204:"172846969",
		23992205:"172846969",
		24101009:"245899369",
		24101010:"245899369",
		24101011:"245899369",
		24101012:"245899369",
		24101013:"245899369",
		24101014:"245899369",
		24101015:"245899369",
		24101016:"245899369",
		24101022:"259539049",
		24101023:"259539049",
		24101024:"259539049",
		24101025:"259539049",
		24101026:"259539049",
		24101027:"259539049",
		24101028:"259539049",
		24101029:"259539049",
		28220556:"245899369",
		28220557:"245899369",
		28220560:"245899369",
		28220561:"245899369",
		28221015:"245899369",
		28221018:"245899369",
		28221019:"245899369",
		28221022:"245899369",
		28223568:"245899369",
		28223573:"245899369",
		28223576:"245899369",
		28223579:"245899369",
		28226982:"245899369",
		28226985:"245899369",
		28220563:"259539049",
		28220564:"259539049",
		28220566:"259539049",
		28220570:"259539049",
		28221025:"259539049",
		28221027:"259539049",
		28221028:"259539049",
		28221029:"259539049",
		28223569:"259539049",
		28223571:"259539049",
		28223574:"259539049",
		28223577:"259539049",
		28226980:"259539049",
		28226983:"259539049",
		28220549:"172846969",
		28220551:"172846969",
		28220553:"172846969",
		28220554:"172846969",
		28221007:"172846969",
		28221008:"172846969",
		28221010:"172846969",
		28221012:"172846969",
		28223570:"172846969",
		28223572:"172846969",
		28223575:"172846969",
		28223578:"172846969",
		28226981:"172846969",
		28226984:"172846969"
	};
	var converterID = {
		26964030:"26964030",
		26964031:"26964031",
		26964022:"26964022",
		26964023:"26964023",
		28227002:"28227002",
		28227004:"28227004",
		28220571:"28220571",
		28220572:"28220572"
	};
	var bestsellerID = {
		27813739:"bestseller",
		27813746:"bestseller",
		28219778:"bestseller",
		28220273:"bestseller",
		28220274:"bestseller",
		28220278:"bestseller",
		28220279:"bestseller",
		28220481:"bestseller",
		28220485:"bestseller",
		28220486:"bestseller",
		28220488:"bestseller",
		28220489:"bestseller",
		28220490:"bestseller",
		28220497:"bestseller",
		28220498:"bestseller",
		28220499:"bestseller",
		28220502:"bestseller",
		28220510:"bestseller",
		28220512:"bestseller",
		28220937:"bestseller",
		28220938:"bestseller",
		28220942:"bestseller",
		28220949:"bestseller",
		28220962:"bestseller",
		28220963:"bestseller",
		28220967:"bestseller",
		28220978:"bestseller",
		28220979:"bestseller",
		28223562:"bestseller",
		28223563:"bestseller",
		28223564:"bestseller",
		28223565:"bestseller",
		28223566:"bestseller",
		28223567:"bestseller",
		28226986:"bestseller",
		28226987:"bestseller",
		28226988:"bestseller",
		28226989:"bestseller",
		28226990:"bestseller",
		28226991:"bestseller",
		28226992:"bestseller",
		28226993:"bestseller",
		28226994:"bestseller",
		28227006:"bestseller",
		28227007:"bestseller",
		28227008:"bestseller",
		28227009:"bestseller",
		28227010:"bestseller",
		28227011:"bestseller",
		28227012:"bestseller",
		28227013:"bestseller"
	};
	var DS1 = playerParamsMap.ap_DataSignal1;
	var jvxQueryString = {"ap_geoLang" : getDataResponse(geoVal), "ap_DataSignal7" : getDataResponse(geoVal) , "ap_DataSignal6" : audienceID[DS1], "ap_DataSignal8" : converterID[DS1], "ap_bestsellerID" : bestsellerID[DS1]};
	jvxCallback(jvxQueryString);
}    
    })(jvx_5da23f8190334);

/*! srcdoc-polyfill - v0.1.1 - 2013-03-01
* http://github.com/jugglinmike/srcdoc-polyfill/
* Copyright (c) 2013 Mike Pennisi; Licensed MIT */
(function(t,e){var c,n,o=t.srcDoc,r=!!("srcdoc"in e.createElement("iframe")),i={compliant:function(t,e){e&&t.setAttribute("srcdoc",e)},legacy:function(t,e){var c;t&&t.getAttribute&&(e?t.setAttribute("srcdoc",e):e=t.getAttribute("srcdoc"),e&&(c="javascript: window.frameElement.getAttribute('srcdoc');",t.setAttribute("src",c),t.contentWindow&&(t.contentWindow.location=c)))}},s=t.srcDoc={set:i.compliant,noConflict:function(){return t.srcDoc=o,s}};if(!r)for(s.set=i.legacy,n=e.getElementsByTagName("iframe"),c=n.length;c--;)s.set(n[c])})(this,this.document);

}

/* Jivox � 2019 */
