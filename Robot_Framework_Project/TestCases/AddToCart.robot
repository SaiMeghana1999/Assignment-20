*** Settings ***
Documentation    Test Case 3 - Verify Add Product To Cart

Resource    ../Resources/Variables.robot
Resource    ../Resources/Locators.robot
Resource    ../Resources/Keywords.robot

*** Test Cases ***

Add Product To Cart

    Launch Browser
    Validate Login Page
    Login To Application    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Verify Successful Login
    Add Backpack To Cart
    Open Shopping Cart
    Verify Backpack In Cart
    Set Test Message    Product Added Successfully
    Close Browser Session