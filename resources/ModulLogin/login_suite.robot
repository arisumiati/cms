*** Settings ***
Documentation     Login Suite
Resource           login_keywords.robot
Variables    ../../config/dev_config_cms.py

*** Keywords ***
Login Scenario
    [Tags]    login
    Login    ${user_login}    ${pass_login}