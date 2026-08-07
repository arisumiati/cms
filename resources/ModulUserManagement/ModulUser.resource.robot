* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../../resources/ModulUserManagement/LocatorModulUserManagement.py

*** Keywords ***
Click Button Add New User
    Wait Until Page Contains Element    ${tambah_user}                                      timeout=30s
    Scroll Element Into View            ${tambah_user}
    ${el_tambah}=                       Get Web Element                                     ${tambah_user}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_tambah}
    Sleep                               0.5s

Click Button Simpan Grup
    Wait Until Page Contains Element    ${simpan_group}                                 timeout=10s
    Wait Until Element Is Visible       ${simpan_group}                                 timeout=10s
    Scroll Element Into View            ${simpan_group}
    Sleep                               0.3s

    ${el_simpan}=                       Get Web Element                                     ${simpan_group}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_simpan}
    Sleep                               1s

Click Button Tambah Grup
    [Arguments]      ${seller_number}=${no_seller}    ${category_name}=Car
    Wait Until Page Contains Element    ${tambah_group}                              timeout=10s
    Wait Until Element Is Visible       ${tambah_group}                              timeout=10s
    Scroll Element Into View            ${tambah_group}
    
    ${el_tambah_reminder}=              Get Web Element                                     ${tambah_group}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_tambah_reminder}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${pilih_kategori}                                timeout=10s
    Scroll Element Into View            ${pilih_kategori}
    ${el_dropdown}=                     Get Web Element                                     ${pilih_kategori}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_dropdown}
    Sleep                               0.5s

    ${locator_option_category}=         Set Variable                                        xpath=//div[@role='dialog']//button[.//span[text()='${category_name}']]
    
    Wait Until Page Contains Element    ${locator_option_category}                          timeout=10s
    Scroll Element Into View            ${locator_option_category}
    
    ${el_option}=                       Get Web Element                                     ${locator_option_category}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_option}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${cari_group}                                       timeout=10s
    Wait Until Element Is Visible       ${cari_group}                                       timeout=10s
    Wait Until Element Is Enabled       ${cari_group}                                       timeout=10s
    Scroll Element Into View            ${cari_group}
    Sleep                               0.3s

    Click Element                       ${cari_group}
    
    ${el_search}=                       Get Web Element                                     ${cari_group}
    Execute Javascript                  arguments[0].value = '';                            ARGUMENTS    ${el_search}
    
    Input Text                          ${cari_group}                                       ${seller_number}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${ceklis_group}                        timeout=10s
    Wait Until Element Is Visible       ${ceklis_group}                        timeout=10s
    Scroll Element Into View            ${ceklis_group}
    Sleep                               0.3s

    ${el_checkbox}=                     Get Web Element                                     ${ceklis_group}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_checkbox}
    Sleep                               0.5s

    Click Button Simpan Grup
    Sleep                               0.5s

Submit Form Customer And Confirm    
    Wait Until Page Contains Element    ${simpan_user}                            timeout=10s
    Wait Until Element Is Visible       ${simpan_user}                            timeout=10s
    Scroll Element Into View            ${simpan_user}
    
    ${el_simpan}=                       Get Web Element                                     ${simpan_user}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_simpan}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${konfirmasi_ya}                            timeout=10s
    Wait Until Element Is Visible       ${konfirmasi_ya}                            timeout=10s
    Scroll Element Into View            ${konfirmasi_ya}
    
    ${el_confirm}=                      Get Web Element                                     ${konfirmasi_ya}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_confirm}
    Sleep                               1s

    Wait Until Page Contains Element    ${toast_create_user_success}                        timeout=10s
    Wait Until Element Is Visible       ${toast_create_user_success}                        timeout=10s
    
    Element Attribute Value Should Be   ${toast_create_user_success}    data-type           success

Input New User
    [Arguments]     ${login_type}=Internal     ${role_name}=ADMINCSUL    ${firstname}=${value_nama_depan}    ${lastname}=${value_nama_belakang}    ${nik}=${value_no_NIK}     ${no_hp}=${value_no_HP}    ${email}=${value_email}

    Wait Until Page Contains Element    ${input_nama_depan}                                 timeout=10s
    Wait Until Element Is Visible       ${input_nama_depan}                                 timeout=10s
    Scroll Element Into View            ${input_nama_depan}
    Input Text                          ${input_nama_depan}                                 ${firstname}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${input_nama_belakang}                              timeout=10s
    Scroll Element Into View            ${input_nama_belakang}
    Input Text                          ${input_nama_belakang}                              ${lastname}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${input_no_NIK}                                        timeout=10s
    Scroll Element Into View            ${input_no_NIK}
    Input Text                          ${input_no_NIK}                                        ${nik}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${input_no_hp}                                      timeout=10s
    Scroll Element Into View            ${input_no_hp}
    Input Text                          ${input_no_hp}                                      ${no_hp}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${input_email}                                      timeout=10s
    Scroll Element Into View            ${input_email}
    Input Text                          ${input_email}                                      ${email}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${pilih_role}                                    timeout=10s
    Scroll Element Into View            ${pilih_role}
    ${el_dropdown}=                     Get Web Element                                     ${pilih_role}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_dropdown}
    Sleep                               0.5s

    ${locator_option_role}=             Set Variable                                        xpath=//div[@role='dialog']//button[.//span[text()='${role_name}']]
    
    Wait Until Page Contains Element    ${locator_option_role}                              timeout=10s
    Scroll Element Into View            ${locator_option_role}
    
    ${el_option}=                       Get Web Element                                     ${locator_option_role}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_option}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${dropdown_tipe_login}                              timeout=10s
    Scroll Element Into View            ${dropdown_tipe_login}
    ${el_dropdown}=                     Get Web Element                                     ${dropdown_tipe_login}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_dropdown}
    Sleep                               0.5s

    ${locator_option_login}=            Set Variable                                        xpath=//div[@role='dialog']//button[.//span[text()='${login_type}']]
    
    Wait Until Page Contains Element    ${locator_option_login}                             timeout=10s
    Scroll Element Into View            ${locator_option_login}
    
    ${el_option}=                       Get Web Element                                     ${locator_option_login}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_option}
    Sleep                               0.5s

    Click Button Tambah Grup
    Sleep                               0.5s

    Submit Form Customer And Confirm
    Sleep                               0.5s

Verify Invalid Phone Number Prefix Validation
    [Arguments]    ${invalid_hp}=${value_HP_prefix}

    Wait Until Page Contains Element    ${input_no_HP}                                      timeout=10s
    Wait Until Element Is Visible       ${input_no_HP}                                      timeout=10s
    Scroll Element Into View            ${input_no_HP}
    
    Clear Element Text                  ${input_no_HP}
    Input Text                          ${input_no_HP}                                      ${invalid_hp}
    
    Press Keys                          ${input_no_HP}                                      TAB
    Sleep                               0.5s

    Wait Until Page Contains Element    ${error_no_hp_prefix}                               timeout=10s
    Wait Until Element Is Visible       ${error_no_hp_prefix}                               timeout=10s
    
    Element Text Should Be              ${error_no_hp_prefix}                               Awali dengan "08" atau "628" dan diikuti 9-12 angka

Verify Invalid Email Format Validation
    [Arguments]    ${invalid_email}=${value_email_invalid}

    Wait Until Page Contains Element    ${input_email}                                      timeout=10s
    Wait Until Element Is Visible       ${input_email}                                      timeout=10s
    Scroll Element Into View            ${input_email}
    
    Clear Element Text                  ${input_email}
    Input Text                          ${input_email}                                      ${invalid_email}
    
    Press Keys                          ${input_email}                                      TAB
    Sleep                               0.5s

    Wait Until Page Contains Element    ${error_email_invalid}                              timeout=10s
    Wait Until Element Is Visible       ${error_email_invalid}                              timeout=10s
    
    Element Text Should Be              ${error_email_invalid}                              Email tidak valid