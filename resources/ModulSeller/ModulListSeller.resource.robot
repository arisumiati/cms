* Settings *
Library    SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../../resources/ModulSeller/LocatorModulListSeller.py

*** Keywords ***
Search Seller Data
    Wait Until Element Is Visible    ${input_search}    timeout=30s
    
    Clear Element Text               ${input_search}
    Input Text                       ${input_search}    ${value_list}
    
    Press Keys                       ${input_search}    RETURN

Turn Off Status Switch
    Wait Until Element Is Visible    ${btn_switch_status}       timeout=30s
    Scroll Element Into View         ${btn_switch_status}

    ${is_on}=    Run Keyword And Return Status    Page Should Contain Element    ${btn_switch_status_on}
    IF    ${is_on}
        Click Element                ${btn_switch_status}
        
        Wait Until Element Is Visible    ${btn_yes_confirm_status}    timeout=10s
        Click Element                    ${btn_yes_confirm_status}
    END

Turn On Status Switch
    Wait Until Element Is Visible    ${btn_switch_status}       timeout=30s
    Scroll Element Into View         ${btn_switch_status}

    ${is_off}=    Run Keyword And Return Status    Page Should Contain Element    ${btn_switch_status_off}
    IF    ${is_off}
        Click Element                ${btn_switch_status}
        
        Wait Until Element Is Visible    ${btn_yes_confirm_status}    timeout=10s
        Click Element                    ${btn_yes_confirm_status}
    END