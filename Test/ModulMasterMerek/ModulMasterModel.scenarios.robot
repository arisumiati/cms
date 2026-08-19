* Settings *
Documentation  modul objek lelang bike
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/modulMasterMerek/locator/ModulMasterModel.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario


*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
#Verify Create Model with All Valid Data
#    [documentation]  TC-TSM-001
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/model
#    Klik Button Tambah Model
#    Input Objek lelang
#    Klik Button Simpan 
#    Sleep    1s

#Verify Validation Text for Empty Mandatory Fields
#    [documentation]  TC-TSM-001
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/model
#    Klik Button Tambah Model
#    Validasi Pesan Error Wajib Diisi 
#    Sleep    1s

#Verify Duplicate Model Name Validation in Same
#    [documentation]  TC-TSM-001
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/model
#    Klik Button Tambah Model
#   Input Objek lelang
#    Klik Button Simpan Invalid
#    Sleep    1s

Verify Update Model Data with Valid Input
    [documentation]  TC-TSM-001
    Sleep    3s
    Go To    ${BASE_URL}master-data/model
    Search Model
    Klik Button Edit
    Input Edit Model
    Klik Button Simpan Edit 
    Sleep   1s

Verify Duplicate Model Name Validation Edit
    [documentation]  TC-EMD-002
    Sleep    3s
    Go To    ${BASE_URL}master-data/model
    Search Model
    Klik Button Edit
    Input Edit Model
    Klik Button Simpan Exsisting 
    Sleep   1s