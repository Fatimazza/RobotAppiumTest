*** Settings ***
Library     AppiumLibrary


*** Keywords ***
Start Session Apps
    Set Appium Timeout    10
    Open Application    http://0.0.0.0:4723/wd/hub
    ...    automationName=uiautomator2
    ...    platformName=Android
    ...    deviceName=sdk_gphone_x86
    ...    appPackage=io.github.fatimazza.mycafeapp
    ...    appActivity=io.github.fatimazza.mycafeapp.MainActivity
    ...    autoGrantPermissions=true
    ...    noReset=true
    Sleep    1
