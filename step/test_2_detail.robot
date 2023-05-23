*** Settings ***
Library             AppiumLibrary
Variables           ../resources/home_locators.yaml
Variables           ../resources/detail_locators.yaml
Resource            ../resources/home_page.robot

Suite Setup         Start Session Apps
Suite Teardown      Close Apps


*** Test Cases ***
As I user I want to open Food Detail
    Tap Food Salad
    Sleep    3
    Wait Until Element Is Visible    ${detailFoodTitle}
    Element Text Should Be    ${detailFoodTitle}    Vegetables Salad
    Element Text Should Be    ${detailFoodPrice}    Rp 42500
    Element Should Contain Text    ${detailFoodDesc}    Lorem ipsum
    Tap    ${detailBackButton}
