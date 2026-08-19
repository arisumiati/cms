* Settings *
Documentation  modul objek lelang bike
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/modulMasterMerek/locator/ModulMasterMerek.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
#Verify Create Merek with All Valid Data (Including Image)
#    [documentation]  TC-TM-001
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/merek
#    Klik Button Tambah
#    Pilih Objek Lelang Car
#    Klik Simpan Merk
#    Sleep    1s

#Verify Validation Text for Empty Mandatory Fields
#    [documentation]  TC-TM-002
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/merek
#    Klik Button Tambah
#    Validasi Pesan Error Wajib Diisi
#    Sleep    1s

#Verify Upload Invalid File Format for Gambar Merek
#    [documentation]  TC-TM-003
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/merek
#    Klik Button Tambah
#    Validasi Pesan Error Tipe File Tidak Valid
#    Sleep    1s

#Verify Upload File Exceeding Maximum Size
#    [documentation]  TC-TM-004
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/merek
#    Klik Button Tambah
#    Upload Oversized File Merek
#    Sleep    1s

#Verify Duplicate Kode Nama Validation
#    [documentation]  TC-TM-005
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/merek
#    Klik Button Tambah
#    Pilih Objek Lelang Car
#    Klik Simpan Merk Duplicate
#    Sleep    1s

#Verify Validation Text
#    [documentation]  TC-TW-002
#    Sleep    3s
#    Go To    ${BASE_URL}master-data/merek
#    Klik Button Tambah
#    Validasi Pesan Error Wajib Diisi
#    Sleep    1s

Verify Update Merek Data with Valid Input
     [documentation]  TC-EM-001
    Sleep    3s
    Go To    ${BASE_URL}master-data/merek
    Search Data Merek
    Klik Button Edit
    Input Edit Merek
    Klik Simpan Edit Merk
    Sleep    1s

Verify Save Form Without Making Any Changes
     [documentation]  TC-EM-002
    Sleep    3s
    Go To    ${BASE_URL}master-data/merek
    Search Data Merek
    Klik Button Edit
    Klik Simpan Edit Merk
    Sleep    1s