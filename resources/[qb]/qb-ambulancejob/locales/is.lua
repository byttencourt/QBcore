local Translations = {
    error = {
        canceled = 'Hætt við',
        bled_out = 'Þér hefur blætt út...',
        impossible = 'Aðgerð ómöguleg...',
        no_player = 'Enginn leikmaður nálægt',
        no_firstaid = 'Þú þarft skyndihjálparbúnað',
        no_bandage = 'Þú þarft sárabindi',
        beds_taken = 'Rúm eru upptekin...',
        possessions_taken = 'Allar eigur þínar hafa verið teknar...',
        not_enough_money = 'Þú átt ekki nægan pening á þér...',
        cant_help = 'Þú getur ekki hjálpað þessari manneskju...',
        not_ems = 'Þú ert ekki EMS eða ekki skráður inn',
        not_online = 'Spilari ekki á netinu'
    },
    success = {
        revived = 'Þú endurlífgaðir mann',
        healthy_player = 'Leikmaður er heilbrigður',
        helped_player = 'Þú hjálpaðir manneskjunni',
        wounds_healed = 'Sár þín hafa verið gróin!',
        being_helped = 'Það er verið að hjálpa þér...'
    },
    info = {
        civ_died = 'borgaralegur lést',
        civ_down = 'borgaralegur Niður',
        civ_call = 'borgaralegur Hringdu',
        self_death = 'Sjálfir eða an NPC',
        wep_unknown = 'Óþekktur',
        respawn_txt = 'ENDURLAGT INN: ~r~%{deathtime}~s~ SEKUNDUR',
        respawn_revive = 'HOLD [~r~E~s~] FOR %{holdtime} SEKUNDUR TIL AÐ RESPAWN FYRIR $~r~%{cost}~s~',
        bleed_out = 'ÞÚ MUN BLÆÐA ÚT INN: ~r~%{time}~s~ SEKUNDUR',
        bleed_out_help = 'ÞÚ MUN BLÆÐA ÚT INN: ~r~%{time}~s~ SEKUNDUR, ÞÉR ER HÆGT AÐ HJÁLP',
        request_help = 'ÝTTU [~rs~] TIL AÐ BEIÐA HJÁLP',
        help_requested = 'STARFSMENN EMS hafa fengið tilkynningu',
        amb_plate = 'AMBU', -- Should only be 4 characters long due to the last 4 being a random 4 digits
        heli_plate = 'LIFE',  -- Should only be 4 characters long due to the last 4 being a random 4 digits
        status = 'Stöðuskoðun',
        is_staus = 'Er %{status}',
        healthy = 'Þú ert alveg heilbrigð aftur!',
        safe = 'Sjúkrahús örugg',
        pb_hospital = 'Pillbox sjúkrahúsið',
        pain_message = 'Þinn %{limb} finnst %{severity}',
        many_places = 'Þú ert með verki víða...',
        bleed_alert = 'Þú ert %{bleedstate}',
        ems_alert = 'EMS viðvörun - %{text}',
        mr = 'Mr.',
        mrs = 'Mrs.',
        dr_needed = 'Vantar lækni á Pillbox sjúkrahúsinu',
        ems_report = 'EMS skýrsla',
        message_sent = 'Skilaboð til að senda',
        check_health = 'Athugaðu heilsu leikmanna',
        heal_player = 'Lækna leikmann',
        revive_player = 'Endurlífga leikmann',
        revive_player_a = 'Endurlífga leikmann eða sjálfan þig (Aðeins stjórnandi)',
        player_id = 'Leikmaður ID (gæti verið tómt)',
        pain_level = 'Stilltu verkjastig þitt eða leikmanns (Aðeins stjórnandi)',
        kill = 'Drepa leikmann eða sjálfan þig (Aðeins stjórnandi)',
        heal_player_a = 'Lækna leikmann eða sjálfan þig (Aðeins stjórnandi)',
    },
    mail = {
        sender = 'Pillbox Hospital',
        subject = 'Sjúkrahúskostnaður',
        message = 'Kæri %{gender} %{lastname}, <br /><br />Hér með færðu tölvupóst með kostnaði við síðustu sjúkrahúsheimsókn.<br />Endanlegur kostnaður er orðinn: <strong>$%{costs}</strong><br /><br />Við óskum þér skjóts bata!'
    },
    states = {
        irritated = 'pirruð',
        quite_painful = 'frekar sárt',
        painful = 'sársaukafullt',
        really_painful = 'virkilega sárt',
        little_bleed = 'blæðir smá...',
        bleed = 'blæðingar...',
        lot_bleed = 'blæðir mikið...',
        big_bleed = 'blæðir mjög mikið...',
    },
    menu = {
        amb_vehicles = 'Sjúkrabílar',
        status = 'Heilsuástand',
        close = '⬅ Lokaðu valmyndinni',
    },
    text = {
        pstash_button = '[E] - Persónulegt geymsla',
        pstash = 'Persónulegt geymsla',
        onduty_button = '[E] - Farðu á vakt',
        offduty_button = '[E] - Farðu af vakt',
        duty = 'Kveikt/slökkt Skylda',
        armory_button = '[E] - Vopnabúr',
        armory = 'Vopnabúr',
        veh_button = '[E] - Grípa / geyma farartæki',
        heli_button = '[E] - Grípa / geyma þyrla',
        elevator_roof = '[E] - Taktu lyftuna upp á þakið',
        elevator_main = '[E] - Taktu lyftuna niður',
        bed_out = '[E] - Til að fara fram úr rúminu..',
        call_doc = '[E] - Hringdu í lækni',
        call = 'Hringdu',
        check_in = '[E] Innritun',
        check = 'Innritun',
        lie_bed = '[E] - Að liggja í rúminu'
    },
    body = {
        head = 'Höfuð',
        neck = 'Háls',
        spine = 'Hrygg',
        upper_body = 'Efri líkami',
        lower_body = 'Neðri líkami',
        left_arm = 'Vinstri armur',
        left_hand = 'Vinstri hönd',
        left_fingers = 'Vinstri fingur',
        left_leg = 'Vinstri fótur',
        left_foot = 'Vinstri fótur',
        right_arm = 'Hægri armur',
        right_hand = 'Hægri hönd',
        right_fingers = 'Hægri fingur',
        right_leg = 'Hægri fótur',
        right_foot = 'Hægri fótur',
    },
    progress = {
        ifaks = 'Að taka ifaks...',
        bandage = 'Að nota sárabindi...',
        painkillers = 'Að taka verkjalyf...',
        revive = 'Endurlífgandi manneskja...',
        healing = 'Græða sár...',
        checking_in = 'Skrá inn...',
    },
    logs = {
        death_log_title = "%{playername} (%{playerid}) er dáinn",
        death_log_message = "%{killername} has killed %{playername} með **%{weaponlabel}** (%{weaponname})",
    }
}

if GetConvar('qb_locale', 'en') == 'is' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
