#*** Settings ***
#
#Library    SeleniumLibrary
#
#Resource    Variables.robot
#Resource    Locators.robot
#
#*** Keywords ***
#
#########################################################
## Launch Browser
#########################################################
#
#Launch Browser
#
#    [Documentation]    Opens Chrome browser and launches SauceDemo application.
#
#    Open Browser    ${URL}    ${BROWSER}
#
#    Maximize Browser Window
#
#
#########################################################
## Validate Login Page
#########################################################
#
#Validate Login Page
#
#    [Documentation]    Verify URL and Title of Login Page.
#
#    ${current_url}=    Get Location
#    Should Be Equal As Strings    ${current_url}    ${EXPECTED_URL}
#
#    ${page_title}=    Get Title
#    Should Be Equal As Strings    ${page_title}    ${EXPECTED_TITLE}
#
#    Log To Console    URL : ${current_url}
#
#    Log To Console    Title : ${page_title}
#
#
#########################################################
## Login
#########################################################
#
#Login To Application
#
#    [Documentation]    Login using Username and Password.
#
#    [Arguments]    ${username}    ${password}
#
#    Input Text        ${USERNAME_TEXTBOX}    ${username}
#
#    Input Password    ${PASSWORD_TEXTBOX}    ${password}
#
#    Click Button      ${LOGIN_BUTTON}
#
#
#########################################################
## Verify Successful Login
#########################################################
#
#Verify Successful Login
#
#    [Documentation]    Verify Products page is displayed.
#
#    Wait Until Element Is Visible    ${PRODUCT_TITLE}
#
#    Element Text Should Be    ${PRODUCT_TITLE}    ${PRODUCTS_PAGE}
#
#    Log To Console    Login Successful
#
#
#########################################################
## Verify Invalid Login
#########################################################
#
#Verify Invalid Login
#
#    [Documentation]    Verify Invalid Login Error.
#
#    Wait Until Element Is Visible    ${LOGIN_ERROR}
#
#    Element Text Should Be    ${LOGIN_ERROR}    ${ERROR_MESSAGE}
#
#    Log To Console    Invalid Login Verified
#
#
#########################################################
## Add Backpack To Cart
#########################################################
#
#Add Backpack To Cart
#
#    [Documentation]    Adds Backpack into Shopping Cart.
#
#    Click Button    ${ADD_BACKPACK}
#
#
#########################################################
## Add Multiple Products
#########################################################
#
#Add Multiple Products
#
#    [Documentation]    Adds Backpack and Bike Light.
#
#    Click Button    ${ADD_BACKPACK}
#
#    Click Button    ${ADD_BIKE_LIGHT}
#
#
#########################################################
## Open Shopping Cart
#########################################################
#
#Open Shopping Cart
#
#    [Documentation]    Opens Shopping Cart.
#
#    Click Element    ${SHOPPING_CART}
#
#
#########################################################
## Verify Product In Cart
#########################################################
#
#Verify Backpack In Cart
#    Wait Until Element Is Visible    ${BACKPACK_CART}    10s
#    Element Should Be Visible        ${BACKPACK_CART}
#
#Verify Bike Light In Cart
#    Wait Until Element Is Visible    ${BIKE_LIGHT_CART}    10s
#    Element Should Be Visible        ${BIKE_LIGHT_CART}
#
#########################################################
## Checkout
#########################################################
#Add Bike Light To Cart
#    Click Button    ${ADD_BIKE_LIGHT}
#
#Proceed To Checkout
#
#    Wait Until Element Is Visible    ${CHECKOUT_BUTTON}    10s
#    Click Button    ${CHECKOUT_BUTTON}
#
#    Wait Until Element Is Visible    ${FIRSTNAME_FIELD}    15s
#
#Enter Checkout Information
#
#    Wait Until Element Is Visible    ${FIRSTNAME_FIELD}    15s
#
#    Input Text    ${FIRSTNAME_FIELD}    ${FIRST_NAME}
#
#    Input Text    ${LASTNAME_FIELD}     ${LAST_NAME}
#
#    Input Text    ${POSTALCODE_FIELD}   ${POSTAL_CODE}
#
#Continue Checkout
#
#    Wait Until Element Is Visible    ${CONTINUE_BUTTON}    10s
#
#    Click Button    ${CONTINUE_BUTTON}
#
#Verify Checkout Summary
#
#    Wait Until Page Contains Element    xpath=//span[text()='Checkout: Overview']    15s
#
#    Element Should Be Visible    ${BACKPACK_CART}
#
#    Element Should Be Visible    ${BIKE_LIGHT_CART}
#
#########################################################
## Finish Checkout
#########################################################
#
#Finish Order
#
#    [Documentation]    Complete the Order.
#
#    Click Button    ${FINISH_BUTTON}
#
#    Wait Until Element Is Visible    ${THANKYOU_MESSAGE}
#
#    Page Should Contain    Thank you for your order!
#
#
#########################################################
## Close Browser
#########################################################
#
#Close Browser Session
#
#    [Documentation]    Close Browser.
#
#    Close Browser



*** Settings ***

Library    SeleniumLibrary
Resource    Variables.robot
Resource    Locators.robot

*** Keywords ***

######### Launch Browser #########

Launch Browser

    [Documentation]    Opens Chrome browser and launches SauceDemo application.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

######### Validation for Login Page #########

Validate Login Page

    [Documentation]    Verify URL and Title of Login Page.
    ${current_url}=    Get Location
    Should Be Equal As Strings    ${current_url}    ${EXPECTED_URL}

    ${page_title}=    Get Title
    Should Be Equal As Strings    ${page_title}    ${EXPECTED_TITLE}

    Log To Console    URL : ${current_url}
    Log To Console    Title : ${page_title}


############################Login ############################

Login To Application

    [Documentation]    Login using Username and Password.
    [Arguments]    ${username}    ${password}
    Input Text        ${USERNAME_TEXTBOX}    ${username}
    Input Password    ${PASSWORD_TEXTBOX}    ${password}
    Click Button      ${LOGIN_BUTTON}


########Verify Successful Login #######

Verify Successful Login

    [Documentation]    Verify Products page is displayed.
    Wait Until Element Is Visible    ${PRODUCT_TITLE}
    Element Text Should Be    ${PRODUCT_TITLE}    ${PRODUCTS_PAGE}
    Log To Console    Login Successful


########### Verify Invalid Login ###################

Verify Invalid Login

    [Documentation]    Verify Invalid Login Error.
    Wait Until Element Is Visible    ${LOGIN_ERROR}
    Element Text Should Be    ${LOGIN_ERROR}    ${ERROR_MESSAGE}
    Log To Console    Invalid Login Verified


#################### Add Backpack To Cart ###################

Add Backpack To Cart

    [Documentation]    Adds Backpack into Shopping Cart.
    Click Button    ${ADD_BACKPACK}

############## Add Multiple Products ###################

Add Multiple Products

    [Documentation]    Adds Backpack and Bike Light.
    Click Button    ${ADD_BACKPACK}
    Click Button    ${ADD_BIKE_LIGHT}

########### Open Shopping Cart #############

Open Shopping Cart

    [Documentation]    Opens Shopping Cart.

    Wait Until Element Is Visible    ${SHOPPING_CART}    20s
    Click Element    ${SHOPPING_CART}

    Wait Until Page Contains Element    id=checkout    20s

    ${url}=    Get Location
    Log To Console    Current URL = ${url}

    Log To Console    Cart Page Loaded Successfully


############## Verify Product In Cart #############

Verify Backpack In Cart
    Wait Until Element Is Visible    ${BACKPACK_CART}    10s
    Element Should Be Visible        ${BACKPACK_CART}

Verify Bike Light In Cart
    Wait Until Element Is Visible    ${BIKE_LIGHT_CART}    10s
    Element Should Be Visible        ${BIKE_LIGHT_CART}


############## Checkout #############

Add Bike Light To Cart
    Click Button    ${ADD_BIKE_LIGHT}

Proceed To Checkout

    [Documentation]    Proceed from Cart page to Checkout Information page.

    ${url}=    Get Location
    Log To Console    URL Before Checkout = ${url}

    Should Contain    ${url}    cart.html

    Wait Until Element Is Visible    xpath=//button[@id='checkout']    20s
    Wait Until Element Is Enabled    xpath=//button[@id='checkout']    20s

    Scroll Element Into View    xpath=//button[@id='checkout']

    Sleep    2s

    Execute JavaScript    document.getElementById('checkout').click();

    Wait Until Keyword Succeeds    10x    2s    Location Should Contain    checkout-step-one.html

    Wait Until Element Is Visible    id=first-name    20s

    Log To Console    Checkout Page Opened Successfully

Enter Checkout Information

    Wait Until Element Is Visible    id=first-name    20s

    Clear Element Text    id=first-name
    Input Text            id=first-name    ${FIRST_NAME}

    Clear Element Text    id=last-name
    Input Text            id=last-name     ${LAST_NAME}

    Clear Element Text    id=postal-code
    Input Text            id=postal-code   ${POSTAL_CODE}

    Log To Console    Checkout Information Entered

Continue Checkout

    [Documentation]    Click Continue and navigate to Checkout Overview page.

    Wait Until Element Is Visible    id=continue    20s
    Wait Until Element Is Enabled    id=continue    20s

    Scroll Element Into View    id=continue
    Sleep    1s

    Execute JavaScript    document.getElementById("continue").click();

    Wait Until Keyword Succeeds    10x    2s    Location Should Contain    checkout-step-two.html

    ${url}=    Get Location
    Log To Console    URL After Continue = ${url}

    Wait Until Element Is Visible    id=finish    20s

    Log To Console    Checkout Overview Page Opened
    
Verify Checkout Summary

    Location Should Contain    checkout-step-two.html

    Wait Until Element Is Visible    xpath=//button[@id='finish']    20s

    Page Should Contain    Sauce Labs Backpack
    Page Should Contain    Sauce Labs Bike Light

    Log To Console    Checkout Summary Verified

############## Finish Checkout #############

Finish Order

    Wait Until Element Is Visible    id=finish    20s

    Scroll Element Into View    id=finish

    Execute JavaScript    document.getElementById("finish").click();

    Wait Until Keyword Succeeds    10x    2s    Location Should Contain    checkout-complete.html

    Wait Until Element Is Visible    ${THANKYOU_MESSAGE}    20s

    Element Text Should Be    ${THANKYOU_MESSAGE}    Thank you for your order!

    Log To Console    Order Completed Successfully

############## Close Browser #############

Close Browser Session
    Close Browser


