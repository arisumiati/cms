* Settings *
Documentation  modul bidding log
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulSeller/ModulSeller.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Sleep    5s
    Login Scenario


*** Test Cases ***
Verify Add Seller
    [Documentation]     Add Seller
    Sleep       5s
    Go To       ${BASE_URL}master-data/seller
    Search Seller
    Process Add All Sub Sellers From Excel
    Sleep       1s