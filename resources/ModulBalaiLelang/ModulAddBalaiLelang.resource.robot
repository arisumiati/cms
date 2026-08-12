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