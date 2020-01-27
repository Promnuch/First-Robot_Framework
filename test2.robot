*** Settings ***
Library           Selenium2Library


*** Variables ***
${SERVER}         http://www.google.com
${BROWSER}        Chrome


*** Test Cases ***
Search Siam Chamnankit Family from google
    Open google page
    Search Siam Chamnankit Family


*** Keywords ***
Open google page
    Open Browser    ${SERVER}    ${BROWSER}


Search Siam Chamnankit Family
    Input Text    id=lst-ib    Siam Chamnankit Family
    Click Button    name=btnK
    Wait Until Page Contains    Siam Chamnankit Family