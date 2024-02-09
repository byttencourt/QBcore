local Translations = {
    error = {
        not_authorized = "Sinulla ei ole avaimia!",
        lockpick_fail = "Epäonnistui",
        screwdriverset_not_found = "Sinulla ei ole ruuvimeisseliä!",
        door_not_locked = "Ovi ei ole lukossa",
        door_not_lockpickable = "Ovea ei voi tiirikoida"
    },
    success = {
        lockpick_success = "Onnistui!"
    },
    general = {
        locking = "~r~Lukitaan..",
        unlocking = "Avataan..",
        locked = "~r~Lukittu",
        unlocked = "Auki",
        locked_button = "[E] - Lukittu",
        unlocked_button = "[E] - Avattu"
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
