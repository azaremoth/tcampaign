--------------------------------------------------------------------------------

local unitName = "spawner_ghoul"

--------------------------------------------------------------------------------

local unitDef = {
  armortype          = "HEAVY",
  buildCostEnergy    = 0,
  buildCostMetal     = 0,
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
		spawnunitcount	   = "4",
		spawnradius		   = "200",	
		spawnunit		   = "tc_ghoul",
		spawningceg		   = "BURROWING_BIGGER",		
	},
  damageModifier     = 0.001,
  description        = "Emiter for fire",
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
  maxSlope           = 90,
  maxWaterDepth      = 0,
  metalMake          = 0,
  mobilestandorders  = "1",
  name               = "spawner_ghoul",
  nanoColor          = "0.6 1 0.15",
  noAutoFire         = false,
  objectName         = "empty.s3o",
  radarDistance      = 1,
  reclaimable        = false,
  
  script = 'spawner.lua',
  
  selfDestructAs     = "SMOKE_EXPLOSION",
  showNanoFrame      = false,
  showNanoSpray      = false,
  side               = "neutral",
  sightDistance      = 0,
  smoothAnim         = false,
  stealth		   = 1,
  standingfireorder  = "2",
  standingmoveorder  = "2",
  unitname           = "spawner_ghoul",
  useBuildingGroundDecal = true,
  yardMap            = "c",
  sfxtypes = {
    explosiongenerators = {
--      "custom:Flamethrower",
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


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
