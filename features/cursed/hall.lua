local objectname= "hall" 
local featureDef  =  {
   name           = "hall",
   blocking       = true,	
   mass			   = 1000000000,
   collisionVolumeType 	= "Box",
   collisionVolumeScales 	= "60 60 120",
   collisionVolumeOffsets 	= "0 0 0", 
   damage            = 10000,
   description       = "Hall",
   energy            = 0,
   flammable         = 0,
   nodrawundergray   = false,
   footprintX        = 10,
   footprintZ        = 7,
   upright          = true,
   height      		= "80",
   hitdensity       = "1000000000",
   metal            = 0,
   object           = "features/hall.s3o",  
   reclaimable		= false,
   autoreclaimable	= false,
   world            = "allworld",
		customparams = { 
			normaltex 		   	= "unittextures/normalmaps/atlas_euf_buildings_normal.png",
			normalmaps 		   	= "yes",
		}, 	   
}
return lowerkeys({[featureDef.name] = featureDef})
