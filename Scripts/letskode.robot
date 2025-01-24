*** Settings ***
Library           SeleniumLibrary
Library    Collections

*** Variables ***
${BROWSER}        edge
${URL}            https://www.letskodeit.com/practice

*** Test Cases ***
Test radio button operations
    Open Browser    ${URL}    ${BROWSER}
    Sleep    3
    Radio Button Should Not Be Selected    cars
    Log    No Radio button is selected
    Select Radio Button    cars   bmw
    Sleep    3
    Radio Button Should Be Set To    cars    bmw
    Log    The bmw radio button is selected
    Close Browser

Test checkbox operations
    Open Browser    ${URL}    ${BROWSER}
    Sleep    3
    Checkbox Should Not Be Selected    cars
    Log    No checkbox is selected
    Select Checkbox    benz
    Sleep    3
    Checkbox Should Be Selected    benz
    Log  Benz is selected
    Unselect Checkbox    benz
    Select Checkbox    honda
    Sleep    3
    Checkbox Should Be Selected    honda
    Log  Benz is selected
    Unselect Checkbox    honda
    Select Checkbox    bmw
    Sleep    3
    Checkbox Should Be Selected    bmw
    Log  Benz is selected
    Unselect Checkbox    bmw
    Select Checkbox    cars
    Sleep    3
    ${checkbox_count}    Get Element Count    //legend[text()='Checkbox Example']/../label/input[@type='checkbox']
    Should Be True    ${checkbox_count}==3
    Close Browser
    





    

