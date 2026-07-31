#Pop up konfirmasi
ya_mengerti="xpath//button[normalize-space(text())='Ya, Mengerti']"

#Modul List Lelang
button_create="xpath://button[@data-slot='button' and contains(., 'Tambah')]"
simpan_tab_ringkasan="xpath:(//div[@role='dialog'])[1]//button[@data-slot='button' and normalize-space()='Simpan']"
simpan_tab_objek_lelang="xpath:(//div[@role='dialog'])[last()]//button[contains(., 'Simpan')]"
simpan_tab_bidder_lelang="xpath:(//div[@role='dialog'])[last()]//button[@data-slot='button' and normalize-space()='Simpan']"
pop_up_konfirmasi="xpath://div[@role='alertdialog']//button[normalize-space()='Ya, Konfirmasi']"

#create tab ringkasan
input_nama_lelang="xpath://input[@name='auctionName' and @placeholder='Ketik Nama Lelang']"
input_objek_lelang="xpath://input[@value='Bike']"
switch_objek_lelang="xpath://button[contains(., 'Electronic')]"
input_jenis_lelang="xpath://p[text()='Jenis Lelang']/following-sibling::div[@type='button']"
switch_jenis_lelang="xpath://div[@role='dialog']//button[contains(., 'Time Auction Normal')]"
input_cabang="xpath://p[text()='Cabang Lelang']/following-sibling::div[@type='button']"
input_admin_fee="xpath://input[@placeholder='Ketik Admin Fee Bidder']"
input_harga_nipl="path://input[@placeholder='Ketik Harga NIPL/Deposit']"
switch_show_auction="xpath:(//button[@role='switch'])[last()]"
input_tanggal_mulai="xpath://input[@name='auctionStart']"
input_waktu_mulai="xpath://input[@name='auctionStartTime']"
input_tanggal_selesai="xpath://input[@name='auctionEnd']"
input_waktu_selesai="xpath://input[@name='auctionEndTime']"
input_durasi="xpath://div[@id='add-form-modal']//div//div//div[contains(@class,'text-label')]//div[contains(@name,'content-section-0')]//div//input[contains(@name,'lotDuration')]"
input_waktu_tambahan="xpath://input[@name='additionalTime' and @placeholder='MMM.SS']"
input_kelipatan="xpath://input[@type='text' and @placeholder='Ketik Kelipatan Harga Bid']"
input_tanggal_wanpes="xpath://input[@type='date' and @placeholder='Ketik Tanggal Wanpres']"
input_waktu_wanpes="xpath://input[@type='time' and @placeholder='Ketik Waktu Wanpres']"

#input Radio Button Fixed Dan Presentase
radio_persentase="xpath://label[contains(., 'Persentase')] | //span[contains(., 'Persentase')]"
symbol_persen="xpath://*[normalize-space(text())='%']"

#input unchecklist customer reguler
checkbox_customer_regular="xpath=//label[contains(text(),'Lelang terbuka untuk customer Regular')]/preceding-sibling::input"

#input objek lelang Free Admin Fee
checkbox_free_admin = "xpath=(//table//tbody/tr)[last()]/td[10]//*[self::input or self::button or self::label or self::div]"
admin_fee_container="xpath=//th[contains(.,'ADMIN FEE') and not(contains(.,'FREE'))]/ancestor::table//tbody/tr[1]/td[position()=count(//th[contains(.,'ADMIN FEE') and not(contains(.,'FREE'))]/preceding-sibling::th)+1]"

#Checkbox Rekomendasi
checkbox_rekomendasi ="xpath=//table//tbody/tr[1]/td[count(//th[contains(.,'REKOMENDASI')]/preceding-sibling::th)+1]"

#tanggal selesai lebih awal dari tanggal mulai
err_msg_invalid_schedule=" xpath://p[contains(@class,'text-danger') and contains(text(),'Waktu selesai harus lebih dari waktu mulai')]"

#button hapus objek lelang
btn_delete_objek_row1="xpath=//table//tbody/tr[1]//button[.//span[text()='delete']]"
btn_konfirmasi_hapus_objek = "xpath=//button[normalize-space(text())='Ya, Konfirmasi']"

#button Hapus objek Bidder
btn_delete_bidder="xpath=//button[.//span[text()='delete']]"
btn_konfirmasi_hapus_bidder = "xpath=//button[normalize-space(text())='Ya, Konfirmasi']"

#Data Lelang ID
lelang_id = "00004201"
input_search_list_lelang = "xpath=//input[contains(@placeholder, 'Search')]"
btn_action_dropdown_row1="xpath=//button[@data-slot='dropdown-menu-trigger' or contains(@aria-label, 'aksi')]"
btn_menu_edit = "xpath=//div[@role='menuitem'][.//span[text()='edit'] or contains(., 'edit')]"
tab_objek_lelang = "xpath=//button[@role='tab'][text()='Objek Lelang' or contains(., 'Objek Lelang')]"

#create tab objek lelang
tab_objek_lelang="xpath://button[text()='Objek Lelang']"
tambah_objek_lelang="xpath://button[@data-slot='modal-trigger' and contains(., 'Tambah')]"
search_objek_lelang="xpath:(//input[@id='searchTable' and @placeholder='Search'])[4]"
pilih_objek_lelang="xpath:(//div[@role='dialog'])[last()]//tbody/tr[1]//input[@type='checkbox']"
input_lot="xpath://input[@type='number' and @placeholder='0']"
tambahkan_objek_lelang="xpath:(//div[@role='dialog'])[last()]//button[contains(., 'Simpan')]"
admin_fee_per_objek="xpath:(//input[@type='text' and @placeholder='0'])[2]"

#create tab bidder
tab_bidder="xpath://button[normalize-space()='Bidder']"
tambah_bidder="xpath:(//div[@role='dialog'])[last()]//button[contains(., 'Tambah')]"
cari_bidder="xpath:(//div[@role='dialog'])[last()]//input[contains(@placeholder, 'Search')]"
pilih_bidder="(//tbody//tr[1]//input[@type='checkbox'])"
tambahkan_bidder="xpath:(//div[@role='dialog'])[last()]//button[@data-slot='button' and normalize-space()='Simpan']"
input_lot_aktif = "xpath=(//div[@role='dialog'])[last()]//tbody/tr[1]//div[@role='group' and @type='button'] | (//div[@role='dialog'])[last()]//tbody/tr[1]//button[.//span[text()='keyboard_arrow_down']]"

# Create tab group
opsi_lot_by_index = "xpath=(//div[@role='dialog' and @data-state='open']//div[@role='option'])[{index}]"
tambah_group="xpath://button[@data-slot='modal-trigger']//span[text()='Group']"
pilih_kode_group="xpath://input[@value='Pilih Kode Group']"
click_kode_group="xpath://span[normalize-space(text())='ASL Lelang Laptop']"
# pilih_nama_group="xpath://span[normalize-space(text())='Pilih Nama Group']"
# click_nama_group="xpath://div[normalize-space(text())='Group Test']"
tambahkan_group="xpath:(//div[@role='dialog']//button[normalize-space()='Simpan'])[last()]"


#value test data List Lelang
#create ringkasan
nama_lelang="Testing Lelang"
cabang="xpath://div[@role='dialog']//*[normalize-space()='Balikpapan']"
admin_fee="250000"
admin_fee_persen="2.5"
harga_nipl="1000000"
input_tanggal_mulai="xpath://input[@type='date' and @placeholder='Ketik Tanggal Mulai Lelang']"
waktu_mulai_lelang="0500PM"
waktu_selesai_lelang="0100PM"
durasi_perslot="10:00"
waktu_tambahan="09:00"
kelipatan_harga_bid="50000"
waktu_wanpres="1100PM"
admin_fee_per_objek="500000"

#create tab bidder
bidder="00000005"

#dropdown pemilihan lot aktif
opsi_lot_aktif = "xpath=//div[@data-radix-popper-content-wrapper]//div[@role='option']"

#edit lelang
cari_id_lelang="xpath://input[@placeholder='Search']"
klik_view_lelang="xpath://span[text()='View']"
edit_lelang="xpath://span[text()='Edit']"
pilih_cabang="xpath://span[normalize-space(.)='Balikpapan']"
pilih_admin_fee="xpath:(//input)[@value='250.000'][1]"
pilih_harga_nipl="xpath:(//input)[@value='250.000'][2]"
pilih_tanggal_mulai="xpath://input[@type='date' and @min='2025-12-12' and @max='9999-12-31']"
pilih_waktu_mulai="xpath:(//input)[@type='time' and @min='11:6'][1]"
pilih_tanggal_selesai="xpath://input[@type='date' and @min='2025-12-13' and @max='9999-12-31']"
pilih_waktu_selesai="xpath:(//input)[@type='time' and @min='11:9'][2]"
pilih_waktu_tambahan="xpath://input[@value='P002.00']"
pilih_kelipatan="xpath://input[@value='50.000']"
pilih_tanggal_wanpes="xpath://input[@type='date' and @placeholder='Ketik Tanggal Wanpres']"
pilih_waktu_wanpes="xpath://input[@type='date' and @min='2025-12-14' and @max='2026-01-31']"
input_lelang_id="//input[@name='auctionNumber']"

#value pencarian
id_lelang="00004231"

#Free Admin Fee
checkbox_free_admin=" xpath=//tr[contains(., 'FREE ADMIN FEE')]//input[@type='checkbox']"
input_admin_fee="xpath://th[contains(.,'ADMIN FEE') and not(contains(.,'FREE'))]/ancestor::table//tbody/tr[1]/td[position()=count(//th[contains(.,'ADMIN FEE') and not(contains(.,'FREE'))]/preceding-sibling::th)+1]//input[@inputmode='numeric' or @type='text']"

#Input Lelang ID(Disabled)
tab_ringkasan = (
    "xpath=//button[@role='tab' and (text()='Ringkasan' or .='Ringkasan')]"
)   
edit_nama_judulLelang = "xpath=//input[@name='auctionName']"
edit_admin_fee = "xpath=//input[@name='adminFee' or @name='bidderAdminFee' or @placeholder='Ketik Admin Fee Bidder']"
edit_tanggal_mulai = "xpath=//input[@name='auctionStart']"
edit_waktu_Updatemulai = "xpath=//input[@name='auctionStartTime']"
edit_tanggal_selesai = "xpath=//input[@name='auctionEnd']"
edit_waktu_Updateselesai = (
    "xpath=//input[@name='auctionEndTime']"  
)

edit_nama_lelang = "Testing Update"
edit_tgl_mulai = "08022026"
edit_waktu_mulai = "1700PM"
edit_tgl_selesai = "08042026"
edit_waktu_selesai = "1100PM"
edit_fee = "140000"

#input Bidder Baru
bidder_baru="00000005"
pilih_bidder_edit="xpath=(//div[@role='dialog'])[last()]//table//tbody/tr[1]//input[@type='checkbox']"

#edit Persentase
persentase_fee="3"

#Create Tab Bidder Baru Fitur  Edit
tambahkan_group_edit="xpath:(//div[@role='dialog']//button[normalize-space()='Simpan'])[last()]"
pilih_kode_group_edit="xpath=//input[@value='Pilih Kode Group']/ancestor::div[@type='button']"
click_kode_group_edit="xpath=//div[@role='dialog' and @data-state='open']//button[.//span[text()='JKT999']]"

#hapus Bidder Di Fitur Edit
btn_delete_bidder_edit="xpath=//button[.//span[text()='delete']]"
btn_konfirmasi_hapus_bidder_edit="xpath=//button[normalize-space(text())='Ya, Konfirmasi']"

#batal Edit lelang
btn_batal_edit ="xpath=//button[normalize-space(text())='Batal']"
cancel_nama_lelang="Testing Cancel"

#Notifikasi
toast_sukses_buat_lelang = "xpath=//li[@data-sonner-toast and contains(., 'Sukses membuat lelang')]"
toast_sukses_update_objek_lelang = "xpath=//li[@data-sonner-toast and contains(., 'Sukses mengupdate objek lelang!')]"
toast_sukses_update_bidder = "xpath=//li[@data-sonner-toast and contains(., 'Sukses mengupdate bidder!')]"
toast_sukses_perbarui_data_lelang="xpath=//li[@data-sonner-toast and contains(., 'Berhasil memperbarui data lelang!')] "

#Tambah Bundle
checkbox_select_all_objek = "xpath=//th//input[@type='checkbox']"
btn_buat_bundle = "xpath=//button[contains(., 'Buat Bundle')]"
btn_buat_dan_kunci_unit = "xpath=//button[contains(., 'Buat & Kunci Unit')]"
toast_sukses_buat_bundle = "xpath=//li[@data-sonner-toast and contains(., 'berhasil dibuat')]"
toast_sukses_buat_bundle_tipe = "xpath=//li[@data-sonner-toast and @data-type='success' and contains(., 'bundle')]"
toast_sukses_buat_bundle_manual = "xpath=//li[@data-sonner-toast and contains(., 'Bundle berhasil dibuat!')]"

#Page Bundle
tab_bundle = "xpath=//button[@role='tab' and contains(., 'Bundle')]"
btn_tambah_bundle = "xpath=//button[contains(., '+ Tambah Bundle')]"
input_nama_bundle = "id=bundle-name-input"
dropdown_pilih_unit_bundle = "xpath=//button[@role='combobox' and .//span[contains(text(), 'Cari dan pilih unit')]]"
opsi_unit_dropdown_pertama = "xpath=(//div[@role='option' or @data-radix-collection-item][ancestor::div[@data-radix-popper-content-wrapper or @role='listbox']])[1]"
opsi_unit_kedua   = "xpath=(//div[@role='option' or @data-radix-collection-item])[2]"