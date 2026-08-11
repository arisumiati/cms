* Settings *
Documentation  modul bidding log
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulSeller/ModulListSeller.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Sleep    5s
    Login Scenario


*** Test Cases ***
Verify Toggle Status Aktif from ON to OFF
    [Documentation]     TC-STA-001      Status Aktif
    Sleep       5s
    Go To       ${BASE_URL}master-data/seller
    Search Seller Data
    Sleep       2s

    Turn Off Status Switch
    Sleep       1s

Verify Toggle Status Aktif from OFF to ON
    [Documentation]     TC-STA-001      Status Aktif
    Sleep       5s
    Go To       ${BASE_URL}master-data/seller
    Search Seller Data
    Sleep       2s
    
    Turn On Status Switch
    Sleep       1s