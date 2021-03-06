local objectname= "boxes" 
local featureDef  =  {
   name           = "boxes",
   blocking       = false,	
   mass			   = 1000000000,   
   damage            = 1000000000,
   description       = "Boxes",
   energy            = 0,
   flammable         = 0,
   nodrawundergray   = true,
   footprintX        = 2,
   footprintZ        = 2,
   upright          = false,
   height      		= "5",
   hitdensity       = "1000000000",
   metal            = 0,
   object           = "features/boxes.s3o",  
   reclaimable		= false,
   autoreclaimable	= false,
   world            = "allworld",
}
return lowerkeys({[featureDef.name] = featureDef})
