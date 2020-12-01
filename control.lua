require( "__SICoreFunctionLibrary__/util" )

needlist( "__SICoreFunctionLibrary__" , "define/load" , "function/load" )
needlist( "__SICoreFunctionLibrary__/runtime/structure" , "sievent_bus" , "siglobal" )

load()

-- ------------------------------------------------------------------------------------------------
-- ---------- 装载数据 ----------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------

SIGlobal.Create( "commonData" )

-- ------------------------------------------------------------------------------------------------
-- ---------- 公共方法 ----------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------

function NewEntityIndex()
	if not commonData.entityIndex then commonData.entityIndex = 1 end
	local index = commonData.entityIndex
	commonData.entityIndex = commonData.entityIndex + 1
	return index
end