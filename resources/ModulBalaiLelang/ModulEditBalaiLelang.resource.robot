* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Library    read_excel.py
Variables  ../../resources/ModulBalaiLelang/LocatorEditBalaiLelang.py

*** Keywords ***
Click Edit Action From Table
    Wait Until Element Is Visible    ${btn_action_dropdown}    timeout=30s
    Click Element                    ${btn_action_dropdown}

    Wait Until Element Is Visible    ${btn_option_edit}        timeout=10s
    Click Element                    ${btn_option_edit}

Click Button Simpan Edit Modal
    Wait Until Element Is Visible    ${btn_simpan_modal}         timeout=30s
    Click Element                    ${btn_simpan_modal}

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}        timeout=10s
    Click Element                    ${btn_ya_konfirmasi}

    Wait Until Element Is Visible    ${toast_success_update}     timeout=10s
    Page Should Contain Element      ${toast_success_update}

Click Button Simpan Edit Modal Duplicate
    Wait Until Element Is Visible    ${btn_simpan_modal}         timeout=30s
    Click Element                    ${btn_simpan_modal}

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}        timeout=10s
    Click Element                    ${btn_ya_konfirmasi}

    Wait Until Element Is Visible    ${toast_error_duplicate}     timeout=10s
    Page Should Contain Element      ${toast_error_duplicate}

Search Field 
    [Arguments]    ${query}=${val_search_balai_lelang}
    
    Wait Until Element Is Visible    ${input_search_table}    timeout=30s
    Click Element                    ${input_search_table}
    Press Keys                       ${input_search_table}    CTRL+a    BACKSPACE
    Press Keys                       ${input_search_table}    ${query}    RETURN
    Sleep                            1s

    Click Edit Action From Table
    Sleep                           1s

Search Field Duplicate
    [Arguments]    ${query}=${val_search_balailelang_Duplicate}
    
    Wait Until Element Is Visible    ${input_search_table}    timeout=30s
    Click Element                    ${input_search_table}
    Press Keys                       ${input_search_table}    CTRL+a    BACKSPACE
    Press Keys                       ${input_search_table}    ${query}    RETURN
    Sleep                            1s

    Click Edit Action From Table
    Sleep                           1s

Edit Seller Dropdown
    [Arguments]    ${target_seller}=${edit_seller_name}
    
    Wait Until Element Is Visible    ${btn_remove_selected_seller}    timeout=10s
    Click Element                    ${btn_remove_selected_seller}
    Sleep                            500ms

    Wait Until Element Is Visible    ${Dropdown_seller}               timeout=10s
    Click Element                    ${Dropdown_seller}

    Wait Until Element Is Visible    ${input_seller}                  timeout=10s
    Click Element                    ${input_seller}
    Press Keys                       ${input_seller}                  CTRL+a    BACKSPACE
    Press Keys                       ${input_seller}                  ${target_seller}

    ${opt_seller}=    Set Variable   xpath=//div[@role='option'][contains(normalize-space(), '${target_seller}')]
    Wait Until Element Is Visible    ${opt_seller}                    timeout=10s
    Click Element                    ${opt_seller}

Edit text Balai Lelang
    [Arguments]    ${alamat}=${val_edit_alamat_balai_lelang}    ${catatan}=${val_edit_catatan}
    
    Wait Until Element Is Visible    ${textarea_edit_alamat_balai_lelang}    timeout=30s
    Click Element                    ${textarea_edit_alamat_balai_lelang}
    Press Keys                       ${textarea_edit_alamat_balai_lelang}    CTRL+a    BACKSPACE
    Press Keys                       ${textarea_edit_alamat_balai_lelang}    ${alamat}    TAB

    Wait Until Element Is Visible    ${textarea_edit_catatan}                timeout=30s
    Click Element                    ${textarea_edit_catatan}
    Press Keys                       ${textarea_edit_catatan}                CTRL+a    BACKSPACE
    Press Keys                       ${textarea_edit_catatan}                ${catatan}    TAB

Edit Lane Car Checkbox And Lot Disable
    [Arguments]    ${new_lot_value}=${val_edit_lot_disable_car}
    
    Wait Until Element Is Visible    ${chk_lane_car_a_input}       timeout=10s
    Click Element                    ${chk_lane_car_a_input}

    Wait Until Element Is Visible    ${chk_lane_car_b_input}       timeout=10s
    Click Element                    ${chk_lane_car_b_input}

    Wait Until Element Is Visible    ${btn_remove_tag_lot_car}    timeout=10s
    Click Element                    ${btn_remove_tag_lot_car}

    Wait Until Element Is Visible    ${input_lot_disable_car}     timeout=10s
    Click Element                    ${input_lot_disable_car}
    Press Keys                       ${input_lot_disable_car}     ${new_lot_value}    RETURN

Edit Lane Bike Checkbox And Lot Disable
    [Arguments]    ${new_lot_value}=${val_edit_lot_disable_bike}
    
    Wait Until Element Is Visible    ${chk_lane_bike_b_input}       timeout=10s
    Click Element                    ${chk_lane_bike_b_input}

    Wait Until Element Is Visible    ${chk_lane_bike_a_input}       timeout=10s
    Click Element                    ${chk_lane_bike_a_input}

    Wait Until Element Is Visible    ${btn_remove_tag_lot_bike}    timeout=10s
    Click Element                    ${btn_remove_tag_lot_bike}

    Wait Until Element Is Visible    ${input_lot_disable_bike}    timeout=10s
    Click Element                    ${input_lot_disable_bike}
    Press Keys                       ${input_lot_disable_bike}    ${new_lot_value}    RETURN

Edit Field Balai Lelang Dan Cabang
    [Arguments]    ${nama_balai}=${val_edit_balai_lelang}    ${cabang_balai}=${val_edit_cabang_balai_lelang}
    
    Wait Until Element Is Visible    ${input_edit_balai_lelang}             timeout=30s
    Click Element                    ${input_edit_balai_lelang}
    Press Keys                       ${input_edit_balai_lelang}             CTRL+a    BACKSPACE
    Press Keys                       ${input_edit_balai_lelang}             ${nama_balai}    TAB
    Sleep                            1s

    Wait Until Element Is Visible    ${input_edit_cabang_balai_lelang}      timeout=30s
    Click Element                    ${input_edit_cabang_balai_lelang}
    Press Keys                       ${input_edit_cabang_balai_lelang}      CTRL+a    BACKSPACE
    Press Keys                       ${input_edit_cabang_balai_lelang}      ${cabang_balai}   TAB
    Sleep                            1s

    Edit Seller Dropdown
    Sleep                            1s

    Edit text Balai Lelang
    Sleep                            1s

    Edit Lane Car Checkbox And Lot Disable
    Sleep                            1s

    Edit Lane Bike Checkbox And Lot Disable
    Sleep                            1s

Clear All Lot Disable Lane Car
    Wait Until Element Is Visible    ${btn_clear_all_lane_car}    timeout=10s
    Scroll Element Into View         ${btn_clear_all_lane_car}
    Click Element                    ${btn_clear_all_lane_car}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${btn_clear_all_lane_bike}   timeout=10s
    Click Element                    ${btn_clear_all_lane_bike}
    Sleep                            0.5s

Set Lane Checkbox Excel
    [Documentation]    Mengambil WebElement asli DOM agar pengecekan .checked & data-state 100% akurat.
    [Arguments]    ${section_name}    ${target_lane}
    @{options}=    Create List    A    B    C    D

    FOR    ${opt}    IN    @{options}
        ${input_xpath}=    Set Variable    xpath=//p[text()='${section_name}']/following-sibling::div//label[text()='${opt}']/preceding-sibling::input

        ${elem}=           Get WebElement    ${input_xpath}

        ${is_checked}=     Execute JavaScript
        ...    var el = arguments[0];
        ...    if (!el) return false;
        ...    var state = el.getAttribute('data-state');
        ...    var aria = el.getAttribute('aria-checked');
        ...    var hasAttr = el.hasAttribute('checked');
        ...    return el.checked || state === 'checked' || aria === 'true' || hasAttr;
        ...    ARGUMENTS    ${elem}

        IF    '${opt}' == '${target_lane}'
            IF    not ${is_checked}
                Wait Until Element Is Visible    ${input_xpath}    timeout=5s
                Click Element                    ${input_xpath}
                Sleep                            0.4s
            END
        ELSE
            IF    ${is_checked}
                Wait Until Element Is Visible    ${input_xpath}    timeout=5s
                Click Element                    ${input_xpath}
                Sleep                            0.4s
            END
        END
    END

Edit Lane Dan Lot From Excel
    ${excel_data_list}=    Get Data Edit Lelang From Excel    ${PATH_EXCEL_EDIT_LELANG}

    FOR    ${row}    IN    @{excel_data_list}
        Wait Until Element Is Visible    ${input_search_table}                  timeout=30s
        Press Keys                       ${input_search_table}                  CTRL+a    BACKSPACE
        Input Text                       ${input_search_table}                  ${row}[alamat]
        Press Keys                       ${input_search_table}                  RETURN
        Sleep                            1s

        Wait Until Element Is Visible    ${btn_action_dropdown}                  timeout=10s
        Click Element                    ${btn_action_dropdown}
        Wait Until Element Is Visible    ${btn_option_edit}                      timeout=10s
        Click Element                    ${btn_option_edit}

        Sleep                            1s

        Set Lane Checkbox Excel          Lane Car                               ${row}[lane_car]

        Run Keyword And Ignore Error     Click Element                          ${btn_remove_tag_lot_car_excel}

        Wait Until Element Is Visible    ${input_lot_disable_car_excel}          timeout=10s
        Click Element                    ${input_lot_disable_car_excel}
        Press Keys                       ${input_lot_disable_car_excel}          CTRL+a    BACKSPACE
        Input Text                       ${input_lot_disable_car_excel}          ${row}[lot_car]
        Press Keys                       ${input_lot_disable_car_excel}          RETURN

        Set Lane Checkbox Excel          Lane Bike                              ${row}[lane_bike]

        Run Keyword And Ignore Error     Click Element                          ${btn_remove_tag_lot_bike_excel}

        Wait Until Element Is Visible    ${input_lot_disable_bike_excel}         timeout=10s
        Click Element                    ${input_lot_disable_bike_excel}
        Press Keys                       ${input_lot_disable_bike_excel}         CTRL+a    BACKSPACE
        Input Text                       ${input_lot_disable_bike_excel}         ${row}[lot_bike]
        Press Keys                       ${input_lot_disable_bike_excel}         RETURN

        Wait Until Element Is Visible    ${btn_simpan_modal}                      timeout=10s
        Click Element                    ${btn_simpan_modal}

        Wait Until Element Is Visible    ${btn_ya_konfirmasi}                     timeout=10s
        Click Element                    ${btn_ya_konfirmasi}

        Wait Until Element Is Not Visible    ${btn_simpan_modal}                  timeout=10s

        Wait Until Element Is Visible    ${toast_success_update}                  timeout=10s
        Wait Until Element Is Not Visible    ${toast_success_update}              timeout=10s

        Sleep    1s
    END