*** Settings ***
Documentation  modul list lelang
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulLokasiUnit/locator/ModulEditLokasiUnit.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario


*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
Verify Update Lokasi Unit with Valid Data
    [documentation]  TC-LU-001  
    Sleep    3s
    Go To    ${BASE_URL}master-data/lokasi-unit
    Search Lokasi
    Klik Menu Edit Pada Tabel
    Edit Lokasi Unit
    Sleep    2s