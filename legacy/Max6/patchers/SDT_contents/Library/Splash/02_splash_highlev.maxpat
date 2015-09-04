{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 4
		}
,
		"rect" : [ 22.0, 275.0, 1389.0, 617.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 698.0, 14.0, 59.5, 20.0 ],
					"text" : "autopattr",
					"varname" : "u887002533"
				}

			}
, 			{
				"box" : 				{
					"autorestore" : "Splash_preset.xml",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 578.0, 324.5, 133.0, 27.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 177.0, 398.5, 127.5, 27.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 25, 69, 665, 309 ],
						"parameter_enable" : 0,
						"storage_rect" : [ 50, 94, 690, 334 ]
					}
,
					"text" : "pattrstorage Splash_preset @savemode 1",
					"varname" : "Splash_preset[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica",
					"fontsize" : 10.0,
					"id" : "obj-58",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 66.5, 207.0, 45.0, 36.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 56.0, 223.0, 51.0, 26.0 ],
					"text" : "bang \nto splash"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.8, 0.8, 0.8, 1.0 ],
					"blinkcolor" : [ 0.927273, 0.17163, 0.182563, 0.87 ],
					"id" : "obj-59",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.927273, 0.17163, 0.182563, 0.87 ],
					"patching_rect" : [ 66.5, 248.5, 44.0, 44.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 214.0, 44.0, 44.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1" ],
					"id" : "obj-57",
					"maxclass" : "bpatcher",
					"name" : "splash_timbral_palette.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 602.0, 83.0, 311.0, 219.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 254.0, 335.0, 201.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "blasting slope",
					"hidden" : 1,
					"id" : "obj-2",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 402.0, 22.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "blasting slope",
					"hidden" : 1,
					"id" : "obj-3",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 381.0, 22.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "blasting slope",
					"hidden" : 1,
					"id" : "obj-4",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 360.0, 22.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "preset interpolation",
					"hidden" : 1,
					"id" : "obj-10",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 894.5, 22.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "blasting slope",
					"hidden" : 1,
					"id" : "obj-11",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 339.0, 22.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "bubble radius",
					"hidden" : 1,
					"id" : "obj-12",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 315.0, 22.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "onebubble - bang",
					"hidden" : 1,
					"id" : "obj-13",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 292.0, 22.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "one bubble -sound out",
					"hidden" : 1,
					"id" : "obj-14",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 71.0, 419.5, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"patching_rect" : [ 71.0, 385.5, 100.0, 17.0 ],
					"text" : "poly~ splashing~ 16"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 71.0, 346.5, 197.0, 17.0 ],
					"text" : "pack 0. 0. 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-51",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 71.0, 329.5, 35.0, 17.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 71.0, 310.5, 68.0, 17.0 ],
					"text" : "counter 1 16"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 71.0, 366.5, 132.0, 15.0 ],
					"text" : "target $1, $2 $3 $4 $5 $6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "bpatcher",
					"name" : "00_splash_params.maxpat",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 187.0, 83.0, 385.0, 219.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 335.0, 211.0 ],
					"varname" : "00_onebub_params.mxb"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 348.0, 49.0, 288.0, 49.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 324.0, 49.0, 196.5, 49.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 301.0, 39.0, 139.0, 39.0, 139.0, 234.0, 76.0, 234.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 587.5, 356.0, 938.0, 356.0, 938.0, 66.0, 611.5, 66.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 4 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 411.0, 50.0, 562.5, 50.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 3 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 390.0, 50.0, 471.0, 50.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 2 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 369.0, 47.0, 379.5, 47.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"destination" : [ "obj-50", 5 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 562.5, 312.0, 258.5, 312.0 ],
					"source" : [ "obj-56", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"destination" : [ "obj-50", 4 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 471.0, 312.0, 222.899994, 312.0 ],
					"source" : [ "obj-56", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"destination" : [ "obj-50", 3 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 379.5, 312.0, 187.300003, 312.0 ],
					"source" : [ "obj-56", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"destination" : [ "obj-50", 2 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 288.0, 312.0, 151.699997, 312.0 ],
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"destination" : [ "obj-50", 1 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 196.5, 312.0, 116.099998, 312.0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "00_splash_params.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Splash",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "splashing~.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Splash",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "splash_timbral_palette.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Splash",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Splash_preset.xml",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Presets/Splash/Timbral",
				"patcherrelativepath" : "../../Presets/Splash/Timbral",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "splash~.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
