*** Settings ***
Documentation  modul list lelang
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulLokasiUnit/locator/ModulLokasiUnit.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario


*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
Verify Create Lokasi Unit with All Valid Data
    [documentation]  TC-BL-001
    Sleep    3s
    Go To    ${BASE_URL}master-data/lokasi-unit
    Klik Button Tambah
    Input Lokasi Unit Details
    Klik Button Simpan 
    Sleep    1s

Verify Mandatory Field Validation
    [documentation]  TC-BL-002
    Sleep    3s
    Go To    ${BASE_URL}master-data/lokasi-unit
    Klik Button Tambah
    Validasi Error Mandatory Field
    Sleep    1s

Verify Duplicate Kode Lokasi Unit Input
    [documentation]  TC-BL-003
    Sleep    3s
    Go To    ${BASE_URL}master-data/lokasi-unit
    Klik Button Tambah
    Input Lokasi Unit Details
    Validasi Toast Error Duplicate Pool Code
    Sleep    1s

Verify Validation Text for Empty
    [documentation]  TC-BL-004
    Sleep    3s
    Go To    ${BASE_URL}master-data/lokasi-unit
    Klik Button Tambah
    Validasi Error Mandatory Specific Fields
    Sleep    1s 

Verify Validation Text for Invalid Length
    [documentation]  TC-BL-005
    Sleep    3s
    Go To    ${BASE_URL}master-data/lokasi-unit
    Klik Button Tambah
    Validasi Error Format Nomor PIC