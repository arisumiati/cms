* Settings *
Documentation  modul objek lelang bike
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulMasterWarna/locator/ModulEditWarna.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
Verify Update Warna with Valid Data
    [Documentation]     TC-EW-001
    Sleep   3s
    Go To   ${BASE_URL}master-data/colors
    Search Value
    Edit Warna
    Klik Simpan Data
    Sleep   1s

Verify Save Form Without Making Any Changes
    [Documentation]     TC-EW-002
    Sleep   3s
    Go To   ${BASE_URL}master-data/colors
    Search Value
    Klik Simpan Data
    Sleep   1s