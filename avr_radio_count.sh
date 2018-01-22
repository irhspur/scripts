#!/bin/bash

java avrora.Main -platform=micaz -simulation=sensor-network -seconds=10 -monitors=leds,packet -nodecount=3 -stagger-start=1000000 $1
