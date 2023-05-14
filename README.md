<h1 align="center">Robot Appium Test</h1></br>

<p align="center">
:sparkles: Mobile Automation Testing using Robot Framework with Appium Library &amp; Python :sparkles:
</p>

## Preparation

What will be used on this project


| Item           | Source                                                         |
| -------------- | ------------------------------------------------------------ |
| Editor         | VS Code (https://code.visualstudio.com/download) |
| Package Manager| PIP (https://pip.pypa.io/en/stable/getting-started/) |
| UI Test Tools  | Appium (http://appium.io/docs/en/2.0/quickstart/install) | 
|                | Robot Framework with Python (https://robotframework.org/#getting-started) |
|                | Appium Library (https://github.com/serhatbolsu/robotframework-appiumlibrary) | 
|                | PyYaml (https://pypi.org/project/PyYAML/) |
| Design Pattern | POM or Page Object Model |
| Test Reporter  | Robot Framework with Python (https://robotframework.org/#getting-started)|
| Device         | Android 5 and above  |

## Pre-Requisite Installation

Install VS Code Editor, Python, and PIP

To check whether you already installed Python & PIP

```Bash
python --version
```
```Bash
python -m pip --version 
```

## Testing Tools Installation

Install Appium v 2.0

```Bash
npm i -g appium@next
```

Install Robot Framework

```Bash
python -m pip install robotframework
```

Install Appium Library

```Bash
python3 -m pip install --upgrade robotframework-appiumlibrary
```

Install PyYAML 

```Bash
python -m pip install pyyaml
```

## Setting up Project

### Clone

**👉 [Clone this Repository](https://github.com/Fatimazza/RobotAppiumTest/)** through Terminal or Command Prompt

### Open the Project on Editor

Open this Automation Project using VS Code Editor

### Run Application 

Run the "My Cafe App" APK on Android Emulator or Real device connected with Debugging mode

The APK file available on `RobotAppiumTest/apk/MyCafeApp.apk`

<img src="https://github.com/fatimazza/RobotAppiumTest/blob/main/apk/ScreenShoot_MyCafeApp.jpg" alt= “MyCafeApp” width="400" height="756">

### Run the Automation Project 

Run Appium on Terminal or Command Prompt

```Bash
appium --base-path /wd/hub
```

On **Another** Terminal or Command Prompt

Change to Project directory 

```Bash
cd RobotAppiumTest
```

Run Specific Test Execution on Terminal

```Bash
robot --outputdir output/ step/test_home.robot
```

Run All Test Execution on Terminal

```Bash
robot --outputdir output/ .
```

> Note: Please wait until all test execution finished

### Test Execution HTML Report

:white_check_mark: Report available on <b> RobotAppiumTest/output/report.html 
