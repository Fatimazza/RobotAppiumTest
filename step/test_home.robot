*** Settings ***
Library             AppiumLibrary
Variables           ../resources/home_locators.yaml
Resource            ../resources/home_page.robot

Suite Setup         Start Session Apps
Suite Teardown      Close Apps


*** Test Cases ***
As I user I want to open My Cafe App
    Page Should Contain Text    Home
    Page Should Contain Text    Search menu
