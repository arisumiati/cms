#Pop up konfirmasi
ya_mengerti="xpath//button[normalize-space(text())='Ya, Mengerti']"

#Modul List Lelang
button_create="xpath://button[contains(text(), 'Tambah')]"
simpan_tab_ringkasan="xpath:(//button[normalize-space(text())='Simpan'])[1]"
simpan_tab_objek_lelang="xpath:(//button[normalize-space(text())='Simpan'])[2]"
simpan_tab_bidder_lelang="xpath:(//button[normalize-space(text())='Simpan'])[3]"
pop_up_konfirmasi="xpath://button[normalize-space(text())='Ya, Simpan']"

#create tab ringkasan
input_nama_lelang="xpath://input[@name='auctionName' and @placeholder='Ketik Nama Lelang']"
input_objek_lelang="xpath://input[@value='Bike']"
switch_objek_lelang="xpath://button[contains(., 'Electronic')]"
input_jenis_lelang="xpath://span[normalize-space()='Time Auction Custom']"
switch_jenis_lelang="xpath://div[text()='Time Auction Normal']"
input_cabang="xpath://span[normalize-space()='Pilih Cabang Lelang']"
input_admin_fee="xpath://input[@name='adminFeeBidder' and @placeholder='Ketik Admin Fee Bidder']"
input_harga_nipl="xpath://input[@name='nipl' and @placeholder='Ketik Harga NIPL']"
input_tanggal_mulai="xpath://input[@type='date' and @placeholder='Ketik Tanggal Mulai Lelang']"
input_waktu_mulai="xpath://input[@type='time' and @placeholder='Ketik Waktu Mulai Lelang']"
input_tanggal_selesai="xpath://input[@type='date' and @placeholder='Ketik Tanggal Selesai Lelang']"
input_waktu_selesai="xpath://input[@type='time' and @placeholder='Ketik Waktu Selesai Lelang']"
input_durasi="xpath://div[@id='add-form-modal']//div//div//div[contains(@class,'text-label')]//div[contains(@name,'content-section-0')]//div//input[contains(@name,'lotDuration')]"
input_waktu_tambahan="xpath://input[@name='additionalTime' and @placeholder='MMM.SS']"
input_kelipatan="xpath://input[@type='text' and @placeholder='Ketik Kelipatan Harga Bid']"
input_tanggal_wanpes="xpath://input[@type='date' and @placeholder='Ketik Tanggal Wanpres']"
input_waktu_wanpes="xpath://input[@type='time' and @placeholder='Ketik Waktu Wanpres']"

#create tab objek lelang
tab_objek_lelang="xpath://button[text()='Objek Lelang']"
tambah_objek_lelang="xpath:(//button[text()='Tambah'])[1]"
search_objek_lelang="xpath:(//input[@id='searchTable' and @placeholder='Search'])[4]"
pilih_objek_lelang="xpath:(//input[@type='checkbox'])[15]"
input_lot="xpath://input[@type='number' and @placeholder='0']"
tambahkan_objek_lelang="xpath:(//button[text()='Simpan'])[4]"
admin_fee_per_objek="xpath:(//input[@type='text' and @placeholder='0'])[2]"

#create tab bidder
tab_bidder="xpath://button[text()='Bidder']"
tambah_bidder="xpath:(//button[text()='Tambah'])[2]"
cari_bidder="xpath:(//input[@placeholder='Search'])[4]"
pilih_bidder="xpath:(//input[@type='checkbox'])[26]"
tambahkan_bidder="xpath:(//button[text()='Simpan'])[4]"

#create tab bidder group
tambah_group="xpath://button[normalize-space(text())='Group']"
pilih_kode_group="xpath://span[normalize-space(text())='Pilih Kode Group']"
click_kode_group="xpath://div[normalize-space(text())='ASL Lelang Laptop']"
# pilih_nama_group="xpath://span[normalize-space(text())='Pilih Nama Group']"
# click_nama_group="xpath://div[normalize-space(text())='Group Test']"
tambahkan_group="xpath:(//button[normalize-space(text())='Simpan'])[4]"


#value test data List Lelang
#create ringkasan
nama_lelang="Automation"
cabang="xpath://div[text()='Balikpapan']"
admin_fee="100000"
harga_nipl="1000000"
input_tanggal_mulai="xpath://input[@type='date' and @placeholder='Ketik Tanggal Mulai Lelang']"
waktu_mulai_lelang="10:00"
waktu_selesai_lelang="20:00"
durasi_perslot="10:00"
waktu_tambahan="09:00"
kelipatan_harga_bid="50000"
waktu_wanpres="12:00"
admin_fee_per_objek="500000"

#create tab bidder
bidder="00000005"

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