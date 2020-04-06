local objectname= "barrels" 
local featureDef  =  {
   name           = "barrels",
   blocking       = false,	
   mass			   = 1000000000,
   damage            = 1000000000,
   description       = "Barrels",
   energy            = 0,
   flammable         = 0,
   nodrawundergray   = true,
   footprintX        = 1,
   footprintZ        = 1,
   upright          = false,
   height      		= "5",
   hitdensity       = "1000000000",
   metal            = 0,
   object           = "features/barrels.s3o",  
   reclaimable		= false,
   autoreclaimable	= false,
   world            = "allworld",
}
return lowerkeys({[featureDef.name] = featureDef})
