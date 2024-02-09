local Translations = {
    error = {
        not_authorized = "Yetkili değil",
        lockpick_fail = "Başarısız",
        screwdriverset_not_found = "Tornavida setiniz yok",
        door_not_locked = "Kapı kilitli değil",
        door_not_lockpickable = "Bu kapı maymuncuklanamaz!"
    },
    success = {
        lockpick_success = "Başarılı"
    },
    general = {
        locking = "~r~Kilitleniyor..",
        unlocking = "Açılıyor..",
        locked = "~r~Kilitli",
        unlocked = "Açık",
        locked_button = "[E] - Kilitli",
        unlocked_button = "[E] - Açık"
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
