*** Settings ***
Library             AppiumLibrary
Variables           ../resources/home_locators.yaml
Variables           ../resources/detail_locators.yaml
Variables           ../resources/cart_locators.yaml
Resource            ../resources/home_page.robot

Suite Setup         Start Session Apps
Suite Teardown      Close Apps
