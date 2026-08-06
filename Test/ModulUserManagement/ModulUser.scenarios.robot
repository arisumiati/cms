* Settings *
Documentation  modul bidding log
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulUserManagment/locator/ModulUser.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Sleep    5s
    Login Scenario

*** Test Cases ***
# Add User Successfully
#     [documentation]  This test case verifies that user is able to add new user management
#     [tags]  add
#     Sleep    5s
#     Go To    ${BASE_URL}v2/users
#     Click Button Add New User
#     Input User Details
#     Click Button Save User
#     Click Button Ya Mengerti User

Add User with group Successfully
    [documentation]  This test case verifies that user is able to add new user management with group
    [tags]  add group
    Sleep    5s
    Go To    ${BASE_URL}v2/users
    Click Button Add New User
    Input User Details
    Click Button Add Group User
    Input Group User Details
    Click Button Save User
    Click Button Ya Mengerti User

# Filter User Management by semua kolom list
#     [documentation]  This test case verifies that user is able to filter user management by semua kolom list
#     [tags]  filter
#     Go To    ${BASE_URL}v2/users
#     Sleep    10s
#     Click Button Filter User
#     Click Filter Status
#     Click Filter Role
#     Click Filter Nama Lengkap
#     Click Filter Email
#     Click Filter Group
#     Click Button Terapkan Filter
#     Sleep    5s
#     Click Button Filter User
#     Click Hapus Filter User

# Cari User Management by semua kolom list
#     [documentation]  This test case verifies that user is able to search user management by semua kolom list
#     [tags]  search
#     Go To    ${BASE_URL}v2/users
#     Sleep    10s
#     Input Search User
#     Sleep    5s