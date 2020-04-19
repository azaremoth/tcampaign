-- UNITDEF -- euf_hunter --
--------------------------------------------------------------------------------

local unitName = "euf_hunter"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 1.0,
  activateWhenBuilt  = true,
  armortype          = "LIGHT",
  badTargetCategory  = "AIR",
  brakeRate          = 1.5,
  buildCostEnergy    = 300,
  buildCostMetal     = 300,
  buildPic           = "euf_constructor_td.png",
  buildTime          = 300,
  canBeAssisted      = false,
  canGuard           = true,
  canPatrol          = true,
  canstop            = true,
  cantBeTransported  = false, 
  canAttack          = true,
  --canHover           = true,
  canMove            = true,
  category           = "EUF LAND LIGHTARMOR",
  customParams       = {			
	factionname		 = "imperials",
	normaltex = "unittextures/normalmaps/euf_constructor_normal.png",
	normalmaps = "yes",		
    helptext = "This experimental hovering robot is based on an improved builderoid design. Builder functions were replaced with a strong stun gun though."	
	},
  defaultmissiontype = "Standby",
  description        = "Fast hunter drone.",
  energyMake         = 0,
  energyStorage      = 0,
  explodeAs          = "NULL",
  footprintX         = 2,
  footprintZ         = 2,
  iconType           = "circle",
  idleAutoHeal       = 0.01,
  idleTime           = 400,
  levelGround        = true,  
  crushResistance    = 2000,
  mass               = 1100,
  maxDamage          = 1400,
  maxSlope           = 14,
  maxVelocity        = 3.0,
  maxWaterDepth      = 255,
  metalMake          = 0,
  metalStorage       = 0,
  movementClass      = "SMALLHOVER2x2",
  name               = "Hunteroid",
  nanoColor          = "0.16 1 1",
  noChaseCategory    = "AIR",
  objectName         = "euf_constructor.s3o",
  script             = "euf_constructor.cob",  
  selfDestructAs     = "NULL",
  showNanoFrame      = false,
  showNanoSpray      = true,
  side               = "imperials",
  sightDistance      = 512,
  smoothAnim         = false,
  sonarDistance      = 768,
  standingfireorder  = "2",
  standingmoveorder  = "2",
  terraformSpeed     = 1200,
  turnRate           = 1005,
  unitname           = "euf_hunter",
  upright            = true,
  
  
  buildoptions = {  },
  sfxtypes = {
    explosiongenerators = {
      "custom:TINY_EXPLOSION_YELLOW",
      "custom:PLasmaTowerGunFlare",
      "custom:PLasmaTowerGunGroundflash",	 
    },
  },
  sounds = {
    build              = "",
    canceldestruct     = "",
    repair             = "",
    underattack        = "voices_emergency",
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
      "voices_yes",
    },
    select = {
      "voices_engrdy",
    },
  },
  weapons = {
    [1]  = {
      name                = "TAZER_LIGHT_MG",
      mainDir            = "0 0 1",
      maxAngleDif        = 160,
      onlyTargetCategory = "LAND AIR",
    },
  },
}


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
