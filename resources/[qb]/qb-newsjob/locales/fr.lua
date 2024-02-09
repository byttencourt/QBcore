local Translations = {
    text = {
        weazle_overlay = "Overlay Weazel ~INPUT_PICKUP~ \nOverlay Film: ~INPUT_INTERACTION_MENU~",
        weazel_news_vehicles = "Vehicules Weazel-News",
        close_menu = "⬅ Fermer Menu",
        weazel_news_helicopters = "Hélicoptère Weazel News",
        store_vehicle = "E - Garer le véhicule",
        vehicles = "E - Véhicules",
        store_helicopters = "E - Garer l'hélicoptère",
        helicopters = "E - Hélicoptères",
        enter = "E - Entrer",
        go_outside = "E - Sortir",
        breaking_news = "BREAKING NEWS",
        title_breaking_news= "",
        bottom_breaking_news= ""
    }
}

if GetConvar('qb_locale', 'en') == 'fr' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
