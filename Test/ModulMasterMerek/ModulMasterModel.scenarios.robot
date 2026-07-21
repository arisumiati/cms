* Settings *
Documentation  modul objek lelang bike
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulMasterMerek/Model/Tipe/locator/ModulMasterModel.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario


*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
Add Master Model Successfully
    [documentation]  This test case verifies that user is able to add master model
    [tags]  add
    Sleep    3s
    Go To    ${BASE_URL}v2/models
    Click Button Add New Model
    Click Button Ya Simpan Model
    Click Button Ya Mengerti Model

Search Model Successfully
    [documentation]  This test case verifies that user is able to search master model
    [tags]  search
    Sleep    3s
    Go To    ${BASE_URL}v2/models
    Search Model

Kombinasi Filter dan Search Model Successfully
    [documentation]  This test case verifies that user is able to kombinasi filter dan search model
    [tags]  kombinasi
    Sleep    3s
    Go To    ${BASE_URL}v2/models
    Kombinasi Filter dan Search Model
