*** Settings ***
Library           SeleniumLibrary
Library    Collections
Variables  ../Locators/demoautomation.py
Library    support.py

*** Variables ***
${BROWSER}        chrome


*** Test Cases ***
Test Switching to frames
    ${URL}=    support.Read Xml    demoautoamtionURL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Select Frame    id:singleframe
    Input Text    //input[@type='text']    Testing
    Sleep    5
    Unselect Frame

    Close Browser



