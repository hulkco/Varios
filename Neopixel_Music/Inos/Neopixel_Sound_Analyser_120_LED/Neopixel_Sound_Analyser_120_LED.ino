#include <Adafruit_NeoPixel.h>

#define PIN 6
int left_channel = 0;
int right_channel = 1;
const int length = 120;
const int half = length/2;
Adafruit_NeoPixel strip = Adafruit_NeoPixel(120, PIN, NEO_GRB + NEO_KHZ800);
uint32_t left_array[half];
uint32_t right_array[half];
void setup() {

   for(int i=0; i<half;i++)
  {
    left_array[i] = 0;
    right_array[i] = 0;
  }
  strip.begin();
  strip.show(); // Initialize all pixels to 'off'
}

void loop() {
  // Some example procedures showing how to display to the pixels:
   //Set the hue (0-255) and 24-bit color depending on left channel value
  byte hue_left = constrain(map(analogRead(left_channel), 0, 400, 0, 255), 0, 255);
  uint32_t color_left = Wheel(hue_left);
  
  //Set the hue (0-255) and 24-bit color depending on right channel value
  byte hue_right = constrain(map(analogRead(right_channel), 0, 400, 0, 255), 0, 255);
  uint32_t color_right = Wheel(hue_right);
  
  //Shift the current values.
  for (int i = 0; i<half-1; i++)
  {
    left_array[i] = left_array[i+1];
    right_array[i] = right_array[i+1];
  }
  
  //Fill in the new value at the end of each array
  left_array[half-1] = color_left;
  right_array[half-1] = color_right;
  
  //Go through each Pixel on the strip and set its color
  for (int i=0; i<half; i++)
  {
    //set pixel color
    strip.setPixelColor(i, left_array[i]);
    strip.setPixelColor(length-i-1, right_array[i]);
  }


  //Display the new values
  strip.show();
  
  //sample delay
  delay(40);
}

// Fill the dots one after the other with a color
void colorWipe(uint32_t c, uint8_t wait) {
  for(uint16_t i=0; i<strip.numPixels(); i++) {
      strip.setPixelColor(i, c);
      strip.show();
      delay(wait);
  }
}

void rainbow(uint8_t wait) {
  uint16_t i, j;

  for(j=0; j<256; j++) {
    for(i=0; i<strip.numPixels(); i++) {
      strip.setPixelColor(i, Wheel((i+j) & 255));
    }
    strip.show();
    delay(wait);
  }
}
uint32_t Color(byte r, byte g, byte b)
{
  uint32_t c;
  c = r;
  c <<= 8;
  c |= g;
  c <<= 8;
  c |= b;
  return c;
}

// Slightly different, this makes the rainbow equally distributed throughout
void rainbowCycle(uint8_t wait) {
  uint16_t i, j;

  for(j=0; j<256*5; j++) { // 5 cycles of all colors on wheel
    for(i=0; i< strip.numPixels(); i++) {
      strip.setPixelColor(i, Wheel(((i * 256 / strip.numPixels()) + j) & 255));
    }
    strip.show();
    delay(wait);
  }
}

// Input a value 0 to 255 to get a color value.
// The colours are a transition r - g - b - back to r.
uint32_t Wheel(byte WheelPos) {
  if(WheelPos < 85) {
   return strip.Color(WheelPos * 3, 255 - WheelPos * 3, 0);
  } else if(WheelPos < 170) {
   WheelPos -= 85;
   return strip.Color(255 - WheelPos * 3, 0, WheelPos * 3);
  } else {
   WheelPos -= 170;
   return strip.Color(0, WheelPos * 3, 255 - WheelPos * 3);
  }
}
