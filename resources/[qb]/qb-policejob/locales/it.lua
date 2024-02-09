local Translations = {
    error = {
        license_already = 'Il giocatore ha già una licenza',
        error_license = 'Il giocatore non ha quella licenza',
        no_camera = 'La telecamera non esiste',
        blood_not_cleared = 'Sangue NON pulito',
        bullet_casing_not_removed = 'Traccie di Proiettile NON rimosse',
        none_nearby = 'Nessuno vicino!',
        canceled = 'Cancellato.',
        time_higher = 'Il tempo deve essere maggiore di 0',
        amount_higher = 'La quantità deve essere maggiore di 0',
        vehicle_cuff = 'Non puoi arrestare qualcuno in un veicolo',
        no_cuff = 'Non hai le manette con te',
        no_impound = 'Non ci sono veicoli sequestrati',
        no_spikestripe = 'Non puoi piazzare più strisce chiodate',
        error_license_type = 'Tipo di licenza non valida',
        rank_license = 'Non sei abbastanza alto in grado per dare una licenza',
        revoked_license = 'Ti è stata rimossa una licenza',
        rank_revoke = 'Non sei abbastanza alto in grado per rimuovere una licenza',
        on_duty_police_only = 'Solo per polizia in servizio',
        vehicle_not_flag = 'Veicolo non segnalato',
        not_towdriver = 'Non un guidatore di carro attrezzi',
        not_lawyer = 'La persona non è un avvocato',
        no_anklet = 'Questa persona non ha una cavigliera.',
        have_evidence_bag = 'Devi avere una busta per le prove vuota con te',
        no_driver_license = 'Nessun licenza di guida',
        not_cuffed_dead = 'Il cittadino non è arrestato o morto',
        fine_yourself = '???',
        not_online = "???"
    },
    success = {
        uncuffed = 'Sei stato smanettato',
        granted_license = 'Ti hanno concesso una licenza',
        grant_license = 'Hai concesso una licenza',
        revoke_license = 'Hai ritirato una licenza',
        tow_paid = 'Hai pagato $500',
        blood_clear = 'Sangue Pulito',
        bullet_casing_removed = 'Tracce di Proiettile rimosse...',
        anklet_taken_off = 'La tua cavigliera è stata rimossa.',
        took_anklet_from = 'Hai tolto a %{firstname} %{lastname} la cavigliera',
        put_anklet = 'Hai messo su una cavigliera.',
        put_anklet_on = 'Hai messo una cavigliera su %{firstname} %{lastname}',
        vehicle_flagged = 'Veicolo %{plate} segnalato per %{reason}',
        impound_vehicle_removed = 'Veicolo dissequestrato!',
    },
    info = {
        mr = 'Sr.',
        mrs = 'Sr.ina',
        impound_price = 'Prezzo che il giocatore deve pagare per dissequestrare il veicolo (può essere 0)',
        plate_number = 'Numero Targa',
        flag_reason = 'Motivo per segnalare il veicolo',
        camera_id = 'Camera ID',
        callsign_name = 'Nome del tuo soprannome',
        poobject_object = 'Tipo di oggetto da spawnare o \'delete\' per eliminare',
        player_id = 'ID del giocatore',
        citizen_id = 'ID Cittadino del giocatore',
        dna_sample = 'Campione di DNA',
        jail_time = 'Tempo che deve restare in prigione',
        jail_time_no = 'Il tempo di detenzione deve essere maggiore di 0',
        license_type = 'Tipo di licenza (driver/weapon)',
        ankle_location = 'Posizione Cavigliera',
        cuff = 'Sei ammanettato!',
        cuffed_walk = 'Sei ammanettato, ma puoi camminare.',
        vehicle_flagged = 'Il veicolo %{vehicle} è segnalato per: %{reason}',
        unflag_vehicle = 'Il veicolo %{vehicle} non è segnalato',
        tow_driver_paid = 'Hai pagato il carro attrezzi',
        paid_lawyer = 'Hai pagato un avvocato',
        vehicle_taken_depot = 'Veicolo preso dal deposito per $%{price}',
        vehicle_seized = 'Veicolo sequestrato',
        stolen_money = 'Hai rubato $%{stolen}',
        cash_robbed = 'Sei stato derubato di $%{money}',
        driving_license_confiscated = 'La tua licenza di guida è stata confiscata',
        cash_confiscated = 'Il tuo denaro è stato confiscato',
        being_searched = 'Ti stanno perquisendo',
        cash_found = 'Trovati $%{cash} sul civile',
        sent_jail_for = 'Hai mandato la persona in prigione per %{time} mesi',
        fine_received = 'Hai ricevuto una multa di $%{fine}',
        blip_text = 'Allerta Polizia - %{text}',
        jail_time_input = 'Tempo Carcere',
        submit = 'Invia',
        time_months = 'Tempo in Mesi',
        bill = 'Fattura',
        amount = 'Quantità',
        police_plate = 'LSPD', --Should only be 4 characters long
        vehicle_info = 'Motore: %{value} % | Carburante: %{value2} %',
        evidence_stash = 'Magazzino Prove | %{value}',
        slot = 'Slot no. (1,2,3)',
        current_evidence = '%{value} | Cassetto %{value2}',
        on_duty = '[E~s~] - Vai in servizio',
        off_duty = '[~r~E~s~] - Vai fuori servizio',
        onoff_duty = 'Entra~s~/~r~Fuori~s~ Servizio',
        stash = 'Magazzino %{value}',
        delete_spike = '[~r~E~s~] Rimuovi Strice Chiodate',
        close_camera = 'Chiudi Camera',
        bullet_casing = '[G~s~] Traccia di Proiettile %{value}',
        casing = 'Traccia di proiettile',
        blood = 'Sangue',
        blood_text = '[G~s~] Sangue %{value}',
        fingerprint_text = '[G~s~] Impronta',
        fingerprint = 'Impronta',
        store_heli = '[E~s~] Deposita Elicottero',
        take_heli = '[E~s~] Prendi Elicottero',
        impound_veh = '[E~s~] - Sequestra Veicolo',
        store_veh = '[E~s~] - Deposita Veicolo',
        armory = 'Armeria',
        enter_armory = '[E~s~] Armeria',
        finger_scan = 'Scansione Impronte Digitali.',
        scan_fingerprint = '[E~s~] Scansiona Impronta',
        trash = 'Cestino',
        trash_enter = '[E~s~] Cestino',
        stash_enter = '[E~s~] Entra Armadietto',
        target_location = 'La posizione di ${firstname} ${lastname} è marcata sulla mappa',
        anklet_location = 'Posizione cavigliera',
        new_call = 'Nuova chiamata',
        fine_issued = '???',
        received_fine = '???'
    },
    evidence = {
        red_hands = 'Mani Rosse',
        wide_pupils = 'Pupille Dilatate',
        red_eyes = 'Occhi Rossi',
        weed_smell = 'Odore Di Erba',
        gunpowder = 'Polvere Da Sparo Nei Vestiti',
        chemicals = 'Odora Di Chimico',
        heavy_breathing = 'Respiro Affannato',
        sweat = 'Suda Un Sacco',
        handbleed = 'Sangue Sulle Mani',
        confused = 'Confuso',
        alcohol = 'Odora Come Alcool',
        heavy_alcohol = 'Odore Molto Simile All\'Alcool',
        agitated = 'Agitato - Segno Di Uso Di Met',
        serial_not_visible = 'Numero seriale non visibile...',
    },
    menu = {
        garage_title = 'Veicoli Polizia',
        close = '⬅ Chiudi Menu',
        impound = 'Veicoli Sequestrati',
        pol_impound = 'Sequestro Polizia',
        pol_garage = 'Garage Polizia',
        pol_armory = 'Armeria Polizia',
    },
    email = {
        sender = 'Agenzia Giudiziaria Centrale',
        subject = 'Collezzione Debiti',
        message = 'Caro %{value}. %{value2}, <br /><br />L\'Agenzia Giudiziaria Centrale (AGC) ha addebitato le multe che hai ricevuto dalla polizia.<br />Sono stati ritirati <strong>$%{value3}</strong> dal tuo account.<br /><br />Saluti',
    },
    commands = {
        place_spike = 'Piazza strisce chiodate (Solo Polizia)',
        license_grant = 'Dai licenze a qualcuno',
        license_revoke = 'Ritira licenza a qualcuno',
        place_object = 'Piazza/Elimina un oggetto (Solo Polizia)',
        cuff_player = 'Arresta giocatore (Solo Polizia)',
        escort = 'Scorta giocatore',
        callsign = 'Datti un soprannome',
        clear_casign = 'Pulisci area dalle prove (Solo Polizia)',
        jail_player = 'Arresta giocatore (Solo Polizia)',
        unjail_player = 'Scarcera giocatore (Solo Polizia)',
        clearblood = 'Pulisci area dal sangue (Solo Polizia)',
        seizecash = 'Sequestra denaro (Solo Polizia)',
        softcuff = 'Arresto morbido (Solo Polizia)',
        camera = 'Guarda telecamere di sicurezza (Solo Polizia)',
        flagplate = 'Segnala una targa (Solo Polizia)',
        unflagplate = 'Ripulisci una targa (Solo Polizia)',
        plateinfo = 'Controlla targa (Solo Polizia)',
        depot = 'Sequesta con prezzo (Solo Polizia)',
        impound = 'Sequestra un veicolo (Solo Polizia)',
        paytow = 'Paga carro attrezzi (Solo Polizia)',
        paylawyer = 'Paga avvocato (Solo Polizia, Giudice)',
        anklet = 'Attacca cavigliera (Solo Polizia)',
        ankletlocation = 'Prendi posizione della cavigliera di una persona',
        removeanklet = 'Rimuovi Cavigliera (Solo Polizia)',
        drivinglicense = 'Sequestra licenza di guida (Solo Polizia)',
        takedna = 'Prendi campione di DNA da una persona (sacchetto delle prove vuoto necessario) (Solo Polizia)',
        police_report = 'Report Polizia',
        message_sent = 'Messaggio da inviare',
        civilian_call = 'Chiamata Cittadino',
        emergency_call = 'Nuova chiamata 911',
        fine = '???'
    },
    progressbar = {
        blood_clear = 'Pulendo sangue...',
        bullet_casing = 'Rimuovendo bossolo...',
        robbing = 'Rapinando persona...',
        place_object = 'Piazzando oggetto...',
        remove_object = 'Rimuovendo oggetto...',
    },
}

if GetConvar('qb_locale', 'en') == 'it' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
