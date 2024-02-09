local Translations = {
    error = {
        to_far_from_door = 'Está muito longe da campainha',
        nobody_home = 'Não há ninguém em casa..',
        nobody_at_door = 'Ninguém na porta...'
    },
    success = {
        receive_apart = 'Adquiriste um apartamento',
        changed_apart = 'Mudaste-te para este apartamento',
    },
    info = {
        at_the_door = 'Está alguém na porta!',
    },
    text = {
        options = '[E] Menu - Apartamento',
        enter = 'Entrar No Apartamento',
        ring_doorbell = 'Tocar a Campainha',
        logout = 'Sair do Personagem',
        change_outfit = 'Mudar de Roupa',
        open_stash = 'Abrir Baú',
        move_here = 'Mudar Para Cá',
        open_door = 'Abrir Porta',
        leave = 'Sair Do Apartamento',
        close_menu = '⬅ Fechar Menu',
        tennants = 'Moradores',
    },
}

if GetConvar('qb_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
