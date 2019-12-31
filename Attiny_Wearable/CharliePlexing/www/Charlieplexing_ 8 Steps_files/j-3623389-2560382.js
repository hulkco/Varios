//Generated:2019-06-04 21:43:29
// 6-232
(function(){
    var o = {
    $: function(el) {
        var x = el || o.divID, p = {
            o: o
        };
        p.y = typeof x === 'string' ? o.w.document.getElementById(x) : x;
        return new o.$Base(p);
    },
    $Base: function(p) {
        var $o = this;
        this.$ = true;
        this.o = p.o;
        p.y = p.y || {};
        this.target = p.y.$ ? p.y.target : p.y;
        this.style = p.y.style || {};
        this.parent = function() {
            if ($o.target.parentNode && $o.target.parentNode !== p.o.w.document) {
                return p.o.$($o.target.parentNode);
            } else {
                return $o;
            }
        };
        this.hash = function() {
            return 1;
        };
        this.alignTo = function(ob) {
            if (ob.$ && ob.target) {
                ob = ob.target;
            }
            p.y.style.left = p.o.$(ob).x() + 'px';
            p.y.style.top = p.o.$(ob).y() + 'px';
            return $o;
        };
        this.x = function() {
            return p.o.getAbsLeft(this.target);
        };
        this.y = function() {
            return p.o.getAbsTop(this.target);
        };
        this.getStyle = function(style) {
            var x = window.getComputedStyle ? window.getComputedStyle($o.target, '') : $o.target.currentStyle;
            if (x != null) {
                try {
                    return x[style];
                } catch (e) {
                    return 'auto';
                }
            } else {
                return x;
            }
        };
    },
    addEventListener: function(type, func) {
        if (typeof o.eventListeners[type] === 'undefined') {
            o.eventListeners[type] = [];
        }
        if (typeof func === 'function') {
            o.eventListeners[type].unshift(func);
        }
        if (type === 'adonpage' && o.adDisplayed || type === 'adready' && o.adReady) {
            func.call(o);
        }
    },
    addVClick: function(ct) {
        var pubClick = o.decode(o.qs('click', ''));
        var encodeCount = o.encodeClickCount;
        if (encodeCount && pubClick) {
            while (encodeCount--) {
                ct = encodeURIComponent(ct);
            }
        } else if (pubClick && o.inApp) {
            if (/^mopubnativebrowser:\/\//.test(pubClick)) {
                ct = encodeURIComponent(encodeURIComponent(ct));
            } else {
                ct = encodeURIComponent(ct);
            }
        }
        return pubClick + ct;
    },
    appendScriptToHead: function(scr) {
        var div = o.$().target, newScript = document.createElement('script');
        newScript.type = 'text/javascript';
        newScript.src = scr;
        div.appendChild(newScript);
    },
    bver: function(b, p) {
        p = p || 'appVersion';
        var str, wpr = /android|ios|ip(?:ad|hone|od)/gi;
        if (!o.navigator) {
            if (/Windows Phone/.test(navigator.appVersion)) {
                o.navigator = {
                    appVersion: navigator.appVersion.replace(wpr, ''),
                    userAgent: navigator.userAgent.replace(wpr, '')
                };
            } else {
                o.navigator = {};
            }
        }
        str = (o.navigator || {})[p] || navigator[p];
        return b instanceof RegExp ? b.test(str) : str.toLowerCase().indexOf(b.toLowerCase()) >= 0;
    },
    compareVersions: function(a, b) {
        if (!this.adReady) {
            return 1;
        }
        a = a.split('.');
        b = b.split('.');
        for (var i = 0; i < 3; i++) {
            if ((+a[i] || 0) > (+b[i] || 0)) {
                return 1;
            }
            if ((+a[i] || 0) < (+b[i] || 0)) {
                return -1;
            }
        }
        return 0;
    },
    convertUrlProtocol: function(url) {
        url = String(url);
        if (o.secure) {
            return 'https:' + url.substring(url.indexOf('/'), url.length);
        }
        return url;
    },
    decode: function(str) {
        try {
            return decodeURIComponent(str);
        } catch (e) {
            return unescape(str);
        }
    },
    dispatchEvent: function(type, msg) {
        if (typeof o.eventListeners[type] !== 'undefined') {
            var i = o.eventListeners[type].length;
            while (i--) {
                o.eventListeners[type][i].call(o, msg);
            }
        }
        if (type === 'adonpage' || type === 'backup') {
            o.adDisplayed = true;
        }
    },
    getAbsLeft: function(id) {
        return id.getBoundingClientRect().left + (window.scrollX != null ? window.scrollX : window.pageXOffset != null ? window.pageXOffset : document.documentElement.scrollLeft);
    },
    getAbsTop: function(id) {
        return id.getBoundingClientRect().top + (window.scrollY != null ? window.scrollY : window.pageYOffset != null ? window.pageYOffset : document.documentElement.scrollTop);
    },
    insertParam: function(str, insert) {
        if (typeof str === 'string' && insert.value !== '') {
            str = str.replace('/?', '/?' + insert.param + '=' + insert.value + '&');
        }
        return str;
    },
    listen: function(element, type, callback) {
        this.cachedEvents.push([ element, type, callback ]);
        if (typeof window.addEventListener !== 'undefined') {
            element.addEventListener(type, callback, false);
            return function(el, ev, cb) {
                el.addEventListener(ev, cb, false);
            };
        } else {
            element.attachEvent('on' + type, callback, false);
            return function(el, ev, cb) {
                el.attachEvent('on' + ev, cb, false);
            };
        }
    },
    macSaf: function() {
        return o.is.mac && o.is.safari && !o.is.chrome;
    },
    modifyClicks: function() {
        var i, j, clicks = o.clickTags.slice(0), insert = [ {
            param: 'ft_custom',
            value: window['ftCustom_' + o.pID] || ''
        }, {
            param: 'ft_section',
            value: window['ftSection_' + o.pID] || ''
        }, {
            param: 'ft_id',
            value: o.ftId ? o.ftId : ''
        }, {
            param: 'ft_impID',
            value: o.ftImpId ? o.ftImpId : ''
        }, {
            param: 'ft_agentEnv',
            value: o.qs('ft_agentEnv') && o.qs('ft_agentEnv') !== '0' ? o.qs('ft_agentEnv') : ''
        } ];
        for (i = clicks.length; i--; ) {
            if (clicks[i]) {
                j = insert.length;
                while (j--) {
                    clicks[i] = o.insertParam(clicks[i], insert[j]);
                }
                clicks[i] = o.replaceMacros(clicks[i], true);
            }
        }
        j = insert.length;
        while (j--) {
            o.altimghref = o.altImgHref = o.insertParam(o.altimghref || o.altImgHref, insert[j]);
        }
        o.altimghref = o.altImgHref = o.replaceMacros(o.altimghref || o.altImgHref, true);
        return clicks;
    },
    once: function(type, func) {
        var newFunc = function(e) {
            var i = o.eventListeners[type].length;
            func.call(o, e);
            while (i--) {
                if (o.eventListeners[type][i] === newFunc) {
                    o.eventListeners[type].splice(i, 1);
                }
            }
        };
        o.addEventListener(type, newFunc);
    },
    outputExtExpTrack: function() {
        var et = o.decode(o.qs('ftExpTrack', ''));
        if (et && !o.expandTracked) {
            new Image().src = o.replaceMacros(et);
            o.expandTracked = true;
        }
    },
    outputExternals: function() {
        var i = o.exttrack.length;
        function outputPixel(p) {
            if (p) {
                new Image().src = o.replaceMacros(p);
            }
        }
        while (i--) {
            outputPixel(o.exttrack[i]);
        }
    },
    parseURL: function(url) {
        var a;
        if (url) {
            a = document.createElement('a');
            a.href = url || '';
        } else {
            a = {
                search: ''
            };
        }
        return {
            domain: a.hostname || '',
            hash: a.hash || '',
            host: a.host || '',
            hostname: a.hostname || '',
            href: a.href || '',
            query: a.search.substring(1, a.search.length) || '',
            path: a.pathname || '',
            pathname: a.pathname || '',
            port: a.port || '',
            protocol: a.protocol || '',
            search: a.search || ''
        };
    },
    protocolSwitch: function() {
        var t, i;
        if (o.secure) {
            for (i = o.switchArray.length; i--; ) {
                t = o[o.switchArray[i]];
                if (!t) {
                    continue;
                }
                o[o.switchArray[i]] = t.replace('http:', 'https:');
            }
        }
    },
    pubPos: function() {
        var centre = o.centreAd ? 'margin:0 auto;' : '', str = o.attachtobody ? 'absolute;' : 'relative;' + centre, x = o.qs('ftx', ''), y = o.qs('fty', ''), z = o.qs('ftadz', '');
        if (x !== '' || y !== '') {
            str = 'absolute;';
            str += x ? 'left:' + x + 'px;' : '';
            str += y ? 'top:' + y + 'px;' : '';
        }
        if (z !== '') {
            str += 'z-index:' + z + ';';
        }
        return str;
    },
    random: function(x) {
        x = x || 1e9;
        return Math.floor(Math.random() * x);
    },
    removeListener: function(element, event, callback) {
        if (window.removeEventListener) {
            element.removeEventListener(event, callback, false);
        } else {
            element.detachEvent("on" + event, callback, false);
        }
    },
    replaceMacros: function(str, cb) {
        var noCache, hasRandom, map = {
            TIMESTAMP: window['ftTimestamp_' + o.pID],
            GUID: window['ftGUID_' + o.pID],
            IDFA: o.ftId,
            RANDOM: o.random(),
            CONFID: window['ftConfID_' + o.pID],
            NOCACHEBUSTER: '',
            IMPRESSIONID: o.ftImpId,
            PROTOCOL: o.secure ? 'https' : 'http'
        }, allMacros = /(?:\[|%5B|%255B)(%|%25|%2525)?(?:FT_)?(\w+)\1(?:\]|%5D|%255D)/gi, replacer = function($0, d, macro) {
            macro = macro.toUpperCase();
            if (macro === 'NOCACHEBUSTER') {
                noCache = true;
            }
            if (macro === 'RANDOM' && noCache !== false) {
                hasRandom = true;
                return $0;
            }
            return map.hasOwnProperty(macro) ? map[macro] : $0;
        };
        str = str.replace(allMacros, replacer);
        noCache = !!noCache;
        if (!noCache && hasRandom) {
            str = str.replace(allMacros, replacer);
        }
        return str + (noCache || hasRandom || cb ? '' : (str.indexOf('?') !== -1 ? '&' : '?') + o.random());
    },
    setupLoadListener: function() {
        var w = o.w, f = function() {
            o.dispatchEvent('load');
        };
        if (o.is('ie', '<10')) {
            if (o.advload) {
                document.attachEvent('onreadystatechange', function() {
                    if (document.readyState === 'complete') {
                        f();
                    }
                });
            } else {
                w.attachEvent('onload', f);
            }
        } else {
            w.addEventListener(o.advload ? 'DOMContentLoaded' : 'load', f, false);
        }
    },
    setupPageVisibility: function() {
        var prevVis, prevFocus, focus, blurTimeout, checkBlur = true, w = function() {
            if (o.mayExpand) {
                return o.w;
            } else if (o.w !== window.parent) {
                try {
                    return typeof o.w.parent.document.body.style.cssText === 'string' && o.w.parent;
                } catch (e) {
                    return o.w;
                }
            }
            return o.w;
        }(), document = w.document, prop = 'hidden';
        function onchange(evt) {
            var type = (evt || w.event).type, map = {
                focus: 'yes',
                blur: 'maybe',
                focusin: 'yes',
                focusout: 'maybe'
            }, vis = document[prop] ? 'no' : map.hasOwnProperty(type) ? map[type] : 'yes';
            if (o.pageVisible !== vis) {
                o.pageVisible = vis;
                o.dispatchEvent('visibilitychange', vis);
                if (o.dispatchToCreative) {
                    o.dispatchToCreative('visibilitychange', vis);
                }
            }
            if (prevVis !== (vis !== 'no')) {
                prevVis = checkBlur = vis !== 'no';
                o.dispatchEvent('viewableChange', prevVis);
                if (o.api) {
                    o.api.dispatchEvent('viewableChange', prevVis);
                }
                if (checkBlur) {
                    clearTimeout(blurTimeout);
                    blurTimeout = setTimeout(blurCheck, 100);
                }
            }
        }
        function blurCheck() {
            var evt = {};
            if (checkBlur && typeof w.document.hasFocus !== 'undefined') {
                focus = w.document.hasFocus() || o.w.document.hasFocus();
                if (focus !== prevFocus) {
                    prevFocus = focus;
                    evt.type = focus ? 'focus' : 'blur';
                    onchange(evt);
                }
                clearTimeout(blurTimeout);
                blurTimeout = setTimeout(blurCheck, 100);
            }
        }
        if (prop in document) {
            o.listen(document, 'visibilitychange', onchange);
        } else if ('mozHidden' in document) {
            prop = 'mozHidden';
            o.listen(document, 'mozvisibilitychange', onchange);
        } else if ('webkitHidden' in document) {
            prop = 'webkitHidden';
            o.listen(document, 'webkitvisibilitychange', onchange);
        }
        o.addEventListener('adonpage', function() {
            clearTimeout(blurTimeout);
            blurTimeout = setTimeout(blurCheck, 100);
            o.pageVisible = document[prop] ? 'no' : document.hasFocus && (document.hasFocus() || o.w.document.hasFocus()) ? 'yes' : 'maybe';
        });
        o.pageVisible = document[prop] ? 'no' : document.hasFocus && document.hasFocus() ? 'yes' : 'maybe';
    },
    setupQS: function(query) {
        var a = query.split('&');
        var q = {};
        var i = a.length;
        var fn = function(ref, def) {
            return q[ref] || def;
        };
        var f = function(s) {
            return o.decode(s);
        };
        var x;
        while (i--) {
            x = a[i].split('=');
            x[1] = x.slice(1).join('=');
            q[f(x[0])] = f(x[1]);
        }
        return window.qs && window.qs.get || fn;
    },
    setupResizeListener: function() {
        var f = function() {
            o.dispatchEvent('resize');
        };
        o.listen(o.w, 'resize', f);
    },
    checkProtocols: function() {
        var t, i;
        if (o.secure) {
            for (i = o.switchArray.length; i--; ) {
                t = o[o.switchArray[i]];
                o[o.switchArray[i]] = t.replace("http:", "https:");
            }
        }
    },
    getBackup: function() {
        this.backupShown = true;
        o.altimghref = o.convertUrlProtocol(o.altimghref);
        var href = o.addVClick(o.altimghref);
        o.fullClick = href;
        href = o.api.bridge !== o.api.fallbackAPI ? 'target="_self" href="javascript:void(0);"' : 'target="_blank" href="' + href + '"';
        o.imgID = o.imgID || o.altimgID;
        return '<a id="' + o.altimgID + '" style="display:inline-block" ' + href + '>' + '  <img id="' + o.imgID + '" src="' + o.altimg + '?' + o.random() + '" alt="' + o.alttext + '"' + '       style="width:' + o.width + 'px; height:'         + o.height + 'px; border:' + o.altimgborder + 'px"/>' + '</a>';
    },
    getFrame: function() {
        return '<iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" topmargin="0" leftmargin="0" allowtransparency="true" width="' + o.width + '" height="' + o.height + '" src="' + o.cdnSrc + '"></iframe>';
    },
    init: function() {
        var frame = false, i = o.extscript.length, guid = window['ftGUID_' + o.pID];
        o.qs = o.setupQS(o.params);
        o.setAPI();
        o.checkProtocols();
        o.setupPageVisibility();
        o.adId = o.altimgID;
        o.setup();
        o.outputExternals();
        o.dispatchEvent('start');
        o.outputDiv(frame);
        o.dispatchEvent('end');
        while (i--) {
            if (o.extscript[i] !== '') {
                o.appendScriptToHead(o.replaceMacros(o.extscript[i]));
            }
        }
    },
    outputDiv: function(frame) {
        var div = '', absPos = '', content = frame ? 'getFrame' : 'getBackup', posStyle = 'relative';
        if (this.qs('ftx', '') || this.qs('fty', '')) {
            absPos = 'left:' + this.qs('ftx', '') + 'px; top:' + this.qs('fty', '') + 'px; ';
            posStyle = 'absolute';
        }
        if (this.qs('ftadz', '') !== '') {
            absPos += 'z-index:' + this.qs('ftadz') + ';';
        }
        if (this.centreAd) {
            absPos += ' margin: 0 auto;';
        }
        div += '<div id="' + this.divID + '" style="position:' + posStyle + '; width:' + this.width + 'px; height:' + this.height + 'px;' + absPos + '">';
        div += o[content]();
        div += '</div>';
        if (o.append) {
            o.scriptLocation.insertAdjacentHTML('afterEnd', div);
        } else {
            document.write(div);
        }
        o.$().target.children[0].onclick = function(evt) {
            evt = evt || window.event;
            if (evt.preventDefault) {
                evt.preventDefault();
            }
            evt.returnValue = false;
            window.open(o.fullClick || o.altimghref, '_blank');
        };
        if (o.countOnDownload && !o.firedRenderedImpression) {
            new Image().src = o.replaceMacros(o.viewableImpressionURL);
            o.firedRenderedImpression = true;
        }
        this.dispatchEvent('backup');
        this.dispatchEvent('adready');
        this.adDisplayed = true;
    },
    removeMargin: function(remove) {
        if (remove) {
            if (document.body) {
                document.body.style.margin = 0;
            } else {
                setTimeout(function() {
                    o.removeMargin(remove);
                }, 20);
            }
        }
    },
    setAPI: function() {
        o.api._BRIDGE = o.api.bridge = window.ormma || window.mraid || o.api.fallbackAPI;
        if (o.api._BRIDGE !== o.api.fallbackAPI) {
            o.removeMargin(true);
            o.setupViewport();
        } else {
            o.api.fallbackAPI._STATE = 'default';
        }
    },
    setClickListener: function() {
        var a = o.$(o.altimgID).target, href = o.addVClick(o.altimghref);
        a.addEventListener("click", function() {
            o.api.open(href);
        });
    },
    setup: function() {
        var q = o.qs, guid = window['ftGUID_' + o.pID] || '99999999999';
        o.ftId = window['ftId_' + o.pID] = window['ftId_' + o.pID] || o.qs('ft_id', '');
        if (q('ftx', '') !== '' || q('fty', '') !== '') {
            q.ftx = q('ftx', '0');
            q.fty = q('fty', '0');
        }
        o.setupLoadListener();
        o.modifyClicks();
        o.setupBackupImp();
    },
    setupBackupImp: function() {
        o.altimg = o.insertParam(o.altimg, {
            param: 'ft_creative',
            value: o.creativeID
        });
        o.altimg = o.insertParam(o.altimg, {
            param: 'ft_configuration',
            value: window['ftConfID_' + o.pID]
        });
    },
    setupViewport: function() {
        var w = this.w || window, head = w.document.getElementsByTagName('head')[0], metas = w.document.getElementsByTagName('meta'), viewportMeta = w.document.createElement('meta'), i = metas.length, viewportTagExists = false;
        while (i--) {
            if (metas[i].name === 'viewport') {
                viewportTagExists = true;
                break;
            }
        }
        if (!viewportTagExists) {
            if (!head) {
                head = w.document.createElement(head);
                w.document.body.parentElement.insertBefore(head, w.document.body);
            }
            viewportMeta.name = 'viewport';
            viewportMeta.content = 'width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1';
            head.insertBefore(viewportMeta, head.children[0]);
        }
    },
    api: {
        _BRIDGE: null,
        _STATE: 'loading',
        _LISTENERQUEUE: [],
        _EVENTS: {},
        _call: function(name) {
            return this._BRIDGE[name] || this.fallbackAPI[name] || function() {};
        },
        addEventListener: function(event, callback) {
            var o = this;
            if (o._BRIDGE === null || o.getState() === 'loading' && event !== 'ready') {
                o._LISTENERQUEUE.push([ event, callback ]);
            } else {
                if (typeof o._EVENTS[event] === 'undefined') {
                    o._EVENTS[event] = [];
                    this._call('addEventListener').call(this._BRIDGE, event, function() {
                        var args = [ event ].concat([].slice.call(arguments, 0));
                        o.dispatchEvent.apply(o, args);
                    });
                }
                if (typeof callback === 'function') {
                    o._EVENTS[event].push(callback);
                }
            }
        },
        close: function() {
            this._call('close').apply(this._BRIDGE, arguments);
        },
        dispatchEvent: function() {
            var o = this;
            var event = arguments[0];
            var args = [].slice.call(arguments, 1);
            if (typeof o._EVENTS[event] !== 'undefined') {
                for (var i = 0; i < o._EVENTS[event].length; i++) {
                    o._EVENTS[event][i].apply(o, args);
                }
            }
        },
        getOrientation: function(width, height) {
            var or = typeof this._call('getOrientation').apply(this._BRIDGE, arguments) !== 'undefined' ? this._call('getOrientation').call(this._BRIDGE) : this.fallbackAPI.getOrientation.call(this._BRIDGE);
            if (this.fallbackAPI._FT.goneFullscreen && width) {
                if (or % 180 === 0) {
                    or = width > height ? 90 : or;
                } else {
                    or = width < height ? 0 : or;
                }
            }
            return or;
        },
        getState: function() {
            return this._call('getState').call(this._BRIDGE);
        },
        getVersion: function() {
            if (!this._BRIDGE.getVersion) {
                return 2;
            } else {
                return this._call('getVersion').apply(this._BRIDGE, arguments);
            }
        },
        isViewable: function() {
            return this._call('isViewable').apply(this._BRIDGE, arguments);
        },
        open: function(url) {
            if (window.ftClickYOC) {
                this._call("open").call(this._BRIDGE, encodeURIComponent(window.ftClickYOC), true, encodeURIComponent(url));
            } else {
                this._call("open").call(this._BRIDGE, url);
            }
        },
        processQueuedListeners: function() {
            var o = this;
            for (var i = 0; i < o._LISTENERQUEUE.length; i++) {
                o.addEventListener(o._LISTENERQUEUE[i][0], o._LISTENERQUEUE[i][1]);
            }
        },
        removeEventListener: function(event, callback) {
            var o = this;
            var evs = o._EVENTS[event];
            var i = evs && evs.length || 0;
            while (i--) {
                if (evs[i] === callback) {
                    evs.splice(i, 1);
                }
            }
        },
        request: function(url, display) {
            this.fallbackAPI.request(url, display);
        },
        useCustomClose: function() {
            return this._call('useCustomClose').apply(this._BRIDGE, arguments);
        },
        fallbackAPI: {
            addEventListener: function(event, callback) {
                var api = this;
                if (typeof api._EVENTS[event] === 'undefined') {
                    api._EVENTS[event] = [];
                }
                if (typeof callback === 'function') {
                    api._EVENTS[event].push(callback);
                }
            },
            close: function() {
                if (this._STATE !== 'default' && this.ft.api._STATE === 'default') {
                    this._STATE = this.ft.api._STATE = 'default';
                } else {
                    this._STATE = this.ft.api._STATE = 'hidden';
                }
                if (this._FT.safeFrame) {
                    this._FT.safeFrame.collapse();
                }
                this.dispatchEvent('stateChange', this._STATE);
            },
            dispatchEvent: function() {
                var o = this;
                var event = arguments[0];
                var args = [].slice.call(arguments, 1);
                if (typeof o._EVENTS[event] !== "undefined") {
                    for (var i = 0; i < o._EVENTS[event].length; i++) {
                        o._EVENTS[event][i].apply(o, args);
                    }
                }
            },
            getOrientation: function() {
                var w = 0, s = o.w.screen;
                if (o.w === window.top) {
                    w = s.orientation && s.orientation.type || s.mozOrientation || s.msOrientation || o.w.orientation;
                    w = isNaN(w) ? /portrait/.test(w) ? 0 : /landscape/.test(w) ? 90 : window.innerHeight > window.innerWidth ? 0 : 90 : w;
                }
                return w;
            },
            getState: function() {
                return this._STATE;
            },
            isViewable: function() {
                return true;
            },
            open: function(url) {
                window.open(url, '_blank');
            },
            request: function(url) {
                new Image().src = url;
            },
            _FT: null,
            _STATE: 'loading',
            _EVENTS: {},
            _TARGET: '_blank',
            expand: function(dimensions) {
                var geom = {}, left, right, top, bottom;
                if (o.safeFrame) {
                    if (dimensions.fullscreen) {
                        geom = o.safeFrame.geom();
                        left = geom.exp.l;
                        right = geom.exp.r;
                        top = geom.exp.t;
                        bottom = geom.exp.b;
                    } else {
                        left = Math.abs(dimensions.indentAcross);
                        top = Math.abs(dimensions.indentDown);
                        right = dimensions.width - o.width - left;
                        bottom = dimensions.height - o.height - top;
                    }
                    o.safeFrame.expand({
                        t: top,
                        l: left,
                        r: right,
                        b: bottom,
                        push: o.pushdown ? o.safeFrame.supports().exp_push : false
                    });
                }
                this._STATE = o.api._STATE = dimensions.fullscreen ? 'expanded' : 'resized';
                this.dispatchEvent('stateChange', this._STATE);
            },
            getExpandProperties: function() {
                return this._EXPANDPROPERTIES;
            },
            getMaxSize: function() {
                return o.safeFrame ? {
                    width: o.safeFrame.geom().win.w,
                    height: o.safeFrame.geom().win.h
                } : {
                    width: o.w.innerWidth,
                    height: o.w.innerHeight,
                    scale: o.w.innerWidth / o.w.document.documentElement.clientWidth
                };
            },
            setExpandProperties: function(properties) {
                this._EXPANDPROPERTIES = properties;
            }
        },
        expand: function(dimensions, url) {
            var v1 = /^1/.test(this.getVersion());
            var maxSize, finalOb, useCustomClose;
            if (this._BRIDGE === window.mraid) {
                if (dimensions.fullscreen || v1) {
                    if (v1 && dimensions.fullscreen) {
                        dimensions.width = this.getExpandProperties().width;
                        dimensions.height = this.getExpandProperties().height;
                        if (/Android/.test(navigator.userAgent) && dimensions.width > screen.width / window.devicePixelRatio) {
                            dimensions.width /= window.devicePixelRatio;
                            dimensions.height /= window.devicePixelRatio;
                        }
                    }
                    useCustomClose = typeof dimensions.useCustomClose !== 'undefined' ? dimensions.useCustomClose : true;
                    finalOb = {
                        width: Math.floor(dimensions.width),
                        height: Math.floor(dimensions.height),
                        useCustomClose: useCustomClose
                    };
                    if (!v1) {
                        finalOb.allowOrientationChange = typeof dimensions.allowOrientationChange !== 'undefined' ? dimensions.allowOrientationChange : true;
                        finalOb.forceOrientation = typeof dimensions.forceOrientation !== 'undefined' ? dimensions.forceOrientation : 'none';
                    }
                    this._call('setExpandProperties').call(this._BRIDGE, finalOb);
                    this._call('useCustomClose').call(this._BRIDGE, useCustomClose);
                    this._call('expand').call(this._BRIDGE, url);
                } else {
                    maxSize = this.getMaxSize();
                    dimensions.indentAcross = dimensions.width < maxSize.width ? (maxSize.width - dimensions.width) / 2 : dimensions.indentAcross;
                    dimensions.allowOffscreen = typeof dimensions.allowOffscreen !== 'undefined' ? dimensions.allowOffscreen : false;
                    for (var i in dimensions) {
                        if (typeof dimensions[i] === 'number') {
                            dimensions[i] = Math.floor(dimensions[i]);
                        }
                    }
                    this._call('setResizeProperties').call(this._BRIDGE, {
                        width: dimensions.width,
                        height: dimensions.height,
                        offsetX: dimensions.indentAcross,
                        offsetY: dimensions.indentDown,
                        customClosePosition: dimensions.customClosePosition || 'top-right',
                        allowOffscreen: dimensions.allowOffscreen
                    });
                    this._call('resize').call(this._BRIDGE);
                }
            } else if (this._BRIDGE === window.ormma) {
                this._call('setExpandProperties').call(this._BRIDGE, {
                    width: dimensions.width,
                    height: dimensions.height,
                    useCustomClose: typeof dimensions.useCustomClose === 'undefined' ? true : dimensions.useCustomClose
                });
                if (dimensions.fullscreen) {
                    this._call('expand').call(this._BRIDGE);
                } else {
                    this._call('resize').call(this._BRIDGE, dimensions.width, dimensions.height);
                }
            } else {
                this._call('expand').call(this._BRIDGE, dimensions, url);
            }
        },
        getExpandProperties: function() {
            return this._call('getExpandProperties').call(this._BRIDGE);
        },
        getMaxSize: function() {
            var ob, temp;
            if (/^2/.test(this.getVersion()) || !o.inApp) {
                ob = o.inApp ? this.getExpandProperties() : this.fallbackAPI.getMaxSize();
                if (!ob.width || typeof window.MMJS !== 'undefined') {
                    ob = this._call('getMaxSize').apply(this._BRIDGE, arguments);
                    if (!ob.width) {
                        ob = o.api.fallbackAPI.getMaxSize();
                    }
                }
                if (/android/i.test(navigator.userAgent) && /mydas\.mobi/.test(location.href)) {
                    ob.width = ob.width *= window.devicePixelRatio * 2;
                    ob.height = ob.height *= window.devicePixelRatio * 2;
                }
                return ob;
            } else {
                ob = this.getExpandProperties();
                if (!ob.width) {
                    ob = o.api.fallbackAPI.getMaxSize();
                }
                if (/mobile/i.test(navigator.userAgent)) {
                    if (o.api.getOrientation() % 180 !== 0 && o.api.getOrientation() !== -1 && ob.width < ob.height) {
                        temp = ob.width;
                        ob.width = ob.height;
                        ob.height = temp;
                    } else if (o.api.getOrientation() % 180 === 0 && ob.width > ob.height) {
                        temp = ob.width;
                        ob.width = ob.height;
                        ob.height = temp;
                    }
                }
                return ob;
            }
        }
    }
};
    (function() {
    var p = "3623389", n = JSON.parse('[]'), w = window, f = function(s) {
        var r = w[s + "_" + p], i = n.length;
        if (!r) {
            r = "";
            while (i--) {
                if (w[s + "_" + n[i]]) {
                    r = w[s + "_" + n[i]];
                    break;
                }
            }
        }
        return r;
    }, d = function(a, b) {
        if (b && !~w[q].indexOf(a + "=")) {
            b = ~b.indexOf("&") ? encodeURIComponent(b) : b;
            w[q] += "&" + a + "=" + b;
        }
    }, q = "ftParams_" + p, e = "ftExpTrack";
    d(e, f(e));
    d("click", f("ftClick"));
})();

o.is = function platform(navigator) {
    var fn = function(p, v) {
        if (!v || !fn[p]) {
            return !!fn[p];
        }
        var eq, op = (/^\D+/.exec(v) || [ '' ]).pop(), comparison = new Function('a', 'b', 'return a' + (op || '==') + 'b'), currentParts = fn[p].split('.'), desiredParts = String(v).slice(String(v).search(/\d/)).split('.');
        for (var i = 0, m = desiredParts.length; i < m; i++) {
            eq = currentParts[i] === desiredParts[i];
            if (comparison(+currentParts[i], +desiredParts[i])) {
                if (!desiredParts[i + 1] || op.charAt(1) !== '=' || !eq) {
                    return true;
                }
            } else if (!desiredParts[i + 1] || op !== '>' && op !== '<' && !eq) {
                return false;
            }
        }
    }, getVersion = function(n) {
        return (RegExp(n + '[/ ](\\d+(?:[\\._]\\d+)*)').exec(u) || [ '' ]).pop().replace(/_/g, '.') || false;
    }, u = navigator.userAgent, p = navigator.platform, ios = p.slice(0, 2) === 'iP' && getVersion('OS'), ie = ~u.search(/MSIE|Trident|Edge/), android = !ie && getVersion('Android'), aosp = !!(~u.indexOf('; U;') || ~u.indexOf('Verson')) && android, chriOS = !ie && getVersion('ChriOS'), is = {
        mobile: !!(android || ios) || !!(ie && ~u.indexOf('Windows Phone')),
        android: !ie && android,
        ios: ios,
        windows: getVersion('Windows(?: NT| Phone(?: OS)?)?'),
        mac: !/like Mac OS/.test(u) && getVersion('Mac OS X'),
        linux: p.slice(0, 5) === 'Linux' && !android,
        chromeOS: getVersion('CrOS \\w+'),
        aosp: aosp,
        chrome: !ie && !aosp && (!!window.chrome && getVersion('Chrome')),
        firefox: getVersion('Firefox'),
        safari: !ie && !chriOS && navigator.vendor.slice(0, 5) === 'Apple' && getVersion('Version'),
        ie: !!ie && String(document.documentMode || getVersion('(?:MSIE|IEMobile|Edge)')),
        webkit: !ie && getVersion('AppleWebKit'),
        kindleFire: getVersion('Silk')
    };
    for (var i in is) {
        fn[i] = is[i];
    }
    return fn;
}(navigator);
    var data = {
    params:window.ftParams_3623389||'',
    guid:window.ftGUID_3623389||'',
    confID:window.ftConfID_3623389||'0',
    ftReturn: window.ftReturn_3623389||'',
    keyword:window.ftKeyword_3623389||'',
    ftId:window.ftId_3623389||'',
    ftImpId:window.ftImp3623389 && window.ftImp3623389.impID || '',
    campaignID: '104200',
    cID:'100965',
    pID:'3623389',
    creativeID:'2560382',
    exttrack:[],
    extscript:["https://cdn.doubleverify.com/dvtp_src.js?ctx=1828362&cmp=104200&sid=653&plc=3623389&num=&adid=&advid=&adsrv=29&btreg=3623389&btadsrv=flashtalking&crt=2560382&crtname=&chnl=&unit=&pid=&uid=&dvtagver=6.1.src&dvp_ftimpid=[FT_IMPRESSIONID]"],
    clickTags: ['http://servedby.flashtalking.com/click/8/104200;3623389;2560382;210;[FT_CONFID]/?g=[FT_GUID]&random=[FT_RANDOM]&ft_width=300&ft_height=250&url=https://www.adobe.com/mx/creativecloud/plans.html?sdid=GZKZY1B7&mv=display'],
    statBaseURL: 'http://stat.flashtalking.com/reportV3/ft.stat?133885422-3623389;2560382;',
    centreAd: true,
    width:300,
    height:250,
    adType:'altimage'.toLowerCase(),
    altimg:'http://cdn.flashtalking.com/xre/362/3623389/2560382/image/2560382.gif',
    viewableImpressionURL: 'http://servedby.flashtalking.com/imp/8/104200;3623389;202;pixel;DBM;DBMFY19CCPSPCustomIntentMXPPWB300x250/?',
    stump: 'http://servedby.flashtalking.com',
    altimghref:'http://servedby.flashtalking.com/click/8/104200;3623389;2560382;210;[FT_CONFID]/?g=[FT_GUID]&random=[FT_RANDOM]&ft_width=300&ft_height=250&url=https://www.adobe.com/mx/creativecloud/plans.html?sdid=GZKZY1B7&mv=display',
    divID:'ftdiv3623389',
    altimgID:'ftalt3623389',
    alttext:'Click here',
    w: window,
    adDisplayed: false,
    customPos: false,
    customPosFunc: function() {},
    eventListeners: {},
    cachedEvents: [],
    altimgtarget: '_blank',
    countOnDownload: o.is.mobile && 1,
    encodeClickCount: parseInt('0', 10) || 0,
    append: !!(window.ftImp3623389 && parseInt(window.ftImp3623389.jsAppend, 10) === 1),
    lockableOrientation: !!(window.screen && (screen.mozLockOrientation || screen.msLockOrientation || screen.lockOrientation || (screen.orientation && screen.orientation.lock))),
    altimgborder: '0',
    servedby: /servedby\.flashtalking/.test(location.host),
    cdn: /(cdn|secure)\.flashtalking/.test(location.host),
    cdnSrc: 'http://cdn.flashtalking.com/frameworks/js/frame/index.html?g=',
    secure: !!(location.protocol === 'https:' || /^https:/.test((document.getElementById('ftscript_m3623389') || {}).src) || window.qs && typeof qs.get === 'function' && /^https:/.test(qs.get('ifsrc',''))),
    scriptLocation: document.getElementById('ftscript_m3623389'),
    pageVisible: 'maybe',
    cssPrefix: (function(bStyle) {
        var pres = ['MozT', 'MsT', 'webkitT', 't'];
        var prefix = '';
        for (var i = pres.length - 1; i > -1; i--) {
            if (pres[i] + 'ransform' in bStyle) {
                prefix = pres[i].slice(0, pres[i].length - 1).toLowerCase();
                break;
            }
        }
        return !prefix || prefix === 't' ? '' : ('-' + prefix + '-');
    }(document.documentElement.style)),
    switchArray: ['altimg', 'altimghref', 'cdnSrc', 'statBaseURL', 'viewableImpressionURL', 'cdnSrc']
};

        for(var i in data){
                o[i] = data[i];
        }

        window["ft" + data.pID] = o;

    // temp pagefold code
    (function(ft) {
        var ua = navigator.userAgent;
        var safari = /Safari/.test(ua) && !/Chrome/.test(ua) && !/Edge/.test(ua);
        ft.viewableConversion = "false" === "true";
        ft.viewableImpressionURL = setupViewableImpression(ft.stump + "/state/" + ft.pID + ";" + ft.creativeID + ";" + "[CONFID];271;[IMPRESSIONID]/?cachebuster=[RANDOM]");

        ft.fireRenderedImpression = function() {
            if (ft.viewableConversion) {

                if (!(safari) || ft.pageVisible !== 'no' && !ft.firedRenderedImpression) {
                    new Image().src = ft.replaceMacros(ft.viewableImpressionURL);
                    ft.firedRenderedImpression = true;
                }
            }
        };

        function setupViewableImpression(str) {
            var inserts = [{
                "param": "ft_product",
                "value": ft.productSKU || ""
            }, {
                "param": "ft_data",
                "value": ft.ftData || ""
            }];
            var i = inserts.length;

            while (i--) {
                str = ft.insertParam(str, inserts[i]);
            }

            return str[str.length - 1] === '&' ? str.substring(0, str.length - 1) : str;
        }
    }(o));

    //--start extensions
// 650-7
/* jshint ignore:start */
//5.0.10 min
(function(o) {
var ft_D9Tag=function(g,h,k,l,m,n){var a={v:"5.3.5",register:"3",cGuid:l,D9Settings:g||{},privacy:k,d9Callback:h,guid:"",d9TimeoutMS:parseInt(m,10)||0,d9Timeout:0,forceF:n||!1,forceFDeploy:!1,urlMod:"",status:"",regName:"ftD9ResponseRegister",getGuid:function(){var c="",b=decodeURIComponent("%"+"5C");window.ft_GUID?c=window.ft_GUID:a.cGuid&&!RegExp("9{13}"+b+"d").test(a.cGuid)&&RegExp(b+"d{4}[0-9A-F]{10}").test(a.cGuid)&&(c=a.cGuid);return c},deployCallback:function(c){var b={};"timeout"==a.status&&(a.deployCallback=function(){});c?b=c:(b.guid=a.guid,b.d9ID=a.getD9Id(),b.time=a.getD9Time(),b.urlMod=a.urlMod);a.d9Callback(null,b)},getD9Id:function(){return window.ft_d9ID||""},getD9Time:function(){return window.ft_d9Time||""},d9Response:function(c){var b="";clearTimeout(a.d9Timeout);try{b=c.DeviceID[0]}catch(e){}"timeout"!=b&&b?a.getD9Id()||(window.ft_d9ID=b||"",a.getD9Id()&&(a.d9Response=function(){},a.status="ok")):(a.urlMod+="&ftd9er=1&erMsg="+String(b),a.status="timeout");try{window.ft_d9SegList=c.ftseg[0]}catch(e){}try{window.ft_d9Time=c.time[0]}catch(e){}a.deployCallback()},ftD9Callback:function(c){var b=function(a){"function"==typeof a.d9Response&&a.d9Response(c)},e=[],d=a.regName+a.register;a.legacyRegisters();for(var f=0;f<window[d].length;f++)window[d][f].forceF?window[d][f].forceFDeploy?b(window[d][f]):e.push(window[d][f]):b(window[d][f]);window[d]=[];0<e.length&&(window[d]=e,window[d][0].forceFDeploy=!0,a.updateD9Objs(window[d][0].D9Settings),window.d9PendingXDR=void 0,window.D9(D9v,D9r,"d9.flashtalking.com"))},legacyRegisters:function(){var c=!1,b=a.regName+a.register;if(!window[b+"Cap"]){var e=0===window[b].length?!0:!1;(function(){var b=a.regName;return[b,b+"2"]})().forEach(function(a){"undefined"!=typeof window[a]&&window[a].constructor==Array&&0<window[a].length&&(window[b]=window[b].concat(window[a]),window[a]=[],c=!0)});e&&0<window[b].length&&(window[b][0].forceFDeploy=!0)}return c},updateD9Objs:function(c){var b=window;b.D9v={};b.D9v.UserID=a.guid||"99999999999999";b.D9r={};b.D9r.DeviceID=!0;b.D9r.callback=function(b){a.ftD9Callback(b)};var e=c.D9r||"";c=c.D9v||(e?"":c);for(var d in c)b.D9v[d]=c[d];for(d in e)b.D9r[d]=e[d]},init:function(){var c=a.regName+a.register;if(a.privacy&&"x"!==a.privacy)a.deployCallback({privacy:a.privacy});else{var b=a.getGuid();"undefined"==typeof window[c]&&(window[c]=[]);a.legacyRegisters()&&"undefined"!=typeof window.D9r&&(window.D9r.callback=function(b){a.legacyRegisters();a.ftD9Callback(b)});window[c].push(a);b&&(window.ft_GUID=b,a.guid=b);if(a.getD9Id()&&!a.forceF)a.ftD9Callback();else{!a.forceFDeploy&&(0===window[c].length&&a.forceF||1===window[c].length)&&(a.forceFDeploy=!0);if("undefined"==typeof window.D9||"function"==typeof window.D9&&"undefined"!=typeof window.d9PendingXDR||a.forceFDeploy)a.updateD9Objs(a.D9Settings),window[c+"Check"]=!0,"function"==typeof window.D9?(window.d9PendingXDR=void 0,window.D9(D9v,D9r,"d9.flashtalking.com")):(window.D9scr=document.createElement("script"),D9scr.type="text/javascript",D9scr.async=!0,D9scr.src="ht"+"tps://d9.flashtalking.com/d9core",window.D9=document.getElementsByTagName("script")[0],D9.parentNode.insertBefore(D9scr,D9));0<a.d9TimeoutMS&&(a.d9Timeout=setTimeout(function(){a.d9Response({DeviceID:["timeout"]})},a.d9TimeoutMS))}}}};a.init()};
var mobO="1",deploy="1"===mobO||"2"===mobO&&RegExp("^.*(?:iPhone|iPad|iPod|Android|Windows"+decodeURIComponent("%"+"5C")+"sPhone|BlackBerry).*"+decodeURIComponent("%"+"24")).test(navigator.userAgent),execD9=function(){var b={D9v:{TAG:"1",CampID:"3175",CCampID:o.campaignID},D9r:{DeviceID:!0}},d=o.ftId||window["ftId_"+o.pID]||((window["ftParams_"+o.pID]||"").match(RegExp("(?:(?:"+decodeURIComponent("%"+"5C")+"?|&|^)ft_id=)([^&]+)"))||["",""])[1];d&&(b.D9v.EnvID=encodeURIComponent(d));o.ftImpId&&(b.D9v.ImpID=o.ftImpId,window.ft_d9LinkID||(window.ft_d9LinkID=o.ftImpId));window.ft_d9LinkID&&(b.D9v.LinkID=window.ft_d9LinkID);ft_D9Tag(b,function(b,c){c||(c={});var a=c.d9ID?"ft_data=d9:"+c.d9ID+"&":"";o.ftImpId&&a&&(a="http://servedby.flashtalking.com/state/"+o.pID+";"+o.creativeID+";"+o.confID+";401;"+o.ftImpId+"/?"+a+"cachebuster=[RANDOM]",a=o.secure?a.replace(/^http:/,"https:"):a,(new Image).src=o.replaceMacros(a))},window["ftImp"+o.pID]&&window["ftImp"+o.pID].privacy,o.GUID||o.guid||"")},init=function(){deploy&&(!0===o.mayExpand?o.addEventListener("end",execD9):execD9())}();
}(ft3623389));
/* jshint ignore:end */
//TA_1 min
//ftMinified
(function(b){var c=window["ftImp"+b.pID]&&window["ftImp"+b.pID].privacy;c&&"x"!==c||((new Image).src=b.replaceMacros("ht"+"tps://tapestry.tapad.com/tapestry/1?ta_partner_id=2035&ta_partner_did=[GUID]&ta_format=png",!0),"undefined"==typeof window.ftD9ResponseRegister&&(window.ftD9ResponseRegister=[]),window.ftD9ResponseRegister.push({getD9Id:function(){return window.ft_d9ID||""},d9Response:function(b){var a="";try{a=b.DeviceID[0]}catch(d){}"timeout"!=a&&a?this.getD9Id()||(window.ft_d9ID=a||"",this.getD9Id()&&(this.d9Response=function(){})):a="";a&&((new Image).src="ht"+"tps://tapestry.tapad.com/tapestry/1?ta_partner_id=2176&ta_partner_did="+a+"&ta_format=png")}}))}(ft3623389));

    //--end extensions
    o.init();

}());