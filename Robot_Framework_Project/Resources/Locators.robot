*** Variables ***

########### Login Page ##########

${USERNAME_TEXTBOX}          id=user-name
${PASSWORD_TEXTBOX}          id=password
${LOGIN_BUTTON}              id=login-button
${LOGIN_ERROR}               xpath=//h3[@data-test='error']

########## Products Page ##########

${PRODUCT_TITLE}             xpath=//span[@class='title']
${ADD_BIKE_LIGHT}            id=add-to-cart-sauce-labs-bike-light
${ADD_BACKPACK}              id=add-to-cart-sauce-labs-backpack
${BACKPACK_CART}       xpath=//div[text()='Sauce Labs Backpack']
${BIKE_LIGHT_CART}      xpath=//div[text()='Sauce Labs Bike Light']
${SHOPPING_CART}    xpath=//a[@class='shopping_cart_link']
#${SHOPPING_CART}             id=shopping_cart_container

########## Cart Page ##########

${CHECKOUT_BUTTON}           id=checkout

${FIRSTNAME_FIELD}      id=first-name
${LASTNAME_FIELD}       id=last-name
${POSTALCODE_FIELD}     id=postal-code
${CONTINUE_BUTTON}      id=continue

########## Checkout Overview ##########

${FINISH_BUTTON}             id=finish

${THANKYOU_MESSAGE}     xpath=//h2[text()='Thank you for your order!']


