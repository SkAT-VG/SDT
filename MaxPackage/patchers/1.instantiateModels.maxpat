{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 11,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 200.0, 150.0, 900.0, 650.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 13.0,
		"default_fontface" : 0,
		"default_fontname" : "Lato",
		"gridonopen" : 1,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "SDT-comments",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 116.0, 145.0, 70.0, 22.0 ],
									"text" : "sdt.friction~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.0, 145.0, 70.0, 22.0 ],
									"text" : "sdt.impact~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.0, 222.0, 115.0, 22.0 ],
									"style" : "SDT_package",
									"text" : "prepend loadunique"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.0, 249.0, 55.0, 22.0 ],
									"style" : "SDT_package",
									"text" : "pcontrol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.0, 198.0, 111.0, 22.0 ],
									"style" : "SDT_package",
									"text" : "sprintf %s.maxhelp"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 44.0, 84.0, 163.0, 22.0 ],
									"text" : "route Impact: Friction:"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.0, 20.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 506.0, 318.740740740740762, 84.0, 24.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p launch.help"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 413.25, 67.0, 187.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "‘‘object 1–interactor–object 2’’"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 67.0, 861.0, 53.0 ],
					"style" : "SDT-comments",
					"text" : "Basic solid interaction algorithms share a common, modular structure ‘‘object 1–interactor–object 2’’    representing the interaction between two  objects and forming a bidirectional network. \nWhat comes to implementing the above structure with SDT externals, they are connected by means of unique ID addresses provided as arguments."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 53.0, 347.0, 446.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "e.g. [sdt.inertial hammer] ↔ [sdt.impact~ hammer bell] ↔ [sdt.modal bell]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 521.0, 455.481481481481524, 61.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "prefix #0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 636.337931034482835, 500.0, 158.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "<- this is an abstraction"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 402.0, 500.0, 151.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "<- look inside"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 551.25, 500.0, 84.0, 24.0 ],
					"text" : "basicFriction"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-8",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "basicFriction.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 449.337931034482835, 541.0, 389.0, 102.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-7",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "basicImpact.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 360.0, 223.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Lato",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "SDTpackage",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 259.0, 1.0, 101.0, 22.0 ],
									"style" : "SDT-comments",
									"text" : "resonator"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 107.0, 1.0, 101.0, 22.0 ],
									"style" : "SDT-comments",
									"text" : "interactor"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1.0, 1.0, 101.0, 22.0 ],
									"style" : "SDT-comments",
									"text" : "resonator"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 107.0, 75.0, 143.0, 22.0 ],
									"style" : "SDT-comments",
									"text" : "connection established"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 259.0, 75.0, 101.0, 22.0 ],
									"style" : "SDT-comments",
									"text" : "ID is #0res_2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1.0, 75.0, 101.0, 22.0 ],
									"style" : "SDT-comments",
									"text" : "ID is #0res_1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1.0, 23.0, 78.0, 37.0 ],
									"text" : "sdt.inertial #0res_1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 107.0, 23.0, 110.0, 52.0 ],
									"text" : "sdt.impact~ #0res_1 #0res_2 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 259.0, 23.0, 86.0, 37.0 ],
									"text" : "sdt.modal #0res_2 1 1"
								}

							}
 ],
						"lines" : [  ],
						"styles" : [ 							{
								"name" : "SDT-comments",
								"default" : 								{
									"fontsize" : [ 13.0 ],
									"fontname" : [ "Lato" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "SDTpackage",
								"default" : 								{
									"fontsize" : [ 12.0 ],
									"fontname" : [ "Lato" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 15.0, 541.0, 389.0, 102.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 215.0, 260.0, 495.0, 365.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Lato",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "SDT-comments",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 129.0, 316.0, 80.0, 24.0 ],
									"text" : "basicFriction"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 316.0, 80.0, 24.0 ],
									"text" : "basicFriction"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 263.0, 18.0, 184.0, 22.0 ],
									"style" : "SDT-comments",
									"text" : "abstraction loaded in bpatcher"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 129.0, 18.0, 91.0, 24.0 ],
									"text" : "basicImpact"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-2",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "basicImpact.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 20.0, 176.0, 389.0, 102.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-7",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "basicImpact.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 20.0, 61.0, 389.0, 102.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 18.0, 80.0, 24.0 ],
									"text" : "basicImpact"
								}

							}
 ],
						"lines" : [  ],
						"styles" : [ 							{
								"name" : "SDT-comments",
								"default" : 								{
									"fontsize" : [ 13.0 ],
									"fontname" : [ "Lato" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "SDT_package",
								"default" : 								{
									"fontname" : [ "Lato" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "SDTpackage",
								"default" : 								{
									"fontsize" : [ 12.0 ],
									"fontname" : [ "Lato" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 281.0, 500.0, 123.0, 24.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontname" : "Lato",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"style" : "SDT-comments",
						"tags" : ""
					}
,
					"text" : "p multiplesImpacts"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 499.0, 158.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "<- this is an abstraction"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 499.0, 83.0, 24.0 ],
					"text" : "basicImpact"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 394.481481481481524, 862.0, 100.0 ],
					"style" : "SDT-comments",
					"text" : "Each instance of solid basic interactions is required to have unique IDs.\nIn case of duplicate IDs, a warning is displayed in the Max console and the respective externals are disabled.\n\n\nTo load multiple instances of solids interactions either use the [poly~] method or put the prefix #0    before the objects' names and save the configuration as an abstraction:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 506.0, 261.740740740740762, 51.0, 23.0 ],
					"style" : "SDTpackage",
					"text" : "Friction:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 510.0, 200.740740740740762, 47.0, 23.0 ],
					"style" : "SDTpackage",
					"text" : "Impact:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 557.337931034482835, 200.740740740740762, 320.0, 100.0 ],
					"style" : "SDT-comments",
					"text" : "Simulates two objects colliding (e.g. a hammer and a bell).\n\n\nSimulates one object rubbing against another one (e.g. a singing glass, or squeaky hinges)."
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"data" : [ 101584, "png", "IBkSG0fBZn....PCIgDQRA..HP...PfBHX....P22oCV....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6cmGeeUUm+3+cZZSZaZaRWRS2WRaZK6EEkMAb.QEQE+N5fKnCpiCiKyLN+blw0Qw0YTwccbCEWQQVEWPAEnrVn.EYqz8lt2zzjz0z1r74yu+.KSaSt26mzVZgKOe93A+Q+bN2y874StexiVNuNuOkUrXwhA..........4J86H8D..........fC8DH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbn9ejdB....7rY+ue2ePzQGclX6UVYkw68e5cdXbFAGd8Ku5qK1vF1XhseQu42PL5Zq8v3L5.ysMm6JdjG8wSr8y4u4Lii+3NlCiyH....3YdBD....PBZt4MEy4Nt6T6yrl4LNLMafC+JTnPbS2zsD6Z26tWau7xKOduu6+gCyypCLy4Ntq3IW3hSr8y6UbNGFmM....vgGBD....PBV5xVQl8Y5Su9CCyjCcdfG7giVaqsDa+jeQuvnlZp9v3LhmMaMqccIFFfHhXhSbBQkUTwgwYzAltKTHV9JZLw16W+5WL0oNkCSylCLqa8aHdrGeAI19DF+3hi4nm0gwYD....OWf.A....jfkrrkmYel9zdtUf.t7q3mDs01lSr8S4EeRGFmM7rcKYoo+cfFdNRfXV8pWar6c2QhsOomCDrg63ttm35ugeahs+VdSuAAB....fdneGom.....Oa0xJg.Azvzm5ggYxgFs1ZaoFFfQMxQDUW8vNLNi3Y6VZFeG34JAhYIKcYo19yEpzGKe4MlZ6SaZO242EA...vgOBD....PunPgBYt.bCaXCMFcs0d3YBcHPZkL8Hhn95sfhruxJP.OWoBAjUkN34BAaXYKO8ivjoM0obXYd....vysHP.....8h0t10m5YmdDO2XQD2aKcYYrfhBD.6kc2QGwpV0ZRr8AMnAFiebi8v3L5.2RynBA7r8fMrwlaN1111dhsOl5FcTUUUcXbFA...vyUHP.....8hkTBGW.OWnLiu2xbGFW+TN7LQ34DVQiqLJTnPhsOs5mZzu98r++2JryctyXMqccI19.qrxXBiebGFmQ8cKaYMlZ6ptG....jjm8+ubG...3HfrJU5QDQCOGqBAj0QfP8BD.6kklQY1eZOG44+ks7FihEKlX60W+TdVevFDlG....NP8r6+Eu....Ggj0YNdDQLso8bmckayapkXqaaaI19nGcswPGxPNLNi3Y6x56.y34HUHirp1GOWHXCKKiv7339....fjz+izS....fmsoiN5HV8pS9rSOhm5L69P8BnWnPgnkVZMZssMGss4MGCn+8OpqtQG0V6nhJqnhCpw9v4NLdqacaQqs0VzZqsEczYmQcit1XLiotXPCbfGxtGGH1111drwl2Tz7l1TDQDCopphoN0IGUM3AePO1aYKaMZo01h1ZqsnyN6Lps1Zi5FcswPFxyLmq6EKV7o+btsMukn81aOF7fGbLjppJFxPpJFdMUGCZPC5f5djUUxX5GAVH8hEK9zeV2RqsFQwhwHG4HS8y5ktzkk5XdfVoO5t6tiMuksFs0VaQasskniN6LFRUCNpppphgNjphgO7ZhJNH+daDO064kuhFSr8xJqrn9oN4C56SDQzcgBwV2xVe5eGzt28tippppXHUM3XHCYHwvqo5nxJq7Px8B...fCODH....f8SiqbUQ2c2cp8IscUbaadyw0cC+1Da+jdAyNl8IbbO8edAKbQw8bu2eb+y6Aisrks1qWSsiZTwE7ZeUwK6rOqn7xKO041s7mu8XU6WfFVQJKnXDQzTSMG+fezOqGu9E95ecwvF1PS8ZiHhEujkE288dew8N26Ow2C0Tc0wXFScwXG6XhWxocxwwebGSliau42+GtkX8anoDuGug+1W6S+m2xV1Zbay4Ni+7sNmXiMuodz+uxk841m.AbUWyMDae6auWG6QW6nhW6q97d5+bSar43tum4Fy89lWrxU06AHYvCdvwYdFmV7282dAkzmioo4l2Tb62wcG288L2noM1bTnPgD6aYkUVL8oUebBmvwFy93OtX5Su9n79PYweqacawF2XyI19HGwHhQLhg2ml+GnJTnP7HO5iG21bty3gl+iDc1Ym8nOkUVYwwbzGUbFujSMNqy3z1muijUkNX58gJcvJZbkwsMm6Jl27dvnsMukTOJBFv.FPbTyZFwrOgiKl8webwDm33yb7abkqN9y21b1mWqiN5HZu81S89bkW001iWe1G+wFmzK7Dy7dtl0tt31t86Ll68+.QqszZTHk2SkWd4wrlYCwIbBGWL6i+XioL4IEkUVYYdO....3HGAB....X+TJGW.MjxhHtvEtj3lukaMw1m8werQDQzRKsF+fezOMdvG5uj48q4Mso3GbE+z3O7G+Sw+768RhomxwUvMbi+tXSapkLGy81xWQi8XWHOnAMv3cdwWTpW2hV7RiK+G9iSbAw2aadKaI17V1RrvEs331mycFiebiMdqWzaLNoWvr6Sy0q+F9sId7GbpmxKNh3o1U0W6M7ahq65+MIFtiANvAFiebi8o+y6ZW6Ntga32j3BhdNm8KMhHhN6ry3590+t3Wei+tLCNR6s2d7Gu4+bbG248DusK5MFm647RS+MWuXdO37i+3sbqwi+3KH0EfduUrXwXIKcYwRV5xhq85twXhSbBw+4G3eIF6Xpqjt9klUEk3vzwkwcbW2a7KtpqIZs01RseEKVLd7mXAwi+DKH9y25bh2++x6Npaz0FszRqQass4DutZpt5n1QMxTG6BEJD+oacNwe91tinwFWYIO26ryNiG8wdh3QermH9owUEufS7Dh+022kDUUUxUMhG3AenT+cG8lN5nid8ZNpYMyTuta+Ntq3OeqyIV7RRuBJr25t6timXAKLdhErv3W7Kul3nOpYEef2+6Mpt5g0mly....b3Sou8.....ddhktrzWLzHRubom0ho1PCSKl2C7Pw+1+wGsjBCvdasqa8wW+a9chc2QG8Z6szZa84v.jjFl9zh9kvtJem6ZWwkeE+z3i+I+bkTX.5MqccqO9BW1WK9A+neVzUWcURWSyMuoDCCPDQLyYL8Xm6ZWwW5q9Miq9ZtgTWv9oU+T1m2eKuwFSc2QOyYLsXiM2b7e7g+Dw0c82XlgAXusycty3G7C+IkzyV6sq85+Mwk8k+Fwi8XOQIGFfdypW8ZhOzG8SFO3C8vkT+W5gvcU+AhcricDe0uw2I9Ve6uelgAX+sjktr3C9QtznkVZMVRFGW.Se5oGrgt5pq3q8M+twO3J9o8ov.zal+C+HwG5i9IiFW4pRrOKbQK4f5dr2l0LanWe8BEJDe2K+GGe6u6OrOEFfdyBdxEFevOxmHVzhW5A03....vybDH....f8yxx3rSu7xKOl5TlzAz0Ol5FcrnEuz3q70+1wt10tNfleanoMF+pq95601V3hV7AzX1aRZAE2wN1Q7o+reg3V9S21A0hTuG27sbqwUes+5RpuYsf5ybFSO9RekuYLuGX9YNV6+w9vxxXrG9vGd7I+zegXcqa8YOQ6EEJVL91eueXIG9gexO+phe00z6+b9.wN24NiuvW5qG2ybu+L66Ry36.oUgLNX0RKsF+me3KMt2RXdlj1au83J9I+7XIY7yzzB1yt6ni3K9k+Fwbuu4c.OO1eMswliO1G+yDMtxU2i15tPgC5EneOF0nFYLxd4Hcnqt5J95equWbq62wRvAiVaaywk9o+ehmbgG59cO....bni.A....rW1912QhmO86wjmzDiJpnhdsshEK1iRu+dqiN6L9Jes+29ztKu2byIrX7GJ2gwyrWBDv129NhO8m6x5y6z8rbi+leeIsKiSq5KTQEUDqbUqIdzG6IJo6YC6WYuOq2Se+K+GGMuoMURicRV8pWSIsvoe+e3OI9c+9+3A08JIW0Ue8Q2EJjZeRKP.kUVYwzp+YliLfss8sGe1+muzA8myQDw7df4G21scGo1mjBDPmc0U749e9RwC+WdzC54w9qiN6Ltta3F6wqupUs5C3PBs+l4L542cKTnPbYeku4AUPKRR2c2cb0W6MbHebA...3fW+OROA....d1jkkQ49OhzO+zW25Verycl7h5kV4Ou7xKujCJPGczQroVZsGm+4c2c2wrl4L1mWasqacw1111Sbrl3DmPT0fGbOd8YL8ouO+4hEKFeou52L0.OrG8qrxh5pazw3F2XiVZssXMqYsoty3KTrX7s91e+3x97elXfCrxD6WZUegZpo53J+kWclys8X+K68YUYHRZQp6e+6eIuq+i3oNpDNti8nSr8Et3kD+o+7sm5XLwIL937dkmabzG0LiQW6nhnrxhVassX9O7iD2ze7OEaHkPsrgMzTr5UulXJSt2qxEMswlS84kIL9wECZfCL042Aht5pq3y+E+pwZV65xrukWd4Qc0M5XL0M5Xm6bmwpWyZisu8czi9s8czyWauM8D9t7e9VmSlA23XN5YEuxW94D0W+ThQNhQDc0UWQSar4XdOv7ie+Mcyodum2CL+nPgB6yQVQKs1VO9t6N1wNhUul0l33LrgNzXbiar830ewunWPOds6YtyKl+C+Ho9dZFMLs3U9JdYQCSeZwnF4HhBEJDM27lhG3gd332eS2Rr4srkDu1G+IdxXGs2du96R....3HGAB....XujUoROhzKW5Kc4MVx2qgTUUw4b1mULiYL8XlML8XnCcHw5W+Fha728GiaeN2YlW+5V256Qf.tj+gKtG86C+w9Tot.uev+8+0XL0M5Lue+ga9OGOwBVXp8Yriot3heau433N1idephBc0UWwSrfEFe8u02Mw4xFZZiwO6W7qh+w24eeu1dVUegMtwly78vdTS0UGiZj+ee1sssu8no9v0eVm4oGGyQOqXFML8XbicLwV211h4bm2SbcW+uI14N2YpW65V+FRs8e00j9Ns9U7xOm3e3s+VixJqr840qaz0Fm2q3kEm4K4Ti+6uvWMV7RRthKzRKslXf.VxRSur0u+Ao3Pke+e3Vxrj4Wd4kGu7y8riW2q4UEiX+JI9MtxUEeiu02K0EPeuM1wTWTUUU0iWuyN6Lt9e8uMwqqrxJKtj20aOdYm8Y0i41jl3DhIMwIDm9o9hiO0m8KFszZq85XTnPgXKaYqwvGdMO8qcRufYGmzKX16S+t4+zsE+fq3ml3b4bN6yJdKuo2PhsuGEKVLycv+a8hdiwE7pOud75ie7iKF+3GW7RN8SI9ze1uXpUPkVaoMAB....3YYDH....f8RoTJ7S6bGuTpv.QDQ8ScJw+w+e+yQs0Np840G+3GW7d+mdmwHG4viq855YYEeusoVZIy6Smc0Uz3JWUhsOjpppjBCv52PSwU9KulT6yq4Uedwa9M95iAz+d9O0r+8u+wIb7Ga749T+Ww+0k94hstss0qiwblycEW7a8M0qGICqa8aH0puv9aLiotXVyrgXZ0O0n9oNkntQWarkst0XcqeCwt10t2m9t7RLHGCopph+k22kDufS7D1mWu5gMr3Bd0mWLqYzPboe5+mTqzCaZSI+ysczd6wS7DOYhseRuvYGuq2waK04XUUUU7ZN+WQ7k+ZIGHfclRooOqPwzvzmVpsefn0VaKym2iHh2264cEmwoep8ZaSYxSJ97etKM9be9ubrfmbQYNVIErgEujkEadyIuS3eC+sWPOBCv9aricLwYdFmVbC23uKw9rycsqX3I15SIqeVjTENX+spUulTqZDm2q7b60v.r2F0HGY7xNmWZ7ytxeUh8Ym6J8vv....vgeBD....vdIqEfafCbfw36kRz8djUYmOhHdgufYG+6+auuX.CX.I1my+U9xybARG5PGZl2qUtxUk5hSWe8SIywHhHtta32FczQGI19K4zO03u+hdiYNNicriINqy5kD+1e2enWauiN6LdhErv3Dm8w2i1JkvZrGm+q5UDus2xEFkWd46yqWc0CKlzDmPOG6RHHGCe30De1O0GKFcs0lXel4LldL8oUernEujD6yPG5PRrsEtvEGEKVLw1eEm64j47Lhr2E+iZ+prD6sktzz+rnTWD59hewu55hcs6cmZed6+8ukDCCvdTQEUDusK5MFej+qOcl2yjB1yBVXxgInekUVbtmyKMywNhr+YvHG4HxbLVVFOyOsTBmzdKq.R7JN2ytjFmLetZjI+bE....GYHP.....+UszRqotyfiHhoU+T1my868V2c2crhFSd23GQDCdvCNd2+iuiTCCPDQTYk8bGxu+lv3GWl8YIKM8.JLs5ydwc27l2RbO268kX6iabiMdOWx6HywYONyWxokXf.hHRLP.kR0WnhJpHd2Wx6LNiS+TJ44SDYuvqQDw67s+VSML.O8bHie1k1O2lxjmT7o9DejDaeVyrgLu+QDwStvEmZ60kv6it6t6XEobrLTQEUzqAp3fwNZu83dm68mZedcWv4Gm+48xKowa5Sq93nl0Lx7yfjpzAm1I+hhi4nlUu1VEULf8oL+mlzt+0Tc0Qk8RUvXusycsqXMqccIOF0TcLxQjUMF3oL6S33R74pxKu7TC4zdKs2S8u+8uj+rA...fCeDH....f+pkTB6t+zNt.V0pWSzYmcl50+VeKWXTSMUm48okVaK01GXkUVRk5+rVD8RY2d+GukaM5pqtRr8W2q8760R7eRF6XqK01aayatWe8Ro5Kbwus2beNL.kxXeRuvYGmxK9jJowpkV58yM98XpSYxI11HG4HJocNdZ14t1Uba29ckX68u+8OwmAW0pWSzQJOCW+TmbOp5BGrt24NuT+dyPppp3Be8ut9zXN9wOtTW75xKu7XJSdhIdsie78oaWOzZqsE228MuDae+OpP5MqXEqL0pEQoDlm8XriotXriI8u2kksr0sF2y8L2Dau1QMxnrxJ6f5d....vgdBD....veUoTR5SqjYm00O7gWSlm836QZ6L3HhXJSYxIVoB1m4TVUHfRnjie+y6ASrsAO3AGSYxSLV8pWaliydqhALfDW34st0s0iWqTp9BSbBiONmR7y28Vqs1VzZa8dHD1i2veaosfzc0UWQSMswT6yTmZxAB3.0t10ti0s90GO1S7jwu42bSwV2VO+LbORagay5Y3RsD02WbG248jZ6m0Yc5YVQM1eYEVloL4I0mGyrrssu8XcqaCw8MuGLt4a4VSMjCkRf.xJfRS6Yfitg82NZu8XcqaCwCN+GNtoa5VR8XcnTdOA...vgeBD....veUorCzSpLiGQ16F+S9EeRk7NnckqZ0o1dornxs29Ni0s9MjX6kRIGeyadKoFNg1au83C9QtzLmK8E6tWVzwRo5K71+6eKQ4kPHI1eKa4MlZ6it1QESq9oTRi0ZV65it6t6DautQWaT0fGbeX18TJTnPr50r1Xsqa8Qass4nkVaKZqsMGs1ZaQSMswnkVSupDr2FeJGYAYcDSj1y+GH1cGcDKYoKK09btm8KsOOtEJTH01SKXOIoyt5JVwJVYzzF2Xz5e8y91ZqsnkVZK1vFZJ0PXr+lv3ytD8m0uOZ58gJDPR1SPa1PSM0imq1vFZJ17VR+HTYuk1yU....bji.A....DO0BHl0B5O7gWSpKfdVmC8m5I+hJ44yxyXtzPIrflKeEMdPWxwehmbgY1mC0pt5dVN6yZmqOwIL933Oti4.59szkm9Budx8getk4QzPeXgnexEt3XAKbQwhVzRhEs3kFs2d6k70llYLiomXaKMiEgtgoencWouhFWYpKd+LmQCGPKzbSar4TaOsi9i8nyt5JdrGeAwBW3hiEtnEGKcYqHyPoTplQCI+yf8XoKMip0vAPf.5tPg3we7EDO4hVRrnEs3XIKcYwt2cG84wo2LyTdtB...fibDH....fHh0s9MD6bm6J09j1hHt6N5HV0pWShsWYkUDyblMTxymrV.7RYAMOTTxwW9JVYl84PsgO7Z5wqk0Bsehm3Ib.e+x5y5YeBGaIOVYFHfR3maMtxUE+vezOOV3hVbIee6KlQB6x+ctqcEqcMIezOTc0CKFcs0dHctjUHZpuDqLC6ulZJ8.AzPFO6O+G9QhezO8WDaXCMc.c+yRVACYKacqQyaZSI1dsiZTwvF1P6S2yGeAOYbE+3qLVcJ+dpCFI8bE....GYIP.....Q1KJbDouXtM13pRcmNW+TmRIWN62SI6NICopphwNl5xbbxZwVKkRN9V25VyrOGpM7Z5YEBHq2KuvCh.AjU0XnurSry7y7TVH3su8cD+he00F25sNmnPJU1gzLtwM1niN5H1zlZoWaue8qewzSXwvW9xaL066AxNROKqNk.HDwScbMbfXiabiI11fFzfhwMtduj82TSaLthexUFy+gejCn6aDQLiFlVrpUu1XW6p2CXzDmv3x7XiHqmiJkv7rGszZawO4m8Kh4deOPIeM6u5m5Thl2zlhssss2qsWSMUG0d.9yJ....dlk.A....DYWpziHhomR4ROqquT1Y3+eiUF6Z5Rbw.WZFmG7kxB7t0sl74hdYkUVut38GrpqtQuO+4rp9BCZPC7.tbk2TSaL1912QhsOtwM1LW718nyN6LV4pVchs2u90uXpSYx8ZaEJTH9xesuU73OwSVR2qALfAD0Tc0QM0Lrn5pGVL4IMo3TOkWTL4IMw387O+AR75lzjlPTYkU1qsk4yv8gi6fRUZe1GwAVf.V65VerwlSd20Os5mZTVYk0qykO4m4yGapkVKo6y.qrxnlgWST8vdpeFLqY1PbpmxKJFv.FP7t9m9WS75l9zy9Y0rptGIEpi82t28tiO6+8kEqYsqqj5ekUVQTS0UGU+We1Z5Sq93zNkWbTyvqIdGuq2WhW2LZP0A....3YqDH....fH6EOOhzW.8Ckmc7Ycl12PIDtf117liVZM4E1rTK436XGIet0WasiJ9e+5WVliwAqrp9BSaZ0GkWd4GPi8RyrD+W56D6Uz3pht6t6DaeRSZBQkUTQu110+q+coFFf9UVYwIdhmPbVmwoGScpSNFcsiJ5WuTwIVyZWWpKncZmc8YEHfFdFnjvuicjdf.F0nFYedL+S25bRs8FR36hemu+OL0O6pnhJhS+zN43zNkWbLwINgXjiX38Z+ty69dS89OyYj8miYVg.Jwp0vO7GekoFFf92+9Gm7K9jhy3zOkXRSZhQsI7487+KOZzYmcl33j1yU....bjk.A....OuWmc1Yz3JWUp8IqcJdVKfWorH96QVUHfRIbAGpJ43CZPCLw1JV3.qr12Wkc0W3.uT1m4m08getkYnPRXrV3hWRbMW6Mj30MnAMv3i+Q+fItP16sGZ9+kTaOscxcVghoTNhI5q1dJANIhzCjRuoiN5Hti63tSsO812et4+zsEy6AlehWyXpazwm5S7QhQjPH.1aOz7S+3FXFkPEBHqu+V+TmRliw8L24E29btyDae3Cul3SeoezXL6WE4n2j0yUMnBA....7rVk1AXI...PN1JW0pScmcGQ5K57NZu8XcqeCI19vF1P6Smu1K+PP3BxdgtKsE2cnCcHI1VKszRp6Z3CUxZg16KgsnGicl6J99RPNNvN1Hty65diBESNbE+Ku2+oRddb22y8kZ6IsStaayaN0cG+XGScwPFRUkzbnuHqpTQZeup2L26+AhsmQUGn2ddYN2wckX+6WYkEehO1GrjBCvN20thG7gd3DaePCZPwDlv3RcL1XyMGacaIeTcLtwM1XvCdPYNWR68TDQ7Q+P+6kTX.5t6ti669dfDau7xKujqXA....b3mJD....77dKoDNt.Rqbou7k2XpWaeYWl2TSaL0EzbTiZjQ0UOrLGmrNCxK0JDvvGdxKBZghEi0r10EScJStjFqczd6w23a88hN5n2CQPEULf3C79eu83LtOqcKce4y28VgBEhUrhUlX6kWd4wjm7jJ4wKypDQBKpeiMl9bX1mvwVR2+UtpUmZktXnCcHwXGSc8ZaY9YbeHXD8EiebiMdzG8wSr8E7jKJdEm6YWRiUyMuo3m+Kt5T6yHFwvigO7Z1mWq6BEhUsp0j30LoIMwRNPO228+fQGczQhs2vzqOJqrxRcLVxROzbbArhTdtZTibDwTl7DKow4g+KOZpATXJSdhIdTX....vQdpP....vy6k0N6NhzWz4CkmC8YsP9k5heu7LlS0Uaskz3bLG0LSs8a3F+ckz3DQDW9O7mDy+gej3wehEzq+Wc0M5dDFfrp9BCe30TR6b6dyZW65ics6cmX6SYxSJFP+Ksbz2d66LV65VehsOvJqLlv364NCu6BEhUtxUm30MwINgX.CX.Yd+KVrXbE+3edp8IsPsj0ycocsGLF2XGSpsO26adwpVcxKV+drssu83y94+xwl27VRse812eV2ZWezQJU5h5qeJYd+i3odV8p9UWap8ogDpPC6srpZEidzY+c21ZaywV1xVSr85KwPEzQGcD+ze9UkZel9yPOa....vgFBD....77dYUd86e+6eL4T1MsYs368kcvdlk5+RXmZuoVZI196z+pI...H.jDQAQ01Suro2XJKB8d6nOpYEkWd4I19buuGHti65dxbb9w+reYbO268mX6UVYEwe6E7p6wqm1N3OhC7pCPDkPPN5C6J9kuhFSs85qeJQ+5WO+mf2byaJ0EidSaZSQwTNNA1i+3sbqwBdxEkZelwLRdwnypJYbv74bZF23ROP.EKVL9dW9OJ15VSdGp2QGcDegK6qGqKk.YrG81OSW8ZWapWyF23lxbbiHhexO6WFs11lSsOyrgrW77UjRUdHhHVYFsGQI7dp4lybLhHhe4Ue8w52PSo1mYlxyU....bjmiL....3401Q6sm4BIN0oj9NE+Pwh3uGYV14KgEls4laIy9789A+nnoMtwn1QMpniN6LZu81iwT2niS3322xS+.GXkwK6bdowMeK2Zhi025ae4w8OuGJdyW3qOF23GaT9ecguKVrXrrkuh3mckWcrfmbgoNeNuW44F0TS0830yp5MTpG8A8lkcHMHGYMO68wZDCulnekUVTHgE8e6aeGwM9auo308ZO+ds8N6ry3JupqM982zMm4bbFIrStKVrXpgZo+8u+wTlRoezIzWL4INwn7xKO5t6tSrOKdIKK9PezKMtj20aONpYMyXfC7ophDcWnPbe2+CFWy0dCoVcF1a812epcToeb.7jKbQw7e3GIdAm3Izqsu0sts3678uh3AenGN66eIra52zlR+6uO3C8vw28x+wwwebGczuxJK1Q66L10t1Ub9m2K+o6SVumZrwUE288dewK4zNkds81aemwkeE+z3tum4l47Momq....3YGDH....340V9xaLy9jzh4FQDaYKaM0EvqtQWaLzgLjRZtzcgBwJZL44S+Jqrn9oNkLGmRoDyuksr03m7y9k6yqcwus2bOBDPDQbQu4+tX9y+Qhl2Tx6T5G3Ame7.O37ixKu7Xz0NpXvCdPYVR92iZpo53Bd0updssrVz9RIfDIIqRydC8gvFbfNOqnhJhwO9wEqdMIuituxe40DKbQKINm+lyJlv3GaDkUVzXiqJVwJWU7fO3CEqdMqqjliSYx89h5u9MzTriczdJW2DK4iNg9ppqdXwq4U+Jie8M96SseapkVi+6uvWI5WYkEieBiO5t6tilZZioFjf8WYkUVLsdo7+OoIMgTCkQ2c2c7E+xei3LOiSONiS+ThwT2ni124NiFW4phUz3Ji64du+LOpBhHhQMxQDCYHUkY+Jku+dq21bha81lyS+mm3Dmv9DHfwT2niAMnAF6bm6Jww3a9s9dwCM+GINqy7ziwNl5hN5ni+56oUEy89lWlASHhHF3.GXTWciNy9A...vQNBD....77ZYsytiH8cJdl6x79P0AXsqccwt2cGI193mv3e5cGcZl7jlPl655dyLR37MePCbfw69RdGwm4+9xxbL5t6tyrDiu2po5piO4G+Cm3BklU0Wn2Vf2RQmc0UpGaBCZPCJF23FaIOdGLUIhi4XNpTCDPDQ7Py+uDOz7+Kk77Y+MzgNjXnCs2ClRVGW.oEHlCEdC++dswce2yM1TKslYeKTrXr5Uuldss92+9Gc2c2IdDKLgwO1XPCZP830qrhJhFZX5whV7RR791c2cG29bty31mycl4bLIk5yS0O0oj36wjr+e2srxJKN5iZVo9LSghEi69dlaIUE.Rx3y3He....fi754AXH...vyiTJABngTVL2LWH39vhodn5bbe.CX.wDm3DJ46aDO0hoN0oN4Da+3OtiINmy9r5SiYVpt5gEW5G+CEiOgEJMqpuvXGScQUUk8Ntt2rpUslnqt5Jw1mV8SMJqrxJowJq4YMUWcT6nFYhs+luvWeL5QWaIcuRx.G3.i9mxt3eXCcnI1VVeGnTJy8GLprxJiK9s8lOnGm2za70mXX.hH8fM7dtj2QTQEUbPc+S6y3HhXXCaXkz3bfDxkYzPO+Yz65c91hppZv84wZuk06oglQ6....bjm.A....OuVVKneUUM3XriotDa+PYEBHyxNeeXrt325aJpnDJ836wTmxjyrrv+Nu3KJNmy9kVxiYZpaz0FW5+0GJlv3GWh84P4ms6urVD7oO8R+3BHqwZZYbzCL3AOn38+O+tixKu7R9dt2polpiO8k9QhA2K6988X.orX2YdzIbP74bo5TN4WT71+6eKGvKJ+49x9ahImQHXRKPMie7iKdGW7Ec.cui3o1U+ejOzGH09TQEk12Geom4o2mCgQuEHfQMxQFu6+w2QeZb1aiabiM9jehObp84fMDE....7LOAB....ddqVassn0VaK09j0NEOsECte8qewTmRx65982xxHbB8kEl8XOliJ9P+m+akzYVdDQLiYj8BPVQEUDu6+w2d7Ad+uuXhSH4ExOMML8oEef2+6K95e0uPLwIL9T66gxpuv9KyvWzGF6kdHHHGyngoEW1+ymNl8Ibbk78sekUVbVm4KI97etOYlOms4Mu4d806rqthUz3pR75FRUUkZfXNT57OuWd7U9he13nOpYUxWSUUM3389teWwk7ObwwhWxxRsuY8ygW1YeVwG+i8eFSdRSrju+CrxJi+eWvqN9jehObL7ZpN09t4MukRZLGzfFT7w9H+6k7mCCdvCNwprwobxun3y7o9X8oe2w.Fv.hy+U8xiO2m5+JFcsiJ09lzyU....7rGkULs5oG...PNVyMuo3Ntq6M09L8oWeL6i+X6015niNheyu6Ol30NjgTU7Je4mSIOe90+leezUWc2qsUVYQ75dsmeedWj2UWcEy+u7nwbuuGH13FaN1xV1Rz9N2YLf92+X.CX.QUUUULrgMz3Bdsup3XO5ipjG2hEKFOxi8Dwi+DOYr90ugX8anonoMzTzQmc9z8YfUVYLhQNhXjibDwnqs13kdVmdLqYzPIeOl2C7PwpV8ZSr8y3zOknt5FcIOd6sa+Nt6nkTNy5eEm6YGCcnCojFq6edOTr50j777TO4SJFeJUBg82e4Qdr31lycFqe8MEqeCaH18t63oaqekUVL8oWebbG2wFm0K4TiwN1+uyv8e6McyQG6d2INtutK3UGk2u8ceArssu83lukaKwqYjib3weyYcFk7b+PghEKF24cO23IW3hh0rl0EqcsqK19N1wS2d4kWdLyYzPbxu3WXb5m1IGU+WKE+227dvXMqYc85XVVYQbAulWUpGqB6QgBEha+Nt63AenGNV252PzTSaL5t6+uuWVw.FPLqYMi3DN9iMNqy7ze56e6suy3Oby+oDG2gMrgEm647RKkOBdZqZ0qIty65diks7FisrksDaYqaMJqrxhJFPEw.GXkwPG5PiYMqFh27E95ScbJVrXb2268G228Ou+52W239bjYTd4kGyZlM7TumNiSOFwHFdDwS86Otwe6Mk33NvANv37OuWde58D....GdIP.....bHQwhEiM0RqwN24NiQNhgGUUUoUcBHYEKVLZs01hss8sGCanCMpt5gc.ezB7bYadyaI17V1ZTS0CKF1vFZzu9c3qfG1cgBQyMuonyN5LFV0CMF5PFxg06+yDJTnPz7lZI10t1UT8vFVLzgMzdDVD....xGDH..........fbHw+F.........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbn9ejdB.....DwUcMW897meS+cW3QnYB....PdgJD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PkUrXwhGomD...O2zUcMW8Q5o....4Ruo+tK7H8T...HGPEB..........HGRf...........xgDH..........fbn9ejdB...je3bNE..fCLW00b0GomB...4PpP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNT+Obci5pPwXwar6XgM0crp15NZZaEi12cwX2cULJd3ZR..PLfxKKFz.hXjU0uXr0zuXFipewQO1ADUOvxNRO0.HhHhhEKFs83+knk6+ths73Obz9pVdzYaaJ5dW6HhB9WO..OKP+JKJefUECX3iJF7jpOp9XOwXjm7YDC+XmcTVY96UCbjUGcULdhMzc7jM0Url1JDMu8BQ6cFQWc6uKM.vQRU1+xhgTYYQcCsrXpip73nqq7XZip7mw+2P7Ldf.ZYGcG+oE0YLuF6J1QG9Kb..bjVmcWL5r6H15t5NVQKcG26xhnrx1cLqQWdbVMTQL6w+L+eAD.5M6dysEq5W8ii08au5X2MutizSG.fjUnXzc6aO5t8sG6ZsMFsN2aKVwk+kiJqcbw3dMWXLo23aOprlgejdVB77LMu8ti+3B6LdvF6J1UW9+EO.vy1r6tdpMKeK6HhErgtie+iGwvGb+hyXZ8ON6FpHFTEOy7+W9mwBDvt5rXbCO1ti6ZocFcW3Yp6B..GJTrXDOYScGOYS6LFa08KtvSrx3nGygsBIDvyy0cG6NV9O96Dq7J+NQgcsqizSG.fCX6t40Eq3J9ZwJ+Ee2XxWz6Ip+s+d9+m8tuiOppR+ii+cRkPBsPulDB0HcDCXAUrfBpKq8JVPwxpq5phKXCW6UrsJprrpnHh.BpfJHEYQPP58RJTBIgDHARHjdle+A+PIgYl6YlLSlT9790K9iLy4dtmjbCy4dtOmmGEXHg5uGV.nVtBJ1tl8lJT+xtJlDpE..PMLYerxz2tohzB1dw5x6YH576TvJf.7tAFfOYk92YFknIshBzQxmYe...TSSZGoL81KIeEezAqar+gp5ELYK..36bjsuYsgwdepfT2i+dn...30TVAEnj+OSPo8CyR89kde0nt0C+8PB.0Rk7gJUezxKPYkG6JO..fZxxuX6Z5qsPsl8VhtyyLLEY88dqKuWOf.VxtJRe0ZKzgQhX8Cwl5S6BRcqEAp10j.Tj0O.EZPRAPZIF..nJSgkXW4VXYJ8brqDOXoZi6uDkxgO0ENXk6tXk7gJUOvfqmZQCBzOLRAPscoL2Yos8hiQ1Ko3S48BHjPUSGzPTjwOX0nt2CU+11AEbDMP1Bj++H..3+YuzRUwGMWcr8uGcjssEk0JWpNzJVjJqnBKW6JH08nUMpQntOtWUsa3WoeZzBfZqVWJknIs77UINHV.ZX8ro90gfT2aYPpsMxlZT8BPgDDqCO..f+hc61UAkHcn7JS6IqR0VRuTsw8WpJtzx+P0S7fkpW7mxS2+4FlhNRuy5fYytc6dssw+OssB0r1PQmxq2zvCPC+zBVwGUvJn.YRG...U2ruCWp9wsVjVydKQUbhAQDpM8fmeXpCMlGBGNUS6qmd495q+ZtV+zHA0zjzTmjR3setS40CpgMQQcK2ih5ptYET3Q3GFY...dlRx6nZOy7y0dlxDUI4j8o79c9gdZEyMLJ+vHC0Tvbqg6XcoTh9veMeUwU2uogGfthdFhNiNDjWOcCC...uq7K1tVztJRyeqEqBJo7endnAYSO74GlhooU90kOfJcO7+a4IWjCCFfKp6gnwOr5qypigPv....TMU6abf5tNyvzieQ0WstQke5AGsP65sWb9JibK0OM5.PsM6cNS2gACPqtrqSmyrVphcj2CAC...pwInviPwNx6QmyrVpZ0kccmx6uq25eo8Nmo6fiD.v8j7gJUSZ4mZv.b1wFrF+vpuFXzd+ZOL...79BKXaZ3wEp9WCOb0kVT9G7egkXWu6ujuNXdU90k2qDP.68vkpO+2KeJQK3.so66bBSWcuCUgPf....TiPLMMPMtKt95Lhp7UUniVnc8tKs.UPwdsDKD.piJ6MuNsiWcrk60rETv5zdl2V85odUEbCZneZjA..3cDbCZn50S8p5zdl2V1BJ3x8d63UGqxdyqyOMx.PsAETrc8QKufxUl.rYS5Z6Wn5VFP8Xs3A..pApQgYSOz4ElNutT96eHuhrqItrBTIkU4VW9Jc.ATRY10+Y4EnROoIfDT.ROv4VO061FjyOP...TsTHAZSiZPgogz0PJ2qmQtkootlBcxQA.XsRJHesww82j8RJ4OdMaAGh5ya7IpsCaD9wQF..f2WaG1HTediOobAEf8RJQabb+MURA46GGY.nlrYuoBUV4UV4dsqougpKnKg3ji....0DDX.1zMzu5oKMtx+Y56K6xzOs8SMK86NpzADvB2YQJ8bJ+DPFY70ScsEDL....0jcc8MzSISArxcWr1Z5k3ji..v0R3idKU3A1e4dsS6oeS07Ad19oQD..fuUyG3YqS6YlP4dsBOv9UBeza4mFQ.nlrLOZo5W1Uwk60N6XClfA...nVjQzqPUuaa4Ke.+vVJVGo.OOKAToBHfBJ1t9gsT9IfLvXBVwGUvN4H...PMI2xYTO05FU9oKL80UnrWwBUH.fEJHyLTJSexk60Zye8VTat3K2OMh...pZzlK9xUa9q2R4dsTl9jUAYlgeZDAfZp9wsWrN4LFbSCO.cc8KT+2.B...9D25YDlBOz+rL.Ubo107qDYIfJU.ArrjJV4eR0R3vB1ltl9vDP...psHj.soa8LpmN4JPXZGoLs98WpeaLAfZlR9K9XUVw+4MtDRSag51CLV+3HB..npS2dfwpPZZK9iutrhKRI+EerebDAfZZJpD6Z06t7YruqnmgnPBzlSNB...TSU3gZSW1oU9L.zJRpXURYd1F0qREP.KOoxmc.FRWCVQDJS.A..n1jXZZfp+cn7kNfeYWUtZVD.pawdokpz+gYTtWK5a6ATPgGteZDA..T0JnvCWQeq2e4dsz+gYH6kRf1B.yrkzKUETxe9P.ZX8roynCT1dA..ps5bhMXU+P9ym6ddEYWaKcO69G73.BH8bJU6+Hk8mcjMoyqSTqh...pM5Rhq7eF+1ynTcj7orA..ybn0tRU7gy5O95.qe3pcWw03GGQ...U8Z2e4ZUf0+OCFthObV5Pqck9wQD.pIYaGn7YGf90gfT.AvlyC..n1pfCzl5WEB9usdfp3.BXaU3D1kVDnZX8XBH...0F09FGnZWi+yoMX2tzVSuXWbD..+oC9aKsbecyN6gpfpWX9oQC..f+QP0KL0ry9hK2qUwOiD.vYRI6xJ2W28VR1A...n1t3pvm2uurphCHfDOX4OgcuUA5ocE...pAnWss7S9XmGrLmzR.fxK2cr4x80McfmieZj...3e0zAN3x80U7yHA.blLOZ4uG711H1bd...0109lT9Ou+.45YqIuGGP.U7DFSjDP....0lEayJ+m0m1gIf..fYN1dRpbecC6R28SiD...+qJ9YfGauI4jVB.TdGqBIouFUOOdo8A..PMDU7y6q37ALkGOqgrxq70M3Vz.BH...fZyZUCKezHdn7Hf..fYJI2rK2WGVqameZj...3eUwOCrjbx1IsD.....00EZPkeM4KoT6NoktlGGP.ETR4+5vCwS6I...TSPCBs7SaHeOLZDAPcOkUbQk6qCHjP8SiD...+qfpe3k6qKsfi4mFI.nllJtP9d1iC....0E4QADPAEaubQfPHAYSgDD0rH..fZypXzHVrGFMh.ntGaAT9rIl8RKwIsD..n1MaATgkhioTC.....eLOJf.p35+GHwB...............P0JdVICnBADfMBH............eiJrF71ICi....C4YAD......fopXDDypWB........Tkf.B...............nVHOJf.X+7...............T8FYH......3aUgJF.QXL........PUCBH...............fZg7JkLfJtge...............f+EYH......3iQMC.........vevyBH.RQ............UIXI3A..fmhLD...............PsPDP................0B4QAD.UL......XJa1J+cLX2dEuiB.........3KPFB...............nVHBH...............fZgnjA......eqJTx.DkL.........fpDjg................pExyBH.RQ............UIp3RvSN2B...lhLD......7wnjA.........3OP.A...............TKjGEP.Tw................pdiLD......7srU9PH1NkL.........fpDDP................0B4UJY................n5ExP......vmxFkL..........+BOKf.pv52Ug02C...........dKUbM3IFaA..fgHCA...............TKDAD...............PsPdT.AP1HB.....Fqh0XL6bGE.........UEHCA...............TKDAD...............PsPdXICn7o3SaxlSZI.....PEueAJY..........UEHCA...............TKjmEP.1qvN5gDD...........fOA4bK.7dUmnK...B.IQTPTA.3oHCA......eqSY0KY4KA........pJP.A...............TKjGEP.Ub+7PEC...............n5ExP......vGqBgPLkL.........fpDDP................0B4UBH.JY................UuPFB......9T1nhA.........3W3QADvor.djh............pRPL1B...SQFB...............nVHBH...............fZg7JAD.UL......3T1pvcLbJ0fL.........3KPFB...............nVHBH...............fZg7n.BnhI3SJY......vopXIC3TtiB.........3KPFB...............nVHOKf.HEA...........TkfjtE...7Tjg......fOFqdI........f+.AD...............PsPdT.APEC...............n5MxP......vmxVEJ3o1KiRF.........PUABH...............fZg7JkL................T8BYH......3aUgRF.gXL........PUCOKf.pv52cJquG...........7IHDaA..foHCA...............TKDAD...............PsPdT.AP5HB....np0ON+eRIjXhp3hK1eOTbeUnFiY2N2QA........PUAxP......0.b3ibDs50tFMmu+6zuulUqryNa+8PB...viUZokpcu28nedwKxeOT.....pUKH+8.......lqjRJQIlTRJwjRRQFYjpScLV0g12dETPL0d...T8Wt4lqRLojTR6NYUTQE4uGN.....054QqZXESvm1bXq.....fuTVYkkVUVYo0sg0qniJJ0oNFqZTiZj+dX4.U3NFnjA...TmRYkUl1epopDRLAcfLxveOb.....pSgsQD....PMbEWbwZWIjf1UBInl2rloX6Xrp8sqcJv.CzeOz...PcX4kWdJwjSRIkbxpfBJveOb.....pSxyBH.RQ......UKk4AOnx7fGTqc8qScL5XTrcripAMnA96gE...pinL6kozRKckPRIpzRKM+8vAnViJtD7jys...foHCA.....TKTQEUj19N2g19N2gZYKZg5Trwp11l1p.BHfp9AiMJY....01ke94e7rAPRIoike996gC.....9+Q.Af5rRN4j0fG7fsrcidziVO0S8TUAiHG6m+4eV29se6V1twMtwo68du2pfQD...po4.YjgNPFYnPCMTEaLcTcricTQDd396gErvG9gend9m+4srcSdxSVWzEcQUAiH..fxytc65.Yb.kPhIp8mZpxNA8G..bgINwIpW3EdAKa2Lm4L0YbFmQUvHxwdrG6wzzl1zrrc+xu7KpicriUAiHTSz12910RVxRzZVyZTlYloNzgNjNzgNjJrvBUiabiUjQFoZcqasFv.FfhO93Ue5SeTHgDh+dXiZo7n.BfJF.pMXUqZUJkTRwx1EarwVELZbtktzkZz3r6cu6UAiFTa0UcUWkVzhVjSe+O9i+Xc0W8UWENh..fuPgEVn1512l1512lZcqZk5TrwpV25Vq.r4GxZ.vRKbgKzn4A1yd1ypfQC..vepfBKPIm7tUhIknNZd44uGN..nFhe4W9EKuGm.BH.EWbwUEMhbre5m9IKGmMtwMVwDSLUQiHTSwN24N0q+5ut9tu66T5omtQGyTlxTjjTjQFoF4HGoF8nGMOuG30QFB.0YspUsJiZm+LRDkjVwJVgksIv.CTCX.CnJXzT2zgNzgTlYloksK5niV0qd0qJXD4cs3EuXMqYMKW1ld26dWEMZ..PUkzROckV5oqvBKLEaG6n5XLwn5GV88ImKaUHDhsSEO0HlLOvniNZ0pV0ppfQSUiRKsTsqcsKKaWiZTiTqacqqBFQ.k2N24NUYkUlKaSXgElhJpnphFQ.UsxHyLUBIlnRY+oX4eK...TQlrl7cu6cWQDQDUAiFGKmbxQaYKawx1MvANPYqhkGO30r6cuaUPAE3x1DTPAoN0oNUEMhbsMtwMpm64dNMqYMKOdNRYkUV5sdq2Ru0a8VZjibjZBSXBJxHizKORQcUDP.nNqe+2+cKaSjQFoe8CTJqrxLZRR8pW8RgSZ+0mYricr5i+3O1x1cfCbfZbADPIkThdzG8QcYaZRSZR0lIVA..uu7yOes4srEskstU0lV2Z0oX6jZUKaIKrgeVJojhQYGfAMnAUELZp5roMsI0291WKa2y7LOiF+3Guue.AbRxImbT25V2rLkneS2zMoO+y+7pnQEfuWQEUj18d1sRHwDUN4lq+d3..fZnN3AOnRJojrrc96Mn2pV0pL5A5Va6dwpt4LNiyvxMo2fFzfzxW9xqhFQN267NuidrG6wTQEUjWqO+rO6yz7m+70m9oept3K9h8Z8Kp6xyJY.U3deYoBQMMkVZoZsqcsV1N+8tteKaYKJmbxwx1wjO7sV8pWskso8su8pEsnEUAiFuqG+webK+agALfAvCEB.nN.61sq8mZpZ+olpBO7vOdVCH5XpwEra0VXR1APp127.MYdWRRm9oe593QBvoZsqcsFUez45STawgNzgTBIkn1291mJozR82CG..TC2ZVyZLpc96.Bnt58hUcxd26dMJi85um2cN4jit8a+1sL665oRO8z0UbEWg91u8aIn.PkFYH.TmzV25VUdFTi6poL4iANvA5iGI0cUPAEnMu4MaY672S9vSLkoLE8lu4aZY672+c...p5kWd4oMtoMoMs4Mq12t1oX6XrpkUl.eqhAVlAOPs55pqNOPSxhWR0Lm6Ep4iqOQcAEWbwZO6cuJgjRTG9vG1eOb..PsH0lJguADP.98wYsY0Dl2cQEUj9K+k+hVxRVhO87TXgEpQLhQnEtvERPnfJEuS.AvFGE0vX5Gn3uyP.+1u8aF0N9f.emMrgMnhKtXKaWMoE8qjRJQicriUu9q+5F0dlbK.PcW1saW6ce6S6ce6SMHhHTmhMVEczQqPCIT+8PqVOSlGXXgEl5Se5SUvnopiIYHf1111pV0pVUELZ.JOSt9Lf.BvnxdAP0MYe3rUBIln1yd2qJojR72CG.3HUbM3IFaQMLlrl70qd0S8rm8rJXz3X1saWqbkqzx108t2c0nF0npfQTcSU2ybb1saW2wcbG97fA3DxO+70nF0nzF1vFTvAGbUx4D09PFB.0IYZ.A3uePnlDMhMu4Mm56tOT08Ie3tRKszz0ccWm9e+u+mwGi+9uC..P0C4dzip0sgMnMroMoNz91qX6Xrp4MqY96gUsREVXgFUdq5e+6espECnvBKTaZSaxx1USYdWn1GSt2ft28tqvCO7pfQCPkWIkVh1691mRHwDUVYkk+d3..fZ4LYM46Se5ie8db14N2oQelHaPOeKSl2cDQDg5V25VUvn4T8xu7Kqu3K9hpzy41111za+1usdzG8QqROun1CBH.TmjIomnNzgNnV1xVVELZbtkrjkXYMpr1zh.WcTsk.B3PG5PZlybl5oe5mVG3.Gv3iKpnhxu+2A..n5kxJqLs68rGs68rG0nF1P0oXiUQEUTJjfCweOzp0HnfBR6d261x1EVXg46GLUg13F2XstLyDp8HqrxRIkTRV1Nt9D0DbjbNhRHwjzt2ytM5+2E..nxZe6aeJ8zS2x14u2XRwDSLJszRyx1EQDQTELZp6ZMqYMV1l9129p.BHfpfQS4kZpopm+4ed25XpW8pm5e+6uF3.GnBO7vURIkjRHgDzpV0pTYkUlw8yK+xurdnG5gTPAwi1EtOO5plJ93IohAfZRJnfBLZmG4um7gj3AwVMfIADPLwDihLxHqBFMtmbxIGM6YOaMsoMM8y+7O6QKzS0g+N.UdS6qmtWquN+.qXe605ZTKg275MT82QxIGsl0sNsgMtQ0gNzA0oNFqi+LQRuotk.CLv5joD+ZKAhIpcxjEkThqOQ0WkVVoJkTRQIjXhJyCdP+8vA..0wTSIi8FRHgTm7dwpNIwDSTYmc1V1N+07texm7I0wN1wLpsQEUTZxSdx5bNmywgarycsqcoW5kdIMkoLEiJYSG5PGRKcoKUCYHCwsG2.DFInNm0u90azCF0eO4C3+kWd4ossssYY6pNrneKbgKTe228cZe6aeZu6cuZe6aeJiLxvxLLgU3uC..fIJozRURImrRJ4jUSZbiOdVCnCQQTqC2BAD.pNiqOQMU4dzbUhIkjRJ4jUQEUj+d33TDToNF+bAkSPCyeOB.7XljwdkXsHQ064cu0stU8oe5mZTaunK5hzW9keoZZSapSaSm6bm0jm7j0EbAWft4a9lMpem0rlEAD.7HrBcnNGSiFwALfA3iGIn5t0u90qRKsTKaW0gqUd8W+00O9i+nWueYR3..vck8gOr980rFstMrAEcTQoN0wX82CITCgIK7SzQGsZVyZVUvnAn7L45yfBJH0m9zmpfQCfqUVYko8mZpJwjRTo6FkLN...eESVS9lzjlnN0oNUELZP0YlFP.9i0j+K9huvnT7+0dsWq9xu7KMtjFbS2zMoUtxUp28ceWKa6u8a+lQ8IPEQIC.9M4jSNJszR6O9WIkThZRSZhZRSZhZQKZg5Tm5jrYy6e0kIS9Hf.BvoQXVpolpRIkTTFYjgNzgNjZTiZjZUqZkZSaZi5PG5f2d3VknnhJRolZpZ+6e+Z+6e+pfBJPQFYjpIMoIp4Mu4pScpS9k5wijjc61UlYloRO8zUZoklNvANfZRSZhhN5nUTQEkZXCanO6bWcNZDqHSixV2QfAFn5e+6uWueA.PcCkTRIJgDSTIjXhJngdsJneaIJrD2nrUZoRUxLXCpZbricLs+8uekVZooTSMUETPAoXhIF0wN1Q0jlzDu54J+7yWaYKawx14Km20I998D+ylMa+w8mz5V2ZEUTQ4yN2UFEUTQZu6cuZ26d2Z+6e+p90u9JxHiTcsqcUsqcsys6uhKt3+3dzRM0T0QNxQTiabiUSZRS9i6QnEsnEJjPBwG7ciqUPAEnzRKs+3dCN1wNl5PG5fhJpnT6ZW6TfAFn0chGxj6MnG8nGpd0qd9rwPVYk0e76lzSOcEP.A7GWiVc+9QyHiLzt28t0t28tUQEUjZRSZhZVyZlhO9382CsZUx6X48GYCfBJn.+8vA..Uybh0Y8DymHiLxPgDRH+w7IhJpn7Ikv1xJqLilK0oe5mtCed.kUVYJgDRPG3.GPYjQFJu7xSsnEsPspUsRQEUTd86MopRN4jyebuGokVZJ3fC9O9cQ6ZW6TaZSa7aishJpHcfCbf+3Zkibjin1111pniNZ0912de58BXx0JMpQMxuD7Hyblyzx1Dd3gqILgI31OOkm4YdFiBHfzSOc2peANAxP.nJSgEVnVvBVfl4Lmo91u8aUVYkkKaeiZTizYbFmgNyy7L0sbK2hhMVuytKyjGbZ26d2UDQDwe70Imbx5S9jOQyZVyRadya1oGWW5RWz0dsWqF4HGo5bm6bkZb9Nuy6X4tSOlXhQiXDivi5+DRHAM0oNU8ke4Wpcric3xTKeCaXCU7wGuNyy7L0Mey2rO+CaO3AOn9lu4azLlwLzRVxRbYZM7DAGPLwDitjK4RzUe0WsaOIvO7C+PGV2e95u1rhi9RW5R05W+5OkWOjPBQ+s+1eysFKdhcsqcY4eO4IhKt3T3gGtWueA.PcOkzh1nRthaTEj+HTvaZUJ27yW7ILN1d26dMZQFNyy7Lc4CRaVyZVZO6YOtrO5e+6uF7fGb4dsLyLSMqYMKM8oOc8K+xu3z4i1nF0H06d2a8LOyy3Voqve629MshUrhS40SM0TMJyLcjibDMgILAG9dWxkbIp6cu6FOVjNdvBO0oNU80e8Wq8u+86x11hVzBMnAMHM3AOXcK2xsnl27l6VmKGYIKYIZcqactrMcu6cWWxkbIk60N5QOpl5Tmp9nO5iz5V25b3tTYhSbh5tu661xwvgNzgzm+4et9xu7KURIkjN3AOnkkcpvBKLctm64pgNzgpgNzg51+b2T1saWqZUqRyXFyPyblyTImbxNssAETP+whT1idzCc8W+0qy5rNK2JHy2111lCy5VmHnKrhMa1b50mCbfCTCZPCx3whzwWj3u+6+dMiYLC8S+zOYYsJsksrkZfCbfZvCdv5lu4aVsnEsvsNeNxgO7g0+8+9esrc268dumRvPrhUrBMwINQMqYMKczidzS4XhKt3LJPffqY2tckV5ooDRLQkZZo4uGN..nZlLyLyxsNqVUJciJpnT7wGuFxPFhtwa7FUCZPCpzigctycpbxIGKaWEyToKYIKQScpSUyYNyQYjQFN7XBHf.z4dtmqttq65pzi2jSNYM6YOaKa2EdgWn5YO6oa2+kUVYZoKcoZpScpZVyZV5PG5Ptr8su8sWm4Ydl57NuyS2zMcSdkeW3JaYKaQyXFyPyXFyPaYKawo2SP.ADfZcqashN5nUW6ZW0Ue0WstnK5hbqRFXpolp9pu5qb36sl0rFKO9F0nFo25sdKG9dN59m7F17l2r1wN1gksaLiYLdTvbzzl1T05V2ZklEym6DkIXewloE0tYytGTfo2a1kpW3m9yaDssMN.8zWBKoGbrzSOc8TO0SooO8oazG76H1rYSWzEcQ5ge3GtR8ele3CeXEYjQZ4Bbc629sqIO4IqhKtX85u9qqm64dNke94a74IjPBQiabiSicri0ihVtjSNY0wN1QKa2C9fOnS+fOmYNyYN5EewWzi2Q41rYSW5kdo5QdjGwqWqZV8pWsdhm3IzBW3BMZAgcjPBID8W+q+U8RuzKoXhIFKaeFYjgOIxWkN9jXW4JWoOouOYe9m+45Vtkawq2uiZTiRSZRSxq2unpG0cR.TcTKZdyUrcLV0t10VEX.9tc0aMMu268d5AdfGvx1M8oOccMWy03z2OpnhxxGf4G+werty67NkjTd4kmdpm5oz69tuqJojRbqw7vF1vzq8ZulhKt3rrsWy0bMZFyXFtU+apUu5UaT1MprxJSevG7A5se62V6ZW6xiNWgFZn55u9qWO5i9npG8nGdTeHIMzgNTM+4OeW1lW3EdAMtwMNIc7Lov3F23zjm7js7dqV6ZWq5ae6qCeuxJqLsfEr.M4IOYM6YO6JccEuCcnC59u+6WOzC8PJ3fCtR0WRGOKE7lu4ap2+8eeidP7NSTQEkdrG6wz8bO2iQYOfwN1wpW9keYO974JSaZSSW20ccF01ssssom3IdBMu4MOUXgE5QmuPBIDckW4UpG8QezJUV+Ztyct5xtrKyksoksrkkamJM24NW8DOwSnMrgM3xi61tsaynfMn1n4Ge4y3HW7Jcc.b4H4me9JojSVIlbRVFrH.n1geOngoiV3etllu1HhPMrd7.gfi8q+5upm9oeZWFjuVIhHhP23MdiZLiYLUpMq2TlxTzHG4HsrcyYNyQWwUbEJ0TSUO3C9ft88Mzt10NMwINQM7gObOZbNgILA8O9G+CKa2hW7h04cdmmw8agEVnd0W8U0G8QejRIkT7nwVCZPCzsdq2pdjG4QTzQGsG0GNhc610+8+9e0q+5ut1111lG2OMu4MW+s+1eSiYLiQgEVXV19O9i+XM5QOZO974Ju3K9hZricrd898sdq2RO7C+vtrMMoIMQojRJp90u9dz43hu3KVKXAKvx1kSN43yCPDT8xcOsbK2W+gWu6+6e+SN.G0ITbwEq23MdC00t1UMoIMIONX.jN9GLM+4OecoW5kpa9luYkc1Y6Q8yZW6ZsLX.jN9CxMyLyTCZPCRiabiysBF.oiuCRF+3GuNqy5rzQNxQb6woIk0fSLNMUpolptpq5pzHFwHpToWd61sq4Mu4oK3Bt.cO2y83UV3gryNace228o3iOdM+4OeOdRpRG+m8e0W8UJt3hSOyy7LV1WKe4K2iOWV4rO6y1m02mLeUPGP56D..9RYjYlZEq72z298eu1vF2nC28n0EY57zb07.yHiLL5gndhcq77l27TbwEmlvDlfaGL.m33iO93sLiDHc7ElzWHhHhvnZ29F23F0fFzfz8e+2uGGL.RGeQ89zO8SU+5W+zq8ZulQ2igiXR5v7LOyyTRGO6Qb1m8Yq25sdKKu2pvBKLmtqkV+5WuhKt3zkbIWhl9zmdkNX.NwXaLiYLp28t2ZqacqUp9ZQKZQpW8pW5e9O+mUpfAPRZO6YO59u+6W8qe8yn+1xWc8ojY2aPN4jidjG4QTu6cu027MeiGGL.RG+9hl1zllhO9303F2373eO6NWiZ2tc8u9W+Kc4W9kaYv.H4d2OKNN61sqzOvAzxV9upucteu1zV1LAC...JmzSOcMxQNRcNmy4nEsnEUoVm0idzipO5i9H0qd0K8Nuy63wy40cVq6Eu3Eq3hKNOJHhSIkTzkcYWldrG6wb6iUpxWpgcjktzkpd26dqm9oeZONX.jjxM2b068dum5Uu5k9zO8S8394jsgMrAc1m8YqQMpQUoBF.oimIJF+3Gu5d26tl6bmqks2eOuaOgIYGf92+96wACfzwy7AVIrvBifA.dDBH.3Sr8suc06d2a8nO5iVoBD.G4K9huP8nG8Pae6a2sOVSWf0V0pVoy9rOaiROMtxpW8p0kdoWpxKu7bqiyzIIY5CrcpScpJt3hSyZVyxsFGV4C+vOT8u+8W6ae6yi6i4O+4qt10tpO3C9.GlpS8TETPA5e8u9W55ttqykK90xV1x7ZmyJ5rNqyxm02mLeU.AvBzA.fpBEVXgZa6X656+g4okrzeQor+T7pyInlFSluZKaYKcY8r2zZtX26d20Dm3D0kcYWVk9AudzidTcW20c4x1jTRIYY5OzSEe7wa4N.+Ye1mU8u+8uREbrUTwEWrFyXFiF5PGpaGDwIkTRVV1mBJnfz.Fv.zxV1xzoe5mtV6ZWqQ8ce6aecXJ67+9e+uZPCZPFsXVdhssssogLjg3QKnXwEWrt8a+10EbAWfGcudtxF23F04cdmmCKG.mPQEUjw2Gl6JpnhRssss0ksYgKbgpqcsq5Mey2zxT4q6nzRKUuzK8RJ93i2xzRqiXxOSNyy7L0wN1wzUdkWodlm4YL9gEv8aXtS7Yky8G+g++Oqb+d7CkA..0d84e9mqtzktnoLko3U+bhicrioG7AePMrgMLOJfEMY92sqcsSqZUqRCaXCyi1fcmrW+0ec8zO8S61GmIy6It3hqbkZXmojRJQ268du57NuyyqN26byMWca21soa8Vu0J08M+TO0So92+9602rb6YO6QWwUbE5i+3O1ksyWsl7gDRHZ.CX.9j91jeO5rLzloRLwDsrMsu8suRcNPcWdT.ATwOJgDSDNYqd0qVmy4bNU5nJyURM0T0EcQWjauvklt.OidziV6bm6zSFZmhUrhUnG7AeP25XLYRRQFYjFkpl93O9i0Mey2bkdhTNy129183IpM6YOac4W9kqLyLSevH63l4Lmotxq7Jc5jf8kQiXUQ.ATRIkn7xKO0oN0Ii9WyZVyLpeqe8qekJ82B..3IN9tdb4GeWOt4Mq7pisqGO7gOrQyA0pGhlIy48LNiyP+m+y+Q228cedsEKbAKXAtL8e6Om20e+u+203G+38nLffIVvBVftwa7FcqEkyjeO0qd0KUXgEpq7JuR2ZNyNZQv95u9q0nF0nTAETfw8im3.G3.5Juxqzs9YQAETfFwHFg9jO4S7Yiq7yOecEWwUne5m9IG99qYMqwm8yFqt9blyblZ3Ce3kKs66ss90udMrgML2NarXx0oCZPCROwS7DFUycOgPCMT0qd0K2ZrTWzIxlNy46+NxlN..vklvDlfF4HGoxM2bstwdne7G+QcC2vM3VYcfhJpHs90udKaWd4kmtpq5p7ZyG64dtmSe+2+8F29rxJKkPBIXY6LIfFKt3h00ccWml3DmnOK.99rO6yzC8POjaeb1saW268du54e9muRk8HbkxJqLM5QOZ8QezG4v2+.G3.F8fu8D8qe8S0qd0ymz295.BHmbxwnyQG5PG73yApaiLD.7pVzhVjFxPFhN3AOnO+bkRJongNzg5Vo9PS2MPd6GP8jm7j0u8a+lQssrxJync9iIS9XhSbh5tu661muyA17l2rt5q9pcqyyTm5T00bMWiWIEkZk4N24pO7C+vS40KnfBLdWV4thM1XUKaYK8I88IKnfBRaYKaQ6ZW6xn+ca21sYT+1u90Oipyp...9BETPAZKaaq56m2b0RW1+SolVp0I1Ijqd0q13xakqXxCvK4jS1mLOQW8.c8GADfc610e6u82z69tuqO6beByd1yViYLiw31a5Nu9QdjGwsu+jJdMxpV0pzHG4Hqx96nsu8squ9q+ZiZad4kmF9vGtl27lmOdTc7EmcTiZTNLXl8WArxjlzjz0ccWWkp7.XpUspUoa7FuQia+d26dUFYjgKaSHgDhra2ta+2X8oO8QAGbvt0wTWQQEUj14t1kl2O8iZQKYwZO6cu0oybN..vZO4S9j5e7O9GUIy06a9luwsRI+aZSaxn44jc1Y60Cd2G7AePiCv.SxxZRVeuXEUTQ5Ztlqwqmodcj28ceW8du26Yb6KszR0sdq2pl3DmnObT8md3G9gURIkzo750T2fde5m9oZAKXAt7eCaXCyi6+O3C9.iJETCe3C2iOGntMBH.30rksrEM7gObOJJDaPCZfrYy8y0Dae6aWuy67NF01zRKsJUc5Q530lTOYbZ2tcM1wNViZ6V25VMJp+sZxGyXFyvi2wWMrgMzsWble9m+Y8Ue0WYTaWxRVhtka4Vb6I4YylMipiNNxi+3OtRM0TK2q86+9u6yBHAeUsJpxxaTWhA..ppX2tckZZooktrkoEsjE6y2Yy9al94zVU1nL4AMmPBI3SVvPWsiF7UK7S.ADfFzfFjCeum9oeZ89u+66Q8aiabiU.A3RA2++B..f.PRDEDUd2x7DlvDzV1xVLpsl76o7xKOOZWyWw4x8.OvCX7e+LvANP8AevGnEsnEojRJIsyctSsrksL8BuvKn9zm9X7XXJSYJF0ta7FuQsnEsHi62SHrvBSgFZnt8ws+8ue83O9ieJut+nNlNm4LGcW20c4Q6NKOstg9ce224xRmvIyjqQ6QO5gt+6+9c6uG39MNUGJqCoU96qRe62+cZsqecd8xuH..pc5Mey2TuvK7Bt8wYylMiR88Nx69tuqwk3oJaIYpxLNSJojb3lDyQ7VqY5nF0nzblybLpuNY1rYSMtwM1se1Ciabiy3fG9wdrGy34nexBN3fU8qe8c6i6XG6XZzidzmxq6Ol2s2vEdgWnk+ySe1EIjPB50dsWyx1EbvAqa9luYO5b.3YkLfZ+aNG3lJrvB0MbC2fwKxTfAFnt0a8V0xV1xTlYloxImbTt4lqV8pWs97O+ycq57xy+7OuQYj.SixuSVngFpt+6+90xW9xUlYloxM2bUN4jiVwJVg9nO5iLJk8eB+xu7KFUhCLcRRtZxGG3.GP2y8bOFuHu8qe8Su0a8V5m+4eVokVZ5HG4HpvBKTokVZZRSZRFmFZdxm7IsrdWlSN4na61tMi2gCMsoMUuxq7JZCaXC5nG8n5vG9vJu7xSaaaaSSZRSRcriczn9ImbxQSdxStbu1fFzfzQO5QOk+YZ4t3e9O+mN73O5QOpk0II+gRKsTsl0rFiZKKPG..ptn0st05bNqyVC47NeeVp+q5BSVDJa1r4x4JaxN50YN8S+z0y+7Ou9hu3KzO9i+nl3DmnFwHFgasnTG3.GPG9vG1gu2JW4Jc37lF5PGpk8aSaZSc57txM2bc3CGckqbk5kdoWx3w9vF1vzDm3D0xV1xT1YmsxN6rUwEW7er3LlrPjkUVYFEHvkVZoFkopbUIXvYhLxHUm5Tm9iu9a+1u0nqsZe6auVwJVgVwJVgtm64dz4e9muhIlXTm6bm0YcVmkF23FmV25Vmdtm64L5ZBSt2mIO4Iqu8a+VKa2Ib9m+4q4N24p8t28p7xKOke94qzRKMshUrBcm24cpfBJHi5mO4S9jSIKAL0oNUGd808ce2mQ8492+9c50nNJ03mZpopQMpQYTeKc7R50XFyXzpW8p0QNxQTN4jixJqrzu9q+p9nO5iTTQEkw80i7HOhQO.eSt2z0t10pMrgMX749D39M9SkFRH5WV1+SKXgKTIu6cqR7QouW..T6y5W+5MdSnIc74I9xu7KqMrgMn7xKOkat4pzSOcsjkrDMgILAEYjQZT+TRIknG8QeTiZqmDP.ssssUuy67NZi++kKmbyMWkZpope5m9IM9wOd2JnP+rO6y7ZiyvBKL0yd1Sm99yblyTe9m+4Fc9rYyltga3Fzjm7j0JW4JUN4jixN6rUQEUj17l2rdxm7IMZC6kat4pm64dNKa2RVxRza8VukQiMoimMm9pu5qThIlnxO+7Ud4kmN3AOnVyZViFyXFiBO7vMpeV3BWn17l2b4dsW7EeQGNm4W8UeUi5ye8W+UmNu6q3JtBi+dr5h8t28pK3Bt.cnCcHKa6HFwHLtj.CTQ1r6AaKjcmUo5kl+el5JZWiCPO0kX1+A.pc5gdnGRu8a+1F01XiMV88e+2qt0st4z1TbwEqwMtwo23MdCidn1uy67N5AdfGvks4odpmRO+y+7FMFkNd5k4K+xuTsu8s2osI6ryV23MdiFuCKdoW5kz+7e9OcYatu669zG7Aefk8UFYjgZdyatCeu+xe4uXzBq0jlzD87O+yq64dtGWt6mRKszzvG9v05V25rrOmxTlhKiRs63NtCiWXyq8ZuV8we7GqF1vF5z1TRIkn69tu6S4g86HwEWbFsisl4Lmot5q9psrcyYNyoF0jL1zl1jw0oyjRJIESLw3iGQnpxz95o6uGB..tk5Uu5oNFSLJ1N1QEd8q6beFsoMsQokVZtrMcsqc0k6FGSmGSEOuSaZSSmy4bNN78+se62zvF1vT1YmsQ82JVwJz.G3.M972xV1RKChggNzgZ7btkNd8huu8suFUCFiIlXza+1ust7K+xcY6V25VmF9vGtk+NR53y6pG8nGN882xV1hKeeqDQDQnt0stoV1xVplzjlnCdvCpTRIEs8sucMjgLD8S+zO8Gs8BtfKvxcfezQGsV7hWrhN5nM57ax8rzjlzDkUVY4z2e26d2pW8pWFkg4BMzP0Lm4LsL8XtyctSEe7w6zfR4jM4IOYc629saY6Nqy5rzxW9xcYahM1XMplydB1saWW7Eew5m+4e1n1etm64poMsooV0pV4z1b3CeXM5QOZiKUCKZQKRm+4e9trMlbsiqzktzE0111V0pV0JUTQEozRKMs8suckUVYosu8sqt10t5w8cMcyO9xG.GW3JRV6O0TUhIknR+.GvOMp.P0c+dPCSGsv+bcResQDgZX8b+LYJpcH+7yW8u+823M1zMbC2fl3DmnKWm08su8oa5ltI8+9e+Oi5y8rm8X4FIqm8rmmxCD1UFyXFid1m8YcYvf+6+9uqq7JuRiyFvaaaaykOKBIytWry7LOSmt61yHiLzocZmlQabwd26dq+8+9eaY5seAKXA5ptpqxx4KGRHgnzRKMmFPG4jSNpW8pWZO6YOVN1rYyll3Dmntq65tbYP.mQFYny5rNKilC73F23LJKVbK2xsXY.UDZngpbyM2ZMkdpzRKMM3AOXi94X3gGt13F2nwaPRT6xcOsx++C7gWu6mw37JkL.OHCpiZQV9xWtwos+HiLRMu4MOK+.3fCNX8Zu1qo63NtCi524N24ZYabmnQryctyZNyYNtLX.jN9hbM24NW0+92ei5WSxRAlr6chN5ncZv.LsoMMiBFf10t1oMu4Mq669tOKSEpst0sVKcoKUsrkszx986+9u2ou2BW3BMNX.hO930m8YelKmjpjTPAEjd629sM5gWu0stUiRmUldsh6jIKpNvzTeUyadyIX...feQqZYK0YMnyTWwvuL0qdzy5TACPJojhQOnYq1Ust6Nv47O+yWqacqyoACfzwSg7SaZSy39zcJgXllQCb24c8rO6yZTv.bVm0YosrksXYv.HI0291Ws3EuXiJi.tZNwRddpScvCdv5a9luQYlYl52+8eWe+2+8ZJSYJ5G9gePaZSaR4latka91EUTQV9vrkNdpl0zfAPRF8yKqbu268Z70JSZRSxnZkYW5RWLdmOMyYNSKaSIkThQAEs6d84jlzjLNX.5d26t9lu4abYv.Hc7Rbwzm9zMNXbr5dnsa2twYWrSViZTizq7JuhRN4j0N1wNzhVzhzTm5T0LlwLzu9q+pNzgNjRN4jUW5RWb69t1r.BH.0910NcdC9b0vuzgot00t5QkDC.T6VEWBdRhu0sM9wOdiCFfgLjgnO8S+TKWm01291qErfEn1111ZT+Nu4MOW99tSlXU53ajrW4UdEKyLbCX.CPKYIKw3rCkUqIu23dw96+8+tQACv0bMWiVyZViQ059K5htHMqYMKKaWQEUjl+7muSe+m3IdBiBF.oiWx0F8nGskYDrVzhVnIO4IaTlCyj4cKY18H06d26ZMACvV25V0EbAWfwAV7K7Bu.AC.pT7JAD.pa6UdkWwncwengFplybliaci+icriUAFXfV1tkrjkn7xKOW1FSWzsl1zlp4Mu4ol1zlZT6CHf.bXMnzQ18t2sKe+BKrPswMtQK6GWM4CSRKpgEVXZ1yd1pMsoMV11SHhHhP2xsbKV1t4O+46zzOoI0AGoimVnl8rmswK.RDQDgCqGQNxN24NsrMl7fyaaaaqZcqasQmypK7V0BK...uoPCMT0st1UM7KcX57F74p12t1410s8ZCL8yoiO93c466NOn4+5e8upErfEnVzhVXYaufK3BrbADOASW.QIy+91cdfqG4HGQu+6+9V1t10t1oYNyYpvBKLi66t10tpgLjgXY69ge3Gb466IADvi8XOlVzhVjFwHFgSWjz5Uu5Ut43upUsJKKqaMqYMSW1kcYt0X4zO8S2x1zjlzDm9dadya13L9vi+3OtaUmLu0a8VM5d4L49B17l2rxO+7srcty0mkUVYFmNTaYKaol27lmK+YYE8jO4SZT6rJf.14N24oTVErRbwEmV0pVkFyXFiKCvjniNZ2t93VWRChHB0md0acEW1koAEe7p4jVXA.PEbjibDixvrRG+ymm4LmowOD0PCMT8XO1iYTasZ9DqacqynxTjzwqO6SbhSzn1Jc7Lzz0dsWqQs0p0juxVBeSHgDLJKM0m9zG8IexmXzy63DtvK7BUm6bmsrcN69OxJqrLJy5JIc0W8Uqm4YdFiGamy4bNFsNxIlXhVV9fO7gOrQyOul1FzyQJpnhzy9rOq5ae6qwALyPG5PsLCYCXk5dqzF7p1wN1g9tu66rrc1rYSexm7I5rO6y1s5+XiMViRI6EVXgtbmemXhI5xzU4IbhfV3jq4ll3ptpqxncTiUQh2F1vFTwEWrk8iy9f1EtvEZT.E7tu66ZbVM3jcq25sZYaxN6r05W+5OkWeaaaatLREOgvBKLMm4LGK2ALUjoAZx9129b46WVYkYzNgol3jOV4JWoQsi.B...UEZdyZlFT7wqq3xtL0md0a0.CpO60l4MBbO2YG813F2X89u+6a7hQEXfAZTaCN3fMZAqNAeQlYZRSZRVtyysYyll0rlkQY.qJxj4Du7kubUXgE5z22cBHfvCOb8Ue0WoW8UeU2ZwCkNd4P3m9oexk+a9ye9t8trwjzypqdn7lVt4trK6xzK9hunwiqSvj6MvjuG7EWeN6YOai1EP0u90We228ctUlaPRZ3Ce3F82fae6a2qcMpzwW.4UtxUxN+2KJv.BTQ0gnzEb9CQW5PuD04N04ZM6HN..T47ge3GZTlVpUspUZdyadpwMtwtU+O5QOZipQ7NZMfOYldONm1ocZZFyXFt8my8HOxiXT6rZM4qrADva+1uskOv6HhHBM6YOaU+5WeiNWmrQNxQZYabVYd5i+3OVG6XGygu2Iqu8su5S+zO0sCZSSl6WIkThkYfg0rl0XzlNsl3ZxexVwJVg5ae6qF+3GuJpnhL5XhO930Lm4LqStwIf2kY4TkJvf+tD0Q7FuwaXz+Q8kcYWlt9q+58nywocZml9lu4arrcYlYlN88L8C0GyXFiQoqmJJf.BP8qe8yxnM7fG7fJu7xyoSnpxtPvu4a9lVdrcpScxnZkoizst0MYylMK+cdpol5oDvAuy67NFcsxe+u+28nfUnm8rmFkdLsJURsicrCkSN4XY+Xxthp5jicriosrksXTaIf...fOS9GSAuoeWm4cbup0c2yqe50FYx7.CMzPUu6cuc566N6n2W4UdE2J.LyKu7T1YmsksKt3hysVHOS99tMsoMFmYlJojRLpblMhQLBOdwjhKt3LZbjQFY3vRPVQEUj1vF1fwmuu4a9FcQWzE4ViwSnsssstUFavTlr6sbVYh6fG7fVVaPkNdPnLoIMIOZguF5PGpQ26Qt4lqZPCbdsWzjqOOw8BZpW+0eciZ2C9fOnGeM5ocZml10t1kksKyLyTsqcsygum6DP.W9ke4Fsq3fmqQMrgp+8sup28pmZu6aeJAC2zC..n1mhKtXiKeuuvK7BJpnhxsOGgEVXJlXhQadya1ksyUqGuj4ym3y9rOSMpQMx3w2Izm9zGEbvAa4Fryp0r2j470zl1TEarwdJud1YmsQkH265ttKO52ERlc+Gomd5xtc6k6A5WRIkn268dOiNGu+6+9dTvJbtm64Zz7NyImbb48kX5yEol1ZxeB6YO6QOwS7DZpScpFceJmPO6YO07l27LJ.c.rhGEP..RGexGScpS0n1dm24c5wmGS2QDtp1iZxGnXylMO9AkKIiq456YO6woeHtISRJv.CzgOv7TSMUKSMoRGOxI8znIKnfBRMsoM0x5gTEmLXokVpwWq3oANRm6bm0JVwJ7ni8j4KRasUGr10tVURIkXTaqo88F..p9KnLSSAsxEq5kvFU.kTpZve6g82CopULMCE0m9zGERHg3z22zEbqu8su5ttq6x3wmjLZQdjbuEnwWjYl94e9m0d26dsrciYLiw39rhLMqBjYlY5v.BXiabiFuaPthq3J73fAvWHiLxPO6y9r5i9nOxx11yd1SG95e8W+0VVFCjjNuy677nL3fjzy7LOiaktScFSt2ft28ta7BzsqcsKitmEa1ro63NtCi5SGwctG5Ja.ADbvAq23MdCSGZnRJn.CRcL5XTGiNFk8gyVIjXhZO6cuFeud..nluErfEn8u+8aY6hHhHz0ccWmGedhN5nsLf.JrvBUN4jiSKsXlLWpd26d6VAW4IKf.BPcnCcPIlXhtrctJCAX2tcs5UuZKOWN6dR9pu5qrrTFGbvAqG9g876A1j4DWRIknryNaEYjQ9Gu1hW7hMJqXEczQazFsyQF0nFkF0nFkGcrmLStVIhHhPcu6cuRetpJkc1YqW7EeQ8tu665xrykiLxQNR89u+6Sv..uFBH.3wV0pVkkeXmzwSMQCaXCyiOONZQzbDWsikLYwLF7fGrwOTeGwzH7KkTRwoADfIev2ocZmlCiVuEu3EaTzk86+9uqMsoMY8.0ILojFTw.BXcqacFsq66ZW6p5Se5iGO17FLcgupoEMhlFnCwFarFUyUA..rRPAEjhpCQoNGarZi29UnBR00oow5x1912tQyUxpr3ioyi4ltoaxsSEjVsXfmf6jom1912tQo5T2If.V3BWnksI7vCWSYJSQSYJSw398jYx7gkb9NlxcdPqltax81Jt3hU5omtRIkTzd26d0F23F0pV0pzRVxRL9AO1qd0KG95+xu7KFc7dZfB6sXZF1xct9zYox0J5bO2y0sKicmrJ68PWRIkXYJ.9DdfG3AbqxDB7dZRiahFP+Oc0md2asm8rWkPRIpCe3C6uGV..vGawKdwF0tq+5u9J0CRzclOgiBHfCdvCpjSNYKO9a61tM2cnUNQEUTVFP.t5ghaZVVyUkvWqzzl1T8xu7KaY6bFSyJPYlYlkKf.Lcd2Ul.Gwawj6Qpe8qe0XRa9EWbw5e+u+25e8u9WFko8NY0u90W+6+8+tR+2F.UjWIf.bukRB0VX5jOt0a8VsLMs6Jl9eX5rHQrjRJQqcsq0xiux9evZxhYJIUu5UOG954jSNZG6XGVd7NaxGlt3RSdxS1n14MszktTiZm+dQ+jL6AmGarwVtIWUSf2ntDC..Xhlz3FqXiMVEUG5fBNn++TGeEd3ytSJxqt.Se.wwGe7dk94pu5q1n1cxLME26N6tGeQlYxj4DmWd4o2+8eei6SuMS+8z8e+2uO8AsdricLsxUtR8a+1uojSNYkRJon8su8ozRKMkUVYUo+6TmE.s+u+2+yxiM3fCVW4UdkUpyek0ZW6ZUokVpksyct9zz6gtxtKqpr2C8l27lU94mukGeSaZS0S8TOkaM1f2WvAEr5TrwpNEar5PG5PJgjRT6ae6SkXv0u..nlmZJymvjccevAGrtoa5lbqwUEYxZx6r0iWx74l6n0L0tc6ZIKYIVdromd59k6+nlxZxmZpoZTVunlRVs8a9luQiYLiQIjPBt8wFWbwou9q+ZiJSD.tKxP.viY5jOpLo5PIqqwOmfy1UyacqaUG6XGykGa3gGtGsvnmLSRMoRxoOH40rl0Xzht4rGXqo+9npPaZSaJ2Wa5jO72Qino0y0ZZYG.IBH...3aETfAp129NnNEarpo0vBZtpC7FeNso6n2ALfA3Q0tRSVnrPBID2JaO4syLSYmc1FuqlqJTw4DeBl988nG8n8lCGkat4pe9m+YsrksLsrksLst0sNiy1AtqN24N6v6OKgDRPolZpVd7WzEcQ98.v0Wj4vLYAiaXCantpq5pLtOcjJ68Pa526W60dspwMtwlNrPUfl1zlpl1zlp9169ncumcqDRJIix.M..nlgCe3Cq0st0YY65d26tGmB3OASlOQfAFnSmKfI2iyvF1vTyadyc2gV4XxZx6p4UVYBHfMsoMYYo0spzIe+GEVXgF86ftzktPF60KY0qd05QdjGw3mEREc629sq268dOGlcnA7F7n.B3Tdlkjh.pSxj58YCaXCUW5RWpTmGSRsPRRMqYMygutIefx.G3.UDQDgaMtpHWUKhNYNaQWpLKDbVYkkw+bppPqacqK2Wa50J96Z.zF1vFLpdtVSIZDOgLyLSiu9f.Bn1oq+ZtVuVec2Sq7Qd8Gd8Mvq02.v0l1WOc+8P3TznF1PEaGiUQGcTJjfcdssGtlIyCLxHizk6VbS2QuWxkbIt0XSRprxJyn4y0qd0KEZngZb+Zx22cricz3GL75V25TYkUlwmeesJNmXoimcB1111lkGaG6XGU25V27JiC61sq+6+8+pwN1wpLxHCuReZkAMnA4vW2jL2ljpzKfs2fIWeFRHgnd26daT+kRJonCbfCXY65QO5gBKrvLpOclph6gVRZ3Ce3FOlPUqPBID0kN2E0kN2EkQlYpDRLQkx9SoZ0+GI.7.UbM3IoaUmy5W+5M5+K2ar1klLehHiLRmVJxLY9DW3Edgt835jUPAEXz7acU4Q0j47EczQ6v.WvjrfPUkvCOb0fF7mqQ2V1xVLpl0WSYd2RUeWS98su8owMtwou3K9BOJKqcZm1oo28ceWc9m+46CFc.+IxP.viTTQEYTs0I5nitRetLc2MTYVLiNzgN3NCIGxjnQzlMaNcAMMYbV+5We0idziS40qpVXOSUwE+zjHkrssss9pgiwLcguptN4CmwzuuBJnfbqz7K..paJf.BPsucsScJ1XUyalY6liJtHQTx.9SETPAFkghrZ9GltXTdRv+ssssMczidTuZeWXgEpMtwMZY6bm4cUcZNwAGbvNbgGW25VmQogdu0CZcUqZU5AdfGv3EYyawYKrno+Nplx8Fzyd1SiCBFS+dup5dnCIjPpTo325Uu5ogLjg3tCM3Gzhl2b0hl2bUXgEpj1cxJwDSTGMu772CqSg2LHlApsZ0y154igZ2pplOQ94muQAxnyVOdopl0jee6aeFcukNabVbwEaTFFyY2mS0o6+nhqGess4cGYjQpXiM1pfQi6YFyXF5Nuy6znmUVE0vF1P8rO6yp6+9u+JUI2FvTbUF7HllJbhIlXpzmqcricXYapW8pmSS8olr3WU1IeTRIkXzhtz0t1UmtfQl7Ae8u+8WAFXfmxqmYlYZ4wVU5jm.Rd4kmJnfBr7XpNL4CStVIf.BnF2CMekqbkF0td0qd4xZpE..paqAQDghsiwpXhNZ2ZWfCWaCaXCFk11s5gsWYR0kVwWz29hLyT0o4D2pV0JGtaoL8mkCaXCqROFd7G+w0q8ZulWI.bZbiart7K+x00e8WuQAqfyxP.G5PGxnym+9dCNzgNjRLwDsrcty0mUU2CcN4jiQkkgt10t5vWO+7yWaZSaxxi+7O+yuRmICPUqPCMT08t1M0stzUcfLNfRHwD09SMUBRO.fZPpplOgIqGujbZFsZu6cuFEPAU10j2zZzdu5Uub3qu4MuYiV253iOdG95Umt+iJFP.0Tl2sc61M5djptUt.JrvB0+3e7Oz6+9uuaer1rYSibjiTuxq7Jpksrk9fQGfi4UBH.pX.08X5G1UYm7wxW9xM5AsOnAMHGtvzltXFsu8s2SFd+g4N24picriYY6b1Nk4.G3.FkgAb1hrZxuOBMzP08du2qksqxJf.BnbYAgZJS9Pxr.BnacqaU5xKQUMuQcIF..0MYylM0t11V0oXiUsn4svooCR34L8yoc1hPcBlrHJQEUTpEsnEFc9b29Vx8lKgoee6NK7iIyItcsqc5pu5q139zS0t10NG95l7yxfCNXctm64VoN+O6y9r5Ue0W031GP.AnXiMVEWbwoNzgNnV1xVpVzhVnV1xVpN24Nqt0stIa1ro+y+4+XYeEd3gqd1yd5v2qlx8F3KpioUU2C8zl1zL5A7ddm244vWeCaXCpjRJwxiuxlheg+iMa1TqZYqTqZYqT94muRL4jTRImrQqoA..7upplOwTm5TMpcNa9DlNWpJ6ZxO8oaVY0yYqIekcMSM42GwEWb5hu3K1nySkQEC5gZJy6dW6ZW5vG9vV1tpSADvt10tz0dsWqQYWhJpu8su5e+u+2NM.pA7kHCA.OR1YmsQsqMsoMUpyyjlzjLpcNaxGqe8q2nEynxFMhSdxS1n14rExsxtHq4latN70OYMqYMSSXBSvnyi2TVYkkQsqxdsRkUN4jiQQ+ZMsxEfjucGCB.fZmBu90Ww1wXUGiIFuS1iohAR.6Fw+f2Hv8LMHX8zOq2j4RzvF1P2pl2aReFP.An92+9abeZxbh6cu6seYNwmfoog9JyNu9W9keQie7i2n1N3AOXc228cq+5e8uZz47G+wezx1LfAL.GlUyj9+Xu66nipp01.3OS58Bo2HkIIz6cjhfDPDAEQDPuVA650BpfE.KfU9TjhxUtVt5ktBVn2qAoEHgTfjLoGRizKj5Le+A2LLyjormISHA342ZwZwYN6yd1IYfbN686988lmmMnsnThcyxyPK5W6FJHknaNXu81id18dfdzstiKmWdH0zjg7xKu16gEQDQ5vMh6mngFZ.+m+y+Qn1pq6mPjmwwQGcTqkXKQUYkUhMu4MKTaaMyIukVZoNyVrh77GiYLigyIudbyVI7c8qe83Ye1mUne1qJ2byMr3EuX7bO2yoymUhn1ZLf.HShyN6rPsSjTUntTYkUJbT90ZmLiVSJxK+7yG6XG6Pn1pqH+p0NQvt6t6F7ZkKWtPuGlaN5niB0tqd0qZxuGhTSaszRK06jbd1ydVg9dTGka9PTxjIS3HBkAD.QDc6MIRj.+8yOHMLovOcjtyIyOQtOvPCMT3kWdoyyK5N50T9c80We8H1Xi0fsafCbfF0mYZKxLShbOwM0TSB2elakTRIBkVSaM2uob4xwq8ZefDA4V...H.jDQAQklPsc4Ke43ke4WV39tt5pC6cu60fsSe61k15mMngFZ.0UWcFrc1au85ch3D4ymN3fCnG8nGBO1tQ7LzwEWbB8LvRjHAiZTiRqmSjq2JqrB8qe8ynGeTGWRjHAA3u+H.+8GUWS0PVZWKqAHRZTlHhnabLl6mHhHhvjdO9q+5uDp9y2oN0IclUnLl4j2TetyMsoMgpqtZC1tPBID3qu9p0yIx870yd1S3fCNn0y0Q94OZquu6lZpIgtVas0VXs0VqyyK55hzQXN4m6bmK9xu7KMpqQhDI3we7GGe1m8YlT15iHyIKLkKRykNkSU3se7zSOEpcojRJl76wF1vFD5Wp6s2dqyz9in27gn0EIs4W9keQnIfsqcsqnO8oOZ8bhLN8xKuPHgDhVOmH+7H+7yWnEN2bS0xGf9jc1YaR8+oO8ogyN6rA+yJW4JMX+HhNB27gwPzapxYmcFcqacqMdzPDQTGQ1au8nGcu6XxSZRXj2wHf+94GCFfaPJszRE59kMzB42VlMfhM1XQ80WuYsuaqxLShbOwhTW3aqb1ydVgZWqIHMOwINAN24NmAa2BW3BMpfA..XG6XGn7xK2fsSWOaFPa+yF7O9G+CC9bAADP.F74hD4eS0u90OiZ28bi3YnEojN..L7gObcNdD4q8dzidnyIFmt4miN3H5cO6ElxjtWbGCa3vGN40DQTGFcjtehIO4Iq0maTtb4BceuUWc0HmbxwnGeMSzL16Lm4L046ehIlnAud8cu4cje9i1566dgKbgF79tc0UWQZokld6GQt2S+7yu18RavhW7hM5fAnO8oO3XG6X3G+wejAC.0g.yP.jIQza93BW3BlTj9UUUUIbpz4EewWD1XiMZ8bhtXnlZ.ATd4kiu8a+VgZ6S8TOkNOmH+huV6MenPgBjXhIZRSvXIkTB1yd1iAaWO5QOZQjg5latAIRjXvrvPlYloQOt.fAWn+lGCO2y8b5sMh7YEqs1ZcFTGcTI5+FX.CX.vBKLoXDiHhnaR4qu9hvCSJ72e+fERZi+c.rjAnUm4LmQnLUkgRM2hlpKMlzuuwz2.F2hXK5W2FachTzIj6pW8plTJ4WlLYB88iQLhQf.CLvV752HJiS+0e8WB0t4Lm4Xz88+8+9eEpcli.BHyLyTu8i1b4KeYrksrEC1tm+4ed3pqtpyymUVYgBJn.C1OsEe9D3Z6xeSQFYjA94e9mEpsu9q+5Z80EMXcXlE61CVXgEHn.CDAEXfnxppDxjkFRKizEJHwHhHpsQa88SbpScJgJQT.PmYkpKcoKgJpnBg5iKcoKgfBJHgGeM6nG8nH5niVn1pq4j+bm6bBs68asyIe7wGuAaitDWbwITPKLgILgVjsBLl661XUWc0g0rl0Xv1M0oNUzktzEcd9FZnAgBlYi89tM299u+6wBVvBDt8VXgE3sdq2Be3G9g5M6HPzMZlV.An4j2vcPzscbzQGg+96uASmgYkUVXCaXCXVyZVB22M1XiX5Se5HojRxfs0d6sGuvK7BZ8bkUVYBGMj+we7G3y+7O2n1kC0We83AdfG.omd5FrsVYkU3wdrGSqmKszRSnT5t9t4iPCMT3ryNavZWy92+9MoIuYNyYNXqacq5sMVXgEZ8lMszRKQ.ADfAi3yXhIFbwKdQip1ylZpohMtwMZv18RuzKYvTpkn6DFas0VgGecDXNpKwDQDcqCas0VDVngBogIENIXJDjZ6Xt98zhbeLcu6cW3zFow12.FW8DWz9zXCfAQBbS4xkiCcnCgINwIZT88Uu5Uwjm7jM3yn3omdpycAiHec6niN1pxZSm7jmzfsIv.Cznm30KcoKgssssYv1EVXgo2c+Rm6bmE58asqcsXFyXFBO9..9rO6yLXlayN6ryfkTg1pOeFd3gKTfRuqcsKDWbwgd26dKbeWVYkg64dtGTVYkYv1JUpTb+2+8q0yc1ydVgBVma1xZZTqmyN4L5ae5C5UO6IxN2bfLYxPQW4Js2CKhtsily.OCw1a+DYjQJT69we7GwBVvBzaYGSSomd5XxSdxBURUG23FWqJS31r0st0gwMtwIb6A.RN4jwTm5TEpsibjiTmkNAywyhIxyejWd4gjRJIi9d7KrvBQTQEkAKeCcqacCOzC8Ps30E89tW+5WOdm24cLpMz428ceGJpnhLX6d629s064iO93Ep7DYJA1t4RrwFqA2ngpxGe7AabiaDidzitMbTQjogaGTxjI5urdgKbgBkR8a1K9hunvQh3i+3OtNiDOQmLC.fbxIG7IexmH7XTgBEX1yd13.G3.B09oMsoAe7wGsdNywNExZqsF24cdmFrOV7hWrPAvfp95u9qMXv...LqYMKcVCM0U8oTUxkKGe5m9oBOtpolZvC7.OfAqQnN3fC3UdkWQusonhJBYkUVF78zN6rS3wWGAM1XiHlXhQn1ZLShOQDQ27wau8FCenCC228NYzmd0aFL.cPHxjPYkUVg92+9qyy2VuidE4dUCHf.f+96uv8onoNeiMPL6RW5hPS70K+xuLpolZDteUnPAdwW7EEJfkm27lmNCDUQ9d4.Fv.LpzPulxO+7MXaBKrvLp9Ttb4X1yd1BsqfG1vFldO+HG4HE58baaaa3BW3BB0V.fsrksfku7kav18jO4SpymKqYsUe9zCO7.8qe8yfsSgBE3ce22U39s95qGScpSUnOeBbscymtxLX2HxhEzM2rzRKQHcNXbWiYrXhSXBHhvCm67MhH5FnALfAHTcqupppBe7G+wB2ukVZoXhSbhFbwma1a7FugNOmwDP.+zO8SFU6KrvBwDm3DEZy0A.ctQBADOXc007cCbs47Vj6I7oe5mVn.snYMzPC3QezGUned7ge3Gp06squ8suFbCxA.jPBIf+3O9CgGam9zmFu4a9lFrcQEUTFbg7aqtuayE4xkim9oeZgWaqPBIDbricLFL.TGVrjAPlrnhJJgRIgolZp3wdrGCe+2+8FL0b9oe5mhu669Ngd+8zSOwBW3B044EMJ+Z1RW5RwnG8nEJPGdu268DNkY5niNhO+y+bcddyUsqe7ie7FLEgVSM0fm3IdBr0stUgRaP+vO7CFbGz.bsIp98e+2WmmezidzXcqacFreV6ZWKlvDlfAynDUTQE3we7GWnIIbNyYNFL8MEarwZv9o41UQEU.WbwEgZe6s3hKNghxR.NodDQzshrwFaPngDBjFlT3h.SD.cimH2uZu5Uuz68PKZPvZJ+t9pppJgVjQisuO+4OuPs6XG6X5MXHzlnhJJCV2SkISF9m+y+I9lu4azYoGSUu9q+53G+wezfsyO+7Cu3K9hZ8bW9xWF4latFrOZs675xKubC1lye9yC4xkKb4h5q9puBG+3GWn1Znz7u+96OhHhHLXlbSgBE3oe5mF+we7GFbA7O7gOLdhm3IL3XyJqrRnIuTzOedzidTstarzmnhJJgBX2ssssgEtvEhO3C9.Ctasl8rmMNzgNjPu+8t28VukKBQd1TGbvA8Nw3zsOb0EWw.5W+Qe5UuQVYmMRMMYnjRJo8dXQDQ2RyBKr.icriE+1u8aFrsqZUqBcu6cGO8S+z5sc0UWc39u+6W3Rp6jlzjvDlvDz44Ml4ju464aaaaaZsjaopZpoFbu268ZvZReyF0nFEl4LmoNOuH22S+6e+0av5Zu81iQLhQf8u+8q2943G+33C9fO.KZQKxf2CdiM1Hl0rlkPku290u9goMsoo0yYokVhQLhQfctycZv94Mdi2.cqacSuo2efqE7.SaZSyfaPO.Cmc..LtmKr8vJW4JMp.VYRSZRXSaZSsIikINwIJTvESj9XRADflS2DKX.2dZRSZRvEWbQnZBz5W+5QRIkDV25VmVSONIjPBXgKbgBUyGa12+8eO7yO+z44Ml+yZ.fZqsVL9wOd7pu5qhO4S9DsF4YwDSL3C9fO.+4e9mB2uKbgKTu6TIQtIIoRkBO7vC81loO8oi4Mu4Yvc6zQNxQPjQFIVxRVBd5m9o05MgjQFYf4Mu4I7u.6IexmDgGd3577SXBS.VZokFrtL0XiMhG9geXbpScJrjkrDsVBG98e+2wK8RujPSnps1ZqdiX0lIR1A.3ZoJ1nhJJLu4MODZnghFarQTd4kixKubzidzCipbGbifn2.te94mAuoahHht4gmd3ABWpTDTfA0p1owlUZtfVBlEmtUV1YmsP6layQ4BPj9QaN6YOqP6jEisuE8dul27lGpqt5vnF0nfM1XCprxJUtf2SdxSVqWyS7DOgACH.fq8rDG9vGFe8W+03dtm6Qqs4zm9z30dsWS3EC+8du2SmAuwYNyYDpOZsAoYW6ZWQd4kmdaSEUTAVxRVhAqCl0TSM30dsWS3.1FvvYH.fq8bjKaYKyfs6jm7jn+8u+XcqacZcW1TZokh4O+4i0rl0HTPwLqYMKDZngZv1I5mOW0pVEbxImvjlzjfSN4DppppP4kWNprxJ04jOOyYNS74e9mKz38i9nOBwDSLXMqYMZ84dOzgNDVvBVfvSPp81aOV+5Wud2gUh7+mzu90OXkUbukPWmUVYEBKzPQXgFJJszRQpoICYlUVFUlhjHhHwMqYMKgBHfFZnA7LOyyfyblyfO+y+b3pqtp14UnPA15V2JV3BWHRHgDD581We8UuAJa80Wuva7plEarwhd26diUu5Uq0fsTtb4Xiabi3C+vODW7hWTn9zJqrBey27M577EWbwPlLYFreD4dyehm3ILX.A.bscx+1291wJVwJz48Lu28tW75u9qi3iOdC1e.WKa.qufGcRSZRBEP.xjICCZPCB+vO7C3AdfGnEqWPs0VK93O9iwm9oeJZngFLX+MrgMLLlwLFC1NQuu6su8sim9oeZ7vO7CC2c2cTSM0nbN4m7jmrIUZ7LjZqsVrnEsHi5ZV0pVkYebzLl0AHyAIJDMmpqhTKpQ7E6+pJONTOrDyOJwq85zsN9nO5iz6tzWa70WewPFxPPjQFIxJqrPJojhxcohndgW3EL3+AafAFnPKZr1Xmc1gt28tid0qdAu7xKjd5oiTRIEDWbwYT8SO6YOQLwDiNSgdM0TSvUWcEUWc05sel0rlkP6v94O+4iO6y9LgGet5pqH7vCGRkJEgDRHH2byEwGe7HwDSTne4Nv0Vz8TRIECVGRe7G+wEJiRzLKszRz0t1UkoBqXiMVDarwhRKsTgtdKrvBrwMtQ7fO3CZv190e8WiW8UeUgGaZyt10tzazw1d3odpmRncy18ce2G98e+2uALhnaE7ranR0N9eMStqiI5FkMrYcGndVas0HjfCFRCSJbSiI5oifi9P2EtZlop73g9e2EbIBSuNoeqfe629MgtOke3G9A7jO4SpyyO8oOc7q+5up29vd6sGUTQEF8h3szktTg1Q06e+6GicriUn9rgFZPncku9LkoLE8lVKu669twt28tEt+71auUdOw94mePlLYH93iGImbxBWBxBIjPvktzkz4WaKXAK.KdwK1f8S5omNBIjPDdrqo23MdC7+8+8+ITamyblCl6bmqZA0pBEJPpolJN6YOKd+2+8EdmhAbsIds5pq1f+7MmbxARkJUnRPPybyM2P+6e+Qe5SePgEVHN+4OOt3EunAC33l0291Wb3CeXgxzWAGbvBO4jZS26d206jpOiYLCidmCEZnghgNzgB+82ejVZogjRJIgmP7l8Mey2fm+4edcd9BKrPClMF.tVIG3K+xuznduoVZOCIX0Nd7mLy1oQRaiFZnAjYVYhTkICkIPlKA.XlS23x3FDc6n272qBUT60u2jO69bBtYO2pd2tQgBEXPCZPBmt0A.jHQB5ZW6JFxPFBbyM2PJojBRHgDPFYjgQ0G6bm6Tuy+4YNyYZUY7JO7vCzqd0Kzqd0Kk2WZ7wGOxImbLp94sdq2RuyQ9t28twce22sA6mMtwMZvLBkb4xQu5UuPhIlnviu.BH.HUpTDd3gCO7vCboKcIbgKbAipT+dG2wcXv.C8pW8pHzPCEETPAB2uN5ninu8sun+8u+npppBm+7mGIjPBBeu6AFXf33G+3BUJ2FyXFivY5JswImbBkUVYsIaDh0u90iG9geXyd+ZJrwFaPEUTQ6VoSf5XvbLm7LrtoVkW60dMrpUsJi5Wpje94aT0kFMMlwLFrzktT81FQRIm8nG8.EWbwZcmYUas0hXhIFgq+5Zi+96O9y+7O0a8zKwDSzfAC.f36Tn27MeS7ce22I7hlWd4kiyd1yZT2.opr1ZqwF23FMXv..bscL0ZW6ZEdR6ZpolPBIjfvQnplV4JWoPSxN.Dp1aoORjHACYHCoU0GsEDMCAvxE.QDcyqN4t6PpToH3f5L2wl2jwb86oaK2Quhz2RjHACbfCT39zZqsFN5niBcOv5hg1E5KdwKF6ae6S366rvBKDEVXgH5ni1jFOd5om3O+y+TuKDtHeuzKu7pUEL..vnJwB+6+8+Fe+2+8HjPBAgDRHnt5pCwEWbnpppxjduCKrvDJXOBLv.wrm8rw29seqv8cYkUFNvAN.NvANfIMt10t1kvk8K2c28VU.AXnOe9QezGgst0sJb.XCbs.EwXlfXMMm4LG8FL..hmEKZsk0B51CVas0HbogivkFNtRwEiTkIC4jS1nQA++kIhHR2jHQB9jO4Sv3G+3E9ZTnPARJojDpbfoKe7G+wFbyPIx87NtwMNru8sOsdthKtXbnCcnV0hDO4IOYrjkrD81Fy4blZgEVfEu3EiG3Ad.g5S.fbyMWjat4hibjiH70npvBKLrgMrAC1N6s2d7Vu0ag4N24JbeWc0Uiie7iKbVRSUt6t6XW6ZWBEL.M29ViAMnA0lkUDEYS1cix.Fv.Xv.PlEhUz.0.KY.TybxImvu+6+tVSs6sEl1zlF14N2odqip.hMYF20ccW3i9nOxbMzTi6t6N18t2sASIkl6T7pGd3A1zl1zMjEDn4fA39tu6Sn1GQDQfO8S+z13Q00rnEsHCNgWpJxHirU8900t1U3lat0p5CysJqrRguIeFP.DQzMWtVp4MLL9wEEF+3hBRCMrN7ACflOu.KX.hcefN6ryZsba0rBKrPjYlFdWkZp+tdQFicsqcU3EZsYs168xP0o9ANvAJ7tju0xCO7.6ae6C8pW8RusSjmOwbrPqSdxSFgEVXB2dEJTfzSOcbvCdPDczQaxAC.v0JyYhZIKYI2PJ2V93iOXO6YOBsy2aVa8mOiLxHwO9i+ndSuqlSu8a+1XMqYMFrcskkeD51ad5gGXnCdvXJ26jQ+5aegyNyLLFQD0ZEUTQgO7C+vaHuWVXgE3e8u9WX9ye9Frshb+Duy67NXRSZRligVKLpQMJglabQFmd6s2BGrtScpSsUm8YEUngFJNzgNjvk+0W9keYgRe+sV1au8XaaaanG8nGBeMs022soJ2byUnx.wMJ2wcbGs2CA5VDlT.APjpF5PGJ17l2ba9DQ+bO2ygMsoMITzPIRT9M3AOX7TO0SYvIuyX4omdhcricfd1ydZv1JxMeXkUVYT6zmwMtwgku7kKb6MEVYkUXCaXCXpScpF008FuwaXTKTuo34dtmCu+6+9F00LzgNTDd3gaxumsU27Qqgn07WIRjvc4CQDcSBWc0ULf92ebe26jwfG3.QmZkQSO09Qtb4Bs.wCbfCrE0uQU0VVW5uxUthP6HYSouezG8QM5qoYVZokBcuKuxq7J3YdlmwjeeDQm5Tmv9129Pe5Seza6RKszPwEWrA6OywBs5ryNi0st0YVe1Le7wGCFnyM+dKJ2c2cricrC3s2d2ZFZ5kKt3B14N2oQEnB.stOeBH1yF7HOxiXvrdWqkDIRvxV1xvG+werPsWjmM0CO7vn+9IQMyFarAcIhHwjt6Ihwdm2I5bPAo2eGGQDQ52BVvBvK7BuPa56gs1ZK17l2rv2WsglSdKrvBLvANP7EewWX1WKggO7gi+5u9KXmc1Yv1Jx88XryW5RW5Rw8bO2iQcMFqPBIDbnCcHgxVuMyZqsFaYKaAcu6cuMabYkUVgMu4MigO7gaTW2i7HORqJHYaqlS9XhIFip7V2ViAD.YtXZ24MSQ.jFtm64dvQO5QaUKpptDZnghe629M7se62J7CKJ5uTu4HbzCO7n0NLAv0pWoW3BWP3eYjHAtPu5UuD5FYT0y+7OO17l2rQuasDg6t6N1vF1fQkFjT0JVwJvG7AefY+l9r0VawG+weLV0pVkIc8aYKaAd5omlz01QLf.DM0WEYjQBW6.VqoIhHpkl33m.hPZ35sbDQ2b3hW7hnxJqzfsyPkjn1xczaaYvF7xu7KioO8oazWG.PO6YOgiN5nPsc0qd03S9jOoMIvkCN3fwd26dQe6aeMXaE8mSlqfzbHCYHlscLVjQFINwINABN3fMXaM1rFWngFJN5QOZaRvo1291Wb3CeXzu90Oi9Zm7jmLdy27MMo2WWbwEgmr0W+0ec7q+5uZ1dVTUMvANPb7ieb7JuxqH70HZPJQj4f2d4MF9PGFlx8dun28pWB++qSDoNl0snUtxUhUrhUXvroqoXBSXB37m+7BOGvhjsR6RW5hxrf1hW7hMKYLIKszRrnEsHb3CeXglK7ryNasVBg0jw9bNVZokXqacqF08eYL5Uu5EN3AOnvoieU4latgCbfCzlDvBAGbvXm6bmlTVenW8pWl7b4Cz1Mm7W5RWpMoeMUFafVPjtvPwkLaF5PGJN+4OOdkW4ULKkP.GczQrjkrDjTRIYTK9rBEJL3jt4latgHhHB.bsZ734N24ZUQZkyN6LV9xWN1wN1A70WeE5Zpt5pQbwEmAamotSgdvG7AQLwDiQUOozmvBKLr7kubjc1YioMsoYx8ikVZIV3BWHN9wOtIMAcZy3F23PrwFKd629sM4cXPu5Uuv9129Pm5TmL5q0P0Iz1ChFP.FZgFHhHhLKzbhdTb68zWZtpYkhr.dl5N50bVWM0jUVYEV25VmQmso.Lt66RhDIX9ye93fG7fBsv8hXPCZPX8qe8H0TSU3r3UaYvUnKu8a+1XyadyFU4CPUVYkUXNyYNH5niVnrC..Pd4kmQ+9DYjQhniNZrvEtP3jSNYzWulb0UWwRVxRvoO8oaU+L+y+7OGu1q8ZF80M3AOXi54Ql1zlFhO93wLlwLLK0+Te80W7C+vOfScpSYT+akryNaTPAEXv1wxE.YtYms1gt20tg6chss6nRhH5VURjHAuzK8R3bm6bHpnhxrzmQDQD3u9q+B6ZW6xnJwSm6bmyf6pZUuWh4Mu4gctycBu7xKSdr1ktzEbricL79u+6KbP.ehSbBgZmobeO1XiMXYKaYXqacqlsrpzccW2E1wN1AhM1XEtDFnM93iOX6ae6XUqZUspum2L6ryN7pu5qhDRHALtwMNSted9m+4MorcbXgEVaV1FqiT.ADd3g2llU0nauzwtXiR2zwQGcDKaYKCKZQKB+6+8+F+zO8SHojRBJDbRecvAGvce22Ml5TmJt268dMo5x9ku7kgmd5od2s2CcnCUsHPLnfBBG5PGBqd0qFabiaDQGczBkVXF9vGNl8rmMlwLlgQGQ6+8e+2nwFazfsq0rfsRkJE6d26FwEWb3q9puB+4e9mnjRJwn5igMrgg4N24h6+9ueyxjT0rAO3AiXhIFbzidTrxUtRricrCiplk5kWdgYLiYfm+4edyVJOpO8oOH0TSEabiaD+xu7KH5ni1fWiyN6rQUajtQozRKUYPunOicri8FvngHhHhTUN4jiP+dZCcefkUVYFreL0fdsfBJvf8sUVYkASW956Z+0e8WwgO7gwu7K+B90e8WEJqIXJ6BjQLhQfyctygCbfCfksrkg8u+8iZpoFgudIRjfIO4Ii4N24hQMpQYzu+EUTQF76k94melb1pRWdvG7AwTlxTvxW9xwhW7hQ4kWtAuFO8zSLkoLE7Nuy6n1jXFTPAYvZ7Y80WuIMNsxJqvG7Ae.l6bmK9oe5mv+9e+uQ7wGuvOCYyod1m4YdFLqYMKyRvoC.7ke4WhG9geX7K+xuf0u90ihJpHCdMlxmO80WewF1vFPVYkE9lu4av5W+5QVYkkvWuGd3Al7jmLl5TmJhJpnLocHXxImrP+eRibjizn6ahDg4XGhRDQ2NqKcoKXO6YOHwDSDqXEq.aYKaAEVXgBe8ADP.39u+6GScpSEidzi1jxvVomd5F79IzbdHaNKDrrksLrksrEHSlLC99Xqs1hG3Ad.L6YOaL1wNVi92gbzidTgZWqIPHu+6+9wTlxTve7G+AVwJVAN9wOtQcuxVas0Xlybl30e8W2rEXyM6EdgW.yd1yFaXCa.qd0qFm9zmFM0TSBe88nG8.O0S8T3Idhmvj1XcZyK+xuLhJpnvu7K+BV6ZWKxLyLM30zVlwdqs1ZE5diuQXJSYJs2CA5VHRTH5SYqhjKrQ7+cfqp7XodZIdqwYddna5VOkTRI3Dm3D3rm8rnnhJBkVZonzRKE1XiMvWe8U4eBN3fwnG8naSRwQFqBJn.rqcsKjYlYh7xKOjWd4AKrvBDXfAhfBJHDTPAg90u9gtzktXxuGu4a9lBU2HiO93MaK3rBEJPhIlHN9wONRM0TQIkTBJojRPM0TCbzQGgKt3Bb1YmQngFJ5cu6M5cu6sYIhAEQSM0DhO93we+2+MRM0TQokVJJqrxPUUUEb1Ymg6t6N5Tm5D5QO5AF1vFVaR4oPSEUTQHmbxAETPAnvBKDJTn.1Ymcvd6sGt4lavKu7Bd6s2sIo4Sh5n5Y2f5KVy+ZlhWufIht80wlw3PMYjhxiGxurS3Zjsc0vP5lO0VasHyLyDETPAH+7yGUUUUvN6rC1YmcvImbBd5omvKu7B94mes5R.PCMz.N24NGhN5nQ1Ymsx6It95qGN6ryvYmcFt5pqHxHiD8t28F8pW8BN67M2+9tFarQjd5oijSNYk+IqrxBt5pqvGe7AAFXf3Nuy6D8u+8uCwByUZokhSdxShyblyfBKrPkOCoBEZp98YJ...B.IQTPTIT9bA94meXvCdvXvCdvs4+7owFaDYjQFnfBJ.ETPAnrxJC1ZqsvN6rCN5nivCO7P4mOs0Vaa0ue4latH5niFwEWbn3hKV4yF4jSNo1yPGQDQf63NtCyZfaS2XrmgndY3X7mzvS7MQD8l+dUnhZu9T4+o2mSvc6a++81TGSxjICQGczHwDSDkVZonjRJAUTQEvc2cG95quvGe7A95qunG8nGXfCbfcHtGv3hKNbjibDb4KeYjWd4gBKrP3pqtpb93CJnfvHG4HaUKDcDQDARM0T0aaBO7vQJojhdaiwn1ZqEm9zmFm3Dm.W9xWV4yeHWtb3ryNCWbwE3latgt10thd26did1yddCaMRpt5pwoO8owoN0ovku7kUdem0We8vc2cGt6t6vau8FCbfCDCcnCsMedvUnPgZ22cwEWLrwFafc1YGbvAGfGd3A7zSOge94mYKPfI5lAli4jmAD.QsS5ZW6pAS+Ld6s2JCFAhHpi.FP.DQlhiMynPMomrxiGxOuC3ZW53kgcHhHhtQfAD.QjofAD.QsNIkTRBkoYmyblCVyZVyMfQDQDIFywbxyUYjn1AqacqSnZQy8du2KCF.hHhHhHhHhHhHhHpUXQKZQB0Nll1IhtUjIkqE0LkBv3PjHwcnCcH7lu4aJTa4MePDQDQDQDQDQDQDQllZqsV7ce22gMu4Mav15fCNfwMtwcCXTQDQ2X05J9hDQ5UJojBtq65tfqt5Jr0VaQEUTgv0eH6s2dDUTQ0FOBIhHhH5F.MqGkFeUKiHhHhHhHhHCZEqXEXYKaYvYmcF1XiMH8zSGW4JWQnqMpnhB1au8swiPhH5FOSKf.XJBfHgbxSdRjc1YiryNai9ZG23FGbvAGZCFUDQDQDQDQDQDQzMSzLFaawbzSDA.fCe3CizRKMS5ZYF6kH5VUr3jSTanScpSYRWmkVZIdu268LyiFhHhHhHhHhHhHhH5VWl5bxGYjQhYMqYYlGMDQTGCLf.HpMjodyGu8a+1XvCdvl4QCQDQDQDQDQDQDQDcqo7yOeSJa8ZokVhe9m+YVt.HhtkkIEP.rhAPjg0PCMfye9yazWW+5W+vBW3BaCFQDQDQD0dQimXPAyuoDQDQDQDQj40oO8oMoq6se62FCYHCwLOZHhnNNXFBfn1HwEWbnt5pyntldzidf0t10Bqs151nQEQDQDQDQDQDQDQDcqGSIi8NiYLCtA8HhtkGCH.hZiXL27gu95K9tu66PrwFK5V25Va3nhHhHhHhHhHhHhHht0iwLm7CaXCCQGczXCaXCbC5QDcKOqLkKhI3ShLLYxjAas0Vclk.b2c2w.G3.wXG6XwK8RuDbxImtAOBIhHhH5FCIRTujAnfkL.hHhHhHhHxLKqrxBVZoknolZRqmOzPCECZPCBSe5SGO3C9f2fGcDQT6GSJf.HhLrktzkhktzkhJpnBTVYkgxKub..3hKt.WbwE3lat0hIGmHhHhHhHhHhHhHhHiWRIkDjKWNJojRP4kWNprxJgs1ZKb0UWgqt5JbzQGauGhDQT6BSKf.zXC8v0zjHcq4..fHhHhHhHhHhHhHyAlysHR6rvBKfmd5I7zSOauGJDQTGFVzdO.HhHhHhH5VbsHBh4zWRDQDQDQDQDQDci.CH.hHhHhHhHhHhHhHhHhHhnaAYRAD.2OODQDQDQDQDQDQDQDQDQDQcrwLD.QDQDQDQswznjAnfgXLQDQDQDQDQDQzMBLf.HhHhHhHhHhHhHhHhHhHhtEjYojAHQqshHhHhHhHhHhHhHhHhHhHhZuvLD.QDQDQDQssjndHDqfkL.hHhHhHhHhHhnaHLs.BfoH.hHhHhHhHhHhHhH5FBIZLI7JZwjzSDQDQj1wLD.QDQDQDQDQDQDQDQDQDQzsfX.APDQDQDQDQDQDQDQDQDQDcKHSJf.XECfHhHhHhHQIQhFo2TlcSIhHhHhHhHhHhtgfYH.hHhHhHhHhHhHhHhHhHhnaAw.BfHhHhHhHhHhHhHhHhHhH5VPlk.BfkL.hHhHhHhzIMJY.Pg71mwAQDQDQDQDQDQzsYrp8d.PDQDQDQDQj4xYi47ngFZ...N3fCn28pGsaikpppZDeBIp7Xu81aDVnA2tMdHhHhHhHhHht8iIEP.JTnwKvTD.QDQDQDQD0Nqt5pCe9R+ZH++8PqCcHCrcMf.NebW.e8JVsxiezGYFLf.HhHhHSilyAeKljdhHhHhzNlg.HhHhnaI0PCMfLxJSjpLYXhieBs2CGht8VKl7x1kQAcafzyLKkAC..P3RCSmssfBJDwm3EUdbWiLbDP.9aVGOoJKM0NN7v083gt40wOwoPs0VK..ryN6vcLrA2NOhHhna8ry8raDtToHjNGLr1ZqauGNDQDQDcSEFP.DQDQzsTJszRQpoICYlYlnwlZp8d3PDQzMPokVFpcr9BHfib7SfMs4sp73E7tuo4Of.RMck+cKjHAgERHl09mZ+UWc0gkuxUC4xkC.fd1yty.BfHhZCTd4kiyFSLH1XiEAGbvH7vjB2c2816gEQDQDQ2TvrDP.rhAPDQDQsmZrwFQVYmERQlLTZok1dObHhHpcRZomgx+tDIRPXgEhNaapop9t2WZXgZVGKM0TSHcUFOAET.vN6r0r9dPs+ROiLUFL...gK0794HhHhTWiM0DjkVZPVZogN0oNgvkJEcNnffUVx88FQDQDQ5BuSIhHhH5lVkUdYPVZogzyHCzXiM1dObHhzAIRzHDhY8NkZinZFBHv.7G1amc5rsxR656de+8yW3nCNXVGKxkKGy6MeUkG6hKtXV6epigTkktZGGgdxJEDQDYdURIkfSURI3bm+7HzPBARCSJbk+9VhHhHhZAFP.DQDQzMUZpolP14jMRMszvUtxUZuGNDQD0AQc0UGxM2Kq73vCWpNaaQWoXTd4Un7XosA6paqs1Zz6d0Cyd+RcrjpLMxzDLf.Hhna3ZngFPxojBRNkTfWd4EBWpTDX.A.Ksvx16gFQDQDQcHXRADfl6mGVx.HhHhn1ZUTYEJyF.0We8s2CGhHh5fIiLyFxUI6SDQ35dgYkowh3FNWDWxDISkLDf6t6F7nSrdVSDQsmJpnhPQEUDr0VaQXgFJjFZXvImbp8dXQDQDQT6Jlg.HhHhnNrjKWNxI2bQpoICEVXgs2CGhHSllgPLKY.2poI4xQIkTJbxQGf81auYu+qqt5PYkWAbxQGfiN5nVaSZomgZGquZ4dJZjl26nW22qu95QYkWNb1ImLpu+VYUUg5qqd3t6tAKrvBy93prxJG1aucvVas0r22W8pWEUTYUvImbzrWNG..ps15PEUVAb0UWgs1XiI0GUVUUH+Bt98mHMrN1eNhHhtcRc0UGR5hWDIcwKBe80WDdXRg+96GrPh4+2GRDQDQTGclV.AvTD.QDQD0FpppqBxRKMjV5oi5pqt16gCQDQZQRWLYrycuWjQFYgBK5JnolZB..N3fCvau8D2wvFBh5ttSct.95Ss0VGh9uOEN7QNFxJqbPUUWsxyYiM1fd0ytigNjAgQNhgAK+eKzsrzx35swZqQmCJPkGuuCbXbwKkrxiSHgjT68a66buXO66fJOdf8uuXnCYPF83tY0We83699+ixiCN3NiIeOSnEsqzRKCqcCaV4wSbBQAogEB.tV.Nr+CdDb5yDCJszxT1FWb1YLhQLLbu2yDfWd5gZ8WSM0DNyYOO1+AOLR5hIiZqsV..XgEVf.72WL1wLZLl6bjFbA128dO.RIUYJe+dr+wLA.PJolFN8YOGxHiLQ5omIJq7xgDIRfO93M5bPAhvkFJtm6NJSJ.AJ5JEisuy8fjR5RnvhJBUU00+YtkVZI7ziNgAMnAfQdGCEgEZHFc+WbIkhn+6SgSbhSgbxMWb0qVqxy4latBe8waLvAzOb2SXb5L.Az7mWUVYUpc9BJn.rxucMJO1BKrDO+y7jPhDNoIDQT6o7yOeje94C6s2dHMzvPXgEJbvdyevl0VigXKQDQDYpXFBfHhHh5PPtB43xWNOHKMYHu7yu8d3PDQjNjQlYg078+LRNkT054qolZPFYjExHirvusk+DSYxSDSeZ2uv8+IO0YwpV8ZTaAaUU80WONaLmGmMlyi8efCg+4K9rvKu7TsLDPngFBrzxqW2f28dO.xHiL046Yzm3jpcbe6SuDd7pMYjY13vG43JOdJS1Us1tKkbJp0tY7fSEJTn.qei+F15erMsdMUTYkXG6bO3D+8ovhdu4g.72O.bsEm9yV5WiKkbJs3ZjKWNxNmKi+yurdrssuar3O7cgmd3QKZWy18d1OxNmbA.vPGx.Q80WO940tQr68r+VzVEJTf7yu.je9EfSc5yhCbnihW9EdZDYDgqy9WUWo3hwZW+uhnOwIgb4x0ZaZpolPAEVD1112E1112EF0HGNdgmaNJCFDC4O11Nw5V2lTqjRnpxJqbTVYkiKdoTv124dvLenogwdmirEsKoKkrZ+7RSYmykQ14bYkGGbmChAC.QD0AxUu5UQ7Il.RHoDg+96OBOLovWe7g+e0DQDQzs7XNRhHhHhZWUSM0f3SHA7Wae63XQebFL.DQTGX4l6kwGsjuPmACflpst5vl90eG+wesCgZ+e7W6.K8qVgNCF.McwKkB9juXY3p0VKx8+s.1..gG90Sc60Ue8HqrxVn9qYQDtTip8ZRVZpWRBhPGkj.UKcAd5oGvEWbFK8qVoNCF.UUZokguY0+a..jeAEh2cgejVCF.MUbIkfO5iWpxL5fltZs0hbx85KpcjQFA9pk+MZMX.zl7yu.rfEsDrKAZewkTJVzG9o3XG+D5LX.zlibznwJV0+BJzwB72rZqsN7ke8pv+csaTmACflJszxv29u9dbpyDSKNWJollviQ.fvakeNhHhn1FJTn.4lat3vG8HXa6bGHoKdQTachcuGDQDQDcyHSJCAvJF.QDQD0ZnPgBjeA4iTkICWNu7L3D5SDcyMM20U7eyeyopppZ7ge7WfJprRkuVXgFBF9vGBjFZHvImbDUUc0H2byC6ceG.YlUNJa2+ccaB94muXvCr+ZsuarwFwZ9geFG3fGQsW2Oe8AicLiBAFX.nSt6NJojRPVYmKN1wiV4NwN6ryAq46+Y0Vv2vkFlx+dYkVFFP+6qxiyO+7UaWbGQ3Rgatc8cvu0VaM7wauLtu4ngTko9BGKUkwiZsSkEX1au7Du26uDjQFYA..GczAL1wLZzydzM3fC1iyFy4wINwoPAEVjxqI4Tjg8evif0s9Mq7mKt4pq3tF6nQjQFNbwYmQVYmC15erMje9En75t7kyCYlU1ZM06mVZYn1+F8HGMZ0xtB8t28DCenCF94qOvJqrB48+994d22AQM0TC..jqPA9k0tQLvAzWclIBJu7JvGtjOGEpxWOVZokXPCr+XPCrevSO7.N3fCnpppBImhLb3ibLb47tdPCd7nOIdvG39PfA3uV6+7xKe7Ee4xU6m0..AEX.XL24HQ.A3Ob2MWQokVFxLqrw11wtQEUb8Oa+s+quGgGVnnScxckul81YGFz+6yvJTn.m4rmS44bxQGQ25VWT68ZvCreZcrQDQTGGUWc0H1KDGtPBwi.CHPDtTovauZc2G.QDQDQczvRF.QDQDcCSs0VKRK8zgrzjgp+eKZ.QDQ2bHt3S.kTRoJONpwMFL6m7QaQZaumcuaX7iaLXsqeypkY.N3gNpVCH.EJTfO4y+JD2ERP4qIQhDL6m7Qw3G2XTKfRBKzfw.GP+vjmzDv+c8aF6Xm6A..G8XQqVeFgJK.uO93Mdq49OUd7pWyOo1hD+hO2rQ.5XQkMUxTYm+6pqt.u7rkKJtb4xQZpjIARLoKo7u2+90G7OeomEN5v0quwcMxHvCMs6Guw7VfZKL9p+te..W66YSYx2ClwCd+vZqsV44CWZnX3CcvX9u66ibubdJe8KkbpZMf.RUiraPyACfKN6Ll+a8ZHhvUO3FhLhqsK3m3DFGV42tFDe7IBfqUZG9k0tI7Z+ymuEuG..+5V+SbYUFOAETf3cm2qCO7nSsns8rGcCSZhQgk9UqDmO1Kn70SLoKo0.Bn5pqFu6hVLprxpT9ZVXgE3Ye5mrEkBfPCIXz+90GL9nFK9zO+qvEuz0xxBUUU03O29tvS7nyRYaenG75k9hBJrH0BHfALf9hW54eZs90JQDQc7IWtbjU1YgrxNK3hyNivkFNBI3fgM1XS68PiHhHhnVMVx.HhHhn1TJTn.ETXA33mHZ7Ga6uPbweAFL.DQzMghOgjT63GbpSQm0vcIRjfGYVSGgDRvJesTRUlVa6wh9uUKX.rvBKv+7kdVLgnFqNqouVas03IerGF8qu8tEmyYmcB93i257qCYpr68s2d6g+96mNaqo3pW8ppsf8RCS6kKfbyMOTac00hWeZScJX9u4qpVv.zLqs1ZLjgLnV75VXgEXtu5Kg+wrltZACPyryNawju2Ip1qUasZO0HmpVRK9t3hy38Wv7aQv.nJO5j6XtuxKBGc75i6nOwIQ1pTJGZVSM0Dh9DmT4wcxc2vGsn2VqACPyr0Vawju26VsWK4Tz9mo15erc0BF.arwFLu23UZQv.nJGcvA7Ruvy.qr556ahzSOSc1dMyBDgqir.AQDQ27ohJqDwb9yg+ba+EN4oOMJtjRZuGRDQDQD0pXRAD.SvmDQDQjgTWc0gKdoKgsuqchCd3CiryIGllvI51UZtnt7+J3lRYlY1J+6VHQBjXg9KdbRjHQsEPt7xqPszcOv0JU.abSaQ4wVZok3Me8WFiX3CUnwzS7XObKBZ.8svr0UWcHqrudoLPZXgpyfNvTIKc0S49gKU6ADPJxZ4BuO8oc+XlOzCn2wjiNXeKdsG6eLSLjAO.8Nt7xK0yRApVlDTklKzsqt5Bd+ELeDTPAn29G.vImbDS4duG0dsLT4yMMK1KjfZom+wN1QCGczQC1+ZlBmswlVF7CEWbIXm6ZuWuMVaMVz6MOz+90GC1+93sWH3NGjJi8rzYaSIUFP.DQzs5ZrolP5YjN1692G18d2CjklLzXiM1dOrHhHhHxnwRF.QDQDYVUzUtBRUlLjcNYC4xk2dObHhHxLI3fCBImRp.3Z0H9M+a+AlyS9nvBcjk...drGYlXFO3TUdrp6db.f8cfCqVPBLt65Nw.Gf30cc+8yW3kmdfBK5JJeM8svrokdlp86lBObsuX8sFpVt.z23QyEdOhvkho8.Swf8ulAUQvcNPb2SXbF75JszxU6Xu7xyVzlxKuBbkqTrZu1yLmm.AEngCFfl08tEoZGe47xqEsI.+7EK3ceSkGGVHgHTemUVpGbAZqTLrgMuETeCMn73wMtwnrrFHhwNlQoVvOTSMWENnkfvP0LofUVYEBN3fZQaHhH5VGkVVY3zm8r3bwFKBI3PP3RCCt4pas2CKhHhHhDhoEP.ZridLyanBhHhH5lL02P8HiLyDoJSFpnhJZuGNDQD0Fnm8naXu66fJOdu66fH+BJDO9+XlpsqpUkc1YKryNa054pqt5vusk+T4wVXgE39zHs1Kh.Bve0CH.8jV6awhv2FrqtSUv.BPycX9y+rOkNKACpJSM1w8O1+XVBdcpua2CM3N2h1n42eBL.+wfLh.z..snbMjmJkOAUai9JqCZSokVFV6F9U0dsPUojT..b47xGG9HGW4wVYkUF8moF+3FCF+3FidaSSM0DRO8LTYbzYXsUb+VPDQ2NnwFaDoJKUjprTgmd3ABWpTDTfAAKszx172aNE7DQDQjohOwJQDQDYxJtjRtV1.H6rPiM0T68vQm1vl2T68PfnauMwYcs+7+rWYY.HKCital4zeHy2XhLZCenCF+8IOCNweeJku1EtPB3Ml2BP+5auwDhZrnu8s2Bs3z..GK5ShxJ+56Z8QNhgo0cstgXkFKDq9Vj+aDo48zR65ADf2d6Eb1YmZQapu95Q1pT5B70WeDZW32TSMgLx3500dmbxQzydzMgFWptX+93sWZME8mhFAyvTl78XzkTA6sS8cSeEUVkQc80We8njRKCWo3hQwEWBtRwkfKdwjQhIdQ014+..QnwN+OlyEqZkqg6ZriFcpStaTu+hHqryQswhTi7yQ0Vac3nG+DHyrxFUUU0HnfB.gFRvn28r6s3yyZRgBEX8a72vLl9Tugr3Sj4iZ2O5a7E59bDQ2z3JEWLtRwEiXN+4QngDBBOLovYmct8dXQDQDQTKv.BfHhHhLJVfFgORxCAfLwd2ekF9BHhH5VFu3yMaHWtbbxScF0d8yc93v4NebnScxcLwILNLgnFKr29Vll0UUBIljZGeO2cTlzXJ2burx+ttV.9lISkEEuSt6lYewhqnhJUKaEHMLsWRBROirPSpDHc8o28Tn9O6bxUsEhtW8r65sjMzrlZpIHKsLt93RGKfspe+wc2cCi7NFpPiKUkeAEn1wtnmedTSMWEIj3EQbwm.RN4TwUtRwnhJE6dKBJn.giNndInHoKlrZGOx6XXBNpMNhlEHzlyFy4wpWyOhxJq7VbNWbwYbmidjX7iaLvGu8RqW+11wtwV+isAIVHAy5gllwMvIhHpMQ80WOtTxIiKkbxvGu8FgKMbDf+9KzuilHhHhnaDLo.BPggaBQDQDcKlRKqLDgEIAekjGrBM1dObHhHpcfs1ZKdiW6kveepyf0t9Mi7yW8E+sjRJEqc8aFa8O1Nl9ztObO2cT5bxvSJoKo7uagDInyAEnQOdZrwFQ9ETnxi02ByVdEUn9h02Fjc.jkl5KTbD5n7EnYp4u28r6B0+ZlgC5YOD65xLqrQ80Wuxi0UYUP0wUDgK0f6Vcs4xZTh.bwEWZQaJuhJvp+te.wbt3fb4xMXeZgEVft1kHPhp7Ylt1kHZQ6xPixhP.96mnCaiRKyzDZOvOzTrwEO9hubEpELHpphJpD+4esCrsssSL7gOTbeSdhHDUJsCG83+M9uq6Z6j7CcnihGZZ2OyR.DQTGLETXgnfBKD1YmcHrPCERCKL3nCsLq7PDQDQzMRLCAPDQDQ5TiM0HxN6rQpxjghKoDDHKZgDQDAfgN3AhgLnAfXNWrXG6ZuHtKjfZmulZpA+meY83Tm9rXtu5KAWcU8EEtwFaDWo3RTdrWd4oIs3y4WPgpsfx5ZgtA.j0J1U2hJUMBH.o5Xgh0bAkiHboZscsn+0HPBhLBwttjSQl5ueZYbUPAEhpppZkGapKlddZDP.gFRvsXr7+srUhRJoTsd81YqsvKu7.d4kWvO+7A94quXPCneH0zRWs.BnacMxVbsUpR1EvEmcFN4TayBvn5OGbvAGf+94qAulqVas3a9WeOZpolfkVZIdjYMcbmiZDvJqrDomQVPVZoi8tuCh7xu.HWgBbrieBbrieB3i2dgd1ydf7xKejXRWD.WK.IdwW3oYv.PDQcfUas0hDSJIjXRIA+8yODtTovOe8ynKEODQDQDYNv.BfHhHhZgxqnBHKMYH8Lx.MnQ85kHhHB.PhDIX.8uuX.8uuHu7xG6bO6GG3fGF0U202I5Icwjw+2xVIVz6MO0V7xJ0ntx6m.Knp1bjicB0NVW6He.fj0bWcGtX6paigpAcfERjfvBIDcztqOV7nScBt6taB1+W+5r0VaPPBlUETMf.rvBKZwhzC.jhFAaP.AXZADv4i8BpcbO6dWU92iOwjvh+3kp1Nj2AGb.ibDCC8rGcCcqKQ1hfGoYWbG6Vsi6ZWTOf.ZrwFwUuZsJO1T+Lkgb0ZqE4jStJONrvBQnE2o95pGM130xvRuvyMaLpQLbkmq6cqKn6cqK3dl33wQNZzXKa8OUl4KJnvhPAG3PJaqERjf+4K8rn28rGlouhHhHps1kyKOb47xCN3fCPZXggvBMTXuc5uzJQDQDQj4jYojAv3ZjHhH5leMIuIjSN4fTSKMTTQE0dObHhH5lH94mu3od7GAS+AtOroe62wt189TdtjtXxX66bOXJ26DU9Zpl95A.b0UWM52yqd0qhcum8q7XcsP2MSlFK3szvZaCHf.BL.Xmc11h1TYUUoVYNHhHDKSETWc0gryVkEhNzPfkBVahSI0qGP.AEX.vVaa43RyrOfmd3gP8spR7hWBW7Rob82qfBDd4kmJOdiaZqpEL.8rGcGuzyOG3gGcxv88+a2wCbsfnvKOUe7YokVBarwFke1RgBCWJBLEokVFPghqOqHQHXllvUWcAu3yMGr68d.0BF.UYoEVfwL5QfQMxgi+9jmF6a+GBYjQVnppqF1ZqMnacsK3Ql0CgPBNHyxWKDQDciUM0TCtP7wi3SHADX.AfvkJEd6k2LqAPDQDQs4XFBfHhH51bUVUUPVZxPZomdKVfFhHhHigyN6Dl8S7OP.96G99e7WT95WH9DUKf.7viNAKrvBko6+hKtXi98Zu6+PnlZpQ4wctyABaswFc1dUWva+82O3nCNXzum5SwEWBJq7xUdrtpq7lZoKHszyDxUYgnE85prxpP94Wfxi0UYLH0TUebcES3mIa822lZGOyoOUk+8JpnRbwKkrxis0Vav7eqWUu+LS4XSV5PVZYn73t10HZQajHQB7yWuQlYkC.fZkjBQHWtbj3Eujxc.gSN4HBI3NqkwhlYZBwK8D8ue8oEY1.swRKr.2wvFBtigMD.bsu24jSNBKDL.PHhHpiMEJTfryIGjcN4.mcxIHUpTDZHg.asokArGQDQDQlClV.AvTD.QDQzM0jKWNx8xWFxRSFxufBL7EPDQzsk1wt1K9oedcJO9cm+bQe5cOM30E0ccmXy+5uiJ9e0zcMWDUqrxJ3i2dg79eKTcd4Yb+tnJpnRrMMRg75aAxyufBQUUUsJs07mc.RUvE5Wy1EQ3REr+U+6ghdcImRpFbb0TSMgzyHS0dsbx8xB0+W+8QlZkKfHBWJF7fFfxiK5JpGfA8ue8QnfA..3u19tT6Xcsn593iOJCHfxJsLTYkUAmc1IgdON7QON9lU+8JO9gm0zEJf.DMCAzLGbv3SQzp8EQN...f.PRDEDUt3hyF80PDQzMGprppv4iMVD2Et.5bPAAogIEd4omZuwZLG7JzbN5IhHhHRGX3kSDQDcajpqoZDW7W.+412FN9IhlAC.QDQ5UHgzYnPgBk+IyrxVnqShDIPgJQRt11wa96+0qQ8EWRIH13hWn9t7Jp.u+h+LTZoko1qqu.BHkTUeQb6bPAJz6kwH0zzXmiqqchuJKnrERjfvBMDg5eM+ZPzcldxpTt...hPKWW14jaKxRPG5PGCW8pWUn2CYokA9zu3qT60d3Y8fpcbc0UmZGGjf+LHoKlL96SdZ0dst1kVlg...70WeT92kqPA10d2uVamlpolqhMs4sp7XqrxJbW24nzZaSUkeN3jiNB2c2MgdOHhHhzG4xkiLxLSr+Cd.ry8rajhrTQCMzP68vhHhHhtEAKY.DQDQ2hSgBE3x4kGRMMYHu7xq8d3PDQzMQBoypuCo229ODF8ntC3pKtn2q67wdATYkUo73fBJfVzlAz+9hyFy4Ud7+ccaBcu6cEVakteL0xKuB7AK9yP14jaKNm1Vn6loYfLXi.6L8qTbwpU1C..BtycFy7gd.s1dU24+Vas05LnCTMf.BJn.gc1IV5AVVZWu+cyUWgWd5gPWWxob8.BvFarAAEXK+YglAa..PYkWNV+l1BdpG+Qza+mzESFexm+k3pWsVkuVu6cOQO6d2TqcZ9YfDRHIL8G39zaeG8eeJrxuYMJKsD.WKXSBPkfIQUCaHCB+4esCkGuqcsOLp6XXvGe7VmuG0TyUwh+juPsRLvvG1f05txu5ZpQs1YishkgCHhHhLFkWd43rwDChMt3PvctyH7vjB2c2816gEQDQDcSLSJCAvJF.QDQzMGpstZwANzAwQO9wXv.PDQjQyAGrGAEn+JONu7K.ezR9BD2ERPsEosY0We83.G5n3+6qVoZu93F6c1h1dWiYTpkR1yHyrv7d6EgzROiVzV4xki+9jmFK38WhVCF.6r0VDX.92hWuYkUV4pc7t189PEUToxiKsrxz7RPRWLEblydd09Ss0UaKZGv0B9tzToF2GRvcFVok.annqTLJu7JTdrn6x+JpnRTXgEYzWmb4xgLUB.gPCIXXokV1h1oZPJXiM1.Kjbsmxem6Zu3K9xkq12qZV0UWM9yssSr3OYopEL.gEZH3Ee1Y2h16rSNgN0oquXFIj3Ew288+GTPAE1hwbtWNOr4e62wW80eSK1cjVas0vBs70.v0xJCidTiP4wUTYkX9u6Gfyc93fBMxqxxkKGG+DmDy+cee0BHBWc0E7PO3T0Z+q4miJojRw9O3QT9uEtZs0hZqsNscoDQDQFsFarQHKszvt22dQLm+b.nk26EQDQDQhfYH.hHhnagYms1gwdmiA4ke9HUYoh7xO+VLg3DQDQ5yK97OCVv6uDkKLalYkM9nO9KPm5j6Hv.C.t6laPhjqsXoWJ4TaQZleh2cTXHCd.snesvBKvS8D+CrvO3iU9ZYmStXduy6Cu7zS3m+9BO8nSnjRJEYkcNnjRJUY6BWZnvVasEIj3EA.PXgEBrvBcGu694q56P7KmW9X1O6KCO5TmPs0UK5ae5Md0W94TqMonQp1G.HhvCWq8e94W.polZt93SGKXepZrS70WVMPsqSkrCf95eMkat4o1h0Gd3ZuLFHSkraPW6RDvGe7F6ceGD..m5zwfyFSrHv.7CAFX.vBKr.EUzUP5YjIpqN0Ky.CdPC.+yW7Yfs1p8rdvvF5fv12wdTd7d22Awd22Agu93MhLxvQgEVDxHirPspTdAbxQGgGd3NxLqb.v0B5jMt4sh.72Wz+90G3rSNo16wiLyGDm7jmVYeTU0UiO9y9R3fCNfPCoyvau8BEckhQt4d4VT1Ir2d6v6Lu4Be71KsN98zSOfkVZIZpolT9Zq969A7S+m0BmbxQTRokgUs7uP3r9.QDQj9XkUVgPBNXDtTovMWcCaN6pACJ.hHhHxTv.BfHhH5VbRjHA96meve+7C0TSMPV5ogzROcgqKvDQDc6MogEBdtm4IwJV02o1qWRIkp1hzqMSX72kdS47cqqQhW5EdF7i+m+Kpt5quf5EckqfhtxUz50DTPAh4+VuFdkWe9JesvCWpdGG8sO8Fa5W+8VjUCJtjqk92CKzfaw0n4h2C.DotVneMVvdogo8EdOEYZFP.5ebqqwhnARPxolpFiqVdc0UWcH6ryQ4wgEVH3dumIfyFy4U9y2lZpIjYV4nbQ40l6aJSBOxLePHQhtygfOxLmNRHwKgLxHS0d87KnPjuFYJ..f.CveLu27Uw11wtU68dq+9eAar1Z7y+3paw03t6tg48VuJ91+0OnVVUnlZpAIj3EUFDIZxEWbFu1q7BZ8yBMyVarA8pmcGmO1Kn1qWac0gZqqN3ryNAO8PrR4.QDQjt3latgvCSJBN3NCqsx516gCQDQDcK.Vx.HhHhtMhCN3.5UO5Il7jlDFwvGN70GeZuGRDQDcSfQMhgiO58eGLzgLPkoSdcQhDIne8s2Xduwqf47jOpA66QOxgiu7yWB5e+5idamUVYEt+6aR3SW7BQokVlZAPPDR09Bv2LogEBdkW94zZcgG3ZoReU0PiMhz0XQqc0UWfWd4oVu9TkowN3WGiGUSe+1Ymc5sLGn10oYFBPKKru1bojUOKGns.IHszyDxUI6AIMzPfqt3B9+9rEi6X3CwfuGQDtTL2W8Ew+XVSWuAC.v0R2+y+MdEbGC++m8tuCuoJa+Cf+MIMcmNS2qzl1BTJk8RPYHfCDAw8VTbud804O2JN.wE33EEUbhHCADAYujUYOKkNR268dlje+QnmddNmSVkVBi6OWWuWW7bxIIOMou1my84949dDV8bG5PFDd+28MPvAEHFyUNJQ+dmFyz9C..RLg9fO8idOb8W2jr56iWpTg64ttM70y+iQhIzGKdt..+mm4wQRIknjOlFMlOYBHDBgPrDmTn.QqQCl33uZbsSbRHVsZojAfPHDBgzsQlwtPcC9f40NV3t6bWENfvTfG+JcuachQHDBgPN+n9FpGYloNnK6rPKsP88VBgbgq63VuMG8Tf.fxJuBbxScZTUUUiJqpJTSM0BO7vc3u+9A096G5aB8FAFfzkbcqohJpD4jW9HmbyC4kWAvSO8.QqIRDslnP3gEJbxISE4t5quATTwkv87hLhvLaYpmO8FLfyblzQ4UTAZrwlfyN6L70GuQeSn2vYmcl67Zq81Q1YmKyy0M2L+MvunhJF0yKAEhUazRdinyNmbQas0N..bwEmQjQDtUmy.lZSCs1poV1fBEJr3tXmuBJnPz3YaY.xjADqVwIDvZV65wO+qKga7WM+4x78W0UWCNzQNJxI27Qs0VK..72e+gZ+8CIkXBHLaLoFDJ+BJDG63mDkUd4nhJpBt3hyPkJUH3fBDCYPC.96ueLmel5xF63e2Mpt5ZPvAEHFwvGpM84PM0TKxqfBPAETDJnvhP0UWCTq1eDbPAhfCNPDerw1kJw+kUdEPmtrQs0UGLZzH7vCS+tZngDrc+ZQt7vRV1RczSABgbAHuToBZ0pEQGkFl0hHk+u0z.prgNq1Qu2M3NBvSoSNNBgPHDxkNdzkTGy3u4NjdyNXIcsVF.Uh.HDBgPtjgmd3I5eRIg9kXhHuBxGYlYlnzxJy5OQBgPHWVJ.09iwMlQ2i7Z6u+9A+82OLnAjjEOOO8zCatr4ymB4xQB8oWV87T5jS10qeH13MAVSTQZyul7EUjQzkdd1xMqme0MvSO7PTxb3iOdiqdbioK89aIgGVn1bER.vTUdPaLZr62Gu81K3s2dYS69e6Q.p8GAnlZO.DBgPrexkKGgGVXPaLZQPAFnM+7nPvSHDBgP5p5ZID.gPHDB4RNxkKGQEQjHpHhD0VWcHyLyDYkS1n0Va0QO0HDBgPH8PxfWaLH5tvMbmPHDBgXa7vCOf1XhAwDczvUWb0QOcHDBgPHWFgRH.BgPHDhHdoREF3.F.Rpe8C4ledHyLyDkWQEN5oEgPHDBoaTs0VGJszNqJPwDsFG1bgPHDB4RQxjICgFRHHVsZQvAErjsTHBgPHDBomVWJg.D2w.nExPHDBgboHEJTfniRChNJMn5ZpAKb8mFgHuP3DZ2QO0HDBgPHmixPWVLi0FsFGx7fPHDB4RMt4laHlniFZiIF3tat6nmNDBgPHjKyQUH.BgPHDhMwGu8FYXruPW68FAJuHDlrbfWxp0QOsHDBgPHcQYxqcA..DC0x.HDBgPNmDbPAgX0pEgFZnPtL4N5oCgPHDBg..Jg.HDBgPH1ICxTfhMFNJ1X33Cul1QFYlAxM2bQ6506nmZDBgPHD6PFY1YEBvCObGAEX.NvYCgPHDxEmbwEWPzZzfXiQK7zSOczSGBgPHDBQjtXBAHnoAPcL.BgPHjKK4mu9hgMjghA1+AfryIGjgtLQM0TiidZIxcbq2lidJPHWVK4G81PMGMYtwCbd+FBXDi1ANiHDB.PFYzYEBH5n03nlFDxkE3udzMN7nXdrIkbNmumNDxEcVxxVpidJHR.pUiX0pEgGd3PgbEN5oCgPHDBgXVTEBfPHDBgbNSoRkHtXiEwEarnrxKGYpKSjad4ACFL3nmZDB4B.xjwlAwFMZzLmIgPNeohJqBPFfWdoB..8oWw6fmQDBgPHW3SoRkPSTQgX0pEd6k2N5oCgPHDBgXS5RIDfv32QEH.BgPHDRGBPsZDfZ0XPCXfHqryBYnSGpqt5bzSKBgPHDBO96mu36+luvQOMHDBgPtnfe95KhUqVDYDQBmbxwrG6DFCdJEaIDBgPH1JpBAPHDBgP5Q3ryNidEeuPuhuWnjRKEYpKSjeAEPUM.BgPHDBgPHDxE7bRgBDYjlpF.94quN5oCgPHDBgzkQID.gPHDBoGWPAFHBJv.QyszLzkUVHSc5PCMzfidZQHDBgPHDBgPHL71auQrwDCzDkFnToRG8zgPHDBgPNm00ZY.BFSsL.BgPHDhsvUWbEIz69f9zqdihKoDjgtLQgEVH0OwIjK0ISvULP++4IDBgPHDxEPjKWNhH7HPrZ0h.Tq1QOcHDBgPHjtUTEBfPHDBgbdmLYxPHAGLBI3fQSM0DxLKcPmNcnwlZxQO0HDBgPHDBgPHWlvSO8DwFiVDsFMvEWbwQOcHDBgPHjdDTBAPHDBgPbnbyM2PhIzWjPe5CJpnhQFYlAJp3hczSKBgPHDBgPHDxkfjISFBKzPQrZiEAEXfPlvpYEgPHDBgbIltVBAP8L.BgPHDR2L4xjivBMTDVnghFZnASUMfrxBM2byN5oFgPNWQsL.BgPHDBg3f4t6tCsQGChIlngat5lid5PHDBgPHm2PUH.BgPHDxEb7vCOPRI1OjXB8EETXgHiLy.kTZoN5oEgPHDBgPHDB4hLgDRHH1XzhPCIDpZ.PHDBgPtrTWJg.nBD.gPHDB47A4xkiHBObDQ3gi5puNjoNSUMfVasUG8TiPHDBgPHDBgbAJWc0UDilng1XhAd3gGN5oS2CgAgmJ5VDBgPHDaDUg.HDBgPHWTPkmpv.Rp+ne8MQjWA4iLyLSTV4k6nmVDBwlPQujPHDBgPH87BLv.QrwnEgGVXPtb4N5oCgPHDBgbAAJg.HDBgPHWTQgBEPSjQAMQFEpo1ZQFYlIxNmrQas0lidpQHDBgPHDBgPNOyYmcFQqQCzFiV3kJUN5oCgPHDBgbAmtXBAvtidnVF.gPHDBwQvau7BCdfCD8Oo9gbyKOjQlYhJqrRG8zhPHDBgPHDBgzCye+8GwpUKhL7HfBEJbzSGBgPHDB4BVTEBfPHDBgbQOmT3DhQSzHFMQipptJjQl5PN4lCZu81czSMBg..YxXSgXiTKCfPHDBgPHcAN4jSPSTQgXiQK7wGebzSGBgPHDB4hBTBAPHVQM0TKZqcSkgZYPF72e+bXyEiFMhJ3syWU5jR3s2d4vlOWJokVZA0Ue8bi8vc2gat41404P802.Ztkl4F6i2dCmbh9OSSH1Ke8wWLzAOXLf9mDxImbQF5xzQOkHDBgbdRas0Fpo1Z4F6HVSmkzd6siTN8YPYkWApugFfyJUB096OhOdsvauN2WWe0UWCZWemICmZ+8+b9077kKDVONgPHjKb4iO9fX0pEQEYjPoSJczSGBgbdTyM2BpugNWmnJUpfKN6rCbFQNWTdEUv8ucVoyvKuN+1pWZngFPSM2YL381augRJF7jKCzk9sbiB2POTOCfbIrW+seeTbwk..fPBNHL+OaNNr4Rt4kOdgW9M3FOlqZz3od7Y5vlOWJYcaXyXw+9x3F+bO6SfqXDC675b3qVv2gCdnivM9GV3WBUd54404.gboDkNoDwpUKhUqVG8TgPHDx4I6YeG.e4W+sbi+OOyiiQMxg6.mQcZu66.369geF0VWchdrGYlO.l3UO1y42iW5UeKTUUUC.SIW5BWv7NmeMOeY8abK3WW7R4Fegz2cDBgPb7t1INIG8TfPHNHq9uWGV9JVM23Y+9uMzFiFG2DhzkUZYkgm7YdQtwWyjtZLyYbumWmC+uucQH48ePtwe22L+tkjylPtPGk1KDhEzPiMxkL...wFq4uoRs1Zqn3RJkarJUdBe6lKcYYjoNlwwEaLcqu9WpnkVaEkXmeWjQFB9rU64+OayTWVb+6fCJPJY.HDBgboCAsL.wYXLgz8PWVYyL1RqWtrxJmYmgDdXgB4xk2iLuNvAOBl2Wt.nWudIe7n0D0476QEUVEWx...DarQeN+Z1U0Ut1HgWqSrNf0iSHDBgPHjK7nSW1b+akJUhnhLbydtEUTwnsy19HUHWNBKrP6omdD6.+uKA.hyB2ukdJYx65NBPsZJY.HW1nqUg.DLlJP.jKUkU14vL1RAT7vG833S9ruja7Cbe2El7008l8xomQVLiofjIsCe3igOcdeE23G7AtGbcWyDr3yge.H81auP.AntGa9IEgAvUK8cKgPHDBgX23GfIuToBAFP.l8b+v494Hu7xG..d5gGXQe2WY1y8bQgEUL9jO+KEkL.JUpD93s2nlZq0hA0zVILAWcjWqPW4Zi3O+8RkJDTfl+6NBgPHjKGILF7TJ1RtbA+j9MZMQZ1VrpACFvK8+8Vn4VZA..ZiIZL62+sNeLEI1nLsiD3tmP0UWCJuhNaIyNxjnlPNeipP.DhEHLi0rTP0NeD.N9Yul0xFxKmktfcWj1Xr7eXupppFUVYU1742SHSp5OPHDBgPHmSLXv.xlWB8FqEVOUyM2BJH+B3FGSOXIGcqaamLICPDQDNdjG59fVsw.kN4Dzav.TzMTYBDtFXGYBAXuWajv.yoUKEXNBgPHDBgXJtsUWcMbiszlnJ+BJjKY.LctzZJuPC+62h6t6NBI3fNu99mgNZCWRt7EkP.DhEvO6CUnPAzDUDl8b4Wt2kKWNhVSjc6ymQOpQfQLhgB.S6ZFykMjWtKyL676BEJTX0uKZu81wcb62L233c.kpnLxjcwHzBVIDBgPHD6SQEULS..i0BqmRW1YCC7ZcEVJ4ANWXvfA7u6ZObi8RkJ7ZuxyC+8yWti0cjL...wFiF10zF24+0z1A68ZiZSv5wojikPHDBgPH.12NJWX7Uoa16Ed3e+VzpMZHSX6ErGF86HjKmQ2MQBwB3mwZZhJRnToRIOOiFMxDzqHiLb3ryN2sOel5Tt9t8WyK0XvfAlEVDUjQX1u25P.AnF27zlRO7LyxxPTPSO26irDBgPHWvP3E4ajJvojteBCVncUcuhomIPPolV5nRdsEpQMpQvjL.cmFwvGZOxqq8pqbsQAn1eG95wIDBgPHDxEdrqJ3qnJlEsgqtPRYkUNpu9F3F6HtY77qRuxkICwDsly6yABwQo6YqHPHWBpwFaBEUbIbisztFpvBKBM0TycdtTlk4vTPgEglatyuKtXXm1aznQlpZPjQFNboGHgRHDBgPHjKkoSXBAXO6dndndGYJobFlwi7BjaZeOI5ZiHDBgPHDR2E9qw2SO7vhkXd9wW0UWcEgEZH8jSMhcRT0dvQjP.7Rb4vBOL3pqtbdeNPHNJTBAPHlQV75+n.VNPVoKpTybg+Mg9RUhyDzK7C.YwEWBZrwF4FewvblPHDBgPtPC+cOTPAF.T4oml8b4uyP7yOegu93SOxb5TmNUt+syN67kEkBe5ZiHDBgPHDR2E9IDPLVXcks0VaHmbyqyyMZMPd2Tq4hz8PT0dnGJorMmRJsLTWc0246OECdxkY5RsL.gU3yy284CxklZokVv124tQ5YnCkTRIn3RJEt3ryHf.TC0p8GCcHCBCYPCnK+GxKsrxv12wtQl5xBUTQknpppFt5lqvGu8FIjPuvvG5fY9i.B2gQwwaAGYpKajdFYxMd+G7vLmaAETDV+F2B23fCNHLfjRrKMu6v11wtPKmsmn5gGtiqbTiTz4zd6siMu0cvMNpHi.8o2wC..8FLfSkxow9R9fHmbxCUVUUPud8H.0pQ.AnFW0nGIFz.6ucOuxNmbwN928fLyTGpnhJQ650iPCIXDRHAivBMDDq1XPuhOVa90a26c+nt5pC..pU6OFxfF.2iUZYkg+YCaA4lW9n3hKAUVYU39uu6Df2+MojOvgXd8xufBY9tHjfCB8m22E0VacXO6a+bi0DUDn28JdKNG0av.1WxGDob5TQokVFJqrxQs0UG7zCOfWd4E72e+vvF5fwPF7.roc5e5T4rhPHDxk5nVFvkjzkU13e289PwEWLJt3RQc0WO72O+fZ09iHiLbLwwOV3WWr73qWudbnCeTj7ANDJszxQEUTIZssVgOd6EBN3fwPGx.wPFz.fGd3A.L01nxJ6b4d9BqN.abyaCFLXf60tzxJm6wbyUWYVuH.vnuhQ.O8zC6ddukssSzVaswMN8zyf6e6kWpXVqN.vDF+XfSNY5xxKtjRwQO1I3drQNhgBu8xKSyYCFvt18dwQN5wQwEa5ZkhViF7Vu9KA.fSdpSi7KnPtm6UM5q.t6taVc91TyMiCdnifCc3ihxKuRTUUUgVasMDXfpQfAFHBMzfwUO1qxheOdtdsQ0UW8X26MYtw7uFFqIqryA6ZOIiryIWTUkUgZpoV3qudiPBIXDbvAgHBOLLxQLLnzIaOzG7+cE9W6fQiFQpmIcr2jO.xJqrQkUVEZss1P.p8GpUqFib3CEibDW5WAHHDBgPHWZ63m7T3.G7Hbq4r4la9rq2wenUaLXBi6p3VCt8pkVZA6M4ChCejigJpnBTdEUBCFL.e7waDQ3gigMzAgANfj3hmZUUWMphW62h+NJuolZB63e2C23JqpZnWudtwFMZPzZ7mzDF24TRBnKqbPZmc88xjICS7pGK2qWYkUN19N2ER4zogxqnBzXiMB+7yODslnvDF+XP7woUxWySmZZX66bWHu7J.kUd4vYmcFAFfZDe7whIMgw2kZ2XM1XSH4CbPbjidbTQEUhJqrJXzHPHgDDB4rwse.IkHhH7v5xeV..blzx.+6t2KJnvhPkUTIpq95gJUpfZ+8CCb.IggOrgf.T6O24yuBA3ue9Y0jxVuACX+6+P3jobZTVYkixJqbTSs0xECd+7yWLrgNHLzAOP3hKVem9SsTBxk65RID.gzcpkVZAqdM+CV+F2LSFZ0gRJsL..r8crKDbvAgoOsa.iaLWoM+5WUUUiu9a9dlfq0gZqqNTZokgzROCrpUuVLxQLL7ny79gGd3AxjWFq4latgP4UhgV6+rQ7u6ZOhd85vZV65YFO8aZJmSIDPiM1D95E7cbiGz.6ujIDPN4lO99E8Kbimw8e2nO8NdbzicBrve3mQom8yR9ppppQZomA18d1GRnO8BuxK9efatY8fGlW9Efu869Qj5YRWziUYkUgSdpSyMdLW0nvLtu6xpKVzfACXAey2ilOahOL4qeRXHCZ.ns1ZCK5mWL1511IyB6..RIkTwd22AL6q4Z96+gY7MO8oxjP.m3Tml4yrGZF2qYSHfVasUrosrcr10sQTV4kK5wqqt54ZyD6YuICWcwEbm2wsfq+ZmnE+4VTIqkxNQBgPHDxEvNcpogkthUgSdxTD8X0TSsPWVYi8efCgUtp+FWwHGNt663Vf+96mM+5uwMuMrzkuRTSM0J4qeN4lORd+GDdoREd7G8AwPF7.QQEWBSaiJtX6LfakTRoXge+OY12uBJrHl0CpPgBL9wZ6WuQGpu9FvB91evrOd4kWAy6iWpTgqcRWM23cu2jwR9iU..SAXbLW4U..SAk86WzuhBKrHlWun0DI2+dIK8OwYRyz5xUpTIlv3GiEmqFLX.Kc4qBqYsqGs1Zqhd7pqoFjV5ltI+qZU+MtlqYB3ll5jkrpKbtdsQmTv5wevG3drZBAjcN4hu7q+VjSt4K5wpst5XN9J9y+BOzLtWjT+5qEeMALEHW9+tRGW6PpmIM7se2Oh7xuPQOmpqtFjdF5vd229g10DM9+domCd6sWV88hPHDBgPtPx9O3gwJ9y+RzljCf+5cN.V1xWIF2XuJbG21zgGt6tM8ZaznQ7GKeUXc+yFXZsT7e8yN6bw+tq8ffBL.7LO0ig3iSqncTN+ps0YROSl0PJzoSMMb5TSiab.pUyr16th0uwsfss8cB.fPCIXbMSb7Pud8XQ+7hwFDj7A.l1HZYmcNXaaem3luoaD2wsMctGqhJpDy8SmOy8fnCkVZY3jm5zXUqds3Nu8aFS6FmrMM+zqWO9kEuTrwMsUljTl68rxJ4hY+uJWNt9qaR31tkoA2b0Ua50uCob5yfE98+DSBI2g5pqdTXgEgiehSgecwKE29sMcL0a35fb4xQV79cq3hy7w+ts1ZCadq6.qccaf6dCI78niXvu28se3hKNia+VmNlxjuVKNuoXvStbGkP.DGp1Zuc7Qe5Wfie7SZSmewEWB95E78n0VaCWyDGuUO+ryIWL6O5yQEUVoM85u28sejeAEh4N62k4OPoUazLUBiLEjMYVy4Z+vQ3BwzFizYulvrbSaLQie3m9M7OqeS1z6SpfElKb...H.jDQAQEm9L3W+8kgG9AuOKddqa8aB+7utDQ2bdyYG6b233m3T3oehGA8KwDL64UPAEwkL...8Jt3fQiFwWsfuC6dOIK57CKzPX1IX1h3Dj4eB+tzbYFXas0Fl8GOObhSbJa98p4VZAK5m9MzVasgoNkq2rmG+9akKt3LB+bL6LIDBgPHjdJG83mDy9i9LaZcf50qG+6t1CxJqrw68NulUSNT8FLfe5W9cadsq0VWcXNe77v+8YeRzt91YdL9A2QX0XxZhHhvgy1PUdRHcYmscc9QFUDLi4ulvHiHb3latgzyPGlybmmj2z93OaU3RuACLs6LMQEIWUGPJ0WeCXde4BjLgokRqs0FVye+OHkTREu267ZhdsOWu1nLzwFXNycsNcXm6ZO3aV3OJ4mIRovhJFy5ClKF2XuR7DO5CYwyUbPBiFKaEqBKc4qxlduxTWV36+weA+2m8IsoymPHDB4bAUysHcW1zV1N91u6GsoyskVZEqeCaF4meg30dk+qEW2ooyuEL+u5aw9ETUWMmRJsL7Fu86i2+ceCQwDmeU.KiLru0f1cTd54G689zmdiFZnA7we9WIYhRKzJV4egvCOTL5qXDH6bxEe3b9TTIupefTLXv.9seeYPkJU3pG2UYwys5pqAe579JljfvZu1+8ZWO1yd1GdkW54PzZhxlddaem6FK3a+Aa95AW7uuLTUUUioL4q0lJW+s0d6Xte5WfibziaSyG.S+N4O+qKAs1Zq3luoazrmG+qawYkJQTQFtM+dPHWJfRH.hC07+xugIY.TpTI5WhIf3iSK7xKuPyM2LJp3Rvd229Q802.248CK5WP.p82hk39Cd3ih4M++GyMXVlLYn+IkHznIRn1e+Qs0VKxK+BvoNUpn1yVl5yKu7wp+q0gBKpXtmGS4Hp4lQyM2L70WSkzlVasUzPCc1+2cyMWgqBxpN96PotBQkyFyz6Q4edxkKG6a+GjIfpdoRE5Se5E5U7whRKqbb7ieRleNA.13l1Jl9TuAytKtV8ZVG90EuTli4ryNiX0FMhHhvQXgFBpnhJQFYpComgNt.0UUUUi4+UeC9xO+iLaI7ICcr+bFe7whE+GKWxjA..HlXzfScpSaWeWH7ytL4E.RmbxIDUTQBgZu81wm74eknjAH.0pwfG7.fZ+8Cd3gGnt5qGomdl3XG6DnUdYg4ut3khqXjCmoDI0A850ir4E.2XhVCTP82JBgPHWxgZY.WJHszyDy8SlOSveBN3fv.GPRHv.TCWbwETdEUfyblzwoRIUtyI+BJDezm7E3Md0WvrALrolaFe97+e3vG4XLG2O+7ECdPCf60ufBKBYwqTcB.7y+1Rv.GPRbiUnPAytmunhJla8h.lpx.cTR3A.yiA.aZmjKkhJpDlWq5quAlcliOd6MjIuy++B8QPUohe.phO9XQIkVFl8b+Lydiui+rWiQd4U.y4XtqU.vTBSO2OY9LsLA.SkrygLjAh.BPMb0EWPQEWBN0oNMxNmNS91L0kEVxR+SbO20swcrtiqMh+O2B+tiO850ie5WWhnDFwUWcECanCBgFRvvCO7.4keAH6ryEYjoNlum211+Wz+j5GF0HGlY+7QXxijZpogUul0wM1CObG8o2wid26dgpqtFbrieRjWdrUof8tuCfrmVdPifD9fPHDBgPtPz9R9.hplVZhJRjTRIB+8yWnPgBTVYkiichSwDCySdpTvBV3hvS83OrYesqpppwb93OWztfOzPCA8OoDQ.p8GxkKG4keAHiLzgbxMO.X5lU+i+7hYZgWAnVMW6zB.njRKkYs27as.JTn.d4kJl2y9lPergOMLulatETP9EvM1Oe8Au5aLKtXq6rRkX3CeHPSTQhFarIr28seIi6tmd3A9jO+q3ptYt4lqXXCcHHpnh.FLX.m7joHJwcW6+rQKlP.okdl3S9ruPTBFDebZQu5U7Hv.Ti5pqNjU14hzyHSTc00vcNUVU0XAe6hvG9duoEamBFMZD+9R+SrxUsFli6pKtfgNzAgPBIX3sWdghKoTje9EfiehSwcciaXiaAdK36CoRH.850iOe9esnjAPs+9gAO3Ah.T6O7vCOP80WOROCc3nG6DLWGzRV5ehqXjCGgDbPhesMXfIASznIJnPgBy9yKgboHJg.HNLEUTwXeI2YodOhHBGu7K7rHn.CPz4de28cfe7WVL1xY64lFLZDqXk+kYSHfMroshueQ+BLxKXyCn+8CybF2KBJn.Ec90UW83a9teDIu+CB.fkrzUv737Cplat5J9lu9y4Fu1+Yi3G+4EyM9IdzGBiX3cu8NxLErqYh0L6ZF96pnNxxO.SAe7Ie7YhAz+9I54nKqrwaOq4flZpItikeAEJYBAbnCeTQICvHF9PwLtu6Rx9JZQEWB9v47obkvmpqtFrl0tAbKSW5L0i+NxQs+9gCejigUs50BfyV5Su5whwMlQifCJPnPgBHSlLnToRtmyeutMfe5W9ctwO4i8vX3CavR9dAX5yHcY04BYiJxHjr+ht50rNbnCeTtwt6t63oehGFCdPCfoxQzgRJsLLm49YLkTzTN8Y3J6q7kad4yj7.ZoRUDgPHDB4BTq8e1HS.Wtu64NLaYYL0zRGy4i9bTeClRp2TNcpHkSeFIuY6UWcM389v4xTl2c1YmwiLyG.i9JFtjApYu66.3a+teD02PCn7xq.adKam6wDtC+u0adZ3Vu4owMdFy7I4lWQDdX3Sm66aieBXYWyDGOSUL6Uds2gac7pT4IV3BlmYetUUU0LAvKrPCAevb9TTaslRZYMZhB2zTmL5SuhGt6g6vnAivUWMkjsYpSbUBSJomgN71u6Gxr1SWbwY7nO7ChqXjCSTRoZznQrosrcl.Du50rNb0i6pPHgDL.N2u1HiFMxDXtnhLBl02y+79f47o33BRP2oL4qE27zuQIKWsolV5XdewBP4kWA2w9oeYwXf8uevc2ktEokofJDPGICfGd3NdrGdFX3CaHhV+egEULdq24CQ00zYfUyK+BnDBfPHDBgbQgU8WqkKF5JUpDO4i+vRl.k2C.129OH974++3tQu6Xm6F21sLMDX.hime9ETHl0GLWTYkUwcLu81K7jOloXTKbMUFMZD+yF1L9sEuTzZasgyjV5Lmivc3+S9Xyj6eWWc0iG7QdJtwCZf8Guzy+L1wmBVmtrxFF3cuFV1J5rBRMxQLL7vO38AUp5r8ZcG21zw124twW8+VH2wNcpogO7i9LXvfAHWlLLsocCXZS45YZeuS8FtNQUrg7yu.zTSMIYa98HG83XNe77Dkz1O8S7vH93hUz42RqshE8SKFaYqam4msMroshq6Zlfj+rq2fALuu3+Ips8dSSaJXZS45kbs0YkcNX9e42f7KnPXvfA7GKakbOlLYxPLwnQzy4uW2Fv9Ovg4F6lathm5weXLjAOPISVgxJuBLm49YLWGYJm9LRlP.ETPgnkV57ZY0ZlpDLgbortz1PU394Qh6GFgXUmfWOlG.3ttiaQxjA..vUWcAO7Cc+nWwGG2wzkUNns1aWz4VRokgE8S+FSx.LxQLTSIafDIC.fo.z8BO2SwkfAFErq0rTI+WTYkzB6HmtJ9uGAFfZQY3HfocmiT8smjRJQ7wyYVRlL..l1Q5S4FXCjqvrWDvze3WXx.7TOwifm++7jRlL...gDbP38m0avjslqdMqiKvlBwO.b5MX.e2O7y..3pG+XvWM+4hG79uaDslnfat4Fb1YmEErPasRJzgBJrHldMq4N+c9uc1STc0EWvrd6WECYvCTxjA..Hn.C.29sdyLGybkqIp2EQHDBgPtXwoRoy0uqMlnsXOZr2wGGd5m5QYN1Y3sq94aw+wxYBhiat4FdiW8EvXtxqvr6ZiQNhgh+uW9+xMl+52iyBqArnhKgKY..5YV6NfocJO+cWu0Vimv0D92qc8nvBKBpU6Od4W3Ywb+v2AWwHFF70WefKN6LWx.H0y0b+7+y+5uyjL.d5oG3MesWFW4nFgjUnJYxjgIMgwgqUPfASKiLs4eNr1muEVXQL8QVyEXt8ru8KJY.tq63Vv8cO2gY6cs8N93vb+v2E93i2bGqpppFqc8aTxy2ffcMTG5U7wgOdNyBiX3CUx0+GZHAia4lmJywJRhqmhPHDBgPtPSCMz.ylkZXCcPVrZJMhgMDbe2ycvbryjlzqM7a+tejIY.72O+v69VuJF3.RRx0TISlLb8W6DwiwqEOweM9VZ8zhhIbOP7UkpMjIWlLbO20sg+6y9DLICPGF6UMJ3uera5NCFL.WcwE7lu9Ki671tYIuI+S7pGKyMy2nQiLeV1g1auc7C+zuwjL.gFZH3cey+OISF...Wb1Y7XO7CHZ8q+9erBztD2qE.SI9gvjA3glw8h651uYylnsQqIJ7du6qyceL3+cY3gEJbSPUDC.XG7hAuyN6Ld225UwvF5fMakKH.09i671uEliYqwf2RWyHgboJptTSbXNSZoyL1bICPGTHWN5eRctihZu81QVRDvl+XY+IyeDbbi8Jw+4oebq1Oi..df66tDEzQ+7yWQkQT93ufCe71an1ewkE9yE0TasL6pEyEjrrxJGQIxPhIl.dsW9+Bu81KIeNcHpHY28J7KslcXqaamLIbvTmx0K4NdWHUd5Il3DFG23latYlRHaGZq814JKT.lBVmACFvDmv3vi8vy.95i4+NnC76cT95qOveyjnBcPX4pRpcSUl5xlIAIF8nGIhLBq2egDlkilaAUBWvZbcC8yJBgPHjKzHZ2ePc7zK5TbIkhZpoVtwAZk0tC.jThIvr15zRSbBAjeAEhcricwMVkJOwa+FuL5sfxouThONsXLW0nDcbGcvBA.xJ6bYtlDqEvIgUDrxqnRnRkm3Md0WDCYvCzhOWc7VSq6t6tj6HlCbvifTOSmW+k+94Gdu240Q7wY8Va1jt5wwLNKdkJVgr2qMJCAqGWpuOZq81whWxxYN18cO2AtoodCV70FvTRObKSmMXmYal4uvjEF.PaLZva8FurU+4PX+GUpqmhPHDBgPtPS5YniIdxAFnzalN932pt..Sq7pCG9nGm4FyFbPAhY8NuFB8rUYJK4JG0HPu6UbhNtkRzTwaRrt+3qxOtyc3Yd5GCScJWuEed96u33S+huvyf9lPus3yKRAquzau8Vz4rosrcT7YqLu.lp9Yu6a9+Yw6kQGl1TtdlyqolZRTaEC.ns1ZCKa4ct69kKSFdpm3gw0Noq1puGd3t6htg8.R+cYN4lGSq35JF4vfFIZsuB0UiAOso7HWNhZY.DGFgAQbSaY63Au+61hOmwM1qDQGsFtw9KHvL4jadXW6debi0DUj3wejGzr6jagBI3fPrZigIYErzebn95af4O51SrXCg2zZyMeDlkhd6sW3YexG0h89mNzXiMwLl+tnAvTORZo79C+ZhJRbW2g3+Xt4L1qZzXo7JKPkTZohNmbyMeQ+A6gMzAgYNi60ldOpqt5QIkVF2Xa4OpK9lwKUuKpclEtLxQXasCBg6JH0pkNHh7qJBdoRkjkXKBgPHDBwQyOe8AJTnf6lbe3ibTTYkUY1JEE.fSN4Dd0W9+xsqzc0EWDcN+9erBlRu4i+HODhIZM177ZziZjXG6b2LGyRU2qzy37SffRWvtnOtXs7MdWXBA3ryNiW4EeNqFzz1ZqMljpMlXzH5Zezav.V7RVFywdf6+tPXgFhEes6PHgDDhJxv4tI272Q+70Ut1Hg+bK02cabSaEkxac9i5JFgEqNEBMgwOF7q+1eflaoE.X9cuuvqMvM2bEO2y7DR1RwDR30SYsDxlPHDBgPtPfv3yu68rObS230K4tVuCAEX.3kew+C2Xu8hccOFMZD+tfj47Ee9mAAXlXiJkQcEifIYVkKSFzFsFyd9B282lqEZctP3ZEG2XuJLpQNbq97pnB1c1+XtpQgjRTbaTSnF3UUybwEmgmd5Ayi2TSMgkuhUyMVtLY3kew+iMuNTWbwELgwOVlVePgEUrnq+X8aZqn7Jpja7jm70hwbkhSJayYzWwHv2rvEwbLISB31ZiIF7VpM.yWQEUByXaIF7d5gGRlD0Dxk55ZIDfndFv49Dgb4G9k+e.f+Y8aBM1XS39u26.p7TbI1A.Ps+9awcmwhWxxYxpwoM0avlSFfNDZngvlP.VJ6C0IbwFc+ATLSaL60Ddd29sNcQ2XeyQXqFPXvA+60sATc0c1SLutqch1ThFzA+DjUhEWRYhNGgKpxEWbFO1i7f176ivmuszGfzw66OWc0UIC3Z7wEqYKwRlSas2NV6+vVJRiLhvDcdszRKHu7KfaL06hHDBgPHWnxYmcFwDcTb2P8VZoU7xu5aim3wdHQ6RH9RpelOXWomgNr+CbHtwQDdXXHCd.107R35Vc0UWQXgY9azM+0LqToRQ6r6tKokNaBAX8VF.6ZYugIeM1zt2O6bxioRDDqDqmb66XWLq2OhvCCCen1V.1.LkXGe7bdOqddckqMh+2Gt5hKh9tqgFaDK+OWMywl1MNYq95xmBEJPvAGDWKbnnhK0TeaUv0YHLPxS6FuAy1x4DRz0SYgeGjPHDBgPtPQngDLToxSTWc0C.fRKsL7Ju16fm4odLnUhd7N.fb4xwPFj4Wy9t1SxLsNqgL3AZSUaU9DtF+HhHL3hDIWbG3u68CMjfMaKkpqplZXqfu94qOXF2+cY0mWCMz.pnxNuY5t5hK3tuya0ldOymWLiiJRw6T9U9WqC0VWmsk2QNxga0JvrPBWyZgEVD.uuaapolvJW0Z3FqToRLkIeM106gqt5B72O+X9bPpqMJVswX2Iqc6s2N960sAliIUL3as0VEkD0DxkinJD.wgo+8quXHCd.3fG5nbGaG6bWXeIueLgqdr3Zl3UaWYpU14jGN7QNF23PBNHLxgOD6dd4kf98ikJumB24O8D8fT9AlRtLYlcGSwOK2TnPAtBabmrC.lxwiBEJP3gEJyium8lL2+1YkJQ3gEJxNm7f8vYkJ41cXkTh3JDfvcGz3G2XLahgHEg61KKsyv.NaKmH6NWbZLQqwtRxA9ZokVPEUVEJu7JPpmIcru8ePlOSADm.L.lJ2p7KmnToJhPHDxkMnNFvEktu68Nwa+tyl6FPWcM0fOXNeJhUazXJ2v0ggMjAYSsoqN7m7BtD.vMMM6OYdEt1cswX90zIb8eQqIRQsKrtK7uNgPBNHQ6nG9JozxP8024N.RoRk35ulIZSuOhJ8kRbS320d1Gy3ad52nc+4rsvdu1H850y98QzQI56t8k7AX9rY.8uePSTrs6LaQPAEHWfoau81Q0UWinpaQlBRHfqbzizle8yUvZ+iVSTV84Tc00fzyPGJtjRf+96GhJhvQngFhM8cS5YnCp82OapbvRHDBgPHVxLt+6Ay+KW.23BKpX7Ju1aijRJQLkq+ZP+SJQ6ZsiqbU+Ey3oOsoX2yIUpTwLNVKTssJozxXtw3Z6AhupvJy6PFxffat5pUedYJncGOvAljM0Vbap4lQ9ETD23niV7ZK2xV1Ny3ociVt0EHkfDzhHJiWRO..rwsrctjEA.XriYz1z7WHUd4IWBA374PRYyEC9Jp.mIsLPxIePlazOfzwfWTRT2CbObHjKFzkRH.p.AP5NHSlL7LO4ih26C+XlcPSKszJV651HV651H5aB8FW+0NQLzgLHqtviiehSxLdJ2v00ktAuEwqLWJyZkiHgkbzdfxQD+aTdXgEJb0UwYCYM0VKSO9YfCHI3gGlOniBwuOZpIpHXBjaM0VKytXu01ZCu1aNKa90VJM1XihNlvcjyjutIYWul1aEBH27XaQA1xBApp5pwwOQJ3LokNpnhJ49e0yqDNIE0p8G9KQ4zU3OyzhQHDBgPHWHq2wGGdrG4Aw2rvEwrNpLxLK7Yy6qgWpTgwM1qDS95ljUuQk5MX.m7TmlarZ+8CWgMTxMEh+Z2ArbBVlSt4i1NaBpBzyDrP.SqYj+NHxRAvDP7ZBG8nFoMWpOElTsBWOod85Q575qqpT4IF4vs8DG1dXuWaTt4w98gTe2kxoOCyX6oUAvWiMwVR+cyM1.31VaswrS15U7wYWk01r4kXCAnVsESr41auc7GKekXsqaiL+7CXpr8d0iaLXbi07AaswFaBy+KW.TGfZ7lu5K1ijbGDBgPtvjn+S9TR1R5FbkiZDn3RJAKa4qhox6d7ieRb7ieRDfZ0l17dSZ7Vcm2WYkUg7xuyJmTB8oWVby1YNEWLaKdxRqw2VZIrmqDtd8AjT+rommvDNMo9kns89kgNluKD9ye9ETHSRPjXeS.ZhRbUDvZZR3ZjEjjCG+3r2ukoNE6OoC..Jt3N2bfQGsFqlT1UWcM3DmJEj5YRGkWdElhAekUxjnvRwGe7VxpjfszlxHjKGPUH.hCkat4Fl0a+ZXs+yFwRW1J45qic3TojJNUJohvCKTbm29MigYgRa4oRIUlw8Jd6qLu2gBKryruK7vBwh8LI9K3HXqrye5JJuhJPM0TK2XycStyTW1LiSru8wleOpnhJQkUUMu2C1+f3Y30ul5t3ofcxUyM2BJfWRGDZngX2k3H9KvxVJMThtY7lIfk5MX.q5uVK18t2GShQXIdoREyhx5cuh2LyAaOnoMzPC1URdPHDBgPH8DF6UMJDm1nwBV3OhTOSZLOVs0UGV8ZVGV6+rQLtwdk3Nu8a1r2XzrxJazbyc1K5iMVsPQWHYdKf2Z2M853XCVHfDUtJq79Hr0eMnAXaAXzzysy0z5qu9HJITyK+BQKszJ23vCKztbUwxZr2qMRTudUh.ykpfqEoq9cVg71gUJTnPz03kStr6ZH645oZt4VXpNXwFq4WSudCFv79xuA6K4CH4iWZokge+OVNV5xWIFyUMJLsob8HDds0rVasULuubAn3RJEEWRo3PG9nXHCdf17bkPHDBgPjxsN8oh9kXB3aW3hXtg9..kUd432+ikiU8W+Mt1qYh3luoo.Wb1YIecNkfj4L9tX74EsFeKbCbEt16dhJvJ+0qKWlLjXe6sM87Dd8GI0uDromWZBp7VwI3dBb5TYuNr3rgVMlTD94rJdwru81amosJata1t0TQkUI359jdsxFLX.q9u+Gr6cuWjSt4K44HjsFCd642QZrwlf6ta96GDgbwLJg.HNbxkKGSYxWKF+3tJr0ssSr9MrYlc6Nfordate5WfQOpQhY9f2qj2rW98sQYxjgfsw98He50qmYWFYocMTYkUNps1N+CN8DK1PzMs1LuGh1MN1wbQX+MMNA6foxqnRzcSXqfHqryAF3k0i1S.3.5ZkFJaY24WSs0hOe9+OlculT7RkJDbvAgPBIXLhgMX3rKNiY89yk6w6cuDWph.XCfafAnFd4kJIOO.fE8y+NdpGelVbdPHDBgPHmODVXghY81uJNcpog0s9Mh8efCyzFjZu81wl171vANvgwi+nOHFz.6unWCgAZj+M8zdHr2saoc6w4ifEZ58wxquVHg6Xk9lfssV3lZpIlf3oUhjKslZpgYbW8yYqoqbsQh1oNRDbvJ3csH93i2VLYsMmlatEldVpT67ew+tgsW42xPmNlqkwReeu9MrYtjAHv.C.2xzmJBOrPQd4W.zkU13HG4XnzxJG50qGaca6Daa6+K5U7whAOnA.kJUhss8cxEfz3iKVLPI9+aQHDBgPHcE8N93vm7QuON7QNFV652DNwINEyi2TSMiUtp0fjS9.3oexGQx06keAralpP6xqwuy035hKNiHjnuv2A92rdEJTzkZuTVC+XuGQDgayqIke7m8wGuQfAXa2P8z4Eud2byUDZngv73kWAao8uq94bgEwVIF3uN4xqnRlDKtq9dTffqWSpeuot5pGe9W7+vwE76bBoRkmHjyFC9gMjAAO8zS7Vu6Gx83lMF77ttC+8yO3iOda12ie929C7XO7CXw4AgbwJpkAPtfgGt6NlxjuVL4qaR3HG83X8abK3nG6DLmyt18dQM0VKd8W44EsyV3G.J+82O3rYxTQK4Xm3Tr8SFKEPQg6ta6HnQ1JaMg.3+G0TnPAhVisWhfrVFGVW80yL9oexGQxdwi8vSOXSniLDDLvD5iskkkbO+tvt8RmtNeNd6sWhBLXgEULdmYMalpm.fo.s1291GzmdGOBNn.gZ+8WTabX4+IauxRpEiTW80ihKoyxkjkRhA850iSbRKufHBgPHjKnIn9lxu7GRt3Ue5c7nO8NdTQkUgMsksiMs4sxrl7pqoFLmOdd3MesWB8MA102wOYNA55AX5HG4Xb+ae7wa3u+9Y1ykevB8zCODkjpcW3G.OkJUZwfRZvfAniW09JhHBmYm4XI5xJGAkRTwWOhv0xKLXhcW5JWaD+ji0KUpDEfzFZrQlqMqq96HBS7fdIwNGRTqWvNRVjzEjf0V54d3idb.X56gO3cectJ.VbwFCF+XuRn+9tKrscrKrhU9Wn7xq.FMZDodlzEUoDhH7PwK8BOSWppZPHDBgPHliLYxvfGz.vfGz.PAEVD1vl1J111+Wlc3cgEULd22etX1u+aIZ8Y7uV.ftVxn1VasgSdxT3FGsFMlcMO50qG5xheqvMRnToR698zRJtjRYZWr1ZKesxJqBUVYUc975hquTaLQKpEQUWcBVieHcsqqQ3lLj+Nru1Zqk4w5pIV7g3c8Z.hSf6RJoT71yZ1h1ThwDsFz291GjPuiGAETfH.0pEEC9U8Wq0ry+NzPiMxTQnsz2eFLXPTaRfPtTBUg.HWvQtb4bK7H6bxC+wxVAN3gNJ2iehSbJrx+Zs3lm1T3NldCFXVXh8zuG4a0B9iHV5FKK7OX1STxQ4GjLkJUhnhLbomKYxlkh1SxPveAFt6t6hBRnvdyS3gEZWp7.YIBKSpwameVZu61qVZoEjWdclwpRsapV5xWISx.3me9hm7wlIRpe80pymSmZmkGK2c2cDYDh+dSXadvR+9iBEJvS83OrUeeIDBgPHDGA+8yWbG25MgaZpSFacam7Ts0F...B.IQTPT4D+wx9SzPCMB.SAU4Sm2Wg4+YygoJe0wi2gtx52OwISgYMUVqzOxe2zGSOPx7BX5mW9qgOZMQBmbx7W1cAEVDSaSydtlBgIUqT+7KLIpc0EWDcNcGr2qMpkVaE4xqL6KUqQq0VakYrWd4UWZt82qaCLi6SuEGnP9ye09a4cMjP7q3ZxkKGwDiFydtO1Le.7Buxahm9IdDIaGXJTn.SX7iAi8pFE92cuOrl+dcLUSCYxjgwOtwf69NuEy1NNHDBgPHjtCgEZH3Au+6F29sLMrtMrY7mqbMn81aG.lpTUe7mNe7oy8CXdNhWiuZ698c66b2nZdU4JKcCbyK+BXVynsdy5sG1a6.qCBWqt0pZXcnjRJ0pUBWgqS16tv5jSK8LXprYAGbPLqAt6350pq95wV1514FqRkmHHAU04k8mqlIY.7wGuwS9XyDCn+VuMpwu0I3pKt.MRrII0IHF7VJwkkKWNdpmjhAO4RWTBAPtfllnh.u7K7evetp+F+9erbtiu+8eHlDBPgb4vGe7FUWsoEKTSM0J50xZRK8LPJ75yQltA7le27vew.lJGQ19tx2VXznQlcphlnhPxfIJt7bZ6A2r81aGYkU1biiIFMhx3PuDrCk3Wpf5tvOnod6sWHf.ruEKlgnuKrbogRXKJP3mYM2bKXu6c+bikKSFl868VvWe8wpykxqnBlVLPuhOVQelBHNIHrVRLzuDssdLEgPHDBg3n3hyNiq6Zl.Fz.RBu+r+DtVwUs0VGNyYRmo0AHrW2WcWX86qTPx7Zo..lotrX1M8Vp0BbtHu7Kf4F7GqUB7mvJBlsFnP.wqmTpjbM3fX2sPUXmsCL8FLf1ZsMtwJU5DTnPgnyydu1nryNWl1LgTIDfu93CbyM2PSM0D..Jszxrq4NfoVJwAOzQ3F6kJU3JFwPYNmFarIlxkpsz9w3i+0hDYDga1dpK.P.AnFu+695H7vB0hulN4jSXbiYzXbiYznt5pG4jadPtB4HpHBWxDIfPHDBgP5o3gGdfac5SECr+IgOXNeB2tSOu7KDEVTwLUI.gUqqZpoFQq62RLXv.9q0rNliYwJ364gVBl3JSqssd8t5lITX07UpX8GZHranuRJsLQ2ncqYU+E6myW6jtZlwB+trqb8ZqeCal4dIH75UZqs1v+tq8xMVlLY3Cl0aZSIePUUUMNFucyerwoUxJIgnjn1JeOjPu6kUeuIjKV00RH.pmAP5hNUJohe62WF23oOsa.CYvCzpOuaZpSFadKaGkUd4..H6bxEszRKvEd6vkPCIDtDBnjRKCFLXPzNhwRVwJWCy3n0DojA6BvTfwxJ6r4Fau6JeaQQEWBWvu.Lefor01JfTxNm7Pqs0Y.9jZAMAGLa4.JCcYI4tpwb1zV1N1y957lqee28sin0DE235quAlRmu8VoEzqWOSRMnIpHrZogxZelUV4kyjv.IjPusojA..3uW2FYBtoTkpHSygNWTnbYxPLQGkjmGgPHDxkDDlbbTKC3hFy6K+FTxYWqlO93Mdom+Yr5yInfBDS8FudrfucQbGK0zxfIg.BSPUopDdqGzVjdF5D0WSszM4WXf75IZ2W.r6Vb.qu1Vgkpd6Ysv7Sp1fCNH3omhuQwgDLafAKtjRr4We.fu869Qr0ssStwevrdSQywtx0FIJvpl46tHBOLjV5Y..fBKrHXznQIS1VyQXfNm9MMEQ87UcYmsUa8BlSokUlMuC15f0RF.gToxSjXe6ic8bHDBgPHDywnQi3sm0bPamMlvwDiFLyYbuV84Eq1nw3G2XXpvtmIszYRH.gsPfhKoTDSzZr441t2axLwIF.HtXM+ZyDmP.8.szWduGt5hK17Z43einkISljIuqTNSZYvLVp0IGYDgwLtfBKxlppscH+BJDG3fGlab.pUiIMwwybNAGTfPlLYbqS1dudsFarI7OaXyLGS3ZkKuhJYhiduhOVatRDr10uIl1KVeLWL3488mLYxf1n0XSu9DxkhnFNG47J+70GjdFYx8+3ui7sDYxjwrqwMXvfn3HyuO1nWudbzicBadd8i+xhwgEzOarzt4Iu7JfI613eCt6tXqAsTX+5zdBhX5Bx3PoJU+B6sp1ymq0WeC3WW7RwIOYJ3jmLETbwkfHET0ENW5Wm..4lW9LI0fFa36BqkP.0HnGIkffddq4TYkUgsr0cvbrd263r5bHhHBiI4VHDBgPHjKTXvfAt0tefCdXzbysX8mD.BJP1aDsAdAqAPbOn7fG5vvVkeAEhO5immniK0tLuCBWacOw52AjpjhZ4cPD+c4uqt3BBO7vrvY2oZqsNTZYkyM1bAXzM2bCd6cmkPzCdniJZstlS9ETH191+WduGZj7ZM5JWajvqAvbe2EIuVlVyszB1w+tGq9Z2gMt4sgcrycwMVp.cBHd2aYOkZV686aBgPHDBwQSlLYnkVZlaM96+.GxletBair50afYrvDB3.G7HvVcxTNM9lEtHli4kWpPfAX9VWK+036rRkhR53yU50qGYmcNbiiIlnsoMfnQiFYRd2vBMD3t6tYgmQmxfW758wGuEsS8AXWiLfoMjmdCFDcdRo5pqAe7m9ELG61usaBJETYhc1YmgZ+67lym5YRiq5PXMM1XS38m8GK57EtV4tZL3qt5Zvl2x1XNl4hAuvuGDlbvDxkS5RID.Uf.HcUAGbPvUWcka7gNxwPiM1jEdFlTe8MfyjV5bi8waugqtxdCT6if+i9+5uuLlLLyb9ge52vZW2FEcbKcioyh2BALMerde5wfACXEqZMXEq7u39eqa8axrmunaZsYBxG++nl8jkh.hSH.o9YNlniBQDQmKx33G+jVbd2g1ZqM7Ee82hFary9Mzjl33EU5d5p8SoNjU14xL1V5sn7C.YfAnFpDzVDBUPUQH2byGVSd4U.ds2bVn4lal43R01Ipnxp3plE.1eYIkPHDBgPNeIZA8gwcsm8YSOuCIHYaEVBK82OeQf7R32zyPG1WxGvput4keA3sm0rY1U1..gFZHvC2c2rOurxhcMidaCqe+TojJyZ2WwJ+KjcN4ZwmSFYz4N5wKuTIJno70V6siryIOtwwDiFIKykRQbR0Z9jgHw91Yqmps1ZCqVvtlWJUTQkX1ezmwT0rtlIMAIO2tx0Fw+ZXTq1ey12SG5PFDy3ecw+AZnwFk7b4aSaY6Xge+Owbra+1ltn.cBv9Yo8tqgDUQHn00SHDB47HplaQ5p3ugpppppwIS4zV3r6jvMTWvBViulnhfI1+6Z26E5xhcshR4jm5z3CmymIpU0Zo3y2V6siBxu.twd4kJapRRk79Ojn03WV4UH44lSt4Kn55Zaq0qnhKgIl31ZBm1Zqsxb8AlaM9AnVMSLmyKu7w5Era7kRM0TKdm2aNnfBKh6XQDQ33JG0Hk774eS1apolwxW4eY02iFZrQ7de3bEsNY.w2eitRL3KnfBwq9FyBMz.60DHUL3qp5pQEU1YKSihAO4xcTEBfbdkLYxX5u6EVXQ3C+nOyr+QW.SAi5cdu4vTBXtxQK9ORckiZjLKlIu7xGu2r+DTdER+ZWSM0hu9a9A7Ol4laao+.uvWy8l7AP6s2tYOe.SAubI+wJvRV5ex8+NzgOpYOe9AIyM2bCgJQFNZvfAniW4xO5nixtZSBoy6OLqVs+vGe7Vz4HWtbbG21zYN1O+qKA+wxWoY2gX4WPg3ClymwrHQUp7DSXbiQz4lYl11tCxbJWvu6jbxGf42UDpgFZ.EWbmkJUoVHfe94KSRBrujO.1x11ojIXhQiFwQO9Iwq8VuGJWPOY0YmcVx.SKZWHQKFgPHDxk3DFXFiTKC3hFB2s2K76+IrscrKytCTLZzHV6+rQr10sAti4rRkXDCeHhN266dtSlwe8278XKaaGhNuNb3ibL71yZ1nFI5ekV5FhaznQTgf0u+u615I1v5V+lXV69RV5eJJHk70XiMg7KnyfqYs03kat4ybMDVpBkIj8zKLu663VXZoVqYsqGe2h9Eytl4Cdnif27c9.TRokwcrHBOLLpQNLIOe68ZiZnwFQgEUbmycK74zfFPRXDCenbiqolZwq7pusYqzbs0VaX0qYc3a+tej438tWwiqbTiPxmC+0lau6ZH9WOkqt5JBKrt2ckFgPHDBgzSP3Z7mybmmEqJrs2d63m90kfCdnN2w+p82Ozm9v1u08vCOvsL8aj4Xe3G8olMF350qGaaG6Be3G8Yn0VEuNaKsF2JqrJljWs7JpDodlzL642gkshUJZM9Nal1Oqn1bkMtdcwsx.aK1u5xJal0natmmLYxvi8Hyf45r+4e42wO+qKAsHwmi.lZAyuy6MajeAExcLEJTfYbe2kYueB24scyLe17OqeS3m+0kH42UldOxCy58mqne9A.BLv.fWdoh4Xd4kJl1z6AOzQvF271L6l773m7T30dq2iqsRy+mCuToRz4K79NXuspXB4RMhSOdBoG1cem2Jd6Y04M3O0yjFdxm4EPhIl.hMlngu95CbxImP00TCRKsLvwOwoX9i.QDdXXZ23jE85JWtb7Py3dva7VuO2wNwINE9uu3qg9kXBHjPBAAEX.nlZpE4WPAX+G3vb8JIWcwEDW7wx0GR8zSODkgi7IbGrTbwkfm7YdADSLQCCFL.CFLfW6UddlyQp+Pn4VDgvxQj1XzHYFNVPgEwrizsmarbs0VGSOYxR+AwgMjAg3iSKWl8oWudr7UrZr4srcjT+5KhLhvgqt5JJsrxQ1YmCNtf94pmd3AdiW8EEsS7AXKSpgYkc1kTDt6tJrnhwS7zOOzpMFnWudQeWjotrYNeyE73D6aBXu6a+biWv29C3298khj5WeQuhONTRokgrxJGjU14flZxTUtPlLYvau8ha2+2Zqsh8k7APDQDN7yWe3BtXF5N+zCaIDBgPHjyU8KwDvfFX+4RzSCFLfudAeGV7RVFF5PFDBPs+vKuTgFapYTZokg8efCgJqrJlWi6+9tKnxSwqCb3CavHwDS.m7jo..S65jE7sKBabSaCQGcTHzPBFJUpDkTZo33mHEjWdctiQFxfGHNzgOJWxkXo0AKSlL3kWdwTUA9lEtHroMuUnVs+nrxJG2xzmJF7fF.yyKCAUSKEJTHphIvb95zwjrKVKfghCvnsuVd9A2Rtb4VrL8GP.pwTtgqE+4JWC2w1vF2BNzgNBhKNsHln0.kJUhhKoTjZpoIpJHnVs+309+dA3ryNK4qu8dsQ5rw0i2gG79uabrieRt0bWbIkh25c+PjPe5MBO7PQXgFBzav.Jt3Rv92+gDU8HhONs3Ue4mSx.cVc00vjTu1ytFps1amo5HDqVaqDxRHDBgPHNZi8pFE1zl2FxIWS6F8latY79y9SPvAEHF3.6O72Oegmd5IpugFPQEULRd+GD0WeCbOeEJTfGdlOfjU2pq+5lD1xV2AJ5raHqpqtFL6494nO8NdDQDgiPCIXXznQTbIkhCe3iwbycG1PGD1+A5rUhYopujJO8joG2C.LqO3ig1Xz.u81aTTQEgm8oebDAuVxUSM2LxKuBXdcBL.0ls5g0UWutvp4kslHAB2U8VZsowpMFbsWyD31riFLZDqYsqG6Yu6GwGerH7vBE95qOnrxq.YjoNt66QGTnPAdtm4IP+RLAod4AfoqiXp23jwxVwp.foDsdMqc8XeIePz6dGGBMjPf2d6EJqrxQ5Ypi655.LU4AZskV3RxXyc8ZI12Dv+tqNaKXK76+I76+wxQR8KQz6dEGJqrxQVYmCzkUNLUcAe80GTUUUC.S2qhcsmjQrwnAd4sWb2eAgUfYy0l0HjKWzkRH.pkAPNWz6dEOl4CdeL8DHiFMhSbhSI5OLIT3gEJdqW+kEkMYbu1wGGtm691wuujkykvAM0TyLKjPHEJTfW74eFr7+b0bGyZ2X8DDj8i..UVU0nxylkjicLiVziKUYxwbKhHu7KfobDYt+3uvEkXe86Rq2t.360dkW.KXgKh4ljWc00fcZk93o6t6Nd8W8EkLHkUUU0nxy9GtAru4eGRn2l46hCZ567wM1qh4wD0JFLy64CMi6Aodlz3VXA.Pc0UO18dRF6dOIK57cyMWwy9TOFN7QON13l1J2w+jO+qfbYxvOunEH4bvYmcFQFAaeehPHDBgPtPgb4xwy9TOF9+di2EExqzRVc00fMs4sYgmoIOzLtWLoILNy93O1COC7we1Wfr40FnzkU1LUAKgFP+6Gl3DFGyNTxZAmKgD5M1yd6bMb50qGomgNtj1MRAkXxJpnRl0oBXpDnZtaJNfT8SdKOmDEnP63lQy+4FYDgCWrv7B.3ltwa.4la9LelUdEUhxqnRr28Y9V0fWdoBu9+2K.+8yWydN160FIp5FXket80WevK87OC9p+2BYt48ob5TQJmNUK9bG0ULB7ny79M6t9Wb6Ky1+NHqrxgoRHPkfTBgPHDxEKbwEWvK+BOKd4W6sY5y6EWRolsZ51AEJTfW3+9zXPCHIIebkN4Ddlm5Qwm94eMyM6+zolFNcpleG7OwILNDUjQvDGeKUIYc2c2PLQGEyl+p0Vak68vYkJEUwcyTWVLUU..KWkt3WIo7yWefeVXMwl644rRkHpHssX+J79GXtVHbGtqa+VPiM1H1wN2M2wpnxJYheuT7yWevi+XyDCHoDs5bZp230i7xOerujOH2wJq7xQY6pby9bBL.03EetmB+mW3U4Nl4hA+Lt+6BojRpLk1+5quArm8lLy0u0AWcwE7zO0ihSkRpXc+SmsA54+klh89O98eM2w3eMSN4jSLUtZB4xQT5qSbHlv3GCdpm3gY5M8Vh6t6Nttqch3seiWwp86yodCWGl86+1PSTle26zAMZhDevrdCzmdGOS.7rVvbBOrPwLev6yr8kHot42B2gQ.lO6.s0dBpnatscrSySSv7wZYpn6t6F9uO6SfGYlOfYKiR74lathoNkqGy6S9PnMFMRdNc0rkjuHhHL7fOv8XguKX+8.9umxkICwnQ54l2d4Edgm6ojrUMHTvAEH9fY8lXvCZ.HoD6qnGOrvCCt3hK.vTxuveWQEslnfBEJr56AgPHDxE0D92ooVFvEUb2c2vq+JOOF2XuJlROukzq3iCuvy8z3ZmzUawyKn.C.e3rdSbq27zr5ZhTnPAt0adZ3kdgmEokVF++r2cd70Ucc9i+226M4laR599BzVnTVaA5B6kVATbbbbY7qNiNNpfJBnffn+TGWF6LJi5W0wE1b.QvccFmE0wupnhRaYqPWfVJsTJcegtuklaRt2b+8GEnbRJzRZatI2774iG7G2y4lj2Mgj649475y62uvwqppphQePt1+22k82+RtPb8pW0GCdPCLwwZa3Yi3f2R+WVaW.uCxMW9YdQWWZ+6e+hANvA7x97edacaa+E5HUQbnMxsxkaeK560csW0ArcZ1V0UWcweya8MGequ9WNF4A45gek9didw+6NUpTww+R7dEdwF+ocJw+5W8eIdsGj++oWbM8O7w+Hw0esW0K6H.3vYWC01+ejSTKHE.ftQF7fGT7O9o+Dw4dNSIR+RbcbuXoRkJl3Yd5w+3m4iGSoMcVq15DF6wGesuxWHdMuLAC94Uas4h2+68cGWw68cGO4R1+XgZXCcHGvtL1K10cMWULfWTKm+EaTi5XZWGL3.0AeOwwcfuF+FymOQ60+Pc7dUnPgDcbqi63Fyg7Z+trks+2iyvF1Pid0q5eYe94xUSbMW8UDe5O4GMFTad+LGHYylMdsW5kDe8u5W7PJL.QDQMYyFezq+Zhq+Ce0Gz5Ih8EH2+kuv+X7radKI55yi6k38rz6d0q3icCWSbLibDGzO2CYvCJtwO+mMN6oLo3zO.c1fQL7gkn6C+h2LkG2XFUTUUZX5zyVpRcfA34e9oaN9IO59mc3ScrUGuqyJ2QzBidNV3hVb7Hyc9w1111isu8sGae66LxkKaLvANvXfCb.wINtSHtfy+bNn65k1pPgBwi83KJV0pWarpUulXMqYMQ0UmMF8nGUbbiYe+23NgwFYxjI18d1SL6WzbD8LN8wGiX3C6f90Xaaa6wCMmGM1zl2brm8r2n5pqJ5ae5SbwWzEFCYvCNwy8286u2DuHX1rUGWxEM8C3m2k7TKKVwJ1e6mbpWv4d.u.n47nyK15ysKYRmNc7ZeMW7AsledyeAOdhQFvEeQS6P96w6XG6Ldz4sf3wd7EEaaaaK14N2UjNc5XnCcHwPG5Phi8XFYL0K3bOns++UrxUEKYoK6Ed7YOkIcHuPnsUxeVzPTc0UG8sO8ItjKZZwfG7fdgm2rt+GJ1yd1WxWykKWbQGft4vKVqs1ZL6G3gh4M+GO1xV1Zr0sssHa1rQe5cuigNzgDSYxmYLwyXBuvM7OhH9C268E26eZlwN24NigLjgDWxEOsXpm+9lYoM0byw89ml4K7bOlQNhW1VyDzUyU9S2chG+u81O32TA.l6G88Gac16emlL9a71hQ7p+KKiUDcT6ZW6N9Syb1wZVy5dtqceGQ97M8B2P6gNzAGS87O2Xzi5U9tuXCaXiwhWxRiUs50Fqd0qI1xV1ZLxQNhXLiYTwwM5QEiabmvKrS0m2Bd73Yetqks95qKl1TO+C5m+hs1ZrnEs33IdxkF6d26NZokBQ80WWb7G2nioegWPhm6xelUFO0KZA4hXe6D9Wt+cMyY+.QCMru1XYM0TSbwupK7ksddwu+fANf9Gm8YM4C5+FhXeABXNOxbegGeRm33hi+3doGY.s0t10tiE73KLV252Pr90ugXcqaCQwVaMF1ycs7ibDCOl54eNQ80evWvuWrC02azrefG5E1IZ4xUSbQS+k+6Ss0ZV65hmZYKOVyZWarpUu13Y23lh56U8w.GP+iQNxQDWv4cNGxe+XAO9hhMrgM9BO90bIupC4EJ7IV7RhU+hFiEW3EbdGRKRJDQD2y4j7+G8Re3U8R7LAX+9r+5FhMs68u1hy3urtX38wlLgCeadKaM9y22rhMrwm8E5nqEJTHF3.5eLvANvXDiXXwzuvyucq28ghUrxUEO0xVdrpUulX0qdswN20thQcrGy9tF+wL53jF2I7BiY1W70IN3AOnCZvChHhVZokXty+whmd4qH18t2cTpTon95qOF+odxsajfsvEs3D2j+H12nHqsgCNh8cMy2+KZGpO1ieLwINtS3fVOMr28lni5dnt1uEJTH98+w+7K73C0+8+7ZLe93IdhmLV0ZVarl0r1X0qdsQKEJDCn+8OF3.6ebFm9Dhy9rlTTatN98wam6ZWwBWzhegeVt90ugX.CX.uvOKG6wOlWXDMz108+Rtno8x1s0Zs0ViG3glSL248XwV1xVhsr0meM36ULzgNjXxS7LiIdlmdjK29WC9+z8Mq3O7G+ywN1wNigLjAGWzq5Beg2WXyM2b7GeQqA+HGwviSeBsei7AcWbjXM46XABXYMG+j49hBDvITc7tlh.A..ToSf..5HDH..f8Sf..5HDH..fdlNRrl7FY....vQYssETZjA......zYnCEHf1t7cG7ILC.......zQHhs..zQoCA..........TARf...........p.YjA....GckpMuigRZvo......cFzg...........p.IP...........Uf5XABvLC....NDkxHC......nrPGB..........nBTGJP.ZP........zIosKBultE..Ghzg....fipZ6HCnjQF......PmBAB..........nBj.A..........TARf....fitZyHCHLx.......5THP...........Uf5PABnsanm1tge..........n7RGB....N5xHC......nrPf........nKr11jdEwV..NTIP...........UfDH..........fJPcn.Az11QTaaWQ....u.82T.....fxBcH..........fJPBD..........PEnNVf.ZSK9LkYF....7RHUalY.kLy.......5TnCA..........TApCEHf1uidzh........3ng1tB7kzzs..3PjND....bzUamwXV8R.....fNEBD..........PEnN3HCHICL..........ftVzg....fitLx.......JKDH..........fJPcr.AXlA..........zklND....bzUaFY.kLx.......5TzgBDfFD........cRrH7..zAoCA..........TARf...........p.YjA....GUkJUx2wPoRs8cT......vQC5P...........UfDH..........fJPcr.AXlA....GxZyaXvHC......nSgND..........PEnNTf.zf........nyQaWCd8bK..NToCA....GkY4KA.....JGDH..........fJPFY...........Ufzg....fitR0lHDWxHC......nyf.A..........TApiEH.yL..........ftzzg....fitLx.......JK5PABPCB.......fNGscM3EwV..NToCA..........TARf...........p.YjA....GUkJUx2wPoRZvo......cFzg...........p.IP...........Uf5XABvLC....NT012ufIF......PmBcH..........fJPcn.AnAA.......PmDccK..5fzg....fitR0lUurjUuD.....nyf.A..........TARf...........p.0gBDP1LIebyEORTJ..zUVSER1huqJSaGfg.bfkJUx21QoRsVlpD.fxqRs50.A..fNWcn.Ajq5j2.f8zrY.J.Pkt19580VcYpP.51ISc0k3wEargxTk..TdUXuIeMvz4psLUI...POEcn.ALn5S9gsocIcy..U513NS958CrdSdHfCMU229m3wMsoMTlpD.fxqFe10m3wU269+R7LAHopaSW5qkB1jd..U5Z9HTW6NsIvg...f.PRDEDUsCsR9CuOI+hs5s2ZTnnK.A.nR1x2ZxYDzv6q.A.bno9QcbId7dV9RKSUB.P40tW5Sl3w01lWiDfWJssK8sqlJO0A..cd1Y9jaRu55fcs2NzJ4Ov5yD8qt8+gVnXoXoap3KyGA..c2sv0UHwiOwAKP..GZ5yIcZId7tdh4GEat4xT0..T9rkGdVIdbeN4ITlpDftaFbuS9dvW+Nsd7..U5VyNRtg7GRu5XqIeGdk7O0gkIwievU1RG8SE..cwstcVLV812eZDSEQbpCqCFGQfdb50nO9H6.F7K73VaJero6+OUFqH.fNeEaJerkY86RbrAdNWXYpZ.5t4XZSW5yFzC.nx2StwjaRuic.cxAB3rGcUId7bWcgXq6s0WhmM..cm8aWbxcx6INjLQ+psiMuh.5YZfS6RS7307e78JSUB.P4wZ+U+mQwF18K73p5S+iAM4ysLVQ.cmbxCM4FzaYapXr67Fiu..UpJTrTL2UmLP.m5Pq5k3Y+xqCGHfSdHYhA+hZKAsVJh+mGyfKB.nRyJ2Vw3QZyEdLswksLUM.cWcLug2VhGui4d+w1VviVlpF.fNWEZbuwJtquUhiMrW2aIRUUGaA8.54Yn8NSL79jb83+yOswvE.PkpYuhVhFZd+g+qtrohSoMcv+CUc3.AjJUp3u3TS1pfmypJDKZCEdI9H..n6lVJVJ99yIeT5EsoCFZeRGS9X5XW3APOW8e7SL5y3mbhis3u7mNZsEidL.nx2ScKe4n4srwW3wopp533eWefxXEAzcz4e7ICQzebosD6RWB..nhydatT7+tnjA+6bOtpipyzw5Zuc3.ADQDm+XpNFYalcQ20CkO1RCleQ..UB9QysoXc6H4HA5uYh0DoRYbA.7J2IbUerDOduOyRhk7stwxT0..z4X8+weSr1+i6NwwNl256IxM3gUdJHftsl1XyF0V89e+3M1Ro36OmFiRkDJ..fJI+fGIehQCTUoi30dxc7t16gUf.RmNU7NOqbwK9dBrmlJEey+b9XGM5hP..5N6muflhG7YRtycmxnpJF+v0VSA5XFzYc9wPtj2Phis1+86JV4O8tJSUD.vQWa4QdfXwetObhikcvCOF2UdCkoJBn6rbUmJd8iO4MCXgquX7KVnQG..Pkhe4hZJl2ZR1Q9+KN0rQ+psiuI8NrBDPDQL1AkIdCs4hP1ztaM9x+g8Fqam5T...c2zRwRwcMm7wueIIWPgA2qzw65rxUlpJfJEm5m3KDYG7vSbrm5qOi3ouyapLUQ..Gcr964WEy+i7dhVaY+WWcpLYhS+Fuknp5puLVY.cmcIiq53X6exk0+2r3lie8hapLUQ..bjPqsVJ92meSwutMiJfQ1uzwq6T53cGfHhHUoi.8SnRkJEemGLe7nqNYZEpNSp3sblYiW0ITcjVqEF.nKuUtshw2+gyGqamIGS.0mMU7weM0FCq2YJSUFPkjc7DKHdzq9uMZso7IN9.ufWcbZepuTjaPCtLUY..G9ZYO6NVx27eI1vu7G2tycRehuXL52xeWYnp.pjr48TLtweWiQisjbo8OqQWU7tNqbQMUYs3A.5NYW4KEemGrwXoOaxMaecYSEepKs1Xv85vac4OhDHfHhnPqkhu8raLV35aeWAXj8Kc7WdZ0DSZjYhzocwH..c0r1cTL9sOYywitpBQauvf5qIU7gmdswXFfv..bjylt++b7XehqHJ0RxTOmotdEi5cbEwXd6WdTce5aYp5..dkqPC6IV0+0ONV8O3ViV141a24G6G5SEi8cekkgJCnRzR2Tg3a9maLJlLO+Q+pKc7llP0w4L5piLVKd.ftzx2Ro3Osrlie2S1R6B5W1pREejWUswwOnC+0k+HVf.hXesxfe3baJt+k2xA778NWp3LNlphSdvYhQ1uzQ+qKcTSUgtG..PmnlJTJ1SSsFaXWkhkukhwBWegXMau0C3ycv8JcbMSOmNC.vQEa8QevXAe7qHJ1vta24RUc1X.myqJFz48ph9dpiOpajiNptW8NRkweOB.J+JUrXzxd1cr20s5XmKYQw1d3YEa8A9iQqM29V1cpppJNoO9WLF0a5uoLTo.UxV7FKDe6YmOZpP6Wh+dmKUL4QUUbJCopXj8KUz2boir5b...kMkJUJxWHhs1Pqwp2dw3I1Pw3wWWwn4hs+0wqulTw0NsZiiafGYVGrinAB348.qn43mM2li7GfKDA.ftGNqQWU72OkbQtpsfA.G8zv5Wc7XehOXrmmZgk6RA.3Htbi3XiS+Fuknem5YTtKEfJTqcGEi+s6OerocefC5O..cubbCLSbEmeMw.q+H2lh4nRf.hHhs2Xo3mO+7wbWc6a8v.cyUpTDQpHhRQnCe.UbFdeRGusIVSbZCupxco.zCQohEiU7ytqXEemuwAraA.jzy+13S4ZwgtrRWSt3XeGef3DduenHSM4J2kCPEtlJTJ9UKp43OtzliVsX7PkIqIOTwKW0oh2v3yFW73pNReDdr+bTKP.OuMrqhwueosDyc0Eh7s3pQft8d9eMNUDQoRQoTQjJbAHP2cohHNoglIl9IjMl3wjwMX.nrnPC6IV4O6ti0+K+IQ9Mr1xc4.cC77KJHPWEYG7vig+5eawXd6WdTS+GP4tb.5gYKMTL9cOYKwbVk0hGpjTJJEoJE6KH.u30mGnhP+pKcbgisp3hGW1ntrGc9k6i5AB340bwRwSsohwRd1hwZ2dw3Y2SoXuMUJZpPIcP.nahRO2BNlJwwhHUIoRD5No5LohbUGwfpOcL79lNF2fSGm1vpN5as98XftN1wSrfXKOzrhcrv4E6c0OSzx12RTLeCgs7DzdkhRBoKzYKcpHSt5ip62.i5F8Xi9N9IFC7rufn+SXRBWKPYWyEJEOwFKFKYSEh0rsViMumVi81RDEN.ynXft3JUJJkp8qIe38..cKUSUohdUSpXn8NULlAlIN0gkINgAczeC50oEH.ft2VxyVH91yNez3KQ5h+qFe13ML9Z5jqJ...5Y3Yuueerv+wqIZMe91exTQbBW6mMN9246uyuv...fiJ9UKpo3+cQMe.OWsUmJtpolKN4gZjeBbvIP..GTyd4MG+nGsoC5FxaJipp3xNmbQ0YjLQ...NR4Y9Qem3ouoOebvZudC+M7Nhw+I+BQpprnf...zcUKEKE28CmOdzUW3k84kNUDuyoTSL0wlsSpx.5tRf..dIUpTo3+5waNtmmr8oP7TGVlXoapXTr0jG+3FXl3CMsZidWiPA...vgiREKFK5K8YhM7K+ws6b8+bldr8GYVQzZxKHueS57hI9Utin5d06NqxD...NBY2MUJtkY1XrhsVLwwyjNhSZHYhEuwhs6i4ROkrwa4zyZrEA7RRf..NfZtPo3NevFiErt1eAFuwSOa75O0Zhks4BwsMq7QCMm7OiLv5SGW6zyECuOY5rJW...pnzxd1cL+O9UF6Xt2exSjNUbhW++TLl+12Sro6+9hE9Yt5n3daHwSo1QM1XRey6NpeDipSrhA..fCGaXWEia59xGasgjg9s9rohq9ByEiavUE+5E2T7Ke71uA9NyQlIdemWsQ1pDJ.f1Sf..Zmc1Xo3lm4diUu8jW3QUYREW94lKlxwt+VP5l2Sw3ace4iMs6jO2ZqNU7AtfbwoNLsqT...dkXuqeMwbu9KKZbUOchimo15hIbi2VLjK3U8BGaWKeow7utKKZZyqOwysp9z+3L+p2YLfyXxcFkL...bXXwarPb62e9nwVRdK6FRuSGe3omKFbu1+lu6QWSg3tdn7QghIetip+oiqYZ0E8sVgB.HIAB.Hg0tihwMMy7wN1axaveuykJ9PWXswwMv1uq+2aykhaa1MFO0lR1MARmJh2wTpIllYXD...GR11iO23w9Xuunkct8DGO6fGdLouwcG84DN418wzzV2bL2a38F6YIOdhimp5rwo9Y9pwH+KdSGUqY...nialKu43m7nMEs1l6V2INjLwUO0Zi5x19av+J1Zw3VlUiwtym7Cpe0kNt1okKNl9o68BreBD.vKXgquPbGOP9noBI+yBinuoiqY50FCrtzujerEasT7CmaSwCr7VZ24dMmb13sbFYizlgQ...7RZc+teYr3O+GMJ0RxV.ZuNoSOl7W+6F0LvA+R9wVro7wi+O9QhM+m++0tycbu+aHF2UbcGwqW...niq0Rkh+qGq432uj1OB.N+wVc72O4ZhLoeoWS8st2Via99ZLV+NSt49popTwUb94hILBcuWf8Qf..hHh3depli+842Tz1+hvoMrLwG3BpMxU8g1My+27jME+hGq4ns+gkSejYh2+4UaTiYXD...syx9NeqXE2wWqcGevS+0Em9m+aDYpI2A8yQoRkhkdye4X0+vaqcmanW5aNF+m8qDYxp6cA..P4VSEJEemGrw3wWWxttapHh2zYjMdcmRMGRedx2Ro31u+FimXis4ySpH9alXMwEeht9e.AB.5wq0VKE+z42TbeKq86r+oMtpi2wDqIR+xjBwCj4s1Bw28AyGszlYXzw9byvn9YFFA..PDQDEat4XQe9Od7r2y+c6N2ndmWUbRW6mLR8JrSasle0OOVxW5SDkJTHww6yoMoXhes6Lpo+C3vplA..fNtczXo3lm4di0r8j6r+pyjJdumWtXRGyqrc1eqsVJ9IyuoXlGf03e5iq53s2AViefJKBD.zC1KW5AeaSrl3RNLRO3J2Vw3VlYiwtZyLLpu0lJtloWaLJyvH..fd3ZZGaOVvG68G6bgOZhimppphS5S7khQ8Feac3O2actOT7XehOPTX26LwwyM7iIlz236G8ZLisC+4F...5XV8NJF2780XryFStt48IWp3CMsZiwLfN95l+Gepli+ii.cAXfJOBD.zCUmw7EZa6ceIcbc6H4WirUkJd+mWt3LFoYXD..POS6YUOSLuq+cG4W+ZRb7p5Uehy3Ke6w.mx4c3+0X0qHl208dh7qeUINdl56cbFe4aOFzYc9G1eM...fCMO15JDemGLezbgj2VtQ1u80YcGPcG92v9Et9Bwc7.4ilZyWiQz2zw0L8ZiAVW5C6uF.c+HP.POPqXqEiaYVMF6tM6d+9UW53ZmVt3XNBt68y2Ro3NdfFiEsg1OKjdqSrl3UeRlgQ...8rrkG4AhG+SdkQg8rqDGO2HFcLou42K50nNtiXesZdm6Hl+G6Jhc93yIwwSkISbRe7+kXTu429QruV...vA1eXoMG+742Tz1aH23Gdl3JN+ir6d+0tihwMMy7wN1axMpWuykJ9PWXswwMPcuWnmlLyXFyXFk6h.nyyitlBwsNq7Q9VRdoGip+oiO5EWWLjdejMgfUkIUbVitpngVJEqbqIu.jEuwhwtxWJF+vx7JdtnB..P2Qq9W7yhE8Yuln07Ml338cBmULka8GG0MzgeD8qWlb4hQ759qiFV+5iFd5Eu+STpTrkY+GhVZLeLvydptdb...NJn0VKE+341T7aVbys6bupSr53xO2bQ0YNxds38IW53rGU0wR2TgXmunMEXyEh3gVUgXn8IcLh9pSA.8jnCA.8f7adxlh+mGq8W3wYNxLw667pMxV0Q2EA7Osrlie17Z+LL5TFZl3JmZsQslgQ...UnJUpTrza9KGq9Gdas6bC8ReKwD9G++Foqt5ip0vx9NeqXE2wWqcGefS8Riy3F+VQU4p8n5We...5IowVJE+aytw3Ie11z8bSEwe6jpItnwczs641bgRwc9fMFKXcEa24dymQ130cJ0bT8qOPWGBD.zCPgVKE+fGso3gdlVZ24dMmR13+yomsSaGAsnMTHti6OejuMyvng2mzw0L8bwfpW6JB..nxRg7MFO9m85isLyea6N2wcEezXbu+ObmVsr9+vuNV7Lt9n0VRFT35G23iI+0uqH2fGRmVs...PkpszPw3luu7wF1UxtlatpREWwEjKF+vqpSoNJUpT7e93MG+9mr8aTvy83qNdWSolnpz1ndPkNAB.pv0PykhaaVMFKayISAX5TQ7NOqZhod7GcSg3Ax51Yw3ltu7w1a6LLplTwG7BqMN9AIT....UFxukMGy6ib4wddpEl33oqNabpetudLhWyeUmdMs8EM+XAez2azxN1VhimcPCKl323ti9NtSoSul...nRwyrkhwsNqFic2Txa+V+qKcbsSOWLx914u92y9YZN9QORSQqs4NBNtAmIt5Kr1n9rBE.TISf.fJXaZ2EiaZl4iMs6j238ZqNUbUSMWbxCsyIEhGH6Leo3Vl4diUssj0VUoi3xN2ZiyZTkuZC..fiD10xdxXdejKOZdyaHwwqtu8ONiu1cECXBSrLUYQr2MttXdW26I16JWVhimNWswDtwaMF5Tu3xTkA..P2WOxpKD28C0XTH4xdGid.oiqYZ0E8IW46FuujmsP7smc9nwVRdaAGRuSGW6zxECo21ndPkJAB.pP8TapPbayNer2lS9q3CpW6KEhCqKvKt2bwRw28gxGyeMEZ24dimd130eplgQ...cO8r2+eJVzm9CFEabuINdci9DhI8M+dQcC+XJSU19Ung8Dy+Sd0w1myLSdhzohS759bwXd6Wd4ov...nane8haJ9kOd6aM+S7XqJdumatHalx+tvei6decu2srmjIVntrohqdp4hSbH1ndPknLyXFyXFk6h.3HqGXEMG29CjOZtM2m8wNnLwMbQ0ECntzkmBqMxjNUL4ispnkRQr71LRCV5yVL17dJESX3YhzlgQ...cirxe5cGK9y+QhRszRhi2+oL03rtkeTTy.FTYpxRJc1rwHdsuoH+11Zr6k736+DkhXqOzeNZbqaMF74M8HU5tFu+A...5JpPwRwcOmlh6coszty8ZO0rwe+TpIppKxZb2qZRGmynqNV9VJFaeu6eyD1RwHlypJD8utTww1+x+lID3HKcH.nBRoRkhewhZN9MOQ6Sg3YO5ph2yYmKppKPJDOPt+mo43G8nMEEaSqT5DFbl3CN0Zi5qoqYcC..vyqTwhwh+ZyHV2+42ucma3u42YL9O9mORkoq4hqshex2MV125eNZ6PEs+m8zhI9ktsnp56UYpx...nqqFZpTbqytw3oayFdKS5HdmSol3BN9rkoJ6kWghkhu2bxGyYUsu6895NsrwaZ7YiTorl7PkBAB.pPzbwRwc8P4i4c.Z+9+UiOa7FFeW+1u+R2z9lgQscLGL3maLGLzt.i4....NPJzPCw7+Gt5X6O78k7DoSEmv07Yhi+c99KOE1q.O6ru2Xge5OXzZ9FSb75Fy312XNXXirLUY...z0yy9bse+Me.Z+9W0TyEmT2f1u+uZQME+uKp8avvIerUEWVWjwb.vgOAB.p.rq7khaYVMFqbqISgXUoi38bN4hydzUWlprW4dYuHpKHWbRCsq+EQA..zyxd235h4c8WVr2U7TINd5b4hI74ukXnS6UWlprW414xdxX9W+kEMukMl33U2uADm4W66F8e7SrLUY...z0wRe1Bw299qL1bayYUsDeuGNeTnMcu2wLvLwG5BqM5SNgB.5tSf.ft4V+N22MPea6M4qV2qZREevKr1XrCp6yEd77ZnoRwsM6Fik0MqMKA..zyyNdhEDy+i9diV19VSb7rCZnwD+52cz2S7TKSUVGW9MuoXtejKOZXYKJwwSWc13Tmw2HFwq90WlpL...J+doF+siavYhqta53uc4aoXbqypwXOMk7VFNf51W.GFQe69ceF.1OAB.5FaQanPbGOP9HeKI+03g0m88hzCp9tuuHcgVKEe+4zT7vqrk1ctW6olM9qmfYXD..P405+i+lXwy35hVatoDGu9S3zhI+MtqH2fGZYpxN7UHeiwi8o+vwVm88ztyc7W0GONgK+CUFpJ...JeJUpT7euvlie2haeK1+bFS0w69rqIpJc220rdKMruMe3F2UxjNjq5TwG37yEm1v08dgtqxLiYLiYTtKBfW49yOcywc8P4iVRtI5iSdnYhq+hpK5atzkmB6HjzoRES7XpJRmJhktoj+ib4atXrtc1Zb5inpHS23KvB..n6qm9tu0Xoe4+gnTwjWq5.m5qIl723thr8s+koJ6HizUUcL7K8MDszvdicsn4l3ba+Qu+XOqcswPl5EGoxz8MDx...bnp4BkhuyClOl8xa+FX6MNgrwe6jxEo6luA1pKa53bGS0wJ2VwXKMr+MgXgVi3QVcgnW4REiY.t9en6HcH.nalVKUJ9OVPyw8tz1mBwodBUG+cSplJtaR9it5Bwc8v4iBES9mqF0.RGWyzpK5qYXD..PmjVaokXQ23+Prwey+Q6N2w91e+wIe8elJtNY0p+e9owR++9oZW3G56oe1wD+p2Qjsu8qLUY...bz2NyWJt4Yt2X0aK4NmupLohK+bxESYTUV6b9hsVJ9wyqoX1Oc6C+vEeRYi21Ylsae3GfdZDH.najlJTJtiGnwXgqO4BwkJh3sblYiK8jqo7TXcBdlmaFFs61LCi5ecoiqYZ4hioeRlH..vQWsrqcFy6icEwNerGNwwSkISbheruPL52xeWYpxN5aKy49iG6SdkQwF1chimaDiNl7256G0erio7TX...bTzZ2Qw3lmY9X66MYX.5cMohO3EVab7CpxccoumkzT7esfli1dSDmvHxDWw4WaTSUBE.zcg.A.cSr88tuTHt1cj7BOxlIU79N+bwYNxJqTHdfr0maFFsg1NCipJU79O+bwDFQk+2C...JOZXMqLl608dh7qakINdl56cb5ewucL3yYpkmBqSzdV4xi4c8u6H+FVahiWUu6abFe4aOF3jO2xTkA..vQdKb8EhuyCjOxWH4sQa38IcbsSOWLv5qbCCvyaAqqPbmOP9n41z8dOl9sut2a+qSn.ftCDH.nafUtshwsLyFickO4ut12ZSEWyzpMFU+q7uvimW9VJEe66uw3I2Xa5RBoh3uYR0DW73xVlpL..fJUacdyIdrO9UDE18NRb7ZF1wDS9a98hdMlSnLUYc9ZZ6aKl+G88E65IlWhimppphS9S9kii8M7VKSUF...G4buKq43eedMEs8NncJCKSbUWPsQtp64bivW81KF27LaL1YiI+lQexkJ9PSq1XLCnmy8m.5tJyLlwLlQ4tH.doM+0VHt0YlO1aKsOAdezKo9XX8NcYpxJOpJSp3rGUUwtatTrp1LyldhMTL1SykhSaXYp3laq...kGq8W+eEK7ScUQq42ahi2mSaRwYca+jntgeLkoJq7npZqMF9q6sDMr1UGM7LKc+mn0VisLy6IZo4VhAdVmuqGG..naoVKUJ9oyuo3Wunla24l13pNd+matn5dXsJ+9Va5XJit5XIOagDaZwlJDwbVYgX38McL79zy59T.c2nCA.cgYF87x6Orzlie9BZeJMOsgmI9.meOqTZB..bj2RusuZrp69lZ2wGxq9MFS3y8UiLYqoLTUccrr+sudrhu62ncGevWzqON8+o+0HSM4JCUE...cL4aoTb6OPiwSrg12cZeqmYMwq9j5Y2cZapPo3NdfFiEt9178mHh2xYlMtzStm86OB5JSf.ftfJ1Zo3GM2lh6e4sztycImT13sdlYiz1wMQDQ73qqPbGOX9n41LGmFYeSGWyzqKFfYXD..vqPEato3w+bejXy26utcmaLW90Em3UcCkgppqo08a+Ewh+BernTKI2AU89TNiXRes6LpYfCtLUY...bnaa6sTby22di0syjck1rUkJthyKWb5irpxTk00RqkJE+7Ezb7GWZ66fBWvXqNdmStlHSZqIOzUi.A.cwzXykha69aLV5ylLkcoSEwaex0DS+D5YmBwCj0rihwMee4iczXxKVyLLB..3Upl11Vh4cCuuX2O4BRb7TUmMN0O8WIF4q6MWlprtt11iM2XAer2WTXWaOwwqYviHl327ti9L1SpLUY...bvshsVLt0Y0Xh1geDQzuZSGWyzyEGa+r9xs088zMG+z41TzZatCimzPyDW8ETaTaVgB.5JQf.ftP17dJF2zLyGO6tRdisyUcp3CbA4hSaXRg3KkczXo3lm4di0r8jeuq5Loh264lKlzw56c...u710y7Tw7utKKZZSqKwwqpO8KNyuxcFC3LmRYpx55qg0u5XdW2kEMt5km33Ypq9XB232NFx4OsxTkA..vKs4slBw28gxGsTL4sJ6X6e53ZlVcQ+p0M19kxSrwBwse+4i7sj76cCsOoiqcZ4hA2KAo.5pPf.ftHV9lKD2xryGMzTxekb.0mNt1omKFQe7hmGLMUnTbmOXiwisths6b+0mQ13u3TLCi...Nv1zCNqXgepqLJt2FRb7ZO1iOlz27ti5G4nKSUV2Gsr6cEy+SbkwNl6Cj7DoSGm3M7OGi4s8tJOEF...G.+1mro3+9wZequ+LFYl38cd0F0Tkv.bvr9cULto6KersFRtQ8pulTwGZp4hwNXaTOnqfLyXFyXFk6h.5o6gWYKw299yGMUH4wOtAlI9nWTcwfpOc4ov5lopzohoLpphlJFwyrkjgBXIOawXa6sTL9gmIRmxExA..req5m+CimXFe3nTyIWLv9MoyKNqa4GG4FzPKSUV2KYpolXDu12bz3l2brmmZQ6+DkJEa8At2nocsyXPm6zhTtdb..fxnBsVJ9AORSwueIszty8ZN4rw69ryEUkw0rdnn20jNNmQWcrrMWL1Qi6eyN1RwHd3UUHFTuRGGiQt.T1oCA.kY+pE0T7+tn1mBwIOpphK+bxEU6BO5Pl0xaN9wOZ6mgQm3PxDW8TqMpyLLB..5wqTqsFO423KDq8mcms6bC6u5uMlv+v+RjpJ6nkNhk+Ct8X42xMFQatd7AbtWTblewaIppt5KOEF..POZ6s4RwsM6FimZSI2PYoSEwe2TpItvwlsLUYcu0RwRwc8v4i4t5Bs6b+UiOa7FFut2KTNIP.PYRKEKEeu4jOdjU09Wf7u7zxFuoI3EHOb8jarP7uc+4iFay7cVWET...H.jDQAQELZH8Nc7gmtYXD..zSVg81PrfO00Da6Au2jmHUDi8C9ODi8ceUkmBqBxFuu6IVzm8ZiVaJehiW2wexwj+F2cT6PGdYpx...5IZS6Yes29Ms6js29ZqNUbkWPt3TFlv.e35Wrvlh+eOQ62.jm0nqJdOmsM.ITtHP.PYvtapTbqypw10V6yjNh28YWSbtiQJDORYiO2LLZKscFFkMUb0WXtXblgQ..PON427Fi4dcWVzvxexDGOcM4hS6e5aEC+hdskoJqxyNexEFy+Ft7n4ss4DGO6.FbLw+06J56oLgxTkA..zSxx1bg31lU9nglSdKwFT8oiqc54hg0GadriTdnU1b78mSSQwjKIeb7CJS7AuvZidWiPA.c1DH.nS1K6Mndp4hwMD2f5izD.C..fm2NWxhh4+Qtr1cCpqt+CJl3+5cE86TO8xTkU4R.L...JmbCp67srMUHtsYK.FPWEBD.zI5kqE1esSOWLDsv9iZLhF...zB6Ked4GQCepXru6qr7TX...UzzB6KeLhFftNxLiYLiYTtKBnmfYs7liuyClOZI4lTONwgjI9HWTcQ+pMc4ov5gHS5TwjN1piRQDKaSI+gvx1bwXC6p03zGQUQlzt.P..nRzx+A2drj+k++hRERFPzAbtWTLku02Opo+CnLUY8Ljt5rwvuz2Xz7t2crqmX9IN21ejYE6ciaLFxEbQQpzdeQ...G9ZoXo3Nen7wLe5VZ24d8iOa7NlbNqE7QY0mMcbtio5XEasXr0F1+ljrPqQLmUUH5asohQO.aRRnyfND.bTVoRkh+yGq432uj1mBwy63qN96mRMQUtviNUO7JaI9dyIe6ZQTG2.yDenKr1n247yC..nRQoBEhE8k9LwF9U+j1cti4scYwobCeN2D5NYq5m+Cik909rQzZxKHueS57hI9+81ip6ceJSUF..PkfcmuTbKypwXEas8iP12yYmKNmwTcYpx5YpPqkhe3i1T7fOS6Cmwq4jyF+eNirQpTVSd3nIAB.NJpoBkh67AaLdr0Urcm6MeFYiW2onM0Wtr7MWHtkYmOZnoj+IvA7byvnQXFFA..c60xd1cL+O9GH1wbefjmHc53Dug+4XLus2U4ovH1zCNqXgepqLJt2FRb7ZO1iOlz27ti5G4nKSUF..P2YqeW6qM0usFRF9z5qIU7glZtXrCVapub427jME+OOV623jmwHyDuuyq1nlpDJ.3nEAB.NJYGMVJt4Yt2XMaO4EdTclTw68byES5XcgGkaa94lgQOaalgQ4pNU7AtfbwoYFFA..ca0v5WcLuq6xhFW8xSb7L0UeLga7aGC47mVYpx34sqm4oh4ecWVzzlVWhiWUe5Wblek6LFvYNkxTkA..zczSrwBwse+4i7sj71dMzduuMA1f6kMAV417VSg369P4iVJl7mQGa+SGWyzpK5WsBE.bzf.A.GErlcTLt46KeriFSdil6StTwG7BqMNtA5BO5pnwlKE21raLV5lR1EGRmJh29jqIl9IjsLUY...cTa6wlarfO16KJrqsm330L3QDS7ad2QeF6IUlpLZql11Vh4cCuuX2O4BRb7TUmMN0O8WIF4q6MWlpL..ftStumt43mN2lhVayc75jFZl3pufZiZy5FM2UwJ1Zw3VmUiwtxm7GV8q1zw0L8bww1O2+D3HsLyXFyXFk6h.pj73qqPbSyLezPyIewrQ12zwMbI0EinudwrtRpNSp3rGcUwNxWJQ2bnTDwBWewnwVh3TFVFyvH..nah08a+Ewi+I+.QqMlrUz26S4Lhy519oQ8ibTkoJiCjppstXD+kukXOq5Yh8thks+SzZwXy+4eazZqQLvobdkuBD..nKsVKUJ9OVPywubgMGsc2udAis53JNubQVsh9tT5ecoiIOpphkrwhwteQiz27EJEOzJKDGSeSGCsOoKiUHT4QGB.NB5Orzlie9BZJZ6uUcZCOS7AN+ZibU6BO5J62sjlh+6Ez9KbbBiHSbEmuYXD..zU2xt8uQrh67q2tiO3K50Gm9+z+ZjolbkgphCUK8V+Jwp9d2b6N9Pd0uwXBetuVjIqt2E..v90TgRwc7.MFKb8I69qohH9qOyrwq8jqo7TXbHIeKkha+AZLdhMzle9kJh25YVS7pOIW+Objh.A.GAzZqkhex7aJl4xZobWJQDQ7u816c4tDNh4J+o6tbWBQDQbL8KcbMSutn+lgQ..PWNEat4Xg+yerXS+9eQ4tThHh3Re3UUtKgiXtmyYzk6RHhHh9bZSJl3W66D0z+AVtKE..ft.1dikha991ar1cz5A+I2IvZxej2zFW0w6Xh0DoSaM4gCW54Fvgo7sTJtoY1XWlv.vQGqcGsFew6ogX0au3A+IC..zooosus3Qtp+1tLgAfiN10SLu3gtr2XrmU9zk6RA..nLa0auX7EumF5xDF.N5XlKqk3llYiQ9VrulgCWBD.bXXqMTL9R+g8FKditIw8DryFKEek+PiwBVWgxco...DQrmUt73gu72PrqmXdk6RgNAMsw0FO768MGa9gmc4tT...JSVv5JDek+PiwNazMItmfEuw8cOX1ZCtGLvgCAB.5fdlsTL9h2SiwF1oTH1SRyEKEe6Y0X76WRyk6RA..5QaKy49iG989lh7aXsk6RgNQEaX2wB9Hu6XU+W+3xco...zI62ujliu8rZLZtnv.zSxF1YqwW7dZLdlsHT.PGUUk6B.5t53GTl3q9W2qxcYDQz0Yl9zYnRZVLA..zwMny9BhK4dWT4tLhHh3dNmQWtKgNMW5CupxcI...zC0q4jyFulSNa4tLhHrl7.cunCA..........TARf...........p.IP...........UfDH..........fJPBD..........PEHAB..........nBj.A..........TARf...........p.IP...........UfDH..........fJPBD..........PEHAB..........nBj.A..........TARf...........p.IP...........UfDH..........fJPBD..........PEHAB..........nBj.A..........TARf...........p.IP...........UfDH..........fJPBD..........PEHAB..........nBj.A..........TARf...........p.IP...........UfDH..........fJPBD..........PEHAB..........nBj.A..........TARf...........p.IP...........UfDH..........fJPBD..........PEHAB..........nBj.A..........TARf...........p.IP...........UfDH..........fJPBD..........PEHAB..........nBj.A..........TARf...........p.IP...........UfDH..........fJPBD..........PEHAB..........nBj.A..........TARf...........p.IP...........UfDH..........fJPBD..........PEHAB..........nBj.A..........TARf...........p.IP...........UfDH..........fJPBD..........PEHAB..........nBj.A..........TARf...........p.IP...........UfDH..........fJPBD..........PEHAB..........nBj.A..........TARf...........p.IP...........UfDH..........fJPBD..........PEHAB..........nBj.A..........TARf...........p.IP...........UfDH..........fJPBD..........PEHAB..........nBj.A..........TARf...........p.IP...........UfDH..........fJPBD..........PEHAB..........nBj.A..........TARf...........p.IP...........UfDH..........fJPBD..........PEHAB..........nBj.A..........TARf...........p.IP.......++yd2mAXWU06Ot+NYxj1jdYRu2fPHfBHcAjlz6bQkq9ytWrfEtVt16fMvd+dQDUDTDDoWjNDB0.jP58xLISIYRlTljY9+hX7+jLm8deljIE2977Jxds2q85bN6yAHqOquK...fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xg5395A.P6u2+MU+95g....+aq66HG495g....rWj+N4A1elJD..........PNj.A..........jCIP...........4PkzbyM2795AAv+53ltkadG9yW1kbo6iFI...7um7eSN...+6C+2+Cr6REB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xg5395A.v+Z6ltkade8P...f+sl+axA....RhJD..........PNj.A..........jCIP...........4PkzbyM2795AA....Pw4ltkadG9yW1kbo6iFI.....6uSEB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGpjlat4l2WOH..........n8kJD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4Pcbe8.....xOtpO0mOpZUqZu98criYLwW7y8I2qeeg1SM2bywG3C9whMrwMVv16PG5P7y+wWaz4N248xiLX+Se1uvWKVxRWZhs+M+ZewXnCYv6EGQ....6+Qf....f1E0ut0EKZwKYex8dHCYP6StuP6okuhUF0TacI19vG9vDF.3eXSaZSwbm27ilZpoB1dW6ZWhAOnAtWdTA...r+GAB....ZWLu4uv8Y26wM1QuO6dmlevO9mGMzvFRr8O5G9+J5RWLAurMycdyO01G2XGydoQB6qs7Urx3FtwaJw1G5PGR7e9Vuz8hin8+rfEtnDCCPDQLlQOpnCcvNkI...f.A....sKlWFSl4dRicL6+EHf5paMwi83OUhs229zagAfcvbla5eGZ7iSf.92Ey70lc7bO+KlX68oO8du3nY+SyYdKH01G23F6doQB...v92DUZ...ncQVqt48T5bm6TLzgNj8I26zL+ErvTaeL6GFhA12ZtBD.+Cya9oOY26OFBp81lyblWpsOdUTC...fHBAB....ZmL2LVsl6oL5QMxnz8CKKzY89gIziVpwFaLV3hVbhs24N2oX3CeX6EGQruz7yLP.iZuy.Y+XYUUZDfF...fsY+u+Vy...f+kS00TaTWcqYex8d+0UZe1qv2Qs2Yfv+RXgKZIwV25VSr8QOpQseYvWn8WiaYKwBWzRRr8xJqrXD+ad3PV6ZqOpZUqNw16ae6Sz291m8hiH...f8e0w80C....3e8kUoNOhHl7jmTbvGzjZ2u2G5gL4189r8v7m+BSscUH.Zor1xMFmU67+1XwKdooFNjQMxgGkVZo6EGQ6+IyuuLV+9J...v1IP....vts4N+rCDvodxmXbLG0aXuvnYeupqo1nt0jbESn+8ueQO6YO1KNhX+cyIiP0n7m+uOxp5hr+ZUQYuo4jY.ZF6doQB...v9+TuAA..fcaycdoOAVQDw3G6+9LglYucAXB8XGk49g9+F88m+cmsajrkUUow2W....9+mJD....rao4laNyxieO6YOhALf9u2Y.sef8FSnWSM0T7ZydNwJVQkQM0VaTSM0FM2bDCdvCLF7.qHFzfFXLvAVQz4N0oc66Ua07l+BiEs3kDUspUGqd0UGcrikFkWd4wEddmUTd4kua02Ka4qHl4qM6n1ZqMpo15hlat4XfULfnhJFPLnANv18IKcIKYYwpV8piZpstn15pKps15hMsoMEkWd4Q2Ku7n6cu7nhAz+3flzADcsqccW5dr90u9X4qXkI1du6Uu1q+8mlat4XtyaAwRW1xi5pqtn15VSzPCMD8oO8NFP+6eTw.5eLf92uX.Cn+Qm1C7L15angXFyXVQ00TSTac0E0U2ZhN1wNFCZfUDCbfUDCdfCLpXfCXexy2aXCaHdoo+JQkqZ0Qs0Vart0s9nO8o2w.qnhnhJ5eL1QOpcqmy2WtciTe8qKd0YLynpUs5npUs5XCaXCQ4kWdbnSYxwq+0cHodsasolhYO64FqXkUtCeWohAz+XfCrhXPCbfwfFXEsKUGkz1x.JojRZS+Nv5angXQKZIQ00TSTc00DUWSsQCMzPzyd1ynW8rGQu5UOid0qdEG3ALgnqcoK61ic...f81DH....X2xJVYkQCMzPpmy31KsZM+k+u2P7hu3zSr8AM3AEe9OyUkZeroMu43adMeuXUqZ0IdN8nG8H9LepOVzqd1y3K9Ut5X0qdGO20t15S8d72ty6MdfG7g2gi0oN0o369s9ZQG5P5ExsEtnEGO7i93wS9TOSTas0k54FQDULf9Gmva73hS8TNwnO8t2Yd96rO8m8KE0W+5JXaG5gNk389td6QDQrwMto3Qe7mLtu6+ghEs3kzpysScpSwa8xt3+4edSadywm3+9yFM2byEruO5i9HiK+sbIQDQzXiMF208b+wi83OYrnEuzTGuiebiI9OeaWVbfGvDJpWeERc0sl3Qd7mLdn+9iFKe4qnntlRKszXhSXbwgLkCNNgi+Xh90u9Vz2u4k0D.uWb+PetyaAwi8DOUL0o9rQ00TSlmeW5bmiS9jOw3bNySuM8ZtP1zl1T7DO0yDO8TmVL8W9Uist0sl40LzgL33htvyKNti4HiRJoj17875+s+gXZS64JXacnzRiu229qGk0ws8Wcxq7pyLt6689iW3Ee4nwFaLw9racqawEdAmSblm9oDkUVYIddqrxphu5W+a0piupUWcpi4u425ZiNrSuVOjC4fi2269crCG6dtuGLti+1cmX+70+Je9n28tWQDQL64L23dtuGJd5oNsB9ZanCYvI1OuxLlY7DO4TimYZOWl+1WDa68mS8jOw37O2yJ5d2a6AmnxJqJV25VehsOrgN3LCmSSM0TL8WYFwC+HOV7LS64S8yysqScpSwQ9FN73DOgiMl7jNvL+sZ...f8WHP....vtkr16yiXuWIx+DN9iMtu6+gRr8pV0piEtnEGiZjiHwy4W7qt93UmwqkX6kUVYwG9C89id0ydFqcs0GyXlIetIYs0Wer152wIN6.OfIj5DLs9FZHtwe+M2pfDjkpV0pia4Oeawsda2QbwW34EW34e1E8DYUcM0l5jUWw+XUquhUrx3Z9Ne+XYoL44iYziLJsE22EtvEGUV0pxruekYLy3W7Ku9XEqrxhZLOm4N+3K7k+Fw4bVu43se4WVQcMaW80ut3m+qt9XZO6yGM0TSsoqcqacqwLl4rhYLyYE+s65dhq7C8AhCYJStHGyyK01G+31yGnl0rl0F2vu6lhG8wdx1z0swMso3Nuq6Mtm68Ahi6XOp3BN2yJF5PGRa99+zScZwu429GhUWc1gPnkV1xWQ7C9Q+r31+q2Y7VurKNyUw9Na5S+UhpRH7OiZTiLJqicLpu90E+la7ODOxi9DEUe1PCMD23u6OF228+PwU+09hQO5Q2K34MyWa1IduSypKPfAFXECnUGa6qz+BoO8o2Qu6cuhlZpo32cS+o3udG2Up2yBEpqkuhUF+e+leW7huzKWji7sogFZHt863th6+Ae337NmyLNqy3TiN24NWzW+ry3emy3F2XSs8G7u+HwM+mtsnlZpsnumQDwl27liG6wex3wd7mLFxPFb7k9bepnO8osGxJ...f81DmY...X2RVkG+HhXb6ElPyHhXBierwAevGTpmyC8vOVhscO22Cl4Dh9gth2ab.SX7QDQLqYO219fLASbhiOw1dwo+JwG8S7YZygAnk15V2Z7GukaM9Re0qN1zl1TQcMYsu1OwILt3Em9qDe5O2WI0v.DQDicmlPwzJ42QDwDF+3h69def3K+UulhNL.szcbm2S7JyXlE84WSM0Fewux2Hl5y7rs4v.rypu90Ee8q96F+4a6NRrBHzRY8dwd5Jrwi+jOc7Q93e51bX.Zost0sFOxi9Dwm4y+UhktrkWzW2ZWa8wW4a7siu608iaygAnkVzhWR7M+VWa7E+JWcr90m7pGuk1vF2jaRLvC...B.IQTPTYrrTFqSbBiKprxphq5S+4K5v.zRUU0phe80eiI19rl8bZy8YRJzueL24k7uMOwILtngF1P70uluWlgAnrxJKF4HF1Nbra4Vu83i+e+YaygAnkZngFh+ve7OEenq7S1l9t5ty2Wt4+zsE+rew+WaNL.6rku7UDe0u42I0JU....v9KDH....X2RVSZbDQLt8RUHfHh3huvyM01erG+IiF2xVZ0wm0rmab82vuO0q8s8Vtj3XNp2v+7OOyYM6csAYAr8PFrydlm84iq9acsQc0sl1k6yLesYG+1e+MWTmaZSnXokVZz6d2636cc+nL2xHhn0qx8zBRRW5RWhY9ZyJ9eSYxTKF+re9+arkB7Y8NqxJqJ97e4uQrjkV7SjcVZt4lia5O9miG9Qe7LO24N2zCUy31CtkAbu2+CEe+e3Oqn9LrXrgMrw3p+VWahayDszpqt53y+k95wK+xuZ6x8NhHlwLes3abMWaQE5kErvEEMkRfM5cu5U7k9pW8t0jG+DO4Sm3jl+ZuV6yuezwN1wVUEVVyZVaAqj.a2Dlv3iq+29GhoO8WIy9eTibDQG+GaaBasolhe1u7+Kt4a4uTTaoCEi5VyZhq4a+8S82aZo4lUEBn.ABnolZJ9E+5eSbK+4aaWZLVHKYIKM9leqh6YM...f8kDH....XW1V1xVhErvEm54Tw.5ezyd1i8RinHlzALwXRG3DSr80st0GS6Ye9c3X0U2Zhu608iRcBtN0S4jhy+bOqc3XyZVsiqv2BDHfmYZOW78tteb61Dusc2688fwKUDSD3bSYR6GynGY7a+c2TrgMrwh5dtySR27RYx+ZrwF2sCCPDQTYUqJV9JVYpmy5W+5iO+W9aDUkx1WPDaK.DCYvCJlxAePwjNvCHFP+6eQMFt0a6ukZ6qt5pi5VSxg8XHCdPQ4k212m0KF24ceewu5+8FZ262JqZUw24Z+goFFiUVYUwm6K70y7ymcEydNyM9M23Mk44k1yfQDwsda2wtUUKX6dtW3kZ0wpecqKyppQwZbiczQYcbG2QHypxsrkFaL96O7iVb8++HLOM0TSw08C9IwC9POxt1.MEabiaL91e2uelSt9V25ViEtvEkX6cpScpUUyfH1VkA39ef+dliiNzgNDCeXCMlxAePwPFxfiRKszTO+YOm4F2WQzu....6K0wrOE...fBawKYYQiM1Xpmypqtl3c9d+fsa2ygNjgDesu7mM0y4htvyMlwW+amX6+8G9w9mqz+st0sFeuu+ONps15R77OzC4fi2867+rUG+nNpiHN7C6P2gicm288EqYMqMw957OuyJ5VW65NbrtzktDcu663j9VYkUE+fe7OOyv.zqd0yXriYzwvF1PiAVw.hUVYUwBV3hh4Mu4m5j0+S9Y+p369s95s59tcM2byw7SYREWc00DyIiUp610idz8cXONe8MzPpSDbRulG1PGRL3AOnXkqrxXIKcYE08d4KeEwHFdqmfvs61+a2Spe120t1k37NmyLN0S9jZUvVVzhWRbC23MESOkU39JWYkQ80utD2G4yZ0Nuya0BsWl0rmabC+1+PlmWO6QOhi3Hd8wfG7fht1ktDqt5ZhksrkEO6y9Bot55mwLmUbG208FWvNEhlH1VPh9tW2ONptlrmr8CXhiOlvDFeLvJFPr10Verzks7XNycdYFfiG7Ae33LNsSIF9vGZhmSVqH8B8aa8nGcOF6XFcr4Mu4XdyeAwl1zly70vxKvD+u4Ms43sdYW7Nbr0s9FRs782m9z63LN8SoUGeziZjs5XY8Z6tu2GH01aosW8A9K29eKd5o9rYd98su8INrW+gFCYvCJJojRhks7UDKYIKMdsLBPUM0VWb62wcGW5Ee9IdNKZwKM1bJ+6bF8nFYqlD+FZXCwccO2ep26y7LNs3DN9iMF9vFRTVYk8OOd00Tab82vuK0W2OwSN03bNq2bp8O...v9RBD....rKKqUgZDaaUk1dtOKOnAUQlmyTl7AESX7iMl8blWAa+kl9qDUWcMQ+5Weie6u+OFyLkR28nF4HhO9G8CFk1gVWf0Nmy7z2g+7V1xVha4Oe6I1WcsqcMdq+GWbTRIkj53uolZJ9w+reUpS1XYkUVbdm6YFWv4dVQm5TmZU6qZUqN9FWy2Kw8y8Zpst3F+C2R7Adu++JX6qrxph0u9jKi7oMI58t28J5cu6crl0rln1ZqqUky74O+El30tyFxPFb7Nt7KKl3DF2NrR4esYM63G7i9EwpV8pS85SaUXuoMso3tu66Kw1Ku7tEetOyUk3dR9HGwvi+mO0GO9ZW82MdkWYFI1Oqt5pSLP.yIiItcm2pEZOroMso3G8S+koNg9Qrsvqbgm+4DcsKcoUss7Urx3Z+A+jXgoTgPdrG6IJXf.9C27sl5p7NhH5e+6W7e89eWwTl7A0p1ZrwFie6u+li6NkI4solaN9K+06L9Hev2WhmSwrcmDw1pND+GW5EFG0QbXwfG7f9mGesqs93F9c2T7HO5Sj50Wn.Azu9023BNuydGN1K7hSO0.ALoCbhs5ZRRV+1bRe+sicriwvF5PhMtoME0TcMwlarwX7iaLwbl67ia9Okd41ujRJIdaukKINiS+TJ3uIM0m44he5u3Wm5uqbG248DWv4cV6vjx2RyMiOyFWA99xy+huTrgMrgDuli9ndCw67s+VKXa8qu8ItxOzGHV1x+RwRVxRK34Lu4ufXqacqYVMA....1WQf....fcYE6JDu8TRSN6N6htfyM9leqqsfs0byMGO7i93w.GXEwcdWIOgv8su8I9zexOVAmPzBIqJlvXGynxLL.QDw88.+8TCoP25V2hu1W9yFCeXIu5mGv.5e7U+Re13C+w9jIFHioN0oEu228aufgcnX2OuiXagS3rNySKl33GWLlQOpnu8sO+y1V+5Wer9cZ+oOsshfV5nOpiH9ud+u6B99+ALwIDet+mqJtxO9mN09XcoL4iyZNyM1XJkn72x+wEm4yakVZowwcLGUpABnCE382sKqJDvdh.A7G+S2VrxUVYpmya9zOk3scYWRhsOjAOn3i7Ae+wm7y7ESbqAXIKc4wxV9JhgNjA+OO1bm27ScRuiXaOe+Y+zehXXCcHEr8xJqr3c8NdaQSM0Tbu22ClX+7huzzilZpoB99e8qacQkYTkAhXa+Fvm3i9AiIL9w0p15YO6Q7A+.umn5pqIdkWclI1Go8LXKk02KZKUKhrl37VZxSdRwwdzGYL1wLpX3CanQG+Ga+.asolhksrkGCZfUDerq5+IZpolRse9Ou7KqUgjpkNx2vgE8rm8H9Be4uQhmyF23FiWclyJNzoL4B1dVutJz2Wx5y4INgV+YaK0wN1w3jNgiKtgT1FJpu90E8t28J09A...XeEAB....1kM+4u2OP.iebisnNuW+q6PhwL5QEyeAKrfseu2+CEMzPxSTWW5RWhOym7iG8qEStcVxZxp14UJegr0lZJt8TlvzNTRIwG6i7ekZX.1tt28xii6XO53dRn7fut0u9Xtyc9EbBwlWQ9Ya+6e+h+6O9GNFynGUAau7xKeGVY+Qj8d2dDQbrGyQEezO7GH0yYHCdPwfGz.iUjxja2+902DaaNyc9Qm6bqWIyQrsIA73NliLywYDQz29z6TauhVrcIzRM0TSotsLTVYkEibjinnFCEqMrgMDOvCl9dd9jm7jh+eIrhoaogOrgFSbBiKd0Y7ZIdNqXkUtCAB319qoGFfRKsz3+9i+gSLL.sz4etmY7.O3Cm3VLQ80utXtyaAwDFeq+Mi4UDUoht10tFeiu5WH0eCnjRJIdcG5TRMP.o8LXKkU3PFWQ76GQDwpVc0wZWa8E04dQW34EW5EcdELzDk1gNDiX3CKdpmdZotEeDw1BPRZgAX6NvCXBwjNvCHlwLS9YlW3EmdxABXWH.MoUMShHhYLyWKNqy3zR8bN3IOo3DOgiKw1aNRuZa....ruj.A....6R13F2TrjkTb6i6sWJqrxhQNhj2O32YWzEbNw2968CKXaoMIQcnCcH9DezOXLpQN71z3KqUU+3Fa1Sn2TelmMV8pqNw1O8S+ThC8PN3hdLcjGwgkXf.hXak65BFHfhXR6m3DFe7otpqLwxgeh2yLBNQ26d4w67cj8DRGw1J+8oYDCO4mWtny+bhK57Omh59jlo8buPhs08tWdhUXhktrkmZEJXTib3QYcr88+s8G5gerXCaXiI1de6aehOwUV3sHiBYvCdPoFHfpqtl+4+7Jqrp3Yl1ykZ+8t9+c4wjOnCrnt28ue8KNvCXhwq7pIWcFprppJbf.JhUP+a6sbIEUffx5Yvgmxyf6vXJkvgzgRJIF8nFYw0OEwqsRKsz3p9Xen3vOrWWlm6cbm2cpsO4CZRIVx8Kji+3N5TCDPkUVUAO9F13FSbKPIhsUwFpX.sN7M8Ii.67LS64iu+O5mGW9a8RS7y6QMxQDevOv6I09A...X+UBD....rKYAKbQYtGj2daziZD+yxYcw3HN7WeL7gOrD26mSx64c81aSS5910dTg.t66I4IuuCcnCw4bVu41zXJqICaMqcss5XasolhEjwd7dokVZ7guh2aaNL.qYMqMVcKlj3B4xeqWZzqd1yL6qFarwn15VSpmSwNIp6JZt4limdpOa7TO0yj34TnInb6xZK2XbEY0vnsHsRreDQbhmvwEcu6km54zRW5Ec9wodxmThs2xpmv8beOXzbJ+lQO6QOh2zId7E88NhHpnh9Gwqlb6qYMs946HxN7NiebiMNsSI4WWsTUqZ0o19XFc1OCtpUWchi0HhXnCcHQW5RmKpwSwrceblu4SsnBCvbm27y74zy6bNiT2VL1YUTQ+Ss80VfeSJhsEXhzd9Ios2iAOnAl4X5wehmJdxm7oioLkIGGyQejwQbXut1z2C....1el.A....6RJl8A9N24NEkVZ62+aGG3ALw1z4WRIkDWzEbNw08C9oE80bdm6YEm5IehswQ11pXBKaoIWwD5YO6QLfAj9Dgs9FZHl8rmShsOf92u3Iepo11FWYr5kKToEeYKa4wl1zlS85Nyy3zhANvJZSikHReUPGQDcsqcIdiG2wTT80xV9JRcBBqnhAztNodaXCaHVwJqLV1xWQrrkux34d9WHV3BWbpWSZS9YVAHoXpnDsEqt5pSc6UHhHN1it31lD1t9zmdmYnS1toO8WI01eiuwisME3mH11VVQZpecqqfGOsspgHh3zN02TTRIkTTigklx26iHhwLlQkYej0p5ersgmExZ6Pnm8nGwEcgmaQ0WuTFel0+902XJG7AUrCsHhHFP+x3yr5K7mYYtkJTfsKfH1Vnf5PIkjY.1Zp4liW7kd43EeoWNJszRiCZRGPbTG4QDG0Qd3QO5daK3S....6OQf....fcIYM4LQDw27q8EKp8598jN5i7Hhadv+kL2CriHhi4nOx3scYW7tz8Y9KbgoNgSES0AXlybVo1GUV0pha72ey6Riu1hrVgwcu6kGW7ETbSnXasuOrW+qKJqrxJp9ZgKZIo1dwrxr2YaXiaLlyblWLqYOmXEqrpn1ZqMpo15hZpo1XiaL4RseRF4HFQhskUf.FeBq34cUyXlyJ01G9vFRpawB6NVyZVarjLl37S9jdis49Mss+fHhnKEX6ZnlZ11moIozRKMNhC6PKp6+VapoXwYr0oTLUoh4j41MRw8rPyM2blgt4Rt3yOJuacqn5uW4UStz9GQDm3Id7sopCPDa66XooPelEQQTUGRoBAbZm1Im5VmxNaqacqwze4WMl9K+pw+60eiwQ9FNr3TdSmXQucV....r+DAB....1kj0JZsKcoKwPGxf2KMZRVG5PGhS5DO9328GtkTOuCXhiO9P+WumhdUAuylWFSVUwrBeekYLyco68ti9z6Vu5tyZhpOhC+vht0sttKc+xZxJO5i7vK59J6UXewMIpKa4qHt26+ghYMq4DKrcdqvXBSnvk8+Ms4MGKdwIuUVz8tWdL3AOn1swQDQLiYN6Ta+HOxinc890RuZJ6Y7QDwnF0HhgMzgzl62UspUkZ6EZkcm0Jn+fm7jhxKu3prDKcoKK17lStZZLnAVQQs5xyrBATDAJJhHVwJqL1vF1Phs2gNzg33O1ipn5qF2xVRshkDQDG+wdzEUe0RUUU5el08Dd+JyJDPJee+xtzKLdsWa1wBWT5UziBYKaYKwS7jSMdhmbpwTlxjiq38+ti9029zl6G...f8UZaw3F...H1VIctxLlTmwNlQ0lW4n6IrhUVY7W+a2clm2AMoCrnWY5ERV6y1EyD5shUjd4beOgBUt2ypbpeXutCYW99k0j3efGXwusPj0jnlUf.1vF1PbC23MEehO4mKt6649i4ufzqxCsUkTRIItpkWvBWTzTSMk30NlhbBfaKprxze9ZOY.dV4JqJi6caOL.QDwpV0pSs8d1iVO4xyc9o+byjZCOCl0yyisHBkRSM0TpgTnzRKMF4HGd6x3YhSXbEcXGpolZiM2XioNt1U11PpJiOy5QA9Lq15pKptlZR7ZFzfFXpaOHk2stEeiu1WHN6y5MuKG5qH111dwm3S9Yim64ewc49....Xus88+syA...+KmrVk2QT7qN68jpecqK9lWy2Kw8j5V5tu2GHZngjWYsYIyImtHlf25qu9c46+tpcNP.M1XioVJ9KszRiobvSZW5dspUWcr10l7qwAVw.J58p6F2xVRcbVRIkj5d29y87uX7Q9Xe53Nty6I15V2ZQcOaogLjAGWzEddQu6UuR7bF1vFZz0tV3JoPVq14wOtBWYA1cj0yW8cO3pdds0u1TauhAz+co9sxJSOXR8q.6W8YU54aK+1Ulkw9D1W6aoks7Uj51QwnF4vix5XwUfGyZ775ZCg4IsuqFQD8qe8MJcWHzWqrxzCGR+6Wea0wl6b28eetrN1w3cb4WV7i+9e63htfysfggpXr902P78+Q+rLCiB...v9KrkA....sYYMoSQDw3JhInYOoFarw3a8c9AwJVYwsp6angFh699df3hN+yoMeuV6ZqO0U8Z+5aeid26jm33saMoLAb8t28JNrWewsul2VL7cpLsunEujTmf7IL9wl3jbmkLCMQa3YlEu3kFaYKaIw1G1PGRz0D1KxW9JVYbc+feZrwMsoTuGkVZowPF7fhgNzAG8oO8I5UO6Qzqd0qX7iaLwHGwviZpo13Oeq2dhW+DF+3RrsrVI2iuH1hIZqxJXL8sO6ACDvZS+dWQECnM2myXlyJV25Wehs2ktzkXTiZDs53oUALJojRJ5xyeDsOgKHq9nsTsHxZqK4PN3IWz8UVAHohAz1+LaqM0Tlqt9C7.ZcEZXNsSaOHQDw.FP+iK6Ruv3Rt3yOdsWa1wTm1yEOyy7boVAB1YaXCaL9g+jeQ7k97e58KpDN....oQf....f1rrlLyHhDKU56MzbyMG+3e1uNdsYk9dl9N6Nuq6MNq27oEcoKctMccyMiJlvXKxI2cSoLA0iZjiH9.u22YaZbsqHyI3b2Xkq29txr20BWPiM1Xbse+eRpgAXbiczwYdFmdbTugCK0sQhW3kd4TGCSX7I+dUVawD6IBTSVU.izp1A6t1vFZH016UO6YatOefG5QRs8CXhiuUqf8JqrpXcqK4PDLjAOnnacq3B7xl27likrjklX6kVZownKPfD1YY9rbQ98hst0sFKbgKJw16TYkEibDCqn5qHhX8Y77Ru5UOJ59Z6doW5kiZpo1DaujRJIlzANgVc74L24kZ+tqTQMJsCcHNnIc.wAMoCHdmu82ZLu4uf3oelmKl5y7rwJKhfjMyWa1wRW1xiQL7h+8T...f8EDH....nMKqUgZe5Sui9Ufx97dK2zsbqwS7jOca95pu90E26C7Pw4c1mQa55xZkuWrq33dz8tGqYMEtzpuwMl9pYu8Rlk.8cifdj0VMQaYRvypuRZBBuka8uFKbQKNwq6POjCN9jW0UVTkn8o8rOepsOwDBDP80utnppRtT2Ww.5+tzDjmkt1stlZPHV+5WeQGFlMtwMEO3eO4IjuacqawIcBG2N7mSypVcaq7qu9FZHl5TmVpmyjOnCrUGKqv6zVdFbgKJ8powHGwviN0oNkY+j0umN1T15KZokrzkEatwFSr8QO5QEkVZoEUeEQDkWdFelsppK59Z6R6YlHhXjibDQ4kW9Nbrlat4X9yegIdMcricLF0HGdadrzRkTRIw3F6XhwM1wDW9a4Rho8ruP7GukaMVzhSdaIIhHVvBWr.A....62Sf....f1jpqtlnt0rlTOm1RI2t81e+Qdr3V+K2Qhs2kN24XqM0TzXBSb1e6ucOwYbZmbQMQdaW1q78hLP.8n6I11RW1xJ5wy1sksrkn4TZuPS587meVqV4csOaat4li4kxj50gNzgXziZjEc+M2rVg8ILNe4W9URcL7wuxqnnBCP80ut3ESoBATd4cKFxPFbAaKqxe9X2CUcM5d4kG0VacI19pqtlhNHOOxi8Dw0eC+9Da+7NmybG9y8nGouZxW9JVYQce2tG9Qd7Tm76RKsz3MdbGSqN9dypTQwTYPZrwFSMfJctycJF1vFZQNdZepTIaWOS42ihHhUrx11mYUWSswy87uTpmya5DO9VcrkuhUFMzPxUXhQNhg2pJ4wpVc0IF5lxJqiotcdDQDGwg+5hC60eHwW3K+MiYM64j34svEs33DN9V+bF...v9SDH....nMIqIyLh8Lk67hwK+JyH94+xqO0y4CcEuu34ewWJdn+9iVv1qaMqIdfG5Qhy7MepE88MyIFrHWguCbfUDy70J71bv5V25iUVYUwfFXEEUe87u3ziu4078RYLM53p+5ewc3XaXiaLV5xVQhWSO6YOhALf9WT2+c1xWwJiMrgjKA4iXDCK5bQFBiMtwMEKaYKOw16TYkUvUs6VapoXwKN4R79nF4Hht10hqbw+PO7il5pCe7iarQIkTRAaKqvLL9T1pA1czqd2qXIKM4fk7Ju5LhINgzmnzH1VPSt6649Sr8xJqr3rOySeGN1.5e+RsOm5Te13+7sdoQm6b1UnfYOm4E+9+vsj54bbG6QG8oO8tUGOqp4QaKP.YUkJxtuVzhSuJCLpQNxVssGrqNdZKu1hHxLbH0W+5hm+Emd75OzojYesoMso3a+c+Ao9Zs6kWdACDvtx1Cxi9XOQbS27sVvyuO8o2wu3mbcYLh2V.gN1i4HSMP.qe8ouUX....r+.AB....ZSxZRmhXaq77YM641teuGxfGThqh9krzkEemq8Gk5DNcIWz4GG4a3vhgL3AkXf.hHha+Ntq3TOkSpnVo3qt5pi0t15Sr8NTRIEc0FXJG7AEO7i73I19+60eiw+ym5imY+T0pVU7S+Y+5TOmK6+3hZ0wVvBVTzbyIWSAZqSnXK0dNYkyegKLZJkw4nGcgKM5KeYqH0UU9.KxvVTYUqJtk+7sk54j1dZdVSv432EqBCYYhSX7wq7JyHw1uq699iy9LO8LmT9eyMdSwxVdxAG4jNwiO5cu60NbrCZRst782R0sl0D208b+wEbdmcpmWkUVUbMemqK0OGiHhy4rN8VcrlZpoXAKXQIdMs0ROelaAFEwyzoU0LhHht10tzFFOY7bUaLnV8o28NF5PFbpeV+G9i+o30cHGbhgeIhs89908C+oY990odpuoB9r2bxJ.ME30U26dxU2fZqstX0UWcz+9kdHUJFCX.698A...vdZBD....zlj09ccDQ7a+c+w8H26q9q+kJXf.pqt0Deyq4ZSsrR+FNhWebIWz4EQDwvG9PiobvGTL8W9UK34VSM0FO7i73wodxmXliozVw4QDQSM2b7buvKEG0a3vyrulxjOnnCkTRhS18K7hSO982zeJtjK57ZUIxd6VwJVY70t5uapaqCG3ALg3Pmxja0wybk3taLQ0sGSd5+ruxJbAiqviypqs1z624ufn4laN0I2b8MzP7i9I+xXSaZyo1WSHkUZeZuOWZokFidziJ09dW0AcfSL9yoz9Zqu9359g+z3CeEu+nacq0UJgF2xVh+7s9Wi64defD6iNzgNDm6YeFs53ibDCK5Uu5Yrl0r1Du1a9OcaQO6YOhS9jNgB1dM0Ta7MtluWpAvIhHN8S6jiQNhVOw9KaYqH13l1ThW2nG0HhNVDg.JhHZngMDKOkIJuKcoKwPSXKinkxZOpeNycdQs0UWzmd25pcPKs4Mu4XIKI4p+P2Ku7ht5hzRSYJSN0.ArvEt33Z+A+j3Jd+umnKco0Sl+V25Vie80eiwy9buXp2mJpX.wEbtmYAaKqp5PgBeS+yn5Fbu2+CEusK6RR8bhHRcaAIhsERM...f82IP....PQaa6C7YGHf8DJqrxhQNhVWF32zl1TbMemqKV0pWchW6vG1PiOzU791gI58rOySOw.ADQD21s+2h2zId7Ebkl2R0VWx6I6a22+G9yhGdJSN5cu6UrwMtoXCaXCwIcBGWbTG4QrCmWu5UOiy4rOi31ui6Jw95ub6+s3IepoFm8Y8ligNjAGCZPCL5XokFKdIKMd9Wb5w8deOXpUIgHh3s7ebwE73s2kb7VJ6I0q8qTsmz3bDYrWrWUUqJ94+peS7ddmWdAmX3YLyYE+ve7OOVc00j4XLoU4ekUspn95WWhW2vG9PK5sNg1pC7.lPz+92uX0qt5DOmm84dw3S+Y+RwoeZmbLlQOpXnCYvwJqrpXAKbQw8buOPrzT1pFhHh27oeJw.qX.s53kTRIwoeZmbby2xeIwqcKaYKwO6W7+Euzze03vOrCMF+3Faz4N0oXEqrx34d9WLt266Ayrx.L7gMz3s+19OJXayMiUP+XaKUohErvz6qwLpnCEQo9ut5RN3NQrsRR++8m9KDS9flTzoN0oXiabCw5aXCwG78+ti91297OOuEtnEm526GytXXdNsS4jh68defTqHGO0SOsXoKc4wI+lNgX7iarwfX92yqB..KbeRDEDUGz.ipV0pi4M+ED+063thJqZUodO5PG5PbkenOPA2tNZbKaIVvBWbhWa4k2sXvCZfs53iZjiH0vUca29cFM1XiwkbgmWTd4k2p12ZSME+g+3eNd9W3kR7d28tWdb3G1qKw1A...1eg.A....Esr1G32SZTir0qd2lZpo3G7i+4oNAwcu7xiO0UckQW6xNV5sOzC4fSsbXW0pVc7nO9SEmzIbboNt5WeSeknFw1lnym642wUH64kvpg8Ru3yOl1y8Bot5iqrpUE+5+ueal22B4jeSmPbfGvDJXasmqh+VZqacqwBSYR85Rm6bLrgNjht+xtj6W3wYe6aexbUp+fOzCGO2y+BwwbzGYLnAVQr4FaLVvBVTrnEs3XYKeEotkJzx6SgljwhZrmxVMvtqN1wNFWv4c1wu7W+aR87VwJqLt9a322l6+i7Mb3w63xurDa+rOySOtm64Ah0Ve5qv+m5oel3od5moMe+6ZW6R7Q+H+WItEczdF3k4jY0zn35qVNo9IYMqYswS7jO8+7O20t10nO8YGqX.Y8ZKouSjkgMzgDuw23wl5VYRDaaKaYW4YlHh3sdYWbLgwW3m6WTFAcXriYzErhdzu9023vO7We7LS64R7Zuy659h669+6wgeXGZLrgNzne8qOwF1vFiUVYUwTm5ylZUVIhHNy27otGK7N....smDH....nnk0jYtmz3JvJH+F9c+w3Yl1ym30zgRJI9XW4UTv8F9RJoj3LOiSK0IG8uba2QbBG+wj5J8cLidToNtK33pCcHFaBWWm5Tmhq38+tiO+W5qWTS9bawI7FOt388teGErs5qecQUorRdqnhATvsqghwhWxRSckcOlhb0TGQ1iydzitWvOu2ti8XNp3tt66K06Qc0slLOmzTnUr71Mm4NuTu1cmpvPw3jNwiOdzG6IiYM64zt1uS5.Of3J+Pu+T+brqcoKwG5JduwU+sutnolZpc8926d0q3+4S+wiQL7VWEQ1tr1pIZKUohr21JJt9ZriYTE88b6F+3FSqlD7rC6vt918wa+scYwrm8bikuhUtK2GI12+muk3bNySOw1mybyH3Eo797a8xt3X1ydtoNw9M1XiwS8zSKhXZYNVaoS6TeSwEegmWa5Z....1Wo39abA...HxdRm1SZmmrt649dv3Nuq6M0q4xu7KKlxAePI19I7FO1n6cuvqj6H11Jk9IdpzWox8rm8nMuOROhQL7nyct0621a2Dmv3J39v9ti23weLwU79eWINgs6opN.Qj8yMskR0dViywNlzm3y21kcwwvSYRiKFGzjNfTauacqaI11bma62jRuqnrN1w3ScUWYpgVnsZTibDwm5ptxnrxJKyy80cnSIthOv6Nyshi1hAMnAFesu7mMF8nFYhmSiaYKwhV7RRr8t0sBW54SRlaAFE4yzSX7iqfqv8T66wOtVOd1C982dzitGetOyUE8u+8aWtO1YkVZowG9C99RML.Qjcf.RqhZLzgL33q7k9eh92urqhKsEm0Yd5w68c81ayetA...ruh.A....EsrVUr6I0xIz54egWJ9+t9aL0y+Md7GSlS1Tm6TmhS8jOoTOm+xscGYtR8+jehORzqd0yTOm++Zu6+ei5563.3uDRudPaoW+FzREWvxW1XkuLkAaBLDYhDXAETZzsYxLtkoYeIwsrreXlrMcaF1zoKKw+ALlnYKSiPF+lQhlsPHNmNmyrDg9En2cs1ugEDYsc6GXPvZuq2UXLym73Qx8K8yWu69z6Wd878qWWrkurOZA8lru5Wti3dum6dJmk8kippZtwsumaM9V22Wunqd6oufhy7UX76bzNK51Km1Y9ztRnmlBpmJUp3A9N2ejISsk707hs0aZyw2+A91Ecel8rm5OmGe7wiiUjYO+blS5n0E1xL59pbTSMUG66Q9owsu6cUv1qeon5ppJ9J20die1C8fwbm6Gc9uWHadSaH90+pedrtO60Miu1QbtuK63Nts3Q22CWztBQDQzc2GOFarwJ31aqsot0yOUFd3Qh2cfAK31yjo1ngRrHzstvVh6+adukUwkW9jZu9m9zuejsHqd+Fpu9Y7y6mWSM0X7DO5uH5Xu6NRWjvLUJV60ul3IdrGI9Ba7Fl188RM3Esz7BhG5m7ihluLD.lJpnhni631hu1ceWWxmK...fqjLx....fRxXiMVzYWEdNv++RUWUUWX06drN6Jd7eySFSTjhzuj1Vbbeei6ojN2aeaaMdgCbvBNmp643mHN7Qd03yst0VvyQqstv3G+f+v3od5mMd823Mm11gdoNm32911Zrx1WQ7BG3fwK+J+43eUj1t+jM+42T7k1wsDaYyaJRmd5Kf2ky4q9j8NGcl21uK2yUoDtfEsnVie6i+Kime++wX+G3fwYO6Ym1iYYKcIwc1wdhU19JhSe52un6at78Mk+8oczIr3RezIboZNoSG2YG6I11WbKwy769CwKcnWojGQEoSmN14NtkXW6b6kUP.tXKrkliev266F+i29eFO0S+LS6JA+hkISsw5W2ZicuqcVxEde5F2Ikyy2WtWM9aYyaLRkJU7bO+9KZWL37l7uebzN6rne2UN++UwTYkUF6cO2Zby2zMFO6u+4hW7EOTQ+c3KVEUTQrx1WQriseywpWU6kzwbpScphNlBZrwFJofX0TiMDO19d33vG4uDuzgd43u8luUYMNVVRaKNtwMuoXi2v5ipppvcTF...fOt5p92WtGJk...PhzXiMVzcOG++KW6JSkJZs0EFQDQe82eL5nmpn6+BleSkUgaNwI5M9fhTT3ZpolnoRrcYOxHmLd0W60iAFXfX3QNYblyblnhJREoRUQTcUUE0TS0wF97qOl27poju+hHh2azQiN6r6n2r4hr4xEYylOxlMWL93iG0We8QCMbtWM1P8QKszbrp1WQYUb4o6yfqYQW8LtaEzYW8DSLwTG3hHtp3ZWbga06S1zced0stvxZUuOvfCEu1e8Mhd6MajMWtn2r4iyblyDYps1n95yDepO4xiUup1iOw0rnKbLSLwDQmcU3B2N6YOqOz9edm5zmNxWfvBDQ48b1ka80e+Qmc0SjOeeQ1b4i746KxmuuXVyZVQyMufy8ZAyOZt4EDKssqMpolpurd8OVmcE8lMejKWtHat9hb4xG82e+Q5zoiLYpMps1ZilWv7iq+5VSrrk1VY2t1GbvgJ5rjuoFarjeOMxIOYLPQ5P.0Nu4UxAUXx5p6dh+9a81wvCORL7HmLlXhIhTopHprxJiZpt5ngFpK17l1vG5XduQGM5u+2sv2O0VazP80MiteJlAFXvnqt6IxlK+EdlIa1bw3SLQT2+86r5pKSrxO8Jh0rlUFyIc5x57+Am8rwINQuEb6yIc5nkxbbsb966+zgORjOeewfCNTLzPCECNzvQpJpHpqtLQlLYh5qOSTec0EelUupXQKp0x9Z....7wIBD..........PBzUldQH..........WQIP...........IPBD..........PBj.A..........j.IP...........IPBD..........PBj.A..........j.IP...........IPBD..........PBj.A..........j.IP...........IPBD..........PBj.A..........j.IP...........IPBD..........PBj.A..........j.IP...........IPBD..........PBj.A..........j.IP...........IPBD..........PBj.A..........j.IP...........IPBD..........PBj.A..........j.IP...........IPBD..........PBj.A..........j.IP...........IPBD..........PBj.A..........j.IP...........IPBD..........PBj.A..........j.IP...........IPBD..........PBj.A..........j.IP...........IPBD..........PBj.A..........j.IP...........IPBD..........PBz+AfSguQnjln1uB....PRE4DQtJDXBB" ],
					"embed" : 1,
					"forceaspect" : 1,
					"id" : "obj-10",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 91.0, 152.0, 380.0, 191.481481481481495 ],
					"pic" : "SDT_obj1_int_obj2.png"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-22",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 766.0, 192.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 40.0, 32.0, 58.0, 22.0 ],
									"style" : "SDTpackage",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 93.0, 248.0, 22.0 ],
									"style" : "SDTpackage",
									"text" : "window size 200 150 1100 800, window exec"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-21",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 156.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 590.25, 10.0, 84.0, 40.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"style" : "SDT_package",
					"text" : "p this.window"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-55",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 681.337931034482835, 10.0, 68.0, 40.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"style" : "SDT_package",
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontsize" : 36.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 10.0, 560.0, 50.0 ],
					"style" : "SDT_package",
					"text" : "#1 - instantiating solids interactions"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "SDT_obj1_int_obj2.png",
				"bootpath" : "~/Documents/GitHub/SDT/MaxPackage/media",
				"patcherrelativepath" : "../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "basicImpact.maxpat",
				"bootpath" : "~/Documents/GitHub/SDT/MaxPackage/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "basicFriction.maxpat",
				"bootpath" : "~/Documents/GitHub/SDT/MaxPackage/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sdt.modal.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sdt.impact~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sdt.inertial.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sdt.friction~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"boxgroups" : [ 			{
				"boxes" : [ "obj-9", "obj-17", "obj-16", "obj-10" ]
			}
, 			{
				"boxes" : [ "obj-1", "obj-15" ]
			}
, 			{
				"boxes" : [ "obj-14", "obj-18" ]
			}
 ],
		"styles" : [ 			{
				"name" : "SDT-comments",
				"default" : 				{
					"fontsize" : [ 13.0 ],
					"fontname" : [ "Lato" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "SDT_package",
				"default" : 				{
					"fontname" : [ "Lato" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "SDTpackage",
				"default" : 				{
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Lato" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
