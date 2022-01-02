-- Converts units that are around the converter when it is created
--include "common.lua"
local radius = tonumber(UnitDefs[unitDefID].customParams.converterradius) or 300
local UnitForConversionList = {}

local function Checking()
	local x, y, z = Spring.GetUnitPosition(unitID)
	local converterTeam = Spring.GetUnitTeam(unitID)
	while true do
		local unitsAround = Spring.GetUnitsInSphere(x,y,z, radius)
		for _,aUnitID in ipairs(unitsAround) do
			local aLocalteam = Spring.GetUnitTeam(aUnitID)
			local aAi = select(4, Spring.GetTeamInfo(aLocalteam))
			if (not aAi) and (aLocalteam ~= converterTeam) and Spring.AreTeamsAllied(aLocalteam, converterTeam) then
				for _,eUnitID in pairs(UnitForConversionList) do
					if (not Spring.GetUnitIsDead(eUnitID)) then
						local eTeam = Spring.GetUnitTeam(eUnitID)
						local lx, ly, lz = Spring.GetUnitPosition(eUnitID)
						Spring.SpawnCEG('SCORPION_CEG', lx, ly, lz)
						Spring.TransferUnit(eUnitID,aLocalteam)
					end
				end
				Spring.DestroyUnit(unitID, false, false, unitID)
			end
		end
		Sleep(1000)
	end
end

local function GetUnitsToConvert()
	local x, y, z = Spring.GetUnitPosition(unitID)
	local converterTeam = Spring.GetUnitTeam(unitID)
	local unitsAround = Spring.GetUnitsInSphere(x,y,z, radius)
	for _,cUnitID in ipairs(unitsAround) do	
		local cLocalteam = Spring.GetUnitTeam(cUnitID)
		if (cLocalteam == converterTeam) and (cUnitID ~= unitID) then
			UnitForConversionList[cUnitID] = cUnitID
		end
	end
	StartThread(Checking)		
end

function script.Create( )
	Spring.SetUnitNeutral(unitID, true)
	SendToUnsynced('setselectable', unitID, false)
	Spring.SetUnitBlocking(unitID, false, false, false, false, false, false, false)
	Spring.SetUnitCloak(unitID, 2, 0)
	Sleep(100) -- needs a delay if other units are created before
	GetUnitsToConvert()
end

function script.Killed()
	--return 0
end