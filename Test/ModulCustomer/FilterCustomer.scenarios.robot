* Settings *
Documentation   modul bidding log
Library          SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulCustomer/FilterModulCustomer.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
#Verify E2E Filter Kombinasi Valid (Happy Path)
#    [documentation]  TC-E2E-001
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#
#    Input Filter
#    Sleep   1s

#Verify Filter Berdasarkan Single Field (Nomor Customer)
#    [documentation]  TC_FLT_001    
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#
#    Input Single Field
#    Sleep   1s

# Verify Pencarian Partial / Substring (Nama Customer / Email / No Telp)
#    [documentation]  TC_FLT_002    
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#
#    Input Filter Partial
#    Sleep   1s

#Verify Filter Berdasarkan Dropdown Spesifik (Status Aktif / Tipe / Status Seller / Blacklist)
#    [documentation]  TC_FLT_003   
#    Sleep    3s
#   Go To    ${BASE_URL}master-data/customers
#
#    Input Filter Specific Tipe And Blacklist
#    Sleep   1s

#Verify Reset Filter Menggunakan Tombol Hapus
#    [documentation]  TC_FLT_004 
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#
#    Reset Filter Functionality
#    Sleep   1s

#Verify Filter Data Tidak Ditemukan (Empty State)
#    [documentation]  TC_FLT_005
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#
#    Filter Data Not Found Empty State
#    Sleep   1s

#Verify Input Karakter Spesial / Injection Check (Security Path)
#    [documentation]  TC_FLT_006
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#
#    Filter Security Injection Check
#    Sleep   1s

#Verify Ubah Status Aktif dari ON menjadi OFF
#    [documentation]  TC-LC-001      List
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#
#    Toggle Customer Active Status
#    Sleep   1s

#Verify Ubah Status Aktif dari OFF menjadi ON
#    [documentation]  TC-LC-002     List
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#
#    Toggle Customer Active Status Off To On
#    Sleep   1s

#Verify Ubah Status Aktif dari ON menjadi OFF
#    [documentation]  TC-LC-003     View
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#
#    Toggle Active Status On View Detail
#    Sleep   1s

#Verify Ubah Status Aktif dari OFF menjadi ON
#    [documentation]  TC-LC-004    View
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/customers
#
#    Toggle Active Status Off To On On View Detail
#    Sleep   1s
*** Test Cases ***
Verify E2E Filter Kombinasi Valid (Happy Path)
    [documentation]  TC-E2E-001
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers

    Input Filter
    Sleep   1s

Verify Filter Berdasarkan Single Field (Nomor Customer)
    [documentation]  TC_FLT_001    
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers

    Input Single Field
    Sleep   1s

 Verify Pencarian Partial / Substring (Nama Customer / Email / No Telp)
    [documentation]  TC_FLT_002    
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers

    Input Filter Partial
    Sleep   1s

Verify Filter Berdasarkan Dropdown Spesifik (Status Aktif / Tipe / Status Seller / Blacklist)
    [documentation]  TC_FLT_003   
    Sleep    3s
   Go To    ${BASE_URL}master-data/customers

    Input Filter Specific Tipe And Blacklist
    Sleep   1s

Verify Reset Filter Menggunakan Tombol Hapus
    [documentation]  TC_FLT_004 
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers

    Reset Filter Functionality
    Sleep   1s

Verify Filter Data Tidak Ditemukan (Empty State)
    [documentation]  TC_FLT_005
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers

    Filter Data Not Found Empty State
    Sleep   1s

Verify Input Karakter Spesial / Injection Check (Security Path)
    [documentation]  TC_FLT_006
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers

    Filter Security Injection Check
    Sleep   1s

Verify Ubah Status Aktif dari ON menjadi OFF
    [documentation]  TC-LC-001      List
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers

    Toggle Customer Active Status
    Sleep   1s

Verify Ubah Status Aktif dari OFF menjadi ON
    [documentation]  TC-LC-002     List
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers

    Toggle Customer Active Status Off To On
    Sleep   1s

Verify Ubah Status Aktif dari ON menjadi OFF
    [documentation]  TC-LC-003     View
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers

    Toggle Active Status On View Detail
    Sleep   1s

Verify Ubah Status Aktif dari OFF menjadi ON
    [documentation]  TC-LC-004    View
    Sleep    3s
    Go To    ${BASE_URL}master-data/customers

    Toggle Active Status Off To On On View Detail
    Sleep   1s