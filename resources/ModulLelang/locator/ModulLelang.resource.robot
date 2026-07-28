*** Settings ***
Library  SeleniumLibrary
Library    DateTime
Library  String
Variables  ../locator/LocatorModulLelang.py

*** Keywords ***
Click Tambah Lelang
    Wait Until Element Is Visible  ${button_create}     timeout=30s
    Click Element  ${button_create}

Click Simpan Lelang Tab Ringkasan
    Wait Until Element Is Visible    ${simpan_tab_ringkasan}      timeout=10s
    Wait Until Element Is Enabled    ${simpan_tab_ringkasan}      timeout=10s

    Execute JavaScript    var btn = Array.from(document.querySelectorAll("div[role='dialog'] button")); var simpanBtn = btn.find(b => b.textContent.trim() === 'Simpan'); if(simpanBtn) { simpanBtn.click(); }
    Sleep                 1s

    ${is_popup_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${btn_konfirmasi_simpan_ringkasan}
    IF    not ${is_popup_visible}
        Execute JavaScript    var btn = Array.from(document.querySelectorAll("div[role='dialog'] button")); var simpanBtn = btn.find(b => b.textContent.trim() === 'Simpan'); if(simpanBtn) { simpanBtn.click(); }
        Sleep                 1s
    END

Click Simpan Lelang Tab Objek Lelang
    Wait Until Element Is Visible   ${simpan_tab_objek_lelang}  timeout=10s
    Wait Until Element Is Enabled   ${simpan_tab_objek_lelang}  timeout=10s
    Scroll Element Into View        ${simpan_tab_objek_lelang}
    Click Element                   ${simpan_tab_objek_lelang}

Click Simpan Lelang Tab Bidder
    Wait Until Element Is Visible  ${simpan_tab_bidder_lelang}  timeout=10s  
    Wait Until Element Is Enabled  ${simpan_tab_bidder_lelang}  timeout=10s

    Scroll Element Into View       ${simpan_tab_bidder_lelang}  
    Click Element                  ${simpan_tab_bidder_lelang}
    
Click Pop Up Konfirmasi
    Wait Until Element Is Visible       ${pop_up_konfirmasi}    timeout=10s
    Wait Until Element Is Enabled       ${pop_up_konfirmasi}    timeout=10s
    Scroll Element Into View    ${pop_up_konfirmasi}
    Click Element               ${pop_up_konfirmasi}

Input List Lelang Ringkasan

    ${tommorow}=    Get Current Date    result_format=%Y-%m-%d    increment=+1 day
    
    Wait Until Element Is Visible  ${input_nama_lelang}
    Input Text  ${input_nama_lelang}  ${nama_lelang}
    Sleep    3s

    Click Element  ${input_objek_lelang}
    Click Element    ${switch_objek_lelang}

    Click Element   ${input_jenis_lelang}
    Wait Until Element Is Visible   ${input_jenis_lelang}     timeout=10s

    Wait Until Element Is Visible   ${switch_jenis_lelang}    timeout=10s
    Click Element   ${switch_jenis_lelang}

    Wait Until Element Is Visible   ${input_cabang}     timeout=10s
    Click Element  ${input_cabang}

    Wait Until Element Is Visible   ${cabang}   timeout=10s
    Click Element   ${cabang}

    Wait Until Element Is Visible   ${switch_show_auction}      timeout=10s
    Scroll Element Into View        ${switch_show_auction}
    Click Element                   ${switch_show_auction}
    Sleep    1s
    
    ${besok}=    Get Current Date    result_format=%Y-%m-%d    increment=+1 day
    
    Scroll Element Into View     ${input_tanggal_mulai}
    Sleep             1s
    Wait Until Element Is Visible   ${input_tanggal_mulai}      timeout=10s
    Scroll Element Into View        ${input_tanggal_mulai}
    Sleep   1s

    Press Keys      ${input_tanggal_mulai}  CTRL+a+BACKSPACE
    Press Keys      ${input_tanggal_mulai}  07282026
    Press Keys      ${input_tanggal_mulai}  TAB
    Sleep   1s


    Input Text  ${input_waktu_mulai}  ${waktu_mulai_lelang}
    Press Keys  ${input_waktu_mulai}    TAB
    Sleep   1s

    Wait Until Element Is Visible   ${input_tanggal_selesai}    timeout=10s
    Scroll Element Into View    ${input_tanggal_selesai}
    Sleep             1s

    Press Keys        ${input_tanggal_selesai}    CTRL+a+BACKSPACE
    Press Keys        ${input_tanggal_selesai}    07292026
    Press Keys        ${input_tanggal_selesai}    TAB
    Sleep   1s
   
    Input Text    ${input_waktu_selesai}    ${waktu_selesai_lelang}
    Press Keys      ${input_waktu_selesai}  TAB
    Sleep   1s

    Scroll Element Into View    ${input_kelipatan}
    Sleep   1s
    Press Keys  ${input_kelipatan}  ${kelipatan_harga_bid}
    Press Keys  ${input_kelipatan}  TAB
    Sleep   1s
    


    Wait Until Element Is Visible    ${input_tanggal_wanpes}    timeout=10s
    Scroll Element Into View         ${input_tanggal_wanpes}
    Press Keys                       ${input_tanggal_wanpes}    CTRL+a+BACKSPACE
    Press Keys                       ${input_tanggal_wanpes}    07292026
    Press Keys                       ${input_tanggal_wanpes}    TAB
    Sleep                            1s

    Wait Until Element Is Visible    ${input_waktu_wanpes}      timeout=10s
    Scroll Element Into View         ${input_waktu_wanpes}
    Press Keys                       ${input_waktu_wanpes}      CTRL+a+BACKSPACE
    Press Keys                       ${input_waktu_wanpes}      ${waktu_wanpres}
    Press Keys                       ${input_waktu_wanpes}      TAB
    Sleep                            1s

Input Objek Lelang
    Wait Until Element Is Visible    ${tab_objek_lelang}         timeout=10s
    Click Element                    ${tab_objek_lelang}
    Sleep                            1s

    Wait Until Element Is Visible    ${tambah_objek_lelang}      timeout=10s
    Click Element                    ${tambah_objek_lelang}
    Sleep                            2s

    FOR    ${index}    IN RANGE    1    3
        ${checkbox_row}=    Set Variable    xpath=(//div[@role='dialog'])[last()]//tbody/tr[${index}]//input[@type='checkbox']
        
        Wait Until Element Is Visible    ${checkbox_row}         timeout=10s
        Scroll Element Into View         ${checkbox_row}
        Click Element                    ${checkbox_row}
        Sleep                            0.3s
    END

    Scroll Element Into View         ${tambahkan_objek_lelang}
    Wait Until Element Is Visible    ${tambahkan_objek_lelang}   timeout=10s
    Click Element                    ${tambahkan_objek_lelang}
    Sleep                            2s

    ${total}=    Get Element Count    xpath=//th[normalize-space()='NO LOT']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='NO LOT']/preceding-sibling::th)+1]//input

    FOR    ${i}    IN RANGE    1    ${total + 1}
        ${lot_xpath}=    Set Variable    (//th[normalize-space()='NO LOT']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='NO LOT']/preceding-sibling::th)+1]//input)[${i}]
        
        Wait Until Element Is Visible    xpath=${lot_xpath}      timeout=10s
        Scroll Element Into View         xpath=${lot_xpath}
        Sleep                            0.2s

        # Pengisian No Lot
        Press Keys    xpath=${lot_xpath}    CTRL+a+BACKSPACE
        Press Keys    xpath=${lot_xpath}    ${i}
        Press Keys    xpath=${lot_xpath}    ENTER
        Sleep         0.3s
    END

Input Admin Fee Per Objek Lelang
    Sleep    3s
    Scroll Element Into View    ${tambah_objek_lelang}

    ${total}=    Get Element Count    xpath=//th[normalize-space()='ADMIN FEE']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='ADMIN FEE']/preceding-sibling::th)+1]//input

    FOR    ${i}    IN RANGE    1    ${total + 1}
        # Tambahkan tanda kurung (...) pada XPath agar indexing [${i}] bekerja presisi
        ${admin_xpath}=    Set Variable    xpath=(//th[normalize-space()='ADMIN FEE']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='ADMIN FEE']/preceding-sibling::th)+1]//input)[${i}]
        
        ${input_exist}=    Run Keyword And Return Status    Element Should Be Visible    ${admin_xpath}    timeout=2s

        IF    ${input_exist}
            Wait Until Element Is Enabled    ${admin_xpath}    timeout=10s
            Scroll Element Into View         ${admin_xpath}

            # Pembersihan isi & pengisian Admin Fee
            Press Keys    ${admin_xpath}    CTRL+a+BACKSPACE
            Input Text    ${admin_xpath}    ${admin_fee}
            Press Keys    ${admin_xpath}    TAB
            Sleep         0.3s
        END
    END

Input Bidder
    [Arguments]    ${bidder}=${bidder}    ${count}=1

    # 1. Pindah ke Tab Bidder
    Wait Until Element Is Visible    ${tab_bidder}               timeout=10s
    Scroll Element Into View         ${tab_bidder}
    Click Element                    ${tab_bidder}
    Sleep                            1s

    # 2. Buka Modal Tambah Bidder & Cari Bidder
    Wait Until Element Is Visible    ${tambah_bidder}           timeout=10s
    Wait Until Element Is Enabled    ${tambah_bidder}           timeout=10s
    Click Element                    ${tambah_bidder}

    Wait Until Element Is Visible    ${cari_bidder}             timeout=10s
    Press Keys                       ${cari_bidder}             CTRL+a+BACKSPACE
    Press Keys                       ${cari_bidder}             ${bidder}
    Sleep                            1s

    # 3. Pilih & Tambahkan Bidder
    Wait Until Element Is Visible    ${pilih_bidder}            timeout=10s
    Click Element                    ${pilih_bidder}

    Wait Until Element Is Visible    ${tambahkan_bidder}        timeout=10s
    Click Element                    ${tambahkan_bidder}
    Sleep                            1.5s

    # 4. Outer Loop: Mengisi Lot Aktif per Baris Bidder
    FOR    ${index}    IN RANGE    1    ${count} + 1
        ${lot_dropdown_xpath}=       Set Variable    xpath=(//table//tbody/tr[${index}]//div[@role='group' and @type='button'])
        
        Wait Until Page Contains Element    ${lot_dropdown_xpath}    timeout=5s
        Scroll Element Into View            ${lot_dropdown_xpath}
        
        # Buka Dropdown Popover Lot Baris Ke-N
        ${lot_el}=                          Get Web Element           ${lot_dropdown_xpath}
        Execute Javascript                  arguments[0].click();     ARGUMENTS    ${lot_el}
        Sleep                               0.5s

        # Inner Loop: Ambil dan Centang SEMUA Opsi Lot Aktif yang Muncul
        Wait Until Page Contains Element    ${opsi_lot_aktif}         timeout=5s
        ${all_lot_options}=                 Get Web Elements          ${opsi_lot_aktif}

        FOR    ${opt}    IN    @{all_lot_options}
            Execute Javascript              arguments[0].click();     ARGUMENTS    ${opt}
            Sleep                           0.2s
        END

        # Tutup Popover Dropdown Lot Setelah Semua Tercentang
        Press Keys                          NONE                      ESCAPE
        Sleep                               0.5s
    END

    # 5. Lepas Fokus Kursor & Sync State ke React (Aman Tanpa Menutup Modal Utama)
    Execute JavaScript               document.activeElement.blur();
    Sleep                            1s

Input Group
    Wait Until Element Is Visible   ${tab_bidder}   timeout=10s
    Click Element                   ${tab_bidder}
    Sleep                           1s

    Wait Until Element Is Visible   ${tambah_group}     timeout=10s
    Scroll Element Into View        ${tambah_group}
    Click Element                   ${tambah_group}

    Wait Until Element Is Visible   ${pilih_kode_group}     timeout=10s
    Click Element                   ${pilih_kode_group}
    Sleep                           1s

    Wait Until Element Is Visible   ${click_kode_group}     timeout=10s
    Click Element                   ${click_kode_group}
    Sleep                           1s

    Wait Until Element Is Visible   ${tambahkan_group}      timeout=10s
    Scroll Element Into View        ${tambahkan_group}
    Click Element                   ${tambahkan_group}
    Sleep                           1s

Edit Lelang
    [Arguments]    ${id}=${id_lelang}
    
    Wait Until Element Is Visible    ${input_search_list_lelang}    timeout=30s
    Press Keys                       ${input_search_list_lelang}    CTRL+a+BACKSPACE
    Input Text                       ${input_search_list_lelang}    ${id}
    Sleep                            1.5s
    
    Wait Until Element Is Visible    ${btn_action_dropdown_row1}    timeout=10s
    Click Element                    ${btn_action_dropdown_row1}
    Sleep                            0.5s
    
    Wait Until Element Is Visible    ${btn_menu_edit}               timeout=5s
    Click Element                    ${btn_menu_edit}
    Sleep                            1.5s

Edit List Lelang Ringkasan
    ${tommorow}=    Get Current Date    result_format=%Y-%m-%d    increment=+2 day
    Wait Until Element Is Visible  ${input_nama_lelang}
    Sleep    3s
    Input Text  ${input_nama_lelang}  ${edit_nama_lelang}

    Click Element  ${pilih_cabang}
    Sleep    2s
    Click Element  ${edit_cabang}
   
    Input Text  ${input_kelipatan}  ${edit_kelipatan_harga_bid}

    Input Text  ${input_waktu_wanpes}  ${edit_waktu_wanpres}

Switch Admin Fee To Persentase
    Wait Until Element Is Visible    ${radio_persentase}     timeout=10s
    Scroll Element Into View         ${radio_persentase}
    Click Element                    ${radio_persentase}
    Sleep                            1s

    Wait Until Element Is Visible    ${input_admin_fee}      timeout=10s
    Press Keys                       ${input_admin_fee}      CTRL+a+BACKSPACE
    Input Text                       ${input_admin_fee}      ${admin_fee_persen}
    Sleep                            1s

Uncheck Lelang Customer Regular
    Wait Until Element Is Visible    ${checkbox_customer_regular}    timeout=10s
    Scroll Element Into View         ${checkbox_customer_regular}
    
    ${is_checked}=    Run Keyword And Return Status    Checkbox Should Be Selected    ${checkbox_customer_regular}
    Run Keyword If    ${is_checked}    Click Element    ${checkbox_customer_regular}
    Sleep               1s

Input Invalid Schedule End Time Earlier Than Start Time
    Wait Until Element Is Visible    ${input_tanggal_mulai}      timeout=10s
    Press Keys                       ${input_tanggal_mulai}      CTRL+a+BACKSPACE    07232026    TAB

    Wait Until Element Is Visible    ${input_waktu_mulai}        timeout=10s
    Press Keys                       ${input_waktu_mulai}        CTRL+a+BACKSPACE    0500PM      TAB

    Execute Javascript               document.querySelector('div[class*="overflow"]').scrollTop = 400
    Sleep                            1s

    # 2. Set Tanggal Selesai (Sama) & Waktu Selesai (LEBIH AWAL / INVALID)
    Wait Until Element Is Visible    ${input_tanggal_selesai}    timeout=10s
    Press Keys                       ${input_tanggal_selesai}    CTRL+a+BACKSPACE    07232026    TAB

    Wait Until Element Is Visible    ${input_waktu_selesai}      timeout=10s
    Press Keys                       ${input_waktu_selesai}      CTRL+a+BACKSPACE    0100PM      TAB
    Sleep                            1s

    # 3. Validasi Pesan Error Merah
    ${err_msg_locator}=             Set Variable    xpath://p[contains(@class,'text-danger') and contains(text(),'Waktu selesai harus lebih dari waktu mulai')]
    Wait Until Element Is Visible    ${err_msg_locator}          timeout=5s
    Element Should Be Visible        ${err_msg_locator}

Verify Free Admin Fee Overrides Admin Fee To Zero
    # 1. Ambil Web Element untuk sel TD kolom FREE ADMIN FEE di baris 1
    ${cb_td_xpath}=                     Set Variable              xpath=//table//tbody/tr[1]/td[count(//th[contains(.,'FREE ADMIN FEE')]/preceding-sibling::th)+1]
    Wait Until Page Contains Element    ${cb_td_xpath}            timeout=10s
    ${cb_td_el}=                        Get Web Element           ${cb_td_xpath}

    # 2. Scroll Horizontal via TD
    Execute Javascript                  arguments[0].scrollIntoView({behavior: 'instant', block: 'nearest', inline: 'end'});    ARGUMENTS    ${cb_td_el}
    Sleep                               0.5s

    # 3. Klik Checkbox FREE ADMIN FEE
    ${cb_input_el}=                     Get Web Element           ${cb_td_xpath}//*[self::input or self::label or contains(@class,'checkbox')]
    Execute Javascript                  arguments[0].click();     ARGUMENTS    ${cb_input_el}
    Sleep                               1.5s

    # 4. Verifikasi Nilai '0' atau 'Rp 0' langsung dari container
    ${admin_fee_text}=                  Get Text                  ${admin_fee_container}
    Should Contain                      ${admin_fee_text}         0

Input Objek Lelang Free Admin
    Click Element    ${tab_objek_lelang}
    Click Element    ${tambah_objek_lelang}
    Sleep    5s
    Wait Until Element Is Visible    ${pilih_objek_lelang}
    Click Element    ${pilih_objek_lelang}

    Scroll Element Into View    ${tambahkan_objek_lelang} 
    Click Element    ${tambahkan_objek_lelang}    
    
    ${total}=    Get Element Count    xpath=//th[normalize-space()='NO LOT']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='NO LOT']/preceding-sibling::th)+1]//input

    FOR    ${i}    IN RANGE    1    ${total + 1}
        ${lot_xpath}=    Set Variable    (//th[normalize-space()='NO LOT']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='NO LOT']/preceding-sibling::th)+1]//input)[${i}]
        Wait Until Element Is Visible    xpath=${lot_xpath}    10s
        Scroll Element Into View         xpath=${lot_xpath}
        Sleep                            0.2s
        
        Press Keys                       xpath=${lot_xpath}    CONTROL+a+BACKSPACE
        Press Keys                       xpath=${lot_xpath}    ${i}
        Press Keys                       xpath=${lot_xpath}    ENTER
        Sleep                            0.3s
    END

    # --- CENTANG FREE ADMIN FEE ---
    ${el_cb}=                Get Web Element           ${checkbox_free_admin}
    Execute Javascript       arguments[0].click();     ARGUMENTS    ${el_cb}
    Sleep                    1s

Click Checkbox Rekomendasi
    Wait Until Page Contains Element    ${checkbox_rekomendasi}    timeout=10s
    ${rekomendasi_td_el}=               Get Web Element           ${checkbox_rekomendasi}

    Execute Javascript                  arguments[0].scrollIntoView({behavior: 'instant', block: 'nearest', inline: 'end'});    ARGUMENTS    ${rekomendasi_td_el}
    Sleep                               0.5s

    ${rekomendasi_input_el}=            Get Web Element           ${checkbox_rekomendasi}//*[self::input or self::label or contains(@class,'checkbox')]
    Execute Javascript                  arguments[0].click();     ARGUMENTS    ${rekomendasi_input_el}
    Sleep                               0.5s

Input Multiple Bidders
    [Arguments]    ${count}=3

    Wait Until Element Is Visible    ${tab_bidder}        timeout=10s
    Scroll Element Into View         ${tab_bidder}
    Click Element                    ${tab_bidder}
    Sleep                            1s

    Wait Until Element Is Visible    ${tambah_bidder}     timeout=10s
    Wait Until Element Is Enabled    ${tambah_bidder}     timeout=10s
    Click Element                    ${tambah_bidder}

    Wait Until Element Is Visible    ${cari_bidder}       timeout=10s
    Press Keys                       ${cari_bidder}       CTRL+a+BACKSPACE
    Press Keys                       ${cari_bidder}       ${bidder}
    Sleep                            1.5s                

    FOR    ${index}    IN RANGE    1    ${count} + 1
        ${cb_row_xpath}=    Set Variable    xpath=(//tbody//tr[${index}]//input[@type='checkbox'])
        Wait Until Page Contains Element    ${cb_row_xpath}    timeout=5s
        
        ${cb_el}=    Get Web Element    ${cb_row_xpath}
        Execute Javascript    arguments[0].click();    ARGUMENTS    ${cb_el}
        Sleep    0.2s
    END

    Wait Until Element Is Visible    ${tambahkan_bidder}    timeout=10s
    Click Element                    ${tambahkan_bidder}
    Sleep                            1.5s

    FOR    ${index}    IN RANGE    1    ${count} + 1
        # Target dropdown Lot Aktif per baris
        ${lot_dropdown_xpath}=    Set Variable    xpath=(//table//tbody/tr[${index}]//div[@role='group' and @type='button'])
        
        Wait Until Page Contains Element    ${lot_dropdown_xpath}    timeout=5s
        
        ${lot_el}=                          Get Web Element           ${lot_dropdown_xpath}
        Execute Javascript                  arguments[0].click();     ARGUMENTS    ${lot_el}
        Sleep                               0.5s

        Wait Until Element Is Visible       ${opsi_lot_aktif}         timeout=5s
        ${opsi_el}=                         Get Web Element           ${opsi_lot_aktif}
        Execute Javascript                  arguments[0].click();     ARGUMENTS    ${opsi_el}
        Sleep                               0.3s

        Press Keys                          NONE                      ESCAPE
        Sleep                               0.3s
    END

Delete Objek Lelang Row And Confirm
    Wait Until Page Contains Element    xpath=//table//tbody/tr            timeout=10s
    ${count_before}=                    Get Element Count                  xpath=//table//tbody/tr

    Wait Until Page Contains Element    ${btn_delete_objek_row1}           timeout=10s
    Scroll Element Into View            ${btn_delete_objek_row1}
    Sleep                               0.5s

    ${delete_el}=                       Get Web Element                    ${btn_delete_objek_row1}
    Execute Javascript                  arguments[0].click();              ARGUMENTS    ${delete_el}
    Sleep                               1s

    Wait Until Element Is Visible       ${btn_konfirmasi_hapus_objek}      timeout=5s
    Click Element                       ${btn_konfirmasi_hapus_objek}
    Sleep                               1s

    ${expected_count}=                  Evaluate                           ${count_before} - 1
    Wait Until Keyword Succeeds         5s    1s    Page Should Contain Element    xpath=//table//tbody/tr    count=${expected_count}

Go To Edit Objek Lelang
    [Arguments]    ${id}=${lelang_id}
    
    # 1. Search Lelang ID
    Wait Until Element Is Visible    ${input_search_list_lelang}    timeout=30s
    Press Keys                       ${input_search_list_lelang}    CTRL+a+BACKSPACE
    Input Text                       ${input_search_list_lelang}    ${id}
    Sleep                            1.5s
    
    # 2. Klik Arrow Down (Dropdown Aksi Baris Pertama)
    Wait Until Element Is Visible    ${btn_action_dropdown_row1}    timeout=10s
    Click Element                    ${btn_action_dropdown_row1}
    Sleep                            0.5s
    
    # 3. Klik Menu Edit
    Wait Until Element Is Visible    ${btn_menu_edit}               timeout=5s
    Click Element                    ${btn_menu_edit}
    Sleep                            1.5s
    
    # 4. Pindah ke Tab Objek Lelang
    Wait Until Element Is Visible    ${tab_objek_lelang}            timeout=10s
    Click Element                    ${tab_objek_lelang}
    Sleep                            1s

Delete Objek Bidder Row And Confirm
    Wait Until Page Contains Element    xpath=//table//tbody/tr            timeout=10s
    ${count_before}=                    Get Element Count                  xpath=//table//tbody/tr

    Wait Until Page Contains Element    ${btn_delete_bidder}           timeout=10s
    Scroll Element Into View            ${btn_delete_bidder}
    Sleep                               0.5s

    ${delete_el}=                       Get Web Element                    ${btn_delete_bidder}
    Execute Javascript                  arguments[0].click();              ARGUMENTS    ${delete_el}
    Sleep                               1s

    Wait Until Element Is Visible       ${btn_konfirmasi_hapus_bidder}      timeout=5s
    Click Element                       ${btn_konfirmasi_hapus_bidder}
    Sleep                               1s

    ${expected_count}=                  Evaluate                           ${count_before} - 1
    Wait Until Keyword Succeeds         5s    1s    Page Should Contain Element    xpath=//table//tbody/tr    count=${expected_count}

Go To Edit Objek Bidder
    [Arguments]    ${id}=${lelang_id}
    
    # 1. Search Lelang ID
    Wait Until Element Is Visible    ${input_search_list_lelang}    timeout=30s
    Press Keys                       ${input_search_list_lelang}    CTRL+a+BACKSPACE
    Input Text                       ${input_search_list_lelang}    ${id}
    Sleep                            1.5s
    
    # 2. Klik Arrow Down (Dropdown Aksi Baris Pertama)
    Wait Until Element Is Visible    ${btn_action_dropdown_row1}    timeout=10s
    Click Element                    ${btn_action_dropdown_row1}
    Sleep                            0.5s
    
    # 3. Klik Menu Edit
    Wait Until Element Is Visible    ${btn_menu_edit}               timeout=5s
    Click Element                    ${btn_menu_edit}
    Sleep                            1.5s
    
    # 4. Pindah ke Tab Objek Lelang
    Wait Until Element Is Visible    ${tab_bidder}            timeout=10s
    Click Element                    ${tab_bidder}
    Sleep                            1s

Verify Auction ID Field Is Disabled
    Wait Until Element Is Visible       ${input_lelang_id}            timeout=10s
    Scroll Element Into View            ${input_lelang_id}

    Element Should Be Disabled          ${input_lelang_id}

Edit Data Tab Ringkasan
    Wait Until Element Is Visible    ${tab_ringkasan}                 timeout=10s
    Scroll Element Into View         ${tab_ringkasan}
    Click Element                    ${tab_ringkasan}
    Sleep                            1s

    # Input & Trigger Blur/Change via TAB Key
    Wait Until Element Is Visible    ${edit_nama_judulLelang}         timeout=10s    
    Press Keys                       ${edit_nama_judulLelang}         CTRL+a+BACKSPACE    
    Input Text                       ${edit_nama_judulLelang}         ${edit_nama_lelang}
    Press Keys                       ${edit_nama_judulLelang}         TAB

    Wait Until Element Is Visible    ${edit_admin_fee}                timeout=10s    
    Press Keys                       ${edit_admin_fee}                CTRL+a+BACKSPACE    
    Input Text                       ${edit_admin_fee}                ${edit_fee}
    Press Keys                       ${edit_admin_fee}                TAB

    Wait Until Element Is Visible    ${edit_tanggal_mulai}            timeout=10s    
    Press Keys                       ${edit_tanggal_mulai}            CTRL+a+BACKSPACE    
    Input Text                       ${edit_tanggal_mulai}            ${edit_tgl_mulai}
    Press Keys                       ${edit_tanggal_mulai}            TAB

    Wait Until Element Is Visible    ${edit_waktu_Updatemulai}        timeout=10s    
    Press Keys                       ${edit_waktu_Updatemulai}        CTRL+a+BACKSPACE    
    Input Text                       ${edit_waktu_Updatemulai}        ${edit_waktu_mulai}
    Press Keys                       ${edit_waktu_Updatemulai}        TAB

    Wait Until Element Is Visible    ${edit_tanggal_selesai}          timeout=10s    
    Press Keys                       ${edit_tanggal_selesai}          CTRL+a+BACKSPACE    
    Input Text                       ${edit_tanggal_selesai}          ${edit_tgl_selesai}
    Press Keys                       ${edit_tanggal_selesai}          TAB

    Wait Until Element Is Visible    ${edit_waktu_Updateselesai}      timeout=10s    
    Press Keys                       ${edit_waktu_Updateselesai}      CTRL+a+BACKSPACE    
    Input Text                       ${edit_waktu_Updateselesai}      ${edit_waktu_selesai}
    Press Keys                       ${edit_waktu_Updateselesai}      TAB
    Sleep                            1s

Edit Data Tab Objek Lelang
    Wait Until Element Is Visible    ${tab_objek_lelang}             timeout=10s
    Scroll Element Into View         ${tab_objek_lelang}
    Click Element                    ${tab_objek_lelang}
    Sleep                            1s

    # 1. Hapus Objek Lelang Baris 1
    Wait Until Page Contains Element    xpath=//table//tbody/tr      timeout=10s
    Wait Until Page Contains Element    ${btn_delete_objek_row1}     timeout=10s
    Scroll Element Into View            ${btn_delete_objek_row1}
    ${delete_el}=                       Get Web Element              ${btn_delete_objek_row1}
    Execute Javascript                  arguments[0].click();        ARGUMENTS    ${delete_el}
    Sleep                               1s

    Wait Until Element Is Visible       ${btn_konfirmasi_hapus_objek}    timeout=5s
    Click Element                       ${btn_konfirmasi_hapus_objek}
    Sleep                               1s

    # 2. Tambah Objek Lelang Baru
    Wait Until Element Is Visible    ${tambah_objek_lelang}          timeout=10s
    Click Element                    ${tambah_objek_lelang}
    Sleep                            2s

    ${checkbox_row1}=    Set Variable    xpath=(//div[@role='dialog'])[last()]//tbody/tr[1]//input[@type='checkbox']
    Wait Until Element Is Visible    ${checkbox_row1}                timeout=10s
    Click Element                    ${checkbox_row1}
    Sleep                            0.5s

    Scroll Element Into View         ${tambahkan_objek_lelang}
    Click Element                    ${tambahkan_objek_lelang}
    Sleep                            2s

    # 3. Hitung Max Lot & Tentukan Lot Berikutnya
    ${lot_inputs}=                   Get Web Elements                xpath=//th[normalize-space()='NO LOT']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='NO LOT']/preceding-sibling::th)+1]//input
    ${max_lot}=                      Set Variable                    0

    FOR    ${el}    IN    @{lot_inputs}
        ${val}=                      Get Value                       ${el}
        IF    '${val}' != '' and ${val} > ${max_lot}
            ${max_lot}=              Set Variable                    ${val}
        END
    END

    ${next_lot}=                     Evaluate                        ${max_lot} + 1

    # 4. CARA 1: SIMULASI KETIKAN NATIVE MURNI SELENIUM
    ${lot_last_xpath}=               Set Variable                    (//th[normalize-space()='NO LOT']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='NO LOT']/preceding-sibling::th)+1]//input)[last()]
    Wait Until Element Is Visible    xpath=${lot_last_xpath}         timeout=10s
    Scroll Element Into View         xpath=${lot_last_xpath}

    # Focus dan bersihkan input
    Click Element                    xpath=${lot_last_xpath}
    Press Keys                       xpath=${lot_last_xpath}         CTRL+a+BACKSPACE
    Sleep                            0.2s

    # Ketik nilai lot karakter demi karakter
    Press Keys                       xpath=${lot_last_xpath}         ${next_lot}
    Sleep                            0.3s

    # Pemicu utama event Blur/Change di React Form State
    Press Keys                       xpath=${lot_last_xpath}         TAB
    Sleep                            0.5s

    # 5. Scroll Horizontal & Centang Checkbox Free Admin Fee
    Execute Javascript               var el = document.querySelector("table").parentElement; el.scrollLeft = el.scrollWidth;
    Sleep                            0.5s

    ${cb_free_admin_last}=           Set Variable                    xpath=(//table//tbody/tr)[last()]/td[position()=last()-2]//input[@type='checkbox']
    Wait Until Page Contains Element    ${cb_free_admin_last}        timeout=10s
    ${el_cb}=                        Get Web Element                 ${cb_free_admin_last}

    Execute Javascript               arguments[0].scrollIntoView({inline: 'center', block: 'center'});    ARGUMENTS    ${el_cb}
    Sleep                            0.5s

    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_cb}
    Sleep                            1s

    # 6. Pemicu Lepas Fokus dari Tabel Objek Lelang
    Execute JavaScript               document.activeElement.blur();
    Sleep                            1s

Edit Data Tab Bidder
    Wait Until Element Is Visible    ${tab_bidder}               timeout=10s
    Scroll Element Into View         ${tab_bidder}
    Click Element                    ${tab_bidder}
    Sleep                            1s

    Wait Until Element Is Visible    ${tambah_bidder}           timeout=10s
    Wait Until Element Is Enabled    ${tambah_bidder}           timeout=10s
    Click Element                    ${tambah_bidder}

    Wait Until Element Is Visible    ${cari_bidder}             timeout=10s
    Press Keys                       ${cari_bidder}             CTRL+a+BACKSPACE
    Input Text                       ${cari_bidder}             ${bidder_baru}
    Press Keys                       ${cari_bidder}             TAB
    Sleep                            1s

    Wait Until Page Contains Element    ${pilih_bidder_edit}     timeout=10s
    Wait Until Element Is Visible       ${pilih_bidder_edit}     timeout=10s
    Scroll Element Into View            ${pilih_bidder_edit}
    Sleep                               0.5s

    ${el_cb}=                           Get Web Element          ${pilih_bidder_edit}
    Execute Javascript                  arguments[0].click();    ARGUMENTS    ${el_cb}
    Sleep                               1s

    Wait Until Element Is Visible    ${tambahkan_bidder}        timeout=10s
    Click Element                    ${tambahkan_bidder}
    Sleep                            1.5s

    ${lot_dropdown_last}=            Set Variable    xpath=(//table//tbody/tr)[last()]//div[@role='group' and @type='button']
    Wait Until Page Contains Element    ${lot_dropdown_last}    timeout=5s
    
    ${lot_el}=                       Get Web Element            ${lot_dropdown_last}
    Execute Javascript                  arguments[0].click();    ARGUMENTS    ${lot_el}
    Sleep                            0.5s

    Wait Until Page Contains Element    ${opsi_lot_aktif}       timeout=5s
    ${all_options}=                  Get Web Elements           ${opsi_lot_aktif}

    FOR    ${opt}    IN    @{all_options}
        Execute Javascript              arguments[0].click();    ARGUMENTS    ${opt}
        Sleep                           0.2s
    END

    Press Keys                       NONE                       ESCAPE
    Sleep                            0.5s

    Execute JavaScript               document.activeElement.blur();
    Sleep                            1s

Edit Data Tab Ringkasan Persentase
    Wait Until Element Is Visible    ${tab_ringkasan}               timeout=10s
    Scroll Element Into View         ${tab_ringkasan}
    Click Element                    ${tab_ringkasan}
    Sleep                            1s

    Wait Until Page Contains Element    ${radio_persentase}        timeout=10s
    Scroll Element Into View            ${radio_persentase}
    ${el_radio}=                        Get Web Element             ${radio_persentase}
    Execute JavaScript                  arguments[0].click();       ARGUMENTS    ${el_radio}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${symbol_persen}            timeout=5s

    Wait Until Element Is Visible    ${edit_admin_fee}              timeout=10s    
    Press Keys                       ${edit_admin_fee}              CTRL+a+BACKSPACE    
    Input Text                       ${edit_admin_fee}              ${persentase_fee}
    Press Keys                       ${edit_admin_fee}              TAB
    Sleep                            1s

Uncheck Customer Regular Checkbox
    Wait Until Element Is Visible    ${tab_ringkasan}               timeout=10s
    Click Element                    ${tab_ringkasan}
    Sleep                            1s

    Wait Until Page Contains Element    ${checkbox_customer_regular}   timeout=10s
    Scroll Element Into View            ${checkbox_customer_regular}

    ${is_checked}=                      Run Keyword And Return Status    Checkbox Should Be Selected    ${checkbox_customer_regular}
    IF    ${is_checked}
        ${el_cb}=                       Get Web Element                  ${checkbox_customer_regular}
        Execute JavaScript              arguments[0].click();            ARGUMENTS    ${el_cb}
        Sleep                           0.5s
    END

    Execute JavaScript                  document.activeElement.blur();
    Sleep                               0.5s

Hapus Objek Lelang Baris Pertama
    Wait Until Element Is Visible    ${tab_objek_lelang}             timeout=10s
    Scroll Element Into View         ${tab_objek_lelang}
    Click Element                    ${tab_objek_lelang}
    Sleep                            1s

    Wait Until Page Contains Element    xpath=//table//tbody/tr      timeout=10s
    
    Wait Until Page Contains Element    ${btn_delete_objek_row1}     timeout=10s
    Scroll Element Into View            ${btn_delete_objek_row1}
    ${delete_el}=                       Get Web Element              ${btn_delete_objek_row1}
    Execute Javascript                  arguments[0].click();        ARGUMENTS    ${delete_el}
    Sleep                               1s

    Wait Until Element Is Visible       ${btn_konfirmasi_hapus_objek}    timeout=5s
    Click Element                       ${btn_konfirmasi_hapus_objek}
    Sleep                               1s

    Execute JavaScript                  document.activeElement.blur();
    Sleep                               1s

Tambah Objek Lelang Baru
    Wait Until Element Is Visible    ${tab_objek_lelang}             timeout=10s
    Scroll Element Into View         ${tab_objek_lelang}
    Click Element                    ${tab_objek_lelang}
    Sleep                            1s

    Wait Until Element Is Visible    ${tambah_objek_lelang}          timeout=10s
    Click Element                    ${tambah_objek_lelang}
    Sleep                            1.5s

    Wait Until Page Contains Element    ${pilih_objek_lelang}        timeout=10s
    ${cb_el}=                        Get Web Element                 ${pilih_objek_lelang}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${cb_el}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${tambahkan_objek_lelang}      timeout=10s
    Click Element                    ${tambahkan_objek_lelang}
    Sleep                            2s

    ${lot_inputs}=                   Get Web Elements                xpath=//th[normalize-space()='NO LOT']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='NO LOT']/preceding-sibling::th)+1]//input
    ${max_lot}=                      Set Variable                    0

    FOR    ${el}    IN    @{lot_inputs}
        ${val}=                      Get Value                       ${el}
        IF    '${val}' != '' and ${val} > ${max_lot}
            ${max_lot}=              Set Variable                    ${val}
        END
    END

    ${next_lot}=                     Evaluate                        ${max_lot} + 1

    ${lot_last_xpath}=               Set Variable                    (//th[normalize-space()='NO LOT']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='NO LOT']/preceding-sibling::th)+1]//input)[last()]
    Wait Until Element Is Visible    xpath=${lot_last_xpath}         timeout=10s
    Scroll Element Into View         xpath=${lot_last_xpath}

    Click Element                    xpath=${lot_last_xpath}
    Press Keys                       xpath=${lot_last_xpath}         CTRL+a+BACKSPACE
    Sleep                            0.2s
    Press Keys                       xpath=${lot_last_xpath}         ${next_lot}
    Sleep                            0.3s
    Press Keys                       xpath=${lot_last_xpath}         TAB
    Sleep                            0.5s

    Execute JavaScript               document.activeElement.blur();
    Sleep                            1s

Tambah Group Bidder Baru
    Wait Until Element Is Visible       ${tab_bidder}       timeout=10s
    Scroll Element Into View            ${tab_bidder}       
    Click Element                       ${tab_bidder}
    Sleep                               1s

    Wait Until Element Is Visible       ${tambah_group}     timeout=10s       
    Wait Until Element Is Enabled       ${tambah_group}     timeout=10s       
    Click Element                       ${tambah_group}
    Sleep                               1.5s

    Wait Until Page Contains Element    ${pilih_kode_group_edit}     timeout=10s
    Scroll Element Into View            ${pilih_kode_group_edit}
    ${el_input}=                        Get Web Element          ${pilih_kode_group_edit}
    Execute Javascript                  arguments[0].click();    ARGUMENTS    ${el_input}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${click_kode_group_edit}      timeout=10s
    ${el_option}=                       Get Web Element          ${click_kode_group_edit}
    Execute Javascript                  arguments[0].click();    ARGUMENTS    ${el_option}
    Sleep                               0.5s

    Wait Until Element Is Visible    ${tambahkan_group_edit}         timeout=10s
    Click Element                    ${tambahkan_group_edit}
    Sleep                            2s
    
    Execute JavaScript               document.activeElement.blur();
    Sleep                            1s     

Hapus Bidder Edit
    Wait Until Element Is Visible    ${tab_bidder}                   timeout=10s
    Scroll Element Into View         ${tab_bidder}
    Click Element                    ${tab_bidder}
    Sleep                            1s

    Wait Until Page Contains Element    xpath=//table//tbody/tr      timeout=10s

    Wait Until Page Contains Element    ${btn_delete_bidder_edit}         timeout=10s
    Scroll Element Into View            ${btn_delete_bidder_edit}
    ${delete_el}=                       Get Web Element              ${btn_delete_bidder_edit}
    Execute Javascript                  arguments[0].click();        ARGUMENTS    ${delete_el}
    Sleep                               1s

    Wait Until Element Is Visible       ${btn_konfirmasi_hapus_bidder_edit}    timeout=5s
    Click Element                       ${btn_konfirmasi_hapus_bidder_edit}
    Sleep                               1s

    Execute JavaScript                  document.activeElement.blur();
    Sleep                               1s

Batal Edit Lelang Dan Verifikasi Data Awal
    Wait Until Element Is Visible    ${tab_ringkasan}               timeout=10s
    Click Element                    ${tab_ringkasan}
    Sleep                            1s

    Wait Until Element Is Visible    ${edit_nama_judulLelang}       timeout=10s
    ${nama_awal}=                    Get Value                       ${edit_nama_judulLelang}

    Press Keys                       ${edit_nama_judulLelang}       CTRL+a+BACKSPACE
    Input Text                       ${edit_nama_judulLelang}       ${cancel_nama_lelang}
    Press Keys                       ${edit_nama_judulLelang}       TAB
    Sleep                            1s

    Wait Until Element Is Visible    ${btn_batal_edit}              timeout=10s
    Scroll Element Into View         ${btn_batal_edit}
    Click Element                    ${btn_batal_edit}
    Sleep                            2s

    Edit Lelang
    Sleep    2s

    Wait Until Element Is Visible    ${edit_nama_judulLelang}       timeout=10s
    ${nama_sekarang}=                Get Value                       ${edit_nama_judulLelang}
    Should Be Equal                  ${nama_awal}                    ${nama_sekarang}

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