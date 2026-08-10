* Settings *
Library    SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Library    excel_reader.py
Variables  ../../resources/ModulSeller/LocatorModulSeller.py

*** Keywords ***
Search Seller
    [Arguments]    ${query}=${search_MOU}

    Wait Until Page Contains Element    ${input_main_search}                                timeout=30s
    Wait Until Element Is Visible       ${input_main_search}                                timeout=10s
    
    Click Element                       ${input_main_search}
    Press Keys                          ${input_main_search}                                CTRL+a    BACKSPACE
    Input Text                          ${input_main_search}                                ${query}
    Press Keys                          ${input_main_search}                                ENTER
    Sleep                               0.5s

    Click View Button In Table
    Sleep                               0.5s

    Click Tambah Button
    Sleep                               0.5s                 

Click View Button In Table
    Wait Until Page Contains Element    ${btn_view_action}                                  timeout=10s
    Wait Until Element Is Visible       ${btn_view_action}                                  timeout=10s
    Scroll Element Into View            ${btn_view_action}

    ${el_view}=                         Get Web Element                                     ${btn_view_action}
    Execute Javascript                  arguments[0].dispatchEvent(new MouseEvent('click', {bubbles: true, cancelable: true, view: window}));    ARGUMENTS    ${el_view}
    Sleep                               1s

Click Tambah Button
    Wait Until Page Contains Element    ${btn_tambah_sub_seller}                            timeout=10s

    ${el_tambah}=                       Get Web Element                                     ${btn_tambah_sub_seller}
    Execute Javascript                  arguments[0].scrollIntoView({behavior: 'smooth', block: 'center'});    ARGUMENTS    ${el_tambah}
    Sleep                               0.8s

    Wait Until Element Is Visible       ${btn_tambah_sub_seller}                            timeout=10s
    Execute Javascript                  arguments[0].dispatchEvent(new MouseEvent('click', {bubbles: true, cancelable: true, view: window}));    ARGUMENTS    ${el_tambah}
    Sleep                               1s

Select Objek Lelang
    [Arguments]    ${objek_name}

    Wait Until Page Contains Element    ${btn_select_objek_lelang}                          timeout=10s
    Wait Until Element Is Visible       ${btn_select_objek_lelang}                          timeout=10s
    Click Element                       ${btn_select_objek_lelang}
    Sleep                               0.5s

    ${option_xpath}=                    Set Variable                                        xpath=//button[.//span[normalize-space(text())='${objek_name}']]
    Wait Until Page Contains Element    ${option_xpath}                                     timeout=10s
    Wait Until Element Is Visible       ${option_xpath}                                     timeout=10s
    Click Element                       ${option_xpath}
    Sleep                               0.5s

Input Tambah Sub Seller
    [Arguments]    ${no_sub_seller}    ${nama_sub_seller}    ${objek_lelang}       ${kategori_seller}

    Wait Until Page Contains Element    ${input_no_sub_seller}                              timeout=10s
    Wait Until Element Is Visible       ${input_no_sub_seller}                              timeout=10s
    Click Element                       ${input_no_sub_seller}
    Press Keys                          ${input_no_sub_seller}                              CTRL+a    BACKSPACE
    Input Text                          ${input_no_sub_seller}                              ${no_sub_seller}

    Wait Until Page Contains Element    ${input_nama_sub_seller}                            timeout=10s
    Wait Until Element Is Visible       ${input_nama_sub_seller}                            timeout=10s
    Click Element                       ${input_nama_sub_seller}
    Press Keys                          ${input_nama_sub_seller}                            CTRL+a    BACKSPACE
    Input Text                          ${input_nama_sub_seller}                              ${nama_sub_seller}

    Wait Until Page Contains Element    ${input_cabang_jba}                                 timeout=10s
    Wait Until Element Is Visible       ${input_cabang_jba}                                 timeout=10s
    Click Element                       ${input_cabang_jba}
    Press Keys                          ${input_cabang_jba}                                 CTRL+a    BACKSPACE
    Input Text                          ${input_cabang_jba}                                 ${nama_sub_seller}

    Select Objek Lelang                 ${objek_lelang}
    Sleep                               0.5s

    Select Kategori                     ${kategori_seller}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${izin_ubah_lot}                             timeout=10s
    
    ${el_ya}=                           Get Web Element                                     ${izin_ubah_lot}
    Execute Javascript                  arguments[0].scrollIntoView({behavior: 'smooth', block: 'center'});    ARGUMENTS    ${el_ya}
    Sleep                               0.5s

    Wait Until Element Is Visible       ${izin_ubah_lot}                             timeout=10s
    Click Element                       ${izin_ubah_lot}
    Sleep                               0.5s

    Select Jenis Bidder Lelang
    Sleep                               0.5s

Process Add All Sub Sellers From Excel
    [Arguments]    ${excel_path}=C:/Users/msi80/Downloads/SELLER ID BIKE.xlsx

    ${seller_list}=                     Get Seller Data From Excel                          ${excel_path}

    FOR    ${item}    IN    @{seller_list[:2]}
        Log To Console                  \n[INFO] Processing: ${item['no_sub_seller']} | Objek: ${item['objek_lelang']}

        Click Tambah Button

        Input Tambah Sub Seller         ${item['no_sub_seller']}    ${item['nama_sub_seller']}    ${item['objek_lelang']}    ${item['kategori_seller']}
        Wait Until Page Contains Element    ${btn_submit_tambah_sub_seller}                     timeout=10s
        Wait Until Element Is Visible       ${btn_submit_tambah_sub_seller}                     timeout=10s
        Click Element                       ${btn_submit_tambah_sub_seller}
        Sleep                               0.5s

        Wait Until Page Contains Element    ${btn_confirm_yes}                                  timeout=10s
        Wait Until Element Is Visible       ${btn_confirm_yes}                                  timeout=10s
        Click Element                       ${btn_confirm_yes}
        Sleep                               1s
    END

Select Kategori
    [Arguments]    ${kategori_name}=Gold Seller

    Wait Until Page Contains Element    ${btn_select_kategori}                       timeout=10s
    Wait Until Element Is Visible       ${btn_select_kategori}                       timeout=10s
    Click Element                       ${btn_select_kategori}
    Sleep                               0.5s

    ${option_xpath}=                    Set Variable                                        xpath=//button[.//span[normalize-space(text())='${kategori_name}']]
    Wait Until Page Contains Element    ${option_xpath}                                     timeout=10s
    Wait Until Element Is Visible       ${option_xpath}                                     timeout=10s
    Click Element                       ${option_xpath}
    Sleep                               0.5s

Select Tipe NIPL
    [Arguments]    ${tipe_name}=Fix Price

    Wait Until Page Contains Element    ${btn_select_tipe_nipl}                             timeout=10s
    Wait Until Element Is Visible       ${btn_select_tipe_nipl}                             timeout=10s
    Click Element                       ${btn_select_tipe_nipl}
    Sleep                               0.5s

    ${option_xpath}=                    Set Variable                                        xpath=//button[.//span[normalize-space(text())='${tipe_name}']]
    Wait Until Page Contains Element    ${option_xpath}                                     timeout=10s
    Wait Until Element Is Visible       ${option_xpath}                                     timeout=10s
    Click Element                       ${option_xpath}
    Sleep                               0.5s

Select Include PPn
    [Arguments]    ${pilihan}=Ya

    Wait Until Page Contains Element    ${btn_select_include_ppn}                           timeout=10s
    Wait Until Element Is Visible       ${btn_select_include_ppn}                           timeout=10s
    Click Element                       ${btn_select_include_ppn}
    Sleep                               0.5s

    ${option_xpath}=                    Set Variable                                        xpath=//button[.//span[normalize-space(text())='${pilihan}']]
    Wait Until Page Contains Element    ${option_xpath}                                     timeout=10s
    Wait Until Element Is Visible       ${option_xpath}                                     timeout=10s
    Click Element                       ${option_xpath}
    Sleep                               0.5s

Select Include PPh
    [Arguments]    ${pilihan}=Ya

    Wait Until Page Contains Element    ${btn_select_include_pph}                           timeout=10s
    Wait Until Element Is Visible       ${btn_select_include_pph}                           timeout=10s
    Click Element                       ${btn_select_include_pph}
    Sleep                               0.5s

    ${option_xpath}=                    Set Variable                                        xpath=//button[.//span[normalize-space(text())='${pilihan}']]
    Wait Until Page Contains Element    ${option_xpath}                                     timeout=10s
    Wait Until Element Is Visible       ${option_xpath}                                     timeout=10s
    Click Element                       ${option_xpath}
    Sleep                               0.5s

Select Jenis Bidder Lelang
    [Arguments]    ${jenis_bidder_name}=Time Auction Normal     ${foto_path}=${PATH_FOTO_1}

    Wait Until Page Contains Element    ${btn_select_jenis_bidder}                          timeout=10s
    ${el_jenis_bidder}=                 Get Web Element                                     ${btn_select_jenis_bidder}
    Execute Javascript                  arguments[0].scrollIntoView({behavior: 'smooth', block: 'center'});    ARGUMENTS    ${el_jenis_bidder}
    Sleep                               0.5s

    Wait Until Element Is Visible       ${btn_select_jenis_bidder}                          timeout=10s
    Click Element                       ${btn_select_jenis_bidder}
    Sleep                               0.5s

    ${option_xpath}=                    Set Variable                                        xpath=//button[.//span[normalize-space(text())='${jenis_bidder_name}']]
    Wait Until Page Contains Element    ${option_xpath}                                     timeout=10s
    Wait Until Element Is Visible       ${option_xpath}                                     timeout=10s
    Click Element                       ${option_xpath}
    Sleep                               0.5s

    ${current_time}=                    Get Current Date                                    result_format=%H:%M
    Wait Until Page Contains Element    ${input_jam_lelang}                                 timeout=10s
    Wait Until Element Is Visible       ${input_jam_lelang}                                 timeout=10s
    Click Element                       ${input_jam_lelang}
    Input Text                          ${input_jam_lelang}                                 ${current_time}

    Wait Until Page Contains Element    ${input_durasi_lot}                                 timeout=10s
    Wait Until Element Is Visible       ${input_durasi_lot}                                 timeout=10s
    Click Element                       ${input_durasi_lot}
    Press Keys                          ${input_durasi_lot}                                 CTRL+a    BACKSPACE
    Input Text                          ${input_durasi_lot}                                 000.05

    Wait Until Page Contains Element    ${input_waktu_tambahan}                             timeout=10s
    ${el_waktu_tambahan}=               Get Web Element                                     ${input_waktu_tambahan}
    Execute Javascript                  arguments[0].scrollIntoView({behavior: 'smooth', block: 'center'});    ARGUMENTS    ${el_waktu_tambahan}
    Sleep                               0.5s

    Wait Until Element Is Visible       ${input_waktu_tambahan}                             timeout=10s
    Click Element                       ${input_waktu_tambahan}
    Press Keys                          ${input_waktu_tambahan}                             CTRL+a    BACKSPACE
    Input Text                          ${input_waktu_tambahan}                             000.10

    Wait Until Page Contains Element    ${input_kelipatan_bid}                              timeout=10s
    Wait Until Element Is Visible       ${input_kelipatan_bid}                              timeout=10s
    Click Element                       ${input_kelipatan_bid}
    Press Keys                          ${input_kelipatan_bid}                              CTRL+a    BACKSPACE
    Input Text                          ${input_kelipatan_bid}                              50000

    Wait Until Page Contains Element    ${input_wanpres}                                    timeout=10s
    Wait Until Element Is Visible       ${input_wanpres}                                    timeout=10s
    Click Element                       ${input_wanpres}
    Press Keys                          ${input_wanpres}                                    CTRL+a    BACKSPACE
    Input Text                          ${input_wanpres}                                    2

    Wait Until Page Contains Element    ${input_jam_wanpres}                                timeout=10s
    Wait Until Element Is Visible       ${input_jam_wanpres}                                timeout=10s
    Click Element                       ${input_jam_wanpres}
    Input Text                          ${input_jam_wanpres}                                17:00

    Wait Until Page Contains Element    ${lelang_terbuka}                            timeout=10s
    ${el_lelang_terbuka}=               Get Web Element                                     ${lelang_terbuka}
    Execute Javascript                  arguments[0].scrollIntoView({behavior: 'smooth', block: 'center'});    ARGUMENTS    ${el_lelang_terbuka}
    Sleep                               0.5s

    Wait Until Element Is Visible       ${lelang_terbuka}                            timeout=10s
    Click Element                       ${lelang_terbuka}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_harga_nipl}                                 timeout=10s 
    ${el_harga_nipl}=                   Get Web Element                                     ${input_harga_nipl}
    Execute Javascript                  arguments[0].scrollIntoView({behavior: 'smooth', block: 'center'});    ARGUMENTS    ${el_harga_nipl}
    Sleep                               0.5s

    Wait Until Element Is Visible       ${input_harga_nipl}                                 timeout=10s
    Click Element                       ${input_harga_nipl}
    Press Keys                          ${input_harga_nipl}                                 CTRL+a    BACKSPACE
    Input Text                          ${input_harga_nipl}                                 200000

    Select Tipe NIPL
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_nominal_nipl}                               timeout=10s
    Wait Until Element Is Visible       ${input_nominal_nipl}                               timeout=10s
    Click Element                       ${input_nominal_nipl}
    Press Keys                          ${input_nominal_nipl}                               CTRL+a    BACKSPACE
    Input Text                          ${input_nominal_nipl}                               250000
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_fee_lelang}                                 timeout=10s
    ${el_fee}=                          Get Web Element                                     ${input_fee_lelang}
    Execute Javascript                  arguments[0].scrollIntoView({behavior: 'smooth', block: 'center'});    ARGUMENTS    ${el_fee}
    Sleep                               0.5s

    Wait Until Element Is Visible       ${input_fee_lelang}                                 timeout=10s
    Click Element                       ${input_fee_lelang}
    Press Keys                          ${input_fee_lelang}                                 CTRL+a    BACKSPACE
    Input Text                          ${input_fee_lelang}                                 2.5

    Wait Until Page Contains Element    ${input_ppn_rules}                                  timeout=10s
    Wait Until Element Is Visible       ${input_ppn_rules}                                  timeout=10s
    Click Element                       ${input_ppn_rules}
    Press Keys                          ${input_ppn_rules}                                  CTRL+a    BACKSPACE
    Input Text                          ${input_ppn_rules}                                  12

    Wait Until Page Contains Element    ${input_pph_rules}                                  timeout=10s
    Wait Until Element Is Visible       ${input_pph_rules}                                  timeout=10s
    Click Element                       ${input_pph_rules}
    Press Keys                          ${input_pph_rules}                                  CTRL+a    BACKSPACE
    Input Text                          ${input_pph_rules}                                  10

    Wait Until Page Contains Element    ${input_ppn_buyers}                                 timeout=10s
    Wait Until Element Is Visible       ${input_ppn_buyers}                                 timeout=10s
    Click Element                       ${input_ppn_buyers}
    Press Keys                          ${input_ppn_buyers}                                 CTRL+a    BACKSPACE
    Input Text                          ${input_ppn_buyers}                                 2
    Sleep                               0.5s

    Select Include PPn                  Ya
    Select Include PPh                  Ya
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_upload_file}                                timeout=10s
    Choose File                         ${input_upload_file}                                ${foto_path}
    Sleep                               1s