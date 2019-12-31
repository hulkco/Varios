var SPLASH = SPLASH || {};
    var isSale = [];
    var t10 = document.getElementById('t10');
    var t11 = document.getElementById('t11');
    var t12 = document.getElementById('t12');

    SPLASH.app = {

        name: null,
        masterTM: TimelineMax,
        interacted: false,
        finished: false,
        productArray: [],
        currentProduct: 0,
        currentProductURL:1,
        init: function() {

            this.masterTM = new TimelineMax({
                delay: 0,

                onComplete: function() { }

            })
            if(document.getElementById("t10").getAttribute("data-percentage"))isSale = document.getElementById("t10").getAttribute("data-percentage").split(",");
            this.masterTM.add("product1", "=+0");
            this.masterTM.add(function() {
                SPLASH.app.currentProduct = 0;
                if ((SPLASH.app.finished == true) && (SPLASH.app.interacted == false)) {

                    SPLASH.app.masterTM.stop()
                }
            }, "=+0")

            this.masterTM.add(this.scene1(), "=+0");
            this.masterTM.add(this.scene2(), "=+0");
            // // //

            this.masterTM.add(function() {
                if (SPLASH.app.interacted == true) { SPLASH.app.masterTM.stop() }
            }, "=+0")

            this.masterTM.add(this.scene3(), "=+0");
            this.masterTM.add("product2", "=+0");
            this.masterTM.add(function() { SPLASH.app.currentProduct = 1 }, "=+0")
            this.masterTM.add(this.scene4(), "=+0");
            this.masterTM.add(this.scene5(), "=+0");

            this.masterTM.add(function() {
                if (SPLASH.app.interacted == true) { SPLASH.app.masterTM.stop() }
            }, "=+0")

            this.masterTM.add(this.scene6(), "=+0");
            this.masterTM.add("product3", "=+0");
            this.masterTM.add(function() { SPLASH.app.currentProduct = 2 }, "=+0")
            this.masterTM.add(this.scene7(), "=+0");
            this.masterTM.add(this.scene8(), "=+0");

            this.masterTM.add(function() {
                if (SPLASH.app.interacted == true) { SPLASH.app.masterTM.stop() }
            }, "=+0")

            this.masterTM.add(this.scene9(), "=+0");

        },
        reset: function() {
            //reset to scene 1
            var tm = new TimelineMax();
            //resetting product1
            tm.set("#three", { width: 300, height: 300, left: 0, top: 177 })
            tm.set("#two", { width: 149, height: 175, left: 151, top: 0 })
            tm.set("#two_content", { width: 149, height: 175, left: 0, top: 0 })
            tm.set("#one", { width: 149, height: 175, left: 0 })
            tm.set("#one .content", { width: 149, height: "56%", left: 0, top: 0 })
            tm.set("#oneclone", { width: 300, height: 300, left: -300, top: 177 })
            tm.set("#oneclone .content", { width: 300, height: "56%", left: 0, top: 0 })
            tm.set("#three", { width: 300, height: 300, left: 0, top: 177 })
            tm.set("#one .strap", { bottom: '0%', left: 0, opacity: 1 })
            tm.set("#two strap", { opacity: 0 });
            tm.set("#oneclone .strap", { bottom: 0 });
            tm.set("#threeclone", { width: 300, height: 300, left: 300, top: 0 });


            //resetting product2
            tm.set("#four", { width: 149, height: 175, top: 0, left: -150 })
            tm.set("#fourclone", { width: 300, height: 300, top: 177, left: -300 })
            tm.set("#four .content", { width: 149, height: "56%", top: 0, left: 0 })

            tm.set("#five", { width: 149, height: 175, top: 0, left: 300 })
            tm.set("#fiveclone", { width: 300, height: 300, top: 177, left: -300 })
            tm.set("#five .strap", { bottom: "-45%" })
            tm.set("#five .content", { width: 149, height: 175, left: 0, top: 0 })

            tm.set("#six", { width: 300, height: 300, top: 177, left: 300 })
            tm.set("#sixclone", { width: 300, height: 300, top: 0, left: 300 })

            return tm;

        },
        reset2: function() {
            var tm = new TimelineMax();


            return tm;


        },
        r1off: function() {
            //get all the 

            var tm = new TimelineMax();
            tm.set(["#one", "#oneclone", "#two", "#twoclone", "#three", "#threeclone"], { opacity: 0 })
            return tm
        },
        r2off: function() {
                var tm = new TimelineMax();
                tm.set(["#four", "#fourclone", "#five", "#fiveclone", "#six", "#sixclone"], { opacity: 0 })
                return tm

            }

            ,

        scene1: function() {

            var tm = new TimelineMax();


            //tm.add("sl1","=+0");
            //tm.set("#two .strap", {bottom:"-45%",opacity:1})
            tm.to("#three", 0.8, { transformOrigin: "100% 100%", width: 150, height: 175, top: 302, left: 151, force3D: true, ease: Power1.easeOut, repeat: 0 }, "=+1");
            tm.to("#two", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 300, height: 300, left: 0, force3D: true }, "=-0.8");
            tm.to("#two_content", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 300, height: 300, left: 0, force3D: true }, "=-0.8");
            tm.to("#one", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, left: -300, top: 0, force3D: true, height: 300, width: 300 }, "=-0.8");
            tm.to("#one .content", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, force3D: true, height: 300, width: 300 }, "=-0.8");
            tm.to("#oneclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, left: 0, top: 302, force3D: true, width: 149, height: 175 }, "=-0.8");
            tm.to("#oneclone .content", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, height: "56%", width: 149, force3D: true, }, "=-0.8");
            tm.to("#three", 0.8, { transformOrigin: "100% 100%", width: 150, height: 175, top: 302, left: 151, ease: Power1.easeOut, force3D: true }, "=-0.8");
            tm.set("#one .strap", { bottom: "-45%", opacity: 0, force3D: true })
            tm.add(function() { SPLASH.utils.autoSizeText() }, "=+0")

            return tm
        },

        scene2: function() {

            var tm = new TimelineMax();
            tm.add("sl2", "=+0");
            tm.to("#two", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 149, height: 175, left: 0, yoyo: false, force3D: true }, "=+1");
            tm.to("#oneclone .strap", 0.8, { transformOrigin: "100% 100%", bottom: "-45%", opacity: 1, ease: Power1.easeOut, yoyo: false, repeat: 0 }, "=-0.8");
            tm.to("#oneclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 300, height: 300, left: 0, top: 177, force3D: true }, "=-0.8");
            tm.to("#oneclone .content", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, height: 300, width: 300, force3D: true }, "=-0.8");
            tm.to("#two_content", 0.8, { transformOrigin: "100% 0%", ease: Power1.easeOut, width: "150px", height: "56%", left: 0, top: 0, force3D: true }, "=-0.8");
            tm.to("#three", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 300, height: 300, top: 177, left: 300, force3D: true }, "=-0.8");

            tm.to("#threeclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 149, height: 175, top: 0, left: 151, force3D: true }, "=-0.8");
            if (isSale[0] > "1%") {
            	//console.log("FIRE FIRE FIRE RUN");
            	tm.to("#t10", 0.8, { transformOrigin: "100% 0%", bottom: "0", opacity: 1, ease: Power1.easeOut, yoyo: false, force3D: true }, "=-0.85");
            } else {
            	tm.set("#t10", {opacity: 0}, "=-0.8");
            	tm.to("#t3", 0.8, { transformOrigin: "100% 0%", bottom: "0", opacity: 1, ease: Power1.easeOut, yoyo: false, force3D: true }, "=-0.85");
            }
            
            tm.add(function() { SPLASH.utils.autoSizeText() }, "=+0")
            return tm
        },

        scene3: function() {
            var tm = new TimelineMax();

            tm.add("sl3", "=+0");
            tm.to("#threeclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, left: -150, yoyo: false, force3D: true }, "=+1");
            tm.to("#two", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, left: -150, yoyo: false, force3D: true }, "=-0.8");
            tm.to("#threeclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, left: -150, yoyo: false, force3D: true }, "=-0.8");
            tm.to("#four", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, left: 0, yoyo: false, force3D: true }, "=-0.8");
            tm.to("#five", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, left: 151, yoyo: false, force3D: true }, "=-0.8");
            tm.to("#oneclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, left: -300, yoyo: false, force3D: true }, "=-0.8");
            tm.to("#six", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, left: 0, yoyo: false, force3D: true }, "=-0.8");

            tm.add(function() { SPLASH.utils.autoSizeText() }, "=+0")

            tm.to("#p1", 0.4, { clip: "rect(40px,200px,40px,0px)" }, "=-0.8");
            tm.to("#p21", 0.4, { clip: "rect(40px,200px,40px,0px)" }, "=-0.8");
            tm.to("#p1_price", 0.4, { clip: "rect(40px,200px,40px,0px)" }, "=-0.8");

            tm.to("#p2", 0.4, { clip: "rect(0px,200px,40px,0px)" }, "=-0.4");
            tm.to("#p22", 0.4, { clip: "rect(0px,200px,40px,0px)" }, "=-0.4");
            tm.to("#p2_price", 0.4, { clip: "rect(0px,200px,40px,0px)" }, "=-0.4");
            tm.add(function() {SPLASH.app.currentProductURL =2;SPLASH.utils.common()}, "=+0")
            return tm
        },
        scene4: function() {
            var tm = new TimelineMax();
            tm.add("sl4", "=+0");
            tm.set("#fourclone .strap", { bottom: "0%", opacity: 1 })
            tm.to("#six", 0.8, { transformOrigin: "100% 100%", width: 150, height: 175, top: 302, left: 151, ease: Power1.easeOut, force3D: true }, "=+1");
            tm.to("#five", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 300, height: 300, left: 0, force3D: true }, "=-0.8");
            tm.to("#five .content", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 300, height: 300, left: 0, force3D: true }, "=-0.8");
            tm.to("#four", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, left: -300, top: 0, height: 300, width: 300, force3D: true }, "=-0.8");
            tm.to("#four .content", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, height: 300, width: 300, force3D: true }, "=-0.8");


            tm.to("#fourclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, left: 0, top: 302, width: 150, height: 175, force3D: true }, "=-0.8");
            tm.to("#fourclone .content", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, height: "56%", width: 150, force3D: true }, "=-0.8");

            tm.to("#six", 0.8, { transformOrigin: "100% 100%", width: 150, height: 175, top: 302, left: 151, ease: Power1.easeOut, force3D: true }, "=-0.8");
            tm.set("#four", { width: 150, height: 175, top: 302 })
            tm.add(function() { SPLASH.utils.autoSizeText() }, "=+0")
            return tm
        },
        scene5: function() {
            var tm = new TimelineMax();
            tm.add("sl5", "=+0");
            tm.set("#four .strap", { background: "#262626" })
            tm.to("#five", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 149, height: 175, left: 0, force3D: true }, "=+1");
            tm.to("#five .content", 0.8, { transformOrigin: "100% 0%", ease: Power1.easeOut, width: "150px", height: "56%", left: 0, top: 0, force3D: true }, "=-0.8");
            tm.to("#fourclone .strap", 0.8, { transformOrigin: "100% 100%", bottom: "-45%", opacity: 1, ease: Power1.easeOut, force3D: true }, "=-0.8");
            tm.to("#fourclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 300, height: 300, left: 0, top: 177, force3D: true }, "=-0.8");
            tm.to("#fourclone .content", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 300, height: 300, left: 0, top: 0, force3D: true }, "=-0.8");
            tm.to("#six", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 300, height: 300, top: 177, left: 300, force3D: true }, "=-0.8");
            tm.to("#sixclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 149, height: 175, top: 0, left: 151, force3D: true }, "=-0.8");
            


            if (isSale[1] > "1%") {
            	tm.to("#t11", 0.8, { transformOrigin: "100% 0%", bottom: "0", opacity: 1, ease: Power1.easeOut, yoyo: false, force3D: true }, "=-0.85");
            } else {
            	tm.set("#t11", {opacity: 0}, "=-0.8");
            	tm.to("#t6", 0.8, { transformOrigin: "100% 100%", bottom: "0", opacity: 1, ease: Power1.easeOut, yoyo: false, force3D: true }, "=-0.85");
            }
            tm.add(function() { SPLASH.utils.autoSizeText() }, "=+0")
            return tm
        },

        scene6: function() {
            var tm = new TimelineMax();
            tm.add("sl6", "=+0");
            tm.to("#sixclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, left: -150, force3D: true }, "=+1");
            tm.to("#five", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, left: -150, force3D: true }, "=-0.8");
            tm.to("#sixclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, left: -150, force3D: true }, "=-0.8");
            tm.to("#seven", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, left: 0, force3D: true }, "=-0.8");
            tm.to("#eight", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, left: 151, force3D: true }, "=-0.8");
            tm.to("#fourclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, left: -300, yoyo: false, force3D: true }, "=-0.8");
            tm.to("#nine", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, left: 0, yoyo: false, force3D: true }, "=-0.8");

            tm.to("#p2", 0.4, { clip: "rect(40px,200px,40px,0px)" }, "=-0.8");
            tm.to("#p22", 0.4, { clip: "rect(40px,200px,40px,0px)" }, "=-0.8");
            tm.to("#p2_price", 0.4, { clip: "rect(40px,200px,40px,0px)" }, "=-0.8");

            tm.to("#p3", 0.4, { clip: "rect(0px,200px,40px,0px)" }, "=-0.4");
            tm.to("#p23", 0.4, { clip: "rect(0px,200px,40px,0px)" }, "=-0.4");
            tm.to("#p3_price", 0.4, { clip: "rect(0px,200px,40px,0px)" }, "=-0.4");
            tm.add(function() {SPLASH.app.currentProductURL =3;SPLASH.utils.common()}, "=+0")
            tm.add(function() { SPLASH.utils.autoSizeText() }, "=+0")


            return tm
        },

        scene7: function() {
            var tm = new TimelineMax();

            tm.add("sl7", "=+0");
            tm.set("#sevenclone .strap", { bottom: "0%", opacity: 1 })
            tm.to("#nine", 0.8, { transformOrigin: "100% 100%", width: 150, height: 175, top: 302, left: 151, ease: Power1.easeOut, force3D: true }, "=+1");
            tm.to("#eight", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 300, height: 300, left: 0, force3D: true }, "=-0.8");
            tm.to("#eight .content", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 300, height: 300, left: 0, force3D: true }, "=-0.8");
            tm.to("#seven", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, left: -300, top: 0, height: 300, width: 300, force3D: true }, "=-0.8");
            tm.to("#seven .content", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, height: 300, width: 300, force3D: true }, "=-0.8");


            tm.to("#sevenclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, left: 0, top: 302, width: 150, height: 175, force3D: true }, "=-0.8");
            tm.to("#sevenclone .content", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, height: "56%", width: 150, force3D: true }, "=-0.8");

            tm.to("#nine", 0.8, { transformOrigin: "100% 100%", width: 150, height: 175, top: 302, left: 151, ease: Power1.easeOut, force3D: true }, "=-0.8");
            tm.set("#seven", { width: 150, height: 175, top: 302 })
            tm.add(function() { SPLASH.utils.autoSizeText() }, "=+0")
            return tm
        },
        scene8: function() {
            var tm = new TimelineMax();
            tm.add("sl8", "=+0");
            tm.set("#seven .strap", { background: "#262626" })
            tm.to("#eight", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 149, height: 175, left: 0, force3D: true }, "=+1");
            tm.to("#eight .content", 0.8, { transformOrigin: "100% 0%", ease: Power1.easeOut, width: "150px", height: "56%", left: 0, top: 0, force3D: true }, "=-0.8");
            tm.to("#sevenclone .strap", 0.8, { transformOrigin: "100% 100%", bottom: "-45%", opacity: 1, ease: Power1.easeOut, force3D: true }, "=-0.8");
            tm.to("#sevenclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 300, height: 300, left: 0, top: 177, force3D: true }, "=-0.8");
            tm.to("#sevenclone .content", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 300, height: 300, left: 0, top: 0, force3D: true }, "=-0.8");
            tm.to("#nine", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 300, height: 300, top: 177, left: 300, force3D: true }, "=-0.8");
            tm.to("#nineclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, width: 149, height: 175, top: 0, left: 151, force3D: true }, "=-0.8");
            

            if (isSale[2] > "1%") {
            	tm.to("#t12", 0.8, { transformOrigin: "100% 0%", bottom: "0", opacity: 1, ease: Power1.easeOut, yoyo: false, force3D: true }, "=-0.85");
            } else {
            	tm.set("#t12", {opacity: 0}, "=-0.8");
            	tm.to("#t9", 0.8, { transformOrigin: "100% 100%", bottom: "0", opacity: 1, ease: Power1.easeOut, yoyo: false, repeat: 0, force3D: true }, "=-0.85");
            }

            // resetting one 

            tm.set("#one", { transformOrigin: "100% 100%", ease: Power1.easeOut, left: 0, top: 0, force3D: true, height: 175, width: 149 }, "=-0.8");
            tm.set("#one .content", { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, force3D: true, width: 149, height: "56%" }, "=-0.8");
            tm.set("#one .strap", { transformOrigin: "100% 100%", bottom: "0", opacity: 1 }, "=-0.8");

            tm.set("#two", { transformOrigin: "100% 100%", ease: Power1.easeOut, left: 300, top: 0, force3D: true, height: 175, width: 149 }, "=-0.8");
            tm.set("#two .content", { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, force3D: true, width: 149, height: "100%" }, "=-0.8");
            tm.set("#two .strap", { transformOrigin: "100% 100%", bottom: "-45%", opacity: 0 }, "=-0.8");
            tm.add(function() { SPLASH.utils.autoSizeText() }, "=+0")
            return tm
        },

        scene9: function() {
            var tm = new TimelineMax();
            tm.add("sl9", "=+0");
            tm.to("#nineclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, left: -150, force3D: true }, "=+1");
            tm.to("#eight", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, left: -150, force3D: true }, "=-0.8");
            tm.to("#nineclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, left: -150, force3D: true }, "=-0.8");
            tm.to("#one", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, left: 0, force3D: true }, "=-0.8");
            tm.to("#two", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, top: 0, left: 151, force3D: true }, "=-0.8");
            tm.to("#sevenclone", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, left: -300, yoyo: false, force3D: true }, "=-0.8");
            tm.to("#three", 0.8, { transformOrigin: "100% 100%", ease: Power1.easeOut, left: 0, yoyo: false, force3D: true }, "=-0.8");

            tm.to("#p3", 0.4, { clip: "rect(40px,200px,40px,0px)" }, "=-0.8");
            tm.to("#p23", 0.4, { clip: "rect(40px,200px,40px,0px)" }, "=-0.8");
            tm.to("#p3_price", 0.4, { clip: "rect(40px,200px,40px,0px)" }, "=-0.8");

            tm.to("#p1", 0.4, { clip: "rect(0px,200px,40px,0px)" }, "=-0.4");
            tm.to("#p21", 0.4, { clip: "rect(0px,200px,40px,0px)" }, "=-0.4");
            tm.to("#p1_price", 0.4, { clip: "rect(0px,200px,40px,0px)" }, "=-0.4");
            tm.add(function() { SPLASH.utils.autoSizeText() }, "=+0")
            tm.add(function() {SPLASH.app.currentProductURL =1;SPLASH.utils.common()}, "=+0")
            tm.add(function() {
                SPLASH.app.finished = true;
                SPLASH.app.masterTM.seek("product1");
                /*SPLASH.app.currentProduct=0
                SPLASH.app.masterTM.stop();*/
            }, "=+0");


            return tm
        },
        controlSet: function() {

            //
            document.getElementById("left").addEventListener('click', function(e) {
                SPLASH.app.interacted = true;
                //SPLASH.app.masterTM.stop()
                e.stopImmediatePropagation()	
                if (SPLASH.app.currentProduct < SPLASH.app.productArray.length - 1) {

                    SPLASH.app.masterTM.seek(SPLASH.app.productArray[SPLASH.app.currentProduct + 1]);
                    //SPLASH.app.currentProduct++;
                    SPLASH.app.masterTM.play()
                } else {

                    SPLASH.app.masterTM.seek(SPLASH.app.productArray[0]);
                    SPLASH.app.masterTM.play()
                }
                if(SPLASH.app.currentProductURL == SPLASH.app.productArray.length){
                    console.log("comif");
                    SPLASH.app.currentProductURL --;
                    SPLASH.app.currentProductURL --;
                 }else{
                 console.log("comelse");
                    SPLASH.app.currentProductURL ++;
                 }
                 SPLASH.utils.common();
            })
            //
            document.getElementById("right").addEventListener('click', function(e) {
                //SPLASH.app.masterTM.stop()
                SPLASH.app.interacted = true;
                e.stopImmediatePropagation()
                if (SPLASH.app.currentProduct > 0) {

                    SPLASH.app.masterTM.seek(SPLASH.app.productArray[SPLASH.app.currentProduct - 1]);
                    SPLASH.app.masterTM.play()
                } else {

                    SPLASH.app.masterTM.seek(SPLASH.app.productArray[SPLASH.app.productArray.length - 1]);
                    SPLASH.app.masterTM.play()
                }
                if(SPLASH.app.currentProductURL == 1){
                    console.log("comif");
                    SPLASH.app.currentProductURL = SPLASH.app.productArray.length;
                 }else{
                console.log("comelse");
                SPLASH.app.currentProductURL --;
                }
                SPLASH.utils.common();
            })

        }





    }
  