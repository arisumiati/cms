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
Add Modul Lokasi Unit
    [documentation]  This test case verifies that user is able to add new category seller
    [tags]  add
    Sleep    3s
    Go To    ${BASE_URL}v2/auction-pools
    Click Button Add New Tambah Lokasi
    Input Lokasi Unit Details
    Click Button Ya Simpan Lokasi Unit
    Click Button Ya Mengerti