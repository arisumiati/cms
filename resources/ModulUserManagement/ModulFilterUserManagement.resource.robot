* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../../resources/ModulUserManagement/LocatorfilterUserManagement.py

*** Keywords ***
Click Filter Button
    Wait Until Page Contains Element    ${btn_filter}                                       timeout=30s
    Wait Until Element Is Visible       ${btn_filter}                                       timeout=10s
    Scroll Element Into View            ${btn_filter}

    ${el_filter}=                       Get Web Element                                     ${btn_filter}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_filter}
    Sleep                               0.5s

Click Tampilkan Filter
    Wait Until Page Contains Element    ${btn_tampilkan_filter}                             timeout=10s
    Wait Until Element Is Visible       ${btn_tampilkan_filter}                             timeout=10s
    Scroll Element Into View            ${btn_tampilkan_filter}

    ${el_tampilkan}=                    Get Web Element                                     ${btn_tampilkan_filter}
    Execute Javascript                  arguments[0].dispatchEvent(new MouseEvent('click', {bubbles: true, cancelable: true, view: window}));    ARGUMENTS    ${el_tampilkan}
    Sleep                               1s

Click Hapus Filter
    Wait Until Page Contains Element    ${btn_hapus_filter}                                 timeout=10s
    Wait Until Element Is Visible       ${btn_hapus_filter}                                 timeout=10s
    Scroll Element Into View            ${btn_hapus_filter}

    ${el_hapus}=                        Get Web Element                                     ${btn_hapus_filter}
    Execute Javascript                  arguments[0].dispatchEvent(new MouseEvent('click', {bubbles: true, cancelable: true, view: window}));    ARGUMENTS    ${el_hapus}
    Sleep                               1s

Input Status Filter
    [Arguments]     ${group}=${value_group}     ${nama}=${value_nama}     ${email}=${value_email}    ${status}=Aktif      ${role_name}=CEO
    Wait Until Page Contains Element    ${input_filter_status}                              timeout=10s
    Wait Until Element Is Visible       ${input_filter_status}                              timeout=10s
    
    Clear Element Text                  ${input_filter_status}
    Input Text                          ${input_filter_status}                              ${status}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${option_filter_status_aktif}                      timeout=10s
    Wait Until Element Is Visible       ${option_filter_status_aktif}                      timeout=10s
    
    ${el_option}=                       Get Web Element                                     ${option_filter_status_aktif}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_option}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_filter_role}                                timeout=10s
    Wait Until Element Is Visible       ${input_filter_role}                                timeout=10s
    
    Click Element                       ${input_filter_role}
    Press Keys                          ${input_filter_role}                                CTRL+a    BACKSPACE
    Input Text                          ${input_filter_role}                                ${role_name}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${option_filter_role_ceo}                           timeout=10s
    Wait Until Element Is Visible       ${option_filter_role_ceo}                           timeout=10s

    ${el_option}=                       Get Web Element                                     ${option_filter_role_ceo}
    Execute Javascript                  arguments[0].dispatchEvent(new MouseEvent('click', {bubbles: true, cancelable: true, view: window}));    ARGUMENTS    ${el_option}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_filter_nama_lengkap}                        timeout=10s
    Wait Until Element Is Visible       ${input_filter_nama_lengkap}                        timeout=10s
    
    Click Element                       ${input_filter_nama_lengkap}
    Press Keys                          ${input_filter_nama_lengkap}                        CTRL+a    BACKSPACE
    Input Text                          ${input_filter_nama_lengkap}                        ${nama}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_filter_email}                               timeout=10s
    Wait Until Element Is Visible       ${input_filter_email}                               timeout=10s
    
    Click Element                       ${input_filter_email}
    Press Keys                          ${input_filter_email}                               CTRL+a    BACKSPACE
    Input Text                          ${input_filter_email}                               ${email}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_filter_group}                                timeout=10s
    Wait Until Element Is Visible       ${input_filter_group}                                timeout=10s
    
    Click Element                       ${input_filter_group}
    Press Keys                          ${input_filter_group}                                CTRL+a    BACKSPACE
    Input Text                          ${input_filter_group}                                ${group}
    Sleep                               0.5s

Input Filter Berdasarkan Nama
    [Arguments]     ${nama}=${value_nama}  
    Wait Until Page Contains Element    ${input_filter_nama_lengkap}                        timeout=10s
    Wait Until Element Is Visible       ${input_filter_nama_lengkap}                        timeout=10s
    
    Click Element                       ${input_filter_nama_lengkap}
    Press Keys                          ${input_filter_nama_lengkap}                        CTRL+a    BACKSPACE
    Input Text                          ${input_filter_nama_lengkap}                        ${nama}
    Sleep                               0.5s

Input Filter Berdasarkan Status & Role
    [Arguments]     ${status}=Aktif      ${role_name}=CEO 
    Wait Until Page Contains Element    ${input_filter_status}                              timeout=10s
    Wait Until Element Is Visible       ${input_filter_status}                              timeout=10s
    
    Clear Element Text                  ${input_filter_status}
    Input Text                          ${input_filter_status}                              ${status}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_filter_role}                                timeout=10s
    Wait Until Element Is Visible       ${input_filter_role}                                timeout=10s
    
    Click Element                       ${input_filter_role}
    Press Keys                          ${input_filter_role}                                CTRL+a    BACKSPACE
    Input Text                          ${input_filter_role}                                ${role_name}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${option_filter_role_ceo}                           timeout=10s
    Wait Until Element Is Visible       ${option_filter_role_ceo}                           timeout=10s

    ${el_option}=                       Get Web Element                                     ${option_filter_role_ceo}
    Execute Javascript                  arguments[0].dispatchEvent(new MouseEvent('click', {bubbles: true, cancelable: true, view: window}));    ARGUMENTS    ${el_option}
    Sleep                               0.5s

Input Filter Berdasarkan Partial
    [Arguments]     ${email}=${email_partial}     ${nama}=${value_partial}  
    Wait Until Page Contains Element    ${input_filter_nama_lengkap}                        timeout=10s
    Wait Until Element Is Visible       ${input_filter_nama_lengkap}                        timeout=10s
    
    Click Element                       ${input_filter_nama_lengkap}
    Press Keys                          ${input_filter_nama_lengkap}                        CTRL+a    BACKSPACE
    Input Text                          ${input_filter_nama_lengkap}                        ${nama}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_filter_email}                               timeout=10s
    Wait Until Element Is Visible       ${input_filter_email}                               timeout=10s
    
    Click Element                       ${input_filter_email}
    Press Keys                          ${input_filter_email}                               CTRL+a    BACKSPACE
    Input Text                          ${input_filter_email}                               ${email}
    Sleep                               0.5s

Input Filter invalid
    [Arguments]     ${email}=${email_empty}     ${nama}=${value_empty}  
    Wait Until Page Contains Element    ${input_filter_nama_lengkap}                        timeout=10s
    Wait Until Element Is Visible       ${input_filter_nama_lengkap}                        timeout=10s
    
    Click Element                       ${input_filter_nama_lengkap}
    Press Keys                          ${input_filter_nama_lengkap}                        CTRL+a    BACKSPACE
    Input Text                          ${input_filter_nama_lengkap}                        ${nama}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_filter_email}                               timeout=10s
    Wait Until Element Is Visible       ${input_filter_email}                               timeout=10s
    
    Click Element                       ${input_filter_email}
    Press Keys                          ${input_filter_email}                               CTRL+a    BACKSPACE
    Input Text                          ${input_filter_email}                               ${email}
    Sleep                               0.5s

Input Filter Injection
    [Arguments]     ${email}=${email_injection}     ${nama}=${value_injection}  
    Wait Until Page Contains Element    ${input_filter_nama_lengkap}                        timeout=10s
    Wait Until Element Is Visible       ${input_filter_nama_lengkap}                        timeout=10s
    
    Click Element                       ${input_filter_nama_lengkap}
    Press Keys                          ${input_filter_nama_lengkap}                        CTRL+a    BACKSPACE
    Input Text                          ${input_filter_nama_lengkap}                        ${nama}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_filter_email}                               timeout=10s
    Wait Until Element Is Visible       ${input_filter_email}                               timeout=10s
    
    Click Element                       ${input_filter_email}
    Press Keys                          ${input_filter_email}                               CTRL+a    BACKSPACE
    Input Text                          ${input_filter_email}                               ${email}
    Sleep                               0.5s