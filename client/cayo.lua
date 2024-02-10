local islandCoords = vector3(4840.571, -5174.425, 2.0)
local nearIsland = false
local isCayoMinimapLoaded = false

CreateThread(function()
    RequestIpl("h4_mph4_terrain_occ_09")
    RequestIpl("h4_mph4_terrain_occ_06")
    RequestIpl("h4_mph4_terrain_occ_05")
    RequestIpl("h4_mph4_terrain_occ_01")
    RequestIpl("h4_mph4_terrain_occ_00")
    RequestIpl("h4_mph4_terrain_occ_08")
    RequestIpl("h4_mph4_terrain_occ_04")
    RequestIpl("h4_mph4_terrain_occ_07")
    RequestIpl("h4_mph4_terrain_occ_03")
    RequestIpl("h4_mph4_terrain_occ_02")
    RequestIpl("h4_islandx_terrain_04")
    RequestIpl("h4_islandx_terrain_05_slod")
    RequestIpl("h4_islandx_terrain_props_05_d_slod")
    RequestIpl("h4_islandx_terrain_02")
    RequestIpl("h4_islandx_terrain_props_05_a_lod")
    RequestIpl("h4_islandx_terrain_props_05_c_lod")
    RequestIpl("h4_islandx_terrain_01")
    RequestIpl("h4_mph4_terrain_04")
    RequestIpl("h4_mph4_terrain_06")
    RequestIpl("h4_islandx_terrain_04_lod")
    RequestIpl("h4_islandx_terrain_03_lod")
    RequestIpl("h4_islandx_terrain_props_06_a")
    RequestIpl("h4_islandx_terrain_props_06_a_slod")
    RequestIpl("h4_islandx_terrain_props_05_f_lod")
    RequestIpl("h4_islandx_terrain_props_06_b")
    RequestIpl("h4_islandx_terrain_props_05_b_lod")
    RequestIpl("h4_mph4_terrain_lod")
    RequestIpl("h4_islandx_terrain_props_05_e_lod")
    RequestIpl("h4_islandx_terrain_05_lod")
    RequestIpl("h4_mph4_terrain_02")
    RequestIpl("h4_islandx_terrain_props_05_a")
    RequestIpl("h4_mph4_terrain_01_long_0")
    RequestIpl("h4_islandx_terrain_03")
    RequestIpl("h4_islandx_terrain_props_06_b_slod")
    RequestIpl("h4_islandx_terrain_01_slod")
    RequestIpl("h4_islandx_terrain_04_slod")
    RequestIpl("h4_islandx_terrain_props_05_d_lod")
    RequestIpl("h4_islandx_terrain_props_05_f_slod")
    RequestIpl("h4_islandx_terrain_props_05_c")
    RequestIpl("h4_islandx_terrain_02_lod")
    RequestIpl("h4_islandx_terrain_06_slod")
    RequestIpl("h4_islandx_terrain_props_06_c_slod")
    RequestIpl("h4_islandx_terrain_props_06_c")
    RequestIpl("h4_islandx_terrain_01_lod")
    RequestIpl("h4_mph4_terrain_06_strm_0")
    RequestIpl("h4_islandx_terrain_05")
    RequestIpl("h4_islandx_terrain_props_05_e_slod")
    RequestIpl("h4_islandx_terrain_props_06_c_lod")
    RequestIpl("h4_mph4_terrain_03")
    RequestIpl("h4_islandx_terrain_props_05_f")
    RequestIpl("h4_islandx_terrain_06_lod")
    RequestIpl("h4_mph4_terrain_01")
    RequestIpl("h4_islandx_terrain_06")
    RequestIpl("h4_islandx_terrain_props_06_a_lod")
    RequestIpl("h4_islandx_terrain_props_06_b_lod")
    RequestIpl("h4_islandx_terrain_props_05_b")
    RequestIpl("h4_islandx_terrain_02_slod")
    RequestIpl("h4_islandx_terrain_props_05_e")
    RequestIpl("h4_islandx_terrain_props_05_d")
    RequestIpl("h4_mph4_terrain_05")
    RequestIpl("h4_mph4_terrain_02_grass_2")
    RequestIpl("h4_mph4_terrain_01_grass_1")
    RequestIpl("h4_mph4_terrain_05_grass_0")
    RequestIpl("h4_mph4_terrain_01_grass_0")
    RequestIpl("h4_mph4_terrain_02_grass_1")
    RequestIpl("h4_mph4_terrain_02_grass_0")
    RequestIpl("h4_mph4_terrain_02_grass_3")
    RequestIpl("h4_mph4_terrain_04_grass_0")
    RequestIpl("h4_mph4_terrain_06_grass_0")
    RequestIpl("h4_mph4_terrain_04_grass_1")
    RequestIpl("island_distantlights")
    RequestIpl("island_lodlights")
    RequestIpl("h4_clubposter_palmstraxx")
    RequestIpl("h4_clubposter_moodymann")
    RequestIpl("h4_clubposter_keinemusik")
    RequestIpl("h4_ch2_mansion_final")
    RequestIpl("h4_mph4_island_placement")
    RequestIpl("h4_islandx_mansion_vault")
    RequestIpl("h4_islandx_checkpoint_props")
    RequestIpl("h4_islandairstrip_hangar_props_slod")
    RequestIpl("h4_se_ipl_01_lod")
    RequestIpl("h4_ne_ipl_00_slod")
    RequestIpl("h4_se_ipl_06_slod")
    RequestIpl("h4_ne_ipl_00")
    RequestIpl("h4_se_ipl_02")
    RequestIpl("h4_islandx_barrack_props_lod")
    RequestIpl("h4_se_ipl_09_lod")
    RequestIpl("h4_ne_ipl_05")
    RequestIpl("h4_mph4_island_se_placement")
    RequestIpl("h4_ne_ipl_09")
    RequestIpl("h4_islandx_mansion_props_slod")
    RequestIpl("h4_se_ipl_09")
    RequestIpl("h4_mph4_mansion_b")
    RequestIpl("h4_islandairstrip_hangar_props_lod")
    RequestIpl("h4_islandx_mansion_entrance_fence")
    RequestIpl("h4_nw_ipl_09")
    RequestIpl("h4_nw_ipl_02_lod")
    RequestIpl("h4_ne_ipl_09_slod")
    RequestIpl("h4_sw_ipl_02")
    RequestIpl("h4_islandx_checkpoint")
    RequestIpl("h4_islandxdock_water_hatch")
    RequestIpl("h4_nw_ipl_04_lod")
    RequestIpl("h4_islandx_maindock_props")
    RequestIpl("h4_beach")
    RequestIpl("h4_islandx_mansion_lockup_03_lod")
    RequestIpl("h4_ne_ipl_04_slod")
    RequestIpl("h4_mph4_island_nw_placement")
    RequestIpl("h4_ne_ipl_08_slod")
    RequestIpl("h4_nw_ipl_09_lod")
    RequestIpl("h4_se_ipl_08_lod")
    RequestIpl("h4_islandx_maindock_props_lod")
    RequestIpl("h4_se_ipl_03")
    RequestIpl("h4_sw_ipl_02_slod")
    RequestIpl("h4_nw_ipl_00")
    RequestIpl("h4_islandx_mansion_b_side_fence")
    RequestIpl("h4_ne_ipl_01_lod")
    RequestIpl("h4_se_ipl_06_lod")
    RequestIpl("h4_ne_ipl_03")
    RequestIpl("h4_islandx_maindock")
    RequestIpl("h4_se_ipl_01")
    RequestIpl("h4_sw_ipl_07")
    RequestIpl("h4_islandx_maindock_props_2")
    RequestIpl("h4_islandxtower_veg")
    RequestIpl("h4_mph4_island_sw_placement")
    RequestIpl("h4_se_ipl_01_slod")
    RequestIpl("h4_mph4_wtowers")
    RequestIpl("h4_se_ipl_02_lod")
    RequestIpl("h4_islandx_mansion")
    RequestIpl("h4_nw_ipl_04")
    RequestIpl("h4_mph4_airstrip_interior_0_airstrip_hanger")
    RequestIpl("h4_islandx_mansion_lockup_01")
    RequestIpl("h4_islandx_barrack_props")
    RequestIpl("h4_nw_ipl_07_lod")
    RequestIpl("h4_nw_ipl_00_slod")
    RequestIpl("h4_sw_ipl_08_lod")
    RequestIpl("h4_islandxdock_props_slod")
    RequestIpl("h4_islandx_mansion_lockup_02")
    RequestIpl("h4_islandx_mansion_slod")
    RequestIpl("h4_sw_ipl_07_lod")
    RequestIpl("h4_sw_ipl_02_lod")
    RequestIpl("h4_se_ipl_04_slod")
    RequestIpl("h4_islandx_checkpoint_props_lod")
    RequestIpl("h4_se_ipl_04")
    RequestIpl("h4_se_ipl_07")
    RequestIpl("h4_mph4_mansion_b_strm_0")
    RequestIpl("h4_nw_ipl_09_slod")
    RequestIpl("h4_se_ipl_07_lod")
    RequestIpl("h4_islandx_maindock_slod")
    RequestIpl("h4_islandx_mansion_lod")
    RequestIpl("h4_sw_ipl_05_lod")
    RequestIpl("h4_nw_ipl_08")
    RequestIpl("h4_islandairstrip_slod")
    RequestIpl("h4_nw_ipl_07")
    RequestIpl("h4_islandairstrip_propsb_lod")
    RequestIpl("h4_islandx_checkpoint_props_slod")
    RequestIpl("h4_aa_guns_lod")
    RequestIpl("h4_sw_ipl_06")
    RequestIpl("h4_islandx_maindock_props_2_slod")
    RequestIpl("h4_islandx_mansion_office")
    RequestIpl("h4_islandx_maindock_lod")
    RequestIpl("h4_mph4_dock")
    RequestIpl("h4_islandairstrip_propsb")
    RequestIpl("h4_islandx_mansion_lockup_03")
    RequestIpl("h4_nw_ipl_01_lod")
    RequestIpl("h4_se_ipl_05_slod")
    RequestIpl("h4_sw_ipl_01_lod")
    RequestIpl("h4_nw_ipl_05")
    RequestIpl("h4_islandxdock_props_2_lod")
    RequestIpl("h4_ne_ipl_04_lod")
    RequestIpl("h4_ne_ipl_01")
    RequestIpl("h4_beach_party_lod")
    RequestIpl("h4_islandx_mansion_lights")
    RequestIpl("h4_sw_ipl_00_lod")
    RequestIpl("h4_islandx_mansion_guardfence")
    RequestIpl("h4_beach_props_party")
    RequestIpl("h4_ne_ipl_03_lod")
    RequestIpl("h4_islandx_mansion_b")
    RequestIpl("h4_beach_bar_props")
    RequestIpl("h4_ne_ipl_04")
    RequestIpl("h4_sw_ipl_08_slod")
    RequestIpl("h4_islandxtower")
    RequestIpl("h4_se_ipl_00_slod")
    RequestIpl("h4_islandx_barrack_hatch")
    RequestIpl("h4_ne_ipl_06_slod")
    RequestIpl("h4_ne_ipl_03_slod")
    RequestIpl("h4_sw_ipl_09_slod")
    RequestIpl("h4_ne_ipl_02_slod")
    RequestIpl("h4_nw_ipl_04_slod")
    RequestIpl("h4_ne_ipl_05_lod")
    RequestIpl("h4_nw_ipl_08_slod")
    RequestIpl("h4_sw_ipl_05_slod")
    RequestIpl("h4_islandx_mansion_b_lod")
    RequestIpl("h4_ne_ipl_08")
    RequestIpl("h4_islandxdock_props")
    RequestIpl("h4_islandairstrip_doorsopen_lod")
    RequestIpl("h4_se_ipl_05_lod")
    RequestIpl("h4_islandxcanal_props_slod")
    RequestIpl("h4_se_ipl_02_slod")
    RequestIpl("h4_nw_ipl_02")
    RequestIpl("h4_ne_ipl_08_lod")
    RequestIpl("h4_sw_ipl_08")
    RequestIpl("h4_islandairstrip")
    RequestIpl("h4_islandairstrip_props_lod")
    RequestIpl("h4_se_ipl_05")
    RequestIpl("h4_ne_ipl_02_lod")
    RequestIpl("h4_islandx_maindock_props_2_lod")
    RequestIpl("h4_sw_ipl_03_slod")
    RequestIpl("h4_ne_ipl_01_slod")
    RequestIpl("h4_beach_props_slod")
    RequestIpl("h4_underwater_gate_closed")
    RequestIpl("h4_ne_ipl_00_lod")
    RequestIpl("h4_islandairstrip_doorsopen")
    RequestIpl("h4_sw_ipl_01_slod")
    RequestIpl("h4_se_ipl_00")
    RequestIpl("h4_se_ipl_06")
    RequestIpl("h4_islandx_mansion_lockup_02_lod")
    RequestIpl("h4_islandxtower_veg_lod")
    RequestIpl("h4_sw_ipl_00")
    RequestIpl("h4_se_ipl_04_lod")
    RequestIpl("h4_nw_ipl_07_slod")
    RequestIpl("h4_islandx_mansion_props_lod")
    RequestIpl("h4_islandairstrip_hangar_props")
    RequestIpl("h4_nw_ipl_06_lod")
    RequestIpl("h4_islandxtower_lod")
    RequestIpl("h4_islandxdock_lod")
    RequestIpl("h4_islandxdock_props_lod")
    RequestIpl("h4_beach_party")
    RequestIpl("h4_nw_ipl_06_slod")
    RequestIpl("h4_nw_ipl_00_lod")
    RequestIpl("h4_ne_ipl_02")
    RequestIpl("h4_islandxdock_slod")
    RequestIpl("h4_se_ipl_07_slod")
    RequestIpl("h4_islandxdock")
    RequestIpl("h4_islandxdock_props_2_slod")
    RequestIpl("h4_islandairstrip_props")
    RequestIpl("h4_sw_ipl_09")
    RequestIpl("h4_ne_ipl_06")
    RequestIpl("h4_se_ipl_03_lod")
    RequestIpl("h4_nw_ipl_03")
    RequestIpl("h4_islandx_mansion_lockup_01_lod")
    RequestIpl("h4_beach_lod")
    RequestIpl("h4_ne_ipl_07_lod")
    RequestIpl("h4_nw_ipl_01")
    RequestIpl("h4_mph4_island_lod")
    RequestIpl("h4_islandx_mansion_office_lod")
    RequestIpl("h4_islandairstrip_lod")
    RequestIpl("h4_beach_props_lod")
    RequestIpl("h4_nw_ipl_05_slod")
    RequestIpl("h4_islandx_checkpoint_lod")
    RequestIpl("h4_nw_ipl_05_lod")
    RequestIpl("h4_nw_ipl_03_slod")
    RequestIpl("h4_nw_ipl_03_lod")
    RequestIpl("h4_sw_ipl_05")
    RequestIpl("h4_mph4_mansion")
    RequestIpl("h4_sw_ipl_03")
    RequestIpl("h4_se_ipl_08_slod")
    RequestIpl("h4_mph4_island_ne_placement")
    RequestIpl("h4_aa_guns")
    RequestIpl("h4_islandairstrip_propsb_slod")
    RequestIpl("h4_sw_ipl_01")
    RequestIpl("h4_mansion_remains_cage")
    RequestIpl("h4_nw_ipl_01_slod")
    RequestIpl("h4_ne_ipl_06_lod")
    RequestIpl("h4_se_ipl_08")
    RequestIpl("h4_sw_ipl_04_slod")
    RequestIpl("h4_sw_ipl_04_lod")
    RequestIpl("h4_mph4_beach")
    RequestIpl("h4_sw_ipl_06_lod")
    RequestIpl("h4_sw_ipl_06_slod")
    RequestIpl("h4_se_ipl_00_lod")
    RequestIpl("h4_ne_ipl_07_slod")
    RequestIpl("h4_mph4_mansion_strm_0")
    RequestIpl("h4_nw_ipl_02_slod")
    RequestIpl("h4_mph4_airstrip")
    RequestIpl("h4_island_padlock_props")
    RequestIpl("h4_islandairstrip_props_slod")
    RequestIpl("h4_nw_ipl_06")
    RequestIpl("h4_sw_ipl_09_lod")
    RequestIpl("h4_islandxcanal_props_lod")
    RequestIpl("h4_ne_ipl_05_slod")
    RequestIpl("h4_se_ipl_09_slod")
    RequestIpl("h4_islandx_mansion_vault_lod")
    RequestIpl("h4_se_ipl_03_slod")
    RequestIpl("h4_nw_ipl_08_lod")
    RequestIpl("h4_islandx_barrack_props_slod")
    RequestIpl("h4_islandxtower_veg_slod")
    RequestIpl("h4_sw_ipl_04")
    RequestIpl("h4_islandx_mansion_props")
    RequestIpl("h4_islandxtower_slod")
    RequestIpl("h4_beach_props")
    RequestIpl("h4_islandx_mansion_b_slod")
    RequestIpl("h4_islandx_maindock_props_slod")
    RequestIpl("h4_sw_ipl_07_slod")
    RequestIpl("h4_ne_ipl_07")
    RequestIpl("h4_islandxdock_props_2")
    RequestIpl("h4_ne_ipl_09_lod")
    RequestIpl("h4_islandxcanal_props")
    RequestIpl("h4_beach_slod")
    RequestIpl("h4_sw_ipl_00_slod")
    RequestIpl("h4_sw_ipl_03_lod")
    RequestIpl("h4_islandx_disc_strandedshark")
    RequestIpl("h4_islandx_disc_strandedshark_lod")
    RequestIpl("h4_islandx")
    RequestIpl("h4_islandx_props_lod")
    RequestIpl("h4_mph4_island_strm_0")
    -- RequestIpl("h4_islandx_sea_mines") -- Uncomment for the sea mines are Cayo
    RequestIpl("h4_mph4_island")
    -- RequestIpl("h4_boatblockers")
    RequestIpl("h4_mph4_island_long_0")
    RequestIpl("h4_islandx_disc_strandedwhale")
    RequestIpl("h4_islandx_disc_strandedwhale_lod")
    RequestIpl("h4_islandx_props")
    -- RequestIpl("h4_int_placement_h4_interior_1_dlc_int_02_h4_milo_")
    RequestIpl("h4_int_placement_h4")
end)

CreateThread(function()
    SetZoneEnabled(GetZoneFromNameId("PrLog"), false) -- Ensures no snow is falling in Cayo
    SetScenarioGroupEnabled('Heist_Island_Peds', true)
    SetAmbientZoneListStatePersistent('AZL_DLC_Hei4_Island_Zones', 1, 1) -- Ambient Sounds For Cayo Perico 
    SetAmbientZoneListStatePersistent('AZL_DLC_Hei4_Island_Disabled_Zones', 0, 1) -- Disable Other Ambient Sounds

    while true do
        local coords = GetEntityCoords(PlayerPedId())

        -- modifies the wave height, changes here could cause issues with water clipping through Cayo terrain

        if #(coords - islandCoords) < 2000.0 then
            if not nearIsland then
                nearIsland = true
                isCayoMinimapLoaded = true
                SetAiGlobalPathNodesType(1)
                LoadGlobalWaterType(1)
                SetDeepOceanScaler(0.0)
                SetToggleMinimapHeistIsland(true)
            end
        else
            if nearIsland then
                nearIsland = false
                isCayoMinimapLoaded = false
                SetAiGlobalPathNodesType(0)
                LoadGlobalWaterType(0)
                SetDeepOceanScaler(1.0)
                SetToggleMinimapHeistIsland(false)
            end
        end

        Wait(1000)
    end
end)

-- Handle the minimap loading and unloading

CreateThread(function()
    while true do
        -- We don't need to do something every frame in every cases
        ---@type integer
        local wait = 185 -- This should be low enough that, when the pause menu is opened, the minimap is toggled to be visible.

        if IsPauseMenuActive() and not IsMinimapInInterior() then
            -- If the player is in the pause menu and not looking at an interior minimap
            if isCayoMinimapLoaded then
                -- If the minimap was loaded with SetToggleMinimapHeistIsland, then we disable it
                isCayoMinimapLoaded = false
                SetToggleMinimapHeistIsland(false)
            end
            -- We force load the Cayo Perico minimap
            SetRadarAsExteriorThisFrame()
            SetRadarAsInteriorThisFrame(GetHashKey("h4_fake_islandx"), 4700.0, -5145.0, 0, 0)
            wait = 0

        elseif not isCayoMinimapLoaded and nearIsland then
            -- If the minimap is not loaded with SetToggleMinimapHeistIsland and the player is close to cayo perico, then we load it
            isCayoMinimapLoaded = true
            SetToggleMinimapHeistIsland(true)
        end
        Wait(wait)
    end
end)

-- Displays all map zones, fixing the 'bug' of showing North Yankton, and instead, showing Cayo Perico

local zones = {
    ["AIRP"] = "Los Santos International Airport",
    ["ALAMO"] = "Alamo Sea",
    ["ALTA"] = "Alta",
    ["ARMYB"] = "Fort Zancudo",
    ["BANHAMC"] = "Banham Canyon Dr",
    ["BANNING"] = "Banning",
    ["BEACH"] = "Vespucci Beach",
    ["BHAMCA"] = "Banham Canyon",
    ["BRADP"] = "Braddock Pass",
    ["BRADT"] = "Braddock Tunnel",
    ["BURTON"] = "Burton",
    ["CALAFB"] = "Calafia Bridge",
    ["CANNY"] = "Raton Canyon",
    ["CCREAK"] = "Cassidy Creek",
    ["CHAMH"] = "Chamberlain Hills",
    ["CHIL"] = "Vinewood Hills",
    ["CHU"] = "Chumash",
    ["CMSW"] = "Chiliad Mountain State Wilderness",
    ["CYPRE"] = "Cypress Flats",
    ["DAVIS"] = "Davis",
    ["DELBE"] = "Del Perro Beach",
    ["DELPE"] = "Del Perro",
    ["DELSOL"] = "La Puerta",
    ["DESRT"] = "Grand Senora Desert",
    ["DOWNT"] = "Downtown",
    ["DTVINE"] = "Downtown Vinewood",
    ["EAST_V"] = "East Vinewood",
    ["EBURO"] = "El Burro Heights",
    ["ELGORL"] = "El Gordo Lighthouse",
    ["ELYSIAN"] = "Elysian Island",
    ["GALFISH"] = "Galilee",
    ["GOLF"] = "GWC and Golfing Society",
    ["GRAPES"] = "Grapeseed",
    ["GREATC"] = "Great Chaparral",
    ["HARMO"] = "Harmony",
    ["HAWICK"] = "Hawick",
    ["HORS"] = "Diamond Casino And Resort",
    ["HUMLAB"] = "Humane Labs and Research",
    ["ISHEIST"] = "Cayo Perico",
    ["JAIL"] = "Bolingbroke Penitentiary",
    ["KOREAT"] = "Little Seoul",
    ["LACT"] = "Land Act Reservoir",
    ["LAGO"] = "Lago Zancudo",
    ["LDAM"] = "Land Act Dam",
    ["LEGSQU"] = "Legion Square",
    ["LMESA"] = "La Mesa",
    ["LOSPUER"] = "La Puerta",
    ["MIRR"] = "Mirror Park",
    ["MORN"] = "Morningwood",
    ["MOVIE"] = "Richards Majestic",
    ["MTCHIL"] = "Mount Chiliad",
    ["MTGORDO"] = "Mount Gordo",
    ["MTJOSE"] = "Mount Josiah",
    ["MURRI"] = "Murrieta Heights",
    ["NCHU"] = "North Chumash",
    ["NOOSE"] = "N.O.O.S.E",
    ["OCEANA"] = "Pacific Ocean",
    ["PALCOV"] = "Paleto Cove",
    ["PALETO"] = "Paleto Bay",
    ["PALFOR"] = "Paleto Forest",
    ["PALHIGH"] = "Palomino Highlands",
    ["PALMPOW"] = "Palmer-Taylor Power Station",
    ["PBLUFF"] = "Pacific Bluffs",
    ["PBOX"] = "Pillbox Hill",
    ["PROCOB"] = "Procopio Beach",
    ["RANCHO"] = "Rancho",
    ["RGLEN"] = "Richman Glen",
    ["RICHM"] = "Richman",
    ["ROCKF"] = "Rockford Hills",
    ["RTRAK"] = "Redwood Lights Track",
    ["SANAND"] = "San Andreas",
    ["SANCHIA"] = "San Chianski Mountain Range",
    ["SANDY"] = "Sandy Shores",
    ["SKID"] = "Mission Row",
    ["SLAB"] = "Stab City",
    ["STAD"] = "Maze Bank Arena",
    ["STRAW"] = "Strawberry",
    ["TATAMO"] = "Tataviam Mountains",
    ["TERMINA"] = "Terminal",
    ["TEXTI"] = "Textile City",
    ["TONGVAH"] = "Tongva Hills",
    ["TONGVAV"] = "Tongva Valley",
    ["VCANA"] = "Vespucci Canals",
    ["VESP"] = "Vespucci",
    ["VINE"] = "Vinewood",
    ["WINDF"] = "Ron Alternates Wind Farm",
    ["WVINE"] = "West Vinewood",
    ["ZANCUDO"] = "Zancudo River",
    ["ZP_ORT"] = "Port of South Los Santos",
    ["ZQ_UAR"] = "Davis Quartz",
}

function GetZoneNameLabel(zoneName)
    if zones[zoneName] then
        return zones[zoneName]
    else
        return zoneName
    end
end

-- Disables the cheering sounds intended for the Arena Wars update

CreateThread(function()
    while true do
        Wait(0)
            if NetworkIsSessionStarted() then
            SetStaticEmitterEnabled('SE_DLC_AW_ARENA_CONSTRUCTION_01', false)
            SetStaticEmitterEnabled('SE_DLC_AW_ARENA_CROWD_BACKGROUND_MAIN', false)
            SetStaticEmitterEnabled('SE_DLC_AW_CROWD_EXTERIOR_LOBBY', false)
            SetStaticEmitterEnabled('SE_DLC_AW_CROWD_INTERIOR_LOBBY', false)
            return
        end
    end
end)

-- Entity Set

-- Only one interior entity can be active at any given time, so comment out the pair below that you prefer


CreateThread(function()
    Wait(0)

    local interiorID = 280065

    if IsValidInterior(interiorID) then
        --ActivateInteriorEntitySet(interiorID, "pearl_necklace_set")
        --SetInteriorEntitySetColor(interiorID, "pearl_necklace_set", 1)
        ActivateInteriorEntitySet(interiorID, "panther_set")
        SetInteriorEntitySetColor(interiorID, "panther_set", 1)
        --ActivateInteriorEntitySet(interiorID, "pink_diamond_set")
        --SetInteriorEntitySetColor(interiorID, "pink_diamond_set", 1)

        RefreshInterior(interiorID)
    end
end)
