*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://www.saucedemo.com/
${USERNAME}       standard_user
${PASSWORD}       secret_sauce
${BROWSER}        chrome
${Address_Fname}  Jyesh
${Address_Lname}  QA
${Address_PCode}  123

*** Test Cases ***
Login to SauceDemo
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text      id:user-name    ${USERNAME}
    Input Text      id:password     ${PASSWORD}
    Click Button    id:login-button
    Sleep           2 seconds
    Capture Page Screenshot
Add Item to Cart
    Click Element    id:add-to-cart-sauce-labs-backpack
Navigate to Checkout Screen
    Click Element    class:shopping_cart_link
Verify Checkout Flow
    Click Button    id:checkout
    Input Text      Id:first-name    ${Address_Fname}
    Input Text      Id:last-name     ${Address_Lname}
    Input Text      Id:postal-code   ${Address_PCode}
    Click Button    Id:continue
    Capture Page Screenshot
    Scroll Element Into View    class:footer_copy
    log             Scroll is done
    Capture Page Screenshot
    
    

