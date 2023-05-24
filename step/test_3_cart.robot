*** Settings ***
Library             AppiumLibrary
Variables           ../resources/home_locators.yaml
Variables           ../resources/detail_locators.yaml
Variables           ../resources/cart_locators.yaml
Resource            ../resources/home_page.robot

Suite Setup         Start Session Apps
Suite Teardown      Close Apps


*** Test Cases ***
As I user I want to open empty Cart Page
    Tap Cart Menu
    Sleep    3
    Wait Until Element Is Visible    ${cartOrderButton}
    Element Should Be Disabled    ${cartOrderButton}
    Element Text Should Be    ${cartOrderButtonTitle}    Total Order: 0 Rupiah
    Element Text Should Be    ${cartEmptyText}    No item on the Cart
    Tap Home Menu
