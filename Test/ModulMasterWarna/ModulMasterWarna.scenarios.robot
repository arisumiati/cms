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
# Add Master Warna Successfully
#     [documentation]  This test case verifies that user is able to add master warna
#     [tags]  add
#     Sleep    3s
#     Go To    ${BASE_URL}v2/colors
#     Click Button Add New Warna
#     Click Button Ya Simpan Warna
#     Click Button Ya Mengerti Warna

All Filter Successfully
    [documentation]  This test case verifies that user is able to filter master warna by kode
    [tags]  filter
    Sleep    3s
    Go To    ${BASE_URL}v2/colors
    Click Button Filter Warna
    Click Elenent Select Filter Warna
    Click Button Filter Warna
    Click Hapus Filter Warna

Seach Master Warna By Kode Successfully
    search Warna By Kode

Kombinasi Filter dan Search Warna Successfully
    [documentation]  This test case verifies that user is able to kombinasi filter dan search warna
    [tags]  kombinasi
    Sleep    3s
    Go To    ${BASE_URL}v2/colors
    Click Elenent Select Filter Warna
    search Warna By Kode