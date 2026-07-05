*** Settings ***
Documentation    Test Case 1 - Verify Login with Valid Credentials

Resource    ../Resources/Variables.robot
Resource    ../Resources/Locators.robot
Resource    ../Resources/Keywords.robot

*** Test Cases ***

Login With Valid Credentials

    Launch Browser

    Validate Login Page

    Login To Application    ${VALID_USERNAME}    ${VALID_PASSWORD}

    Verify Successful Login

    Set Test Message    Valid Login Successful

    Close Browser Session