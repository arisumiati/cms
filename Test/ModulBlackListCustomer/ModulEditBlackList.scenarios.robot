* Settings *
Documentation   modul bidding log
Library          SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulBlackListCustomer/ModulEditBlacklist.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
Mengubah data field dengan format data yang valid
    Sleep   3s
    Go To   ${BASE_URL}master-data/blacklist-customers
    search Data
    Insert Edit Data
    Klik Button Simpan
    Sleep   1s  