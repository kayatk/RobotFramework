*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}     http://www.practiceselenium.com/practice-form.html


*** Test Cases ***
Testing input values
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Selenium Speed    2seconds
    #Radio Button
    Select Radio Button    sex    Female
    Select Radio Button    exp    3
    #Select Check Box
    Select Checkbox    BlackTea
    Select Checkbox    RedTea
    
    Unselect Checkbox    BlackTea   
    close Browser
    
Test dropdown Listboxes
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Select From List By Label    continents    Asia 
    sleep    3
    Select From List By Index    continents    5
    sleep    2
    #Select From List By Value    Continents    value
    Select From List By Label    selenium_commands    Browser Commands
     Select From List By Label    selenium_commands   Wait Commands 
     Select From List By Index    selenium_commands    4
     Sleep    3
     Unselect From List By Label    selenium_commands    Browser Commands
            
    
