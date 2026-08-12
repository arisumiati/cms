import os

# Search Edit Balai Lelang
input_search_table ="xpath=//input[@placeholder='Search...']"
val_search_balai_lelang ="Jl. Raya Kebon Jeruk No. 456, Jakarta Barat Updated"
val_search_balailelang_Duplicate ="Jl. Raya Kebon Jeruk No. 123, Jakarta Barat"
btn_action_dropdown ="xpath=//button[@aria-label='Tampilkan aksi lainnya']"
btn_option_edit ="xpath=//div[@role='menuitem'][contains(normalize-space(), 'edit')]"

#edit Balai lelang
input_edit_balai_lelang = "xpath=//input[@name='name' and @placeholder='Ketik Balai Lelang']"
input_edit_cabang_balai_lelang = "xpath=//input[@name='branch' or @placeholder='Ketik Cabang Balai Lelang']"
val_edit_balai_lelang = "JBA Auto"
val_edit_cabang_balai_lelang = "Head Office Updated"
btn_remove_selected_seller = "xpath=//div[@role='group']//button[.//span[normalize-space()='close']]"
Dropdown_seller = "xpath=//div[@role='group' and @aria-haspopup='listbox']"
input_seller = "xpath=//input[@placeholder='Cari..']"
edit_seller_name = "#KuraKura"
textarea_edit_alamat_balai_lelang = "xpath=//textarea[@name='address' and @placeholder='Ketik Alamat Balai Lelang']"
textarea_edit_catatan = "xpath=//textarea[@name='notes' and @placeholder='Ketik Catatan']"
val_edit_alamat_balai_lelang = "Jl. Raya Kebon Jeruk No. 456, Jakarta Barat Updated"
val_edit_catatan = "Catatan pengujian automation testing updated"
chk_lane_car_a_input = "xpath=//p[text()='Lane Car']/following-sibling::div//label[text()='A']/preceding-sibling::input"
chk_lane_car_b_input = "xpath=//p[text()='Lane Car']/following-sibling::div//label[text()='B']/preceding-sibling::input"
btn_remove_tag_lot_car = "xpath=//p[text()='Lane Car']/following-sibling::div//button[@data-testid='remove']"
input_lot_disable_car = "xpath=//p[text()='Lane Car']/following-sibling::div//input[@placeholder='Ketik lot disable']"
val_edit_lot_disable_car = "2"
chk_lane_bike_a_input = "xpath=//p[text()='Lane Bike']/following-sibling::div//label[text()='A']/preceding-sibling::input"
chk_lane_bike_b_input = "xpath=//p[text()='Lane Bike']/following-sibling::div//label[text()='B']/preceding-sibling::input"
btn_remove_tag_lot_bike = "xpath=//p[text()='Lane Bike']/following-sibling::div//button[@data-testid='remove']"
input_lot_disable_bike = "xpath=//p[text()='Lane Bike']/following-sibling::div//input[@placeholder='Ketik lot disable']"
val_edit_lot_disable_bike = "3"
btn_clear_all_lane_car = "xpath=//p[text()='Lane Car']/following-sibling::div//button[normalize-space()='Clear All']"
btn_clear_all_lane_bike = "xpath=//p[text()='Lane Bike']/following-sibling::div//button[normalize-space()='Clear All']"
btn_simpan_modal = "xpath=//button[normalize-space()='Simpan']"
btn_ya_konfirmasi = "xpath=//button[normalize-space()='Ya, Konfirmasi']"
toast_success_update = "xpath=//li[@data-type='success']//div[@data-title and contains(., 'Berhasil update data balai lelang')]"
toast_error_duplicate = "xpath=//li[@data-type='error']//div[@data-title and normalize-space()='Kombinasi nama dan cabang sudah ada!']"


#edit excel
PATH_EXCEL_EDIT_LELANG = os.path.abspath(r"c:\Users\msi80\Downloads\edit lane dan lot.xlsx")
btn_remove_tag_lot_car_excel = "xpath=//p[text()='Lane Car']/following-sibling::div//button[@data-testid='remove']"
input_lot_disable_car_excel = "xpath=//p[text()='Lane Car']/following-sibling::div//input[@placeholder='Ketik lot disable']"
btn_remove_tag_lot_bike_excel = "xpath=//p[text()='Lane Bike']/following-sibling::div//button[@data-testid='remove']"
input_lot_disable_bike_excel = "xpath=//p[text()='Lane Bike']/following-sibling::div//input[@placeholder='Ketik lot disable']"
tpl_chk_lane_car_input_excel = "xpath=//p[text()='Lane Car']/following-sibling::div//label[text()='{}']/preceding-sibling::input"
tpl_chk_lane_bike_input_excel = "xpath=//p[text()='Lane Bike']/following-sibling::div//label[text()='{}']/preceding-sibling::input"