* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorFilterWarna.py

* Keywords *
Klik Button Filter
    Wait Until Element Is Visible    ${btn_filter}    timeout=30s
    Wait Until Element Is Enabled    ${btn_filter}    timeout=10s
    Click Element                    ${btn_filter}
    Sleep                            0.5s

Klik Button Tampilkan Filter
    Wait Until Element Is Visible    ${btn_tampilkan_filter}    timeout=10s
    Wait Until Element Is Enabled    ${btn_tampilkan_filter}    timeout=10s
    Click Element                    ${btn_tampilkan_filter}
    Sleep                            1s

Klik Button Hapus Filter
    Wait Until Element Is Visible    ${btn_hapus_filter}    timeout=10s
    Wait Until Element Is Enabled    ${btn_hapus_filter}    timeout=10s
    Click Element                    ${btn_hapus_filter}
    Sleep                            0.5s

Search Data
    Wait Until Element Is Visible    ${input_search}    timeout=30s
    Click Element                    ${input_search}
    Press Keys                       ${input_search}    CTRL+a    BACKSPACE
    Input Text                       ${input_search}    ${search_warna}
    Press Keys                       ${input_search}    RETURN
    Sleep                            1s

Search Data Multiple
    Wait Until Element Is Visible    ${input_search}    timeout=30s
    Click Element                    ${input_search}
    Press Keys                       ${input_search}    CTRL+a    BACKSPACE
    Input Text                       ${input_search}    ${search_warna_multiple}
    Press Keys                       ${input_search}    RETURN
    Sleep                            1s

Input Data Filter
    Wait Until Element Is Visible    ${input_search_filter_status}   timeout=10s
    Click Element                    ${input_search_filter_status}
    Input Text                       ${input_search_filter_status}   Aktif
    Sleep                            0.5s

    Wait Until Element Is Visible    ${option_status_aktif}           timeout=10s
    Click Element                    ${option_status_aktif}
    Sleep                            0.5s

Input Data Filter Objek Lelang  
    Wait Until Element Is Visible    ${dropdown_objek_lelang}          timeout=10s
    Click Element                    ${dropdown_objek_lelang}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_search_objek_lelang}   timeout=10s
    Click Element                    ${input_search_objek_lelang}
    Input Text                       ${input_search_objek_lelang}   Car
    Sleep                            0.5s

    Wait Until Element Is Visible    ${option_status_objek}           timeout=10s
    Click Element                    ${option_status_objek}
    Sleep                            0.5s

input Data Multiple
    Wait Until Element Is Visible    ${input_search_filter_status}   timeout=10s    
    Click Element                    ${input_search_filter_status}
    Input Text                       ${input_search_filter_status}   Aktif
    Sleep                            0.5s

    Wait Until Element Is Visible    ${option_status_aktif}           timeout=10s
    Click Element                    ${option_status_aktif}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${dropdown_objek_lelang}          timeout=10s
    Click Element                    ${dropdown_objek_lelang}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_search_objek_lelang}   timeout=10s
    Click Element                    ${input_search_objek_lelang}
    Input Text                       ${input_search_objek_lelang}   Car
    Sleep                            0.5s

    Wait Until Element Is Visible    ${option_status_objek}           timeout=10s
    Click Element                    ${option_status_objek}
    Sleep                            0.5s

input Data Multiple Invalid
    Wait Until Element Is Visible    ${input_search_filter_status}   timeout=10s    
    Click Element                    ${input_search_filter_status}
    Input Text                       ${input_search_filter_status}   Non Aktif
    Sleep                            0.5s

    Wait Until Element Is Visible    ${option_status_nonaktif}           timeout=10s
    Click Element                    ${option_status_nonaktif}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${dropdown_objek_lelang}          timeout=10s
    Click Element                    ${dropdown_objek_lelang}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_search_objek_lelang}   timeout=10s
    Click Element                    ${input_search_objek_lelang}
    Input Text                       ${input_search_objek_lelang}   Bike
    Sleep                            0.5s

    Wait Until Element Is Visible    ${option_status_invalid}           timeout=10s
    Click Element                    ${option_status_invalid}
    Sleep                            0.5s  

Search Data Invalid
    Wait Until Element Is Visible    ${input_search}    timeout=30s
    Click Element                    ${input_search}
    Press Keys                       ${input_search}    CTRL+a    BACKSPACE
    Input Text                       ${input_search}    ${Search_warna_invalid}
    Press Keys                       ${input_search}    RETURN
    Sleep                            1s