* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../../resources/ModulCustomer/LocatorFilterModulCustomer.py

* Keywords *
Input Filter
    [Arguments]    ${status_name}=Aktif    ${tipe_name}=Perorangan    ${seller_status}=Ya       ${customer_name}=${input_customer}      ${blacklist_status}=Tidak

    Wait Until Element Is Visible       ${btn_filter}                                       timeout=30s
    Scroll Element Into View            ${btn_filter}
    Click Element                       ${btn_filter}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${dropdown_status_aktif}                            timeout=10s
    Scroll Element Into View            ${dropdown_status_aktif}
    Click Element                       ${dropdown_status_aktif}
    Sleep                               0.3s

    Input Text                          ${dropdown_status_aktif}                            ${status_name}
    Sleep                               0.8s

    ${locator_option_status}=           Set Variable                                        xpath=//div[@data-radix-popper-content-wrapper or @role='dialog']//button[.//span[text()='${status_name}']]
    Wait Until Page Contains Element    ${locator_option_status}                            timeout=10s
    Wait Until Element Is Visible       ${locator_option_status}                            timeout=10s

    ${el_status_option}=                Get Web Element                                     ${locator_option_status}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_status_option}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${dropdown_tipe}                                    timeout=10s
    Scroll Element Into View            ${dropdown_tipe}
    Click Element                       ${dropdown_tipe}
    Sleep                               0.3s

    Input Text                          ${dropdown_tipe}                                    ${tipe_name}
    Sleep                               0.8s

    ${locator_option_tipe}=             Set Variable                                        xpath=//div[@data-radix-popper-content-wrapper or @role='dialog']//button[.//span[text()='${tipe_name}']]
    Wait Until Page Contains Element    ${locator_option_tipe}                              timeout=10s
    Wait Until Element Is Visible       ${locator_option_tipe}                              timeout=10s

    ${el_tipe_option}=                  Get Web Element                                     ${locator_option_tipe}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_tipe_option}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${dropdown_status_seller}                          timeout=10s
    Scroll Element Into View            ${dropdown_status_seller}
    Click Element                       ${dropdown_status_seller}
    Sleep                               0.3s

    Input Text                          ${dropdown_status_seller}                          ${seller_status}
    Sleep                               0.8s

    ${locator_option_seller}=           Set Variable                                        xpath=//div[@data-radix-popper-content-wrapper or @role='dialog']//button[.//span[text()='${seller_status}']]
    Wait Until Page Contains Element    ${locator_option_seller}                            timeout=10s
    Wait Until Element Is Visible       ${locator_option_seller}                            timeout=10s

    ${el_seller_option}=                Get Web Element                                     ${locator_option_seller}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_seller_option}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_nama_customer}                              timeout=10s
    Scroll Element Into View            ${input_nama_customer}
    Input Text                          ${input_nama_customer}                              ${customer_name}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${dropdown_blacklist}                               timeout=10s
    Scroll Element Into View            ${dropdown_blacklist}
    Click Element                       ${dropdown_blacklist}
    Sleep                               0.3s

    Input Text                          ${dropdown_blacklist}                               ${blacklist_status}
    Sleep                               0.8s

    ${locator_option_blacklist}=        Set Variable                                        xpath=//div[@data-radix-popper-content-wrapper or @role='dialog']//button[.//span[text()='${blacklist_status}']]
    Wait Until Page Contains Element    ${locator_option_blacklist}                         timeout=10s
    Wait Until Element Is Visible       ${locator_option_blacklist}                         timeout=10s

    ${el_blacklist_option}=             Get Web Element                                     ${locator_option_blacklist}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_blacklist_option}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${btn_tampilkan}                                    timeout=10s
    Scroll Element Into View            ${btn_tampilkan}
    ${el_tampilkan}=                    Get Web Element                                     ${btn_tampilkan}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_tampilkan}
    Sleep                               1s

Input Single Field
    [Arguments]     ${no_customer}=${no_customer_input}
    Wait Until Element Is Visible       ${btn_filter}                                       timeout=30s
    Scroll Element Into View            ${btn_filter}
    Click Element                       ${btn_filter}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_no_customer}                                timeout=10s
    Scroll Element Into View            ${input_no_customer}
    Input Text                          ${input_no_customer}                                ${no_customer}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${btn_tampilkan}                                    timeout=10s
    Scroll Element Into View            ${btn_tampilkan}
    ${el_tampilkan}=                    Get Web Element                                     ${btn_tampilkan}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_tampilkan}
    Sleep                               1s

Input Filter Partial
    [Arguments]     ${customer_name}=${input_partial}   ${email_customer}=${email_partial}      ${no_telp}=${no_partial}
    Wait Until Element Is Visible       ${btn_filter}                                       timeout=30s
    Scroll Element Into View            ${btn_filter}
    Click Element                       ${btn_filter}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_nama_customer}                              timeout=10s
    Scroll Element Into View            ${input_nama_customer}
    Input Text                          ${input_nama_customer}                              ${customer_name}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_email_customer}                             timeout=10s
    Scroll Element Into View            ${input_email_customer}
    Input Text                          ${input_email_customer}                             ${email_customer}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${input_no_telp}                                    timeout=10s
    Scroll Element Into View            ${input_no_telp}
    Input Text                          ${input_no_telp}                                    ${no_telp}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${btn_tampilkan}                                    timeout=10s
    Scroll Element Into View            ${btn_tampilkan}
    ${el_tampilkan}=                    Get Web Element                                     ${btn_tampilkan}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_tampilkan}
    Sleep                               1s

Input Filter Specific Tipe And Blacklist
    [Arguments]    ${tipe_name}=Corporate    ${blacklist_status}=Ya

    Wait Until Element Is Visible       ${btn_filter}                                       timeout=30s
    Scroll Element Into View            ${btn_filter}
    Click Element                       ${btn_filter}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${dropdown_tipe}                                    timeout=10s
    Scroll Element Into View            ${dropdown_tipe}
    Click Element                       ${dropdown_tipe}
    Sleep                               0.3s

    Input Text                          ${dropdown_tipe}                                    ${tipe_name}
    Sleep                               0.8s

    ${locator_option_tipe}=             Set Variable                                        xpath=//div[@data-radix-popper-content-wrapper or @role='dialog']//button[.//span[text()='${tipe_name}']]
    Wait Until Page Contains Element    ${locator_option_tipe}                              timeout=10s
    Wait Until Element Is Visible       ${locator_option_tipe}                              timeout=10s

    ${el_tipe_option}=                  Get Web Element                                     ${locator_option_tipe}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_tipe_option}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${dropdown_blacklist}                               timeout=10s
    Scroll Element Into View            ${dropdown_blacklist}
    Click Element                       ${dropdown_blacklist}
    Sleep                               0.3s

    Input Text                          ${dropdown_blacklist}                               ${blacklist_status}
    Sleep                               0.8s

    ${locator_option_blacklist}=        Set Variable                                        xpath=//div[@data-radix-popper-content-wrapper or @role='dialog']//button[.//span[text()='${blacklist_status}']]
    Wait Until Page Contains Element    ${locator_option_blacklist}                         timeout=10s
    Wait Until Element Is Visible       ${locator_option_blacklist}                         timeout=10s

    ${el_blacklist_option}=             Get Web Element                                     ${locator_option_blacklist}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_blacklist_option}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${btn_tampilkan}                                    timeout=10s
    Scroll Element Into View            ${btn_tampilkan}
    ${el_tampilkan}=                    Get Web Element                                     ${btn_tampilkan}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_tampilkan}
    Sleep                               1s

Reset Filter Functionality
    [Arguments]    ${status_name}=Aktif    ${customer_name}=${input_customer}    ${no_telp}=${no_partial}

    Wait Until Element Is Visible       ${btn_filter}                                       timeout=30s
    Scroll Element Into View            ${btn_filter}
    Click Element                       ${btn_filter}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${dropdown_status_aktif}                            timeout=10s
    Scroll Element Into View            ${dropdown_status_aktif}
    Click Element                       ${dropdown_status_aktif}
    Sleep                               0.3s

    Input Text                          ${dropdown_status_aktif}                            ${status_name}
    Sleep                               0.8s

    ${locator_option_status}=           Set Variable                                        xpath=//div[@data-radix-popper-content-wrapper or @role='dialog']//button[.//span[text()='${status_name}']]
    Wait Until Page Contains Element    ${locator_option_status}                            timeout=10s
    Wait Until Element Is Visible       ${locator_option_status}                            timeout=10s

    ${el_status_option}=                Get Web Element                                     ${locator_option_status}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_status_option}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_nama_customer}                              timeout=10s
    Scroll Element Into View            ${input_nama_customer}
    Input Text                          ${input_nama_customer}                              ${customer_name}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${input_no_telp}                                    timeout=10s
    Scroll Element Into View            ${input_no_telp}
    Input Text                          ${input_no_telp}                                    ${no_telp}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${btn_hapus}                                        timeout=10s
    Scroll Element Into View            ${btn_hapus}
    ${el_hapus}=                        Get Web Element                                     ${btn_hapus}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_hapus}
    Sleep                               1s

    Wait Until Element Is Visible       ${btn_filter}                                       timeout=30s
    Scroll Element Into View            ${btn_filter}
    Click Element                       ${btn_filter}
    Sleep                               0.5s

    Element Attribute Value Should Be   ${input_nama_customer}    value                     ${EMPTY}
    Element Attribute Value Should Be   ${input_no_telp}          value                     ${EMPTY}

Filter Data Not Found Empty State
    [Arguments]    ${customer_name}=${input_customer_not_found}    ${no_customer}=${input_Nocustomer_notfound}

    Wait Until Element Is Visible       ${btn_filter}                                       timeout=30s
    Scroll Element Into View            ${btn_filter}
    Click Element                       ${btn_filter}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_no_customer}                                timeout=10s
    Scroll Element Into View            ${input_no_customer}
    Input Text                          ${input_no_customer}                                ${no_customer}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${input_nama_customer}                              timeout=10s
    Scroll Element Into View            ${input_nama_customer}
    Input Text                          ${input_nama_customer}                              ${customer_name}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${btn_tampilkan}                                    timeout=10s
    Scroll Element Into View            ${btn_tampilkan}
    ${el_tampilkan}=                    Get Web Element                                     ${btn_tampilkan}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_tampilkan}
    Sleep                               1s

Filter Security Injection Check
    [Arguments]    ${sqli_payload}=' OR '1'='1    ${xss_payload}=<script>alert(1)</script>

    Wait Until Element Is Visible       ${btn_filter}                                       timeout=30s
    Scroll Element Into View            ${btn_filter}
    Click Element                       ${btn_filter}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_no_customer}                                timeout=10s
    Scroll Element Into View            ${input_no_customer}
    Input Text                          ${input_no_customer}                                ${sqli_payload}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${input_nama_customer}                              timeout=10s
    Scroll Element Into View            ${input_nama_customer}
    Input Text                          ${input_nama_customer}                              ${xss_payload}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${input_email_customer}                             timeout=10s
    Scroll Element Into View            ${input_email_customer}
    Input Text                          ${input_email_customer}                             "';--
    Sleep                               0.3s

    Wait Until Page Contains Element    ${btn_tampilkan}                                    timeout=10s
    Scroll Element Into View            ${btn_tampilkan}
    ${el_tampilkan}=                    Get Web Element                                     ${btn_tampilkan}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_tampilkan}
    Sleep                               1s

Toggle Customer Active Status
    [Arguments]    ${no_customer}=${no_customer_input}

    Wait Until Page Contains Element    ${input_global_search}                              timeout=30s
    Scroll Element Into View            ${input_global_search}
    Clear Element Text                  ${input_global_search}
    Input Text                          ${input_global_search}                              ${no_customer}
    Sleep                               1s

    ${locator_toggle_switch}=           Set Variable                                        xpath=//tr[.//td[contains(., '${no_customer}')]]//button[@role='switch']
    Wait Until Page Contains Element    ${locator_toggle_switch}                            timeout=10s
    Scroll Element Into View            ${locator_toggle_switch}

    Element Attribute Value Should Be   ${locator_toggle_switch}    data-state              checked

    ${el_toggle}=                       Get Web Element                                     ${locator_toggle_switch}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_toggle}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${btn_konfirmasi_ubah}                              timeout=10s
    Wait Until Element Is Visible       ${btn_konfirmasi_ubah}                              timeout=10s
    ${el_confirm}=                      Get Web Element                                     ${btn_konfirmasi_ubah}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_confirm}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${toast_status_updated}                             timeout=10s
    Wait Until Element Is Visible       ${toast_status_updated}                             timeout=10s

Toggle Customer Active Status Off To On
    [Arguments]    ${no_customer}=${no_customer_input}

    Wait Until Page Contains Element    ${input_global_search}                              timeout=30s
    Scroll Element Into View            ${input_global_search}
    Clear Element Text                  ${input_global_search}
    Input Text                          ${input_global_search}                              ${no_customer}
    Sleep                               1s

    ${locator_toggle_switch}=           Set Variable                                        xpath=//tr[.//td[contains(., '${no_customer}')]]//button[@role='switch']
    Wait Until Page Contains Element    ${locator_toggle_switch}                            timeout=10s
    Scroll Element Into View            ${locator_toggle_switch}

    Element Attribute Value Should Be   ${locator_toggle_switch}    data-state              unchecked

    ${el_toggle}=                       Get Web Element                                     ${locator_toggle_switch}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_toggle}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${btn_konfirmasi_ubah}                              timeout=10s
    Wait Until Element Is Visible       ${btn_konfirmasi_ubah}                              timeout=10s
    ${el_confirm}=                      Get Web Element                                     ${btn_konfirmasi_ubah}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_confirm}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${toast_status_updated}                             timeout=10s
    Wait Until Element Is Visible       ${toast_status_updated}                             timeout=10s

Toggle Active Status On View Detail
    [Arguments]    ${no_customer}=${no_customer_input}

    Wait Until Page Contains Element    ${input_global_search}                              timeout=30s
    Scroll Element Into View            ${input_global_search}
    Clear Element Text                  ${input_global_search}
    Input Text                          ${input_global_search}                              ${no_customer}
    Sleep                               1s

    ${locator_btn_view}=                Set Variable                                        xpath=//tr[.//td[contains(., '${no_customer}')]]//button[@aria-label='view' or contains(., 'view')]
    Wait Until Page Contains Element    ${locator_btn_view}                                 timeout=10s
    Scroll Element Into View            ${locator_btn_view}

    ${el_view}=                         Get Web Element                                     ${locator_btn_view}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_view}
    Sleep                               1.5s

    ${locator_switch_view}=             Set Variable                                        xpath=//button[@role='switch' and not(ancestor::tr)]
    
    Wait Until Page Contains Element    ${locator_switch_view}                              timeout=10s
    Scroll Element Into View            ${locator_switch_view}

    Element Attribute Value Should Be   ${locator_switch_view}      data-state              checked

    ${el_switch}=                       Get Web Element                                     ${locator_switch_view}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_switch}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${btn_konfirmasi_ubah}                              timeout=10s
    Wait Until Element Is Visible       ${btn_konfirmasi_ubah}                              timeout=10s
    ${el_confirm}=                      Get Web Element                                     ${btn_konfirmasi_ubah}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_confirm}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${toast_status_updated}                             timeout=10s
    Wait Until Element Is Visible       ${toast_status_updated}                             timeout=10s

Toggle Active Status Off To On On View Detail
    [Arguments]    ${no_customer}=${no_customer_input}

    Wait Until Page Contains Element    ${input_global_search}                              timeout=30s
    Scroll Element Into View            ${input_global_search}
    Clear Element Text                  ${input_global_search}
    Input Text                          ${input_global_search}                              ${no_customer}
    Sleep                               1s

    ${locator_btn_view}=                Set Variable                                        xpath=//tr[.//td[contains(., '${no_customer}')]]//button[@aria-label='view' or contains(., 'view')]
    Wait Until Page Contains Element    ${locator_btn_view}                                 timeout=10s
    Scroll Element Into View            ${locator_btn_view}

    ${el_view}=                         Get Web Element                                     ${locator_btn_view}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_view}
    Sleep                               1.5s

    ${locator_switch_view}=             Set Variable                                        xpath=//button[@role='switch' and not(ancestor::tr)]
    Wait Until Page Contains Element    ${locator_switch_view}                              timeout=10s
    Scroll Element Into View            ${locator_switch_view}

    Element Attribute Value Should Be   ${locator_switch_view}      data-state              unchecked

    ${el_switch}=                       Get Web Element                                     ${locator_switch_view}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_switch}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${btn_konfirmasi_ubah}                              timeout=10s
    Wait Until Element Is Visible       ${btn_konfirmasi_ubah}                              timeout=10s
    ${el_confirm}=                      Get Web Element                                     ${btn_konfirmasi_ubah}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_confirm}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${toast_status_updated}                             timeout=10s
    Wait Until Element Is Visible       ${toast_status_updated}                             timeout=10s