*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://demo.nopcommerce.com/
@{Credentials}    pavanoltraining@gmail.com     Test@123
${Email_txt}    id:Email
@{Credentials}    pavanoltraining@gmail.com     Test@123


*** Test Cases ***
Testing Inputbox
    Open Browserofcom
    maximize browser window
    # verify the Title
    title should be     nopCommerce demo store
    Click link      xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    #element visible
    element should be visible   ${Email_txt}
    #element    should not be visible   ${Email_txt}
    #Element Enable
    element should be enabled    ${Email_txt}
    Input text      ${Email_txt}    thillaikayatk@gmail.com
    sleep    5
    Clear element text      ${Email_txt}
    Close Browser


*** Keywords ***
Open Browserofcom
    open browser   ${URL}   chrome

