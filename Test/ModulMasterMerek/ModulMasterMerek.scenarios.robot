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
# Add Master Merek Successfully
#     [documentation]  This test case verifies that user is able to add new merek
#     [tags]  add
#     Sleep    3s
#     Go To    ${BASE_URL}v2/brands
#     Click Button Add New Merek
#     Input Merek Details
#     Click Button Ya Simpan Merek
#     Click Button Ya Mengerti

All filter Master Merek Successfully
    [documentation]  This test case verifies that user is able to filter merek
    [tags]  filter
    Sleep    3s
    Go To    ${BASE_URL}v2/brands
    Click Button Filter Merek
    Click Filter Status Aktif
    Click Filter Objek Lelang
    Sleep    2s
    Click Filter Merek
    Click Button Terapkan Filter
    Sleep    2s
    Click Button Filter Merek
    Click Hapus Filter Merek

Ubah status Master Merek Successfully
    [documentation]  This test case verifies that user is able to ubah status merek
    [tags]  ubah status
    Sleep    3s
    Click Button Filter Merek
    Click Filter Status Aktif
    Click Button Terapkan Filter
    Sleep    4s
    Click status Active Merek
    Click Button Ya Mengerti
    Sleep    3s
    Click Button Filter Merek
    Click status Inactive Merek
    Click Button Terapkan Filter
    Click Button Ya Mengerti

Search Master Merek Successfully
    [documentation]  This test case verifies that user is able to search merek
    [tags]  search
    Go To    ${BASE_URL}v2/brands
    Input Search Merek

# Delete Master Merek Successfully
#     [documentation]  This test case verifies that user is able to delete merek
#     [tags]  delete
#     Go To    ${BASE_URL}v2/brands
#     Click Button Delete
#     Kondirmasi Delete Merek


Dwonload all data Master Merek Successfully
    [documentation]  This test case verifies that user is able to download all data merek
    [tags]  download
    Sleep    3s
    Click Button Download Merek
    

    




