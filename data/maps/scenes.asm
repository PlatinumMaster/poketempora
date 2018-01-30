scene_def: MACRO
; db group, map
; dw address
	map \1
	dw \2
ENDM

MapScenes:: ; 4d01e
	scene_def POKECENTER_2F,                               wPokecenter2FSceneID
	scene_def TRADE_CENTER,                                wTradeCenterSceneID
	scene_def COLOSSEUM,                                   wColosseumSceneID
	scene_def TIME_CAPSULE,                                wTimeCapsuleSceneID
	scene_def POWER_PLANT,                                 wPowerPlantSceneID
	scene_def CERULEAN_GYM,                                wCeruleanGymSceneID
	scene_def ROUTE_25,                                    wRoute25SceneID
	scene_def TRAINER_HOUSE_B1F,                           wTrainerHouseB1FSceneID
	scene_def VICTORY_ROAD_GATE,                           wVictoryRoadGateSceneID
	scene_def SAFFRON_MAGNET_TRAIN_STATION,                wSaffronMagnetTrainStationSceneID
	scene_def ROUTE_16_GATE,                               wRoute16GateSceneID
	scene_def ROUTE_17_ROUTE_18_GATE,                      wRoute17Route18GateSceneID
	scene_def INDIGO_PLATEAU_POKECENTER_1F,                wIndigoPlateauPokecenter1FSceneID
	scene_def WILLS_ROOM,                                  wWillsRoomSceneID
	scene_def KOGAS_ROOM,                                  wKogasRoomSceneID
	scene_def BRUNOS_ROOM,                                 wBrunosRoomSceneID
	scene_def KARENS_ROOM,                                 wKarensRoomSceneID
	scene_def LANCES_ROOM,                                 wLancesRoomSceneID
	scene_def HALL_OF_FAME,                                wHallOfFameSceneID
	scene_def ROUTE_27,                                    wRoute27SceneID
	scene_def NEW_BARK_TOWN,                               wNewBarkTownSceneID
	scene_def ELMS_LAB,                                    wElmsLabSceneID
	scene_def KRISS_HOUSE_1F,                              wKrissHouse1FSceneID
	scene_def ROUTE_29,                                    wRoute29SceneID
	scene_def CHERRYGROVE_CITY,                            wCherrygroveCitySceneID
	scene_def MR_POKEMONS_HOUSE,                           wMrPokemonsHouseSceneID
	scene_def ROUTE_32,                                    wRoute32SceneID
	scene_def ROUTE_35_NATIONAL_PARK_GATE,                 wRoute35NationalParkGateSceneID
	scene_def ROUTE_36,                                    wRoute36SceneID
	scene_def ROUTE_36_NATIONAL_PARK_GATE,                 wRoute36NationalParkGateSceneID
	scene_def AZALEA_TOWN,                                 wAzaleaTownSceneID
	scene_def GOLDENROD_GYM,                               wGoldenrodGymSceneID
	scene_def GOLDENROD_MAGNET_TRAIN_STATION,              wGoldenrodMagnetTrainStationSceneID
	scene_def GOLDENROD_POKECENTER_1F,                     wGoldenrodPokecenter1FSceneID
	scene_def OLIVINE_CITY,                                wOlivineCitySceneID
	scene_def ROUTE_34,                                    wRoute34SceneID
	scene_def ROUTE_34_ILEX_FOREST_GATE,                   wRoute34IlexForestGateSceneID
	scene_def ECRUTEAK_HOUSE,                              wEcruteakHouseSceneID
	scene_def WISE_TRIOS_ROOM,                             wWiseTriosRoomSceneID
	scene_def ECRUTEAK_POKECENTER_1F,                      wEcruteakPokecenter1FSceneID
	scene_def ECRUTEAK_GYM,                                wEcruteakGymSceneID
	scene_def MAHOGANY_TOWN,                               wMahoganyTownSceneID
	scene_def ROUTE_42,                                    wRoute42SceneID
	scene_def CIANWOOD_CITY,                               wCianwoodCitySceneID
	scene_def BATTLE_TOWER_1F,                             wBattleTower1FSceneID
	scene_def BATTLE_TOWER_BATTLE_ROOM,                    wBattleTowerBattleRoomSceneID
	scene_def BATTLE_TOWER_ELEVATOR,                       wBattleTowerElevatorSceneID
	scene_def BATTLE_TOWER_HALLWAY,                        wBattleTowerHallwaySceneID
	scene_def BATTLE_TOWER_OUTSIDE,                        wBattleTowerOutsideSceneID
	scene_def ROUTE_43_GATE,                               wRoute43GateSceneID
	scene_def MOUNT_MOON,                                  wMountMoonSceneID
	scene_def SPROUT_TOWER_3F,                             wSproutTower3FSceneID
	scene_def TIN_TOWER_1F,                                wTinTower1FSceneID
	scene_def BURNED_TOWER_1F,                             wBurnedTower1FSceneID
	scene_def BURNED_TOWER_B1F,                            wBurnedTowerB1FSceneID
	scene_def RADIO_TOWER_5F,                              wRadioTower5FSceneID
	scene_def RUINS_OF_ALPH_OUTSIDE,                       wRuinsOfAlphOutsideSceneID
	scene_def RUINS_OF_ALPH_RESEARCH_CENTER,               wRuinsOfAlphResearchCenterSceneID
	scene_def RUINS_OF_ALPH_HO_OH_CHAMBER,                 wRuinsOfAlphHoOhChamberSceneID
	scene_def RUINS_OF_ALPH_KABUTO_CHAMBER,                wRuinsOfAlphKabutoChamberSceneID
	scene_def RUINS_OF_ALPH_OMANYTE_CHAMBER,               wRuinsOfAlphOmanyteChamberSceneID
	scene_def RUINS_OF_ALPH_AERODACTYL_CHAMBER,            wRuinsOfAlphAerodactylChamberSceneID
	scene_def RUINS_OF_ALPH_INNER_CHAMBER,                 wRuinsOfAlphInnerChamberSceneID
	scene_def MAHOGANY_MART_1F,                            wMahoganyMart1FSceneID
	scene_def TEAM_ROCKET_BASE_B1F,                        wTeamRocketBaseB1FSceneID
	scene_def TEAM_ROCKET_BASE_B2F,                        wTeamRocketBaseB2FSceneID
	scene_def TEAM_ROCKET_BASE_B3F,                        wTeamRocketBaseB3FSceneID
	scene_def GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, wGoldenrodUndergroundSwitchRoomEntrancesSceneID
	scene_def SILVER_CAVE_ROOM_3,                          wSilverCaveRoom3SceneID
	scene_def VICTORY_ROAD,                                wVictoryRoadSceneID
	scene_def DRAGONS_DEN_B1F,                             wDragonsDenB1FSceneID
	scene_def DRAGON_SHRINE,                               wDragonShrineSceneID
	scene_def OLIVINE_PORT,                                wOlivinePortSceneID
	scene_def VERMILION_PORT,                              wVermilionPortSceneID
	scene_def FAST_SHIP_1F,                                wFastShip1FSceneID
	scene_def FAST_SHIP_B1F,                               wFastShipB1FSceneID
	scene_def MOUNT_MOON_SQUARE,                           wMountMoonSquareSceneID
	db -1
; 4d15b