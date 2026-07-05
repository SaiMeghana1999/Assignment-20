*** Settings ***
Documentation    Test Case 2 - Verify Login with Invalid Credentials

Resource    ../Resources/Variables.robot
Resource    ../Resources/Locators.robot
Resource    ../Resources/Keywords.robot

*** Test Cases ***

Login With Invalid Credentials

    Launch Browser
    Validate Login Page
    Login To Application    ${INVALID_USERNAME}    ${INVALID_PASSWORD}
    Verify Invalid Login
    Set Test Message    Invalid Login Verified
    Close Browser Session