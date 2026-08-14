*** Settings ***
Documentation  modul list lelang
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulLokasiUnit/locator/ModulFilterLokasiUnit.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario


*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
Verify Search Data by Keyword
    [documentation]  TC-LU-001
    Sleep    3s
    Go To    ${BASE_URL}master-data/lokasi-unit
    klik Filter
    Input Filter
    Klik Button Tampilkan
    Sleep    2s

Verify Search Data when No Match Found
    [documentation]  TC-LU-002
    Sleep    3s
    Go To    ${BASE_URL}master-data/lokasi-unit
    Input Field Search
    Sleep    3s

Verify Filter Data by Kode Lokasi Unit Only
    [documentation]  TC-LU-003
    Sleep    3s
    Go To    ${BASE_URL}master-data/lokasi-unit
    klik Filter
    Input Filter Kode Lokasi
    Klik Button Tampilkan
    Sleep    3s

Verify Filter Data by Lokasi Unit Only
    [documentation]  TC-LU-004
    Sleep    3s
    Go To    ${BASE_URL}master-data/lokasi-unit
    klik Filter
    Input Filter Lokasi Unit
    Klik Button Tampilkan
    Sleep    3s

Verify Filter Data by Nama Only
    [documentation]  TC-LU-005
    Sleep    3s
    Go To    ${BASE_URL}master-data/lokasi-unit
    klik Filter
    Input Filter Nama PIC
    Klik Button Tampilkan
    Sleep    3s

Verify Filter Data by Nomor PIC Only
    [documentation]  TC-LU-006
    Sleep    3s
    Go To    ${BASE_URL}master-data/lokasi-unit
    klik Filter
    Input Nomor PIC
    Klik Button Tampilkan
    Sleep    3s

Verify Filter Data using Multiple Criteria
    [documentation]  TC-LU-007
    Sleep    3s
    Go To    ${BASE_URL}master-data/lokasi-unit
    klik Filter
    Input filter Multiple
    Klik Button Tampilkan
    Sleep    3s

Verify Reset Filter Selection
    [documentation]  TC-LU-008
    Sleep    3s
    Go To    ${BASE_URL}master-data/lokasi-unit
    klik Filter
    Input Filter
    Klik Button Hapus
    klik Filter
    Sleep    3s

Verify Filter Result No Data Matches
    [documentation]  TC-LU-010
    Sleep    3s
    Go To    ${BASE_URL}master-data/lokasi-unit
    klik Filter
    Input filter Kode_Invalid
    Klik Button Tampilkan
    Sleep    3s

Verify Search Bar Functionality in Combination
    [documentation]  TC-LU-009
    Sleep    3s
    Go To    ${BASE_URL}master-data/lokasi-unit
    klik Filter
    Input Filter Kode Lokasi
    Klik Button Tampilkan
    Input Field Search
    Sleep    2s