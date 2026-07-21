#tambah objek lelang
#step unit
tambah_objek_lelang="xpath://button[normalize-space()='Objek Lelang']"
pilih_objek_lelang="xpath://button[normalize-space()='Bike']"
input_cabang="xpath://input[@placeholder='Pilih Cabang']"
input_no_Seller="xpath://input[@placeholder='Pilih No Seller']"
input_HDL="xpath://input[@placeholder='Ketik Harga Dasar Lelang']"
pilih_merek="xpath://span[text()='Pilih Merek']"
pilih_model="xpath://span[text()='Pilih Model']"
pilih_tipe="xpath://span[text()='Pilih Tipe']"
input_tahun="xpath://input[@placeholder='Ketik Tahun Kendaraan']"
pilih_transmisi="xpath://span[text()='Pilih Transmisi']"
input_cc="xpath://input[@placeholder='Ketik Kapasitas Mesin (CC)']"
pilih_warna="xpath://span[text()='Pilih Warna']"
pilih_bahan_bakar="xpath://span[text()='Pilih Bahan Bakar']"
input_odometer="xpath://input[@placeholder='Ketik Odometer']"
input_nopolisi="xpath://input[@placeholder='Ketik No Polisi']"
input_no_rangka="xpath://input[@placeholder='Ketik No Rangka']"
input_no_mesin="xpath://input[@placeholder='Ketik No Mesin']"
upload_norangka="xpath:(//input[@type='file'])[1]"
upload_nomesin="xpath:(//input[@type='file'])[2]"
pilih_grade_eksterior="xpath://span[text()='Pilih Grade Eksterior']"
pilih_grade_interior="xpath://span[text()='Pilih Grade Interior']"
pilih_grade_mesin="xpath://span[text()='Pilih Grade Mesin']"
pilih_grade="xpath://span[text()='Pilih Grade']"
input_catatan="xpath://textarea[@placeholder='Ketik Catatan']"
klik_selanjutnya="xpath://button[normalize-space()='Selanjutnya']"

#step dokumen
input_nostnk="xpath://input[@placeholder='Ketik No STNK']"
input_nama_stnk="xpath://input[@placeholder='Ketik Nama STNK']"
tanggal_masa_berlaku_stnk="xpath://input[@type='date' and @name='stnkExpired']"
upload_stnk="xpath:(//input[@type='file'])[1]"
pilih_tampilan_diweb_stnk="xpath://span[text()='Pilih Tampilan di Web STNK']"
input_bpkb_durasi="xpath://input[@placeholder='Ketik BPKB Durasi']"
input_nobpkb="xpath://input[@placeholder='Ketik No BPKB']"
input_nama_bpkb="xpath://input[@placeholder='Ketik Nama BPKB']"
upload_bpkb="xpath:(//input[@type='file'])[2]"
pilih_tampilan_diweb_bpkb="xpath://span[text()='Pilih Tampilan di Web BPKB']"
tanggal_masa_berlaku_KEUR="xpath://input[@type='date' and @name='keurExpired']"
input_jumlah_kunci="xpath://input[@placeholder='Ketik Jumlah Kunci']"
upload_faktur="xpath:(//input[@type='file'])[3]"
pilih_tampilan_diweb_faktur="xpath://span[text()='Pilih Tampilan di Web Faktur']"
upload_foto_notice_pajak="xpath:(//input[@type='file'])[4]"
pilih_tampilan_diweb_notice_pajak="xpath://span[text()='Pilih Tampilan di Web Notice Pajak']"
upload_foto_lainnya1="xpath:(//input[@type='file'])[5]"
upload_foto_lainnya2="xpath:(//input[@type='file'])[6]"

#step dokumen
upload_tampak_depan="xpath:(//input[@type='file'])[1]"
upload_tampak_belakang="xpath:(//input[@type='file'])[2]"
upload_tampak_kanan="xpath:(//input[@type='file'])[3]"
upload_tampak_kiri="xpath:(//input[@type='file'])[4]"
upload_tampak_interior="xpath:(//input[@type='file'])[5]"
upload_tampak_bagasi="xpath:(//input[@type='file'])[6]"
upload_tampak_spidometer="xpath:(//input[@type='file'])[7]"
upload_tampak_ruang_mesin="xpath:(//input[@type='file'])[8]"
upload_foto_lainnya3="xpath:(//input[@type='file'])[9]"
upload_foto_lainnya4="xpath:(//input[@type='file'])[10]"
upload_foto_lainnya5="xpath:(//input[@type='file'])[11]"
upload_foto_lainnya6="xpath:(//input[@type='file'])[12]"
upload_foto_lainnya7="xpath:(//input[@type='file'])[13]"
upload_foto_lainnya8="xpath:(//input[@type='file'])[14]"
upload_foto_lainnya9="xpath:(//input[@type='file'])[15]"
upload_foto_lainnya10="xpath:(//input[@type='file'])[16]"
upload_foto_lainnya11="xpath:(//input[@type='file'])[17]"
upload_foto_lainnya12="xpath:(//input[@type='file'])[18]"
upload_foto_lainnya13="xpath:(//input[@type='file'])[19]"
upload_foto_lainnya14="xpath:(//input[@type='file'])[20]"
klik_bintang_foto="xpath:(//button[contains(@class,'bg-gray-300')])[2]"
simpan_objek_lelang="xpath://button[normalize-space()='Simpan']"
ya_simpan_objek_lelang="xpath://button[contains(text(), 'Ya, Simpan')]"
ya_mengerti="xpath://button[normalize-space()='Ya, Mengerti']"



#value objek lelang
#step unit bike
value_objek_lelang_bike="xpath://div[@role='option'][normalize-space()='Bike']"
value_cabang="Balikpapan"
value_select_cabang="xpath://div[@role='option'][normalize-space()='Balikpapan']"
value_no_seller="00000005"
value_select_no_seller="xpath://div[contains(text(),'00000005')]"
value_HDL="1500000"
value_merek="xpath://div[@role='option'][normalize-space()='DUCATI']"
value_model="xpath://div[@role='option'][normalize-space()='MONSTER']"
value_tipe="xpath://div[@role='option'][normalize-space()='MONSTER 795']"
value_tahun="2018"
value_transmisi="//div[@role='option'][normalize-space()='AT']"
value_cc="821"
value_warna="xpath://div[@role='option'][normalize-space()='METALIK']"
value_bahan_bakar="xpath://div[@role='option'][normalize-space()='Solar']"
value_odometer="12000"
value_nopolisi="KT 1234 AB"
value_no_rangka="MDH821DAB1234567"
value_no_mesin="DAB1234567"
value_grade_ekterior="//div[@role='option'][normalize-space()='A']"
value_grade_interior="//div[@role='option'][normalize-space()='B']"
value_grade_mesin="//div[@role='option'][normalize-space()='A']"
value_grade="//div[@role='option'][normalize-space()='A']"
value_catatan="Unit dalam kondisi baik, siap pakai."

#step dokumen lengkap
value_stnk="//input[@type='radio' and @name='stnk' and @value='AVAILABLE']"
value_samsat="//input[@type='radio' and @name='samsatOnline' and @value='true']"
value_nostnk="STNK1234567890"
value_nama_stnk="John Doe"
value_tanggal_masa_berlaku_stnk="2025-12-31"  # Format: YYYY-MM-DD
value_pilih_tampilan_diweb_stnk="//label[normalize-space(.)='Ya']//input[@type='radio' and @name='fotoSTNK']"
value_bpkb="//input[@type='radio' and @name='bpkb' and @value='AVAILABLE']"
value_bpkb_durasi="1"
value_nobpkb="BPKB1234567890"
value_nama_bpkb="John Doe"
value_pilih_tampilan_diweb_bpkb="//label[normalize-space(.)='Ya']//input[@type='radio' and @name='fotoBPKB']"
value_faktur="//input[@type='radio' and @name='faktur' and @value='AVAILABLE']"
value_FK_KTP="//input[@type='radio' and @name='fcIdcard' and @value='AVAILABLE']"
value_kuitansi_blanko="//input[@type='radio' and @name='receipt' and @value='AVAILABLE']"
value_form_A="//input[@type='radio' and @name='formA' and @value='AVAILABLE']"
value_KEUR="//input[@type='radio' and @name='keur' and @value='AVAILABLE']"
value_tanggal_masa_berlaku_KEUR="2025-12-31"  # Format: YYYY-MM-DD
value_jumlah_kunci="2"
value_SPH="//input[@type='radio' and @name='sph' and @value='AVAILABLE']"
value_pilih_tampilan_diweb_faktur="//label[normalize-space(.)='Ya']//input[@type='radio' and @name='fotoBPKB']"
value_pilih_tampilan_diweb_notice_pajak="//label[normalize-space(.)='Ya']//input[@type='radio' and @name='showweb2']"

#step dokumen tidak lengkap
value_stnk_tidak="//input[@type='radio' and @name='stnk' and @value='NOT_AVAILABLE']"
value_samsat_tidak="//input[@type='radio' and @name='samsatOnline' and @value='false']"
value_bpkb_tidak="//input[@type='radio' and @name='bpkb' and @value='NOT_AVAILABLE']"
value_faktur_tidak="//input[@type='radio' and @name='faktur' and @value='NOT_AVAILABLE']"
value_FK_KTP_tidak="//input[@type='radio' and @name='fcIdcard' and @value='NOT_AVAILABLE']"
value_kuitansi_blanko_tidak="//input[@type='radio' and @name='receipt' and @value='NOT_AVAILABLE']"
value_form_A_tidak="//input[@type='radio' and @name='formA' and @value='NOT_AVAILABLE']"
value_KEUR_tidak="//input[@type='radio' and @name='keur' and @value='NOT_AVAILABLE']"
value_SPH_tidak="//input[@type='radio' and @name='sph' and @value='NOT_AVAILABLE']"

#Step Dokumen NA & BPKB Hari Kerja
value_stnk_NA="//input[@type='radio' and @name='stnk' and @value='NA']"
value_samsat_NA="//input[@type='radio' and @name='samsatOnline' and @value='false']"
value_bpkb_Hari_Kerja="//input[@type='radio' and @name='bpkb' and @value='HARI_KERJA']"
value_faktur_NA="//input[@type='radio' and @name='faktur' and @value='NA']"
value_FK_KTP_NA="//input[@type='radio' and @name='fcIdcard' and @value='NA']"
value_kuitansi_blanko_NA="//input[@type='radio' and @name='receipt' and @value='NA']"
value_form_A_NA="//input[@type='radio' and @name='formA' and @value='NA']"
value_KEUR_NA="//input[@type='radio' and @name='keur' and @value='NA']"
value_SPH_NA="//input[@type='radio' and @name='sph' and @value='NA']"

#path file upload
path_file_norangka="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_nomesin="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_stnk="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_bpkb="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_faktur="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_notice_pajak="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_tampak_depan="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_tampak_belakang="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_tampak_kanan="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_tampak_kiri="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_tampak_interior="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_tampak_bagasi="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_tampak_spidometer="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_tampak_ruang_mesin="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_foto_lainnya="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_foto_lainnya2="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_foto_lainnya3="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_foto_lainnya4="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_foto_lainnya5="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_foto_lainnya6="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_foto_lainnya7="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_foto_lainnya8="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_foto_lainnya9="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"
path_file_foto_lainnya10="C:\\Users\\arisu\\Documents\\javis\\CMS-AAS\\resources\\ModulMOU\\file\\attachment.jpeg"

#Filter
filter="xpath://span[text()='Filter']"
filter_status="xpath://span[text()='Pilih Status Aktif']"
filter_cabang="xpath://span[text()='Pilih Cabang']"
filter_objek_lelang="xpath://span[text()='Pilih Objek Lelang']"
filter_merek="xpath://span[text()='Pilih Merek']"
filter_model="//span[text()='Pilih Model']"
filter_type="//span[text()='Pilih Type']"
filter_status_unit="//span[text()='Pilih Status Unit']"
filter_no_stok="//input[@placeholder='Ketik Odometer']"
filter_no_polisi="//input[@placeholder='Ketik No Polisi']"
klik_tampilkan="//button[normalize-space()='Tampilkan']"


#value filter
value_filter_status="//div[@role='option'][normalize-space()='Ya']"
value_filter_cabang="//div[@role='option'][normalize-space()='Semua Cabang']"
value_filter_objek_lelang="//div[@role='option'][normalize-space()='Bike']"
value_filter_merek="//div[@role='option'][normalize-space()='DUCATI']"
value_filter_model="//div[@role='option'][normalize-space()='MONSTER']"
value_filter_type="//div[@role='option'][normalize-space()='MONSTER 795']"
value_filter_status_unit="//div[@role='option'][normalize-space()='Available']"
value_filter_no_stok="00004379"
value_filter_no_polisi="D 1439 ZNR"
pilih_hapus="//button[normalize-space()='Hapus']"


#search
input_search="xpath://input[@id='searchTable']"
pilih_X="//*[name()='path' and contains(@d,'M242.72 256l100.07')]"


#value search
value_search_no_stok="00004379"
value_search_merek="DUCATI"
value_search_no_polisi="D 1439 ZNR"
value_search_cabang="Balikpapan"


#edit objek lelang
#aksi
klik_aksi="(//button[.//*[name()='svg' and @viewBox='0 0 448 512']])[2]"
klik_edit="//button[normalize-space()='Edit']"

#view
klik_view="(//span[text()='View'])[1]"
klik_edit="//span[text()='Edit']"



#tambah objek lelang
#step unit
input_tahun_Unit="//input[@placeholder='Ketik Tahun Unit']"
input_RAM="xpath://input[@placeholder='Ketik RAM']"
input_serialnumber="xpath://input[@placeholder='Ketik Serial Number']"
input_no_penyimpanan="xpath://input[@placeholder='Ketik No Penyimpanan']"


#value unit elektronic
value_objek_lelang_electronic="//div[@role='option'][normalize-space()='Electronic']"
value_merek_electronic="//div[@role='option'][normalize-space()='XIAOMI']"
value_model_electronic="//div[@role='option'][normalize-space()='Zen Ultra Laptop']"
value_warna_electronic="//div[@role='option'][normalize-space()='HITAM']"
value_tahun_unit="2020"
value_RAM="16 GB"


#step dokumen
pilih_masa_berlaku_garansi="//input[@type='date' and @name='keurExpired']"
upload_foto_1="(//input[@type='file'])[1]"
upload_foto_2="(//input[@type='file'])[1]"

#value dokumen
value_charger="//input[@type='radio' and @name='faktur' and @value='AVAILABLE']"
value_box="//input[@type='radio' and @name='receipt' and @value='AVAILABLE']"
value_garansi="//input[@type='radio' and @name='keur' and @value='AVAILABLE']"

#value dokumen tidak ada
value_charger_tidak="//input[@type='radio' and @name='faktur' and @value='NOT_AVAILABLE']"
value_box_tidak="//input[@type='radio' and @name='receipt' and @value='NOT_AVAILABLE']"
value_garansi_tidak="//input[@type='radio' and @name='keur' and @value='NOT_AVAILABLE']"

#value dokumen tidak ada
value_charger_NA="//input[@type='radio' and @name='faktur' and @value='NA']"
value_box_NA="//input[@type='radio' and @name='receipt' and @value='NA']"
value_garansi_NA="//input[@type='radio' and @name='keur' and @value='NA']"


