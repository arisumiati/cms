#Filter Seller
btn_all_filter = "xpath=//button[contains(., 'All Filter') and @aria-haspopup='dialog']"
value_status_filter = "Aktif"
value_seller="test 4"
ddl_status_filter_trigger = "xpath=//div[@role='dialog' or contains(@id, 'radix')]//div[@aria-haspopup='listbox' and .//span[text()='Status']]"
opt_status_filter_item = f"xpath=//div[@role='dialog' or contains(@id, 'radix')]//div[@role='option' and .//span[normalize-space()='{value_status_filter}']]"
ddl_Seller_filter_trigger = "xpath=//div[@role='dialog' or contains(@id, 'radix')]//div[@aria-haspopup='listbox' and .//span[text()='Jenis Seller']]"
opt_seller_filter_item = f"xpath=//div[@role='dialog' or contains(@id, 'radix')]//div[@role='option' and .//span[normalize-space()='{value_seller}']]"
btn_apply_filter = "xpath=//button[@data-slot='popover-close' and normalize-space()='Apply']"
btn_apply_clear = "xpath=//button[@data-slot='popover-close' and normalize-space()='Clear']"

#search filter
input_search = "xpath=//input[@placeholder='Cari']"
value_search="Dave"
value_not="Halo"