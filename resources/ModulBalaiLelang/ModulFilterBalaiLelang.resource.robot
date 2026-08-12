* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../../resources/ModulBalaiLelang/LocatorfilterBalaiLelang.py

*** Keywords ***
Open Filter
    Wait Until Element Is Visible    ${btn_filter}    timeout=30s
    Click Element                    ${btn_filter}
    Sleep                            0.5s

Input Filter
    Wait Until Element Is Visible    ${input_filter_balai_lelang}    timeout=10s
    Click Element                    ${input_filter_balai_lelang}
    Press Keys                       ${input_filter_balai_lelang}    CTRL+a    BACKSPACE
    Input Text                       ${input_filter_balai_lelang}    ${value_balai_lelang}
    Sleep                            0.5s

Input Filter Cabang
    Wait Until Element Is Visible    ${input_cabang_balai_lelang}    timeout=10s
    Click Element                    ${input_cabang_balai_lelang}
    Press Keys                       ${input_cabang_balai_lelang}    CTRL+a    BACKSPACE
    Input Text                       ${input_cabang_balai_lelang}    ${value_cabang_lelang}
    Sleep                            0.5s

Klik Button Tampilkan
    Wait Until Element Is Visible    ${btn_tampilkan_filter}    timeout=10s
    Click Element                    ${btn_tampilkan_filter}
    
    Wait Until Element Is Not Visible    ${btn_tampilkan_filter}    timeout=10s
    Sleep    1s 

Klik Button Hapus
    Wait Until Element Is Visible    ${btn_hapus}    timeout=10s
    Click Element                    ${btn_hapus}
    
    Wait Until Element Is Not Visible    ${btn_hapus}    timeout=10s
    Sleep    1s

Search Balai Lelang
    Wait Until Element Is Visible    ${input_search_table}    timeout=30s
    Click Element                    ${input_search_table}    
    Press Keys                       ${input_search_table}    CTRL+a    BACKSPACE
    Input Text                       ${input_search_table}    ${value_search}
    Press Keys                       ${input_search_table}    RETURN
    Sleep                            0.5s

Search Balai Lelang Invalid
    Wait Until Element Is Visible    ${input_search_table}    timeout=30s
    Click Element                    ${input_search_table}    
    Press Keys                       ${input_search_table}    CTRL+a    BACKSPACE
    Input Text                       ${input_search_table}    ${value_search_Invalid}
    Press Keys                       ${input_search_table}    RETURN
    Sleep                            0.5s      