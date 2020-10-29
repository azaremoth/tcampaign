local DECAL1 = {
  unitname           = "grounddust1",
  name        = "grounddust1",
  description = "grounddust1",
  buildingGroundDecalDecaySpeed = 0.0000000001,
  buildingGroundDecalSizeX = 15,
  buildingGroundDecalSizeY = 15,
  buildingGroundDecalType = "grounddust1.png",
}
local DECAL2 = {
  unitname           = "grounddust2",
  name        = "grounddust2",
  description = "grounddust2",
  buildingGroundDecalDecaySpeed = 0.0000000001,
  buildingGroundDecalSizeX = 15,
  buildingGroundDecalSizeY = 15,
  buildingGroundDecalType = "grounddust2.png",
}
local DECAL3 = {
  unitname           = "grounddust3",
  name        = "grounddust3",
  description = "grounddust3",
  buildingGroundDecalDecaySpeed = 0.0000000001,
  buildingGroundDecalSizeX = 15,
  buildingGroundDecalSizeY = 15,
  buildingGroundDecalType = "grounddust3.png",
}
local DECAL4 = {
  unitname           = "grounddust4",
  name        = "grounddust4",
  description = "grounddust4",
  buildingGroundDecalDecaySpeed = 0.0000000001,
  buildingGroundDecalSizeX = 15,
  buildingGroundDecalSizeY = 15,
  buildingGroundDecalType = "grounddust4.png",
}
------------------------------------------------------ BASE CLASS
local BASE = {
  armortype          = "HEAVY",
  buildCostEnergy    = 0,
  buildCostMetal     = 0,
  useBuildingGroundDecal = true,  
  buildPic           = "NULL.png",
  buildTime          = 0,
  canAssist          = false,
  canBeAssisted      = false,
  canMove            = false,
  canPatrol          = false,
  canstop            = false,
  cantBeTransported  = true, 
  capturable         = false,   
  category           = "CANTATTACK",
  corpse             = "",
    customParams          = {	
				factionname		   = "neutral",
	},
  damageModifier     = 0.001,
  description        = "Hidden Grounddecal",
  energyMake         = 0,
  explodeAs          = "SMOKE_EXPLOSION",
  firestandorders    = "1",
  footprintX         = 1,
  footprintZ         = 1,
  hideDamage         = true,
  iconType           = "neverseeme",
  idleAutoHeal       = 50,
  idleTime           = 200,
  levelGround        = true,
  maxDamage          = 99999999,
  maxSlope           = 45,
  maxWaterDepth      = 0,
  metalMake          = 0,
  mobilestandorders  = "1",
  nanoColor          = "0 0 0",
  noAutoFire         = false,
  objectName         = "empty.s3o",
  radarDistance      = 1,
  reclaimable        = false,
  script = 'empty.lua',
  selfDestructAs     = "SMOKE_EXPLOSION",
  showNanoFrame      = false,
  showNanoSpray      = false,
  side               = "neutral",
  sightDistance      = 0,
  smoothAnim         = false,
  stealth		   = true,
  standingfireorder  = "2",
  standingmoveorder  = "2",
  yardMap            = "c",
  sfxtypes = {
    explosiongenerators = {
      "custom:Structurebuilding_Big",
    },
  },
  sounds = {
    build              = "",
    canceldestruct     = "",
    repair             = "",
    underattack        = "",
    working            = "",
    arrived = {
      "",
    },
    cant = {
      "",
    },
    count = {
      "",
      "",
      "",
      "",
      "",
      "",
    },
    ok = {
      "",
    },
    select = {
      "",
    },
  },
}

----------------------------------- FINALIZE ---------------------------------------------
function DefCopyTable(tableToCopy, deep)
  local copy = {}
  for key, value in pairs(tableToCopy) do
    if (deep and type(value) == "table") then
      copy[key] = DefCopyTable(value, true)
    else
      copy[key] = value
    end
  end
  return copy
end

function DefMergeTable(primary, secondary, deep)
    local new = DefCopyTable(primary, deep)
    for i, v in pairs(secondary) do
	    -- key not used in primary, assign it the value at same key in secondary
	    if not new[i] then
		    if (deep and type(v) == "table") then
			    new[i] = DefCopyTable(v, true)
		    else
			    new[i] = v
		    end
	    -- values at key in both primary and secondary are tables, merge those
	    elseif type(new[i]) == "table" and type(v) == "table"  then
		    new[i] = DefMergeTable(new[i], v, deep)
	    end
    end
    return new
end

return lowerkeys({
	grounddust1 = DefMergeTable(BASE, DECAL1),
	grounddust2 = DefMergeTable(BASE, DECAL2),
	grounddust3 = DefMergeTable(BASE, DECAL3),
	grounddust4 = DefMergeTable(BASE, DECAL4),		
})
