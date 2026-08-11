* Settings *
Library    SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../../resources/ModulSeller/LocatorModulFilterSeller.py

*** Keywords ***
Click Tombol All Filter
    Wait Until Element Is Visible    ${btn_all_filter}    timeout=30s
    Scroll Element Into View         ${btn_all_filter}
    Click Element                    ${btn_all_filter}

Click Tombol Apply Filter
    Wait Until Element Is Visible    ${btn_apply_filter}    timeout=30s
    Scroll Element Into View         ${btn_apply_filter}
    Click Element                    ${btn_apply_filter}

Click Tombol Clear Filter
    Wait Until Element Is Visible    ${btn_apply_clear}    timeout=30s
    Scroll Element Into View         ${btn_apply_clear}
    Click Element                    ${btn_apply_clear}

Select Status In Status
    Wait Until Element Is Visible    ${ddl_status_filter_trigger}    timeout=30s
    Click Element                    ${ddl_status_filter_trigger}

    Wait Until Element Is Visible    ${opt_status_filter_item}       timeout=30s
    Scroll Element Into View         ${opt_status_filter_item}
    Click Element                    ${opt_status_filter_item}

Select Status In Seller
    Wait Until Element Is Visible    ${ddl_Seller_filter_trigger}    timeout=30s
    Click Element                    ${ddl_Seller_filter_trigger}

    Wait Until Element Is Visible    ${opt_seller_filter_item}       timeout=30s
    Scroll Element Into View         ${opt_seller_filter_item}
    Click Element                    ${opt_seller_filter_item}

Search Seller Data
    Wait Until Element Is Visible    ${input_search}    timeout=30s
    
    Clear Element Text               ${input_search}
    Input Text                       ${input_search}    ${value_search}
    
    Press Keys                       ${input_search}    RETURN

Search Seller Data Not Found
    Wait Until Element Is Visible    ${input_search}    timeout=30s
    
    Clear Element Text               ${input_search}
    Input Text                       ${input_search}    ${value_not}
    
    Press Keys                       ${input_search}    RETURN