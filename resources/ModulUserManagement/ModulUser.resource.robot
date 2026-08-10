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
    [Arguments]      ${seller_number}=${no_seller}    ${category_name}=${value_kategori}
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

Select Edit Action In Table
    Wait Until Page Contains Element    ${btn_action_dropdown}                              timeout=10s
    Wait Until Element Is Visible       ${btn_action_dropdown}                              timeout=10s
    Scroll Element Into View            ${btn_action_dropdown}
    Sleep                               0.3s
    
    Click Element                       ${btn_action_dropdown}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${btn_menu_edit}                                    timeout=10s
    Wait Until Element Is Visible       ${btn_menu_edit}                                    timeout=10s
    
    Click Element                       ${btn_menu_edit}
    Sleep                               1s

Edit User
    [Arguments]    ${search_keyword}=${value_search_NIK}

    Wait Until Page Contains Element    ${search_user_table}                                timeout=30s
    Wait Until Element Is Visible       ${search_user_table}                                timeout=10s
    Wait Until Element Is Enabled       ${search_user_table}                                timeout=10s
    Scroll Element Into View            ${search_user_table}
    Sleep                               0.3s

    Click Element                       ${search_user_table}
    Clear Element Text                  ${search_user_table}
    Input Text                          ${search_user_table}                                ${search_keyword}
    
    Press Keys                          ${search_user_table}                                ENTER
    Sleep                               0.5s

    Select Edit Action In Table
    Sleep                               0.5s
    
Edit Field User
    [Arguments]     ${trigger}=${trigger_tipe_login}    ${option}=${value_edit_tipe_login}     ${role_name}=CEO      ${new_phone}=${value_edit_nomor}    ${new_email}=${value_edit_mail}    ${new_firstname}=${value_edit_namaD}    ${new_lastname}=${value_edit_namaB}

    Wait Until Page Contains Element    ${input_nama_depan}                                 timeout=10s
    Wait Until Element Is Visible       ${input_nama_depan}                                 timeout=10s
    Scroll Element Into View            ${input_nama_depan}
    
    Clear Element Text                  ${input_nama_depan}
    Press Keys                          ${input_nama_depan}                                 CTRL+a    BACKSPACE
    Input Text                          ${input_nama_depan}                                 ${new_firstname}

    Wait Until Page Contains Element    ${input_nama_belakang}                              timeout=10s
    Wait Until Element Is Visible       ${input_nama_belakang}                              timeout=10s
    Scroll Element Into View            ${input_nama_belakang}
    
    Clear Element Text                  ${input_nama_belakang}
    Press Keys                          ${input_nama_belakang}                              CTRL+a    BACKSPACE
    Input Text                          ${input_nama_belakang}                                 ${new_lastname}

    Wait Until Page Contains Element    ${input_no_HP}                                      timeout=10s
    Wait Until Element Is Visible       ${input_no_HP}                                      timeout=10s
    Scroll Element Into View            ${input_no_HP}
    
    Clear Element Text                  ${input_no_HP}
    Press Keys                          ${input_no_HP}                                      CTRL+a    BACKSPACE
    Input Text                          ${input_no_HP}                                      ${new_phone}

    Wait Until Page Contains Element    ${input_email}                                      timeout=10s
    Wait Until Element Is Visible       ${input_email}                                      timeout=10s
    Scroll Element Into View            ${input_email}
    
    Clear Element Text                  ${input_email}
    Press Keys                          ${input_email}                                      CTRL+a    BACKSPACE
    Input Text                          ${input_email}                                      ${new_email}

    Wait Until Page Contains Element    ${trigger_role_dropdown}                            timeout=10s
    Wait Until Element Is Visible       ${trigger_role_dropdown}                            timeout=10s
    Scroll Element Into View            ${trigger_role_dropdown}
    
    ${el_trigger}=                      Get Web Element                                     ${trigger_role_dropdown}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_trigger}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${value_edit_role}                                  timeout=10s
    Wait Until Element Is Visible       ${value_edit_role}                                  timeout=10s
    
    ${el_option}=                       Get Web Element                                     ${value_edit_role}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_option}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${trigger}                                          timeout=10s
    Wait Until Element Is Visible       ${trigger}                                          timeout=10s
    Scroll Element Into View            ${trigger}
    
    ${el_trigger}=                      Get Web Element                                     ${trigger}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_trigger}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${option}                                           timeout=10s
    Wait Until Element Is Visible       ${option}                                           timeout=10s
    
    ${el_option}=                       Get Web Element                                     ${option}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_option}
    Sleep                               0.5s

Edit Cancel Field User
    [Arguments]    ${new_phone}=${value_edit_nomor}    ${new_email}=${value_edit_mail}    ${new_firstname}=${value_edit_namaD}    ${new_lastname}=${value_edit_namaB}

    Wait Until Page Contains Element    ${input_nama_depan}                                 timeout=10s
    Wait Until Element Is Visible       ${input_nama_depan}                                 timeout=10s
    Scroll Element Into View            ${input_nama_depan}
    
    Clear Element Text                  ${input_nama_depan}
    Press Keys                          ${input_nama_depan}                                 CTRL+a    BACKSPACE
    Input Text                          ${input_nama_depan}                                 ${new_firstname}

    Wait Until Page Contains Element    ${input_nama_belakang}                              timeout=10s
    Wait Until Element Is Visible       ${input_nama_belakang}                              timeout=10s
    Scroll Element Into View            ${input_nama_belakang}
    
    Clear Element Text                  ${input_nama_belakang}
    Press Keys                          ${input_nama_belakang}                              CTRL+a    BACKSPACE
    Input Text                          ${input_nama_belakang}                                 ${new_lastname}

    Wait Until Page Contains Element    ${input_no_HP}                                      timeout=10s
    Wait Until Element Is Visible       ${input_no_HP}                                      timeout=10s
    Scroll Element Into View            ${input_no_HP}
    
    Clear Element Text                  ${input_no_HP}
    Press Keys                          ${input_no_HP}                                      CTRL+a    BACKSPACE
    Input Text                          ${input_no_HP}                                      ${new_phone}

    Wait Until Page Contains Element    ${input_email}                                      timeout=10s
    Wait Until Element Is Visible       ${input_email}                                      timeout=10s
    Scroll Element Into View            ${input_email}
    
    Clear Element Text                  ${input_email}
    Press Keys                          ${input_email}                                      CTRL+a    BACKSPACE
    Input Text                          ${input_email}                                      ${new_email}

Click Button Simpan Edit
    Wait Until Page Contains Element    ${btn_simpan_edit}                                  timeout=10s
    Wait Until Element Is Visible       ${btn_simpan_edit}                                  timeout=10s
    Scroll Element Into View            ${btn_simpan_edit}
    
    ${el_simpan}=                       Get Web Element                                     ${btn_simpan_edit}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_simpan}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${btn_confirm_edit}                                 timeout=10s
    Wait Until Element Is Visible       ${btn_confirm_edit}                                 timeout=10s
    
    ${el_confirm}=                      Get Web Element                                     ${btn_confirm_edit}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_confirm}
    Sleep                               1s

    Wait Until Page Contains Element    ${toast_success_edit_user}                         timeout=10s
    Wait Until Element Is Visible       ${toast_success_edit_user}                         timeout=10s

Delete Item And Confirm
    Wait Until Page Contains Element    ${btn_delete_item}                                  timeout=10s
    Wait Until Element Is Visible       ${btn_delete_item}                                  timeout=10s
    
    ${el_delete}=                       Get Web Element                                     ${btn_delete_item}
    Execute Javascript                  arguments[0].scrollIntoView({behavior: 'smooth', block: 'center'});    ARGUMENTS    ${el_delete}
    Sleep                               0.5s
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_delete}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${btn_confirm_delete}                               timeout=10s
    Wait Until Element Is Visible       ${btn_confirm_delete}                               timeout=10s
    
    ${el_confirm}=                      Get Web Element                                     ${btn_confirm_delete}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_confirm}
    Sleep                               1s

Cancel Edit User Form And Verify Closed
    Wait Until Page Contains Element    ${btn_batal_edit}                                   timeout=10s
    Wait Until Element Is Visible       ${btn_batal_edit}                                   timeout=10s
    Scroll Element Into View            ${btn_batal_edit}
    
    ${el_batal}=                        Get Web Element                                     ${btn_batal_edit}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_batal}
    Sleep                               0.5s