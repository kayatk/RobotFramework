*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${URL}    HTTP://demowebshop.tricentis.com/register  
      
*** Test Cases ***
TCS1
    ${speed}=    Get Selenium Speed
    log to console    ${speed}
    open browser    ${URL}    chrome
    Maximize Browser Window
    #Sleep    1
    Set Selenium Speed    1
    
    #every statement will execute with 1 second delay
    Select Radio Button    Gender  F 
    Input Text    id=FirstName    Kayathiri
    Input Text    id=LastName    thillai
    Input Text    id=Email    thillaikayatk@gmail.com 
    Input Text    id=Password    kayatk123    
    Input Text    id=ConfirmPassword    kayatk123 
    ${speed}=    Get Selenium Speed          
    log to console    ${speed}
    Close Browser 
    
TCS2
    ${defspeed}=    Get Selenium Timeout
    Log To Console    ${defspeed}    
    open browser    ${URL}    chrome
    Maximize Browser Window
    Set Selenium Timeout    10
    #wait until page conditon will wait for 10 seconds 
    Wait Until Page Contains    Register  #5 seconds  
    
    ${defspeed}=    Get Selenium Timeout
    Log To Console    ${defspeed}
    
    Select Radio Button    Gender  F 
    Input Text    id=FirstName    Kayathiri
    Input Text    id=LastName    thillai
    Input Text    id=Email    thillaikayatk@gmail.com 
    Input Text    id=Password    kayatk123    
    Input Text    id=ConfirmPassword    kayatk123 
   
    Close Browser 
     
TCS3
         
    open browser    ${URL}    chrome
    Maximize Browser Window
    #Implicitwait - it will wait for few seconds without immediately throwing error-it will wait for the elemnet for mentioned seconds
    Set Selenium Implicit Wait    10
    Select Radio Button    Gender  F 
    Input Text    id=FirstName    Kayathiri
    Input Text    id=LastName    thillai
    Input Text    id=Email    thillaikayatk@gmail.com 
    Input Text    id=Password    kayatk123    
    Input Text    id=ConfirmPassword    kayatk123 
   
    Close Browser 
     
