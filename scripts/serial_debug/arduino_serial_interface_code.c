/********************************************************************
 * Copyright (c) 2020 - 2023, The OctopOS Authors
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 ********************************************************************/
/*
  Software serial multple serial test

 Receives from the hardware serial, sends to software serial.
 Receives from software serial, sends to hardware serial.

 The circuit:
 * RX is digital pin 2 (connect to TX of other device)
 * TX is digital pin 3 (connect to RX of other device)

 Note:
 Not all pins on the Mega and Mega 2560 support change interrupts,
 so only the following can be used for RX:
 10, 11, 12, 13, 50, 51, 52, 53, 62, 63, 64, 65, 66, 67, 68, 69

 Not all pins on the Leonardo support change interrupts,
 so only the following can be used for RX:
 8, 9, 10, 11, 14 (MISO), 15 (SCK), 16 (MOSI).

 created back in the mists of time
 modified 25 May 2012
 by Tom Igoe
 based on Mikal Hart's example

 This example code is in the public domain.

 */
//#include <SoftwareSerial.h>

//SoftwareSerial mySerial(10, 11); // RX, TX

void setup()
{
  // Open serial communications and wait for port to open:
  Serial.begin(115200);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for Native USB only
  }


  Serial.println("Goodnight moon!");

  // set the data rate for the SoftwareSerial port
  Serial1.begin(9600);
  Serial1.println("Hello, world?");

  Serial2.begin(9600);
  Serial2.println("Hello, world?");

  
  Serial3.begin(9600);
  Serial3.println("Hello, world?");
}

void loop() // run over and over
{
  char in1 = ' ';
  char in2 = ' ';
  char in3 = ' ';
  if (Serial2.available()){
    in1 = Serial2.read();
    //Serial.write(in2);
    //if(in1=='\r'){
    //     Serial.write(" <- OS\n\r\n\r ");
    //}
    Serial.write('@');
    Serial.write('1');
    Serial.write(in1);
  }
  if (Serial1.available()){
    in2 = Serial1.read();
 //   Serial.write(in2);
 //   if(in2=='\r'){
 //        Serial.write(" <- Storage\n\r\n\r ");
 //   }
    Serial.write('@');
    Serial.write('2');
    Serial.write(in2);
  }
  if (Serial3.available()){
    in3 = Serial3.read();
 //   Serial.write(in3);
 //   if(in3=='\r'){
 //       Serial.write(" <- Network:\n\r\n\r ");
 //   }
    Serial.write('@');
    Serial.write('3');
    Serial.write(in3); 
  }


  
//  if (Serial.available())
//    Serial1.write(Serial.read());
}
