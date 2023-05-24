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
    Element Should Be Disabled    ${detailOrderButton}
    Tap    ${detailBackButton}

As I user I can add Food with correct Quantity & Price
    Sleep    3
    Tap Food Salad
    Wait Until Element Is Visible    ${detailFoodTitle}
    Element Text Should Be    ${detailOrderCount}    0
    Element Text Should Be    ${detailOrderButtonTitle}    Add to Cart: 0 Rupiah
    Tap    ${detailIncreaseButton}
    Tap    ${detailIncreaseButton}
    Sleep    3
    Element Text Should Be    ${detailOrderCount}    2
    Element Text Should Be    ${detailOrderButtonTitle}    Add to Cart: 85000 Rupiah
    Element Should Be Enabled    ${detailOrderButton}
    Tap    ${detailBackButton}
