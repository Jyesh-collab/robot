*** Settings ***
Library           SeleniumLibrary
Library    Collections
Variables  ../Locators/letskodeit.py
Library    support.py

*** Variables ***
# ${BROWSER}        chrome


*** Test Cases ***
Test radio button operations
    # ${URL}=    support.Read Xml    letskodeit
    # Open Browser    ${URL}    ${BROWSER}
    Sleep    3
    Maximize Browser Window
    Click Element    ${Openwindow}
    Sleep    3
    ${win}=    Get Window Handles
    Switch Window    ${win}[1]
    Element Should Be Visible    //a[text() ='Sign In']
    Click Element    //a[text() ='Sign In']
    Capture Page Screenshot
    Sleep    3
    Close Window
    Switch Window    ${win}[0]
    Sleep    3
    Element Should Be Visible    ${Open_window}
    Close Browser


