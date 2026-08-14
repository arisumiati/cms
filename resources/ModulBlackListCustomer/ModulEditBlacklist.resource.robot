* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../../resources/ModulBlackListCustomer/LocatorEditBlackList.py

* Keywords *
search Data
    Wait Until Element Is Visible    ${input_search}    timeout=30s
    Click Element                    ${input_search}
    Press Keys                       ${input_search}    CTRL+a    BACKSPACE
    Input Text                       ${input_search}    ${search_email}
    Press Keys                       ${input_search}    RETURN
    Sleep                            1s

    Klik Button Edit Data
    Sleep                            1s

Klik Button Edit Data
    Wait Until Element Is Visible    ${btn_edit_data}    timeout=10s
    Click Element                    ${btn_edit_data}
    Sleep                            0.5s

Klik Button Simpan
    Wait Until Element Is Visible    ${btn_simpan_edit}                 timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan_edit}                 timeout=10s
    Click Element                    ${btn_simpan_edit}

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}                timeout=10s
    Click Element                    ${btn_ya_konfirmasi}

    Wait Until Element Is Not Visible    ${btn_simpan_edit}             timeout=10s

    Wait Until Element Is Visible        ${toast_success_update_blacklist}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_success_update_blacklist}    timeout=10s
    Sleep    0.5s

Insert Edit Data
    Wait Until Element Is Visible    ${input_no_ponsel}    timeout=10s
    Click Element                    ${input_no_ponsel}
    Press Keys                       ${input_no_ponsel}    CTRL+a    BACKSPACE
    Input Text                       ${input_no_ponsel}    ${Edit_no_ponsel}
    Sleep                            1s

    Wait Until Element Is Visible    ${input_email}    timeout=10s
    Click Element                    ${input_email}
    Press Keys                       ${input_email}    CTRL+a    BACKSPACE
    Input Text                       ${input_email}    ${Edit_no_email}
    Sleep                            1s

    Wait Until Element Is Visible    ${input_notes}    timeout=10s
    Scroll Element Into View         ${input_notes}
    
    Click Element                    ${input_notes}
    Press Keys                       ${input_notes}    CTRL+a    BACKSPACE
    Input Text                       ${input_notes}    ${Edit_no_notes}
    Sleep                            0.5s