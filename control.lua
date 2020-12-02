require( "__SICoreFunctionLibrary__/util" )

needlist( "__SICoreFunctionLibrary__" , "define/load" , "function/load" )
needlist( "__SICoreFunctionLibrary__/runtime/structure" , "sievent_bus" , "siglobal" )

load()

-- ------------------------------------------------------------------------------------------------
-- ---------- 装载数据 ----------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------

SIGlobal.Create( "commonData" )

SIEventBus
.Add( SIEvents.on_player_joined_game , function( event ) end )
.Add( SIEvents.on_player_crafted_item , function( event ) end )
.Add( SIEvents.on_entity_died , function( event ) end )
.Add( SIEvents.on_player_died , function( event ) end )
.Add( SIEvents.on_player_respawned , function( event ) end )
.Add( SIEvents.on_player_mined_item , function( event ) end )
.Add( SIEvents.on_research_finished , function( event ) end )
.Add( SIEvents.on_rocket_launched , function( event ) end )
.Add( SIEvents.on_sector_scanned , function( event ) end )
.Add( SIEvents.on_player_placed_equipment , function( event ) end )
.Add( SIEvents.on_player_removed_equipment , function( event ) end )

needlist( "zaction" , "panel_status" )

-- ------------------------------------------------------------------------------------------------
-- ---------- 公共方法 ----------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------

function NewEntityIndex()
	if not commonData.entityIndex then commonData.entityIndex = 1 end
	local index = commonData.entityIndex
	commonData.entityIndex = commonData.entityIndex + 1
	return index
end