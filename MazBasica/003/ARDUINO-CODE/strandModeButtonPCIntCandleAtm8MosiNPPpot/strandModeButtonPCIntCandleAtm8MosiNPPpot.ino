#include <EEPROMex.h>
#include <EEPROMVar.h>
#include <Adafruit_NeoPixel.h>



#ifdef __AVR__
  #include <avr/power.h>
#endif

// Bare ATMEGA8 /w ISP Programmer *** Change to use MOSI pin on ISP header
#if defined(ARDUINO_AVR_ATmega8)
	#define ENABLE_PULLDOWN_PIN
	#define PIN_BUTTON_PULLDOWN 1
	#define PIN_PIXELS 11
	#define PIN_BUTTON 2
	#define INT_BUTTON 0
	#define PIN_POT_PULLUP 17
	#define PIN_POT_ANALOG 1
#endif


// bare board /w ISP Programmer
#if defined (ARDUINO_AVR_ATTINYX5)
	#define PIN_BUTTON_PULLDOWN 0
	#define PIN_PIXELS 0
	#define PIN_BUTTON 2
	#define INT_BUTTON 0
#endif


#define COUNT_PIXELS 26
#define MODE_VALUE_MAX 18
#define MODE_VALUE_LONG_HOLD 0
#define  MODE_ADDRESS 0
volatile uint8_t modeValue=0;
volatile uint8_t modeExitImmediate=0;
uint8_t buttonPinEdge;



// Parameter 1 = number of pixels in strip
// Parameter 2 = Arduino pin number (most are valid)
// Parameter 3 = pixel type flags, add together as needed:
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)
//   NEO_RGBW    Pixels are wired for RGBW bitstream (NeoPixel RGBW products)
Adafruit_NeoPixel strip = Adafruit_NeoPixel(COUNT_PIXELS, PIN_PIXELS, NEO_RGB + NEO_KHZ800);

// IMPORTANT: To reduce NeoPixel burnout risk, add 1000 uF capacitor across
// pixel power leads, add 300 - 500 Ohm resistor on first pixel's data input
// and minimize distance between Arduino and first pixel.  Avoid connecting
// on a live circuit...if you must, connect GND first.

void setup() {
	// This is for Trinket 5V 16MHz, you can remove these three lines if you are not using a Trinket
	#if defined (__AVR_ATtiny85__)
	if (F_CPU == 16000000) clock_prescale_set(clock_div_1);
	#endif
	// End of trinket special code

	// Read eeprom mode
	modeValue = EEPROM.read(MODE_ADDRESS);

	// Set up mode switch 
	#if defined (ENABLE_PULLDOWN_PIN)
		pinMode(PIN_BUTTON_PULLDOWN, OUTPUT);
		digitalWrite(PIN_BUTTON_PULLDOWN, LOW);
	#endif
	#if defined (PIN_POT_PULLUP)
		pinMode(PIN_POT_PULLUP,OUTPUT);
		digitalWrite(PIN_POT_PULLUP,HIGH);
	#endif
	#if defined (PIN_POT_ANALOG)
		pinMode(PIN_POT_ANALOG,INPUT);
	#endif
	pinMode(PIN_BUTTON, INPUT);
	digitalWrite(PIN_BUTTON, HIGH); // internal pullup

	// Some colors so we know its alive
	strip.begin();
	//  strip.show(); // Initialize all pixels to 'off'
	attachInterrupt(INT_BUTTON, isrButton, FALLING);
}

void(* resetFunc) (void) = 0; //declare reset function @ address 0  -- Software reset, jump to zero


void dumbDelay(uint16_t waitms){
	for(uint16_t i=0; i<waitms; i++) {
		delayMicroseconds(1000);
	}
}

void isrButton(){
    dumbDelay(100);
    if( digitalRead(PIN_BUTTON) == LOW ){
    uint8_t holdCounter=0;
    while ( digitalRead(PIN_BUTTON) == LOW ){dumbDelay(100); holdCounter++; }
    // Button interrup ISR
    modeValue++;
    if( modeValue > MODE_VALUE_MAX ){ modeValue=0; }
    if( holdCounter > 9 ){ modeValue=MODE_VALUE_LONG_HOLD ; } // This will result in DEFAULT mode
    EEPROM.write(MODE_ADDRESS,modeValue);
    //resetFunc(); // too  slow on digispark
    modeExitImmediate=1;  // Set mode exit trigger
  }
}


  

void loop() {
  modeExitImmediate=0; // Reset trigger
  switch (modeValue) {
    case 0:
      rainbowCycleSeg(20,255,60);
      break;
    case 1:
      rainbowCycleSeg(2,255,60);
      break;
    case 2:
      rainbowCycleSeg(20,0,255);
      break;
    case 3:
      rainbowCycleSeg(100,0,255);
      break;
    case 4:
      rainbowCycleSeg(2,0,255);
      break;
    case 5:
      rainbowCycleSeg(20,99,220);
      break;
    case 6:
      rainbowCycleSeg(2,99,220);
      break;
    case 7:
      rainbowCycleSeg(20,0,99);
      break;
    case 8:
      rainbowCycleSeg(2,0,99);
      break;
    case 9:
      rainbowCycleSeg(20,5,35);
      break;
    case 10:
      rainbowCycleSeg(2,5,35);
      break;
    case 11:
      rainbowCycleSeg(20,40,60);
      break;
    case 12:
      rainbowCycleSeg(2,40,60);
      break;
    case 13:
      theaterChaseRainbow(10);
      break;
    case 14:
      theaterChaseRainbow(50);
      break;
    case 15:
      theaterChaseRainbow(100);
      break;
    case 16:
      rainbowCycleSeg(2,0,10);
      rainbowCycleSeg(2,10,50);
      rainbowCycleSeg(2,50,30);
      rainbowCycleSeg(2,30,60);
      rainbowCycleSeg(2,60,99);
      rainbowCycleSeg(2,99,0);
      rainbowCycleSeg(2,0,150);
      rainbowCycleSeg(2,150,255);
      rainbowCycleSeg(4,255,0);
      break;
//    case 8:
//      colorWipe(strip.Color(0, 255, 0), 50); // Green
//      break;
//    case 9:
//      colorWipe(strip.Color(0, 0, 255), 50); 
//      break;
//    case 10:
//      rainbow(20);
//      break;
//    case 10:
//      candleDance();
//      break;
    default:
      candleSetup();
      candleLoop();  // does not return until butt interrupt
      break;
  }
}

void stripShow(){
	// Read analog pot if exists, set brightness
	#if defined (PIN_POT_ANALOG)
		int bint=analogRead(PIN_POT_ANALOG);
		// Translate 0-1023 (analog) to neopix brightness which is 1-255
		uint8_t ubint=map(bint,0,1023,1,255);
		strip.setBrightness(ubint);
	#endif
	strip.show();
}


// Fill the dots one after the other with a color
void colorWipe(uint32_t c, uint8_t wait) {
  for(uint16_t i=0; i<strip.numPixels(); i++) {
    strip.setPixelColor(i, c);
    stripShow();
    if ( modeExitImmediate == 1 ){ modeExitImmediate=0; return; } // Poof, exit please
    delay(wait);
  }
}

// Fill the dots one after the other with a color
void setStrip(uint32_t c) {
  for(uint16_t i=0; i<strip.numPixels(); i++) {
    strip.setPixelColor(i, c);
  }
  stripShow();
}

void candleDance() {
	uint16_t i, j;
	uint8_t candleBuf[COUNT_PIXELS+1];

	for(j=0; j<256; j++) {
		for(i=0; i<strip.numPixels(); i++) {
			if( random(0,100) > 50 ){
				candleBuf[i] = candleBuf[i] + random(5);
			}else{
				candleBuf[i] = candleBuf[i] - random(5);
			}
		}

		for(i=0; i<strip.numPixels(); i++) {
			strip.setPixelColor(i, WheelSeg(candleBuf[i],5,35));
		}
		stripShow();
		if ( modeExitImmediate == 1 ){ modeExitImmediate=0; return; } // Poof, exit please
		delay(random(5,20));
	}
}
void rainbow(uint8_t wait) {
  uint16_t i, j;

  for(j=0; j<256; j++) {
    for(i=0; i<strip.numPixels(); i++) {
      strip.setPixelColor(i, Wheel((i+j) & 255));
    }
    stripShow();
    if ( modeExitImmediate == 1 ){ modeExitImmediate=0; return; } // Poof, exit please
    delay(wait);
  }
}

// Slightly different, this makes the rainbow equally distributed throughout
void rainbowCycle(uint8_t wait) {
  uint16_t i, j;

  for(j=0; j<256*5; j++) { // 5 cycles of all colors on wheel
    for(i=0; i< strip.numPixels(); i++) {
      strip.setPixelColor(i, Wheel(((i * 256 / strip.numPixels()) + j) & 255));
    }
    stripShow();
    if ( modeExitImmediate == 1 ){ modeExitImmediate=0; return; } // Poof, exit please
    delay(wait);
  }
}
void rainbowCycleSeg(uint8_t wait,uint8_t min,uint8_t max) {
  uint16_t i, j;

  for(j=0; j<256*2; j++) { // 5 cycles of all colors on wheel
    for(i=0; i< strip.numPixels(); i++) {
      strip.setPixelColor(i, WheelSegFolded(((i * 256 / strip.numPixels()) + j) & 255,min,max));
    }
    stripShow();
    if ( modeExitImmediate == 1 ){ modeExitImmediate=0; return; } // Poof, exit please
    delay(wait);
  }
}

//Theatre-style crawling lights.
void theaterChase(uint32_t c, uint8_t wait) {
  for (int j=0; j<10; j++) {  //do 10 cycles of chasing
    for (int q=0; q < 3; q++) {
      for (uint16_t i=0; i < strip.numPixels(); i=i+3) {
        strip.setPixelColor(i+q, c);    //turn every third pixel on
      }
      stripShow();
      if ( modeExitImmediate == 1 ){ modeExitImmediate=0; return; } // Poof, exit please
      delay(wait);
      for (uint16_t i=0; i < strip.numPixels(); i=i+3) {
        strip.setPixelColor(i+q, 0);        //turn every third pixel off
      }
    }
  }
}

//Theatre-style crawling lights with rainbow effect
void theaterChaseRainbow(uint8_t wait) {
  for (int j=0; j < 256; j++) {     // cycle all 256 colors in the wheel
    for (int q=0; q < 3; q++) {
      for (uint16_t i=0; i < strip.numPixels(); i=i+3) {
        strip.setPixelColor(i+q, Wheel( (i+j) % 255));    //turn every third pixel on
      }
      stripShow();
      if ( modeExitImmediate == 1 ){ modeExitImmediate=0; return; } // Poof, exit please
      delay(wait);
      for (uint16_t i=0; i < strip.numPixels(); i=i+3) {
        strip.setPixelColor(i+q, 0);        //turn every third pixel off
      }
    }
  }
}

//Theatre-style crawling lights with rainbow effect
void theaterChaseRainbowSeg(uint8_t wait, uint8_t min, uint8_t max) {
  for (int j=0; j < 256; j++) {     // cycle all 256 colors in the wheel
    for (int q=0; q < 3; q++) {
      for (uint16_t i=0; i < strip.numPixels(); i=i+3) {
        strip.setPixelColor(i+q, WheelSegFolded( (i+j) % 255,min,max));    //turn every third pixel on
      }
      stripShow();
      if ( modeExitImmediate == 1 ){ modeExitImmediate=0; return; } // Poof, exit please
      delay(wait);
      for (uint16_t i=0; i < strip.numPixels(); i=i+3) {
        strip.setPixelColor(i+q, 0);        //turn every third pixel off
      }
    }
  }
}


// Input a value 0 to 255 to get a color value.
// The colours are a transition r - g - b - back to r.
uint32_t Wheel(byte WheelPos) {
  WheelPos = 255 - WheelPos;
  if(WheelPos < 85) {
    return strip.Color(255 - WheelPos * 3, 0, WheelPos * 3);
  }
  if(WheelPos < 170) {
    WheelPos -= 85;
    return strip.Color(0, WheelPos * 3, 255 - WheelPos * 3);
  }
  WheelPos -= 170;
  return strip.Color(WheelPos * 3, 255 - WheelPos * 3, 0);
}

uint32_t WheelSeg(byte WheelPos, uint8_t min, uint8_t max){
	return(Wheel(map(WheelPos,0,256,min,max)));
}

uint32_t WheelSegFolded(byte WheelPos, uint8_t min, uint8_t max){
	if( WheelPos < 128 ){
		return(Wheel(map(WheelPos,0,127,min,max)));
	}else{
		return(Wheel(map(WheelPos,128,256,max,min)));
	}
}

// *************************************************************************************
// Below is single pixel candle code adapted for inclusion above
// *************************************************************************************
// candle for Adafruit NeoPixel
// 1 pixel version
// by Tim Bartlett, December 2013

// current settings for 5v Trinket


// color variables: mix RGB (0-255) for desired yellow
const uint8_t redPx = 255;
const uint8_t grnHigh = 100; //110-120 for 5v, 135 for 3.3v
const uint8_t bluePx = 10; //10 for 5v, 15 for 3.3v

// animation time variables, with recommendations
const uint8_t burnDepth = 10; //10 for 5v, 14 for 3.3v -- how much green dips below grnHigh for normal burn - 
const uint8_t flutterDepth = 25; //25 for 5v, 30 for 3.3v -- maximum dip for flutter
const uint8_t cycleTime = 120; //120 -- duration of one dip in milliseconds

// pay no attention to that man behind the curtain
int fDelay;
int fRep;
int flickerDepth;
int burnDelay;
int burnLow;
int flickDelay;
int flickLow;
int flutDelay;
int flutLow;


void candleSetup() {
  flickerDepth = (burnDepth + flutterDepth) / 2.4;
  burnLow = grnHigh - burnDepth;
  burnDelay = (cycleTime / 2) / burnDepth;
  flickLow = grnHigh - flickerDepth;
  flickDelay = (cycleTime / 2) / flickerDepth;
  flutLow = grnHigh - flutterDepth;
  flutDelay = ((cycleTime / 2) / flutterDepth);
}

// In loop, call CANDLE STATES, with duration in seconds
// 1. on() = solid yellow
// 2. burn() = candle is burning normally, flickering slightly
// 3. flicker() = candle flickers noticably
// 4. flutter() = the candle needs air!

void candleLoop() {
  burn(10);
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  flicker(5);
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  burn(8);
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  flutter(6);
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  burn(3);
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  on(10);
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  burn(10);
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  flicker(10);
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
}


// basic fire funciton - not called in main loop
void fire(int grnLow) {
  for (int grnPx = grnHigh; grnPx > grnLow; grnPx--) {
    setStrip(strip.Color(redPx, grnPx, bluePx));
    delay(fDelay);
    if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  }  
  for (int grnPx = grnLow; grnPx < grnHigh; grnPx++) {
    setStrip(strip.Color(redPx, grnPx, bluePx));
    delay(fDelay);
    if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  }
}

// fire animation
void on(int f) {
  fRep = f * 1000;
  int grnPx = grnHigh - 5;
  setStrip(strip.Color(redPx, grnPx, bluePx));
  delay(fRep);
}

void burn(int f) {
  fRep = f * 8;
  fDelay = burnDelay;
  for (int var = 0; var < fRep; var++) {
    fire(burnLow);
    if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  }  
}

void flicker(int f) {
  fRep = f * 8;
  fDelay = burnDelay;
  fire(burnLow);
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  fDelay = flickDelay;
  for (int var = 0; var < fRep; var++) {
    fire(flickLow);
    if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  }
  fDelay = burnDelay;
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  fire(burnLow);
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  fire(burnLow);
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  fire(burnLow);
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
}

void flutter(int f) {
  fRep = f * 8;  
  fDelay = burnDelay;
  fire(burnLow);
  fDelay = flickDelay;
  fire(flickLow);
  fDelay = flutDelay;
  for (int var = 0; var < fRep; var++) {
    fire(flutLow);
    if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  }
  fDelay = flickDelay;
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  fire(flickLow);
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  fire(flickLow);
  fDelay = burnDelay;
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  fire(burnLow);
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
  fire(burnLow);
  if ( modeExitImmediate == 1 ){ return; } // Poof, exit please
}
