--include "common.lua"

local deathtime = tonumber(UnitDefs[unitDefID].customParams.deathtime) or 500

local function Deathcount()
	Sleep(deathtime)
	Spring.DestroyUnit(unitID,true,false,unitID)
end

function script.Create( )
	Spring.SetUnitNeutral(unitID, true)
	SendToUnsynced('setselectable', unitID, false)
	Spring.SetUnitBlocking(unitID, false, false, false, false, false, false, false)
	Spring.SetUnitCloak(unitID, 2, 0)
	Deathcount()
end

function script.Killed()
	--return 0
end