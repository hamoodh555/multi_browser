*** Settings ***
Library           SeleniumLibrary


*** Variables ***
${LOGIN URL}      http://cvm.xerago.net/
${browser_}        chrome
${excel_file}     I:/testdata.xls

*** Test Cases ***
Valid Credentials Test
    Open Browser    ${LOGIN URL}    ${browser_}
    Maximize Browser Window
    Wait Until Element Is Enabled    //div[@class='login-footertxt']/p
    Element Text Should Be    //label[@class='loginLabel']    Username
    Element Text Should Be    //label[@for='form_password']    Password
    SeleniumLibrary.Input Text    id=form_username    cvmcreator
    SeleniumLibrary.Input Text    id=form_password    cvmcreator@123
    Click Button    form_login

