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
    Wait Until Element Is Visible    ${homeFoodText}
    Element Should Contain Text    ${homeFoodText}    Japanese Sushi

As I user I want to search some menu
    Tap Home Search Bar
    Input Text    ${homeSearchBar}    su
    Page Should Contain Text    Japanese Sushi
    Page Should Contain Text    Tiramisu Coffee

As I user I want to be informed when searched menu not found
    Tap Home Search Bar
    Input Text    ${homeSearchBar}    abc
    Wait Until Element Is Visible    ${homeNoResultText}
    Page Should Contain Text    No search result found
