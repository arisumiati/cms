#Filter Lelang
btn_filter="xpath=//button[@data-slot='popover-trigger' and contains(., 'Filter')]"
filter_status_aktif_trigger = "xpath=//label[contains(text(),'Status Aktif')]/following-sibling::div//span[text()='keyboard_arrow_down']"
filter_status_aktif_option  = "xpath=//div[@role='dialog' and @data-state='open']//button[.//span[text()='Aktif']]"
filter_status_lelang_trigger = "xpath=//div[@role='dialog']//*[text()='Status Lelang']/following::div[@type='button'][1]"
filter_status_lelang_option  = "xpath=//div[@role='dialog' and @data-state='open']//button[.//span[text()='Lelang belum Dimulai']]"
filter_objek_lelang_trigger = "xpath=//div[@role='dialog']//*[text()='Objek Lelang']/following::div[@type='button'][1]"
filter_objek_lelang_option  = "xpath=//div[@role='dialog' and @data-state='open']//button[.//span[text()='Electronic']]"
filter_cabang_trigger = "xpath=//div[@role='dialog']//*[text()='Cabang']/following::div[@type='button'][1]"
filter_cabang_option  = "xpath=//div[@role='dialog' and @data-state='open']//button[.//span[text()='Balikpapan']]"
filter_tipe_lelang_trigger = "xpath=//div[@role='dialog']//*[text()='Tipe Lelang']/following::div[@type='button'][1]"
filter_tipe_lelang_option  = "xpath=//div[@role='dialog' and @data-state='open']//button[.//span[text()='Time Auction Normal']]"
filter_nama_lelang_input = "xpath=//input[contains(@placeholder, 'Nama Lelang')]"
filter_lelang_id_input = "xpath=//div[@role='dialog']//input[@placeholder='Ketik Lelang ID']"
filter_waktu_mulai_input ="xpath=//div[@role='dialog']//input[@type='datetime-local']"
filter_waktu_wanpres_input="//input[@type='datetime-local' and @placeholder='Ketik Waktu Wanpres Lelang']"
filter_btn_hapus = "xpath=//div[@role='dialog']//button[.//span[text()='Hapus']]"
filter_btn_tampilkan = "xpath=//button[contains(., 'Tampilkan')]"

nama_filter_lelang="Testing Lelang"
nama_filter_lelang_partial="Honda"
Invalid_filter_lelang_id="INVALID999"
karakter_spesial_namaLelang="<script>alert(1)</script>"

waktu_mulai_tanggal = "07282026"
waktu_mulai_jam = "0500PM"

waktu_wanpres_tanggal="07292026"
waktu_wanpres_mulai="1100PM"

#melakukan filter search berdasarkan lelang ID
filter_lelangID="00004193"