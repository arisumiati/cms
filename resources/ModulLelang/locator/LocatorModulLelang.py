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
checkbox_free_admin="xpath=//table//tbody/tr[1]/td[count(//th[contains(.,'FREE ADMIN FEE')]/preceding-sibling::th)+1]//input[@type='checkbox']"
admin_fee_container="xpath=//th[contains(.,'ADMIN FEE') and not(contains(.,'FREE'))]/ancestor::table//tbody/tr[1]/td[position()=count(//th[contains(.,'ADMIN FEE') and not(contains(.,'FREE'))]/preceding-sibling::th)+1]"

#Checkbox Rekomendasi
checkbox_rekomendasi = "xpath=//table//tbody/tr[1]/td[count(//th[contains(.,'REKOMENDASI')]/preceding-sibling::th)+1]"

#tanggal selesai lebih awal dari tanggal mulai
err_msg_invalid_schedule=" xpath://p[contains(@class,'text-danger') and contains(text(),'Waktu selesai harus lebih dari waktu mulai')]"

#button hapus objek lelang
btn_delete_objek_row1="xpath=//table//tbody/tr[1]//button[.//span[text()='delete']]"
btn_konfirmasi_hapus_objek = "xpath=//button[normalize-space(text())='Ya, Konfirmasi']"

#button Hapus objek Bidder
btn_delete_bidder="xpath=//button[.//span[text()='delete']]"
btn_konfirmasi_hapus_bidder = "xpath=//button[normalize-space(text())='Ya, Konfirmasi']"

#Data Lelang ID
lelang_id = "00004179"
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
#input_lot_aktif="xpath=//div[@role='group' and @type='button']"
#input_lot_aktif = "xpath=//button[.//span[text()='keyboard_arrow_down']] | //div[contains(@class, 'cursor-pointer')][.//span[text()='keyboard_arrow_down']]"
opsi_lot_by_index = "xpath=(//div[contains(@class, 'popover') or contains(@class, 'content') or @role='listbox']//span[text()='{index}'] | //div[contains(@class, 'popover') or contains(@class, 'content')]//div[text()='{index}'])[last()]"
#create tab bidder group
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
bidder="00000"

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


#value test data List Lelang
#edit ringkasan
edit_nama_lelang="Edit Automation"
edit_cabang="xpath:xpath://div[text()='Banjarmasin']"
edit_admin_fee="200000"
edit_harga_nipl="2000000"
edit_input_tanggal_mulai="xpath://input[@type='date' and @placeholder='Ketik Tanggal Mulai Lelang']"
edit_waktu_mulai_lelang="11:00"
edit_waktu_selesai_lelang="21:00"
edit_durasi_perslot="02:00"
edit_waktu_tambahan="02:00"
edit_kelipatan_harga_bid="500000"
edit_waktu_wanpres="13:00"


#value pencarian
id_lelang="00003291"

#Free Admin Fee
checkbox_free_admin=" xpath=//tr[contains(., 'FREE ADMIN FEE')]//input[@type='checkbox']"
input_admin_fee="xpath://th[contains(.,'ADMIN FEE') and not(contains(.,'FREE'))]/ancestor::table//tbody/tr[1]/td[position()=count(//th[contains(.,'ADMIN FEE') and not(contains(.,'FREE'))]/preceding-sibling::th)+1]//input[@inputmode='numeric' or @type='text']"