tambah_lokasi_unit ="xpath=//button[@data-slot='modal-trigger' and contains(., 'Tambah')]"
input_kode_lokasi_unit ="xpath=//input[@name='poolCode']"
input_lokasi_unit ="xpath=//input[@name='poolName']"
input_nama_pic ="xpath=//input[@name='picName']"
input_nomor_pic ="xpath=//input[@name='picPhone']"
input_alamat   ="xpath=//input[@name='poolAddress']"
input_lattitude ="xpath=//input[@name='latitude']"
input_longitude ="xpath=//input[@name='longitude']"
input_catatan ="xpath=//input[@name='notes']"
simpan_lokasi_unit ="xpath=//button[@data-slot='button' and text()='Simpan']"
konfirmasi_ya ="xpath=//button[text()='Ya, Konfirmasi']"
toast_success_create_lokasi = "xpath=//li[@data-type='success']//div[contains(text(), 'Berhasil create data lokasi unit')]"
msg_error_wajib_diisi ="xpath=//p[contains(@class, 'text-danger') and text()='Wajib diisi']"
toast_error_duplicate_pool_code = "xpath=//li[@data-type='error']//div[contains(text(), 'Pool Code already exists')]"
err_msg_kode_lokasi ="xpath=//input[@name='poolCode']/following::p[text()='Wajib diisi'][1]"
err_msg_lokasi_unit ="xpath=//input[@name='poolName']/following::p[text()='Wajib diisi'][1]"
err_msg_alamat ="xpath=//input[@name='poolAddress']/following::p[text()='Wajib diisi'][1]"
err_msg_invalid_nomor_pic = "xpath=//input[@name='picPhone']/following::p[contains(text(), 'Awali dengan \"08\" atau \"628\"')][1]"


value_kode_lokasi_unit = "LC-001"
value_lokasi_unit = "Pool Jakarta "
value_nama_pic = "Budi "
value_nomor_pic = "08123457889"
value_alamat = "Jl. Grogol No. 12"
value_lattitude = "-6.2087"
value_longitude = "106.8455"
value_catatan = " Lokasi penyimpanan"
nomor_pic_invalid="081234567890123 "


klik_filter = "//button[normalize-space()='Filter']"
filter_kode_lokasi_unit = "//input[@placeholder='Ketik Kode Lokasi Unit']"
filter_lokasi_unit = "//input[@placeholder='Ketik Lokasi Unit']"
filter_nama_pic = "//input[@placeholder='Ketik Nama PIC']"
filter_nomor_pic = "//input[@placeholder='Ketik Nomor PIC']"
klik_tampilkan = "//button[normalize-space()='Tampilkan']"

value_filter_kode_lokasi_unit = "LOC001"
value_filter_lokasi_unit = "Gudang Pusat"
value_filter_nama_pic = "Budi Santoso"
value_filter_nomor_pic = "081234567890"

klik_hapus = "//button[normalize-space()='Hapus']"

input_search_lokasi_unit = "//input[@id='searchTable']"


