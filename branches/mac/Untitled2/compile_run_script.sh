#!/bin/bash
######sergiobuj######

nasm -f macho nasm_dll.s -o nasm.o ##Assemble the library
xcodebuild clean build install -activetarget -activeconfiguration ##Compile Cocoa app
open build/Debug/Untitled2.app ##Run the app

######sergiobuj######