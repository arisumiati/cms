* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorFilterTipe.py

* Keywords *
Search Data Tipe
    Wait Until Element Is Visible    ${input_search_tipe}    timeout=30s    
    Click Element                    ${input_search_tipe}
    Press Keys                       ${input_search_tipe}    CTRL+a    BACKSPACE
    Input Text                       ${input_search_tipe}    ${keyword_search}
    Press Keys                       ${input_search_tipe}    ENTER
    Sleep                            1s

Klik Button Filter Tipe
    Wait Until Element Is Visible    ${btn_filter_tipe}    timeout=30s
    Wait Until Element Is Enabled    ${btn_filter_tipe}    timeout=10s
    Click Element                    ${btn_filter_tipe}
    Sleep                            0.5s

Klik Button Hapus Filter
    Wait Until Element Is Visible    ${btn_hapus_filter}    timeout=10s
    Wait Until Element Is Enabled    ${btn_hapus_filter}    timeout=10s
    Click Element                    ${btn_hapus_filter}
    Sleep                            1s

Klik Button Tampilkan Tipe
    Wait Until Element Is Visible    ${btn_tampilkan_filter}    timeout=10s
    Wait Until Element Is Enabled    ${btn_tampilkan_filter}    timeout=10s
    Click Element                    ${btn_tampilkan_filter}
    Sleep                            1s

Search Data Invalid Tipe
    Wait Until Element Is Visible    ${input_search_tipe}    timeout=30s    
    Click Element                    ${input_search_tipe}
    Press Keys                       ${input_search_tipe}    CTRL+a    BACKSPACE
    Input Text                       ${input_search_tipe}    ${keyword_Invalid}
    Press Keys                       ${input_search_tipe}    ENTER
    Sleep                            1s

Input Filter Status Only
    Wait Until Element Is Visible    ${Button_Status_Aktif}    timeout=10s
    Click Element                    ${Button_Status_Aktif}
    Sleep                            0.3s
    
    Wait Until Element Is Visible    ${opt_status}    timeout=10s
    Click Element                    ${opt_status}
    Sleep                            0.5s

Input Filter Objek Lelang Only
    Wait Until Element Is Visible    ${lelang_filter}    timeout=10s
    Click Element                    ${lelang_filter}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_filter_lelang}
    IF    ${is_search_present}
        Input Text    ${input_search_filter_lelang}    ${input_objek}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_objek_lelang}    timeout=10s
    Click Element                    ${opt_objek_lelang}
    Sleep                            0.5s

Input Filter Merek Only
    Wait Until Element Is Visible    ${lelang_filter}    timeout=10s
    Click Element                    ${lelang_filter}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_filter_lelang}
    IF    ${is_search_present}
        Input Text    ${input_search_filter_lelang}    ${input_objek}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_objek_lelang}    timeout=10s
    Click Element                    ${opt_objek_lelang}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${merek_filter}    timeout=10s
    Click Element                    ${merek_filter}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_merek}
    IF    ${is_search_present}
        Input Text    ${input_search_merek}    ${input_merek}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${option_merek}    timeout=10s
    Click Element                    ${option_merek}
    Sleep                            0.5s

Input Filter Model Only
    Wait Until Element Is Visible    ${lelang_filter}    timeout=10s
    Click Element                    ${lelang_filter}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_filter_lelang}
    IF    ${is_search_present}
        Input Text    ${input_search_filter_lelang}    ${input_objek}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_objek_lelang}    timeout=10s
    Click Element                    ${opt_objek_lelang}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${merek_filter}    timeout=10s
    Click Element                    ${merek_filter}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_merek}
    IF    ${is_search_present}
        Input Text    ${input_search_merek}    ${input_merek}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${option_merek}    timeout=10s
    Click Element                    ${option_merek}
    Sleep                            0.5s
    
    Wait Until Element Is Visible    ${model_filter}    timeout=10s
    Click Element                    ${model_filter}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_model}
    IF    ${is_search_present}
        Input Text    ${input_search_model}    ${input_model}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${option_model}    timeout=10s
    Click Element                    ${option_model}
    Sleep                            0.5s

Input Filter Multiple
    Wait Until Element Is Visible    ${Button_Status_Aktif}    timeout=10s
    Click Element                    ${Button_Status_Aktif}
    Sleep                            0.3s
    
    Wait Until Element Is Visible    ${opt_status}    timeout=10s
    Click Element                    ${opt_status}
    Sleep                            0.5s

     Wait Until Element Is Visible    ${lelang_filter}    timeout=10s
    Click Element                    ${lelang_filter}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_filter_lelang}
    IF    ${is_search_present}
        Input Text    ${input_search_filter_lelang}    ${input_objek}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_objek_lelang}    timeout=10s
    Click Element                    ${opt_objek_lelang}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${merek_filter}    timeout=10s
    Click Element                    ${merek_filter}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_merek}
    IF    ${is_search_present}
        Input Text    ${input_search_merek}    ${input_merek}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${option_merek}    timeout=10s
    Click Element                    ${option_merek}
    Sleep                            0.5s
    
    Wait Until Element Is Visible    ${model_filter}    timeout=10s
    Click Element                    ${model_filter}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_model}
    IF    ${is_search_present}
        Input Text    ${input_search_model}    ${input_model}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${option_model}    timeout=10s
    Click Element                    ${option_model}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_filter_ketik_tipe}    timeout=10s
    Click Element                    ${input_filter_ketik_tipe}
    Press Keys                       ${input_filter_ketik_tipe}    CTRL+a    BACKSPACE
    Input Text                       ${input_filter_ketik_tipe}    ${input_tipe}
    Sleep                            0.5s

Ubah Toggle Switch Ke Off
    Wait Until Element Is Visible    ${btn_switch_toggle_status}    timeout=10s
    
    ${state}=    Get Element Attribute    ${btn_switch_toggle_status}    data-state
    
    IF    '${state}' == 'checked'
        Click Element    ${btn_switch_toggle_status}
        Sleep            0.5s
    END
    
    Wait Until Element Is Visible    ${btn_ya_konfirmasi}    timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi}    timeout=10s
    Click Element                    ${btn_ya_konfirmasi}
    Sleep                            0.5s

    Wait Until Element Is Visible        ${toast_success_update_status_tipe}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_success_update_status_tipe}    timeout=10s
    Sleep    0.5s

Ubah Toggle Switch Ke On
    Wait Until Element Is Visible    ${btn_switch_toggle_status}    timeout=10s
    
    ${state}=    Get Element Attribute    ${btn_switch_toggle_status}    data-state
    
    IF    '${state}' == 'unchecked'
        Click Element    ${btn_switch_toggle_status}
        Sleep            0.5s
    END
    
    Wait Until Element Is Visible    ${btn_ya_konfirmasi}    timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi}    timeout=10s
    Click Element                    ${btn_ya_konfirmasi}
    Sleep                            0.5s

    Wait Until Element Is Visible        ${toast_success_update_status_tipe}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_success_update_status_tipe}    timeout=10s
    Sleep    0.5s