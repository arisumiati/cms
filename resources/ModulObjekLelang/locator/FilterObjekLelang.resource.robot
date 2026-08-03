* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorModulObjekLelang.py
Variables  ../locator/LocatorFilterObjekLelang.py
* Keywords *
Filter Objek Lelang
    [Arguments]    ${merek_name}=${input_merek}     ${cabang_name}=${input_cabang}

    Wait Until Element Is Visible        ${btn_filter}                     timeout=30s
    Scroll Element Into View             ${btn_filter}
    Click Element                        ${btn_filter}
    Sleep                                0.5s

    Wait Until Page Contains Element    ${dropdown_filter_cabang}         timeout=10s
    Scroll Element Into View            ${dropdown_filter_cabang}
    ${el_trigger}=                      Get Web Element                  ${dropdown_filter_cabang}
    Execute Javascript                  arguments[0].click();            ARGUMENTS    ${el_trigger}
    Sleep    0.5s

    ${locator_option}=                  Set Variable                     xpath=//div[@role='dialog']//button[.//span[text()='${cabang_name}']]
    Wait Until Page Contains Element    ${locator_option}                timeout=10s
    Scroll Element Into View            ${locator_option}
    ${el_option}=                       Get Web Element                  ${locator_option}
    Execute Javascript                  arguments[0].click();            ARGUMENTS    ${el_option}
    Sleep    0.5s

    Wait Until Element Is Visible        ${dropdown_objek_lelang}          timeout=10s
    Scroll Element Into View             ${dropdown_objek_lelang}
    Click Element                        ${dropdown_objek_lelang}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${option_electronic}              timeout=10s
    Scroll Element Into View             ${option_electronic}
    ${el_electronic}=                    Get Web Element                   ${option_electronic}
    Execute Javascript                   arguments[0].click();             ARGUMENTS    ${el_electronic}
    Sleep                                0.5s

    Wait Until Page Contains Element    ${dropdown_filter_merek}          timeout=10s
    Scroll Element Into View            ${dropdown_filter_merek}
    ${el_trigger}=                      Get Web Element                   ${dropdown_filter_merek}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_trigger}
    Sleep                                0.5s

    ${locator_option}=                  Set Variable                      xpath=//div[@role='dialog']//button[.//span[text()='${merek_name}']]
    Wait Until Page Contains Element    ${locator_option}                 timeout=10s
    Scroll Element Into View            ${locator_option}
    ${el_option}=                       Get Web Element                   ${locator_option}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_option}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${btn_tampilkan}                  timeout=10s
    Scroll Element Into View             ${btn_tampilkan}
    Click Element                        ${btn_tampilkan}
    Sleep                                1s

Filter Objek Lelang By No Stok
    [Arguments]    ${no_stok_val}=${No_Stok_Filter}
    Wait Until Element Is Visible        ${btn_filter}                     timeout=30s
    Scroll Element Into View             ${btn_filter}
    Click Element                        ${btn_filter}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${dropdown_objek_lelang}          timeout=10s
    Scroll Element Into View             ${dropdown_objek_lelang}
    Click Element                        ${dropdown_objek_lelang}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${option_electronic}              timeout=10s
    Scroll Element Into View             ${option_electronic}
    ${el_electronic}=                    Get Web Element                   ${option_electronic}
    Execute Javascript                   arguments[0].click();             ARGUMENTS    ${el_electronic}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${input_filter_no_stok}          timeout=10s
    Scroll Element Into View             ${input_filter_no_stok}
    Clear Element Text                   ${input_filter_no_stok}
    Input Text                           ${input_filter_no_stok}          ${no_stok_val}
    Sleep    0.3s

    Wait Until Element Is Visible        ${btn_tampilkan}                  timeout=10s
    Scroll Element Into View             ${btn_tampilkan}
    Click Element                        ${btn_tampilkan}
    Sleep                                1s

Filter Objek Lelang By Seller Name
    [Arguments]    ${seller_val}=${input_seller_name}
    Wait Until Element Is Visible        ${btn_filter}                     timeout=30s
    Scroll Element Into View             ${btn_filter}
    Click Element                        ${btn_filter}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${dropdown_objek_lelang}          timeout=10s
    Scroll Element Into View             ${dropdown_objek_lelang}
    Click Element                        ${dropdown_objek_lelang}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${option_electronic}              timeout=10s
    Scroll Element Into View             ${option_electronic}
    ${el_electronic}=                    Get Web Element                   ${option_electronic}
    Execute Javascript                   arguments[0].click();             ARGUMENTS    ${el_electronic}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${input_filter_seller_name}      timeout=10s
    Scroll Element Into View             ${input_filter_seller_name}
    Clear Element Text                   ${input_filter_seller_name}
    Input Text                           ${input_filter_seller_name}      ${seller_val}
    Sleep                                0.3s

    Wait Until Element Is Visible        ${btn_tampilkan}                  timeout=10s
    Scroll Element Into View             ${btn_tampilkan}
    Click Element                        ${btn_tampilkan}
    Sleep                                1s

Filter Objek Lelang By Created Date
    [Arguments]    ${date_val}=${input_created_at}

    Wait Until Element Is Visible        ${btn_filter}                     timeout=30s
    Scroll Element Into View             ${btn_filter}
    Click Element                        ${btn_filter}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${dropdown_objek_lelang}          timeout=10s
    Scroll Element Into View             ${dropdown_objek_lelang}
    Click Element                        ${dropdown_objek_lelang}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${option_electronic}              timeout=10s
    Scroll Element Into View             ${option_electronic}
    ${el_electronic}=                    Get Web Element                   ${option_electronic}
    Execute Javascript                   arguments[0].click();             ARGUMENTS    ${el_electronic}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${input_filter_created_date}      timeout=10s
    Scroll Element Into View             ${input_filter_created_date}
    Clear Element Text                   ${input_filter_created_date}
    Input Text                           ${input_filter_created_date}      ${date_val}
    Press Keys                           ${input_filter_created_date}      TAB
    Sleep                                2s

    Wait Until Element Is Visible        ${btn_tampilkan}                  timeout=10s
    Scroll Element Into View             ${btn_tampilkan}
    Click Element                        ${btn_tampilkan}
    Sleep                                1s

Reset Filter
    [Arguments]    ${date_val}=${input_created_at}      ${seller_val}=${input_seller_name}       ${no_stok_val}=${No_Stok_Filter}  

    Wait Until Element Is Visible        ${btn_filter}                     timeout=30s
    Scroll Element Into View             ${btn_filter}
    Click Element                        ${btn_filter}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${dropdown_objek_lelang}          timeout=10s
    Scroll Element Into View             ${dropdown_objek_lelang}
    Click Element                        ${dropdown_objek_lelang}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${option_electronic}              timeout=10s
    Scroll Element Into View             ${option_electronic}
    ${el_electronic}=                    Get Web Element                   ${option_electronic}
    Execute Javascript                   arguments[0].click();             ARGUMENTS    ${el_electronic}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${input_filter_no_stok}          timeout=10s
    Scroll Element Into View             ${input_filter_no_stok}
    Clear Element Text                   ${input_filter_no_stok}
    Input Text                           ${input_filter_no_stok}          ${no_stok_val}
    Sleep    0.3s

    Wait Until Element Is Visible        ${input_filter_seller_name}      timeout=10s
    Scroll Element Into View             ${input_filter_seller_name}
    Clear Element Text                   ${input_filter_seller_name}
    Input Text                           ${input_filter_seller_name}      ${seller_val}
    Sleep                                0.3s

    Wait Until Element Is Visible        ${input_filter_created_date}      timeout=10s
    Scroll Element Into View             ${input_filter_created_date}
    Clear Element Text                   ${input_filter_created_date}
    Input Text                           ${input_filter_created_date}      ${date_val}
    Press Keys                           ${input_filter_created_date}      TAB
    Sleep                                2s

    Wait Until Page Contains Element    ${btn_hapus}                     timeout=10s
    Scroll Element Into View            ${btn_hapus}
    ${el_hapus}=                        Get Web Element                  ${btn_hapus}
    Execute Javascript                  arguments[0].click();            ARGUMENTS    ${el_hapus}
    Sleep                               0.5s

    Wait Until Element Is Visible        ${btn_filter}                     timeout=30s
    Scroll Element Into View             ${btn_filter}
    Click Element                        ${btn_filter}
    Sleep                                0.5s

Filter Objek Lelang By Status Unit
    [Arguments]    ${status_name}=${input_status_unit}

    Wait Until Element Is Visible        ${btn_filter}                     timeout=30s
    Scroll Element Into View             ${btn_filter}
    Click Element                        ${btn_filter}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${dropdown_objek_lelang}          timeout=10s
    Scroll Element Into View             ${dropdown_objek_lelang}
    Click Element                        ${dropdown_objek_lelang}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${option_electronic}              timeout=10s
    Scroll Element Into View             ${option_electronic}
    ${el_electronic}=                    Get Web Element                   ${option_electronic}
    Execute Javascript                   arguments[0].click();             ARGUMENTS    ${el_electronic}
    Sleep                                0.5s

    Wait Until Page Contains Element    ${dropdown_status_unit}           timeout=10s
    Scroll Element Into View            ${dropdown_status_unit}
    ${el_trigger}=                      Get Web Element                   ${dropdown_status_unit}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_trigger}
    Sleep                               0.5s

    ${locator_option}=                  Set Variable                      xpath=//div[@role='option'][.//span[text()='${status_name}']]
    Wait Until Page Contains Element    ${locator_option}                 timeout=10s
    Scroll Element Into View            ${locator_option}
    ${el_option}=                       Get Web Element                   ${locator_option}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_option}
    Sleep                               0.5s

    Wait Until Element Is Visible        ${btn_tampilkan}                  timeout=10s
    Scroll Element Into View             ${btn_tampilkan}
    Click Element                        ${btn_tampilkan}
    Sleep                                1s

Filter Objek Lelang By Empty State
    [Arguments]    ${seller_val}=${input_seller_Empty}
    Wait Until Element Is Visible        ${btn_filter}                     timeout=30s
    Scroll Element Into View             ${btn_filter}
    Click Element                        ${btn_filter}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${dropdown_objek_lelang}          timeout=10s
    Scroll Element Into View             ${dropdown_objek_lelang}
    Click Element                        ${dropdown_objek_lelang}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${option_electronic}              timeout=10s
    Scroll Element Into View             ${option_electronic}
    ${el_electronic}=                    Get Web Element                   ${option_electronic}
    Execute Javascript                   arguments[0].click();             ARGUMENTS    ${el_electronic}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${input_filter_seller_name}      timeout=10s
    Scroll Element Into View             ${input_filter_seller_name}
    Clear Element Text                   ${input_filter_seller_name}
    Input Text                           ${input_filter_seller_name}      ${seller_val}
    Sleep                                0.3s

    Wait Until Element Is Visible        ${btn_tampilkan}                  timeout=10s
    Scroll Element Into View             ${btn_tampilkan}
    Click Element                        ${btn_tampilkan}
    Sleep                                1s

Filter Objek Lelang By Sql
    [Arguments]    ${seller_val}=${input_seller_Sql}
    Wait Until Element Is Visible        ${btn_filter}                     timeout=30s
    Scroll Element Into View             ${btn_filter}
    Click Element                        ${btn_filter}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${dropdown_objek_lelang}          timeout=10s
    Scroll Element Into View             ${dropdown_objek_lelang}
    Click Element                        ${dropdown_objek_lelang}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${option_electronic}              timeout=10s
    Scroll Element Into View             ${option_electronic}
    ${el_electronic}=                    Get Web Element                   ${option_electronic}
    Execute Javascript                   arguments[0].click();             ARGUMENTS    ${el_electronic}
    Sleep                                0.5s

    Wait Until Element Is Visible        ${input_filter_seller_name}      timeout=10s
    Scroll Element Into View             ${input_filter_seller_name}
    Clear Element Text                   ${input_filter_seller_name}
    Input Text                           ${input_filter_seller_name}      ${seller_val}
    Sleep                                0.3s

    Wait Until Element Is Visible        ${btn_tampilkan}                  timeout=10s
    Scroll Element Into View             ${btn_tampilkan}
    Click Element                        ${btn_tampilkan}
    Sleep                                1s