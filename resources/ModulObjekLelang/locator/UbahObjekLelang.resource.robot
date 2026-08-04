* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorUbahObjekLelang.py
* Keywords *
Select Objek Lelang
    [Arguments]    ${objek_name}=${input_objek_lelang}

    Wait Until Element Is Visible        ${btn_filter}                    timeout=30s
    Scroll Element Into View             ${btn_filter}
    Click Element                        ${btn_filter}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${dropdown_objek_lelang}         timeout=10s
    Scroll Element Into View            ${dropdown_objek_lelang}
    Click Element                       ${dropdown_objek_lelang}
    Sleep                               0.5s

    ${locator_option}=                  Set Variable                     xpath=//div[@role='dialog']//button[.//span[text()='${objek_name}']]
    Wait Until Page Contains Element    ${locator_option}                timeout=10s
    Scroll Element Into View            ${locator_option}
    ${el_option}=                       Get Web Element                  ${locator_option}
    Execute Javascript                  arguments[0].click();            ARGUMENTS    ${el_option}
    Sleep                               0.5s

    Wait Until Element Is Visible        ${btn_tampilkan}                  timeout=10s
    Scroll Element Into View             ${btn_tampilkan}
    Click Element                        ${btn_tampilkan}
    Sleep                                1s

Input Search No Stok
    [Arguments]    ${no_stok_value}=${input_no_stok}

    Wait Until Element Is Visible        ${input_search_global}           timeout=10s
    Scroll Element Into View             ${input_search_global}

    Clear Element Text                   ${input_search_global}
    Input Text                           ${input_search_global}           ${no_stok_value}

Input Search No Stok Sold
    [Arguments]    ${no_stok_value}=${input_no_stok_sold}

    Wait Until Element Is Visible        ${input_search_global}           timeout=10s
    Scroll Element Into View             ${input_search_global}

    Clear Element Text                   ${input_search_global}
    Input Text                           ${input_search_global}           ${no_stok_value}

Input Search No Stok Paid
    [Arguments]    ${no_stok_value}=${input_no_stok_paid}

    Wait Until Element Is Visible        ${input_search_global}           timeout=10s
    Scroll Element Into View             ${input_search_global}

    Clear Element Text                   ${input_search_global}
    Input Text                           ${input_search_global}           ${no_stok_value}

Input Search No Stok Suspended
    [Arguments]    ${no_stok_value}=${input_no_stok_suspended}

    Wait Until Element Is Visible        ${input_search_global}           timeout=10s
    Scroll Element Into View             ${input_search_global}

    Clear Element Text                   ${input_search_global}
    Input Text                           ${input_search_global}           ${no_stok_value}

Input Search No Stok Returned
    [Arguments]    ${no_stok_value}=${input_no_stok_returned}

    Wait Until Element Is Visible        ${input_search_global}           timeout=10s
    Scroll Element Into View             ${input_search_global}

    Clear Element Text                   ${input_search_global}
    Input Text                           ${input_search_global}           ${no_stok_value}

Input Search No Stok Released
    [Arguments]    ${no_stok_value}=${input_no_stok_released}

    Wait Until Element Is Visible        ${input_search_global}           timeout=10s
    Scroll Element Into View             ${input_search_global}

    Clear Element Text                   ${input_search_global}
    Input Text                           ${input_search_global}           ${no_stok_value}

Turn On Status Aktif Menjadi Off
    Wait Until Page Contains Element    ${switch_status_aktif_on}             timeout=10s
    Scroll Element Into View            ${switch_status_aktif_on}

    ${el_switch}=                       Get Web Element                       ${switch_status_aktif_on}
    Execute Javascript                  arguments[0].click();                 ARGUMENTS    ${el_switch}
    Sleep                               0.5s

    Wait Until Element Is Visible        ${btn_ya_konfirmasi_ubah_switch}      timeout=10s
    Scroll Element Into View             ${btn_ya_konfirmasi_ubah_switch}
    ${el_confirm}=                      Get Web Element                       ${btn_ya_konfirmasi_ubah_switch}
    Execute Javascript                  arguments[0].click();                 ARGUMENTS    ${el_confirm}

    Wait Until Page Contains Element    ${switch_status_off}                  timeout=10s
    Log                                 Status Aktif berhasil diubah ke OFF!

    Wait Until Page Contains Element    ${toast_update_success}               timeout=10s
    Log                                 SUCCESS: Update status aktif objek sukses!

Turn Off Status Aktif Menjadi On
    Wait Until Page Contains Element    ${switch_status_off}                  timeout=10s
    Scroll Element Into View            ${switch_status_off}

    ${el_switch}=                       Get Web Element                       ${switch_status_off}
    Execute Javascript                  arguments[0].click();                 ARGUMENTS    ${el_switch}
    Sleep                               0.5s

    Wait Until Element Is Visible        ${btn_ya_konfirmasi_ubah_switch}      timeout=10s
    Scroll Element Into View             ${btn_ya_konfirmasi_ubah_switch}
    ${el_confirm}=                      Get Web Element                       ${btn_ya_konfirmasi_ubah_switch}
    Execute Javascript                  arguments[0].click();                 ARGUMENTS    ${el_confirm}

    Wait Until Page Contains Element    ${switch_status_aktif_on}             timeout=10s
    Log                                 Status Aktif berhasil diubah ke ON!

    Wait Until Page Contains Element    ${toast_update_success}               timeout=10s
    Log                                 SUCCESS: Update status aktif objek sukses!

Turn On Status Aktif Menjadi On View
    Wait Until Page Contains Element    ${btn_view}                       timeout=10s
    Scroll Element Into View            ${btn_view}
    ${el_view}=                         Get Web Element                   ${btn_view}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_view}
    Sleep                               1s

    Wait Until Page Contains Element    ${switch_view_detail_on}          timeout=10s
    Scroll Element Into View            ${switch_view_detail_on}
    ${el_switch}=                       Get Web Element                   ${switch_view_detail_on}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_switch}
    Sleep                               0.5s

    Wait Until Element Is Visible        ${btn_ya_konfirmasi_ubah_switch}  timeout=10s
    Scroll Element Into View             ${btn_ya_konfirmasi_ubah_switch}
    ${el_confirm}=                      Get Web Element                   ${btn_ya_konfirmasi_ubah_switch}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_confirm}

    Wait Until Page Contains Element    ${switch_view_detail_off}         timeout=10s
    Log                                 Status Aktif di View Detail berhasil diubah ke OFF!

    Wait Until Page Contains Element    ${toast_update_success}           timeout=10s
    Log                                 SUCCESS: Status aktif berhasil diperbarui!

Turn Off Status Aktif Menjadi On View 
    Wait Until Page Contains Element    ${btn_view}                       timeout=10s
    Scroll Element Into View            ${btn_view}
    ${el_view}=                         Get Web Element                   ${btn_view}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_view}
    Sleep                               1s

    Wait Until Page Contains Element    ${switch_view_detail_off}         timeout=10s
    Scroll Element Into View            ${switch_view_detail_off}
    ${el_switch}=                       Get Web Element                   ${switch_view_detail_off}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_switch}
    Sleep                               0.5s

    Wait Until Element Is Visible        ${btn_ya_konfirmasi_ubah_switch}  timeout=10s
    Scroll Element Into View             ${btn_ya_konfirmasi_ubah_switch}
    ${el_confirm}=                      Get Web Element                   ${btn_ya_konfirmasi_ubah_switch}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_confirm}

    Wait Until Page Contains Element    ${switch_view_detail_on}          timeout=10s
    Log                                 Status Aktif di View Detail berhasil diubah ke ON!

    Wait Until Page Contains Element    ${toast_update_success}           timeout=10s
    Log                                 SUCCESS: Status aktif berhasil diperbarui!
  
Select Status Unit Booked
    [Arguments]    ${status_id}=${status_unit}

    Wait Until Page Contains Element    ${btn_popover_status_unit}        timeout=10s
    Scroll Element Into View            ${btn_popover_status_unit}
    ${el_arrow}=                        Get Web Element                   ${btn_popover_status_unit}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_arrow}
    Sleep                               0.5s

    ${radio_target}=                    Set Variable                      xpath=//button[@role='radio' and (@id='${status_id}' or contains(@value, '${status_id}'))]
    Wait Until Page Contains Element    ${radio_target}                   timeout=10s
    Scroll Element Into View            ${radio_target}
    ${el_target}=                       Get Web Element                   ${radio_target}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_target}
    Sleep                               0.5s

    Wait Until Element Is Visible        ${btn_ya_konfirmasi_status_unit}             timeout=10s
    Scroll Element Into View             ${btn_ya_konfirmasi_status_unit}
    ${el_confirm}=                      Get Web Element                   ${btn_ya_konfirmasi_status_unit}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_confirm}

    Wait Until Page Contains Element    ${toast_update_status_unit_success}    timeout=10s
    Log                                 SUCCESS: Status unit berhasil diubah ke ${status_id}!

Select Status Unit Sold
    [Arguments]    ${status_id}=${status_unit_Sold}

    Wait Until Page Contains Element    ${btn_popover_status_unit}        timeout=10s
    Scroll Element Into View            ${btn_popover_status_unit}
    ${el_arrow}=                        Get Web Element                   ${btn_popover_status_unit}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_arrow}
    Sleep                               0.5s

    ${radio_target}=                    Set Variable                      xpath=//button[@role='radio' and (@id='${status_id}' or contains(@value, '${status_id}'))]
    Wait Until Page Contains Element    ${radio_target}                   timeout=10s
    Scroll Element Into View            ${radio_target}
    ${el_target}=                       Get Web Element                   ${radio_target}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_target}
    Sleep                               0.5s

    Wait Until Element Is Visible        ${btn_ya_konfirmasi_status_unit}             timeout=10s
    Scroll Element Into View             ${btn_ya_konfirmasi_status_unit}
    ${el_confirm}=                      Get Web Element                   ${btn_ya_konfirmasi_status_unit}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_confirm}

    Wait Until Page Contains Element    ${toast_update_status_unit_success}    timeout=10s
    Log                                 SUCCESS: Status unit berhasil diubah ke ${status_id}!

Select Status Unit Paid
    [Arguments]    ${status_id}=${status_unit_Paid}

    Wait Until Page Contains Element    ${btn_popover_status_unit}        timeout=10s
    Scroll Element Into View            ${btn_popover_status_unit}
    ${el_arrow}=                        Get Web Element                   ${btn_popover_status_unit}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_arrow}
    Sleep                               0.5s

    ${radio_target}=                    Set Variable                      xpath=//button[@role='radio' and (@id='${status_id}' or contains(@value, '${status_id}'))]
    Wait Until Page Contains Element    ${radio_target}                   timeout=10s
    Scroll Element Into View            ${radio_target}
    ${el_target}=                       Get Web Element                   ${radio_target}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_target}
    Sleep                               0.5s

    Wait Until Element Is Visible        ${btn_ya_konfirmasi_status_unit}             timeout=10s
    Scroll Element Into View             ${btn_ya_konfirmasi_status_unit}
    ${el_confirm}=                      Get Web Element                   ${btn_ya_konfirmasi_status_unit}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_confirm}

    Wait Until Page Contains Element    ${toast_update_status_unit_success}    timeout=10s
    Log                                 SUCCESS: Status unit berhasil diubah ke ${status_id}!

Select Status Unit Suspended
    [Arguments]    ${status_id}=${status_unit_Suspended}    ${teks_catatan}=${input_catetan}

    Wait Until Page Contains Element    ${btn_popover_status_unit}        timeout=10s
    Scroll Element Into View            ${btn_popover_status_unit}
    ${el_arrow}=                        Get Web Element                   ${btn_popover_status_unit}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_arrow}
    Sleep                               0.5s

    ${radio_target}=                    Set Variable                      xpath=//button[@role='radio' and (@id='${status_id}' or contains(@value, '${status_id}') or .//span[text()='Suspended'])]
    Wait Until Page Contains Element    ${radio_target}                   timeout=10s
    Scroll Element Into View            ${radio_target}
    Click Element                       ${radio_target}
    Sleep                               1s

    Wait Until Page Contains Element    ${input_catatan}                  timeout=10s
    Scroll Element Into View            ${input_catatan}
    Clear Element Text                  ${input_catatan}
    Input Text                          ${input_catatan}                  ${teks_catatan}
    Sleep                               0.5s

    Wait Until Element Is Visible        ${btn_simpan_catatan}            timeout=10s
    Scroll Element Into View             ${btn_simpan_catatan}
    ${el_simpan}=                       Get Web Element                  ${btn_simpan_catatan}
    Execute Javascript                  arguments[0].click();            ARGUMENTS    ${el_simpan}
    Sleep                               0.5s

    Wait Until Element Is Visible        ${btn_ya_konfirmasi_suspend}     timeout=10s
    Scroll Element Into View             ${btn_ya_konfirmasi_suspend}
    ${el_confirm}=                      Get Web Element                  ${btn_ya_konfirmasi_suspend}
    Execute Javascript                  arguments[0].click();            ARGUMENTS    ${el_confirm}

    Wait Until Page Contains Element    ${toast_status_suspended_success}   timeout=10s
    Log                                 SUCCESS: Berhasil mengubah status objek ke suspended!

Select Status Unit Returned
    [Arguments]    ${status_id}=${status_unit_returned}

    Wait Until Page Contains Element    ${btn_popover_status_unit}        timeout=10s
    Scroll Element Into View            ${btn_popover_status_unit}
    ${el_arrow}=                        Get Web Element                   ${btn_popover_status_unit}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_arrow}
    Sleep                               0.5s

    ${radio_target}=                    Set Variable                      xpath=//button[@role='radio' and (@id='${status_id}' or contains(@value, '${status_id}'))]
    Wait Until Page Contains Element    ${radio_target}                   timeout=10s
    Scroll Element Into View            ${radio_target}
    ${el_target}=                       Get Web Element                   ${radio_target}
    Execute Javascript                  arguments[0].click();             ARGUMENTS    ${el_target}
    Sleep                               0.5s

    Wait Until Element Is Visible        ${btn_ya_konfirmasi_returned}     timeout=10s
    Scroll Element Into View             ${btn_ya_konfirmasi_returned}
    ${el_confirm}=                       Get Web Element                   ${btn_ya_konfirmasi_returned}
    Execute Javascript                   arguments[0].click();             ARGUMENTS    ${el_confirm}

    Wait Until Page Contains Element    ${toast_update_status_unit_success}    timeout=10s
    Log                                 SUCCESS: Status unit berhasil diubah ke ${status_id}!

Select Status Unit Released
    [Arguments]    ${status_id}=${status_unit_released}

    Wait Until Page Contains Element    ${btn_popover_status_unit}            timeout=10s
    Scroll Element Into View            ${btn_popover_status_unit}
    ${el_arrow}=                        Get Web Element                       ${btn_popover_status_unit}
    Execute Javascript                  arguments[0].click();                 ARGUMENTS    ${el_arrow}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${radio_opt_released}                 timeout=10s
    Scroll Element Into View            ${radio_opt_released}
    ${el_released}=                     Get Web Element                       ${radio_opt_released}
    Execute Javascript                  arguments[0].click();                 ARGUMENTS    ${el_released}
    Sleep                               0.5s

    Wait Until Element Is Visible        ${btn_ya_konfirmasi_released}         timeout=10s
    Scroll Element Into View             ${btn_ya_konfirmasi_released}
    ${el_confirm}=                      Get Web Element                       ${btn_ya_konfirmasi_released}
    Execute Javascript                  arguments[0].click();                 ARGUMENTS    ${el_confirm}

    Wait Until Page Contains Element    ${toast_update_status_unit_success}    timeout=10s
    Log                                 SUCCESS: Status unit berhasil diubah ke ${status_id}!