*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}  https://demo.nopcommerce.com/
@{Credentials}    pavanoltraining@gmail.com     Test@123

*** Test Cases ***
LoginTest
    open browser    ${URL}      chrome
    Login
    close Browser



*** Keywords ***
Login
    Click link  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    input text  id:Email    ${Credentials}[0]
    Input text  id:Password     ${Credentials}[1]
    Click Element   xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/input
