{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 4
		}
,
		"rect" : [ 392.0, 70.0, 805.0, 515.0 ],
		"bgcolor" : [ 0.862745, 0.862745, 0.862745, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"title" : "Impact #1 (Low Level)",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 200.0, 65.0, 125.0, 17.0 ],
					"text" : "autopattr @autorestore 0",
					"varname" : "u099013639"
				}

			}
, 			{
				"box" : 				{
					"autorestore" : "Impact_preset.xml",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 648.0, 372.0, 199.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 497.0, 244.0, 199.0, 17.0 ],
					"saved_object_attributes" : 					{
						"storage_rect" : [ 0, 0, 640, 240 ],
						"parameter_enable" : 0,
						"client_rect" : [ 0, 0, 640, 240 ]
					}
,
					"text" : "pattrstorage Impact_preset @savemode 1",
					"varname" : "Impact_preset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "bpatcher",
					"name" : "IMP_timbral_palette.maxpat",
					"numinlets" : 6,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "int", "float" ],
					"patching_rect" : [ 636.0, 99.0, 402.0, 266.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 484.0, 3.0, 402.0, 266.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "update ubumenu pattrstorage",
					"hidden" : 1,
					"id" : "obj-7",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1331.0, 41.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 261.0, 295.0, 138.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 85.0, 240.0, 138.0, 15.0 ],
					"text" : "title Impact #1 (Low Level)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 200.0, 344.0, 252.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 28.0, 283.0, 252.0, 15.0 ],
					"text" : "window flags close, window flags grow, window exec"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 270.0, 258.0, 48.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 248.0, 240.0, 48.0, 17.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 183.0, 327.0, 272.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 261.0, 272.0, 15.0 ],
					"text" : "window flags noclose, window flags nogrow, window exec"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 183.0, 364.0, 61.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 305.0, 61.0, 17.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"comment" : "active modes",
					"hidden" : 1,
					"id" : "obj-13",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 266.0, 696.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "set recall to ubumenu",
					"hidden" : 1,
					"id" : "obj-15",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 696.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 1118.0, 594.0, 93.0, 17.0 ],
					"text" : "bgcolor 220 220 220"
				}

			}
, 			{
				"box" : 				{
					"comment" : "Gain modes list - inlet 13",
					"hidden" : 1,
					"id" : "obj-18",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 336.0, 696.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Decay modes list - inlet 12",
					"hidden" : 1,
					"id" : "obj-19",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 318.0, 696.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "frequency modes list - inlet 11",
					"hidden" : 1,
					"id" : "obj-20",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 300.0, 696.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Global base factors - inlet 10",
					"hidden" : 1,
					"id" : "obj-21",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 282.0, 696.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "to set cont interpolation (float)",
					"hidden" : 1,
					"id" : "obj-22",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 512.0, 696.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "save - populate ubumenu",
					"hidden" : 1,
					"id" : "obj-23",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 469.0, 696.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "delete preset (int + bang)",
					"hidden" : 1,
					"id" : "obj-27",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1239.0, 41.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Impact parameters (inlet 5- interactor)",
					"hidden" : 1,
					"id" : "obj-28",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 148.0, 696.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "to cont surf slid - High level interface",
					"hidden" : 1,
					"id" : "obj-29",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 129.0, 696.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "to mat elast slid - high level interface",
					"hidden" : 1,
					"id" : "obj-30",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 110.0, 696.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Hammer mass (Inlet 9 - gain at pick up point)",
					"hidden" : 1,
					"id" : "obj-31",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 76.0, 696.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "to Hammer mass slid - High level interface",
					"hidden" : 1,
					"id" : "obj-32",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 57.0, 696.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Initial strike velocity - Inlet 4",
					"hidden" : 1,
					"id" : "obj-33",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 38.0, 696.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "external force on striker (inlet 1 - signal)",
					"hidden" : 1,
					"id" : "obj-34",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 696.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "continuous preset interpolation (float)",
					"hidden" : 1,
					"id" : "obj-37",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1277.0, 41.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Global gain factor",
					"hidden" : 1,
					"id" : "obj-38",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1154.0, 41.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "recall preset (int)",
					"hidden" : 1,
					"id" : "obj-39",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1188.0, 41.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "save - store message from bang open dialog",
					"hidden" : 1,
					"id" : "obj-40",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1171.0, 41.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Contact surface (0-100)",
					"hidden" : 1,
					"id" : "obj-41",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1102.0, 41.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Global decay factor",
					"hidden" : 1,
					"id" : "obj-42",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1136.0, 41.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Global Frequency factor",
					"hidden" : 1,
					"id" : "obj-43",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1119.0, 41.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "bang to strike",
					"hidden" : 1,
					"id" : "obj-44",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1050.0, 41.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Material elasticity (0-100)",
					"hidden" : 1,
					"id" : "obj-45",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1084.0, 41.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "hammer mass (0-100)",
					"hidden" : 1,
					"id" : "obj-46",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1067.0, 41.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "bpatcher",
					"name" : "01_IMP_Impact_parameters.maxpat",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 440.0, 99.0, 192.0, 266.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.0, 3.0, 192.0, 266.0 ],
					"varname" : "Impact_parameters"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "bpatcher",
					"name" : "02_IMP_Resonator_control.maxpat",
					"numinlets" : 3,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 154.0, 412.0, 886.0, 249.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 273.0, 886.0, 249.0 ],
					"varname" : "Resonator_control"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "bpatcher",
					"name" : "00_IMP_Hammer_control.maxpat",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "", "float", "", "" ],
					"patching_rect" : [ 154.0, 99.0, 282.0, 266.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 3.0, 282.0, 266.0 ],
					"varname" : "Hammer_control"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 900.833313, 374.0, 1055.0, 374.0, 1055.0, 689.0, 499.0, 689.0 ],
					"source" : [ "obj-14", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1028.5, 373.0, 1067.0, 373.0, 1067.0, 687.0, 521.0, 687.0 ],
					"source" : [ "obj-14", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 773.166687, 374.0, 1060.0, 374.0, 1060.0, 689.0, 478.0, 689.0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.403244, 0.391049, 0.956522, 1.0 ],
					"destination" : [ "obj-14", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1248.0, 87.0, 875.299988, 87.0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.403244, 0.391049, 0.956522, 1.0 ],
					"destination" : [ "obj-14", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1286.0, 87.0, 951.900024, 87.0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 2 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 1163.0, 392.0, 1030.5, 392.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.403244, 0.391049, 0.956522, 1.0 ],
					"destination" : [ "obj-14", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1197.0, 87.0, 798.700012, 87.0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.403244, 0.391049, 0.956522, 1.0 ],
					"destination" : [ "obj-14", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1180.0, 87.0, 722.099976, 87.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.098098, 0.722826, 0.260306, 1.0 ],
					"destination" : [ "obj-73", 1 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 1111.0, 71.0, 622.5, 71.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 1 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 1145.0, 405.0, 597.0, 405.0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 1128.0, 405.0, 163.5, 405.0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.927273, 0.17163, 0.182563, 0.87 ],
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 1059.0, 63.0, 163.5, 63.0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.098098, 0.722826, 0.260306, 1.0 ],
					"destination" : [ "obj-73", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 1093.0, 71.0, 449.5, 71.0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.927273, 0.17163, 0.182563, 0.87 ],
					"destination" : [ "obj-75", 1 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 1076.0, 63.0, 426.5, 63.0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.403244, 0.391049, 0.956522, 1.0 ],
					"destination" : [ "obj-14", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1340.0, 87.0, 1028.5, 87.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 634.0, 387.0, 634.0, 87.0, 645.5, 87.0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 622.5, 400.0, 145.0, 400.0, 145.0, 684.0, 157.0, 684.0 ],
					"source" : [ "obj-73", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 536.0, 400.0, 138.0, 400.0, 138.0, 642.0, 138.0, 642.0 ],
					"source" : [ "obj-73", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 449.5, 400.0, 119.0, 400.0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 163.5, 667.0, 275.0, 667.0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 1030.5, 667.0, 345.0, 667.0 ],
					"source" : [ "obj-74", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 813.75, 667.0, 327.0, 667.0 ],
					"source" : [ "obj-74", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 597.0, 667.0, 309.0, 667.0 ],
					"source" : [ "obj-74", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 380.25, 667.0, 291.0, 667.0 ],
					"source" : [ "obj-74", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 426.5, 377.0, 85.0, 377.0 ],
					"source" : [ "obj-75", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 338.833344, 377.0, 66.0, 377.0 ],
					"source" : [ "obj-75", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 251.166672, 377.0, 47.0, 377.0 ],
					"source" : [ "obj-75", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 163.5, 377.0, 28.0, 377.0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "00_IMP_Hammer_control.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Impact",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "_actx.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_externals/SDT_common_abstractions",
				"patcherrelativepath" : "../../../../SDT_externals/SDT_common_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "02_IMP_Resonator_control.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Impact",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "singlemode.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Impact",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "01_IMP_Impact_parameters.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Impact",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "IMP_timbral_palette.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Impact",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Impact_preset.xml",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Presets/Impact/Timbral",
				"patcherrelativepath" : "../../Presets/Impact/Timbral",
				"type" : "TEXT",
				"implicit" : 1
			}
 ]
	}

}
