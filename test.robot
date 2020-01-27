*** Settings ***
Library           Selenium2Library


*** Variables ***
${Browser}  Chrome
${URL}  https://www.facebook.com/

*** Test Cases ***

Robot First Test Case

    Open Browser    ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  id:email  test
    Input Text  id:pass     test
    Click Button    xpath://input[@type='submit']
    Click Element   xpath://a[@href='https://www.facebook.com/recover/initiate/?ars=facebook_login']
