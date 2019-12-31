// NOTE: Elements must have explicit width and height set
// NOTE: Global line-heights will break this as their inherintence will override e.g. div{line-height:2}
// NOTE: Make sure the element you are resizing has line-height set as a unitless number e.g. {line-height:1.2}

// IDEA - MAKE IT WORK WITH PADDING AND MARGIN NOT ZERO
// IDEA - ADD MINIMUM FONT SIZE (FOR LEGALS)
// IDEA - ADD //console WARNING MESSAGE FOR WHEN WIDTH AND HEIGHT AREN'T SET
// IDEA - WARNING OF LINE-HEIGHT TO BE UNITLESS TO AVOID ABOVE ISSUES
// IDEA - DEBUG MODE THAT //consoleS OUT WHAT FONT IS USED TO CHECK COMMON FONT LOADING ERRORS ETC

function shrinkr(e, vertCentre, noWidows){
    
    /////////////////////////////////////
    // REMOVE WIDOWS
    /////////////////////////////////////
    
    // remove widows by putting a non-breaking space between the last two words
    if (noWidows) e.innerHTML = e.innerHTML.replace(/ ([^ ]*)$/,'&nbsp;$1');
    
    
    /////////////////////////////////////
    // SETUP VARIABLES
    /////////////////////////////////////

    var ofs = parseInt(window.getComputedStyle(e, null).getPropertyValue('font-size'));
    var efs = ofs;

    // Corrects measurements to include padding    
    var vPad=0;
    var hPad=0;
    
    if((window.getComputedStyle(e, null).getPropertyValue('box-sizing')) == "content-box"){
        vPad = parseInt(window.getComputedStyle(e, null).getPropertyValue('padding-top')) + parseInt(window.getComputedStyle(e, null).getPropertyValue('padding-bottom'));
        hPad = parseInt(window.getComputedStyle(e, null).getPropertyValue('padding-left')) + parseInt(window.getComputedStyle(e, null).getPropertyValue('padding-right'));
    }

    // get width
    var maxWidth = e.clientWidth - hPad;    // no -1 as breaks the resize loop
    
    // get height
    var maxHeight = parseInt(window.getComputedStyle(e, null).getPropertyValue('max-height')) - 1;    // -1 stops rounding errors    

    if(isNaN(maxHeight)){
        maxHeight = e.clientHeight - 1;     // -1 stops rounding errors
    }
    
    maxHeight -= vPad;
    

    /////////////////////////////////////
    // RESIZE CHECK
    /////////////////////////////////////

    //Resize function
    var b = document.createElement("div");
    b.innerHTML = e.innerHTML;
    e.appendChild(b);   

    b.style.position = "absolute";
    b.style.margin = "0px";
    b.style.padding = "0px";
    b.style.visibility = "hidden";
    b.style.fontFamily = "inherit";
    b.style.lineHeight = "inherit";
    b.style.fontSize = efs +"px";

    while (b.clientHeight > maxHeight || b.clientWidth > maxWidth){
        if (efs === 0) break;
        efs--;
        b.style.fontSize = efs + "px";
        e.style.fontSize = efs + "px";
    }

    e.removeChild(b);
    
    
    /////////////////////////////////////
    // VERTICAL CENTRE
    /////////////////////////////////////
    
    // only works if element is inside containing div with specified height
    if (vertCentre) {
        e.style.height = 'auto';
        e.style.top = '50%';
        e.style.bottom = 'auto';                // *** NEW ***
        e.style.webkitTransform = 'translate(0, -50%)';
        e.style.mozTransform = 'translate(0, -50%)';
        e.style.msTransform = 'translate(0, -50%)';
        e.style.oTransform = 'translate(0, -50%)';
        e.style.transform = 'translate(0, -50%)';
    }
    
}