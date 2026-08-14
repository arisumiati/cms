* Settings *
Documentation  modul objek lelang bike
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulMasterWarna/locator/ModulMasterWarna.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
Verify Create Warna with All Valid Data
    [Documentation]     TC-TW-001
    Sleep    3s
    Go To    ${BASE_URL}master-data/colors
    Klik Button Tambah Data
    Input Tambah Warna
    Klik Simpan Data
    Sleep    1s

Verify Validation Text for Empty Mandatory Fields
    [Documentation]     TC-TW-002
    Sleep    3s
    Go To    ${BASE_URL}master-data/colors
    Klik Button Tambah Data
    Validasi Error Mandatory Fields
    Sleep    1s

Verify Hex Warna Invalid Format
    [Documentation]     TC-TW-003
    Sleep    3s
    Go To    ${BASE_URL}master-data/colors
    Klik Button Tambah Data
    Input Error Hex Warna Fields
    Klik Simpan Data Invalid
    Sleep    1s

Verify Duplicate Kode Warna Validation
    [Documentation]     TC-TW-004
    Sleep    3s
    Go To    ${BASE_URL}master-data/colors
    Klik Button Tambah Data
    Input Tambah Warna
    Klik Simpan Kode Warna Duplicate
    Sleep    1s