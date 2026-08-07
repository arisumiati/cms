#add user
tambah_user="xpath=//button[contains(., 'Tambah') and @data-slot='modal-trigger']"
input_nama_depan="xpath=//input[@name='firstname']"
input_nama_belakang="xpath=//input[@name='lastname']"
input_email ="xpath=//input[@name='email' or contains(@placeholder, 'Email')]"
input_no_NIK ="xpath=//input[@name='nik']"
input_no_HP ="xpath=//input[@name='phone' or @name='phone_number' or contains(@placeholder, 'HP') or contains(@placeholder, 'Telp')]"
pilih_role =  "xpath=//input[@value='Pilih Nama Role' or contains(@placeholder, 'Role')]/parent::div | //div[./input[@value='Pilih Nama Role']]"
dropdown_tipe_login = "xpath=//input[@value='Pilih Tipe Login' or contains(@placeholder, 'Tipe Login')]/parent::div | //div[./input[@value='Pilih Tipe Login']]"

#value input user
value_nama_depan ="Tester"
value_nama_belakang ="Otomatis"
value_email = "Tester22@yopmail.com"
value_no_NIK = "1234567890123111"
value_no_HP = "081234567865"
value_HP_prefix = "0217890123"
value_email_invalid="riri"
value_role = "xpath=//div[@role='dialog']//button[.//span[text()='ADMINCSUL']]"

#Edit user
search_user_table = "xpath=//input[@placeholder='Search...' and not(ancestor::div[@role='dialog'])]"
trigger_role_dropdown = "xpath=//div[@role='dialog']//input[@value='ADMINCSUL']/parent::div | //div[@role='dialog']//div[contains(., 'Nama Role')]/following-sibling::div//input"
trigger_tipe_login = "xpath=//div[@role='dialog']//div[label[contains(., 'Tipe Login')]]//div[contains(@class, 'cursor-pointer')] | //div[@role='dialog']//input[@value='Internal']/parent::div"
btn_batal_edit = "xpath=//button[@data-slot='modal-close' and normalize-space(.)='Batal'] | //div[@role='dialog']//button[normalize-space(.)='Batal']"
btn_simpan_edit = "xpath=//div[@role='dialog']//button[normalize-space(.)='Simpan']"
btn_confirm_edit = "xpath=//button[normalize-space(.)='Ya, Konfirmasi']"
btn_delete_item = "xpath=//button[.//span[text()='delete']]"
btn_confirm_delete = "xpath=//button[normalize-space(.)='Ya, Konfirmasi']"
value_search_NIK='212412312312'
btn_action_dropdown = "xpath=//tbody//tr[1]//button[@data-slot='dropdown-menu-trigger' or @aria-label='Tampilkan aksi lainnya']"
btn_menu_edit = "xpath=//div[@role='menuitem' and contains(normalize-space(.), 'edit')]"
value_edit_namaD="User"
value_edit_namaB="Automation"
value_edit_nomor="082121212124"
value_edit_nomor_prefix="0217890123"
value_edit_mail="UserAutomation11@gmail.com"
value_edit_role = "xpath=//button[contains(., 'CEO')] | //span[text()='CEO']"
value_edit_tipe_login = "xpath=//div[@data-radix-popper-content-wrapper]//button[contains(., 'Office 365 JBA')] | //span[text()='Office 365 JBA']"

#simpan
simpan_user ="xpath=//div[@role='dialog' and .//*[contains(text(), 'Tambah User')]]//button[text()='Simpan' or contains(., 'Simpan')]"
konfirmasi_ya="xpath=//button[contains(normalize-space(.), 'Ya, Konfirmasi') or contains(text(), 'Konfirmasi')]"

#add group
tambah_group="xpath=//div[@role='dialog']//button[.//span[text()='add_circle']]"
pilih_kategori="xpath=//div[contains(., 'Pilih Kategori') and (@aria-haspopup='dialog' or @type='button')]"
cari_group="xpath=//div[@role='dialog' and .//*[contains(text(), 'Tambah Customer Ke Group')]]//input[@placeholder='Search...']"
ceklis_group="xpath=//div[@role='dialog' and .//*[contains(text(), 'Tambah Customer Ke Group')]]//thead//th//input[@type='checkbox']"
simpan_group="xpath=//div[@role='dialog' and .//*[contains(text(), 'Tambah Customer Ke Group')]]//button[text()='Simpan' or contains(., 'Simpan')]"
no_seller="00000259"

#notifikasi Tambah Group
toast_create_user_success = "xpath=//li[@data-sonner-toast and contains(., 'Berhasil create data user')]"
error_no_hp_prefix = "xpath=//p[contains(@class, 'text-danger') and contains(., 'Awali dengan') and contains(., '08')]"
error_email_invalid = "xpath=//p[contains(@class, 'text-danger') and contains(., 'Email tidak valid')]" 
toast_success_edit_user = "xpath=//li[@data-sonner-toast and @data-type='success']//div[@data-title and contains(., 'Berhasil update data user')]"
err_msg_prefix_hp = "xpath=//p[contains(@class, 'text-danger') and contains(text(), 'Awali dengan \"08\" atau \"628\"')]"

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