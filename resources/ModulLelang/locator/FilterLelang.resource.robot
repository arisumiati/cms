*** Settings ***
Library  SeleniumLibrary
Library    DateTime
Library  String
Variables  ../locator/LocatorModulLelang.py
Variables   ../locator/LocatorFilterLelang.py

*** Keywords ***
Click Filter
    Wait Until Element Is Visible  ${btn_filter}     timeout=30s
    Click Element  ${btn_filter}

Input Filter
    Wait Until Page Contains Element    xpath=//input[@placeholder='Cari..']    timeout=10s
    Click Element                       xpath=//input[@placeholder='Cari..']
    Sleep                               0.5s

    Press Keys                          xpath=//input[@placeholder='Cari..']    ARROW_DOWN
    Sleep                               0.5s

    Wait Until Page Contains Element    xpath=//div[@role='dialog' and @data-state='open']//button[.//span[text()='Aktif']]    timeout=10s
    ${el_option}=                       Get Web Element    xpath=//div[@role='dialog' and @data-state='open']//button[.//span[text()='Aktif']]
    Execute JavaScript                  arguments[0].click();    ARGUMENTS    ${el_option}
    Sleep                               0.5s

    Wait Until Page Contains Element    xpath=//div[@role='dialog']                                  timeout=10s
    Wait Until Page Contains Element    ${filter_status_lelang_trigger}                              timeout=10s
    Click Element                       ${filter_status_lelang_trigger}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${filter_status_lelang_option}                               timeout=10s
    ${el_option_status}=                Get Web Element                                              ${filter_status_lelang_option}
    Execute JavaScript                  arguments[0].click();                                        ARGUMENTS    ${el_option_status}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${filter_objek_lelang_trigger}    timeout=10s
    Click Element                       ${filter_objek_lelang_trigger}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${filter_objek_lelang_option}     timeout=10s
    ${el_option_objek}=                 Get Web Element                    ${filter_objek_lelang_option}
    Execute JavaScript                  arguments[0].click();              ARGUMENTS    ${el_option_objek}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${filter_cabang_trigger}    timeout=10s
    Click Element                       ${filter_cabang_trigger}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${filter_cabang_option}     timeout=10s
    ${el_option_cabang}=                Get Web Element                    ${filter_cabang_option}
    Execute JavaScript                  arguments[0].click();              ARGUMENTS    ${el_option_cabang}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${filter_tipe_lelang_trigger}    timeout=10s
    Click Element                       ${filter_tipe_lelang_trigger}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${filter_tipe_lelang_option}     timeout=10s
    ${el_option_tipe}=                  Get Web Element                    ${filter_tipe_lelang_option}
    Execute JavaScript                  arguments[0].click();              ARGUMENTS    ${el_option_tipe}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${filter_nama_lelang_input}    timeout=10s
    Clear Element Text                  ${filter_nama_lelang_input}
    Input Text                          ${filter_nama_lelang_input}    ${nama_filter_lelang}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${filter_btn_tampilkan}    timeout=10s
    Click Element                       ${filter_btn_tampilkan}
    
    Wait Until Page Does Not Contain Element    xpath=//div[@role='dialog']    timeout=10s
    Sleep                                       2s

Input Filter Berdasarkan lelang_id
    Wait Until Page Contains Element    ${filter_lelang_id_input}    timeout=10s
    Clear Element Text                  ${filter_lelang_id_input}
    Input Text                          ${filter_lelang_id_input}    ${filter_lelangID}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${filter_btn_tampilkan}      timeout=10s
    Click Element                       ${filter_btn_tampilkan}

    Wait Until Page Does Not Contain Element    xpath=//div[@role='dialog']    timeout=10s
    Sleep                               2s

Input Filter Berdasarkan Nama Lelang Partial
    Wait Until Page Contains Element    ${filter_nama_lelang_input}    timeout=10s
    Clear Element Text                  ${filter_nama_lelang_input}
    Input Text                          ${filter_nama_lelang_input}    ${nama_filter_lelang_partial}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${filter_btn_tampilkan}      timeout=10s
    Click Element                       ${filter_btn_tampilkan}

    Wait Until Page Does Not Contain Element    xpath=//div[@role='dialog']    timeout=10s
    Sleep                               2s

Reset Filter Lelang Dan Verifikasi Data Awal
    Wait Until Page Contains Element    ${filter_cabang_trigger}     timeout=10s
    Click Element                       ${filter_cabang_trigger}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${filter_cabang_option}      timeout=10s
    ${el_cabang}=                       Get Web Element              ${filter_cabang_option}
    Execute JavaScript                  arguments[0].click();        ARGUMENTS    ${el_cabang}
    Sleep                               1s

    Wait Until Element Is Visible       ${filter_nama_lelang_input}  timeout=10s
    Clear Element Text                  ${filter_nama_lelang_input}
    Input Text                          ${filter_nama_lelang_input}  ${nama_filter_lelang}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${filter_btn_hapus}          timeout=10s
    Click Element                       ${filter_btn_hapus}
    Sleep                               1.5s

    Wait Until Element Is Visible       ${btn_filter}    timeout=10s
    Click Element                       ${btn_filter}
    Sleep                               1s

    Wait Until Page Contains Element    ${filter_nama_lelang_input}  timeout=10s
    ${nama_sekarang}=                   Get Value                    ${filter_nama_lelang_input}
    Should Be Empty                     ${nama_sekarang}

Input Invalid Filter Berdasarkan lelang_id
    Wait Until Page Contains Element    ${filter_lelang_id_input}    timeout=10s
    Clear Element Text                  ${filter_lelang_id_input}
    Input Text                          ${filter_lelang_id_input}    ${Invalid_filter_lelang_id}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${filter_btn_tampilkan}      timeout=10s
    Click Element                       ${filter_btn_tampilkan}

    Wait Until Page Does Not Contain Element    xpath=//div[@role='dialog']    timeout=10s
    Sleep                               2s

Input Karakter Spesial Nama Lelang
    Wait Until Page Contains Element    ${filter_nama_lelang_input}    timeout=10s
    Clear Element Text                  ${filter_nama_lelang_input}
    Input Text                          ${filter_nama_lelang_input}    ${karakter_spesial_namaLelang}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${filter_btn_tampilkan}      timeout=10s
    Click Element                       ${filter_btn_tampilkan}

    Wait Until Page Does Not Contain Element    xpath=//div[@role='dialog']    timeout=10s
    Sleep                               2s

Verifikasi Tampilan UI Modal Filter
    Wait Until Element Is Visible       xpath=//div[@role='dialog']        timeout=10s
    
    Wait Until Element Is Visible       ${filter_lelang_id_input}          timeout=10s

Input Filter Berdasarkan Waktu Mulai Lelang
    Wait Until Page Contains Element    ${filter_waktu_mulai_input}        timeout=10s
    Wait Until Element Is Visible       ${filter_waktu_mulai_input}        timeout=10s

    Press Keys                          ${filter_waktu_mulai_input}        ${waktu_mulai_tanggal}
    Press Keys                          NONE                               TAB
    Press Keys                          NONE                               ${waktu_mulai_jam}
    Sleep                               0.5s

    Wait Until Element Is Visible       ${filter_btn_tampilkan}            timeout=10s
    Scroll Element Into View            ${filter_btn_tampilkan}
    Click Element                       ${filter_btn_tampilkan}
    Sleep                               1.5s

Input Filter Berdasarkan Waktu Wanpres Lelang
    Wait Until Page Contains Element    ${filter_waktu_wanpres_input}        timeout=10s
    Wait Until Element Is Visible       ${filter_waktu_wanpres_input}        timeout=10s

    Press Keys                          ${filter_waktu_wanpres_input}        ${waktu_wanpres_tanggal}
    Press Keys                          NONE                               TAB
    Press Keys                          NONE                               ${waktu_wanpres_mulai}
    Sleep                               0.5s

    Wait Until Element Is Visible       ${filter_btn_tampilkan}            timeout=10s
    Scroll Element Into View            ${filter_btn_tampilkan}
    Click Element                       ${filter_btn_tampilkan}
    Sleep                               1.5s