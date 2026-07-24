*** Settings ***
Library    SeleniumLibrary
Variables    ../../config/dev_config_cms.py

*** Keywords ***
Login
    [Arguments]    ${username}    ${password}
    # Open Browser    ${BASE_URL}    ${HEADLESSBROWSER}    ${BROWSER}
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    10s
    Input Text    //input[@name='username']    ${username}
    Input Text    //input[@name='password']    ${password}
    Click Button    xpath=//button[text()='Login']