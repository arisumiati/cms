* Settings *
Documentation  modul bidding log
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulBalaiLelang/ModulAddBalaiLelang.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Sleep    5s
    Login Scenario

*** Test Cases ***
Verify Master Add Lelang
    [Documentation]     Add Lelang
    Sleep    5s
    Go To    ${BASE_URL}master-data/balai-Lelang
    Search Loop Alamat Balai Lelang From Excel
    Sleep    2s