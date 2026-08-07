* Settings *
Documentation  modul bidding log
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulUserManagement/ModulUser.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Sleep    5s
    Login Scenario

*** Test Cases ***
Verify Successful Create User Management Internal
    [documentation]  TC-E2E-001    Tambah User
    [tags]  add
    Sleep    5s
    Go To    ${BASE_URL}master-data/users
    Click Button Add New User
    Sleep    0.5s

    Input New User
    Sleep    1s

Validasi No Ponsel Awalan / Prefix Salah
    [documentation]  TC-E2E-002     Tambah User
    Sleep    5s
    Go To    ${BASE_URL}master-data/users
    Click Button Add New User
    Sleep    0.5s

    Verify Invalid Phone Number Prefix Validation
    Sleep    1s

Validasi Email String / Tanpa Format Email
    [documentation]  TC-E2E-003     Tambah User
    Sleep    5s
    Go To    ${BASE_URL}master-data/users
    Click Button Add New User
    Sleep    0.5s

    Verify Invalid Email Format Validation
    Sleep    1s