* Settings *
Documentation  modul objek lelang elektronik
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulObjekLelang/locator/ModulObjekLelangElektronik.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
# Add Objek Lelang Dokumen Ada
#     [documentation]  This test case verifies that user is able to show list data mou
#     [tags]  show
#     Go To    ${BASE_URL}v2/objects
#     Click Button Add New Objek Lelang
#     Input Objek Lelang Step Unit
#     Click Button Selanjutnya
#     Input Objek Lelang Step Dokumen Lengkap
#     Click Button Selanjutnya
#     Input Objek Lelang Step Foto
#     Click Button Ya Simpan Objek Lelang
#     Click Button Ya Mengerti

# Add Objek Lelang Dokumen Tidak Ada
#     [documentation]  This test case verifies that user is able to show list data mou
#     [tags]  show
#     Go To    ${BASE_URL}v2/objects
#     Click Button Add New Objek Lelang
#     Input Objek Lelang Step Unit
#     Click Button Selanjutnya
#     Input Objek Lelang Step Dokumen Tidak Lengkap
#     Click Button Selanjutnya
#     Input Objek Lelang Step Foto
#     Click Button Ya Simpan Objek Lelang
#     Click Button Ya Mengerti

Add objek Lelang Step Dokumen NA
    [documentation]  This test case verifies that user is able to show list data mou
    [tags]  show
    Go To    ${BASE_URL}v2/objects
    Click Button Add New Objek Lelang
    Input Objek Lelang Step Unit
    Click Button Selanjutnya
    Input Objek Lelang Step Dokumen NA
    Click Button Selanjutnya
    Input Objek Lelang Step Foto
    Click Button Ya Simpan Objek Lelang
    Click Button Ya Mengerti