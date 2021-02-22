@echo off
taskkill /F /IM "Adobe Desktop Service.exe"
taskkill /F /IM "CCLibrary.exe"
taskkill /F /IM "CCXProcess.exe"
taskkill /F /IM "acrotray.exe"
taskkill /F /IM "AdobeIPCBroker.exe"
taskkill /F /IM "CoreSync.exe"
taskkill /F /IM "Creative Cloud Helper.exe"
taskkill /F /IM "AdobeNotificationClient.exe"
taskkill /F /IM "AcrobatNotificationClient.exe"
taskkill /F /IM "AdobeARM.exe"

sc stop AGSService
sc stop AdobeUpdateService
sc stop AGMService
sc stop AdobeARMservice

echo .
echo .
echo make sure to launch as administrator to disable services
echo .
echo .
sc config AGSService start= disabled
sc config AdobeUpdateService start= disabled
sc config AGMService start= disabled
sc config AdobeARMservice start= disabled
PAUSE
