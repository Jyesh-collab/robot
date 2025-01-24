*** Settings ***
Library           SeleniumLibrary
Library    Collections
Variables  ../Locators/katalon.py
Library    support.py

*** Variables ***
${BROWSER}        chrome

*** Test Cases ***
Test radio button operations
    ${URL}=    support.Read Xml    applicationurl
    Open Browser    ${URL}    ${BROWSER}
    Sleep    3
    Maximize Browser Window
    Element Should Be Visible    ${katalon_logo}
    Log    Logo is Visible
    Close Browser
    