* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorFilterModel.py

* Keywords *
Klik Button Filter
    Wait Until Element Is Visible    ${btn_filter}    timeout=30s
    Wait Until Element Is Enabled    ${btn_filter}    timeout=10s
    Click Element                    ${btn_filter}
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

Search Data Model
    Wait Until Element Is Visible    ${input_search_merek}    timeout=30s
    Click Element                    ${input_search_merek}
    Press Keys                       ${input_search_merek}    CTRL+a    BACKSPACE
    Input Text                       ${input_search_merek}    ${nama_merk}
    Press Keys                       ${input_search_merek}    ENTER
    Sleep                            1s

Search Data Model Invalid
    Wait Until Element Is Visible    ${input_search_merek}    timeout=30s
    Click Element                    ${input_search_merek}
    Press Keys                       ${input_search_merek}    CTRL+a    BACKSPACE
    Input Text                       ${input_search_merek}    ${nama_merk_invalid}
    Press Keys                       ${input_search_merek}    ENTER
    Sleep                            1s

Input Filter Status
    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_popover}
    IF    ${is_search_present}
        Input Text    ${input_search_popover}    ${option_status}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_status_aktif}    timeout=10s
    Click Element                    ${opt_status_aktif}
    Sleep                            0.5s

Input Filter Objek Lelang
    Wait Until Element Is Visible    ${dd_objek_lelang_filter_trigger}    timeout=10s
    Click Element                    ${dd_objek_lelang_filter_trigger}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_popover}
    IF    ${is_search_present}
        Input Text    ${input_search_popover}    ${option_objek}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_objek_lelang_car_filter}    timeout=10s
    Click Element                    ${opt_objek_lelang_car_filter}
    Sleep                            0.5s

Input Filter Merk
    Wait Until Element Is Visible    ${dd_merek_filter_trigger}    timeout=10s
    Click Element                    ${dd_merek_filter_trigger}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_popover}
    IF    ${is_search_present}
        Input Text    ${input_search_popover}    ${option_merek}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_merek_mitsubishi_filter}    timeout=10s
    Click Element                    ${opt_merek_mitsubishi_filter}
    Sleep                            0.5s

Input Filter Model
    Wait Until Element Is Visible    ${input_model_filter}    timeout=10s
    Click Element                    ${input_model_filter}
    Press Keys                       ${input_model_filter}    CTRL+a    BACKSPACE
    Input Text                       ${input_model_filter}    ${nama_model}
    Sleep                            0.5s