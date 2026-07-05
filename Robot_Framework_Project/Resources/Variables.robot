*** Variables ***

# ---------------- Browser ----------------

${BROWSER}                  chrome

# ---------------- Application URL ----------------

${URL}                      https://www.saucedemo.com/

# ---------------- Login Credentials ----------------

${VALID_USERNAME}           standard_user
${VALID_PASSWORD}           secret_sauce

${INVALID_USERNAME}         invalid_user
${INVALID_PASSWORD}         invalid_password

# ---------------- Expected Values ----------------

${EXPECTED_URL}             https://www.saucedemo.com/

${EXPECTED_TITLE}           Swag Labs

${PRODUCTS_PAGE}            Products

${ERROR_MESSAGE}            Epic sadface: Username and password do not match any user in this service

# ---------------- Product Names ----------------

${PRODUCT1}                 Sauce Labs Backpack

${PRODUCT2}                 Sauce Labs Bike Light

# ---------------- Checkout Details ----------------

${FIRST_NAME}      Meghana
${LAST_NAME}       Kristi
${POSTAL_CODE}     500001
