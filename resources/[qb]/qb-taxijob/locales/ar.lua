local Translations = {
    error = {
        ["already_mission"] = "أنت تقوم بالفعل بمهمة نقل السكان الاصلين",
        ["not_in_taxi"] = "أنت لست في سيارة أجرة",
        ["missing_meter"] = "هذه السيارة لا تحتوي على عداد سيارات الأجرة",
        ["no_vehicle"] = "أنت لست في سيارة",
        ["not_active_meter"] = "عداد سيارة الأجرة غير نشط",
        ["no_meter_sight"] = "لا يوجد عداد سيارات الأجرة في الأفق",
    },
    success = {},
    info = {
        ["person_was_dropped_off"] = "تم إنزال الشخص",
        ["npc_on_gps"] = "تم الاشاة لك في الخريطة عن المكان",
        ["go_to_location"] = "إحضار إلى الموقع المحدد",
        ["vehicle_parking"] = "[E] - ﺕﺍﺭﺎﻴﺴﻟﺍ ﺝﺍﺮﻏ",
        ["job_vehicles"] = "[E] - ﻞﻤﻌﻟﺍ ﺝﺍﺮﻏ",
        ["drop_off_npc"] = "[E] - ﺎﻨﻠﺻﻭ",
        ["call_npc"] = "[E] - ﺐﻛﺭﺍ",
        ["blip_name"] = "ﻲﺴﻛﺎﺘﻟﺍ ﺰﻛﺮﻣ",
        ["taxi_label_1"] = "تاكسي",
    },
    menu = {
        ["taxi_menu_header"] = "سيارات التاكسي",
        ["close_menu"] = "⬅ إغلاق",
    }
}

if GetConvar('qb_locale', 'en') == 'ar' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
