*** Settings ***
Library    SeleniumLibrary    
Suite Setup    Log    I am inside Test Suite Setup
Suite Teardown    Log    I am inside Test Suite Teardown 
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Test Teardown
Default Tags    sanity         

*** Variables ***
${URL}    https://courseweb.sliit.lk/ 
@{Credentials}    IT167654    hjgjdfhss

*** Keywords ***
LoginKW
    Input Text    id=inputName    ${Credentials}[0]
    Input Text    id=inputPassword     ${Credentials}[1]    
    Press Keys    id=inputPassword    ENTER   

*** Test Cases ***
MyFirstTest
    Log    Hello world!!    

FirstSeleniumTest
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    5
    Input Text    name=q    SLIIT 
    Press Keys    name=q    ENTER
    # Click Button    name=btnK    
    Sleep    2     
    Close Browser
    Log    Test Completed
    
LoginTestSelenium
    [Tags]    smoke
    [Documentation]    This the login test using selenium library
    Open Browser    ${URL}    chrome
    Sleep    2
    # Click Element    link=Learn more   
    # Click Element    link=Sign in       
   LoginKW
     Sleep    3
    Click Element    link=IT16123182 kayaththiri Thillairasa    
    Click Element    link=Log out    
    Sleep    2     
    Close Browser
            
    
