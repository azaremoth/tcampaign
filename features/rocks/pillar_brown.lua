local objects = {
	"features/rocks_brown/pillar1.s3o",
	"features/rocks_brown/pillar2.s3o",
}

local BuildingModuleDef = {}
local function createBuildingModuleDef(i)
  BuildingModuleDef["pillar_brown" .. i] = {
     description = [[Brown pillars]],
	 autoreclaimable = false,
     blocking    = true,
     burnable    = false,
     nodrawundergray = false,
     reclaimable = true,
	 upright 	 = false,	 
     energy      = 0,
     damage      = 10000,
     metal       = 100,
     reclaimTime = 10000,
     mass        = 9999999999,
     object = objects[(i % #objects) + 1] ,
     footprintX  = 5,
     footprintZ  = 5,
	 customparams = { 
			normaltex 		= "unittextures/normalmaps/rocks_brown.png",
			normalmaps 		= "yes",			
		},  
  }
end

for i=1,2 do
  createBuildingModuleDef(i)
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

return lowerkeys( BuildingModuleDef )

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------