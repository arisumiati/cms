* Settings *
Documentation   modul bidding log
Library          SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulCustomer/ModulCustomer.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
#Verify Successful Create Customer Perorangan dengan Showroom
#    [documentation]  TC-E2E-001     Tambah Peorangan
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#    
#    Click Button Add Customer
#    Sleep   1s
#
#    Input Step Customer
#    Click Button Selanjutnya
#    Input Step Bank
#    Click Button Selanjutnya
#    Input Step Other
#    Click Button Simpan
#    Sleep   1s

#Verify Successful Create Customer Perorangan tanpa Showroom dan Tujuan Beli
#    [documentation]  TC-E2E-002     Tambah Peorangan
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#    
#    Click Button Add Customer
#    Sleep   1s
#
#    Input Step Customer
#    Click Button Selanjutnya
#    Input Step Bank
#    Click Button Selanjutnya
#    Input Step Other Tanpa Showroom
#    Click Button

#Verify Successful Create Customer Coporate dengan Showroom
#    [documentation]  TC-E2E-003    Tambah Corporate
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#    
#    Click Button Add Customer
#    Sleep   1s
#
#    Input Step Customer Corporate
#    Click Button Selanjutnya
#    Input Step Bank
#    Click Button Selanjutnya
#    Input Step Other
#    Click Button Simpan
#    Sleep   1s

#Verify Successful Create Customer Coporate tanpa Showroom dan Tujuan Beli
#    [documentation]  TC-E2E-004    Tambah Corporate
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#    
#    Click Button Add Customer
#    Sleep   1s
#
#    Input Step Customer Corporate
#    Click Button Selanjutnya
#    Input Step Bank
#    Click Button Selanjutnya
#    Input Step Other Tanpa Showroom
#    Click Button Simpan
#    Sleep   1s

#Verify File Size Validation (> 2MB) in KTP dan NPWP
#    [documentation]  TC-E2E-005    
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#    
#    Click Button Add Customer
#    Sleep   1s
#
#    Validation File Size
#    Sleep   1s

#Verify Unsupported File Format in Customer
#    [documentation]  TC-E2E-006   
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#    
#    Click Button Add Customer
#    Sleep   1s
#
#    Validation Invalid File Format
#    Sleep   1s

#Verify Wajib Isi Field
#    [documentation]  TC-VAL-01  
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#    
#    Click Button Add Customer
#    Sleep   1s
#
#    Verify Mandatory Field PIC Validation
#    Sleep   1s
*** Test Cases ***
Verify Successful Create Customer Perorangan dengan Showroom
    [documentation]  TC-E2E-001     Tambah Peorangan
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers
    
    Click Button Add Customer
    Sleep   1s

    Input Step Customer
    Click Button Selanjutnya
    Input Step Bank
    Click Button Selanjutnya
    Input Step Other
    Click Button Simpan
    Sleep   1s

Verify Successful Create Customer Perorangan tanpa Showroom dan Tujuan Beli
    [documentation]  TC-E2E-002     Tambah Peorangan
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers
    
    Click Button Add Customer
    Sleep   1s

    Input Step Customer
    Click Button Selanjutnya
    Input Step Bank
    Click Button Selanjutnya
    Input Step Other Tanpa Showroom
    Click Button Simpan
    Sleep   1s

Verify Successful Create Customer Coporate dengan Showroom
    [documentation]  TC-E2E-003    Tambah Corporate
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers
    
    Click Button Add Customer
    Sleep   1s

    Input Step Customer Corporate
    Click Button Selanjutnya
    Input Step Bank
    Click Button Selanjutnya
    Input Step Other
    Click Button Simpan
    Sleep   1s

Verify Successful Create Customer Coporate tanpa Showroom dan Tujuan Beli
    [documentation]  TC-E2E-004    Tambah Corporate
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers
    
    Click Button Add Customer
    Sleep   1s

    Input Step Customer Corporate
    Click Button Selanjutnya
    Input Step Bank
    Click Button Selanjutnya
    Input Step Other Tanpa Showroom
    Click Button Simpan
    Sleep   1s

Verify File Size Validation (> 2MB) in KTP dan NPWP
    [documentation]  TC-E2E-005    
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers
    
    Click Button Add Customer
    Sleep   1s

    Validation File Size
    Sleep   1s

Verify Unsupported File Format in Customer
    [documentation]  TC-E2E-006   
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers
    
    Click Button Add Customer
    Sleep   1s

    Validation Invalid File Format
    Sleep   1s

Verify Wajib Isi Field
    [documentation]  TC-VAL-01  
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers
    
    Click Button Add Customer
    Sleep   1s

    Verify Mandatory Field PIC Validation
    Sleep   1s

Verify Input KTP & NPWP Invalid
    [documentation]  TC-VAL-02
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers
    
    Click Button Add Customer
    Sleep   1s

    Verify Invalid Format KTP And NPWP Validation
    Sleep   1s