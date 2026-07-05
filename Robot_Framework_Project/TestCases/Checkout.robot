#*** Settings ***
#Documentation    Test Case 4 - Verify Checkout Process
#
#Resource    ../Resources/Variables.robot
#Resource    ../Resources/Locators.robot
#Resource    ../Resources/Keywords.robot
#
#*** Test Cases ***
#
#Checkout Multiple Products
#
#    Launch Browser
#
#    Validate Login Page
#
#    Login To SauceDemo
#
#    Add Backpack To Cart
#    Add Bike Light To Cart
#
#    Click Element    class=shopping_cart_link
#
#    Wait Until Element Is Visible    id=checkout
#
#    Click Button    id=checkout
#
#    Page Should Contain    Checkout: Your Information
#
#    Set Test Message    Checkout Successful
#
#    Close Browser Session


*** Settings ***

Documentation    Test Case 4 - Verify Checkout Process

Resource    ../Resources/Variables.robot
Resource    ../Resources/Locators.robot
Resource    ../Resources/Keywords.robot

*** Test Cases ***

Checkout Multiple Products

    Launch Browser
    Validate Login Page

    Login To Application    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Verify Successful Login

    Add Backpack To Cart
    Add Bike Light To Cart

    Open Shopping Cart
    ${url}=    Get Location
    Log To Console    TEST URL = ${url}

    Verify Backpack In Cart
    Verify Bike Light In Cart

    Proceed To Checkout
    Enter Checkout Information
    Continue Checkout
    Verify Checkout Summary
    Finish Order
    Set Test Message    Checkout Successful
    Close Browser Session


#Checkout Multiple Products
#
#    Launch Browser
#
#    Validate Login Page
#
#    Login To Application    ${VALID_USERNAME}    ${VALID_PASSWORD}
#
#    Verify Successful Login
#
#    Add Backpack To Cart
#    Add Bike Light To Cart
#
#    Open Shopping Cart
#
#    Verify Backpack In Cart
#    Verify Bike Light In Cart
#
#    Proceed To Checkout
#
#    Enter Checkout Information
#
#    Continue Checkout
#
#    Verify Checkout Summary
#
#    Set Test Message    Checkout Successful
#
#    Close Browser Session
