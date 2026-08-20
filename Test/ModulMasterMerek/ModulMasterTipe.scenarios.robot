* Settings *
Documentation  modul objek lelang bike
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/modulMasterMerek/locator/ModulMasterTipe.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario


*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
#Verify Create Tipe with All
#    [documentation]  TC-TTP-001
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/tipe
#    Klik Button Tambah Tipe
#    Input Tambah Tipe
#    Klik Button Simpan Tipe
#    Sleep    1s

#Verify Validation Text for Empty
#    [documentation]  TC-TTP-002
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/tipe
#    Klik Button Tambah Tipe
#    Validasi Pesan Error Wajib Diisi
#    Sleep    1s

#Verify Cascading Dropdown
#    [documentation]  TC-TTP-003
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/tipe
#    Klik Button Tambah Tipe
#    Input Tambah Tipe BMW
#    Sleep    1s

#Verify Duplicate Tipe Name Validation in Same Model
#    [documentation]  TC-TTP-004
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/tipe
#    Klik Button Tambah Tipe
#    Input Tambah Tipe
#    Klik Button Simpan Tipe Existing
#    Sleep   1s

#Verify Upload Invalid File Format
#    [documentation]  TC-TTP-005
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/tipe
#    Klik Button Tambah Tipe
#    Validasi File Error
#    Sleep    1s

Verify Update Tipe Data with Valid Input
    [documentation]  TC-ETP-001
    Sleep    3s
    Go To    ${BASE_URL}master-data/tipe
    Search Data Tipe
    Klik Button Edit Tipe
    Input Edit Tipe
    Klik Button Simpan Edit Tipe
    Sleep    1s

Verify Duplicate Tipe Name on Edit
    [documentation]  TC-ETP-002
    Sleep    3s
    Go To    ${BASE_URL}master-data/tipe
    Search Data Tipe
    Klik Button Edit Tipe