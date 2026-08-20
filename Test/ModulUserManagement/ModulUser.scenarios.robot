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
Verify Successful Create User
    [documentation]  TC-E2E-001    Tambah User
    [tags]  add
    Sleep    5s
    Go To    ${BASE_URL}master-data/users
    Click Button Add New User
    Process Add Multiple Users From Excel
    Sleep    1s

#Validasi No Ponsel Awalan / Prefix Salah
#    [documentation]  TC-E2E-002     Tambah User
#    Sleep    5s
#    Go To    ${BASE_URL}master-data/users
#    Click Button Add New User
#    Sleep    0.5s
#
#    Verify Invalid Phone Number Prefix Validation
#    Sleep    1s

#Validasi Email String / Tanpa Format Email
#    [documentation]  TC-E2E-003     Tambah User
#    Sleep    5s
#    Go To    ${BASE_URL}master-data/users
#    Click Button Add New User
#    Sleep    0.5s
#
#    Verify Invalid Email Format Validation
#    Sleep    1s

#Verify Successful Edit User Management Internal
#    [documentation]     Edit user
#    Sleep    5s
#    Go To    ${BASE_URL}master-data/users
#    Edit User
#    Edit Field User
#    Click Button Simpan Edit
#    Sleep    1s

#Validasi No Ponsel Awalan
#    [documentation]     Edit user
#    Sleep    5s
#    Go To    ${BASE_URL}master-data/users
#    Edit User
#    Verify Invalid Phone Number Prefix Validation
#    Sleep    1s

#Validasi Email String
#    [documentation]     Edit user
#    Sleep    5s
#    Go To    ${BASE_URL}master-data/users
#    Edit User
#    Verify Invalid Email Format Validation
#    Sleep   1s

#Verify Delete Group User Item
#    [documentation]     Edit user
#    Sleep     5s
#    Go To     ${BASE_URL}master-data/users
#    Edit User
#    Delete Item And Confirm
#    Click Button Simpan Edit
#    Sleep     5s

#Verify Add Group User via Modal Edit
#    [documentation]     Edit user
#    Sleep     5s
#    Go To     ${BASE_URL}master-data/users
#    Edit User
#    Click Button Tambah Grup
#    Click Button Simpan Edit
#    Sleep     5s

#Verify Cancel Edit User Action
#    [documentation]     Edit user
#    Sleep     5s
#    Go To     ${BASE_URL}master-data/users
#    Edit User
#    Edit Cancel Field User
#    Cancel Edit User Form And Verify Closed
#    Sleep     5s