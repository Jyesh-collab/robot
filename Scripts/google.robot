*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.saucedemo.com/


*** Test Cases ***
Open Google
    Open Browser    ${URL}    ${BROWSER}
    Sleep           3 seconds
    ${class_value}=  Get Element Attribute    //button[@id='openwindow']    class
    Close Browser
