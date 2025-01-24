*** Settings ***
Library           SeleniumLibrary
Library    Collections
Variables  ../Locators/heroku.py
Library    support.py

*** Variables ***
${BROWSER}        chrome


*** Test Cases ***
Test radio button operations
    ${URL}=    support.Read Xml    heroku_URL
    ${alerttx}=    support.Read Xml    alert_text
    Open Browser    ${URL}    ${BROWSER}
    Sleep    3
    Maximize Browser Window
    Click Element    ${click_for_JS_alert}
    ${Text}=    Handle Alert  # Default handle is YES

    Click Element    ${click_for_JS_confirm}
    ${Text}=    Handle Alert    action=DISMISS  #If you want to dismiss need to pass DISMISS here


    Click Element    ${click_for_JS_prompt}
    Sleep    3
    Input Text Into Alert    ${alerttx}  #To Pass Text in alert input box
    Sleep    3

    



    