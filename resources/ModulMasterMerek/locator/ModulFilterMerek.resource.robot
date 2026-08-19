* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorFilterMerek.py

* Keywords *
Klik Button Filter
    Wait Until Element Is Visible    ${btn_filter}    timeout=30s
    Wait Until Element Is Enabled    ${btn_filter}    timeout=10s
    Click Element                    ${btn_filter}
    Sleep                            0.5s

Klik Button Ya Konfirmasi
    Wait Until Element Is Visible    ${btn_ya_konfirmasi}    timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi}    timeout=10s
    Click Element                    ${btn_ya_konfirmasi}
    Sleep                            0.5s

Klik Button Hapus Filter
    Wait Until Element Is Visible    ${btn_hapus_filter}    timeout=10s
    Wait Until Element Is Enabled    ${btn_hapus_filter}    timeout=10s
    Click Element                    ${btn_hapus_filter}
    Sleep                            1s

Klik Button Tampilkan Filter
    Wait Until Element Is Visible    ${btn_tampilkan_filter}    timeout=10s
    Wait Until Element Is Enabled    ${btn_tampilkan_filter}    timeout=10s
    Click Element                    ${btn_tampilkan_filter}
    Sleep                            1s

Search Merek
    Wait Until Element Is Visible    ${input_search_tabel}    timeout=30s
    Click Element                    ${input_search_tabel}
    Press Keys                       ${input_search_tabel}    CTRL+a    BACKSPACE
    Input Text                       ${input_search_tabel}    ${search_merek}
    Press Keys                       ${input_search_tabel}    ENTER
    Sleep                            1s

Input Filter
    Wait Until Element Is Visible    ${input_filter_merek}    timeout=10s
    Click Element                    ${input_filter_merek}
    Press Keys                       ${input_filter_merek}    CTRL+a    BACKSPACE
    Input Text                       ${input_filter_merek}    ${value_merk}
    Sleep                            0.5s

Input Filter Invalid
    Wait Until Element Is Visible    ${input_filter_merek}    timeout=10s
    Click Element                    ${input_filter_merek}
    Press Keys                       ${input_filter_merek}    CTRL+a    BACKSPACE
    Input Text                       ${input_filter_merek}    ${value_invalid}
    Sleep                            0.5s

Input Filter Status
    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_status}
    IF    ${is_search_present}
        Input Text    ${input_search_status}    ${status_option}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_status_aktif}    timeout=10s
    Click Element                    ${opt_status_aktif}
    Sleep                            0.5s

Input Filter Objek Lelang
    Wait Until Element Is Visible    ${dd_objek_lelang_trigger}    timeout=10s
    Click Element                    ${dd_objek_lelang_trigger}
    Sleep                            0.5s
    
    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_objek_lelang}
    IF    ${is_search_present}
        Input Text    ${input_search_objek_lelang}    ${objek_lelang}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_objek_lelang_bike}    timeout=10s
    Click Element                    ${opt_objek_lelang_bike}
    Sleep                            0.5s

input filter multiple
    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_status}
    IF    ${is_search_present}
        Input Text    ${input_search_status}    ${status_option}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_status_aktif}    timeout=10s
    Click Element                    ${opt_status_aktif}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${dd_objek_lelang_trigger}    timeout=10s
    Click Element                    ${dd_objek_lelang_trigger}
    Sleep                            0.5s
    
    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_objek_lelang}
    IF    ${is_search_present}
        Input Text    ${input_search_objek_lelang}    ${objek_lelang}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_objek_lelang_bike}    timeout=10s
    Click Element                    ${opt_objek_lelang_bike}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_filter_merek}    timeout=10s
    Click Element                    ${input_filter_merek}
    Press Keys                       ${input_filter_merek}    CTRL+a    BACKSPACE
    Input Text                       ${input_filter_merek}    ${value_merk}
    Sleep                            0.5s

Ubah Status Toggle Menjadi OFF
    Wait Until Element Is Visible    ${btn_toggle_status}    timeout=10s
    ${is_on}=    Run Keyword And Return Status    Page Should Contain Element    ${btn_toggle_status_on}
    IF    ${is_on}
        Click Element                    ${btn_toggle_status}
        Sleep                            0.5s
        Klik Button Ya Konfirmasi
        
        Wait Until Element Is Visible    ${btn_toggle_status_off}    timeout=5s
    END

Ubah Status Toggle Menjadi ON
    Wait Until Element Is Visible    ${btn_toggle_status}    timeout=10s
    ${is_off}=    Run Keyword And Return Status    Page Should Contain Element    ${btn_toggle_status_off}
    IF    ${is_off}
        Click Element                    ${btn_toggle_status}
        Sleep                            0.5s
        Klik Button Ya Konfirmasi
        
        Wait Until Element Is Visible    ${btn_toggle_status_on}     timeout=5s
    END

Validasi Toast Success Update Status Merek
    Wait Until Element Is Visible        ${toast_success_update_status_merek}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_success_update_status_merek}    timeout=10s
    Sleep    0.5s