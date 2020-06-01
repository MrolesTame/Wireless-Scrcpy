@ECHO OFF

:: This script is coded by Mroles Tame || 6-June-2020 || hello@gabrielselorm.com
:: This CMD script helps you to mirror your android phone.

TITLE Scrcpy Mirror

ECHO Please Wait... Configurating the system...

ECHO =========================

ECHO DISABLING THE DEVICE ONLINE
::This is optional but sometimes, it's needed.

adb kill-server shell

ECHO =========================

ECHO ACTIVATING THE USB MODE

adb usb

ECHO =========================

ECHO RESTARTING THE PORT

adb tcpip 5555

ECHO =========================

ECHO CONNECTING YOUR DEVICE VIA IP ADDRESS

adb connect *IP ADDRESS*
::Grap your IP address at phone's settings. Add without the asterisks.

ECHO =========================

ECHO LAUNCHING SCRCPY

start "C:\scrcpy" scrcpy

PAUSE