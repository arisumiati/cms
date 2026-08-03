* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorModulObjekLelang.py

* Keywords *
Filter Objek Lelang Electronic
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

    Wait Until Element Is Visible        ${btn_tampilkan}                  timeout=10s
    Scroll Element Into View             ${btn_tampilkan}
    Click Element                        ${btn_tampilkan}
    Sleep                                1s

Generate Unique Serial Number
    ${date_str}=      Get Current Date    result_format=%Y%m%d
    ${random_str}=    Generate Random String    4    [UPPER][NUMBERS]
    ${sn_val}=        Set Variable    SN-${date_str}-${random_str}
    RETURN            ${sn_val}

Input Tambah Objek Lelang Unit
    [Arguments]    ${seller_id}=${seller_Id}    ${mou_id}=${Select_mou}     ${addendum_id}=${Select_addendum}   ${harga}=${harga_dasar}     ${kategori}=${kategori_unit}    ${display_type}=${display_tipe}     ${merek_name}=${Select_merek}       ${model_name}=${Select_model}    ${tahun}=${tahun_unit}     ${ram_val}=${input_ram_val}    ${warna_name}=${Select_warna}    ${sn_val}=${serial_number_val}

    Wait Until Element Is Visible    ${btn_tambah_objek_lelang}    timeout=10s
    Scroll Element Into View         ${btn_tambah_objek_lelang}
    Click Element                    ${btn_tambah_objek_lelang}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_pilih_cabang}       timeout=10s
    Scroll Element Into View         ${dropdown_pilih_cabang}
    Click Element                    ${dropdown_pilih_cabang}
    Sleep    0.5s

    Wait Until Element Is Visible    ${option_cabang}               timeout=10s
    Scroll Element Into View         ${option_cabang}
    ${el_cabang}=                    Get Web Element                ${option_cabang}
    Execute Javascript               arguments[0].click();          ARGUMENTS    ${el_cabang}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_objek_lelang}       timeout=10s
    Scroll Element Into View         ${dropdown_objek_lelang}
    Click Element                    ${dropdown_objek_lelang}
    Sleep    0.5s

    Wait Until Element Is Visible    ${option_electronic}           timeout=10s
    Scroll Element Into View         ${option_electronic}
    ${el_electronic}=                Get Web Element                ${option_electronic}
    Execute Javascript               arguments[0].click();          ARGUMENTS    ${el_electronic}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_seller}             timeout=10s
    Scroll Element Into View         ${dropdown_seller}
    Click Element                    ${dropdown_seller}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_search_seller}         timeout=10s
    Input Text                       ${input_search_seller}         ${seller_id}
    Sleep    1s

    ${target_seller}=                Evaluate                       '''${option_seller_template}'''.format(seller_id='${seller_id}')

    Wait Until Element Is Visible    ${target_seller}               timeout=10s
    Scroll Element Into View         ${target_seller}

    ${el_seller}=                    Get Web Element                ${target_seller}
    Execute Javascript               arguments[0].click();          ARGUMENTS    ${el_seller}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_mou}                timeout=10s
    Scroll Element Into View         ${dropdown_mou}
    
    ${el_dropdown_mou}=              Get Web Element                ${dropdown_mou}
    Execute Javascript               arguments[0].click();          ARGUMENTS    ${el_dropdown_mou}
    Sleep    1s    # Jeda agar menu popover MOU sempat muncul di layar

    ${target_mou}=                   Evaluate                       '''${option_mou_template}'''.format(mou_id='${mou_id}')

    Wait Until Element Is Visible    ${target_mou}                  timeout=10s
    Scroll Element Into View         ${target_mou}

    ${el_mou}=                       Get Web Element                ${target_mou}
    Execute Javascript               arguments[0].click();          ARGUMENTS    ${el_mou}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_addendum}             timeout=10s
    Scroll Element Into View         ${dropdown_addendum}

    ${el_dropdown_addendum}=         Get Web Element                  ${dropdown_addendum}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_dropdown_addendum}
    Sleep    1s    # Jeda agar popover Addendum sempat ter-render

    ${target_addendum}=              Evaluate                         '''${option_addendum_template}'''.format(addendum_id='${addendum_id}')

    Wait Until Element Is Visible    ${target_addendum}               timeout=10s
    Scroll Element Into View         ${target_addendum}

    ${el_addendum}=                  Get Web Element                  ${target_addendum}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_addendum}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_harga_dasar}            timeout=10s
    Scroll Element Into View         ${input_harga_dasar}
    Clear Element Text               ${input_harga_dasar}
    Input Text                       ${input_harga_dasar}            ${harga}

    Wait Until Element Is Visible    ${input_kategori_unit}          timeout=10s
    Scroll Element Into View         ${input_kategori_unit}
    Clear Element Text               ${input_kategori_unit}
    Input Text                       ${input_kategori_unit}          ${kategori}

    Wait Until Element Is Visible    ${input_display_tipe}           timeout=10s
    Scroll Element Into View         ${input_display_tipe}
    Clear Element Text               ${input_display_tipe}
    Input Text                       ${input_display_tipe}           ${display_type}

    Wait Until Element Is Visible    ${dropdown_merek}               timeout=10s
    Scroll Element Into View         ${dropdown_merek}

    ${el_dropdown_merek}=            Get Web Element                 ${dropdown_merek}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_dropdown_merek}
    Sleep    1s    

    ${target_merek}=                 Evaluate                        '''${option_merek_template}'''.format(merek_name='${merek_name}')

    Wait Until Element Is Visible    ${target_merek}                 timeout=10s
    Scroll Element Into View         ${target_merek}

    ${el_merek}=                     Get Web Element                 ${target_merek}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_merek}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_model}               timeout=10s
    Scroll Element Into View         ${dropdown_model}

    ${el_dropdown_model}=            Get Web Element                 ${dropdown_model}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_dropdown_model}
    Sleep    1s    

    ${target_model}=                 Evaluate                        '''${option_model_template}'''.format(model_name='${model_name}')

    Wait Until Element Is Visible    ${target_model}                 timeout=10s
    Scroll Element Into View         ${target_model}

    ${el_model}=                     Get Web Element                 ${target_model}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_model}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_tahun_unit}             timeout=10s
    Scroll Element Into View         ${input_tahun_unit}
    Clear Element Text               ${input_tahun_unit}
    Input Text                       ${input_tahun_unit}             ${tahun}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_ram}                    timeout=10s
    Scroll Element Into View         ${input_ram}
    Clear Element Text               ${input_ram}
    Input Text                       ${input_ram}                    ${ram_val}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_warna}               timeout=10s
    Scroll Element Into View         ${dropdown_warna}

    ${el_dropdown_warna}=            Get Web Element                 ${dropdown_warna}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_dropdown_warna}
    Sleep    1s    

    ${target_warna}=                 Evaluate                        '''${option_warna_template}'''.format(warna_name='${warna_name}')

    Wait Until Element Is Visible    ${target_warna}                 timeout=10s
    Scroll Element Into View         ${target_warna}

    ${el_warna}=                     Get Web Element                 ${target_warna}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_warna}
    Sleep    0.5s

    ${dynamic_sn}=                  Generate Unique Serial Number

    Wait Until Element Is Visible    ${input_serial_number}          timeout=10s
    Scroll Element Into View         ${input_serial_number}
    Clear Element Text               ${input_serial_number}
    Input Text                       ${input_serial_number}          ${dynamic_sn}
    Sleep    0.5s

    Wait Until Element Is Visible    ${btn_selanjutnya}              timeout=10s
    Scroll Element Into View         ${btn_selanjutnya}
    
    ${el_selanjutnya}=              Get Web Element                 ${btn_selanjutnya}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_selanjutnya}
    Sleep    1s

Input Tambah Objek Lelang Dokumen
    [Arguments]    ${charger_opt}=${Option}    ${box_opt}=${Option}    ${garansi_opt}=${Option}     ${tgl_garansi}=${Tanggal_Garansi}   ${foto_1}=${PATH_FOTO_1}    ${foto_2}=${PATH_FOTO_2}

    ${target_charger}=               Evaluate    '''${radio_option_template}'''.format(field_name='Charger', option_value='${charger_opt}')
    Wait Until Element Is Visible    ${target_charger}                timeout=10s
    Scroll Element Into View         ${target_charger}
    ${el_charger}=                   Get Web Element                  ${target_charger}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_charger}
    Sleep    0.3s

    ${target_box}=                   Evaluate    '''${radio_option_template}'''.format(field_name='Box', option_value='${box_opt}')
    Wait Until Element Is Visible    ${target_box}                    timeout=10s
    Scroll Element Into View         ${target_box}
    ${el_box}=                       Get Web Element                  ${target_box}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_box}
    Sleep    0.3s

    ${target_garansi}=               Evaluate    '''${radio_option_template}'''.format(field_name='Garansi', option_value='${garansi_opt}')
    Wait Until Element Is Visible    ${target_garansi}                timeout=10s
    Scroll Element Into View         ${target_garansi}
    ${el_garansi}=                   Get Web Element                  ${target_garansi}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_garansi}
    Sleep    0.3s

    Wait Until Element Is Visible    ${input_tanggal_garansi}        timeout=10s
    Scroll Element Into View         ${input_tanggal_garansi}
    
    Press Keys                       ${input_tanggal_garansi}        ${tgl_garansi}
    Sleep    0.5s

    Wait Until Page Contains Element    ${input_foto_1}                 timeout=10s
    Choose File                         ${input_foto_1}                 ${foto_1}
    Sleep    1s

    Wait Until Page Contains Element    ${input_foto_2}                 timeout=10s
    Choose File                         ${input_foto_2}                 ${foto_2}
    Sleep    1s

    Wait Until Element Is Visible    ${btn_selanjutnya}              timeout=10s
    Scroll Element Into View         ${btn_selanjutnya}
    
    ${el_selanjutnya}=              Get Web Element                 ${btn_selanjutnya}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_selanjutnya}
    
    Sleep    1s

Input Tambah Objek Lelang Unit Tanpa Display
    [Arguments]    ${seller_id}=${seller_Id}    ${text_catatan}=${Catetan}    ${no_penyimpanan}=${No_Penyimpanan}    ${mou_id}=${Select_mou}     ${addendum_id}=${Select_addendum}   ${harga}=${harga_dasar}     ${kategori}=${kategori_unit}    ${display_type}=${display_tipe}     ${merek_name}=${Select_merek}       ${model_name}=${Select_model}    ${tahun}=${tahun_unit}     ${ram_val}=${input_ram_val}    ${warna_name}=${Select_warna}    ${sn_val}=${serial_number_val}  ${grade_value}=${Grade}

    Wait Until Element Is Visible    ${btn_tambah_objek_lelang}    timeout=10s
    Scroll Element Into View         ${btn_tambah_objek_lelang}
    Click Element                    ${btn_tambah_objek_lelang}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_pilih_cabang}       timeout=10s
    Scroll Element Into View         ${dropdown_pilih_cabang}
    Click Element                    ${dropdown_pilih_cabang}
    Sleep    0.5s

    Wait Until Element Is Visible    ${option_cabang}               timeout=10s
    Scroll Element Into View         ${option_cabang}
    ${el_cabang}=                    Get Web Element                ${option_cabang}
    Execute Javascript               arguments[0].click();          ARGUMENTS    ${el_cabang}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_objek_lelang}       timeout=10s
    Scroll Element Into View         ${dropdown_objek_lelang}
    Click Element                    ${dropdown_objek_lelang}
    Sleep    0.5s

    Wait Until Element Is Visible    ${option_electronic}           timeout=10s
    Scroll Element Into View         ${option_electronic}
    ${el_electronic}=                Get Web Element                ${option_electronic}
    Execute Javascript               arguments[0].click();          ARGUMENTS    ${el_electronic}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_seller}             timeout=10s
    Scroll Element Into View         ${dropdown_seller}
    Click Element                    ${dropdown_seller}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_search_seller}         timeout=10s
    Input Text                       ${input_search_seller}         ${seller_id}
    Sleep    1s

    ${target_seller}=                Evaluate                       '''${option_seller_template}'''.format(seller_id='${seller_id}')

    Wait Until Element Is Visible    ${target_seller}               timeout=10s
    Scroll Element Into View         ${target_seller}

    ${el_seller}=                    Get Web Element                ${target_seller}
    Execute Javascript               arguments[0].click();          ARGUMENTS    ${el_seller}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_mou}                timeout=10s
    Scroll Element Into View         ${dropdown_mou}
    
    ${el_dropdown_mou}=              Get Web Element                ${dropdown_mou}
    Execute Javascript               arguments[0].click();          ARGUMENTS    ${el_dropdown_mou}
    Sleep    1s    # Jeda agar menu popover MOU sempat muncul di layar

    ${target_mou}=                   Evaluate                       '''${option_mou_template}'''.format(mou_id='${mou_id}')

    Wait Until Element Is Visible    ${target_mou}                  timeout=10s
    Scroll Element Into View         ${target_mou}

    ${el_mou}=                       Get Web Element                ${target_mou}
    Execute Javascript               arguments[0].click();          ARGUMENTS    ${el_mou}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_addendum}             timeout=10s
    Scroll Element Into View         ${dropdown_addendum}

    ${el_dropdown_addendum}=         Get Web Element                  ${dropdown_addendum}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_dropdown_addendum}
    Sleep    1s    # Jeda agar popover Addendum sempat ter-render

    ${target_addendum}=              Evaluate                         '''${option_addendum_template}'''.format(addendum_id='${addendum_id}')

    Wait Until Element Is Visible    ${target_addendum}               timeout=10s
    Scroll Element Into View         ${target_addendum}

    ${el_addendum}=                  Get Web Element                  ${target_addendum}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_addendum}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_harga_dasar}            timeout=10s
    Scroll Element Into View         ${input_harga_dasar}
    Clear Element Text               ${input_harga_dasar}
    Input Text                       ${input_harga_dasar}            ${harga}

    Wait Until Element Is Visible    ${input_kategori_unit}          timeout=10s
    Scroll Element Into View         ${input_kategori_unit}
    Clear Element Text               ${input_kategori_unit}
    Input Text                       ${input_kategori_unit}          ${kategori}

    Wait Until Element Is Visible    ${dropdown_merek}               timeout=10s
    Scroll Element Into View         ${dropdown_merek}

    ${el_dropdown_merek}=            Get Web Element                 ${dropdown_merek}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_dropdown_merek}
    Sleep    1s    # Jeda agar popover Merek ter-render sempurna

    ${target_merek}=                 Evaluate                        '''${option_merek_template}'''.format(merek_name='${merek_name}')

    Wait Until Element Is Visible    ${target_merek}                 timeout=10s
    Scroll Element Into View         ${target_merek}

    ${el_merek}=                     Get Web Element                 ${target_merek}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_merek}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_model}               timeout=10s
    Scroll Element Into View         ${dropdown_model}

    ${el_dropdown_model}=            Get Web Element                 ${dropdown_model}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_dropdown_model}
    Sleep    1s    # Jeda agar popover Model ter-render

    ${target_model}=                 Evaluate                        '''${option_model_template}'''.format(model_name='${model_name}')

    Wait Until Element Is Visible    ${target_model}                 timeout=10s
    Scroll Element Into View         ${target_model}

    ${el_model}=                     Get Web Element                 ${target_model}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_model}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_tahun_unit}             timeout=10s
    Scroll Element Into View         ${input_tahun_unit}
    Clear Element Text               ${input_tahun_unit}
    Input Text                       ${input_tahun_unit}             ${tahun}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_ram}                    timeout=10s
    Scroll Element Into View         ${input_ram}
    Clear Element Text               ${input_ram}
    Input Text                       ${input_ram}                    ${ram_val}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_warna}               timeout=10s
    Scroll Element Into View         ${dropdown_warna}

    ${el_dropdown_warna}=            Get Web Element                 ${dropdown_warna}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_dropdown_warna}
    Sleep    1s    # Jeda agar popover Warna ter-render

    ${target_warna}=                 Evaluate                        '''${option_warna_template}'''.format(warna_name='${warna_name}')

    Wait Until Element Is Visible    ${target_warna}                 timeout=10s
    Scroll Element Into View         ${target_warna}

    ${el_warna}=                     Get Web Element                 ${target_warna}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_warna}
    Sleep    0.5s
   
    ${dynamic_sn}=                   Generate Unique Serial Number

    Wait Until Element Is Visible    ${input_serial_number}          timeout=10s
    Scroll Element Into View         ${input_serial_number}
    Clear Element Text               ${input_serial_number}
    Input Text                       ${input_serial_number}          ${dynamic_sn}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_no_penyimpanan}         timeout=10s
    Scroll Element Into View         ${input_no_penyimpanan}
    Input Text                       ${input_no_penyimpanan}         ${no_penyimpanan}

    Wait Until Element Is Visible    ${dropdown_grade}               timeout=10s
    Scroll Element Into View         ${dropdown_grade}
    ${el_dropdown}=                 Get Web Element                  ${dropdown_grade}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_dropdown}
    Sleep    0.5s

    ${target_option}=                Evaluate    '''${option_grade}'''.format(value='${grade_value}')
    Wait Until Element Is Visible    ${target_option}                timeout=10s
    ${el_option}=                    Get Web Element                  ${target_option}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_option}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_catatan}               timeout=10s
    Scroll Element Into View         ${input_catatan}
    Input Text                       ${input_catatan}               ${text_catatan}
    Sleep    0.5s

    Wait Until Element Is Visible    ${btn_selanjutnya}              timeout=10s
    Scroll Element Into View         ${btn_selanjutnya}
    
    ${el_selanjutnya}=              Get Web Element                 ${btn_selanjutnya}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_selanjutnya}
    Sleep    1s

Input Tambah Objek Lelang Unit Tanpa Display Dell Latitude 5420 i7 Gen 11
    [Arguments]     ${display_type}=${display_tipe_Dell_Latitude_5420}    ${seller_id}=${seller_Id}    ${text_catatan}=${Catetan}    ${no_penyimpanan}=${No_Penyimpanan}    ${mou_id}=${Select_mou}     ${addendum_id}=${Select_addendum}   ${harga}=${harga_dasar}     ${kategori}=${kategori_unit}         ${merek_name}=${Select_merek}       ${model_name}=${Select_model}    ${tahun}=${tahun_unit}     ${ram_val}=${input_ram_val}    ${warna_name}=${Select_warna}    ${sn_val}=${serial_number_val}  ${grade_value}=${Grade}

    Wait Until Element Is Visible    ${btn_tambah_objek_lelang}    timeout=10s
    Scroll Element Into View         ${btn_tambah_objek_lelang}
    Click Element                    ${btn_tambah_objek_lelang}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_pilih_cabang}       timeout=10s
    Scroll Element Into View         ${dropdown_pilih_cabang}
    Click Element                    ${dropdown_pilih_cabang}
    Sleep    0.5s

    Wait Until Element Is Visible    ${option_cabang}               timeout=10s
    Scroll Element Into View         ${option_cabang}
    ${el_cabang}=                    Get Web Element                ${option_cabang}
    Execute Javascript               arguments[0].click();          ARGUMENTS    ${el_cabang}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_objek_lelang}       timeout=10s
    Scroll Element Into View         ${dropdown_objek_lelang}
    Click Element                    ${dropdown_objek_lelang}
    Sleep    0.5s

    Wait Until Element Is Visible    ${option_electronic}           timeout=10s
    Scroll Element Into View         ${option_electronic}
    ${el_electronic}=                Get Web Element                ${option_electronic}
    Execute Javascript               arguments[0].click();          ARGUMENTS    ${el_electronic}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_seller}             timeout=10s
    Scroll Element Into View         ${dropdown_seller}
    Click Element                    ${dropdown_seller}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_search_seller}         timeout=10s
    Input Text                       ${input_search_seller}         ${seller_id}
    Sleep    1s

    ${target_seller}=                Evaluate                       '''${option_seller_template}'''.format(seller_id='${seller_id}')

    Wait Until Element Is Visible    ${target_seller}               timeout=10s
    Scroll Element Into View         ${target_seller}

    ${el_seller}=                    Get Web Element                ${target_seller}
    Execute Javascript               arguments[0].click();          ARGUMENTS    ${el_seller}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_mou}                timeout=10s
    Scroll Element Into View         ${dropdown_mou}
    
    ${el_dropdown_mou}=              Get Web Element                ${dropdown_mou}
    Execute Javascript               arguments[0].click();          ARGUMENTS    ${el_dropdown_mou}
    Sleep    1s    # Jeda agar menu popover MOU sempat muncul di layar

    ${target_mou}=                   Evaluate                       '''${option_mou_template}'''.format(mou_id='${mou_id}')

    Wait Until Element Is Visible    ${target_mou}                  timeout=10s
    Scroll Element Into View         ${target_mou}

    ${el_mou}=                       Get Web Element                ${target_mou}
    Execute Javascript               arguments[0].click();          ARGUMENTS    ${el_mou}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_addendum}             timeout=10s
    Scroll Element Into View         ${dropdown_addendum}

    ${el_dropdown_addendum}=         Get Web Element                  ${dropdown_addendum}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_dropdown_addendum}
    Sleep    1s    # Jeda agar popover Addendum sempat ter-render

    ${target_addendum}=              Evaluate                         '''${option_addendum_template}'''.format(addendum_id='${addendum_id}')

    Wait Until Element Is Visible    ${target_addendum}               timeout=10s
    Scroll Element Into View         ${target_addendum}

    ${el_addendum}=                  Get Web Element                  ${target_addendum}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_addendum}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_harga_dasar}            timeout=10s
    Scroll Element Into View         ${input_harga_dasar}
    Clear Element Text               ${input_harga_dasar}
    Input Text                       ${input_harga_dasar}            ${harga}

    Wait Until Element Is Visible    ${input_kategori_unit}          timeout=10s
    Scroll Element Into View         ${input_kategori_unit}
    Clear Element Text               ${input_kategori_unit}
    Input Text                       ${input_kategori_unit}          ${kategori}

    Wait Until Element Is Visible    ${input_display_tipe}           timeout=10s
    Scroll Element Into View         ${input_display_tipe}
    Clear Element Text               ${input_display_tipe}
    Input Text                       ${input_display_tipe}           ${display_type}

    Wait Until Element Is Visible    ${dropdown_merek}               timeout=10s
    Scroll Element Into View         ${dropdown_merek}

    ${el_dropdown_merek}=            Get Web Element                 ${dropdown_merek}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_dropdown_merek}
    Sleep    1s    # Jeda agar popover Merek ter-render sempurna

    ${target_merek}=                 Evaluate                        '''${option_merek_template}'''.format(merek_name='${merek_name}')

    Wait Until Element Is Visible    ${target_merek}                 timeout=10s
    Scroll Element Into View         ${target_merek}

    ${el_merek}=                     Get Web Element                 ${target_merek}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_merek}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_model}               timeout=10s
    Scroll Element Into View         ${dropdown_model}

    ${el_dropdown_model}=            Get Web Element                 ${dropdown_model}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_dropdown_model}
    Sleep    1s    # Jeda agar popover Model ter-render

    ${target_model}=                 Evaluate                        '''${option_model_template}'''.format(model_name='${model_name}')

    Wait Until Element Is Visible    ${target_model}                 timeout=10s
    Scroll Element Into View         ${target_model}

    ${el_model}=                     Get Web Element                 ${target_model}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_model}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_tahun_unit}             timeout=10s
    Scroll Element Into View         ${input_tahun_unit}
    Clear Element Text               ${input_tahun_unit}
    Input Text                       ${input_tahun_unit}             ${tahun}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_ram}                    timeout=10s
    Scroll Element Into View         ${input_ram}
    Clear Element Text               ${input_ram}
    Input Text                       ${input_ram}                    ${ram_val}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_warna}               timeout=10s
    Scroll Element Into View         ${dropdown_warna}

    ${el_dropdown_warna}=            Get Web Element                 ${dropdown_warna}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_dropdown_warna}
    Sleep    1s    # Jeda agar popover Warna ter-render

    ${target_warna}=                 Evaluate                        '''${option_warna_template}'''.format(warna_name='${warna_name}')

    Wait Until Element Is Visible    ${target_warna}                 timeout=10s
    Scroll Element Into View         ${target_warna}

    ${el_warna}=                     Get Web Element                 ${target_warna}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_warna}
    Sleep    0.5s

    ${dynamic_sn}=                   Generate Unique Serial Number

    Wait Until Element Is Visible    ${input_serial_number}          timeout=10s
    Scroll Element Into View         ${input_serial_number}
    Clear Element Text               ${input_serial_number}
    Input Text                       ${input_serial_number}          ${dynamic_sn}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_no_penyimpanan}         timeout=10s
    Scroll Element Into View         ${input_no_penyimpanan}
    Input Text                       ${input_no_penyimpanan}         ${no_penyimpanan}

    Wait Until Element Is Visible    ${dropdown_grade}               timeout=10s
    Scroll Element Into View         ${dropdown_grade}
    ${el_dropdown}=                 Get Web Element                  ${dropdown_grade}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_dropdown}
    Sleep    0.5s

    ${target_option}=                Evaluate    '''${option_grade}'''.format(value='${grade_value}')
    Wait Until Element Is Visible    ${target_option}                timeout=10s
    ${el_option}=                    Get Web Element                  ${target_option}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_option}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_catatan}               timeout=10s
    Scroll Element Into View         ${input_catatan}
    Input Text                       ${input_catatan}               ${text_catatan}
    Sleep    0.5s

    Wait Until Element Is Visible    ${btn_selanjutnya}              timeout=10s
    Scroll Element Into View         ${btn_selanjutnya}
    
    ${el_selanjutnya}=              Get Web Element                 ${btn_selanjutnya}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_selanjutnya}
    Sleep    1s

Upload Foto By Label
    [Arguments]    ${label_name}    ${file_path}=${PATH_SAMPLE_FOTO}
    
    ${target_locator}=               Evaluate    '''${input_foto_by_label}'''.format(label_name='${label_name}')
    
    Wait Until Page Contains Element    ${target_locator}               timeout=10s
    Choose File                         ${target_locator}               ${file_path}
    Sleep    0.5s

Upload Semua Foto Unit
    FOR    ${index}    IN RANGE    1    15
        ${target_input}=                 Evaluate    '''${input_foto_index}'''.format(index=${index})
        
        Wait Until Page Contains Element   ${target_input}              timeout=10s
        Choose File                         ${target_input}              ${PATH_SAMPLE_FOTO}
        Sleep    0.3s
    END

Submit Form Objek Lelang
    Wait Until Element Is Visible    ${btn_simpan}                   timeout=10s
    Scroll Element Into View         ${btn_simpan}
    
    ${el_simpan}=                   Get Web Element                  ${btn_simpan}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_simpan}

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}            timeout=10s
    Scroll Element Into View         ${btn_ya_konfirmasi}
    ${el_konfirmasi}=               Get Web Element                  ${btn_ya_konfirmasi}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_konfirmasi}

    Verify Success Toast Notification
    Sleep    2s

Verify Success Toast Notification
    Wait Until Element Is Visible    ${toast_success_title}          timeout=10s
    Log                              SUCCESS: Berhasil menemukan toast objek lelang!

Verify Mandatory Field Validation In Tab Unit
    Wait Until Element Is Visible    ${btn_tambah_objek_lelang}      timeout=10s
    ${el_tambah}=                   Get Web Element                  ${btn_tambah_objek_lelang}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_tambah}
    
    Wait Until Element Is Visible    ${btn_selanjutnya}              timeout=10s
    Scroll Element Into View         ${btn_selanjutnya}
    ${el_selanjutnya}=              Get Web Element                  ${btn_selanjutnya}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_selanjutnya}
    
    Wait Until Page Contains Element    ${error_msg_wajib_diisi}     timeout=5s
    
    Page Should Contain Element      ${btn_selanjutnya}
    
    ${count}=                       Get Element Count                ${error_msg_wajib_diisi}
    Log                              SUCCESS: Terdeteksi ${count} alert 'Wajib diisi'. Navigasi berhasil ditolak!

Verify File Size Validation (> 2MB) In Tab Dokumen
    [Arguments]    ${file_3mb}=${PATH_FOTO_3MB}      ${box_opt}=${Option}    ${garansi_opt}=${Option}     ${tgl_garansi}=${Tanggal_Garansi}

    ${target_charger}=               Evaluate    '''${radio_option_template}'''.format(field_name='Charger', option_value='${Option}')
    Wait Until Element Is Visible    ${target_charger}                timeout=10s
    ${el_charger}=                   Get Web Element                  ${target_charger}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_charger}

    ${target_box}=                   Evaluate    '''${radio_option_template}'''.format(field_name='Box', option_value='${box_opt}')
    Wait Until Element Is Visible    ${target_box}                    timeout=10s
    Scroll Element Into View         ${target_box}
    ${el_box}=                       Get Web Element                  ${target_box}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_box}
    Sleep    0.3s

    ${target_garansi}=               Evaluate    '''${radio_option_template}'''.format(field_name='Garansi', option_value='${garansi_opt}')
    Wait Until Element Is Visible    ${target_garansi}                timeout=10s
    Scroll Element Into View         ${target_garansi}
    ${el_garansi}=                   Get Web Element                  ${target_garansi}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_garansi}
    Sleep    0.3s

    Wait Until Element Is Visible    ${input_tanggal_garansi}        timeout=10s
    Scroll Element Into View         ${input_tanggal_garansi}
    
    Press Keys                       ${input_tanggal_garansi}        ${tgl_garansi}
    Sleep    0.5s

    Wait Until Page Contains Element    ${input_foto_1}                 timeout=10s
    Choose File                         ${input_foto_1}                 ${file_3mb}
    
    Wait Until Page Contains Element    ${error_msg_file_size}          timeout=10s
    Log                              SUCCESS: Alert 'Maximal file upload 2MB' berhasil terdeteksi!
    
    Page Should Contain Element      ${btn_selanjutnya}

Verify Unsupported File Format In Tab Dokumen
    [Arguments]    ${invalid_file}=${PATH_FILE_XLSX}    ${box_opt}=${Option}    ${garansi_opt}=${Option}     ${tgl_garansi}=${Tanggal_Garansi}

    ${target_charger}=               Evaluate    '''${radio_option_template}'''.format(field_name='Charger', option_value='${Option}')
    Wait Until Element Is Visible    ${target_charger}                timeout=10s
    ${el_charger}=                   Get Web Element                  ${target_charger}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_charger}

    ${target_box}=                   Evaluate    '''${radio_option_template}'''.format(field_name='Box', option_value='${box_opt}')
    Wait Until Element Is Visible    ${target_box}                    timeout=10s
    Scroll Element Into View         ${target_box}
    ${el_box}=                       Get Web Element                  ${target_box}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_box}
    Sleep    0.3s

    ${target_garansi}=               Evaluate    '''${radio_option_template}'''.format(field_name='Garansi', option_value='${garansi_opt}')
    Wait Until Element Is Visible    ${target_garansi}                timeout=10s
    Scroll Element Into View         ${target_garansi}
    ${el_garansi}=                   Get Web Element                  ${target_garansi}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_garansi}
    Sleep    0.3s

    Wait Until Element Is Visible    ${input_tanggal_garansi}        timeout=10s
    Scroll Element Into View         ${input_tanggal_garansi}
    
    Press Keys                       ${input_tanggal_garansi}        ${tgl_garansi}
    Sleep    0.5s

    Wait Until Page Contains Element    ${input_foto_1}                 timeout=10s
    Choose File                         ${input_foto_1}                 ${invalid_file}
    
    Wait Until Page Contains Element    ${error_msg_invalid_file_type}  timeout=10s
    Log                              SUCCESS: Alert 'Tipe file tidak valid.' berhasil terdeteksi!

Search Edit Objek Lelang
    [Arguments]    ${no_stok}=${No_Stok_Edit}

    Wait Until Element Is Visible    ${input_search_stok}             timeout=10s
    Clear Element Text               ${input_search_stok}
    Input Text                       ${input_search_stok}             ${no_stok}
    Press Keys                       ${input_search_stok}             RETURN
    Sleep    1.5s

    Wait Until Element Is Visible    ${btn_action_dropdown}           timeout=10s
    Scroll Element Into View         ${btn_action_dropdown}
    
    Click Element                    ${btn_action_dropdown}
    Sleep    0.8s

    Wait Until Page Contains Element    ${btn_edit_menuitem}          timeout=10s
    ${el_edit}=                         Get Web Element               ${btn_edit_menuitem}
    Execute Javascript                  arguments[0].click();         ARGUMENTS    ${el_edit}
    Sleep    1s

Edit Objek Lelang Unit
    [Arguments]     ${text_catatan}=${Edit_catetan}    ${ram_val}=${Edit_Ram_val}    ${warna_name}=${Edit_Warna}
    Wait Until Element Is Visible    ${input_ram}                    timeout=10s
    Scroll Element Into View         ${input_ram}
    Clear Element Text               ${input_ram}
    Input Text                       ${input_ram}                    ${ram_val}
    Sleep    0.5s

    Wait Until Element Is Visible    ${dropdown_warna}               timeout=10s
    Scroll Element Into View         ${dropdown_warna}

    ${el_dropdown_warna}=            Get Web Element                 ${dropdown_warna}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_dropdown_warna}
    Sleep    1s    

    ${target_warna}=                 Evaluate                        '''${option_warna_template}'''.format(warna_name='${warna_name}')

    Wait Until Page Contains Element    ${target_warna}                 timeout=10s
    ${el_warna}=                        Get Web Element                  ${target_warna}
    Execute Javascript                  arguments[0].click();            ARGUMENTS    ${el_warna}
    Sleep    0.5s

    Wait Until Element Is Visible    ${input_catatan}               timeout=10s
    Scroll Element Into View         ${input_catatan}
    Input Text                       ${input_catatan}               ${text_catatan}
    Sleep    0.5s

    Wait Until Element Is Visible    ${btn_selanjutnya}              timeout=10s
    Scroll Element Into View         ${btn_selanjutnya}
    
    ${el_selanjutnya}=              Get Web Element                 ${btn_selanjutnya}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_selanjutnya}
    Sleep    1s

Edit Objek Lelang Dokumen
    [Arguments]    ${charger_opt}=${Option_Edit}    ${box_opt}=${Option_Edit}    ${garansi_opt}=${Option_Edit}     ${tgl_garansi}=${Edit_Tanggal_Garansi}

    ${target_charger}=               Evaluate    '''${radio_option_template}'''.format(field_name='Charger', option_value='${charger_opt}')
    Wait Until Element Is Visible    ${target_charger}                timeout=10s
    Scroll Element Into View         ${target_charger}
    ${el_charger}=                   Get Web Element                  ${target_charger}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_charger}
    Sleep    0.3s

    ${target_box}=                   Evaluate    '''${radio_option_template}'''.format(field_name='Box', option_value='${box_opt}')
    Wait Until Element Is Visible    ${target_box}                    timeout=10s
    Scroll Element Into View         ${target_box}
    ${el_box}=                       Get Web Element                  ${target_box}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_box}
    Sleep    0.3s

    ${target_garansi}=               Evaluate    '''${radio_option_template}'''.format(field_name='Garansi', option_value='${garansi_opt}')
    Wait Until Element Is Visible    ${target_garansi}                timeout=10s
    Scroll Element Into View         ${target_garansi}
    ${el_garansi}=                   Get Web Element                  ${target_garansi}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_garansi}
    Sleep    0.3s

    Wait Until Element Is Visible    ${input_tanggal_garansi}        timeout=10s
    Scroll Element Into View         ${input_tanggal_garansi}
    
    Press Keys                       ${input_tanggal_garansi}        ${tgl_garansi}
    Sleep    0.5s

    Wait Until Element Is Visible    ${btn_selanjutnya}              timeout=10s
    Scroll Element Into View         ${btn_selanjutnya}
    
    ${el_selanjutnya}=              Get Web Element                 ${btn_selanjutnya}
    Execute Javascript               arguments[0].click();           ARGUMENTS    ${el_selanjutnya}
    
    Sleep    1s

Submit Edit Form Objek Lelang
    Wait Until Element Is Visible    ${btn_simpan}                   timeout=10s
    Scroll Element Into View         ${btn_simpan}
    
    ${el_simpan}=                   Get Web Element                  ${btn_simpan}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_simpan}

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}            timeout=10s
    Scroll Element Into View         ${btn_ya_konfirmasi}
    ${el_konfirmasi}=               Get Web Element                  ${btn_ya_konfirmasi}
    Execute Javascript               arguments[0].click();            ARGUMENTS    ${el_konfirmasi}

    Verify Success Edit Toast Notification
    Sleep    2s

Verify Success Edit Toast Notification
    Wait Until Element Is Visible    ${toast_success_edit}          timeout=10s
    Log                              SUCCESS: Berhasil menemukan toast objek lelang!