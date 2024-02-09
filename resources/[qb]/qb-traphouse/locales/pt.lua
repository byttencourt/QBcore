local Translations = {
    error = {
        not_enough = "Não tens dinheiro suficiente..",
        no_slots = "Não há vagas disponíveis",
        occured = "Ocorreu um erro",
        have_keys = "Esta pessoa já tem as chaves",
        p_have_keys = "%{value} Esta pessoa já tem as chaves",
        not_owner = "Não possui uma Trap House ou não é o proprietário",
        not_online = "Esta pessoa não está na cidade",
        no_money = "Não há dinheiro no armário",
        incorrect_code = "Este código está incorreto",
        up_to_6 = "Pode conceder acesso a até 6 pessoas à Trap House!",
        cancelled = "Aquisições canceladas",
    },
    success = {
        added = "%{value} Foi adicionado à Trap House!!",
    },
    info = {
        enter = "Entrar na Trap House",
        give_keys = "Dar as chaves da Trap House",
        pincode = "Trap House Pincode: %{value}",
        taking_over = "Adiquirindo...",
        pin_code_see = "~b~G - Ver Pincode",
        pin_code = "Pincode: %{value}",
        multikeys = "~b~/multikeys [id] - para dar chaves",
        take_cash = "~b~E - Tirar Dinheiro (€%{value})",
        inventory = "~b~H - Ver Inventário",
        take_over = "~b~E - Adquirir (€5000)",
        leave = "~b~E - Sair Trap House",
    },
    targetInfo = {
        options = "Trap House - Opções",
        enter = "Entrar Trap House",
        give_keys = "Dar as chaves da Trap House",
        pincode = "Trap House Pincode %{value}",
        taking_over = "Adiquirindo...",
        pin_code_see = "Ver Pincode",
        pin_code = "Pincode: %{value}",
        multikeys = "Dar Chaves (usa /multikey [id])",
        take_cash = "Tirar dinheiro (€%{value})",
        inventory = "Ver Inventário",
        take_over = "Adquirir (€5000)",
        leave = "Sair Trap House",
        close_menu = "⬅ Fechar Menu",
    }
}

if GetConvar('qb_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
