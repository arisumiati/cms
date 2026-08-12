* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Library    excel_helper.py
Variables  ../../resources/ModulBalaiLelang/LocatorAddBalaiLelang.py

*** Keywords ***
Search Loop Alamat Balai Lelang From Excel
    ${alamat_list}=    Get Alamat Balai Lelang From Excel            ${PATH_EXCEL_BALAI_LELANG}
    ${seller_list}=    Get Seller Format Lengkap From Excel         ${PATH_EXCEL_BALAI_LELANG}

    FOR    ${index}    ${alamat}    IN ENUMERATE    @{alamat_list}[0:2]
        Wait Until Element Is Visible    ${input_search_balai_lelang}    timeout=30s
        Press Keys                       ${input_search_balai_lelang}    CTRL+a    BACKSPACE
        Input Text                       ${input_search_balai_lelang}    ${alamat}
        Press Keys                       ${input_search_balai_lelang}    RETURN
        Sleep                            1s

        Wait Until Element Is Visible    ${btn_dropdown_action}          timeout=10s
        Click Element                    ${btn_dropdown_action}
        Wait Until Element Is Visible    ${menu_edit}                    timeout=10s
        Click Element                    ${menu_edit}

        ${start_idx}=    Evaluate    ${index} * 3
        ${end_idx}=      Evaluate    ${start_idx} + 3
        ${three_sellers}=    Set Variable    ${seller_list}[${start_idx}:${end_idx}]

        FOR    ${seller}    IN    @{three_sellers}
            Wait Until Element Is Visible    ${ddl_seller_trigger}       timeout=30s
            Click Element                    ${ddl_seller_trigger}
            
            Wait Until Element Is Visible    ${input_search_seller}      timeout=10s
            Press Keys                       ${input_search_seller}      CTRL+a    BACKSPACE
            Input Text                       ${input_search_seller}      ${seller}
            
            ${opt_seller}=    Set Variable   xpath=//div[@role='option' and contains(., '${seller}')]
            Wait Until Element Is Visible    ${opt_seller}               timeout=10s
            Click Element                    ${opt_seller}
            Sleep    0.5s
        END

        Wait Until Element Is Visible    ${btn_simpan_edit}              timeout=10s
        Click Element                    ${btn_simpan_edit}
        
        Wait Until Element Is Visible    ${btn_ya_konfirmasi}            timeout=10s
        Click Element                    ${btn_ya_konfirmasi}
        
        Wait Until Element Is Not Visible    ${btn_ya_konfirmasi}        timeout=10s

        Wait Until Element Is Visible    ${toast_success_update}         timeout=10s
        Page Should Contain Element      ${toast_success_update}

        Wait Until Element Is Not Visible    ${toast_success_update}     timeout=10s

        Sleep    1s
    END

Click Button Tambah
    Wait Until Element Is Visible    ${btn_tambah}    timeout=30s
    Scroll Element Into View         ${btn_tambah}
    
    Click Element                    ${btn_tambah}

Click Button Simpan Modal
    Wait Until Element Is Visible    ${btn_simpan_modal}    timeout=30s
    Click Element                    ${btn_simpan_modal}

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}        timeout=10s
    Click Element                    ${btn_ya_konfirmasi}

    Wait Until Element Is Visible    ${toast_success_create}     timeout=10s
    Page Should Contain Element      ${toast_success_create}

Select Seller From Dropdown
    [Arguments]    ${target_seller}=${seller_name}
    
    Wait Until Element Is Visible    ${Dropdown_seller}       timeout=30s
    Click Element                    ${Dropdown_seller}
    
    Wait Until Element Is Visible    ${input_seller}      timeout=10s
    Click Element                    ${input_seller}
    Press Keys                       ${input_seller}      CTRL+a    BACKSPACE
    Press Keys                       ${input_seller}      ${target_seller}
    
    ${opt_seller}=    Set Variable   xpath=//div[@role='option'][contains(normalize-space(), '${seller_name}')]
    Wait Until Element Is Visible    ${opt_seller}               timeout=10s
    Click Element                    ${opt_seller}

Input Field Balai Lelang
    Wait Until Element Is Visible    ${input_balai_lelang}          timeout=30s
    Press Keys                       ${input_balai_lelang}          ${Value_balai_lelang}    TAB
    Sleep                            1s

    Wait Until Element Is Visible    ${input_cabang_balai_lelang}   timeout=30s
    Press Keys                       ${input_cabang_balai_lelang}   ${value_cabang_lelang}   TAB
    Sleep                            1s

    Select Seller From Dropdown
    Sleep                            1s

    Wait Until Element Is Visible    ${textarea_alamat_balai_lelang}    timeout=30s
    Click Element                    ${textarea_alamat_balai_lelang}
    Press Keys                       ${textarea_alamat_balai_lelang}    CTRL+a    BACKSPACE
    Press Keys                       ${textarea_alamat_balai_lelang}    ${val_alamat_balai_lelang}    TAB
    Sleep                            0.5s

    Wait Until Element Is Visible    ${textarea_catatan}                timeout=30s
    Click Element                    ${textarea_catatan}
    Press Keys                       ${textarea_catatan}                CTRL+a    BACKSPACE
    Press Keys                       ${textarea_catatan}                ${val_catatan}   TAB
    Sleep                            0.5s

    Wait Until Element Is Visible    ${lane_car}            timeout=30s
    Click Element                    ${lane_car}
    
    Wait Until Element Is Visible    ${input_disable_car}     timeout=30s
    Click Element                    ${input_disable_car}
    Press Keys                       ${input_disable_car}     CTRL+a    BACKSPACE
    Press Keys                       ${input_disable_car}     ${val_lot_disable_car}    RETURN

    Wait Until Element Is Visible    ${lane_bike}             timeout=30s
    Click Element                    ${lane_bike}
    
    Wait Until Element Is Visible    ${input_disable_bike}    timeout=30s
    Click Element                    ${input_disable_bike}
    Press Keys                       ${input_disable_bike}    CTRL+a    BACKSPACE
    Press Keys                       ${input_disable_bike}    ${val_lot_disable_bike}    RETURN

Verify Mandatory Validation Errors
    Wait Until Element Is Visible    ${btn_simpan_modal}         timeout=30s
    Click Element                    ${btn_simpan_modal}

    Wait Until Element Is Visible    ${wajib_diisi_error}    timeout=10s

Verify Mandatory Validation Errors Duplication
    Wait Until Element Is Visible    ${input_balai_lelang}          timeout=30s
    Press Keys                       ${input_balai_lelang}          ${Value_balai_lelang}    TAB
    Sleep                            1s

    Wait Until Element Is Visible    ${input_cabang_balai_lelang}   timeout=30s
    Press Keys                       ${input_cabang_balai_lelang}   ${value_cabang_lelang}   TAB
    Sleep                            1s

    Select Seller From Dropdown
    Sleep                            1s

    Wait Until Element Is Visible    ${textarea_alamat_balai_lelang}    timeout=30s
    Click Element                    ${textarea_alamat_balai_lelang}
    Press Keys                       ${textarea_alamat_balai_lelang}    CTRL+a    BACKSPACE
    Press Keys                       ${textarea_alamat_balai_lelang}    ${val_alamat_balai_lelang}    TAB
    Sleep                            0.5s

    Wait Until Element Is Visible    ${textarea_catatan}                timeout=30s
    Click Element                    ${textarea_catatan}
    Press Keys                       ${textarea_catatan}                CTRL+a    BACKSPACE
    Press Keys                       ${textarea_catatan}                ${val_catatan}   TAB
    Sleep                            0.5s

    Wait Until Element Is Visible    ${lane_car}            timeout=30s
    Click Element                    ${lane_car}
    
    Wait Until Element Is Visible    ${input_disable_car}     timeout=30s
    Click Element                    ${input_disable_car}
    Press Keys                       ${input_disable_car}     CTRL+a    BACKSPACE
    Press Keys                       ${input_disable_car}     ${val_lot_disable_car}    RETURN
    Sleep                            1s

    Wait Until Element Is Visible    ${lane_bike}             timeout=30s
    Click Element                    ${lane_bike}
    
    Wait Until Element Is Visible    ${input_disable_bike}    timeout=30s
    Click Element                    ${input_disable_bike}
    Press Keys                       ${input_disable_bike}    CTRL+a    BACKSPACE
    Press Keys                       ${input_disable_bike}    ${val_lot_disable_bike}    RETURN

     Wait Until Element Is Visible    ${btn_simpan_modal}    timeout=30s
    Click Element                    ${btn_simpan_modal}

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}        timeout=10s
    Click Element                    ${btn_ya_konfirmasi}

    Wait Until Element Is Visible    ${toast_error_duplicate}     timeout=10s
    Page Should Contain Element      ${toast_error_duplicate}
