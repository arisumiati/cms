* Settings *
Documentation  modul objek lelang bike
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulMasterWarna/locator/ModulListWarna.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
Verify Toggle Status Aktif
    [Documentation]     TC-TSW-001
    Sleep   3s
    Go To   ${BASE_URL}master-data/colors
    Search Data Warna
    Ubah Switch Status Menjadi OFF
    Konfirmasi Ubah Status
    Sleep   1s

Verify Toggle Status Aktif OFF To ON
    [Documentation]     TC-TSW-002
    Sleep   3s
    Go To   ${BASE_URL}master-data/colors
    Search Data Warna
    Ubah Switch Status Menjadi ON
    Konfirmasi Ubah Status
    Sleep   1s