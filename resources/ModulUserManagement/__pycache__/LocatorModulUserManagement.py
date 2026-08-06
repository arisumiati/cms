#add user
tambah_user = "//button[.//div[normalize-space()='User']]"
input_nama_depan = "//input[@placeholder='Ketik Nama Depan']"
input_nama_belakang = "//input[@placeholder='Ketik Nama Belakang']"
input_email = "//input[@placeholder='Ketik Email']"
input_no_NIK = "//input[@placeholder='Ketik No NIK']"
input_no_HP = "//input[@placeholder='Ketik No Ponsel']"
pilih_role = "//span[normalize-space()='Pilih Nama Role']"

#value input user
value_nama_depan = "User"
value_nama_belakang = "Otomatis"
value_email = "user1@yopmail.com"
value_no_NIK = "1234567890123456"
value_no_HP = "081234567890"
value_role = "//div[@role='option'][normalize-space()='ADMINCSUL']"

#simpan
simpan_user = "//button[normalize-space()='Simpan']"
konfirmasi_ya="//button[normalize-space()='Ya, Simpan']"

#add group
tambah_group = "//button[normalize-space()='Tambah']"
pilih_kategori = "//span[normalize-space()='Pilih Kategori']"
cari_group = "(//input[@placeholder='Search'])[3]"
ceklis_group = "(//input[@type='checkbox'])[1]"
simpan_group = "//button[normalize-space()='Simpan']"

#value input group
value_pilih_kategori = "//div[@role='option'][normalize-space()='Bike']"
value_cari_group = "DEALER-MYSTOCK-3"

#filter
klik_filter="//button[.//span[text()='Filter']]"
filter_status_aktif="//span[text()='Pilih Status Aktif']"
value_filter_status_aktif="//div[@role='option'][normalize-space()='Aktif']"
value_filter_status_tidak_aktif="//div[@role='option'][normalize-space()='Tidak Aktif']"

filter_role="//span[text()='Pilih Role']"
value_filter_role="//div[@role='option'][normalize-space()='ADMINCSUL']"

filter_nama_lengkap="//input[@placeholder='Ketik Nama Lengkap']"
filter_email="//input[@placeholder='Ketik Email']"
filter_group="//input[@placeholder='Ketik Group']"

klik_tampilkan="//button[normalize-space()='Tampilkan']"

#reset filter
hapus_filter="//button[normalize-space()='Hapus']"
pilih_x = "//*[name()='path' and contains(@d,'M242.72 256l100.07')]"

#cari user
input_cari_user="//input[@placeholder='Search']"
cari_by_nama_lengkap="User Otomatis"
cari_by_nik ="3212312312312"
cari_by_no_hp="081234567890"
cari_by_email="sso@mail.com"
cari_by_nama_role="ADMINCSUL"