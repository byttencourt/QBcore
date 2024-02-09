local Translations = {
    error = {
        not_enough = "Vous n'avez pas assez d'argent..",
        no_slots = "Il n'y a plus de slot libre",
        occured = "Une erreur est survenue",
        have_keys = "Cette personne a déjà les clefs",
        p_have_keys = "%{value} a déja les clefs",
        not_owner = "Vous ne possedez pas le lieu",
        not_online = "Cette personne n'est pas présente",
        no_money = "Il n'y a pas d'argent dans le stockage",
        incorrect_code = "Ce code n'est pas correct",
        up_to_6 = "Vous ne pouvez seulement donner accès qu'à 6 personnes!",
        cancelled = "Achat annulé",
    },
    success = {
        added = "%{value} a été ajoutée a ce lieu!",
    },
    info = {
        enter = "Entrer Traphouse",
        give_keys = "Donner les clefs de la Traphouse",
        pincode = "Code Pin Traphouse: %{value}",
        taking_over = "Récupération",
        pin_code_see = "~b~G - Voir Code Pin",
        pin_code = "Code Pin: %{value}",
        multikeys = "~b~/multikeys [id] - Pour donner les clefs",
        take_cash = "~b~E - Prendre l'argent ($%{value})",
        inventory = "~b~H - Voir inventaire",
        take_over = "~b~E - Récupération ($5000)",
        leave = "~b~E - Quitter",
    },
    targetInfo = {
        options = "Options de la Traphouse",
        enter = "Entrer dans la Traphouse",
        give_keys = "Donner les clés de la Traphouse",
        pincode = "Code PIN : %{value}",
        taking_over = "Reprise en cours",
        pin_code_see = "Voir le code PIN",
        pin_code = "Code PIN: %{value}",
        multikeys = "Donner clé (use /multikey [id])",
        take_cash = "Prendre l'argent (%{value}$)",
        inventory = "Voir l'inventaire",
        take_over = "Reprend la Traphouse (5000$)",
        leave = "Quitter la Traphouse",
        close_menu = "⬅ Fermer le Menu",
    }
}

if GetConvar('qb_locale', 'en') == 'fr' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
