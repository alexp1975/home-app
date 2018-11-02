#!/usr/bin/env python
#import Libraries
import RPi.GPIO as GPIO
import time
import pyrebase

#Firebase Configuration
config = {
  "apiKey": "AIzaSyCzxHB_P-BFin_9A64ydSd22vXPgFYqn_s",
  "authDomain": "homeapp-a39a1.firebaseapp.com",
  "databaseURL": "https://homeapp-a39a1.firebaseio.com",
  "storageBucket": "homeapp-a39a1.appspot.com"
}

firebase = pyrebase.initialize_app(config)

#GPIO Setup
GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(18, GPIO.OUT)

#Firebase Database Intialization
db = firebase.database()

#Off Switch
data = {"State":"OFF"}

def switch ( str ): 
    db.child("led").set(data)
    return;

#While loop to run until user kills program

while (True):
    #Get value of LED 
    led = db.child("led").get()

    #Sort through children of LED(we only have one)
    for user in led.each():
        #Check value of child(which is 'state')
        if(user.val() == "OFF"):
            #If value is off, turn LED off
            GPIO.output(18, False)
        else:
            #If value is not off(implies it's on), turn LED on
            GPIO.output(18, True)
            #time.sleep(10)
            switch ( str )
            
        
             

        #0.1 Second Delay
        time.sleep(20)
