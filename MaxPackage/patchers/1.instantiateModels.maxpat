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
		"rect" : [ 717.0, 415.0, 900.0, 650.0 ],
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
					"data" : [ 102252, "png", "IBkSG0fBZn....PCIgDQRA..HP...PfBHX....P22oCV....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6cmGeeUUm+3+cZZSZaZaRWRS2WRaZK6EEkMAb.QEQE+N5fKnCpiCiKyLN+blw0Qw0YTwccbCEWQQVEWPAEnrVn.EYqz8lt2zzjz0z1r74yu+.KSaSt26mzVZgKOe93A+Q+bN2y874StexiVNuNuOkUrXwhA..........4J86H8D..........fC8DH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbn9ejdB....7rY+ue2ePzQGclX6UVYkw68e5cdXbFAGd8Ku5qK1vF1XhseQu42PL5Zq8v3L5.ysMm6JdjG8wSr8y4u4Lii+3NlCiyH....3YdBD....PBZt4MEy4Nt6T6yrl4LNLMafC+JTnPbS2zsD6Z26tWau7xKOduu6+gCyypCLy4Ntq3IW3hSr8y6UbNGFmM....vgGBD....PBV5xVQl8Y5Su9CCyjCcdfG7giVaqsDa+jeQuvnlZp9v3LhmMaMqccIFFfHhXhSbBQkUTwgwYzAltKTHV9JZLw16W+5WL0oNkCSylCLqa8aHdrGeAI19DF+3hi4nm0gwYD....OWf.A....jfkrrkmYel9zdtUf.t7q3mDs01lSr8S4EeRGFmM7rcKYoo+cfFdNRfXV8pWar6c2QhsOomCDrg63ttm35ugeahs+VdSuAAB....fdneGom.....Oa0xJg.Azvzm5ggYxgFs1ZaoFFfQMxQDUW8vNLNi3Y6VZFeG34JAhYIKcYo19yEpzGKe4MlZ6SaZO242EA...vgOBD....PunPgBYt.bCaXCMFcs0d3YBcHPZkL8Hhn95sfhruxJP.OWoBAjUkN34BAaXYKO8ivjoM0obXYd....vysHP.....8h0t10m5YmdDO2XQD2aKcYYrfhBD.6kc2QGwpV0ZRr8AMnAFiebi8v3L5.2RynBA7r8fMrwlaN1111dhsOl5FcTUUUcXbFA...vyUHP.....8hkTBGW.OWnLiu2xbGFW+TN7LQ34DVQiqLJTnPhsOs5mZzu98r++2JryctyXMqccI19.qrxXBiebGFmQ8cKaYMlZ6ptG....jjm8+ubG...3HfrJU5QDQCOGqBAj0QfP8BD.6kklQY1eZOG44+ks7FihEKlX60W+TdVevFDlG....NP8r6+Eu....Ggj0YNdDQLso8bmckayapkXqaaaI19nGcswPGxPNLNi3Y6x56.y34HUHirp1GOWHXCKKiv7339....fjz+izS....fmsoiN5HV8pS9rSOhm5L69P8BnWnPgnkVZMZssMGss4MGCn+8OpqtQG0V6nhJqnhCpw9v4NLdqacaQqs0VzZqsEczYmQcit1XLiotXPCbfGxtGGH1111drwl2Tz7l1TDQDCopphoN0IGUM3AePO1aYKaMZo01h1ZqsnyN6Lps1Zi5FcswPFxyLmq6EKV7o+btsMukn81aOF7fGbLjppJFxPpJFdMUGCZPC5f5djUUxX5GAVH8hEK9zeV2RqsFQwhwHG4HS8y5ktzkk5XdfVoO5t6tiMuksFs0VaQasskniN6LFRUCNpppphgNjphgO7ZhJNH+daDO064kuhFSr8xJqrn9oN4C56SDQzcgBwV2xVe5eGzt28tippppXHUM3XHCYHwvqo5nxJq7Px8B...fCODH....f8SiqbUQ2c2cp8IscUbaadyw0cC+1Da+jdAyNl8IbbO8edAKbQw8bu2eb+y6Aisrks1qWSsiZTwE7ZeUwK6rOqn7xKO041s7mu8XU6WfFVQJKnXDQzTSMG+fezOqGu9E95ecwvF1PS8ZiHhEujkE288dew8N26Ow2C0Tc0wXFScwXG6XhWxocxwwebGSliau42+GtkX8anoDuGug+1W6S+m2xV1Zbay4Ni+7sNmXiMuodz+uxk841m.AbUWyMDae6auWG6QW6nhW6q97d5+bSar43tum4Fy89lWrxU06AHYvCdvwYdFmV7282dAkzmioo4l2Tb62wcG288L2noM1bTnPgD6aYkUVL8oUebBmvwFy93OtX5Su9n79PYweqacawF2XyI19HGwHhQLhg2ml+GnJTnP7HO5iG21bty3gl+iDc1Ym8nOkUVYwwbzGUbFujSMNqy3z1muijUkNX58gJcvJZbkwsMm6Jl27dvnsMukTOJBFv.FPbTyZFwrOgiKl8webwDm33yb7abkqN9y21b1mWqiN5HZu81S89bkW001iWe1G+wFmzK7Dy7dtl0tt31t86Ll68+.QqszZTHk2SkWd4wrlYCwIbBGWL6i+XioL4IEkUVYYdO....3HGAB....X+TJGW.MjxhHtvEtj3lukaMw1m8werQDQzRKsF+fezOMdvG5uj48q4Mso3GbE+z3O7G+Sw+768RhomxwUvMbi+tXSapkLGy81xWQi8XWHOnAMv3cdwWTpW2hV7RiK+G9iSbAw2aadKaI17V1RrvEs331mycFiebiMdqWzaLNoWvr6Sy0q+F9sId7GbpmxKNh3o1U0W6M7ahq65+MIFtiANvAFiebi8o+y6ZW6Ntga32j3BhdNm8KMhHhN6ry3590+t3Wei+tLCNR6s2d7Gu4+bbG248DusK5MFm647RS+MWuXdO37i+3sbqwi+3KH0EfduUrXwXIKcYwRV5xhq85twXhSbBw+4G3eIF6Xpqjt9klUEk3vzwkwcbW2a7KtpqIZs01RseEKVLd7mXAwi+DKH9y25bh2++x6Npaz0FszRqQass4DutZpt5n1QMxTG6BEJD+oacNwe91tinwFWYIO26ryNiG8wdh3QermH9owUEufS7Dh+022kDUUUxUMhG3AenT+cG8lN5nid8ZNpYMyTuta+Ntq3OeqyIV7RRuBJr25t6timXAKLdhErv3W7Kul3nOpYEef2+6Mpt5g0mly....b3Sou8.....ddhktrzWLzHRubom0ho1PCSKl2C7Pw+1+wGsjBCvdasqa8wW+a9chc2QG8Z6szZa84v.jjFl9zh9kvtJem6ZWwkeE+z3i+I+bkTX.5MqccqO9BW1WK9A+neVzUWcURWSyMuoDCCPDQLyYL8Xm6ZWwW5q9Miq9ZtgTWv9oU+T1m2eKuwFSc2QOyYLsXiM2b7e7g+Dw0c82XlgAXusycty3G7C+IkzyV6sq85+Mwk8k+Fwi8XOQIGFfdypW8ZhOzG8SFO3C8vkT+W5gvcU+AhcricDe0uw2I9Ve6uelgAX+sjktr3C9QtznkVZMVRFGW.Se5oGrgt5pq3q8M+twO3J9o8ov.zal+C+HwG5i9IiFW4pRrOKbQK4f5dr2l0LanWe8BEJDe2K+GGe6u6OrOEFfdyBdxEFevOxmHVzhW5A03....vybDH....f8yxx3rSu7xKOl5TlzAz0Ol5FcrnEuz3q70+1wt10tNfleanoMF+pq95601V3hV7AzX1aRZAE2wN1Q7o+reg3V9S21A0hTuG27sbqwUes+5RpuYsf5ybFSO9RekuYLuGX9YNV6+w9vxxXrG9vGd7I+zegXcqa8YOQ6EEJVL91eueXIG9gexO+phe00z6+b9.wN24NiuvW5qG2ybu+L66Ry36.oUgLNX0RKsF+me3KMt2RXdlj1au83J9I+7XIY7yzzB1yt6ni3K9k+Fwbuu4c.OO1eMswliO1G+yDMtxU2i15tPgC5EneOF0nFYLxd4Hcnqt5J95equWbq62wRvAiVaaywk9o+ehmbgG59cO....bni.A....rW1912QhmO86wjmzDiJpnhdsshEK1iRu+dqiN6L9Jes+29ztKu2byIrX7GJ2gwyrWBDv129NhO8m6x5y6z8rbi+leeIsKiSq5KTQEUDqbUqIdzG6IJo6YC6WYuOq2Se+K+GGMuoMURicRV8pWSIsvoe+e3OI9c+9+3A08JIW0Ue8Q2EJjZeRKP.kUVYwzp+YliLfss8sGe1+muzA8myQDw7df4G21scGo1mjBDPmc0U749e9RwC+WdzC54w9qiN6Ltta3F6wqupUs5C3PBs+l4L542cKTnPbYeku4AUPKRR2c2cb0W6MbHebA...3fW+OROA....d1jkkQ49OhzO+zW25Verycl7h5kV4Ou7xKujCJPGczQroVZsGm+4c2c2wrl4L1mWasqacw1111Sbrl3DmPT0fGbOd8YL8ouO+4hEKFeou52L0.OrG8qrxh5pazw3F2XiVZssXMqYsoty3KTrX7s91e+3x97elXfCrxD6WZUegZpo53J+kWclys8X+K68YUYHRZQp6e+6eIuq+i3oNpDNti8nSr8Et3kD+o+7sm5XLwIL937dkmabzG0LiQW6nhnrxhVassX9O7iD2ze7OEaHkPsrgMzTr5UulXJSt2qxEMswlS84kIL9wECZfCL042Aht5pq3y+E+pwZV65xrukWd4Qc0M5XL0M5Xm6bmwpWyZisu8czi9s8czyWauM8D9t7e9VmSlA23XN5YEuxW94D0W+ThQNhQDc0UWQSar4XdOv7ie+Mcyodum2CL+nPgB6yQVQKs1VO9t6N1wNhUul0l33LrgNzXbiar830ewunWPOds6YtyKl+C+Ho9dZFMLs3U9JdYQCSeZwnF4HhBEJDM27lhG3gd332eS2Rr4srkDu1G+IdxXGs2du96R....3HGAB....XujUoROhzKW5Kc4MVx2qgTUUw4b1mULiYL8XlML8XnCcHw5W+Fha728GiaeN2YlW+5V256Qf.tj+gKtG86C+w9Tot.uev+8+0XL0M5Lue+ga9OGOwBVXp8Yriot3heau433N1idephBc0UWwSrfEFe8u02Mw4xFZZiwO6W7qh+w24eeu1dVUegMtwly78vdTS0UGiZj+ee1sssu8no9v0eVm4oGGyQOqXFML8XbicLwV211h4bm2SbcW+uI14N2YpW65V+FRs8e00j9Ns9U7xOm3e3s+VixJqr840qaz0Fm2q3kEm4K4Ti+6uvWMV7RRthKzRKslXf.VxRSur0u+Ao3Pke+e3Vxrj4Wd4kGu7y8riW2q4UEiX+JI9MtxUEeiu02K0EPeuM1wTWTUUU0iWuyN6Lt9e8uMwqqrxJKtj20aOdYm8Y0i41jl3DhIMwIDm9o9hiO0m8KFszZq85XTnPgXKaYqwvGdMO8qcRufYGmzKX16S+t4+zsE+fq3ml3b4bN6yJdKuo2PhsuGEKVLycv+a8hdiwE7pOud75ie7iKF+3GW7RN8SI9ze1uXpUPkVaoMAB....3YYDH....f8RoTJ7S6bGuTpv.QDQ8ScJw+w+e+yQs0Np840G+3GW7d+mdmwHG4viq855YYEeusoVZIy6Smc0Uz3JWUhsOjpppjBCv52PSwU9KulT6yq4Uedwa9M95iAz+d9O0r+8u+wIb7Ga749T+Ww+0k94hstss0qiwblycEW7a8M0qGICqa8aH0puv9aLiotXVyrgXZ0O0n9oNkntQWarkst0XcqeCwt10t2m9t7RLHGCopph+k22kDufS7D1mWu5gMr3Bd0mWLqYzPboe5+mTqzCaZSI+ysczd6wS7DOYhseRuvYGuq2waK04XUUUU7ZN+WQ7k+ZIGHfclRooOqPwzvzmVpsefn0VaKym2iHh2264cEmwoep8ZaSYxSJ97etKM9be9ubrfmbQYNVIErgEujkEadyIuS3eC+sWPOBCv9aricLwYdFmVbC23uKw9rycsqX3I15SIqeVjTENX+spUulTqZDm2q7b60v.r2F0HGY7xNmWZ7ytxeUh8Ym6J8vv....vgeBD....vdIqEfafCbfw36kRz8djUYmOhHdgufYG+6+auuX.CX.I1my+U9xybARG5PGZl2qUtxUk5hSWe8SIywHhHtta32FczQGI19K4zO03u+hdiYNNicriINqy5kD+1e2enWauiN6LdhErv3Dm8w2i1JkvZrGm+q5UDus2xEFkWd46yqWc0CKlzDmPOG6RHHGCe30De1O0GKFcs0lXel4LldL8oUernEujD6yPG5PRrsEtvEGEKVLw1eEm64j47Lhr2E+iZ+prD6sktzz+rnTWD59hewu55hcs6cmZed6+8ukDCCvdTQEUDusK5MFej+qOcl2yjB1yBVXxgInekUVbtmyKMywNhr+YvHG4HxbLVVFOyOsTBmzdKq.R7JN2ytjFmLetZjI+bE....GYHP.....+UszRqotyfiHhoU+T1my868V2c2crhFSd23GQDCdvCNd2+iuiTCCPDQTYk8bGxu+lv3GWl8YIKM8.JLs5ydwc27l2RbO268kX6iabiMdOWx6HywYONyWxokXf.hHRLP.kR0WnhJpHd2Wx6LNiS+TJ44SDYuvqQDw67s+VSML.O8bHie1k1O2lxjmT7o9DejDaeVyrgLu+QDwStvEmZ60kv6it6t6XEobrLTQEUzqAp3fwNZu83dm68mZedcWv4Gm+48xKowa5Sq93nl0Lx7yfjpzAm1I+hhi4nlUu1VEULf8oL+mlzt+0Tc0Qk8RUvXusycsqXMqccIOF0TcLxQjUMF3oL6S33R74pxKu7TC4zdKs2S8u+8uj+rA...fCeDH....f+pkTB6t+zNt.V0pWSzYmcl50+VeKWXTSMUm48okVaK01GXkUVRk5+rVD8RY2d+GukaM5pqtRr8W2q8760R7eRF6XqK01aayatWe8Ro5Kbwus2beNL.kxXeRuvYGmxK9jJowpkV58yM98XpSYxI11HG4HJocNdZ14t1Uba29ckX68u+8OwmAW0pWSzQJOCW+TmbOp5BGrt24NuT+dyPppp3Be8ut9zXN9wOtTW75xKu7XJSdhIdsie78oaWOzZqsE228MuDae+OpP5MqXEqL0pEQoDlm8XriotXriI8u2kksr0sF2y8L2Dau1QMxnrxJ6f5d....vgdBD....veUoTR5SqjYm00O7gWSlm836QZ6L3HhXJSYxIVoB1m4TVUHfRnjie+y6ASrsAO3AGSYxSLV8pWaliydqhALfDW34st0s0iWqTp9BSbBiONmR7y28Vqs1VzZa8dHD1i2veaosfzc0UWQSMswT6yTmZxAB3.0t10ti0s90GO1S7jwu42bSwV2VO+LbORagay5Y3RsD02WbG248jZ6m0Yc5YVQM1eYEVloL4I0mGyrrssu8XcqaCw8MuGLt4a4VSMjCkRf.xJfRS6Yfitg82NZu8XcqaCwCN+GNtoa5VR8XcnTdOA...vgeBD....veUorCzSpLiGQ16F+S9EeRk7NnckqZ0o1dornxs29Ni0s9MjX6kRIGeyadKoFNg1au83C9QtzLmK8E6tWVzwRo5K71+6eKQ4kPHI1eKa4MlZ6it1QESq9oTRi0ZV65it6t6DautQWaT0fGbeX18TJTnPr50r1Xsqa8Qass4nkVaKZqsMGs1ZaQSMswnkVSupDr2FeJGYAYcDSj1y+GH1cGcDKYoKK09btm8KsOOtEJTH01SKXOIoyt5JVwJVYzzF2Xz5e8y91ZqsnkVZK1vFZJ0PXr+lv3ytD8m0uOZ58gJDPR1SPa1PSM0imq1vFZJ17VR+HTYuk1yU....bji.A....DO0BHl0B5O7gWSpKfdVmC8m5I+hJ44yxyXtzPIrflKeEMdPWxwehmbgY1mC0pt5dVN6yZmqOwIL933Oti4.59szkm9Budx8getk4QzPeXgnexEt3XAKbQwhVzRhEs3kFs2d6k70llYLiomXaKMiEgtgoencWouhFWYpKd+LmQCGPKzbSar4TaOsi9i8nyt5JdrGeAwBW3hiEtnEGKcYqHyPoTplQCI+yf8XoKMip0vAPf.5tPg3we7EDO4hVRrnEs3XIKcYwt2cG84wo2LyTdtB...fibDH....fHh0s9MD6bm6J09j1hHt6N5HV0pWShsWYkUDyblMTxymrV.7RYAMOTTxwW9JVYl84PsgO7Z5wqk0Bsehm3Ib.e+x5y5YeBGaIOVYFHfR3maMtxUE+vezOOV3hVbIee6KlQB6x+ctqcEqcMIezOTc0CKFcs0dHctjUHZpuDqLC6ulZJ8.AzPFO6O+G9QhezO8WDaXCMc.c+yRVACYKacqQyaZSI1dsiZTwvF1P6S2yGeAOYbE+3qLVcJ+dpCFI8bE....GYIP.....Q1KJbDouXtM13pRcmNW+TmRIWN62SI6NICopphwNl5xbbxZwVKkRN9V25VyrOGpM7Z5YEBHq2KuvCh.AjU0XnurSry7y7TVH3su8cD+he00F25sNmnPJU1gzLtwM1niN5H1zlZoWaue8qewzSXwvW9xaL066AxNROKqNk.HDwScbMbfXiabiI11fFzfhwMtduj82TSaLthexUFy+gejCn6aDQLiFlVrpUu1XW6p2CXzDmv3x7XiHqmiJkv7rGszZawO4m8Kh4deOPIeM6u5m5Thl2zlhssss2qsWSMUG0d.9yJ....dlk.A....DYWpziHhomR4ROqquT1Y3+eiUF6Z5Rbw.WZFmG7kxB7t0sl74hdYkUVut38GrpqtQuO+4rp9BCZPC7.tbk2TSaL1912QhsOtwM1LW718nyN6LV4pVchs2u90uXpSYx8ZaEJTH9xesuU73OwSVR2qALfAD0Tc0QM0Lrn5pGVL4IMo3TOkWTL4IMw387O+AR75lzjlPTYkU1qsk4yv8gi6fRUZe1GwAVf.V65VerwlSd20Os5mZTVYk0qykO4m4yGapkVKo6y.qrxnlgWST8vdpeFLqY1PbpmxKJFv.FP7t9m9WS75l9zy9Y0rptGIEpi82t28tiO6+8kEqYsqqj5ekUVQTS0UGU+We1Z5Sq93zNkWbTyvqIdGuq2WhW2LZP0A....3YqDH....fH6EOOhzW.8Ckmc7Ycl12PIDtf117liVZM4E1rTK436XGIet0WasiJ9e+5WVliwAqrp9BSaZ0GkWd4GPi8RyrD+W56D6Uz3pht6t6DaeRSZBQkUTQu110+q+coFFf9UVYwIdhmPbVmwoGScpSNFcsiJ5WuTwIVyZWWpKncZmc8YEHfFdFnjvuicjdf.F0nFYedL+S25bRs8FR36hemu+OL0O6pnhJhS+zN43zNkWbLwINgXjiX38Z+ty69dS89OyYj8miYVg.Jwp0vO7GekoFFf92+9Gm7K9jhy3zOkXRSZhQsI7487+KOZzYmcl33j1yU....bjk.A....OuWmc1Yz3JWUp8IqcJdVKfWorH96QVUHfRIbAGpJ43CZPCLw1JV3.qr12Wkc0W3.uT1m4m08getkYnPRXrV3hWRbMW6Mj30MnAMv3i+Q+fItP16sGZ9+kTaOscxcVghoTNhI5q1dJANIhzCjRuoiN5Hti63tSsO812et4+zsEy6AlehWyXpazwm5S7QhQjPH.1aOz7S+3FXFkPEBHqu+V+TmRliw8L24E29btyDae3Cul3SeoezXL6WE4n2j0yUMnBA....7rVk1AXI...PN1JW0pScmcGQ5K57NZu8XcqeCI19vF1P6Smu1K+PP3BxdgtKsE2cnCcHI1VKszRp6Z3CUxZg16KgsnGicl6J99RPNNvN1Hty65diBESNbE+Ku2+oRddb22y8kZ6IsStaayaN0cG+XGScwPFRUkzbnuHqpTQZeup2L26+AhsmQUGn2ddYN2wckX+6WYkEehO1GrjBCvN20thG7gd3DaePCZPwDlv3RcL1XyMGacaIeTcLtwM1XvCdPYNWR68TDQ7Q+P+6kTX.5t6ti669dfDau7xKujqXA....b3mJD....77dKoDNt.Rqbou7k2XpWaeYWl2TSaL0EzbTiZjQ0UOrLGmrNCxK0JDvvGdxKBZghEi0r10EScJStjFqczd6w23a88hN5n2CQPEULf3C79eu83LtOqcKce4y28VgBEhUrhUlX6kWd4wjm7jJ4wKypDQBKpeiMl9bX1mvwVR2+UtpUmZktXnCcHwXGSc8ZaY9YbeHXD8EiebiMdzG8wSr8E7jKJdEm6YWRiUyMuo3m+Kt5T6yHFwvigO7Z1mWq6BEhUsp0j30LoIMwRNPO228+fQGczQhs2vzqOJqrxRcLVxROzbbArhTdtZTibDwTl7DKow4g+KOZpATXJSdhIdTX....vQdpP....vy6k0N6NhzWz4CkmC8YsP9k5heu7LlS0Uaskz3bLG0LSs8a3F+ckz3DQDW9O7mDy+gej3wehEzq+Wc0M5dDFfrp9BCe30TR6b6dyZW65ics6cmX6SYxSJFP+Ksbz2d66LV65VehsOvJqLlv364NCu6BEhUtxUm30MwINgX.CX.Yd+KVrXbE+3edp8IsPsj0ycocsGLF2XGSpsO26adwpVcxKV+drssu83y94+xwl27VRse812eV2ZWezQJU5h5qeJYd+i3odV8p9UWap8ogDpPC6srpZEidzY+c21ZaywV1xVSr85KwPEzQGcD+ze9UkZel9yPOa....vgFBD....77dYUd86e+6eL4T1MsYs368kcvdlk5+RXmZuoVZI196z+pI...H.jDQAQ01Suro2XJKB8d6nOpYEkWd4I19buuGHti65dxbb9w+reYbO268mX6UVYEwe6E7p6wqm1N3OhC7pCPDkPPN5C6J9kuhFSs85qeJQ+5WO+mf2byaJ0EidSaZSQwTNNA1i+3sbqwBdxEkZelwLRdwnypJYbv74bZF23ROP.EKVL9dW9OJ15VSdGp2QGcDegK6qGqKk.YrG81OSW8ZWapWyF23lxbbiHhexO6WFs11lSsOyrgrW77UjRUdHhHVYFsGQI7dp4lybLhHhe4Ue8w52PSo1mYlxyU....bjmiL....3401Q6sm4BIN0oj9NE+Pwh3uGYV14KgEls4laIy9789A+nnoMtwn1QMpniN6LZu81iwT2niS3322xS+.GXkwK6bdowMeK2Zhi025ae4w8OuGJdyW3qOF23GaT9ecguKVrXrrkuh3mckWcrfmbgoNeNuW44F0TS0830yp5MTpG8A8lkcHMHGYMO68wZDCulnekUVTHgE8e6aeGwM9auo308ZO+ds8N6ry3JupqM982zMm4bbFIrStKVrXpgZo+8u+wTlRoezIzWL4INwn7xKO5t6tSrOKdIKK9PezKMtj20aONpYMyXfC7ophDcWnPbe2+CFWy0dCoVcF1a812epcToeb.7jKbQw7e3GIdAm3Izqsu0sts3678uh3AenGN66eIra52zlR+6uO3C8vw28x+wwwebGczuxJK1Q66L10t1Ub9m2K+o6SVumZrwUE288dewK4zNkds81aemwkeE+z3tum4l47Momq....3YGDH....340V9xaLy9jzh4FQDaYKaM0EvqtQWaLzgLjRZtzcgBwJZL44S+Jqrn9oNkLGmRoDyuksr03m7y9k6yqcwus2bOBDPDQbQu4+tX9y+Qhl2Tx6T5G3Ame7.O37ixKu7Xz0NpXvCdPYVR92iZpo53Bd0updssrVz9RIfDIIqRydC8gvFbfNOqnhJhwO9wEqdMIuituxe40DKbQKINm+lyJlv3GaDkUVzXiqJVwJWU7fO3CEqdMqqjliSYx89h5u9MzTriczdJW2DK4iNg9ppqdXwq4U+Jie8M96SseapkVi+6uvWI5WYkEieBiO5t6tilZZioFjf8WYkUVLsdo7+OoIMgTCkQ2c2c7E+xei3LOiSONiS+ThwT2ni124NiFW4phUz3Ji64du+LOpBhHhQMxQDCYHUkY+Jku+dq21bha81lyS+mm3Dmv9DHfwT2niAMnAF6bm6Jww3a9s9dwCM+GINqy7ziwNl5hN5ni+56oUEy89lWlASHhHF3.GXTWciNy9A...vQNBD....77ZYsytiH8cJdl6x79P0AXsqccwt2cGI193mv3e5cGcZl7jlPl655dyLR37MePCbfw69RdGwm4+9xxbL5t6tyrDiu2po5piO4G+Cm3BklU0Wn2Vf2RQmc0UpGaBCZPCJF23FaIOdGLUIhi4XNpTCDPDQ7Py+uDOz7+Kk77Y+MzgNjXnCs2ClRVGW.oEHlCEdC++dswce2yM1TKslYeKTrXr5Uuldss92+9Gc2c2IdDKLgwO1XPCZP830qrhJhFZX5whV7RR791c2cG29bty31mycl4bLIk5yS0O0oj36wjr+e2srxJKN5iZVo9LSghEi69dlaIUE.Rx3y3He....fi754AXH...vyiTJABngTVL2LWH39vhodn5bbe.CX.wDm3DJ46aDO0hoN0oN4Da+3OtiINmy9r5SiYVpt5gEW5G+CEiOgEJMqpuvXGScQUUk8Ntt2rpUslnqt5Jw1mV8SMJqrxJowJq4YMUWcT6nFYhs+luvWeL5QWaIcuRx.G3.i9mxt3eXCcnI1VVeGnTJy8GLprxJiK9s8lOnGm2za70mXX.hH8fM7dtj2QTQEUbPc+S6y3HhXXCaXkz3bfDxkYzPO+Yz65c91hppZv84wZuk06oglQ6....bjm.A....OuVVKneUUM3XriotDa+PYEBHyxNeeXrt325aJpnDJ836wTmxjyrrv+Nu3KJNmy9kVxiYZpaz0FW5+0GJlv3GWh84P4ms6urVD7oO8R+3BHqwZZYbzCL3AOn38+O+tixKu7R9dt2polpiO8k9QhA2K6988X.orX2YdzIbP74bo5TN4WT71+6eKGvKJ+49x9ahImQHXRKPMie7iKdGW7Ec.cui3o1U+ejOzGH09TQEk12Geom4o2mCgQuEHfQMxQFu6+w2QeZb1aiabiM9jehObp84fMDE....7LOAB....ddqVassn0VaK09j0NEOsECte8qewTmRx65982xxHbB8kEl8XOliJ9P+m+akzYVdDQLiYj8BPVQEUDu6+w2d7Ad+uuXhSH4ExOMML8oEef2+6K95e0uPLwIL9T66gxpuv9KyvWzGF6kdHHHGyngoEW1+ymNl8Ibbk78sekUVbVm4KI97etOYlOms4Mu4d806rqthUz3pR75FRUUkZfXNT57OuWd7U9he13nOpYUxWSUUM3389teWwk7ObwwhWxxRsuY8ygW1YeVwG+i8eFSdRSrju+CrxJi+eWvqN9jehObL7ZpN09t4MukRZLGzfFT7w9H+6k7mCCdvCNwprwobxun3y7o9X8oe2w.Fv.hy+U8xiO2m5+JFcsiJ09lzyU....7rGkULs5oG...PNVyMuo3Ntq6M09L8oWeL6i+X6015niNheyu6Ol30NjgTU7Je4mSIOe90+leezUWc2qsUVYQ75dsmeedWj2UWcEy+u7nwbuuGH13FaN1xV1Rz9N2YLf92+X.CX.QUUUULrgMz3Bdsup3XO5ipjG2hEKFOxi8Dwi+DOYr90ugX8anonoMzTzQmc9z8YfUVYLhQNhXjibDwnqs13kdVmdLqYzPIeOl2C7PwpV8ZSr8y3zOknt5FcIOd6sa+Nt6nkTNy5eEm6YGCcnCojFq6edOTr50j777TO4SJFeJUBg82e4Qdr31lycFqe8MEqeCaH18t63oaqekUVL8oWebbG2wFm0K4TiwN1+uyv8e6McyQG6d2INtutK3UGk2u8ceArssu83lukaKwqYjib3weyYcFk7b+PghEKF24cO23IW3hh0rl0EqcsqK19N1wS2d4kWdLyYzPbxu3WXb5m1IGU+WKE+227dvXMqYc85XVVYQbAulWUpGqB6QgBEha+Nt63AenGNV252PzTSaL5t6+uuWVw.FPLqYMi3DN9iMNqy7ze56e6suy3Oby+oDG2gMrgEm647RKkOBdZqZ0qIty65diks7FisrksDaYqaMJqrxhJFPEw.GXkwPG5PiYMqFh27E95ScbJVrXb2268G228Ou+52W239bjYTd4kGyZlM7TumNiSOFwHFdDwS86Otwe6Mk33NvANv37OuWde58D....GdIP.....bHQwhEiM0RqwN24NiQNhgGUUUoUcBHYEKVLZs01hss8sGCanCMpt5gc.ezB7bYadyaI17V1ZTS0CKF1vFZzu9c3qfG1cgBQyMuonyN5LFV0CMF5PFxg06+yDJTnPz7lZI10t1UT8vFVLzgMzdDVD....xGDH..........fbHw+F.........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbn9ejdB.....DwUcMW897meS+cW3QnYB....PdgJD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PkUrXwhGomD...O2zUcMW8Q5o....4Ruo+tK7H8T...HGPEB..........HGRf...........xgDH..........fbn9ejdB...je3bNE..fCLW00b0GomB...4PpP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNT+Obci5pPwXwar6XgM0crp15NZZaEi12cwX2cULJd3ZR..PLfxKKFz.hXjU0uXr0zuXFipewQO1ADUOvxNRO0.HhHhhEKFs83+knk6+ths73Obz9pVdzYaaJ5dW6HhB9WO..OKP+JKJefUECX3iJF7jpOp9XOwXjm7YDC+XmcTVY96UCbjUGcULdhMzc7jM0Url1JDMu8BQ6cFQWc6uKM.vQRU1+xhgTYYQcCsrXpip73nqq7XZip7mw+2P7Ldf.ZYGcG+oE0YLuF6J1QG9Kb..bjVmcWL5r6H15t5NVQKcG26xhnrx1cLqQWdbVMTQL6w+L+eAD.5M6dysEq5W8ii08au5X2MutizSG.fjUnXzc6aO5t8sG6ZsMFsN2aKVwk+kiJqcbw3dMWXLo23aOprlgejdVB77LMu8ti+3B6LdvF6J1UW9+EO.vy1r6tdpMKeK6HhErgtie+iGwvGb+hyXZ8ON6FpHFTEOy7+W9mwBDvt5rXbCO1ti6ZocFcW3Yp6B..GJTrXDOYScGOYS6LFa08KtvSrx3nGygsBIDvyy0cG6NV9O96Dq7J+NQgcsqizSG.fCX6t40Eq3J9ZwJ+Ee2XxWz6Ip+s+d9+m8tuiOppR+ii+cRkPBsPulDB0HcDCXAUrfBpKq8JVPwxpq5phKXCW6UrsJprrpnHh.BpfJHEYQPP58RJTBIgDHARHjdle+A+PIgYl6YlLSlT9790K9iLy4dtmjbCy4dtOmmGEXHg5uGV.nVtBJ1tl8lJT+xtJlDpE..PMLYerxz2tohzB1dw5x6YH576TvJf.7tAFfOYk92YFknIshBzQxmYe...TSSZGoL81KIeEezAqar+gp5ELYK..36bjsuYsgwdepfT2i+dn...30TVAEnj+OSPo8CyR89kde0nt0C+8PB.0Rk7gJUezxKPYkG6JO..fZxxuX6Z5qsPsl8VhtyyLLEY88dqKuWOf.VxtJRe0ZKzgQhX8Cwl5S6BRcqEAp10j.Tj0O.EZPRAPZIF..nJSgkXW4VXYJ8brqDOXoZi6uDkxgO0ENXk6tXk7gJUOvfqmZQCBzOLRAPscoL2Yos8hiQ1Ko3S48BHjPUSGzPTjwOX0nt2CU+11AEbDMP1Bj++H..3+YuzRUwGMWcr8uGcjssEk0JWpNzJVjJqnBKW6JH08nUMpQntOtWUsa3WoeZzBfZqVWJknIs77UINHV.ZX8ro90gfT2aYPpsMxlZT8BPgDDqCO..f+hc61UAkHcn7JS6IqR0VRuTsw8WpJtzx+P0S7fkpW7mxS2+4FlhNRuy5fYytc6dssw+OssB0r1PQmxq2zvCPC+zBVwGUvJn.YRG...U2ruCWp9wsVjVydKQUbhAQDpM8fmeXpCMlGBGNUS6qmd495q+ZtV+zHA0zjzTmjR3setS40CpgMQQcK2ih5ptYET3Q3GFY...dlRx6nZOy7y0dlxDUI4j8o79c9gdZEyMLJ+vHC0Tvbqg6XcoTh9veMeUwU2uogGfthdFhNiNDjWOcCC...uq7K1tVztJRyeqEqBJo7endnAYSO74GlhooU90kOfJcO7+a4IWjCCFfKp6gnwOr5qypigPv....TMU6abf5tNyvzieQ0WstQke5AGsP65sWb9JibK0OM5.PsM6cNS2gACPqtrqSmyrVphcj2CAC...pwInviPwNx6QmyrVpZ0kccmx6uq25eo8Nmo6fiD.v8j7gJUSZ4mZv.b1wFrF+vpuFXzd+ZOL...79BKXaZ3wEp9WCOb0kVT9G7egkXWu6ujuNXdU90k2qDP.68vkpO+2KeJQK3.so66bBSWcuCUgPf....TiPLMMPMtKt95Lhp7UUniVnc8tKs.UPwdsDKD.piJ6MuNsiWcrk60rETv5zdl2V85odUEbCZneZjA..3cDbCZn50S8p5zdl2V1BJ3x8d63UGqxdyqyOMx.PsAETrc8QKufxUl.rYS5Z6Wn5VFP8Xs3A..pApQgYSOz4ElNutT96eHuhrqItrBTIkU4VW9Jc.ATRY10+Y4EnROoIfDT.ROv4VO061FjyOP...TsTHAZSiZPgogz0PJ2qmQtkootlBcxQA.XsRJHesww82j8RJ4OdMaAGh5ya7IpsCaD9wQF..f2WaG1HTediOobAEf8RJQabb+MURA46GGY.nlrYuoBUV4UV4dsqougpKnKg3ji....0DDX.1zMzu5oKMtx+Y56K6xzOs8SMK86NpzADvB2YQJ8bJ+DPFY70ScsEDL....0jcc8MzSISArxcWr1Z5k3ji..v0R3idKU3A1e4dsS6oeS07Ad19oQD..fuUyG3YqS6YlP4dsBOv9UBeza4mFQ.nlrLOZo5W1Uwk60N6XClfA...nVjQzqPUuaa4Ke.+vVJVGo.OOKAToBHfBJ1t9gsT9IfLvXBVwGUvN4H...PMI2xYTO05FU9oKL80UnrWwBUH.fEJHyLTJSexk60Zye8VTat3K2OMh...pZzlK9xUa9q2R4dsTl9jUAYlgeZDAfZp9wsWrN4LFbSCO.cc8KT+2.B...9D25YDlBOz+rL.Ubo107qDYIfJU.ArrjJV4eR0R3vB1ltl9vDP...psHj.soa8LpmN4JPXZGoLs98WpeaLAfZlR9K9XUVw+4MtDRSag51CLV+3HB..npS2dfwpPZZK9iutrhKRI+EerebDAfZZJpD6Z06t7YruqnmgnPBzlSNB...TSU3gZSW1oU9L.zJRpXURYd1F0qREP.KOoxmc.FRWCVQDJS.A..n1jXZZfp+cn7kNfeYWUtZVD.pawdokpz+gYTtWK5a6ATPgGteZDA..T0JnvCWQeq2e4dsz+gYH6kRf1B.yrkzKUETxe9P.ZX8roynCT1dA..ps5bhMXU+P9ym6ddEYWaKcO69G73.BH8bJU6+Hk8mcjMoyqSTqh...pM5Rhq7eF+1ynTcj7orA..ybn0tRU7gy5O95.qe3pcWw03GGQ...U8Z2e4ZUf0+OCFthObV5Pqck9wQD.pIYaGn7YGf90gfT.AvlyC..n1pfCzl5WEB9usdfp3.BXaU3D1kVDnZX8XBH...0F09FGnZWi+yoMX2tzVSuXWbD..+oC9aKsbecyN6gpfpWX9oQC..f+QP0KL0ry9hK2qUwOiD.vYRI6xJ2W28VR1A...n1t3pvm2uurphCHfDOX4OgcuUA5ocE...pAnWss7S9XmGrLmzR.fxK2cr4x80McfmieZj...3e0zAN3x80U7yHA.blLOZ4uG711H1bd...0109lT9Ou+.45YqIuGGP.U7DFSjDP....0lEayJ+m0m1gIf..fYN1dRpbecC6R28SiD...+qJ9YfGauI4jVB.TdGqBIouFUOOdo8A..PMDU7y6q37ALkGOqgrxq70M3Vz.BH...fZyZUCKezHdn7Hf..fYJI2rK2WGVqameZj...3eUwOCrjbx1IsD.....00EZPkeM4KoT6NoktlGGP.ETR4+5vCwS6I...TSPCBs7SaHeOLZDAPcOkUbQk6qCHjP8SiD...+qfpe3k6qKsfi4mFI.nllJtP9d1iC....0E4QADPAEaubQfPHAYSgDD0rH..fZypXzHVrGFMh.ntGaAT9rIl8RKwIsD..n1MaATgkhioTC.....eLOJf.p35+GHwB...............P0JdVICnBADfMBH............eiJrF71ICi....C4YAD......fopXDDypWB........Tkf.B...............nVHOJf.X+7...............T8FYH......3aUgJF.QXL........PUCBH...............fZg7JkLfJtge...............f+EYH......3iQMC.........vevyBH.RQ............UIXI3A..fmhLD...............PsPDP................0B4QAD.UL......XJa1J+cLX2dEuiB.........3KPFB...............nVHBH...............fZgnjA......eqJTx.DkL.........fpDjg................pExyBH.RQ............UIp3RvSN2B...lhLD......7wnjA.........3OP.A...............TKjGEP.Tw................pdiLD......7srU9PH1NkL.........fpDDP................0B4UJY................n5ExP......vmxFkL..........+BOKf.pv52Ug02C...........dKUbM3IFaA..fgHCA...............TKDAD...............PsPdT.AP1HB.....Fqh0XL6bGE.........UEHCA...............TKDAD...............PsPdXICn7o3SaxlSZI.....PEueAJY..........UEHCA...............TKjmEP.1qvN5gDD...........fOA4bK.7dUmnK...B.IQTPTA.3oHCA......eqSY0KY4KA........pJP.A...............TKjGEP.Ub+7PEC...............n5ExP......vGqBgPLkL.........fpDDP................0B4UBH.JY................UuPFB......9T1nhA.........3W3QADvor.djh............pRPL1B...SQFB...............nVHBH...............fZg7JAD.UL......3T1pvcLbJ0fL.........3KPFB...............nVHBH...............fZg7n.BnhI3SJY......vopXIC3TtiB.........3KPFB...............nVHOKf.HEA...........TkfjtE...7Tjg......fOFqdI........f+.AD...............PsPdT.APEC...............n5MxP......vmxVEJ3o1KiRF.........PUABH...............fZg7JkL................T8BYH......3aUgRF.gXL........PUCOKf.pv52cJquG...........7IHDaA..foHCA...............TKDAD...............PsPdT.AP5HB....np0ON+eRIjXhp3hK1eOTbeUnFiY2N2QA........PUAxP......0.b3ibDs50tFMmu+6zuulUqryNa+8PB...viUZokpcu28nedwKxeOT.....pUKH+8.......lqjRJQIlTRJwjRRQFYjpScLV0g12dETPL0d...T8Wt4lqRLojTR6NYUTQE4uGN.....054QqZXESvm1bXq.....fuTVYkkVUVYo0sg0qniJJ0oNFqZTiZj+dX4.U3NFnjA...TmRYkUl1epopDRLAcfLxveOb.....pSgsQD....PMbEWbwZWIjf1UBInl2rloX6Xrp8sqcJv.CzeOz...PcX4kWdJwjSRIkbxpfBJveOb.....pSxyBH.RQ......UKk4AOnx7fGTqc8qScL5XTrcripAMnA96gE...pinL6kozRKckPRIpzRKM+8vAnViJtD7jys...foHCA.....TKTQEUj19N2g19N2gZYKZg5Trwp11l1p.BHfp9AiMJY....01ke94e7rAPRIoike996gC.....9+Q.Af5rRN4j0fG7fsrcidziVO0S8TUAiHG6m+4eV29se6V1twMtwo68du2pfQD...po4.YjgNPFYnPCMTEaLcTcricTQDd396gErvG9gend9m+4srcSdxSVWzEcQUAiH..fxytc65.Yb.kPhIp8mZpxNA8G..bgINwIpW3EdAKa2Lm4L0YbFmQUvHxwdrG6wzzl1zrrc+xu7KpicriUAiHTSz12910RVxRzZVyZTlYloNzgNjNzgNjJrvBUiabiUjQFoZcqasFv.FfhO93Ue5SeTHgDh+dXiZo7n.BfJF.pMXUqZUJkTRwx1EarwVELZbtktzkZz3r6cu6UAiFTa0UcUWkVzhVjSe+O9i+Xc0W8UWENh..fuPgEVn1512l1512lZcqZk5TrwpV25Vq.r4GxZ.vRKbgKzn4A1yd1ypfQC..vepfBKPIm7tUhIknNZd44uGN..nFhe4W9EKuGm.BH.EWbwUEMhbre5m9IKGmMtwMVwDSLUQiHTSwN24N0q+5ut9tu66T5omtQGyTlxTjjTjQFoF4HGoF8nGMOuG30QFB.0YspUsJiZm+LRDkjVwJVgksIv.CTCX.CnJXzT2zgNzgTlYloksK5niV0qd0qJXD4cs3EuXMqYMKW1ld26dWEMZ..PUkzROckV5oqvBKLEaG6n5XLwn5GV88ImKaUHDhsSEO0HlLOvniNZ0pV0ppfQSUiRKsTsqcsKKaWiZTiTqacqqBFQ.k2N24NUYkUlKaSXgElhJpnphFQ.UsxHyLUBIlnRY+oX4eK...TQlrl7cu6cWQDQDUAiFGKmbxQaYKawx1MvANPYqhkGO30r6cuaUPAE3x1DTPAoN0oNUEMhbsMtwMpm64dNMqYMKOdNRYkUV5sdq2Ru0a8VZjibjZBSXBJxHizKORQcUDP.nNqe+2+cKaSjQFoe8CTJqrxLZRR8pW8RgSZ+0mYricr5i+3O1x1cfCbfZbADPIkThdzG8QcYaZRSZR0lIVA..uu7yOes4srEskstU0lV2Z0oX6jZUKaIKrgeVJojhQYGfAMnAUELZp5roMsI0291WKa2y7LOiF+3Guue.AbRxImbT25V2rLkneS2zMoO+y+7pnQEfuWQEUj18d1sRHwDUN4lq+d3..fZnN3AOnRJojrrc96Mn2pV0pL5A5Va6dwpt4LNiyvxMo2fFzfzxW9xqhFQN267NuidrG6wTQEUjWqO+rO6yz7m+70m9oept3K9h8Z8Kp6xyJY.U3deYoBQMMkVZoZsqcsV1N+8tteKaYKJmbxwx1wjO7sV8pWskso8su8pEsnEUAiFuqG+webK+agALfAvCEB.nN.61sq8mZpZ+olpBO7vOdVCH5XpwEra0VXR1APp127.MYdWRRm9oe593QBvoZsqcsFUez45STawgNzgTBIkn1291mJozR82CG..TC2ZVyZLpc96.Bnt58hUcxd26dMJi85um2cN4jit8a+1sL665oRO8z0UbEWg91u8aIn.PkFYH.TmzV25VUdFTi6poL4iANvA5iGI0cUPAEnMu4MaY672S9vSLkoLE8lu4aZY672+c...p5kWd4oMtoMoMs4Mq12t1oX6XrpkUl.eqhAVlAOPs55pqNOPSxhWR0Lm6Ep4iqOQcAEWbwZO6cuJgjRTG9vG1eOb..PsH0lJguADP.98wYsY0Dl2cQEUj9K+k+hVxRVhO87TXgEpQLhQnEtvERPnfJEuS.AvFGE0vX5Gn3uyP.+1u8aF0N9f.emMrgMnhKtXKaWMoE8qjRJQicriUu9q+5F0dlbK.PcW1saW6ce6S6ce6SMHhHTmhMVEczQqPCIT+8PqVOSlGXXgEl5Se5SUvnopiIYHf1111pV0pVUELZ.JOSt9Lf.BvnxdAP0MYe3rUBIln1yd2qJojR72CG.3HUbM3IFaQMLlrl70qd0S8rm8rJXz3X1saWqbkqzx108t2c0nF0npfQTcSU2ybb1saW2wcbG97fA3DxO+70nF0nzF1vFTvAGbUx4D09PFB.0IYZ.A3uePnlDMhMu4Mm56tOT08Ie3tRKszz0ccWm9e+u+mwGi+9uC..P0C4dzip0sgMnMroMoNz91qX6Xrp4MqY96gUsREVXgFUdq5e+6espECnvBKTaZSaxx1USYdWn1GSt2ft28tqvCO7pfQCPkWIkVh1691mRHwDUVYkk+d3..fZ4LYM46Se5ie8db14N2oQelHaPOeKSl2cDQDg5V25VUvn4T8xu7Kqu3K9hpzy41111za+1usdzG8QqROun1CBH.TmjIomnNzgNnV1xVVELZbtkrjkXYMpr1zh.WcTsk.B3PG5PZlybl5oe5mVG3.Gv3iKpnhxu+2A..n5kxJqLs68rGs68rG0nF1P0oXiUQEUTJjfCweOzp0HnfBR6d261x1EVXg46GLUg13F2XstLyDp8HqrxRIkTRV1Nt9D0DbjbNhRHwjzt2ytM5+2E..nxZe6aeJ8zS2x14u2XRwDSLJszRyx1EQDQTELZp6ZMqYMV1l9129p.BHfpfQS4kZpopm+4ed25XpW8pm5e+6uF3.GnBO7vURIkjRHgDzpV0pTYkUlw8yK+xurdnG5gTPAwi1EtOO5plJ93IohAfZRJnfBLZmG4um7gj3AwVMfIADPLwDihLxHqBFMtmbxIGM6YOaMsoMM8y+7O6QKzS0g+N.UdS6qmtWquN+.qXe605ZTKg275MT82QxIGsl0sNsgMtQ0gNzA0oNFqi+LQRuotk.CLv5joD+ZKAhIpcxjEkThqOQ0WkVVoJkTRQIjXhJyCdP+8vA..0wTSIi8FRHgTm7dwpNIwDSTYmc1V1N+07texm7I0wN1wLpsQEUTZxSdx5bNmywgarycsqcoW5kdIMkoLEiJYSG5PGRKcoKUCYHCwsG2.DFInNm0u90azCF0eO4C3+kWd4ossssYY6pNrneKbgKTe228cZe6aeZu6cuZe6aeJiLxvxLLgU3uC..fIJozRURImrRJ4jUSZbiOdVCnCQQTqC2BAD.pNiqOQMU4dzbUhIkjRJ4jUQEUj+d33TDToNF+bAkSPCyeOB.7XljwdkXsHQ064cu0stU8oe5mZTaunK5hzW9keoZZSapSaSm6bm0jm7j0EbAWft4a9lMpem0rlEAD.7HrBcnNGSiFwALfA3iGIn5t0u90qRKsTKaW0gqUd8W+00O9i+nWueYR3..vck8gOr980rFstMrAEcTQoN0wX82CITCgIK7SzQGsZVyZVUvnAn7L45yfBJH0m9zmpfQCfqUVYko8mZpJwjRTo6FkLN...eESVS9lzjlnN0oNUELZP0YlFP.9i0j+K9huvnT7+0dsWq9xu7KMtjFbS2zMoUtxUp28ceWKa6u8a+lQ8IPEQIC.9M4jSNJszR6O9WIkThZRSZhZRSZhZQKZg5Tm5jrYy6e0kIS9Hf.BvoQXVpolpRIkTTFYjgNzgNjZTiZjZUqZkZSaZi5PG5f2d3VknnhJRolZpZ+6e+Z+6e+pfBJPQFYjpIMoIp4Mu4pScpS9k5wijjc61UlYloRO8zUZoklNvANfZRSZhhN5nUTQEkZXCanO6bWcNZDqHSixV2QfAFn5e+6uWueA.PcCkTRIJgDSTIjXhJngdsJneaIJrD2nrUZoRUxLXCpZbricLs+8uekVZooTSMUETPAoXhIF0wN1Q0jlzDu54J+7yWaYKawx14Km20I998D+ylMa+w8mz5V2ZEUTQ4yN2UFEUTQZu6cuZ26d2Z+6e+p90u9JxHiTcsqcUsqcsys6uhKt3+3dzRM0T0QNxQTiabiUSZRS9i6QnEsnEJjPBwG7ciqUPAEnzRKs+3dCN1wNl5PG5fhJpnT6ZW6TfAFn0chGxj6MnG8nGpd0qd9rwPVYk0e76lzSOcEP.A7GWiVc+9QyHiLzt28t0t28tUQEUjZRSZhZVyZlhO9382CsZUx6X48GYCfBJn.+8vA..Uybh0Y8DymHiLxPgDRH+w7IhJpn7Ikv1xJqLilK0oe5mtCed.kUVYJgDRPG3.GPYjQFJu7xSsnEsPspUsRQEUTd86MopRN4jyebuGokVZJ3fC9O9cQ6ZW6TaZSa7aishJpHcfCbf+3Zkibjin1111pniNZ0912de58BXx0JMpQMxuD7Hyblyzx1Dd3gqILgI31OOkm4YdFiBHfzSOc2peANAxP.nJSgEVnVvBVfl4Lmo91u8aUVYkkKaeiZTizYbFmgNyy7L0sbK2hhMVuytKyjGbZ26d2UDQDwe70Imbx5S9jOQyZVyRadya1oGWW5RWz0dsWqF4HGo5bm6bkZb9Nuy6X4tSOlXhQiXDivi5+DRHAM0oNU8ke4Wpcric3xTKeCaXCU7wGuNyy7L0Mey2rO+CaO3AOn9lu4azLlwLzRVxRbYZM7DAGPLwDitjK4RzUe0WsaOIvO7C+PGV2e95u1rhi9RW5R05W+5OkWOjPBQ+s+1eysFKdhcsqcY4eO4IhKt3T3gGtWueA.PcOkzh1nRthaTEj+HTvaZUJ27yW7ILN1d26dMZQFNyy7Lc4CRaVyZVZO6YOtrO5e+6uF7fGb4dsLyLSMqYMKM8oOc8K+xu3z4i1nF0H06d2a8LOyy3Voqve629MshUrhS40SM0TMJyLcjibDMgILAG9dWxkbIp6cu6FOVjNdvBO0oNU80e8Wq8u+86x11hVzBMnAMHM3AOXcK2xsnl27l6VmKGYIKYIZcqactrMcu6cWWxkbIk60N5QOpl5Tmp9nO5iz5V25b3tTYhSbh5tu661xwvgNzgzm+4et9xu7KURIkjN3AOnkkcpvBKLctm64pgNzgpgNzg51+b2T1saWqZUqRyXFyPyblyTImbxNssAETP+whT1idzCc8W+0qy5rNK2JHy2111lCy5VmHnKrhMa1b50mCbfCTCZPCx3whzwWj3u+6+dMiYLC8S+zOYYsJsksrkZfCbfZvCdv5lu4aVsnEsvsNeNxgO7g0+8+9esrc268dumRvPrhUrBMwINQMqYMKczidzS4XhKt3LJPffqY2tckV5ooDRLQkZZo4uGN..nZlLyLyxsNqVUJciJpnT7wGuFxPFhtwa7FUCZPCpzigctycpbxIGKaWEyToKYIKQScpSUyYNyQYjQFN7XBHf.z4dtmqttq65pzi2jSNYM6YOaKa2EdgWn5YO6oa2+kUVYZoKcoZpScpZVyZV5PG5Ptr8su8sWm4Ydl57NuyS2zMcSdkeW3JaYKaQyXFyPyXFyPaYKawo2SP.ADfZcqashN5nUW6ZW0Ue0WstnK5hbqRFXpolp9pu5qb36sl0rFKO9F0nFo25sdKG9dN59m7F17l2r1wN1gksaLiYLdTvbzzl1T05V2ZklEym6DkIXewloE0tYytGTfo2a1kpW3m9yaDssMN.8zWBKoGbrzSOc8TO0SooO8oazG76H1rYSWzEcQ5ge3GtR8ele3CeXEYjQZ4Bbc629sqIO4IqhKtX85u9qqm64dNke94a74IjPBQiabiSicri0ihVtjSNY0wN1QKa2C9fOnS+fOmYNyYN5EewWzi2Q41rYSW5kdo5QdjGwqWqZV8pWsdhm3IzBW3BMZAgcjPBID8W+q+U8RuzKoXhIFKaeFYjgOIxWkN9jXW4JWoOouOYe9m+45Vtkawq2uiZTiRSZRSxq2unpG0cR.TcTKZdyUrcLV0t10VEX.9tc0aMMu268d5AdfGvx1M8oOccMWy03z2OpnhxxGf4G+werty67NkjTd4kmdpm5oz69tuqJojRbqw7vF1vzq8ZulhKt3rrsWy0bMZFyXFtU+apUu5UaT1MprxJSevG7A5se62V6ZW6xiNWgFZn55u9qWO5i9npG8nGdTeHIMzgNTM+4OeW1lW3EdAMtwMNIc7Lov3F23zjm7js7dqV6ZWq5ae6qCeuxJqLsfEr.M4IOYM6YO6JccEuCcnC59u+6WOzC8PJ3fCtR0WRGOKE7lu4ap2+8eeidP7NSTQEkdrG6wz8bO2iQYOfwN1wpW9keYO974JSaZSSW20ccF01ssssom3IdBMu4MOUXgE5QmuPBIDckW4UpG8QezJUV+Ztyct5xtrKyksoksrkkamJM24NW8DOwSnMrgM3xi61tsaynfMn1n4Ge4y3HW7Jcc.b4H4me9JojSVIlbRVFrH.n1geOngoiV3etllu1HhPMrd7.gfi8q+5upm9oeZWFjuVIhHhP23MdiZLiYLUpMq2TlxTzHG4HsrcyYNyQWwUbEJ0TSUO3C9ft88Mzt10NMwINQM7gObOZbNgILA8O9G+CKa2hW7h04cdmmw8agEVnd0W8U0G8QejRIkT7nwVCZPCzsdq2pdjG4QTzQGsG0GNhc610+8+9e0q+5ut1111lG2OMu4MW+s+1eSiYLiQgEVXV19O9i+XM5QOZO974Ju3K9hZricrd898sdq2RO7C+vtrMMoIMQojRJp90u9dz43hu3KVKXAKvx1kSN43yCPDT8xcOsbK2W+gWu6+6e+SN.G0ITbwEq23MdC00t1UMoIMIONX.jN9GLM+4OecoW5kpa9luYkc1Y6Q8yZW6ZsLX.jN9CxMyLyTCZPCRiabiysBF.oiuCRF+3GuNqy5rzQNxQb6woIk0fSLNMUpolptpq5pzHFwHpToWd61sq4Mu4oK3Bt.cO2y83UV3gryNace228o3iOdM+4OeOdRpRG+m8e0W8UJt3hSOyy7LV1WKe4K2iOWV4rO6y1m02mLeUPGP56D..9RYjYlZEq72z298eu1vF2nC28n0EY57zb07.yHiLL5gndhcq77l27TbwEmlvDlfaGL.m33iO93sLiDHc7ElzWHhHhvnZ29F23F0fFzfz8e+2uGGL.RGeQ89zO8SU+5W+zq8ZulQ2igiXR5v7LOyyTRGO6Qb1m8Yq25sdKKu2pvBKLmtqkV+5WuhKt3zkbIWhl9zmdkNX.NwXaLiYLp28t2ZqacqUp9ZQKZQpW8pW5e9O+mUpfAPRZO6YO59u+6W8qe8yn+1xWc8ojY2aPN4jidjG4QTu6cu027MeiGGL.RG+9hl1zllhO9303F2373eO6NWiZ2tc8u9W+Kc4W9kaYv.H4d2OKNN61sqzOvAzxV9upucteu1zV1LAC...JmzSOcMxQNRcNmy4nEsnEUoVm0idzipO5i9H0qd0K8Nuy63wy40cVq6Eu3Eq3hKNOJHhSIkTzkcYWldrG6wb6iUpxWpgcjktzkpd26dqm9oeZONX.jjxM2b068dum5Uu5k9zO8S8394jsgMrAc1m8YqQMpQUoBF.oimIJF+3Gu5d26tl6bmqks2eOuaOgIYGf92+96wACfzwy7AVIrvBifA.dDBH.3Sr8suc06d2a8nO5iVoBD.G4K9huP8nG8Pae6a2sOVSWf0V0pVoy9rOaiROMtxpW8p0kdoWpxKu7bqiyzIIY5CrcpScpJt3hSyZVyxsFGV4C+vOT8u+8W6ae6yi6i4O+4qt10tpO3C9.GlpS8TETPA5e8u9W55ttqykK90xV1x7ZmyJ5rNqyxm02mLeU.AvBzA.fpBEVXgZa6X656+g4okrzeQor+T7pyInlFSluZKaYKcY8r2zZtX26d20Dm3D0kcYWVk9AudzidTcW20c4x1jTRIYY5OzSEe7wa4N.+Ye1mU8u+8uREbrUTwEWrFyXFiF5PGpaGDwIkTRVV1mBJnfz.Fv.zxV1xzoe5mtV6ZWqQ8ce6aecXJ67+9e+uZPCZPFsXVdhssssogLjg3QKnXwEWrt8a+10EbAWfGcudtxF23F04cdmmCKG.mPQEUjw2Gl6JpnhRssss0ksYgKbgpqcsq5Mey2zxT4q6nzRKUuzK8RJ93i2xzRqiXxOSNyy7L0wN1wzUdkWodlm4YL9gEv8aXtS7Yky8G+g++Oqb+d7CkA..0d84e9mqtzktnoLko3U+bhicrioG7AePMrgMLOJfEMY92sqcsSqZUqRCaXCyi1fcmrW+0ec8zO8S61GmIy6It3hqbkZXmojRJQ268du57NuyyqN26byMWca21soa8Vu0J08M+TO0So92+9602rb6YO6QWwUbE5i+3O1ksyWsl7gDRHZ.CX.9j91jeO5rLzloRLwDsrMsu8suRcNPcWdT.ATwOJgDSDNYqd0qVmy4bNU5nJyURM0T0EcQWjauvklt.OidziV6bm6zSFZmhUrhUnG7AeP25XLYRRQFYjFkpl93O9i0Mey2bkdhTNy129183IpM6YOac4W9kqLyLSevH63l4Lmotxq7Jc5jf8kQiXUQ.ATRIkn7xKO0oN0Ii9WyZVyLpeqe8qekJ82B..3IN9tdb4GeWOt4Mq7pisqGO7gOrQyA0pGhlIy48LNiyP+m+y+Q228cedsEKbAKXAtL8e6Om20e+u+203G+38nLffIVvBVftwa7FcqEkyjeO0qd0KUXgEpq7JuR2ZNyNZQv95u9q0nF0nTAETfw8im3.G3.5Juxqzs9YQAETfFwHFg9jO4S7Yiq7yOecEWwUne5m9IG99qYMqwm8yFqt9blyblZ3Ce3kKs66ss90udMrgML2NarXx0oCZPCROwS7DFUycOgPCMT0qd0K2ZrTWzIxlNy46+NxlN..vklvDlfF4HGoxM2bstwdne7G+QcC2vM3VYcfhJpHs90udKaWd4kmtpq5p7ZyG64dtmSe+2+8F29rxJKkPBIXY6LIfFKt3h00ccWml3DmnOK.99rO6yzC8POjaeb1saW268du54e9muRk8HbkxJqLM5QOZ8QezG4v2+.G3.F8fu8D8qe8S0qd0ymz295.BHmbxwnyQG5PG73yApaiLD.7pVzhVjFxPFhN3AOnO+bkRJongNzg5Vo9PS2MPd6GP8jm7j0u8a+lQssrxJync9iIS9XhSbh5tu661muyA17l2rt5q9pcqyyTm5T00bMWiWIEkZk4N24pO7C+vS40KnfBLdWV4thM1XUKaYK8I88IKnfBRaYKaQ6ZW6xn+ca21sYT+1u90Oipyp...9BETPAZKaaq56m2b0RW1+SolVp0I1Ijqd0q13xakqXxCvK4jS1mLOQW8.c8GADfc610e6u82z69tuqO6beByd1yViYLiw31a5Nu9QdjGwsu+jJdMxpV0pzHG4Hqx96nsu8squ9q+ZiZad4kmF9vGtl27lmOdTc7EmcTiZTNLXl8WArxjlzjz0ccWWkp7.XpUspUoa7FuQia+d26dUFYjgKaSHgDhra2ta+2X8oO8QAGbvt0wTWQQEUj14t1kl2O8iZQKYwZO6cu0oybN..vZO4S9j5e7O9GUIy06a9luwsRI+aZSaxn44jc1Y60Cd2G7AePiCv.SxxZRVeuXEUTQ5Ztlqwqmodcj28ceW8du26Yb6KszR0sdq2pl3DmnObT8md3G9gURIkzo750T2fde5m9oZAKXAt7eCaXCyi6+O3C9.iJETCe3C2iOGntMBH.30rksrEM7gObOJJDaPCZfrYy8y0Dae6aWuy67NF01zRKsJUc5Q530lTOYbZ2tcM1wNViZ6V25VMJp+sZxGyXFyvi2wWMrgMzsWble9m+Y8Ue0WYTaWxRVhtka4Vb6I4YylMipiNNxi+3OtRM0TK2q86+9u6yBHAeUsJpxxaTWhA..ppX2tckZZooktrkoEsjE6y2Yy9al94zVU1nL4AMmPBI3SVvPWsiF7UK7S.ADfFzfFjCeum9oeZ89u+66Q8aiabiU.A3RA2++B..f.PRDEDUd2x7DlvDzV1xVLpsl76o7xKOOZWyWw4x8.OvCX7e+LvANP8AevGnEsnEojRJIsyctSsrksL8BuvKn9zm9X7XXJSYJF0ta7FuQsnEsHi62SHrvBSgFZnt8ws+8ue83O9ieJut+nNlNm4LGcW20c4Q6NKOstg9ce224xRmvIyjqQ6QO5gt+6+9c6uG39MNUGJqCoU96qRe62+cZsqecd8xuH..pc5Mey2TuvK7Bt8wYylMiR88Nx69tuqwk3oJaIYpxLNSJojb3lDyQ7VqY5nF0nzblybLpuNY1rYSMtwM1se1Ciabiy3fG9wdrGy34nexBN3fU8qe8c6i6XG6XZzidzmxq6Ol2s2vEdgWnk+ySe1EIjPB50dsWyx1EbvAqa9luYO5b.3YkLfZ+aNG3lJrvB0MbC2fwKxTfAFnt0a8V0xV1xTlYloxImbTt4lqV8pWs97O+ycq57xy+7OuQYj.SixuSVngFpt+6+90xW9xUlYloxM2bUN4jiVwJVg9nO5iLJk8eB+xu7KFUhCLcRRtZxGG3.GP2y8bOFuHu8qe8Su0a8V5m+4eVokVZ5HG4HpvBKTokVZZRSZRFmFZdxm7IsrdWlSN4na61tMi2gCMsoMUuxq7JZCaXC5nG8n5vG9vJu7xSaaaaSSZRSRcriczn9ImbxQSdxStbu1fFzfzQO5QOk+YZ4t3e9O+mN73O5QOpk0II+gRKsTsl0rFiZKKPG..ptn0st05bNqyVC47NeeVp+q5BSVDJa1r4x4JaxN50YN8S+z0y+7Ou9hu3KzO9i+nl3DmnFwHFgasnTG3.GPG9vG1gu2JW4Jc37lF5PGpk8aSaZSc57txM2bc3CGckqbk5kdoWx3w9vF1vzDm3D0xV1xT1YmsxN6rUwEW7er3LlrPjkUVYFEHvkVZoFkopbUIXvYhLxHUm5Tm9iu9a+1u0nqsZe6auVwJVgVwJVgtm64dz4e9muhIlXTm6bm0YcVmkF23FmV25Vmdtm64L5ZBSt2mIO4Iqu8a+VKa2Ib9m+4q4N24p8t28p7xKOke94qzRKMshUrBcm24cpfBJHi5mO4S9jSIKAL0oNUGd808ce2mQ8492+9c50nNJ03mZpopQMpQYTeKc7R50XFyXzpW8p0QNxQTN4jixJqrzu9q+p9nO5iTTQEkw80i7HOhQO.eSt2z0t10pMrgMX749D39M9SkFRH5WV1+SKXgKTIu6cqR7QouW..T6y5W+5MdSnIc74I9xu7KqMrgMn7xKOkat4pzSOcsjkrDMgILAEYjQZT+TRIknG8QeTiZqmDP.ssssUuy67NZi++kKmbyMWkZpope5m9IM9wOd2JnP+rO6y7ZiyvBKL0yd1Sm99yblyTe9m+4Fc9rYyltga3Fzjm7j0JW4JUN4jixN6rUQEUj17l2rdxm7IMZC6kat4pm64dNKa2RVxRza8VukQiMoimMm9pu5qThIlnxO+7Ud4kmN3AOnVyZViFyXFiBO7vMpeV3BWn17l2b4dsW7EeQGNm4W8UeUi5ye8W+UmNu6q3JtBi+dr5h8t28pK3Bt.cnCcHKa6HFwHLtj.CTQ1r6AaKjcmUo5kl+el5JZWiCPO0kX1+A.pc5gdnGRu8a+1F01XiMV88e+2qt0st4z1TbwEqwMtwo23MdCidn1uy67N5AdfGvks4odpmRO+y+7FMFkNd5k4K+xuTsu8s2osI6ryV23MdiFuCKdoW5kz+7e9OcYatu669zG7Aefk8UFYjgZdyatCeu+xe4uXzBq0jlzD87O+yq64dtGWt6mRKszzvG9v05V25rrOmxTlhKiRs63NtCiWXyq8ZuV8we7GqF1vF5z1TRIkn69tu6S4g86HwEWbFsisl4Lmot5q9psrcyYNyoF0jL1zl1jw0oyjRJIESLw3iGQnpxz95o6uGB..tk5Uu5oNFSLJ1N1QEd8q6beFsoMsQokVZtrMcsqc0k6FGSmGSEOuSaZSSmy4bNN78+se62zvF1vT1YmsQ82JVwJz.G3.M972xV1RKChggNzgZ7btkNd8huu8suFUCFiIlXza+1ust7K+xcY6V25VmF9vGtk+NR53y6pG8nGN882xV1hKeeqDQDQnt0stoV1xVplzjlnCdvCpTRIEs8sucMjgLD8S+zO8Gs8BtfKvxcfezQGsV7hWrhN5nM57ax8rzjlzDkUVY4z2e26d2pW8pWFkg4BMzP0Lm4LsL8XtyctSEe7w6zfR4jM4IOYc629saY6Nqy5rzxW9xcYahM1XMplydB1saWW7Eew5m+4e1n1etm64poMsooV0pV4z1b3CeXM5QOZiKUCKZQKRm+4e9trMlbsiqzktzE0111V0pV0JUTQEozRKMs8suckUVYosu8sqt10t5w8cMcyO9xG.GW3JRV6O0TUhIknR+.GvOMp.P0c+dPCSGsv+bcResQDgZX8b+LYJpcH+7yW8u+823M1zMbC2fl3DmnKWm08su8oa5ltI8+9e+Oi5y8rm8X4FIqm8rmmxCD1UFyXFid1m8YcYvf+6+9uqq7JuRiyFvaaaaykOKBIytWry7LOSmt61yHiLzocZmlQabwd26dq+8+9eaY5seAKXA5ptpqxx4KGRHgnzRKMmFPG4jSNpW8pWZO6YOVN1rYyll3Dmntq65tbYP.mQFYny5rNKilC73F23LJKVbK2xsXY.UDZngpbyM2ZMkdpzRKMM3AOXi94X3gGt13F2nwaPRT6xcOsx++C7gWu6mw37JkL.OHCpiZQV9xWtwos+HiLRMu4MOK+.3fCNX8Zu1qo63NtCi524N24ZYabmnQryctyZNyYNtLX.jN9hbM24NW0+92ei5WSxRAlr6chN5ncZv.LsoMMiBFf10t1oMu4Mq669tOKSEpst0sVKcoKUsrkszx986+9u2ou2BW3BMNX.hO930m8YelKmjpjTPAEjd629sM5gWu0stUiRmUldsh6jIKpNvzTeUyadyIX...feQqZYK0YMnyTWwvuL0qdzy5TACPJojhQOnYq1Ust6Nv47O+yWqacqyoACfzwSg7SaZSy39zcJgXllQCb24c8rO6yZTv.bVm0YosrksXYv.HI0291Ws3EuXiJi.tZNwRddpScvCdv5a9luQYlYl52+8eWe+2+8ZJSYJ5G9gePaZSaR4latka91EUTQV9vrkNdpl0zfAPRF8yKqbu268Z70JSZRSxnZkYW5RWLdmOMyYNSKaSIkThQAEs6d84jlzjLNX.5d26t9lu4abYv.Hc7Rbwzm9zMNXbr5dnsa2twYWrSViZTizq7JuhRN4j0N1wNzhVzhzTm5T0LlwLzu9q+pNzgNjRN4jUW5RWb69t1r.BH.0910NcdC9b0vuzgot00t5QkDC.T6VEWBdRhu0sM9wOdiCFfgLjgnO8S+TKWm01291qErfEn1111ZT+Nu4MOW99tSlXU53ajrW4UdEKyLbCX.CPKYIKw3rCkUqIu23dw96+8+tQACv0bMWiVyZViQ059K5htHMqYMKKaWQEUjl+7muSe+m3IdBiBF.oiWx0F8nGskYDrVzhVnIO4IaTlCyj4cKY18H06d26ZMACvV25V0EbAWfwAV7K7Bu.AC.pT7JAD.pa6UdkWwncwengFplybliaci+icriUAFXfV1tkrjkn7xKOW1FSWzsl1zlp4Mu4ol1zlZT6CHf.bXMnzQ18t2sKe+BKrPswMtQK6GWM4CSRKpgEVXZ1yd1pMsoMV11SHhHhP2xsbKV1t4O+46zzOoI0AGoimVnl8rmswK.RDQDgCqGQNxN24NsrMl7fyaaaaqZcqasQmypK7V0BK...uoPCMT0st1UM7KcX57F74p12t1410s8ZCL8yoiO93c466NOn4+5e8upErfEnVzhVXYaufK3BrbADOASW.QIy+91cdfqG4HGQu+6+9V1t10t1oYNyYpvBKLi66t10tpgLjgXY69ge3Gb466IADvi8XOlVzhVjFwHFgSWjz5Uu5Ut43upUsJKKqaMqYMSW1kcYt0X4zO8S2x1zjlzDm9dadya13L9vi+3OtaUmLu0a8VM5d4L49B17l2rxO+7srcty0mkUVYFmNTaYKaol27lmK+YYE8jO4SZT6rJf.14N24oTVErRbwEmV0pVkFyXFiKCvjniNZ2t93VWRChHB0md0acEW1koAEe7p4jVXA.PEbjibDixvrRG+ymm4LmowOD0PCMT8XO1iYTasZ9DqacqynxTjzwqO6SbhSzn1Jc7Lzz0dsWqQs0p0juxVBeSHgDLJKM0m9zG8IexmXzy63DtvK7BUm6bmsrcN69OxJqrLJy5JIc0W8Uqm4YdFiGamy4bNFsNxIlXhVV9fO7gOrQyOul1FzyQJpnhzy9rOq5ae6qwALyPG5PsLCYCXk5dqzF7p1wN1g9tu66rrc1rYSexm7I5rO6y1s5+XiMViRI6EVXgtbmemXhI5xzU4IbhfV3jq4ll3ptpqxncTiUQh2F1vFTwEWrk8iy9f1EtvEZT.E7tu66ZbVM3jcq25sZYaxN6r05W+5OkWeaaaatLREOgvBKLMm4LGK2ALUjoAZx9129b46WVYkYzNgol3jOV4JWoQsi.B...UEZdyZlFT7wqq3xtL0md0a0.CpO60l4MBbO2YG813F2X89u+6a7hQEXfAZTaCN3fMZAqNAeQlYZRSZRVtyysYyll0rlkQY.qJxj4Du7kubUXgE5z22cBHfvCOb8Ue0WoW8UeU2ZwCkNd4P3m9oexk+a9ye9t8trwjzypqdn7lVt4trK6xzK9hunwiqSvj6MvjuG7EWeN6YOai1EP0u90We228ctUlaPRZ3Ce3F82fae6a2qcMpzwW.4UtxUxN+2KJv.BTQ0gnzEb9CQW5PuD04N04ZM6HN..T47ge3GZTlVpUspUZdyadpwMtwtU+O5QOZipQ7NZMfOYldONm1ocZZFyXFt8my8HOxiXT6rZM4qrADva+1uskOv6HhHBM6YOaU+5WeiNWmrQNxQZYabVYd5i+3OVG6XGygu2Iqu8su5S+zO0sCZSSl6WIkThkYfg0rl0XzlNsl3ZxexVwJVg5ae6qF+3GuJpnhL5XhO930Lm4LqStwIf2kY4TkJvf+tD0Q7FuwaXz+Q8kcYWlt9q+58nywocZml9lu4arrcYlYlN88L8C0GyXFiQoqmJJf.BP8qe8yxnM7fG7fJu7xyoSnpxtPvu4a9lVdrcpScxnZkoizst0MYylMK+cdpol5oDvAuy67NFcsxe+u+28nfUnm8rmFkdLsJURsicrCkSN4XY+Xxthp5jicriosrksXTaIf...fOS9GSAuoeWm4cbup0c2yqe50FYx7.CMzPUu6cuc566N6n2W4UdE2J.LyKu7T1YmsksKt3hysVHOS99tMsoMFmYlJojRLpblMhQLBOdwjhKt3LZbjQFY3vRPVQEUj1vF1fwmuu4a9FcQWzE4ViwSnsssstUFavTlr6sbVYh6fG7fVVaPkNdPnLoIMIOZguF5PGpQ26Qt4lqZPCbdsWzjqOOw8BZpW+0eciZ2C9fOnGeM5ocZml10t1kksKyLyTsqcsygum6DP.W9ke4Fsq3fmqQMrgp+8sup28pmZu6aeJAC2zC..n1mhKtXiKeuuvK7BJpnhxsOGgEVXJlXhQadya1ksyUqGuj4ym3y9rOSMpQMx3w2Izm9zGEbvAa4Fryp0r2j470zl1TEarwdJud1YmsQkH265ttKO52ERlc+Gomd5xtc6k6A5WRIkn268dOiNGu+6+9dTvJbtm64Zz7NyImbb48kX5yEol1ZxeB6YO6QOwS7DZpScpFceJmPO6YO07l27LJ.c.rhGEP..RGexGScpS0n1dm24c5wmGS2QDtp1iZxGnXylMO9AkKIiq456YO6woeHtISRJv.CzgOv7TSMUKSMoRGOxI8znIKnfBRMsoM0x5gTEmLXokVpwWq3oANRm6bm0JVwJ7ni8j4KRasUGr10tVURIkXTaqo88F..p9KnLSSAsxEq5kvFU.kTpZve6g82CopULMCE0m9zGERHg3z22zEbqu8su5ttq6x3wmjLZQdjbuEnwWjYl94e9m0d26dsrciYLiw39rhLMqBjYlY5v.BXiabiFuaPthq3J73fAvWHiLxPO6y9r5i9nOxx11yd1SG95e8W+0VVFCjjNuy677nL3fjzy7LOiaktScFSt2ft28ta7BzsqcsKitmEa1ro63NtCi5SGwctG5Ja.ADbvAq23MdCSGZnRJn.CRcL5XTGiNFk8gyVIjXhZO6cuFeud..nluErfEn8u+8aY6hHhHz0ccWmGedhN5nsLf.JrvBUN4jiSKsXlLWpd26d6VAW4IKf.BPcnCcPIlXhtrctJCAX2tcs5UuZKOWN6dR9pu5qrrTFGbvAqG9g876A1j4DWRIknryNaEYjQ9Gu1hW7hMJqXEczQazFsyQF0nFkF0nFkGcrmLStVIhHhPcu6cuRetpJkc1YqW7EeQ8tu665xrykiLxQNR89u+6Sv..uFBH.3wV0pVkkeXmzwSMQCaXCyiOONZQzbDWsikLYwLF7fGrwOTeGwzH7KkTRwoADfIev2ocZmlCiVuEu3EaTzk86+9uqMsoMY8.0ILojFTw.BXcqacFsq66ZW6p5Se5iGO17FLcgupoEMhlFnCwFarFUyUA..rRPAEjhpCQoNGarZi29UnBR00oow5x1912tQyUxpr3ioyi4ltoaxsSEjVsXfmf6jom1912tQo5T2If.V3BWnksI7vCWSYJSQSYJSw398jYx7gkb9NlxcdPqltax81Jt3hU5omtRIkTzd26d0F23F0pV0pzRVxRL9AO1qd0KG95+xu7KFc7dZfB6sXZF1xct9zYox0J5bO2y0sKicmrJ68PWRIkXYJ.9DdfG3AbqxDB7dZRiahFP+Oc0md2asm8rWkPRIpCe3C6uGV..vGawKdwF0tq+5u9J0CRzclOgiBHfCdvCpjSNYKO9a61tM2cnUNQEUTVFP.t5ghaZVVyUkvWqzzl1T8xu7KaY6bFSyJPYlYlkKf.Lcd2Ul.Gwawj6Qpe8qe0XRa9EWbw5e+u+25e8u9WFko8NY0u90W+6+8+tR+2F.UjWIf.bukRB0VX5jOt0a8VsLMs6Jl9eX5rHQrjRJQqcsq0xiux9evZxhYJIUu5UOG954jSNZG6XGVd7NaxGlt3RSdxS1n14MszktTiZm+dQ+jL6AmGarwVtIWUSf2ntDC..Xhlz3FqXiMVEUG5fBNn++TGeEd3ytSJxqt.Se.wwGe7dk94pu5q1n1cxLME26N6tGeQlYxj4DmWd4o2+8eei6SuMS+8z8e+2uO8AsdricLsxUtR8a+1uojSNYkRJon8su8ozRKMkUVYUo+6TmE.s+u+2+yxiM3fCVW4UdkUpyek0ZW6ZUokVpksyct9zz6gtxtKqpr2C8l27lU94mukGeSaZS0S8TOkaM1f2WvAEr5TrwpNEar5PG5PJgjRT6ae6SkXv0u..nlmZJymvjccevAGrtoa5lbqwUEYxZx6r0iWx74l6n0L0tc6ZIKYIVdromd59k6+nlxZxmZpoZTVunlRVs8a9luQiYLiQIjPBt8wFWbwou9q+ZiJSD.tKxP.viY5jOpLo5PIqqwOmfy1UyacqaUG6XGykGa3gGtGsvnmLSRMoRxoOH40rl0Xzht4rGXqo+9npPaZSaJ2Wa5jO72Qino0y0ZZYG.IBH...3aETfAp129NnNEarpo0vBZtpC7FeNso6n2ALfA3Q0tRSVnrPBID2JaO4syLSYmc1FuqlqJTw4DeBl988nG8n8lCGkat4pe9m+YsrksLsrksLst0sNiy1AtqN24N6v6OKgDRPolZpVd7WzEcQ98.v0Wj4vLYAiaXCantpq5pLtOcjJ68Pa526W60dspwMtwlNrPUfl1zlpl1zlp9169ncumcqDRJIix.M..nlgCe3Cq0st0YY65d26tGmB3OASlOQfAFnSmKfI2iyvF1vTyadyc2gV4XxZx6p4UVYBHfMsoMYYo0spzIe+GEVXgF86ftzktPF60KY0qd05QdjGw3mEREc629sq268dOGlcnA7F7n.B3Tdlkjh.pSxj58YCaXCUW5RWpTmGSRsPRRMqYMygutIefx.G3.UDQDgaMtpHWUKhNYNaQWpLKDbVYkkw+bppPqacqK2Wa50J96Z.zF1vFLpdtVSIZDOgLyLSiu9f.Bn1oq+ZtVuVec2Sq7Qd8Gd8Mvq02.v0l1WOc+8P3TznF1PEaGiUQGcTJjfcdssGtlIyCLxHizk6VbS2QuWxkbIt0XSRprxJyn4y0qd0KEZngZb+Zx22cricz3GL75V25TYkUlwmeesJNmXoimcB1111lkGaG6XGU25V27JiC61sq+6+8+pwN1wpLxHCuReZkAMnA4vW2jL2ljpzKfs2fIWeFRHgnd26daT+kRJonCbfCXY65QO5gBKrvLpOclph6gVRZ3Ce3FOlPUqPBID0kN2E0kN2EkQlYpDRLQkx9SoZ0+GI.7.UbM3IoaUmy5W+5M5+K2ar1klLehHiLRmVJxLY9DW3Edgt835jUPAEXz7acU4Q0j47EczQ6v.WvjrfPUkvCOb0fF7mqQ2V1xVLpl0WSYd2RUeWS98su8owMtwou3K9BOJKqcZm1oo28ceWc9m+46CFc.+IxP.viTTQEYTs0I5nitRetLc2MTYVLiNzgN3NCIGxjnQzlMaNcAMMYbV+5We0idziS40qpVXOSUwE+zjHkrssss9pgiwLcguptN4CmwzuuBJnfbqz7K..paJf.BPsucsScJ1XUyalY6liJtHQTx.9SETPAFkghrZ9GltXTdRv+ssssMczidTuZeWXgEpMtwMZY6bm4cUcZNwAGbvNbgGW25VmQogdu0CZcUqZU5AdfGv3EYyawYKrno+Nplx8Fzyd1SiCBFS+dup5dnCIjPpTo325Uu5ogLjg3tCM3Gzhl2b0hl2bUXgEpj1cxJwDSTGMu772CqSg2LHlApsZ0y154igZ2pplOQ94muQAxnyVOdopl0jee6aeFcukNabVbwEaTFFyY2mS0o6+nhqGess4cGYjQpXiM1pfQi6YFyXF5Nuy6znmUVE0vF1P8rO6yp6+9u+JUI2FvTbUF7HllJbhIlXpzmqcricXYapW8pmSS8olr3WU1IeTRIkXzhtz0t1UmtfQl7Ae8u+8WAFXfmxqmYlYZ4wVU5jm.Rd4kmJnfBr7XpNL4CStVIf.BnF2CMekqbkF0td0qd4xZpE..paqAQDghsiwpXhNZ2ZWfCWaCaXCFk11s5gsWYR0kVwWz29hLyT0o4D2pV0JGtaoL8mkCaXCqROFd7G+w0q8ZulWI.bZbiart7K+x00e8WuQAqfyxP.G5PGxnym+9dCNzgNjRLwDsrcty0mUU2CcN4jiQkkgt10t5vWO+7yWaZSaxxi+7O+yuRmICPUqPCMT08t1M0stzUcfLNfRHwD09SMUBRO.fZPpplOgIqGujbZFsZu6cuFEPAU10j2zZzdu5Uub3qu4MuYiV253iOdG95Umt+iJFP.0Tl2sc61M5djptUt.JrvB0+3e7Oz6+9uuaer1rYSibjiTuxq7Jpksrk9fQGfi4UBH.pX.08X5G1UYm7wxW9xM5AsOnAMHGtvzltXFsu8s2SFd+g4N24picriYY6b1Nk4.G3.FkgAb1hrZxuOBMzP08du2qksqxJf.BnbYAgZJS9Pxr.BnacqaU5xKQUMuQcIF..0MYylM0t11V0oXiUsn4svooCR34L8yoc1hPcBlrHJQEUTpEsnEFc9b29Vx8lKgoee6NK7iIyItcsqc5pu5q139zS0t10NG95l7yxfCNXctm64VoN+O6y9r5Ue0W031GP.AnXiMVEWbwoNzgNnV1xVpVzhVnV1xVpN24Nqt0stIa1ro+y+4+XYeEd3gqd1yd5v2qlx8F3KpioUU2C8zl1zL5A7ddm244vWeCaXCpjRJwxiuxlheg+iMa1TqZYqTqZYqT94muRL4jTRImrQqoA..7upplOwTm5TMpcNa9DlNWpJ6ZxO8oaVY0yYqIekcMSM42GwEWb5hu3K1nySkQEC5gZJy6dW6ZW5vG9vV1tpSADvt10tz0dsWqQYWhJpu8su5e+u+2NM.pA7kHCA.OR1YmsQsqMsoMUpyyjlzjLpcNaxGqe8q2nEynxFMhSdxS1n14rExsxtHq4latN70OYMqYMSSXBSvnyi2TVYkkQsqxdsRkUN4jiQQ+ZMsxEfjucGCB.fZmBu90Ww1wXUGiIFuS1iohAR.6Fw+f2Hv8LMHX8zOq2j4RzvF1P2pl2aReFP.An92+9abeZxbh6cu6seYNwmfoog9JyNu9W9keQie7i2n1N3AOXc228cq+5e8uZz47G+wezx1LfAL.GlUyj9+Xu66nipp01.3OS58Bo2HkIIz6cjhfDPDAEQDPuVA650BpfE.KfU9TjhxUtVt5ktBVn2qAoEHgTfjLoGRizKj5Le+A2LLyjormISHA342ZwZwYN6yd1IYfbN686988lmmMnsnThcyxyPK5W6FJHknaNXu81id18dfdzstiKmWdH0zjg7xKu16gEQDQ5vMh6mngFZ.+m+y+Qn1pq6mPjmwwQGcTqkXKQUYkUhMu4MKTaaMyIukVZoNyVrh77GiYLigyIudbyVI7c8qe83Ye1mUne1qJ2byMr3EuX7bO2yoymUhn1ZLf.HShyN6rPsSjTUntTYkUJbT90ZmLiVSJxK+7yG6XG6Pn1pqH+p0NQvt6t6F7ZkKWtPuGlaN5niB0tqd0qZxuGhTSaszRK06jbd1ydVg9dTGka9PTxjIS3HBkAD.QDc6MIRj.+8yOHMLovOcjtyIyOQtOvPCMT3kWdoyyK5N50T9c80We8H1Xi0fsafCbfF0mYZKxLShbOwM0TSB2elakTRIBkVSaM2uob4xwq8ZefDA4V...H.jDQAQklPsc4Ke43ke4WV39tt5pC6cu60fsSe61k15mMngFZ.0UWcFrc1au85ch3D4ymN3fCnG8nGBO1tQ7LzwEWbB8LvRjHAiZTiRqmSjq2JqrB8qe8ynGeTGWRjHAA3u+H.+8GUWS0PVZWKqAHRZTlHhnabLl6mHhHhvjdO9q+5uDp9y2oN0IclUnLl4j2TetyMsoMgpqtZC1tPBID3qu9p0yIx870yd1S3fCNn0y0Q94OZquu6lZpIgtVas0VXs0VqyyK55hzQXN4m6bmK9xu7KMpqQhDI3we7GGe1m8YlT15iHyIKLkKRykNkSU3se7zSOEpcojRJl76wF1vFD5Wp6s2dqyz9in27gn0EIs4W9keQnIfsqcsqnO8oOZ8bhLN8xKuPHgDhVOmH+7H+7yWnEN2bS0xGf9jc1YaR8+oO8ogyN6rA+yJW4JMX+HhNB27gwPzapxYmcFcqacqMdzPDQTGQ1au8nGcu6XxSZRXj2wHf+94GCFfaPJszRE59kMzB42VlMfhM1XQ80WuYsuaqxLShbOwhTW3aqb1ydVgZWqIHMOwINAN24NmAa2BW3BMpfA..XG6XGn7xK2fsSWOaFPa+yF7O9G+CC9bAADP.F74hD4eS0u90OiZ28bi3YnEojN..L7gObcNdD4q8dzidnyIFmt4miN3H5cO6ElxjtWbGCa3vGN40DQTGFcjtehIO4Iq0maTtb4BceuUWc0HmbxwnGeMSzL16Lm4L046ehIlnAud8cu4cje9i1566dgKbgF79tc0UWQZokld6GQt2S+7yu18RavhW7hM5fAnO8oO3XG6X3G+wejAC.0g.yP.jIQza93BW3BlTj9UUUUIbpz4EewWD1XiMZ8bhtXnlZ.ATd4kiu8a+VgZ6S8TOkNOmH+huV6MenPgBjXhIZRSvXIkTB1yd1iAaWO5QOZQjg5latAIRjXvrvPlYloQOt.fAWn+lGCO2y8b5sMh7YEqs1ZcFTGcTI5+FX.CX.vBKLoXDiHhnaR4qu9hvCSJ72e+fERZi+c.rjAnUm4LmQnLUkgRM2hlpKMlzuuwz2.F2hXK5W2FachTzIj6pW8plTJ4WlLYB88iQLhQf.CLvV752HJiS+0e8WB0t4Lm4Xz88+8+9eEpcli.BHyLyTu8i1b4KeYrksrEC1tm+4ed3pqtpyymUVYgBJn.C1OsEe9D3Z6xeSQFYjA94e9mEpsu9q+5Z80EMXcXlE61CVXgEHn.CDAEXfnxppDxjkFRKizEJHwHhHpsQa88SbpScJgJQT.PmYkpKcoKgJpnBg5iKcoKgfBJHgGeM6nG8nH5niVn1pq4j+bm6bBs68asyIe7wGuAaitDWbwITPKLgILgVjsBLl661XUWc0g0rl0Xv1M0oNUzktzEcd9FZnAgBlYi89tM299u+6wBVvBDt8VXgE3sdq2Be3G9g5M6HPzMZlV.An4j2vcPzscbzQGg+96uASmgYkUVXCaXCXVyZVB22M1XiX5Se5HojRxfs0d6sGuvK7BZ8bkUVYBGMj+we7G3y+7O2n1kC0We83AdfG.omd5FrsVYkU3wdrGSqmKszRSnT5t9t4iPCMT3ryNavZWy92+9MoIuYNyYNXqacq5sMVXgEZ8lMszRKQ.ADfAi3yXhIFbwKdQip1ylZpohMtwMZv18RuzKYvTpkn6DFas0VgGecDXNpKwDQDcqCas0VDVngBogIENIXJDjZ6Xt98zhbeLcu6cW3zFow12.FW8DWz9zXCfAQBbS4xkiCcnCgINwIZT88Uu5Uwjm7jM3yn3omdpycAiHec6niN1pxZSm7jmzfsIv.Cznm30KcoKgssssYv1EVXgo2c+Rm6bmE58asqcsXFyXFBO9..9rO6yLXlayN6ryfkTg1pOeFd3gKTfRuqcsKDWbwgd26dKbeWVYkg64dtGTVYkYv1JUpTb+2+8q0yc1ydVgBVma1xZZTqmyN4L5ae5C5UO6IxN2bfLYxPQW4Js2CKhtsily.OCw1a+DYjQJT69we7GwBVvBzaYGSSomd5XxSdxBURUG23FWqJS31r0st0gwMtwIb6A.RN4jwTm5TEpsibjiTmkNAywyhIxyejWd4gjRJIi9d7KrvBQTQEkAKeCcqacCOzC8Ps30E89tW+5WOdm24cLpMz428ceGJpnhLX6d629s064iO93Ep7DYJA1t4RrwFqA2ngpxGe7AabiaDidzitMbTQjogaGTxjI5urdgKbgBkR8a1K9hunvQh3i+3OtNiDOQmLC.fbxIG7IexmH7XTgBEX1yd13.G3.B09oMsoAe7wGsdNywNExZqsF24cdmFrOV7hWrPAvfp95u9qMXv...LqYMKcVCM0U8oTUxkKGe5m9oBOtpolZvC7.OfAqQnN3fC3UdkWQusonhJBYkUVF78zN6rS3wWGAM1XiHlXhQn1ZLShOQDQ27wau8FCenCC228NYzmd0aFL.cPHxjPYkUVg92+9qyy2VuidE4dUCHf.f+96uv8onoNeiMPL6RW5hPS70K+xuLpolZDteUnPAdwW7EEJfkm27lmNCDUQ9d4.Fv.LpzPulxO+7MXaBKrvLp9Ttb4X1yd1BsqfG1vFldO+HG4HE58baaaa3BW3BB0V.fsrksfku7kav18jO4SpymKqYsUe9zCO7.8qe8yfsSgBE3ce22U39s95qGScpSUnOeBbscymtxLX2HxhEzM2rzRKQHcNXbWiYrXhSXBHhvCm67MhH5FnALfAHTcqupppBe7G+wB2ukVZoXhSbhFbwma1a7FugNOmwDP.+zO8SFU6KrvBwDm3DEZy0A.ctQBADOXc007cCbs47Vj6I7oe5mVn.snYMzPC3QezGUned7ge3Gp06squ8suFbCxA.jPBIf+3O9CgGam9zmFu4a9lFrcQEUTFbg7aqtuayE4xkim9oeZgWaqPBIDbricLFL.TGVrjAPlrnhJJgRIgolZp3wdrGCe+2+8FL0b9oe5mhu669Ngd+8zSOwBW3B044EMJ+Z1RW5RwnG8nEJPGdu268DNkY5niNhO+y+bcddyUsqe7ie7FLEgVSM0fm3IdBr0stUgRaP+vO7CFbGz.bsIp98e+2WmmezidzXcqacFreV6ZWKlvDlfAynDUTQE3we7GWnIIbNyYNFL8MEarwZv9o41UQEU.WbwEgZe6s3hKNghxR.NodDQzshrwFaPngDBjFlT3h.SD.cimH2uZu5Uuz68PKZPvZJ+t9pppJgVjQisuO+4OuPs6XG6X5MXHzlnhJJCV2SkISF9m+y+I9lu4azYoGSUu9q+53G+wezfsyO+7Cu3K9hZ8bW9xWF4latFrOZs675xKubC1lye9yC4xkKb4h5q9puBG+3GWn1Znz7u+96OhHhHLXlbSgBE3oe5mF+we7GFbA7O7gOLdhm3IL3XyJqrRnIuTzOedzidTstarzmnhJJgBX2ssssgEtvEhO3C9.Ctasl8rmMNzgNjPu+8t28VukKBQd1TGbvA8Nw3zsOb0EWw.5W+Qe5UuQVYmMRMMYnjRJo8dXQDQ2RyBKr.icriE+1u8aFrsqZUqBcu6cGO8S+z5sc0UWc39u+6W3Rp6jlzjvDlvDz44Ml4ju464aaaaaZsjaopZpoFbu268ZvZReyF0nFEl4LmoNOuH22S+6e+0av5Zu81iQLhQf8u+8q2943G+33C9fO.KZQKxf2CdiM1Hl0rlkPku290u9goMsoo0yYokVhQLhQfctycZv94Mdi2.cqacSuo2efqE7.SaZSyfaPO.Cmc..LtmKr8vJW4JMp.VYRSZRXSaZSsIikINwIJTvESj9XRADflS2DKX.2dZRSZRvEWbQnZBz5W+5QRIkDV25VmVSONIjPBXgKbgBUyGa12+8eO7yO+z44Ml+yZ.fZqsVL9wOd7pu5qhO4S9DsF4YwDSL3C9fO.+4e9mB2uKbgKTu6TIQtIIoRkBO7vC81loO8oi4Mu4Yvc6zQNxQPjQFIVxRVBd5m9o05MgjQFYf4Mu4I7u.6IexmDgGd3577SXBS.VZokFrtL0XiMhG9geXbpScJrjkrDsVBG98e+2wK8RujPSnps1ZqdiX0lIR1A.3ZoJ1nhJJLu4MODZnghFarQTd4kixKubzidzCipbGbifn2.te94mAuoahHht4gmd3ABWpTDTfA0p1owlUZtfVBlEmtUV1YmsP6layQ4BPj9QaN6YOqP6jEisuE8dul27lGpqt5vnF0nfM1XCprxJUtf2SdxSVqWyS7DOgACH.fq8rDG9vGFe8W+03dtm6Qqs4zm9z30dsWS3EC+8du2SmAuwYNyYDpOZsAoYW6ZWQd4kmdaSEUTAVxRVhAqCl0TSM30dsWS3.1FvvYH.fq8bjKaYKyfs6jm7jn+8u+XcqacZcW1TZokh4O+4i0rl0HTPwLqYMKDZngZv1I5mOW0pVEbxImvjlzjfSN4DppppP4kWNprxJ04jOOyYNS74e9mKz38i9nOBwDSLXMqYMZ84dOzgNDVvBVfvSPp81aOV+5Wud2gUh7+mzu90OXkUbukPWmUVYEBKzPQXgFJJszRQpoICYlUVFUlhjHhHwMqYMKgBHfFZnA7LOyyfyblyfO+y+b3pqtp14UnPA15V2JV3BWHRHgDD581We8UuAJa80Wuva7plEarwhd26diUu5Uq0fsTtb4Xiabi3C+vODW7hWTn9zJqrBey27M577EWbwPlLYFreD4dyehm3ILX.A.bscx+1291wJVwJz48Lu28tW75u9qi3iOdC1e.WKa.qufGcRSZRBEP.xjICCZPCB+vO7C3AdfGnEqWPs0VK93O9iwm9oeJZngFLX+MrgMLLlwLFC1NQuu6su8sim9oeZ7vO7CC2c2cTSM0nbN4m7jmrIUZ7LjZqsVrnEsHi5ZV0pVkYebzLl0AHyAIJDMmpqhTKpQ7E6+pJONTOrDyOJwq85zsN9nO5iz6tzWa70WewPFxPPjQFIxJqrPJojhxcohndgW3EL3+AafAFnPKZr1Xmc1gt28tid0qdAu7xKjd5oiTRIEDWbwYT8SO6YOQLwDiNSgdM0TSvUWcEUWc05sel0rlkP6v94O+4iO6y9LgGet5pqH7vCGRkJEgDRHH2byEwGe7HwDSTne4Nv0Vz8TRIECVGRe7G+wEJiRzLKszRz0t1UkoBqXiMVDarwhRKsTgtdKrvBrwMtQ7fO3CZv190e8WiW8UeUgGaZyt10tzazw1d3odpmRncy18ce2G98e+2uALhnaE7ranR0N9eMStqiI5FkMrYcGndVas0HjfCFRCSJbSiI5oifi9P2EtZlop73g9e2EbIBSuNoeqfe629MgtOke3G9A7jO4SpyyO8oOc7q+5up29vd6sGUTQEF8h3szktTg1Q06e+6GicriUn9rgFZPncku9LkoLE8lVKu669twt28tEt+71auUdOw94mePlLYH93iGImbxBWBxBIjPvktzkz4WaKXAK.KdwK1f8S5omNBIjPDdrqo23MdC7+8+8+ITamyblCl6bmqZA0pBEJPpolJN6YOKd+2+8EdmhAbsIds5pq1f+7MmbxARkJUnRPPybyM2P+6e+Qe5SePgEVHN+4OOt3EunAC33l0291Wb3CeXgxzWAGbvBO4jZS26d206jpOiYLCidmCEZnghgNzgB+82ejVZogjRJIgmP7l8Mey2fm+4edcd9BKrPClMF.tVIG3K+xuznduoVZOCIX0Nd7mLy1oQRaiFZnAjYVYhTkICkIPlKA.XlS23x3FDc6n272qBUT60u2jO69bBtYO2pd2tQgBEXPCZPBmt0A.jHQB5ZW6JFxPFBbyM2PJojBRHgDPFYjgQ0G6bm6Tuy+4YNyYZUY7JO7vCzqd0Kzqd0Kk2WZ7wGOxImbLp94sdq2RuyQ9t28twce22sA6mMtwMZvLBkb4xQu5UuPhIlnviu.BH.HUpTDd3gCO7vCboKcIbgKbAipT+dG2wcXv.C8pW8pHzPCEETPAB2uN5ninu8sun+8u+npppBm+7mGIjPBBeu6AFXf33G+3BUJ2FyXFivY5JswImbBkUVYsIaDh0u90iG9geXyd+ZJrwFaPEUTQ6VoSf5XvbLm7LrtoVkW60dMrpUsJi5Wpje94aT0kFMMlwLFrzktT81FQRIm8nG8.EWbwZcmYUas0hXhIFgq+5Zi+96O9y+7O0a8zKwDSzfAC.f36Tn27MeS7ce22I7hlWd4kiyd1yZT2.opr1ZqwF23FMXv..bscL0ZW6ZEdR6ZpolPBIjfvQnplV4JWoPSxN.Dp1aoORjHACYHCoU0GsEDMCAvxE.QDcyqN4t6PpToH3f5L2wl2jwb86oaK2Quhz2RjHACbfCT39zZqsFN5niBcOv5hg1E5KdwKF6ae6S366rvBKDEVXgH5ni1jFOd5om3O+y+TuKDtHeuzKu7pUEL..vnJwB+6+8+Fe+2+8HjPBAgDRHnt5pCwEWbnpppxjduCKrvDJXOBLv.wrm8rw29seqv8cYkUFNvAN.NvANfIMt10t1kvk8K2c28VU.AXnOe9QezGgst0sJb.XCbs.EwXlfXMMm4LG8FL..hmEKZsk0B51CVas0HbogivkFNtRwEiTkIC4jS1nQA++kIhHR2jHQB9jO4Sv3G+3E9ZTnPARJojDpbfoKe7G+wFbyPIx87NtwMNru8sOsdthKtXbnCcnV0hDO4IOYrjkrD81Fy4blZgEVfEu3EiG3Ad.g5S.fbyMWjat4hibjiH70npvBKLrgMrAC1N6s2d7Vu0ag4N24JbeWc0Uiie7iKbVRSUt6t6XW6ZWBEL.M29ViAMnA0lkUDEYS1cix.Fv.Xv.PlEhUz.0.KY.TybxImvu+6+tVSs6sEl1zlF14N2odqip.hMYF20ccW3i9nOxbMzTi6t6N18t2sASIkl6T7pGd3A1zl1zMjEDn4fA39tu6Sn1GQDQfO8S+z13Q00rnEsHCNgWpJxHirU8900t1U3lat0p5CysJqrRguIeFP.DQzMWtVp4MLL9wEEF+3hBRCMrN7ACflOu.KX.hcefN6ryZsba0rBKrPjYlFdWkZp+tdQFicsqcU3EZsYs168xP0o9ANvAJ7tju0xCO7.6ae6C8pW8RusSjmOwbrPqSdxSFgEVXB2dEJTfzSOcbvCdPDczQaxAC.v0JyYhZIKYI2PJ2V93iOXO6YOBsy2aVa8mOiLxHwO9i+ndSuqlSu8a+1XMqYMFrcskkeD51ad5gGXnCdvXJ26jQ+5aegyNyLLFQD0ZEUTQgO7C+vaHuWVXgE3e8u9WX9ye9Frshb+Duy67NXRSZRligVKLpQMJglabQFmd6s2BGrtScpSsUm8YEUngFJNzgNjvk+0W9keYgRe+sV1au8XaaaanG8nGBeMs022soJ2byUnx.wMJ2wcbGs2CA5VDlT.APjpF5PGJ17l2ba9DQ+bO2ygMsoMITzPIRT9M3AOX7TO0SYvIuyX4omdhcricfd1ydZv1JxMeXkUVYT6zmwMtwgku7kKb6MEVYkUXCaXCXpScpF008FuwaXTKTuo34dtmCu+6+9F00LzgNTDd3gaxumsU27Qqgn07WIRjvc4CQDcSBWc0ULf92ebe26jwfG3.QmZkQSO09Qtb4Bs.wCbfCrE0uQU0VVW5uxUthP6HYSouezG8QM5qoYVZokBcuKuxq7J3YdlmwjeeDQm5Tmv9129Pe5Seza6RKszPwEWrA6OywBs5ryNi0st0YVe1Le7wGCFnyM+dKJ2c2cricrC3s2d2ZFZ5kKt3B14N2oQEnB.stOeBH1yF7HOxiXvrdWqkDIRvxV1xvG+werPsWjmM0CO7vn+9IQMyFarAcIhHwjt6Ihwdm2I5bPAo2eGGQDQ52BVvBvK7BuPa56gs1ZK17l2rv2WsglSdKrvBLvANP7EewWX1WKggO7gi+5u9KXmc1Yv1Jx88XryW5RW5Rw8bO2iQcMFqPBIDbnCcHgxVuMyZqsFaYKaAcu6cuMabYkUVgMu4MigO7gaTW2i7HORqJHYaqlS9XhIFip7V2ViAD.YtXZ24MSQ.jFtm64dvQO5QaUKpptDZnghe629M7se62J7CKJ5uTu4HbzCO7n0NLAv0pWoW3BWP3eYjHAtPu5UuD5FYT0y+7OO17l2rQuasDg6t6N1vF1fQkFjT0JVwJvG7AefY+l9r0VawG+weLV0pVkIc8aYKaAd5omlz01QLf.DM0WEYjQBW6.VqoIhHpkl33m.hPZ35sbDQ2b3hW7hnxJqzfsyPkjn1xczaaYvF7xu7KioO8oazWG.PO6YOgiN5nPsc0qd03S9jOoMIvkCN3fwd26dQe6aeMXaE8mSlqfzbHCYHlscLVjQFINwINABN3fMXaM1rFWngFJN5QOZaRvo1291Wb3CeXzu90Oi9Zm7jmLdy27MMo2WWbwEgmr0W+0ec7q+5uZ1dVTUMvANPb7ieb7JuxqH70HZPJQj4f2d4MF9PGFlx8dun28pWB++qSDoNl0snUtxUhUrhUXvroqoXBSXB37m+7BOGvhjsR6RW5hxrf1hW7hMKYLIKszRrnEsHb3CeXglK7ryNasVBg0jw9bNVZokXqacqF08eYL5Uu5EN3AOnvoieU4latgCbfCzlDvBAGbvXm6bmlTVenW8pWl7b4Cz1Mm7W5RWpMoeMUFafVPjtvPwkLaF5PGJN+4OOdkW4ULKkP.GczQrjkrDjTRIYTK9rBEJL3jt4latgHhHB.bsZ734N24ZUQZkyN6LV9xWN1wN1A70WeE5Zpt5pQbwEmAamotSgdvG7AQLwDiQUOozmvBKLr7kubjc1YioMsoYx8ikVZIV3BWHN9wOtIMAcZy3F23PrwFKd629sM4cXPu5Uuv9129Pm5TmL5q0P0Iz1ChFP.FZgFHhHhLKzbhdTb68zWZtpYkhr.dl5N50bVWM0jUVYEV25VmQmso.Lt66RhDIX9ye93fG7fBsv8hXPCZPX8qe8H0TSU3r3UaYvUnKu8a+1XyadyFU4CPUVYkUXNyYNH5niVnrC..Pd4kmQ+9DYjQhniNZrvEtP3jSNYzWulb0UWwRVxRvoO8oaU+L+y+7OGu1q8ZF80M3AOXi54Ql1zlFhO93wLlwLLK0+Te80W7C+vOfScpSYT+akryNaTPAEXv1wxE.YtYms1gt20tg6chss6nRhH5VURjHAuzK8R3bm6bHpnhxrzmQDQD3u9q+B6ZW6xnJwSm6bmyf6pZUuWh4Mu4gctycBu7xKSdr1ktzEbricL79u+6KbP.ehSbBgZmobeO1XiMXYKaYXqacqlsrpzccW2E1wN1AhM1XEtDFnM93iOX6ae6XUqZUspum2L6ryN7pu5qhDRHALtwMNSted9m+4MorcbXgEVaV1FqiT.ADd3g2llU0nauzwtXiR2zwQGcDKaYKCKZQKB+6+8+F+zO8SHojRBJDbRecvAGvce22Ml5TmJt268dMo5x9ku7kgmd5od2s2CcnCUsHPLnfBBG5PGBqd0qFabiaDQGczBkVXF9vGNl8rmMlwLlgQGQ6+8e+2nwFazfsq0rfsRkJE6d26FwEWb3q9puB+4e9mnjRJwn5igMrgg4N24h6+9ueyxjT0rAO3AiXhIFbzidTrxUtRricrCiplk5kWdgYLiYfm+4edyVJOpO8oOH0TSEabiaD+xu7KH5ni1fWiyN6rQUajtQozRKUYPunOicri8FvngHhHhTUN4jiP+dZCcefkUVYFreL0fdsfBJvf8sUVYkASW956Z+0e8WwgO7gwu7K+B90e8WEJqIXJ6BjQLhQfyctygCbfCfksrkg8u+8iZpoFgudIRjfIO4Ii4N24hQMpQYzu+EUTQF76k94melb1pRWdvG7AwTlxTvxW9xwhW7hQ4kWtAuFO8zSLkoLE7Nuy6n1jXFTPAYvZ7Y80WuIMNsxJqvG7Ae.l6bmK9oe5mv+9e+uQ7wGuvOCYyod1m4YdFLqYMKyRvoC.7ke4WhG9geX7K+xuf0u90ihJpHCdMlxmO80WewF1vFPVYkE9lu4av5W+5QVYkkvWuGd3Al7jmLl5TmJhJpnLocHXxImrP+eRibjizn6ahDg4XGhRDQ2NqKcoKXO6YOHwDSDqXEq.aYKaAEVXgBe8ADP.39u+6GScpSEidzi1jxvVomd5F79IzbdHaNKDrrksLrksrEHSlLC99Xqs1hG3Ad.L6YOaL1wNVi92gbzidTgZWqIPHu+6+9wTlxTve7G+AVwJVAN9wOtQcuxVas0Xlybl30e8W2rEXyM6EdgW.yd1yFaXCa.qd0qFm9zmFM0TSBe88nG8.O0S8T3Idhmvj1XcZyK+xuLhJpnvu7K+BV6ZWKxLyLM30zVlwdqs1ZE5diuQXJSYJs2CA5VHRTH5SYqhjKrQ7+cfqp7XodZIdqwYddna5VOkTRI3Dm3D3rm8rnnhJBkVZonzRKE1XiMvWe8U4eBN3fwnG8naSRwQFqBJn.rqcsKjYlYh7xKOjWd4AKrvBDXfAhfBJHDTPAg90u9gtzktXxuGu4a9lBU2HiO93MaK3rBEJPhIlHN9wONRM0TQIkTBJojRPM0TCbzQGgKt3Bb1YmQngFJ5cu6M5cu6sYIhAEQSM0DhO93we+2+MRM0TQokVJJqrxPUUUEb1Ymg6t6N5Tm5D5QO5AF1vFVaR4oPSEUTQHmbxAETPAnvBKDJTn.1Ymcvd6sGt4lavKu7Bd6s2sIo4Sh5n5Y2f5KVy+ZlhWufIht80wlw3PMYjhxiGxurS3Zjsc0vP5lO0VasHyLyDETPAH+7yGUUUUvN6rC1YmcvImbBd5omvKu7B94mes5R.PCMz.N24NGhN5nQ1Ymsx6It95qGN6ryvYmcFt5pqHxHiD8t28F8pW8BN67M2+9tFarQjd5oijSNYk+IqrxBt5pqvGe7AAFXf3Nuy6D8u+8uCwByUZokhSdxShyblyfBKrPkOCoBEZp98YJ...B.IQTPTIT9bA94meXvCdvXvCdvs4+7owFaDYjQFnfBJ.ETPAnrxJC1ZqsvN6rCN5nivCO7P4mOs0Vaa0ue4latH5niFwEWbn3hKV4yF4jSNo1yPGQDQf63NtCyZfaS2XrmgndY3X7mzvS7MQD8l+dUnhZu9T4+o2mSvc6a++81TGSxjICQGczHwDSDkVZonjRJAUTQEvc2cG95quvGe7A95qunG8nGXfCbfcHtGv3hKNbjibDb4KeYjWd4gBKrP3pqtpb93CJnfvHG4HaUKDcDQDARM0T0aaBO7vQJojhdaiwn1ZqEm9zmFm3Dm.W9xWV4yeHWtb3ryNCWbwE3latgt10thd26did1yddCaMRpt5pwoO8owoN0ovku7kUdem0We8vc2cGt6t6vau8FCbfCDCcnCsMedvUnPgZ22cwEWLrwFafc1YGbvAGfGd3A7zSOge94mYKPfI5lAli4jmAD.QsS5ZW6pAS+Ld6s2JCFAhHpi.FP.DQlhiMynPMomrxiGxOuC3ZW53kgcHhHhtQfAD.QjofAD.QsNIkTRBkoYmyblCVyZVyMfQDQDIFywbxyUYjn1AqacqSnZQy8du2KCF.hHhHhHhHhHhHhHpUXQKZQB0Nll1IhtUjIkqE0LkBv3PjHwcnCcH7lu4aJTa4MePDQDQDQDQDQDQDQllZqsV7ce22gMu4Mav15fCNfwMtwcCXTQDQ2X05J9hDQ5UJojBtq65tfqt5Jr0VaQEUTgv0eH6s2dDUTQ0FOBIhHhH5F.MqGkFeUKiHhHhHhHhHCZEqXEXYKaYvYmcF1XiMH8zSGW4JWQnqMpnhB1au8swiPhH5FOSKf.XJBfHgbxSdRjc1YiryNai9ZG23FGbvAGZCFUDQDQDQDQDQDQzMSzLFaawbzSDA.fCe3CizRKMS5ZYF6kH5VUr3jSTanScpSYRWmkVZIdu268LyiFhHhHhHhHhHhHhH5VWl5bxGYjQhYMqYYlGMDQTGCLf.HpMjodyGu8a+1XvCdvl4QCQDQDQDQDQDQDQDcqo7yOeSJa8ZokVhe9m+YVt.HhtkkIEP.rhAPjg0PCMfye9yazWW+5W+vBW3BaCFQDQDQD0dQimXPAyuoDQDQDQDQj40oO8oMoq6se62FCYHCwLOZHhnNNXFBfn1HwEWbnt5pyntldzidf0t10Bqs151nQEQDQDQDQDQDQDQDcqGSIi8NiYLCtA8HhtkGCH.hZiXL27gu95K9tu66PrwFK5V25Va3nhHhHhHhHhHhHhHht0iwLm7CaXCCQGczXCaXCbC5QDcKOqLkKhI3ShLLYxjAas0Vclk.b2c2w.G3.wXG6XwK8RuDbxImtAOBIhHhH5FCIRTujAnfkL.hHhHhHhHxLKqrxBVZoknolZRqmOzPCECZPCBSe5SGO3C9f2fGcDQT6GSJf.HhLrktzkhktzkhJpnBTVYkgxKub..3hKt.WbwE3lat0hIGmHhHhHhHhHhHhHhHiWRIkDjKWNJojRP4kWNprxJgs1ZKb0UWgqt5JbzQGauGhDQT6BSKf.zXC8v0zjHcq4..fHhHhHhHhHhHhHyAlysHR6rvBKfmd5I7zSOauGJDQTGFVzdO.HhHhHhH5VbsHBh4zWRDQDQDQDQDQDci.CH.hHhHhHhHhHhHhHhHhHhnaAYRAD.2OODQDQDQDQDQDQDQDQDQDQcrwLD.QDQDQDQswznjAnfgXLQDQDQDQDQDQzMBLf.HhHhHhHhHhHhHhHhHhHhtEjYojAHQqshHhHhHhHhHhHhHhHhHhHhZuvLD.QDQDQDQssjndHDqfkL.hHhHhHhHhHhnaHLs.BfoH.hHhHhHhHhHhHhH5FBIZLI7JZwjzSDQDQj1wLD.QDQDQDQDQDQDQDQDQDQzsfX.APDQDQDQDQDQDQDQDQDQDcKHSJf.XECfHhHhHhHQIQhFo2TlcSIhHhHhHhHhHhtgfYH.hHhHhHhHhHhHhHhHhHhnaAw.BfHhHhHhHhHhHhHhHhHhH5VPlk.BfkL.hHhHhHhzIMJY.Pg71mwAQDQDQDQDQDQzsYrp8d.PDQDQDQDQj4xYi47ngFZ...N3fCn28pGsaikpppZDeBIp7Xu81aDVnA2tMdHhHhHhHhHht8iIEP.JTnwKvTD.QDQDQDQD0Nqt5pCe9R+ZH++8PqCcHCrcMf.NebW.e8JVsxiezGYFLf.HhHhHSilyAeKljdhHhHhzNlg.HhHhnaI0PCMfLxJSjpLYXhieBs2CGht8VKl7x1kQAcafzyLKkAC..P3RCSmssfBJDwm3EUdbWiLbDP.9aVGOoJKM0NN7v083gt40wOwoPs0VK..ryN6vcLrA2NOhHhna8ry8raDtToHjNGLr1ZqauGNDQDQDcSEFP.DQDQzsTJszRQpoICYlYlnwlZp8d3PDQzMPokVFpcr9BHfib7SfMs4sp73E7tuo4Of.RMck+cKjHAgERHl09mZ+UWc0gkuxUC4xkC.fd1yty.BfHhZCTd4kiyFSLH1XiEAGbvH7vjB2c2816gEQDQDQ2TvrDP.rhAPDQDQsmZrwFQVYmERQlLTZok1dObHhHpcRZomgx+tDIRPXgEhNaapop9t2WZXgZVGKM0TSHcUFOAET.vN6r0r9dPs+ROiLUFL...gK0794HhHhTWiM0DjkVZPVZogN0oNgvkJEcNnffUVx88FQDQDQ5BuSIhHhH5lVkUdYPVZogzyHCzXiM1dObHhzAIRzHDhY8NkZinZFBHv.7G1amc5rsxR656de+8yW3nCNXVGKxkKGy6MeUkG6hKtXV6epigTkktZGGgdxJEDQDYdURIkfSURI3bm+7HzPBARCSJbk+9VhHhHhZAFP.DQDQzMUZpolP14jMRMszvUtxUZuGNDQD0AQc0UGxM2Kq73vCWpNaaQWoXTd4Un7XosA6paqs1Zz6d0Cyd+RcrjpLMxzDLf.Hhna3ZngFPxojBRNkTfWd4EBWpTDX.A.Ksvx16gFQDQDQcHXRADfl6mGVx.HhHhn1ZUTYEJyF.0We8s2CGhHh5fIiLyFxUI6SDQ35dgYkowh3FNWDWxDISkLDf6t6F7nSrdVSDQsmJpnhPQEUDr0VaQXgFJjFZXvImbp8dXQDQDQT6Jlg.HhHhnNrjKWNxI2bQpoICEVXgs2CGhHSllgPLKY.2poI4xQIkTJbxQGf81auYu+qqt5PYkWAbxQGfiN5nVaSZomgZGquZ4dJZjl26nW22qu95QYkWNb1ImLpu+VYUUg5qqd3t6tAKrvBy93prxJG1aucvVas0r22W8pWEUTYUvImbzrWNG..ps15PEUVAb0UWgs1XiI0GUVUUH+Bt98mHMrN1eNhHhtcRc0UGR5hWDIcwKBe80WDdXRg+96GrPh4+2GRDQDQTGclV.AvTD.QDQD0FpppqBxRKMjV5oi5pqt16gCQDQZQRWLYrycuWjQFYgBK5JnolZB..N3fCvau8D2wvFBh5ttSct.95Ss0VGh9uOEN7QNFxJqbPUUWsxyYiM1fd0ytigNjAgQNhgAK+eKzsrzx35swZqQmCJPkGuuCbXbwKkrxiSHgjT68a66buXO66fJOdf8uuXnCYPF83tY0We83699+ixiCN3NiIeOSnEsqzRKCqcCaV4wSbBQAogEB.tV.Nr+CdDb5yDCJszxT1FWb1YLhQLLbu2yDfWd5gZ8WSM0DNyYOO1+AOLR5hIiZqsV..XgEVf.72WL1wLZLl6bjFbA128dO.RIUYJe+dr+wLA.PJolFN8YOGxHiLQ5omIJq7xgDIRfO93M5bPAhvkFJtm6NJSJ.AJ5JEisuy8fjR5RnvhJBUU00+YtkVZI7ziNgAMnAfQdGCEgEZHFc+WbIkhn+6SgSbhSgbxMWb0qVqxy4latBe8waLvAzOb2SXb5L.Az7mWUVYUpc9BJn.rxucMJO1BKrDO+y7jPhDNoIDQT6o7yOeje94C6s2dHMzvPXgEJbvdyevl0VigXKQDQDYpXFBfHhHh5PPtB43xWNOHKMYHu7yu8d3PDQjNjQlYg078+LRNkT054qolZPFYjExHirvusk+DSYxSDSeZ2uv8+IO0YwpV8ZTaAaUU80WONaLmGmMlyi8efCg+4K9rvKu7TsLDPngFBrzxqW2f28dO.xHiL046Yzm3jpcbe6SuDd7pMYjY13vG43JOdJS1Us1tKkbJp0tY7fSEJTn.qei+F15erMsdMUTYkXG6bO3D+8ovhdu4g.72O.bsEm9yV5WiKkbJs3ZjKWNxNmKi+yurdrssuar3O7cgmd3QKZWy18d1OxNmbA.vPGx.Q80WO940tQr68r+VzVEJTf7yu.je9EfSc5yhCbnihW9EdZDYDgqy9WUWo3hwZW+uhnOwIgb4x0ZaZpolPAEVD1112E1112EF0HGNdgmaNJCFDC4O11Nw5V2lTqjRnpxJqbTVYkiKdoTv124dvLenogwdmirEsKoKkrZ+7RSYmykQ14bYkGGbmChAC.QD0AxUu5UQ7Il.RHoDg+96OBOLovWe7g+e0DQDQzs7XNRhHhHhZWUSM0f3SHA7Wae63XQebFL.DQTGX4l6kwGsjuPmACflpst5vl90eG+wesCgZ+e7W6.K8qVgNCF.McwKkB9juXY3p0VKx8+s.1..gG90Sc60Ue8HqrxVn9qYQDtTip8ZRVZpWRBhPGkj.UKcAd5oGvEWbFK8qVoNCF.UUZokguY0+a..jeAEh2cgejVCF.MUbIkfO5iWpxL5fltZs0hbx85KpcjQFA9pk+MZMX.zl7yu.rfEsDrKAZewkTJVzG9o3XG+D5LX.zlibznwJV0+BJzwB72rZqsN7ke8pv+csaTmACflJszxv29u9dbpyDSKNWJollviQ.fvakeNhHhn1FJTn.4lat3vG8HXa6bGHoKdQTachcuGDQDQDcyHSJCAvJF.QDQD0ZnPgBjeA4iTkICWNu7L3D5SDcyMM20U7eyeyopppZ7ge7WfJprRkuVXgFBF9vGBjFZHvImbDUUc0H2byC6ceG.YlUNJa2+ccaB94muXvCr+ZsuarwFwZ9geFG3fGQsW2Oe8AicLiBAFX.nSt6NJojRPVYmKN1wiV4NwN6ryAq46+Y0Vv2vkFlx+dYkVFFP+6qxiyO+7UaWbGQ3Rgatc8cvu0VaM7wauLtu4ngTko9BGKUkwiZsSkEX1au7Du26uDjQFYA..GczAL1wLZzydzM3fC1iyFy4wINwoPAEVjxqI4Tjg8evif0s9Mq7mKt4pq3tF6nQjQFNbwYmQVYmC15erMje9En75t7kyCYlU1ZM06mVZYn1+F8HGMZ0xtB8t28DCenCF94qOvJqrB48+994d22AQM0TC..jqPA9k0tQLvAzWclIBJu7JvGtjOGEpxWOVZokXPCr+XPCrevSO7.N3fCnpppBImhLb3ibLb47tdPCd7nOIdvG39PfA3uV6+7xKe7Ee4xU6m0..AEX.XL24HQ.A3Ob2MWQokVFxLqrw11wtQEUb8Oa+s+quGgGVnnScxckul81YGFz+6yvJTn.m4rmS44bxQGQ25VWT68ZvCreZcrQDQTGGUWc0H1KDGtPBwi.CHPDtTovauZc2G.QDQDQczvRF.QDQDcCSs0VKRK8zgrzjgp+eKZ.QDQ2bHt3S.kTRoJONpwMFL6m7QaQZaumcuaX7iaLXsqeypkY.N3gNpVCH.EJTfO4y+JD2ERP4qIQhDL6m7Qw3G2XTKfRBKzfw.GP+vjmzDv+c8aF6Xm6A..G8XQqVeFgJK.uO93Mdq49OUd7pWyOo1hD+hO2rQ.5XQkMUxTYm+6pqt.u7rkKJtb4xQZpjIARLoKo7u2+90G7OeomEN5v0quwcMxHvCMs6Guw7VfZKL9p+te..W66YSYx2ClwCd+vZqsV44CWZnX3CcvX9u66ibubdJe8KkbpZMf.RUiraPyACfKN6Ll+a8ZHhvUO3FhLhqsK3m3DFGV42tFDe7IBfqUZG9k0tI7Z+ymuEuG..+5V+SbYUFOAETf3cm2qCO7nSsns8rGcCSZhQgk9UqDmO1Kn70SLoKo0.Bn5pqFu6hVLprxpT9ZVXgE3Ye5mrEkBfPCIXz+90GL9nFK9zO+qvEuz0xxBUUU03O29tvS7nyRYaenG75k9hBJrH0BHfALf9hW54eZs90JQDQc7IWtbjU1YgrxNK3hyNivkFNBI3fgM1XS68PiHhHhnVMVx.HhHhn1TJTn.ETXA33mHZ7Ga6uPbweAFL.DQzMghOgjT63GbpSQm0vcIRjfGYVSGgDRvJesTRUlVa6wh9uUKX.rvBKv+7kdVLgnFqNqouVas03IerGF8qu8tEmyYmcB93i257qCYpr68s2d6g+96mNaqo3pW8ppsf8RCS6kKfbyMOTac00hWeZScJX9u4qpVv.zLqs1ZLjgLnV75VXgEXtu5Kg+wrltZACPyryNawju2Ip1qUasZO0HmpVRK9t3hy38Wv7aQv.nJO5j6XtuxKBGc75i6nOwIQ1pTJGZVSM0Dh9DmT4wcxc2vGsn2VqACPyr0Vawju26VsWK4Tz9mo15erc0BF.arwFLu23UZQv.nJGcvA7Ruvy.qr556ahzSOSc1dMyBDgqir.AQDQ27ohJqDwb9yg+ba+EN4oOMJtjRZuGRDQDQD0pXRAD.SvmDQDQjgTWc0gKdoKgsuqchCd3CiryIGllvI51UZtnt7+J3lRYlY1J+6VHQBjXg9KdbRjHQsEPt7xqPszcOv0JU.abSaQ4wVZok3Me8WFiX3CUnwzS7XObKBZ.8svr0UWcHqrudoLPZXgpyfNvTIKc0S49gKU6ADPJxZ4BuO8oc+XlOzCn2wjiNXeKdsG6eLSLjAO.8Nt7xK0yRApVlDTklKzsqt5Bd+ELeDTPAn29G.vImbDS4duG0dsLT4yMMK1KjfZom+wN1QCGczQC1+ZlBmswlVF7CEWbIXm6ZuWuMVaMVz6MOz+90GC1+93sWH3NGjJi8rzYaSIUFP.DQzs5ZrolP5YjN1692G18d2CjklLzXiM1dOrHhHhHxnwRF.QDQDYVUzUtBRUlLjcNYC4xk2dObHhHxLI3fCBImRp.3Z0H9M+a+AlyS9nvBcjk...drGYlXFO3TUdrp6db.f8cfCqVPBLt65Nw.Gf30cc+8yW3kmdfBK5JJeM8svrokdlp86lBObsuX8sFpVt.z23QyEdOhvkho8.Swf8ulAUQvcNPb2SXbF75JszxU6Xu7xyVzlxKuBbkqTrZu1yLmm.AEngCFfl08tEoZGe47xqEsI.+7EK3ceSkGGVHgHTemUVpGbAZqTLrgMuETeCMn73wMtwnrrFHhwNlQoVvOTSMWENnkfvP0LofUVYEBN3fZQaHhH5VGkVVY3zm8r3bwFKBI3PP3RCCt4pas2CKhHhHhDhoEP.ZridLyanBhHhH5lL02P8HiLyDoJSFpnhJZuGNDQD0Fnm8naXu66fJOdu66fH+BJDO9+XlpsqpUkc1YKryNa054pqt5vusk+T4wVXgE39zHs1Kh.Bve0CH.8jV6awhv2FrqtSUv.BPycX9y+rOkNKACpJSM1w8O1+XVBdcpua2CM3N2h1n42eBL.+wfLh.z..snbMjmJkOAUai9JqCZSokVFV6F9U0dsPUojT..b47xGG9HGW4wVYkUF8moF+3FCF+3FidaSSM0DRO8LTYbzYXsUb+VPDQ2NnwFaDoJKUjprTgmd3ABWpTDTfAAKszx172aNE7DQDQjohOwJQDQDYxJtjRtV1.H6rPiM0T68vQm1vl2T68PfnauMwYcs+7+rWYY.HKCital4zeHy2XhLZCenCF+8IOCNweeJku1EtPB3Ml2BP+5auwDhZrnu8s2Bs3z..GK5ShxJ+56Z8QNhgo0cstgXkFKDq9Vj+aDo48zR65ADf2d6Eb1YmZQapu95Q1pT5B70WeDZW32TSMgLx3500dmbxQzydzMgFWptX+93sWZME8mhFAyvTl78XzkTA6sS8cSeEUVkQc80We8njRKCWo3hQwEWBtRwkfKdwjQhIdQ014+..QnwN+OlyEqZkqg6ZriFcpStaTu+hHqryQswhTi7yQ0Vac3nG+DHyrxFUUU0HnfB.gFRvn28r6s3yyZRgBEX8a72vLl9Tugr3Sj4iZ2O5a7E59bDQ2z3JEWLtRwEiXN+4QngDBBOLovYmct8dXQDQDQTKv.BfHhHhLJVfFgORxCAfLwd2ekF9BHhH5VFu3yMaHWtbbxScF0d8yc93v4NebnScxcLwILNLgnFKr29Vll0UUBIljZGeO2cTlzXJ2burx+ttV.9lISkEEuSt6lYewhqnhJUKaEHMLsWRBROirPSpDHc8o28Tn9O6bxUsEhtW8r65sjMzrlZpIHKsLt93RGKfspe+wc2cCi7NFpPiKUkeAEn1wtnmedTSMWEIj3EQbwm.RN4TwUtRwnhJE6dKBJn.giNndInHoKlrZGOx6XXBNpMNhlEHzlyFy4wpWyOhxJq7VbNWbwYbmidjX7iaLvGu8RqW+11wtwV+isAIVHAy5gllwMvIhHpMQ80WOtTxIiKkbxvGu8FgKMbDf+9KzuilHhHhnaDLo.BPggaBQDQDcKlRKqLDgEIAekjGrBM1dObHhHpcfs1ZKdiW6kveepyf0t9Mi7yW8E+sjRJEqc8aFa8O1Nl9ztObO2cT5bxvSJoKo7uagDInyAEnQOdZrwFQ9ETnxi02ByVdEUn9h02Fjc.jkl5KTbD5n7EnYp4u28r6B0+ZlgC5YOD65xLqrQ80Wuxi0UYUP0wUDgK0f6Vcs4xZTh.bwEWZQaJuhJvp+te.wbt3fb4xMXeZgEVft1kHPhp7Ylt1kHZQ6xPixhP.96mnCaiRKyzDZOvOzTrwEO9hubEpELHpphJpD+4esCrsssSL7gOTbeSdhHDUJsCG83+M9uq6Z6j7CcnihGZZ2OyR.DQTGLETXgnfBKD1YmcHrPCERCKL3nCsLq7PDQDQzMRLCAPDQDQ5TiM0HxN6rQpxjghKoDDHKZgDQDAfgN3AhgLnAfXNWrXG6ZuHtKjfZmulZpA+meY83Tm9rXtu5KAWcU8EEtwFaDWo3RTdrWd4oIs3y4WPgpsfx5ZgtA.j0J1U2hJUMBH.o5Xgh0bAkiHboZscsn+0HPBhLBwttjSQl5ueZYbUPAEhpppZkGapKlddZDP.gFRvsXr7+srUhRJoTsd81YqsvKu7.d4kWvO+7A94quXPCneH0zRWs.BnacMxVbsUpR1EvEmcFN4TayBvn5OGbvAGf+94qAulqVas3a9WeOZpolfkVZIdjYMcbmiZDvJqrDomQVPVZoi8tuCh7xu.HWgBbrieBbrieB3i2dgd1ydf7xKejXRWD.WK.IdwW3oYv.PDQcfUas0hDSJIjXRIA+8yODtTovOe8ynKEODQDQDYNv.BfHhHhZgxqnBHKMYH8Lx.MnQ85kHhHB.PhDIX.8uuX.8uuHu7xG6bO6GG3fGF0U202I5Icwjw+2xVIVz6MO0V7xJ0ntx6m.Knp1bjicB0NVW6He.fj0bWcGtX6paigpAcfERjfvBIDcztqOV7nScBt6taB1+W+5r0VaPPBlUETMf.rvBKZwhzC.jhFAaP.AXZADv4i8BpcbO6dWU92iOwjvh+3kp1Nj2AGb.ibDCC8rGcCcqKQ1hfGoYWbG6Vsi6ZWTOf.ZrwFwUuZsJO1T+Lkgb0ZqE4jStJONrvBQnE2o95pGM130xvRuvyMaLpQLbkmq6cqKn6cqK3dl33wQNZzXKa8OUl4KJnvhPAG3PJaqERjf+4K8rn28rGlouhHhHps1kyKOb47xCN3fCPZXggvBMTXuc5uzJQDQDQj4jYojAv3ZjHhH5leMIuIjSN4fTSKMTTQE0dObHhH5lH94mu3od7GAS+AtOroe62wt189TdtjtXxX66bOXJ26DU9Zpl95A.b0UWM52yqd0qhcum8q7XcsP2MSlFK3szvZaCHf.BL.Xmc11h1TYUUoVYNHhHDKSETWc0gryVkEhNzPfkBVahSI0qGP.AEX.vVaa43RyrOfmd3gP8spR7hWBW7Rob82qfBDd4kmJOdiaZqpEL.8rGcGuzyOG3gGcxv88+a2wCbsfnvKOUe7YokVBarwFke1RgBCWJBLEokVFPghqOqHQHXllvUWcAu3yMGr68d.0BF.UYoEVfwL5QfQMxgi+9jmF6a+GBYjQVnppqF1ZqMnacsK3Ql0CgPBNHyxWKDQDciUM0TCtP7wi3SHADX.AfvkJEd6k2LqAPDQDQs4XFBfHhH51bUVUUPVZxPZomdKVfFhHhHigyN6Dl8S7OP.96G99e7WT95WH9DUKf.7viNAKrvBko6+hKtXi98Zu6+PnlZpQ4wctyABaswFc1dUWva+82O3nCNXzum5SwEWBJq7xUdrtpq7lZoKHszyDxUYgnE85prxpP94Wfxi0UYLH0TUebcES3mIa822lZGOyoOUk+8JpnRbwKkrxis0Vav7eqWUu+LS4XSV5PVZYn73t10HZQajHQB7yWuQlYkC.fZkjBQHWtbj3Eujxc.gSN4HBI3NqkwhlYZBwK8D8ue8oEY1.swRKr.2wvFBtigMD.bsu24jSNBKDL.PHhHpiMEJTfryIGjcN4.mcxIHUpTDZHg.asokArGQDQDQlClV.AvTD.QDQzM0jKWNx8xWFxRSFxufBL7EPDQzsk1wt1K9oedcJO9cm+bQe5cOM30E0ccmXy+5uiJ9e0zcMWDUqrxJ3i2dg79eKTcd4Yb+tnJpnRrMMRg75aAxyufBQUUUsJs07mc.RUvE5Wy1EQ3REr+U+6ghdcImRpFbb0TSMgzyHS0dsbx8xB0+W+8QlZkKfHBWJF7fFfxiK5JpGfA8ue8QnfA..3u19tT6Xcsn593iOJCHfxJsLTYkUAmc1IgdON7QON9lU+8JO9gm0zEJf.DMCAzLGbv3SQzp8EQN...f.PRDEDUt3hyF80PDQzMGprppv4iMVD2Et.5bPAAogIEd4omZuwZLG7JzbN5IhHhHRGX3kSDQDcajpqoZDW7W.+412FN9IhlAC.QDQ5UHgzYnPgBk+IyrxVnqShDIPgJQRt11wa96+0qQ8EWRIH13hWn9t7Jp.u+h+LTZoko1qqu.BHkTUeQb6bPAJz6kwH0zzXmiqqchuJKnrERjfvBMDg5eM+ZPzcldxpTt...hPKWW14jaKxRPG5PGCW8pWUn2CYokA9zu3qT60d3Y8fpcbc0UmZGGjf+LHoKlL96SdZ0dst1kVlg...70WeT92kqPA10d2uVamlpolqhMs4sp7XqrxJbW24nzZaSUkeN3jiNB2c2MgdOHhHhzG4xkiLxLSr+Cd.ry8rajhrTQCMzP68vhHhHhtEAKY.DQDQ2hSgBE3x4kGRMMYHu7xq8d3PDQzMQBoypuCo229ODF8ntC3pKtn2q67wdATYkUo73fBJfVzlAz+9hyFy4Ud7+ccaBcu6cEVakteL0xKuB7AK9yP14jaKNm1Vn6loYfLXi.6L8qTbwpU1C..BtycFy7gd.s1dU24+Vas05LnCTMf.BJn.gc1IV5AVVZWu+cyUWgWd5gPWWxob8.BvFarAAEXK+YglAa..PYkWNV+l1BdpG+Qza+mzESFexm+k3pWsVkuVu6cOQO6d2TqcZ9YfDRHIL8G39zaeG8eeJrxuYMJKsD.WKXSBPkfIQUCaHCB+4esCkGuqcsOLp6XXvGe7VmuG0TyUwh+juPsRLvvG1f05txu5ZpQs1YishkgCHhHhLFkWd43rwDChMt3PvctyH7vjB2c2816gEQDQDcSLSJCAvJF.QDQzMGpstZwANzAwQO9wXv.PDQjQyAGrGAEn+JONu7K.ezR9BD2ERPsEosY0We83.G5n3+6qVoZu93F6c1h1dWiYTpkR1yHyrv7d6EgzROiVzV4xki+9jmFK38WhVCF.6r0VDX.92hWuYkUV4pc7t189PEUToxiKsrxz7RPRWLEblydd09Ss0UaKZGv0B9tzToF2GRvcFVok.annqTLJu7JTdrn6x+JpnRTXgEYzWmb4xgLUB.gPCIXXokV1h1oZPJXiM1.Kjbsmxem6Zu3K9xkq12qZV0UWM9yssSr3OYopEL.gEZH3Ee1Y2h16rSNgN0oquXFIj3Ew288+GTPAE1hwbtWNOr4e62wW80eSK1cjVas0vBs70.v0xJCidTiP4wUTYkX9u6Gfyc93fBMxqxxkKGG+DmDy+cee0BHBWc0E7PO3T0Z+q4miJojRw9O3QT9uEtZs0hZqsNscoDQDQFsFarQHKszvt22dQLm+b.nk26EQDQDQhfYH.hHhnagYms1gwdmiA4ke9HUYoh7xO+VLg3DQDQ5yK97OCVv6uDkKLalYkM9nO9KPm5j6Hv.C.t6laPhjqsXoWJ4TaQZleh2cTXHCd.snesvBKvS8D+CrvO3iU9ZYmStXduy6Cu7zS3m+9BO8nSnjRJEYkcNnjRJUY6BWZnvVasEIj3EA.PXgEBrvBcGu694q56P7KmW9X1O6KCO5TmPs0UK5ae5Md0W94TqMonQp1G.HhvCWq8e94W.polZt93SGKXepZrS70WVMPsqSkrCf95eMkat4o1h0Gd3ZuLFHSkraPW6RDvGe7F6ceGD..m5zwfyFSrHv.7CAFX.vBKr.EUzUP5YjIpqN0Ky.CdPC.+yW7Yfs1p8rdvvF5fv12wdTd7d22Awd22Agu93MhLxvQgEVDxHirPspTdAbxQGgGd3NxLqb.v0B5jMt4sh.72Wz+90G3rSNo16wiLyGDm7jmVYeTU0UiO9y9R3fCNfPCoyvau8BEckhQt4d4VT1Ir2d6v6Lu4Be71KsN98zSOfkVZIZpolT9Zq969A7S+m0BmbxQTRokgUs7uP3r9.QDQj9XkUVgPBNXDtTovMWcCaN6pACJ.hHhHxTv.BfHhH5VbRjHA96meve+7C0TSMPV5ogzROcgqKvDQDc6MogEBdtm4IwJV02o1qWRIkp1hzqMSX72kdS47cqqQhW5EdF7i+m+Kpt5quf5EckqfhtxUz50DTPAh4+VuFdkWe9JesvCWpdGG8sO8Fa5W+8VjUCJtjqk92CKzfaw0n4h2C.DotVneMVvdogo8EdOEYZFP.5ebqqwhnARPxolpFiqVdc0UWcH6ryQ4wgEVH3dumIfyFy4U9y2lZpIjYV4nbQ40l6aJSBOxLePHQhtygfOxLmNRHwKgLxHS0d87KnPjuFYJ..f.CveLu27Uw11wtU68dq+9eAar1Z7y+3paw03t6tg48VuJ91+0OnVVUnlZpAIj3EUFDIZxEWbFu1q7BZ8yBMyVarA8pmcGmO1Kn1qWac0gZqqN3ryNAO8PrR4.QDQjt3latgvCSJBN3NCqsx516gCQDQDcK.Vx.HhHhtMhCN3.5UO5Il7jlDFwvGN70GeZuGRDQDcSfQMhgiO58eGLzgLPkoSdcQhDIne8s2Xduwqf47jOpA66QOxgiu7yWB5e+5idamUVYEt+6aR3SW7BQokVlZAPPDR09Bv2LogEBdkW94zZcgG3ZoReU0PiMhz0XQqc0UWfWd4oVu9TkowN3WGiGUSe+1Ymc5sLGn10oYFBPKKru1bojUOKGns.IHszyDxUI6AIMzPfqt3B9+9rEi6X3CwfuGQDtTL2W8Ew+XVSWuAC.v0R2+y+MdEbGC++m8tuitItx9Cf+URX4pbSx8lrksALFSuEHgNg.g.gzH8dur69aS1jM8DRiPZPJKoRJDfPI.gPuSn26EWjk68duHoe+gvim2LiZFaDAteNm8b3IMZzyRdieyctu6cn18XGz.6Od2290PngDLF40NbQ+dmVqz9C..RNodhO4CeGLoaXB188wWUpv8bW2N9p49QH4j5oMOV.f+4y8jHkTRVxmSqVqmLADBgPH1R2Tn.wpUKF+XFKl33m.hWmNJY.HDBgPHcZjYtCT2fOTNshuc2suqB6aDJvSdsd0oNwHDBgPHWZTac0hLxPOzaHSzTSTeukPHW9ZF21s6pmBD.TRokgSc5yhJpnRTdEUfpppZ3s2dA0pCDZTGH5UR8.AGjzkbc6orxJGYkStHqryA4jSdvGe7FwpMZDq1XPjQDN5V2rTj6ps15PAEVD2qK5nhvpkod9LZxDN+4SCkVVYn95a.JUpDA3uenWI0CnToRtiqkVaEFLjMyq0SOs9MvufBJD0xKAEhWWrRdinMjU1nkVZE..t6tRDcTQZ24Lfk1zPyMaokMnPgBatK14Ku7xG0egVFfLY.wqSbBAr50rd7yKXwbi+x4Nalu+prxpvgO5wPVYmKpt5pA.fZ0pgF0AhTRNIDgClTCBkad4iiehSgRJsTTVYU.2cWIToREBMjfw.6eegZ0Axb7Yn2.1wesaTYkUgPCIXLzgLHG5ygpppZjSd4g7xq.jW9EfJqrJnQiZDZHAiPCMXjX7w2gJw+kTZYPudCn5ZpAlMaFd6skeWM7vB0oOWjqNr3ktDW8TfPHWFxWUpfNc5PrwnkYsHR4+t55P400d0N5ctQuPP9HcxwQHDBgPtxwiu3ZXF+0yP5M6fszwZY.TIBfPHDB4JF93sOnOojB5cxIibxKWjQFYfhKoD6+BIDBgbUofznFidjinK4bqVcfPs5.Q+6aJ1737wGuc3xlOeJjKGI0yta2iyst0Mm57GlCdSf0FSzN74juXhNpNzqyQtY87qtA93s2hRlC+82OL1QOxNz6usDYDg6vUHA.KU4Acwo0oee7yOege94qCs6+cFAoQMBRC0d.HDBg37jKWNhLhHft3zgPBNXG90QgfmPHDBgzQ0wRH.BgPHDxUbjKWNhIpnQLQEMptlZPFYjAxLKCn4la1UO0HDBgPHcQRmWaLH1NvMbmPHDBg3X71augt3hCwEarvC28vUOcHDBgPHWEgRH.BgPHDhH9pRE5We6KRo28FYmaNHiLx.kVVYt5oEgPHDBoST0UWCJt31qJPwEqVW1bgPHDB4JQxjICgGVXHdc5PngDpjsTHBgPHDBoqVGJg.D2w.nExPHDBgbkHEJTfXiQKhMFsnxppBe65OKBSd9nanUW8TiPHDBgbQJc8YxLVWrZcIyCBgPHjqz3omdh3hMVnKt3fWd5kqd5PHDBgPtJGUg.HDBgPHND+8yOjt4dA8s1CDr7BPDxxB9JqZW8zhPHDBgzAkAu1E..PbTKCfPHDB4hRngDBhWmNDd3gC4xj6pmNDBgPHDB.nDBfPHDBg3jLISAJzbjnPyQh2+5aEomQ5H6ryFsZznqdpQHDBgPbBomQ6UH.u81KDRvA4BmMDBgPH+8j6t6NhUqVDeb5fO93iqd5PHDBgPHhzASH.AMM.piAPHDBgbUo.CH.L3ANHzu9zWXHqrP55y.UUUUt5okHy31tcW8TfPtp19e7aGUcr8yMtey4WQPCcDtvYDgP..RO81qP.wFqVW0zfPtp.+0itwgDCyyMg8m0k5oCg72NKdoKwUOEDIHMZP75zgHiLRnPtBW8zgPHDBgPrJpBAPHDBgPtn4latgDhOdjP7wiRJsTjg9LP14jCLYxjqdpQHjKCHSFaFDa1rYqbjDB4RkxJuB.Y.95qJ..zytmnKdFQHDBgb4O2byMnMlXP75zA+70OW8zgPHDBgPbHcnDBPX76nBD.gPHDBoMAoQCBRiFz+91OjogLQ550iZpoFW8zhPHDBgvi5.C.e+W+4t5oAgPHDxeKDX.Af30oCQGUznacy0rG6DFCdJEaIDBgPHNJpBAPHDBgP5RnToRz8D6N5dhcGEUbwHC8YfbyKOppAPHDBgPHDBgPtrW2Tn.QGskpAPfADfqd5PHDBgPHcXTBAPHDBgP5xERvAiPBNXzXSMB8YlIxPudTWc04pmVDBgPHDBgPHDBC+7yODebwAswnEt4lat5oCgPHDBgbQqi0x.DLlZY.DBgPHDGgGt6ARpG8D8r68.EVTQHc8Yf7yOepehSHWoSlfqXf9+ySHDBgPHjKiHWtbDUjQg30oCAoQiqd5PHDBgPHcpnJD.gPHDB4RNYxjgvBMTDVnghFZnAjQl5gd85Q8MzfqdpQHDBgPHDBgPtJgO93ChONcHVsZg6t6tqd5PHDBgPHcInDBfPHDBg3R4omdhjSpWHod1STPAEhzyHcTPgE5pmVDBgPHDBgPHjq.ISlLDQ3gi30EOBI3fgLgUyJBgPHDB4JLcrDBf5Y.DBgPHjNYxkIGQDd3HhvCG0UWcVpZ.YlIZrwFc0SMBgbwhZY.DBgPHDBwEyKu7B5hMNDWbwBO8vSW8zgPHDBgPtjgpP.DBgPHjK63s2diTRt2H4j5ExK+7Q5YjNJp3hc0SKBgPHDBgPHDxeyDVXgg3iSGBOrvnpA.gPHDB4pRcnDBfJP.DBgPHjKEjKWNhJxHQTQFIpo1ZPF5sT0.Zt4lc0SMBgPHDBgPHDxko7vCOPbZiE5hKN3s2d6pmNcNDFDdpnaQHDBgPbPTEBfPHDBg72Bp7QE5aJ8A8tWIibxKWjQFYfRJsTW8zhPHNDJ5kDBgPHDBoqWvAGLhONcHxHh.xkK2UOcHDBgPHjKKPID.gPHDB4uUTnPAzFcLPazwfpptZjdFY.CYY.szRKt5oFgPHDBgPHDB4RLkJUhX0pE5hSG7UkJW8zgPHDBgPtrSGLg.X2QOTKCfPHDBg3J3mu9hAzu9g9jRuQ14jCROiLP4kWtqdZQHDBgPHDBgP5hoVsZDuNcH5HiBJTnvUOcHDBgPHjKaQUH.BgPHDxe60MEcCwoMVDm1XQEUVAROC8HqryBs1Zqt5oFgP.fLYroPrYpkAPHDBgPHjNft0stAswDChONcve+82UOcHDBgPHj+VfRH.BwNppppQKsZoLTKCxfZ0A5xlKlMaFkwamu5V2bC94mutr4yURZpolPM0VK2Xu8xK3omddIcNTas0gFapQtw96menaci9OSSHNq.7O.LnAL.z29jBxJqrQ55yvUOkHDBgbIRKszBpp5p4F6JVSmszZqshyb1yiRJsLTac0Akt4FznVMRLQcvOeu3WWekUVEZ0X6ICmF0punOmWpb4v5wIDBgb4K+82eDuNcHlniFt0M2b0SGBgbITiM1Dpst1WmnJUpf6JU5BmQjKFkVVYb+aktoD956k1V8Rc0UGZnw1iAue94GbihAO4p.cneK2rvMzC0y.HWA6Uey2EEVXQ..HrPCAy8SmkKatjcN4hm+EeMtwi75FAdlm7QbYymqjr1MrYrvEsTtw+q+wSgqYnC9R5b3Km22gCc3ixM9G91u.p7wmKoyAB4JIt0M2P75zg30oyUOUHDBgbIxd12AwW7UeC23+4y8jX3CaHtvYT6169NH9te3mQ00Tinm6wdjG.ieri5h983+7xuApnhJAfkjK8am2btnOmWpr9MtErfEtDtwWN8cGgPHDWuIN9I3pmBDBwEYU+4ZwxV9p3F+Au6aBcwo00MgHcXEWRI3oetWfa70OgwhG4Au2Koyg+22Ler+CbHtwe2WO2NkjylPtbGk1KDhMTW80ykL...wGu0uoRM2bynvhJlarJU9f.5jKcYomgdlwIDebcpm+qTzTyMihbxuKROcAe1p6R+msYnOSt+cngDLkL.DBgPtxgfVFf3LLlP5bnOSCLis05kKojRY1YHQFQ3Ptb4cIyqCdnih47EyCFMZTxmOVswbQ+dTV4UvkL...wGerWzmyNpNx0FI7Zch2ErdbBgPHDBgb4G85Mv8ucyM2PLQGoUO1BJnPzxEZejJjKGQDQ3c0SOhSf+2k..IXi62RWkL3ccGAoQCkL.jqZzwpP.BFSEH.xUpxzPVLisU.EOxwNA93O8K3F+.22cgIeCctYubZomIyXJHYR6HG433SlyWxM9gdf6A2v0ONa9Z3G.R+7yWDTPZ5xleRQX.b0Qe2RHDBgPHNM9AXxWUpPvAEjUO12e1eFxImbA.fOd6Ml+28kV8XuXjeAEhO9y9BQICfat4F72O+PUUWsMCpoiRXBt5JuVgNx0Fwe96qJUHjfs92cDBgPHWMRXL3oTrkb0B9I8arZi1psXUSlLg+y+8MPiM0D..zEWr3Cd223RwTj3fxvIRf6tBUVYUnzxZukL6JShZB4RMpBAPH1fvLVyVAU6RQ.33m8Z1KaHuZVZB1cQ5hy1+g8JpnRTd4U3vGeWgLnp+.gPHDBgbQwjISv.uD5MdardpFarIjWt4wMNttvRN5V21NYRFfnhJR7XO78Ac5hCt0stAilLAEcBUl.gqA1UlP.N60FILvb5zQAliPHDBgPHVhaakUVE2XasIpxMu74RF.KGKslxK2v+9s3kWdgvBMjKou+oqm1vkjqdQID.gXC7y9PEJT.swDkUOV9k6c4xkiX0Fcm97YDCenXnCcP.vxtlwZYC4U6xHi1+tPgBE186hVasULi63V3FmnKnTEkdFrKFgVvJgPHDBg3bJnfBYB.X71X8T5MX.l305JrUxCbwvjIS3u10d3F6qJU3Udo+MTGX.bOVmQx...DebZYWSaBW5WSaab1qMpEAqGmRNVBgPHDBg.3b6nbgwWktYuW9g+8aQmtXgLgsWvtXzuiPtZFc2DIDafeFqoMlngat4ljGmYylYB5UzQGITpTYm97YpSYRc5myqzXxjIlEVDSzQY0u2ZSPAoA2xzlRW7Ly1RWTPSu36irDBgPHW1P3E4alJvojNeBCVnSUcuhqqIPPmK0zP47ZKTCe3CkIY.5LMzgLntjyqypibsQAoQsKe83DBgPHDB4xONUE7UTEyh1vUWNojRJE0VacbicE2Ld9UoW4xjg3hU6k74.g3pz4rUDHjq.Ue8MfBJrHtw1ZWCke9EfFZnw1OVJyxbYxK+BPiM192E+cXm1a1rYlpZPzQGIbuKHgRHDBgPHjqjoWXBA3L6dntndG4YNy4YFOrKSto8cknqMhPHDBgPHcV3uFee71aaVh44GeUO7vCDQ3g0UN0HNIQU6AWQBAvKwkiHxHfGd39k74.g3pPID.gXEYxq+iBX6.YklnRMyk+2D5qTINSPu7O.jEVXQn95qma7eGlyDBgPHDxka3u6gBI3ffJe7wpGK+cFRfAF.Bve+6RlSm9rmi6eqToxqJJE9z0FQHDBgPHjNK7SHf3rw5JaokVPVYmS6GarZg7NoVyEoygnp8PWTRYaMEUbInlZps82eJF7jqxzgZY.BqvmWp6yGjqL0TSMgsuycizRWOJpnhPgEULbWoRDTPZfFMpwfFX+w.6ee6v+g7hKoDr8crajg9LQYkUNpnhJgGd5A72O+PRI0cLjAM.l+HfvcXTB7VvQF5MfzROCtwG3PGg4XyKuBv523V3FGZngf9lRxcn4ca11N1EZ5B8DUu81KbsCeXhNlVasUr4stCtwwDcTnm8HQ..XzjIb5ybVru8eHjUV4fxqnBXznQDjFMHnfzfqaDCC8ue8womWFxJari+ZOHiLzixJqbzpQiH7vBEgEVnHhvCCwqKNz8Di2gOe6duG.0TSM..PiF0Xf8uubOWwkTBV2F1BxNmbQgEVDJu7Jv8ee2I.u+aR6+fGl47kad4y7cQXgFB5CuuKpt5Zvd12A3FqMlnPO5dh1bNZzjIru8eHblydNTbwkfRJoTTcM0.e71a3qu9B0pCDCdPC.Cb.80g1o+oQkyJBgPHWoiZY.WQRelFves68gBKrPTXgEiZpsVnNv.gFMpQzQGIF+XFEBrCVd7MZzHN7QNF1+AOLJt3RQYkUNZtklg+94KBMzPwfFX+v.6eeg2d6M.rz1nxzP1budgUGfMt4sASlLwctKtjR4dNO8vCl0KB.LhqYnvGe71om2aYa6DszRKbiSKsz49295qJl0pC.LtwLRzstY4xxKrnhwwN9I4dtgMzAA+70WKyYSlvt18dwQO1IPgEZ4ZkhUqV7Fu5+A..m5zmE4lW9bu1qaDWC7xKOs67sgFaDG5vGEG9HGCkVZ4nhJp.M2bKH3f0ffCNXDd3ghwNpqyleOdwdsQ0TSsX26c+bi4eML1SlFxB6ZO6GFxJaTQ4UfpppZDP.9gvBKTDZngfnhLBLrgNX3V2b7Pev+2U3esClMaFm67og8t+ChLyz.Ju7JPyszBBRiZnQiFLrgLHLrgdkeEffPHDBgbksSbpSiCdnixslyFarwKrdG0Pmt3v3F80wsFbmUSM0D169ODNxQONJqrxPokUNLYxD72e+PTQFIF7f5O5WeSgKdpUTYknBdseK96n7FZnAri+ZObiKuhJgQiF4Fa1rIQqweBiazWTIIf9LyBodg02KSlLL9wNJtyWIkTJ19N2ENyYSEkVVYn95qGAFXfHVswfwMlQhDSPmjmyydtTw124tPN4jGJozRgRkJQvAoAIlX7XBiaLcn1MV802.1+AODN5wNAJqrxQ4kWALaFHrvBAgcg3122TRFQEYDc3OK..Nepoi+Z26E4keAn7xJG0TasPkJUPi5.Q+5aJXHCdfHHMp4Nd9UH.0AFncSJailLgCbfCiSclyhRJoTTRIkhpptZtXvGXfAfAOn9iAMf9A2c296zepkRPtZWGJg.HjNSM0TSXUqdcX8abyLYnUaJp3R..v12wtPngFBl9ztQL5QdsN74uhJpDe0W+8LAWqMUWSMn3hKAolV5XkqZMXXCcv3wej6Gd6s2HCdYrlmd5IBmWIFZMqai3u10dDc9ZypWy5YFO8adJWTIDP802.9p48cbi6e+5ijIDPVYmK994+Kbiev6+tQO6Qh3XG+j3a+geFEegOK4qhJpDolV5X26YeHod1c7Ruv+Dd5o8CdXN4lG9lu6Gw4NeZhdtxKuBbpSeVtwi75FNdv66tr6hEMYxDl2W+8nwKj3CSdRS.Cr+8EszRKX9+7BwV21NYVXG.vYNy4vd22As54b0+45XFeKSepLIDvIO8YY9L6gev60pIDPyM2L1zV1NVyZ2HJozRE870TSsbsYh8r28COb2cbmy3Vwjl33s4O2hJYsT1IRHDBgPtL1YOWpXIKek3Tm5LhdtpppZnOSC3.G7vXEq7Ow0Lrgf6dF2JTqNPG97uwMuMrjksBTUUUK44OqryE6+.GB9pREdxG+gv.GP+PAEVDSaiJg3aOfaEUTw3a+9expue4keALqGTgBEXLixwudi1Tas0g48M+fUe9RKsLl2GeUoBSbBika7t269wh+skC.KAXbjW60..KAk86m+BP94W.y4KVsQy8uW7R9cb9Tsrtb2byMLtwLRaNWMYxDVxxVIV8ZVOZt4lE87UVUUH0zrbS9W4J+Sb8W+3vMO0IKYUW3h8ZiNkf0i+POv8X2DBvPVYiu3q9FjU14J54ptlZXd7k+6+Ad3G7dQJ8tW17bBXIPt7+ck1t1gyc9Tw27c+HxI27E8ZprxpPZoqG6ceG.5Vcr3+9e9WvO+70tuWDBgPHDxkSNvgNBV9u+Gh1jb.7WuyAwRW1JvnG00gYb6SGd6kWNz41rYy32V1JwZW2FXZsT7O+FLjM9qcsGDRvAgm6YdBjXB5Dsix4WssNeZYvrFRgN64REm8boxMNHMZXV6cGw523Vv119NA.P3gEJt9wOFXznQL+edgXCBR9..KaDMCFxBaa66D2xMeSXF29z4dtxJqbL6OYtL2Ch1TbwkfSc5yhUtp0f67NtELsaZxNz7ynQi3WV3RvF2zVYRRYt2yxKmKl8KPtbLoaXB31u0oAO8vCG572lyb1yiu86+IlDRtM0TSsH+7K.m3jmFKXgKA2wsOcL0a7Ffb4xQl79cqDRv5w+tkVZAadq6.qYsaf6dCI78nsXvu28c.3t6JwcbaSGSYxSzlyaJF7jq1QID.wkpkVaEe3m743Dm3TNzwWXgEguZdeOZt4Vv0O9wX2i2PVYiO3C+LTV4k6Pm+8tuCfbyKeL6O3sY9CT5zEKSkvHCAYSl8bw1ObDtPLcwIc1qILK2zEWr3G9oeEqa8axgdeNyYOOV.u8zcA...H.jDQAQ0hVJdzG59r4ws10uI7yKXwht47VyN14twIN4owy9TOF5cxIY0iKu7JfKY...5dBI.ylMiubdeG18d1uniOhvCiYmf4HRPPl+I76RqkYfszRK3C9n4fSdxS6vuWM1TSX9+zuhVZoEL0oLIqdb76uUt6tRD4EY1YRHDBgPHcUN1INE9fO7Scn0AZznQ7W6ZOHyLMf24sdE6lbnFMYB+zurHGdsqUWSMXVezbv+2+3oQqFak443GbGgUiI6IpnhDJcfp7jP5MXvoN9niIJlw7WSXzQEI7zSOQZoqGyZ1yQxaZehWnJbYzjIl1cl1XhlqpCHkZqsNLmuXdRlvzRo4VZAq9OWGNyYNGdm25UDctuXu1nz0yFXNqcsNsYm6ZO3q+1eTxOSjR9ETHl46MaL5Qcs3od7G1lGq3fDFKV5xWIVxxVoC8dkg9Lw2+i+B9+9GOsCc7DBgPHWLnZtEoyxl1x1w27c+nCcrM0TyX8aXyH2byGuxK8+Yy0cZ43aBy8K+Fb.AU0UqonhKAu1a9t3ce6WSTLw4WEvROcmaMncFkmd9wdum8rGnt5pCezm8kRlnzBs7U7GHxHCGi3ZFJLjU138m0mfx4U8CjhISlvutnkBUpTgwN5qylGakUVE9j47kLIAg8N2+4ZVO1yd1Gdo+y+BwpMFG50s8ctaLuu4Gb3qGbgKZonhJpDSYxSzgJW+szZqX1exmiidrS3PyG.K+N4OufEilatYbK27MY0ii+0snzM2PLQGoC+dPHWIfRH.hK0b+hulIY.byM2PuSNIjXB5fu95KZrwFQAEVD169N.ps153NteX9+BBRiZaVh6OzQNFlyb+eL2fYYxjg9jRxPq1ngF0pQ0UWMxI27voO84P0WnL0mSN4hU8GqE4WPgbuNlxQTiMhFarQDP.VJoMM2bynt5Zu+u6omd.ODjUc72gRcDhJmMVo2ix+3jKWN12ANDS.U8UkJzyd1cz8DiGEWRo3Dm3TL+bB.rwMsUL8odiVcWbspUuVrfEtDlGSoRkHdcwhnhJRDQ3ggxJqbjdF5QZoqmKPcUTQkXte4Wiu3y9PqVBeRWO6OmIlX7Xg+1xjLY...hKNs3zm9rN02EB+rKCdAfracqaHlXhFB0ZqshO9y9RQICPPZzfALf9BMpCDd6s2nlZqEokVF33G+jnYdYg4BV3Rv0LrgvThjZiQiFgAdAvMtX0BET+shPHDxUbnVFvUBRMsLvr+34xD7mPCMDzu9lBBNHMvc2cGkVVY37mOMb5ybNtiI27xGe3G+430d4m2pALrgFaDe1b+e3HG83LOdfAF.FP+6K24Ou7K.YxqTcB.7y+5hQ+5aJbiUnPAytmufBJja8h.Vpx.sUR3A.yyA.GZmjKkBJnHlyUs0VGyNywe+7Cxj29+egdJnpTwO.UIlX7nnhKAevr+TqdiuS7BWiQN4jGywXsqU.vRBSO6OdtLsLA.KkryANv9gfBRC7vc2QAEVDN8oOKLjU6IeaF5yDKdI+Ntm6514drNiqMh+O2B+tiOiFMheZAKVTBi3gGdfAOn9ivCKT3s2dibxMOXvP1H8Lzy787119eg9jRuwvG1fs5mOBSdjyctTwpV8Z4F6s2dgd1iDQO5Q2QkUVEN9INExIG1pTvd22AggokCzJHgOHDBgPHjKGsu8ePQUSKswDMRIkjg5.C.JTn.kTRo33m7zLwv7Tm9LXde67wy7jOpUO2UTQkXVezmIZWvGd3gg9jRxHHMpgb4xQN4lGROc8HqryA.VtY0+3OuPlV3UPZzv0Ns..Jp3hYV6M+VKfBEJfu9ph48rWI0SG3SCqqwFaB4kadbiCL.+wK+ZyjK15JcyMLjgLPnMlnQ802.169Nfjwc2Gu8Fe7m8kbU2LO8zCL3AMPDSLQASlLgScpyHJwcWy51nMSHfTSKC7we5mKJACRLAcn6cOQDbPZPM0TCxzP1Hszy.UVYUbGS4UTIl22Le79uyqay1ofYylwhVxuiUrxUy73d3t6XPCp+HrvBE94qunvhJF4lad3Dm7zbW23F13VfeB99PpDBvnQi3yl6WIJY.znNPLfAzODjF0vau8F0VasHsz0iic7SxbcPKdI+NtlgMDDVngH9baxDSBlnUaLPgBEV8mWB4JQTBAPbYJnfBw91e6k58nhJR7hO++.gDbPhN166tmA9weYgXKWnmaZxrYr7U7GVMg.1vl1J994+KvLufM229za7HO38hPBIXQGeM0TK95u6Gw9Ovg..vhWxxYdd9AUySO7.e8W8YbiWy51H9wedgbiepG+gwPGRmauiLCA6Zl3sxtlg+tJpsr7CvRvGe5m7QPe6SuE8ZzmoA7lybVngFZf6wxMu7kLg.N7QNlnjAXnCYP3Auu6Rx9JZAEVDd+Y8IbkvmJqrJr50rAbqSW5L0i+NxQi5.wQN5wwJW0Z.vEJ8oicTXzibDHzPBFJTn.xjICt4labul+bsa.+zurHtwO8S7nXHCd.R9dAX4yH8Y19BYiI5njr+htpUuVb3ibLtwd4kW3YepGECn+8koxQzlhJtDLqY+oLkTzyb1yyU1W4K6bxkI4AzQkpHBgPHDxkoVy51HS.Wtu6YFVsrLdtTSCy5C+LTacVRp2yb1ygyb1yK4MauxJqBuy6Oalx7tRkJwi8HO.Fw0LDICTyd22Aw27c+Hpst5PokVF17V1N2yIbG9ea2xzvscKSia7C9HOM27JpHi.exreWG7S.a65G+XXphYuzq7VbqiWkJev2Nu4X0WaEUTIS.7hH7vv6MqOAUWskjVVq1XvMO0Iid18DgWd6ELaxL7vCKIYaF5EWkvjRZoqGu4a+9Lq8zc2UhG+QeHbMCavhRJUylMiMsksyDf3Us50hwN5qCgEVn.3h+ZiLa1LSf4hI5nXVeO+i68l0mfSHHAcmxjmHtkoeSRVtZOWpog474yCkVZYbO1O8KKD8qO8Fd4kzsHsLDTg.ZKY.71auvS7nOHFxfGnn0+meAEh23sdeTYUsGX0bxMOJg.HDBgPH+svJ+i0vECc2byM7zO4iJYBTdO.XeG3P3yl6+i6F8tictab625zPvAINd94lW9Xlu2rQ4kWA2i4me9hm9IrDiZgqoxrYyXcaXy3WW3RPyszBNepowbLB2g+O8S7Hb+6ZpoV7PO1yvMt+8qO3+7ueNm3SA6SelFfId2qgkt71qfTCanCFO5CcePkp1auVy31mN19N2M9x+22x8Xm8boh2+C+TXxjIHWlLLsociXZSYRLsu2odi2fnJ1Pt4lGZngFjrM+dzicBLqOZNhRZ6m8odTjXBwK53ap4lw7+oEhsr0sy7y1F1zVwMb8iSxe1MZxDlym++D01du4oMELsoLIIWaclFxBy8K9Zjad4CSlLgeaoqf64jISFhKNshdM+4Z2.NvAOB2XO8zC7LO4ihANf9IYxJTRokgYM6Ok45HOyYOujIDPd4kOZpo1uVVcVoJASHWIqCsMTEtedj39gQH10I40i4A.tqYbqRlL...d3g63Qe36GcOwD3dL8YlEZo0VEcrEUbIX9+zuxjL.CanCxRxFHQx..XI.cO++5Y3Rv.yB10Z1pj+KprRZicjSGE+2ifCRinLbDvxtyQp91SJojL9nYMSISF..K6H8obirAxUX1KBX4O7KLY.dlm5wv+9e9zRlL...gEZH3cm4qwjslqZ0qkKvlBwO.bFMYBe2O7y..XriYj3Km6rwCc+2MhUaLvSO8DJUpTTvBczJoPaxK+BX50rV6324e0dOQ0C2cGy7MeYLvAzOISF..fPBNHbG21sv7XVqbMQ8tHBgPHDxeWb5yz9520EWr1rGM1iDS.O6y73LO144sq94ag+1xXBhimd5IdsW94wHu1qwp6ZigMzAg+6K9+wMl+52SvFqArfBKhKY..5ZV6NfkcJO+cWu8Vimv0D9mqY8H+7K.ZznFu3y+Ovre+2BWyPGLBH.+g6JUxkL.R8Zs1O++7BVDSx.3iOdiW+UdQbsCenRVgpjISFlv3FMlnf.ClZ5Y3v+bXuOeyO+BX5irVKvb6YeGPTx.bWy3Vw8cOyvp8t1djXBX1u+aC+82OtGqhJpDqY8aTxi2jfcMTa5dhIfOZVyDCcHCRx0+GdXgha8VlJyiUfDWOEgPHDBgb4l5pqNlMK0fGT+sY0TZnCdf39tmYv7XmOUoWa327c+HSx.nNv.wa+FuL5WeSQx0TISlLLoINd7D7ZwS7WiusVOsnXB2EDeUoZCYxkIC2ycc63+6e7TLICPaF00MbnNP1McmISlfGt6Nd8W8Ewcd62hj2j+wO1Qwby7Ma1Lymkso0VaE+vO8qLICP3gGFd6W++JYx...3tRk3IdzGPz5WWzusbzpD2qE.KI9gvjA3gev6E20cbKVMQaiUaL3cd6Wk69Xv+6xHiHb3ofpHF.vN3ECdkJUh29MdYL3AM.qV4BBRiZbm2wsx7XNZL3s00LRHWohpK0DWlymZZLisVx.zFExki9jR66nnVasUjoDAr42V5uy7GAG8ntV7Oe1mzt8yH.fG39tKQAcLv.CPTYDkO9K3ve+7CZTKtrvewnppqlYWsXsfjkYlYIJQFRN4jvq7h+evO+7UxWSahIZ1cuB+RqYa1511ISBGL0oLII2w6BoxGev3G2n4F2XiMxTBYaSKs1JWYgBvRv5LYxDF+3FMdhG8AQ.9a8uCZC+dGU.A3OTakDUnMBKWURsapxPuAlDjXDiXXH5nre+ERXVNZsETIbAqIzIzOqHDBgPtbinc+A0wS+amBKpXTUUUyMNX6r1c.fTRNIl0VmZphSHfbyKericrKtwpT4CdyW6EQODTN8kRhInCi75FtnG2UGrP.fLMjMy0jXu.NIrhfUZYkCUp7Au1K+BXfCne170pm2ZZ8xKujbGwbvCcTbty290eoNv.w67VuJRLA62ZylvXGMy3L4UpXExYu1nzErdbo99nkVaEKbwKi4wtu6YF3lm5MZyyMfkjd3VmNavNMXk4uvjEF.PWbZwa7Zunc+4PX+GUpqmhPHDBgPtbSZoqmIdxAGrzalN932pt..Sq7pMG4Xmf4FyFZHAiY9VuBB+BUYJa4ZG9PQO5dBhdbaknoh2jXc9wWkebmayy8rOAl5TljMecpUKN9zuvy+bnWI0Ca95hVv5K8yO+DcLaZKaGEdgJyKfkpe1a+5+WaduLZyzlxjXNtFZnAQsUL.fVZoErzk09t6WtLY3YdpGESbBi0tuGd6kWhtg8.R+cYVYmCSq35ZF1fgVIZsuB0QiAOso7HWMhZY.DWFgAQbSaY63gt+61lulQOpqEwFqVtwpEDXlrxNGrqcuOtwZiIZ7jO1CY0cxsPgEZHHdcwwjrB15ONTas0w7Gc6JVrgvaZs0lOByRQ+7yW7Od5G2l89m1Te8MvLl+tnAvRORZI79C+ZiIZbWyP7eL2ZF00MBrDdkEnhJtXQGS1Ymqn+f8fGT+wi7f2qC8dTSM0hhJtDtwNxeTW7MiWpdWTqLKbYXC0wZGDB2UPZzHcPD4WUD7UkJIKwVDBgPHDhqVfA3OTnPA2M49HG8Xn7xqvpUJJ.ft0stgW9E++31U5d3t6hNlE8aKmoza9jO1Ci3hUqCOuFwvGF1wN2MyiYqp6UZoeoIPPoIXWzmP719FuKLg.TpTIdoW3eY2fl1RKsvjTswEmVQW6iQSlvBW7RYdrG39uKDQ3gYyycaBKrPPLQGI2M4l+N5muNx0FI7mao9taiaZqnXdqye3WyPsY0oPnwMlQhE7q+FZrol.f0289Bu1.O8zC7udtmRxVJlPBudJ6kP1DBgPHDxkCDFe9cum8ga9lljj6Z81DRvAgW7E9mbi8yW108X1rYrHAIy4K7ueNDjUhMpTF90LTljYUtLYPWrZs5wKb2easVn0ECgqUbzi55vvG1Pr6qqrxX2Y+i75FNRIYwsQMgpiWUMyc2UBe7walmugFZ.Ka4qharbYxvK9B+SGdcnt6t6XbiYTLs9f7KnPQW+w52zVQokUN23IO4IhQdshSJaqYDWyPwW+sym4wjLIfaoElXvaq1.LeETPQLicjXv6i2dKYRTSHWoqikP.h5Y.W7SDxUe3W9+A.V252Dpu9Fv8euy.p7QbI1A.PiZ01b2YrvEuLlrZbZS8Fc3jAnMgGdXrIDfsx9P8BWrQme.EyvAydMgG2cbaSWzM12ZD1pADFbv+bsa.UVY68DyaXhi2gRzf1DnfrRrvhJQzwHbQUt6tR7DO1C4vuOBe8NRe.ROuu+7vCOjLfqIlP7VsDKYMszZqXMqisTjFcTQH53ZpolPN4lG2Xp2EQHDBgPtbkRkJQbwFC2MTuolZFu3K+l3odhGVztDhuT5s0C1UZoqGG3fGlabTQFAF3.5qSMuDttUO7vCDQDV+FcyeMyt4lah1Y2cVRMM1DBv9sL.10xdiS95cncuugrxgoRDDuDqmb66XWLq2OpHi.CYPNV.1.rjXGezrdG6dbcjqMh+2Gd3t6h9tqt5qGK62WEyiMsaZx187xmBEJPngFBWKbnfBK1ReaUv0YHLPxS6ltQq1x4DRz0SYieGjPHDBgPtbQ3gEJToxGTSM0B.fhKtD7Ruxagm6YdBnShd7N.fb4xw.6u0Wy9t1y9YZcVCb.8ygp1p7IbM9QEUDvcIRt31ve26GdXgZ0VJUGUUUwVAeCL.+wCd+2kcec0UWcnrxa+lo6g6ti69NuMG58LWdwLNlnEuS4WwerVTcMs2VdG1vFhcq.yBIbMq4meA.79tsgFZ.qXkqlarat4Flxjudm58vCObGpCLPlOGj5ZihWWbNcxZ2Zqsh+bsaf4wjJF7M2byhRhZB4pQTEBf3xzmd2KLvAzWbnCeLtGaG6bWXe6+.XbicT35G+XcpL0xPV4fibziyMNrPCACaHCzomW9Jne+Xqx6ovc9SWQOHkefojKSlU2wT7yxMEJTfqwA2I6.fob7nPgBDYDgy776Yu6m6eqzM2PjQDNLjUNvYnzM231cXEUj3JDfvcGzXF8HsZhgHEg61Kasyv.tPKmvP6KNMtX05TI4.eM0TSnrxq.kVZY3bmOMruCbHlOSADm.L.VJ2p7KmnN5hdJrnhQF5MfxKubDVngfXhNJDTPZbnW6QN1IPuSNIGZmNQHDBgzkg5X.+sz8cu2Idy29C3tAzUVUU38l0mf30EKlxMdCXvCr+NTa5pM+NufKA.bySy4SlWgqcWWbVeMcBW+WrZiVT6BqyB+qSHrPCQzN5guhJtDTassuCfbyM2vjt9w6PuOhJ8kRbS320d1Gy3aY52jS+4rivYu1HiFMx98QrwH56t8s+Cx7YSe6Sug1XXa2YNhPBIXt.S2ZqshJqrJQU2hLDjP.W6HFlCe9yVvZ+iUaL180TYkUgzRWOJrnhfZ0AhXhJRDd3g4Pe2jV55gF0A5PkCVBgPHDBwVdv6+dvb+h4wMN+BJDuzq7lHkTRFSYRWO5SJI6TqcbEq7OXFO8oMEmdNoRkJlwwaipsUQEWByMFWWWPE.SXk4cfCr+vSO7vtutLDzti6W+RwgZKtMzXiH27JfabrwJdskaYKamY7ztIa25BjRHBZQDkvKoG..13V1NWxh..LpQNBGZ9KjJe8gKg.TdQjT1bwfurxv4SMcr+8eHlazOfzwfWTRT6f2CmhJtDjg9LQYkUNBMjPPLwDoCWceO5wNA5UR8.JUpzgNdB4RgNzcDhJP.jNCxjICO2S+33cd+OhYGzzTSMi0r1Mh0r1MhdkTOvjl33wfFX+s6BONwIOEy3obi2PG5F7V.uxboL6UNhDVxQ6BJGQ7uQ4QDQ3vCODmMjUUc0L83m902Tf2da8fNJD+9no1XhhIPtUUc0L6h8laoE7Ju9Lc3ysTpu95E8XB2QNS9FlfScNc1JDP14v1hBbjEBTQkUhSbxyfymZZnrxJm6+UKuR3jTznQMTKQ4zU3Oy1aNTSM0h4+yKD+0t1inmSWbZwXGynvHtlgX0x5UAETH9zO6Kw3F2nw8eOyvluWDBgPHDhP8HwDvS7XOD95uc9LqiJ8LxDe5b9J3qJUXzi5ZwjugIX2aToQSlvoN8Y4FqQcf3ZbfRtoP7W6NfsSvxrxNWzxERPUftlfEBXYMi72AQ1J.l.hWS3HF9vb3R8ovjpU35IMZzHRiWecUkJevvFhim3vNCm8ZixNG1uOj56tyb1yyL1YZU.7UeCrkzeO8jM.tszRKL6jstmXBNUYs0.uDaHHMZrYhM2ZqsheaYq.qYsaj4me.Kks2wN5QhQOJqGr05quAL2uXdPSPZvq+xuPWRxcPHDB4xSh9O4SIYKoSv0N7ghBKpHrzksRlJu6INwovINwoPPZzXYy6MgwX2cde4kWAxI21qbRI0ytayMam0TXgrs3IasFeGokvdwR3506aJ81gdcBS3zT5cxN16W55Y9tP3O+4lW9LIAQx8JInMFwUQ.6oAgqQVPRNbhSvd+Vl5Tb9jN..nvBaeyAFarZsaRYWYkUgSd5yfyc9zPokVlkXvWd4LIJrT72e+jrJI3HsoL9ps15vOsfEgcrycy78..fVsQiwMlQgqc3CCd4kzwfunhJFe5b+JLxqaD3gef6wluWDxkRzVDk3R4omdhY9luBVy51HVxRWAWecrMm9LmCm9LmCQFQ33NuiaAC1Fk1xSelywLt6I5bk481je9sm8cQFQX1rmIweAGgZmc9SGQokUFpppp4FasaxcF5MvLN4d0SG98nrxJGkWQk7dOX+ChmmW+ZpyhOB1IWM1XSHOdIcP3gGlSWhi3u.KGozPI5lwak.VZzjIrx+XMX26deLIFgs3qJULKJqGcOQqLGb7flVWc0g2989PlfMxWF5MfLz+iXAKbI35mvXwjugwyzCuprxpvG9wyEM1TS3OWy5wjt9w4vUU.BgPHDBoMi55FNRPWrXde6Ohyc9TYdtpqoFrpUuVrl0sQL5Qcs3Nuiawp2XzLyz.Zrw16E8wGuNnnCjLu4was6VNOt1fEBHQkqxNuOBa8W8uuNV.Fs7ZaeMsADf+hRB0bxMezTSMyMNxHBuCWUrrGm8ZiD0qWkHvbmSv0hzQ+NKed6vJEJTH5Z7xJa1cMjyb8TM1XSLUGr3i25qo2nISXNewWi8s+CJ4yWbwkfE8aKCKYYq.i75FNl1TlDBiWaMq4laFy4KlGJrnhQgEULN7QNFF3.5mCOWIDBgPHDobaSepn2ImD9luc9L2Pe.fRJsTrneaYXk+wehId8iG2xMOE3tU10ymVPxblXGL97hViuMtAtBW6syV14cD7WutbYxPx8pGNzqS30ejRuSxgdcoJnxakff6IvYOG60gkfCzpwjhvOmUwKl8s1ZqLsUYqcy1smxJuBAW2mzqU1jISXU+45vt28dQVYmqjGiPNZL3cleGo95a.uy6+QhRhf1XvP1369geF+5hVBlv3GKtwaXBLss4pqtFL6OYtngFZDqeCaFSZhi2opB1DRWIJg.HtbxkKGSYxSDiYzWG1511IV+F1LytcGvRVuM6O4ywHF9vvi7P2qj2rW98sQYxjgPcv98HeFMZjYWFYqcMTIkTJpt51+CNcEK1PzMs1JuGh1MNNwbQX+MMAA6foRKqbzYS3eDLSCYAS7x1NmI.b.crRCkir67qp5pwmM2+GytWSJ9pREBMzPPXgEJF5fG.T5tRLy2c1bOeO5t3RUD.a.bCNHMvWeUI4wA.L+edQbICP2SLAbiSZBv+.7GFLjMzmoAbvCcDTas0g5qudrhUtZ7mqY8n2ImD5WeSA0VacXSadqbI9w3F6nnjAfPHDBgzgEQDgiY9luLN64REqc8aDG3fGgoMH0ZqshMs4sgCdvifm7weHz+90GQmCgAZj+M8zYHr2saqc6wkhfEZ48w1quVHgAapWI4XqEtgFZfIHd5jH4RqpppXF2Q+b1d5HWajncpiDAGrLdWKh+96mMSVaqowFahomkJ0N+W7ua33U9sz0qm4ZYr022qeCalKY.BN3fvsN8ohHiHbjSt4A8YZ.G8nGGEWRovnQiXqaamXaa+uP2SLdLf92W3latgss8cxEfzDSHdzOI9+aQHDBgPHcD8HwDvG+guKNxQONVy52DN4IOMyy2PCMhUrxUi8u+Chm8oeLIWuWt4wtYpBuCuF+1Wiq6tqDQIQeguM7uY8JTnnC0dorG9wdOpnhzgWSJ+3O6u+94vka9z3EudO8zCDd3gw77kVFao8ui94b9EvVIF3uN4RKqblDKti9djmfqWSpeuolZpEe1m++vID76bBoRkOHrKDC9AOv9Ce7wG7Fu86y87VMF77ttC0AFHyMvWne9W+MtiOg30goL4Ih.CL.XHqrQF5MfCc3ifZpoVzPCMhU8GqAqYsa.I2qdh92u9f5anAroMsMtq8XTibDTx.PtrB0x.HW1vau7BSYxSDS9Fl.N5wNAV+F2BN1wOIywrqcuWTU0UiW8k92h1YK7C.kZ0A1g5OKG+jmlsexXq.JJb2c6DAMxQ4nID.++nlBEJPrZc7RDj8x3vZpsVlwO6S+XR1KdbF93MaBcjtffAlTOcrrrj602A1sW5029qwO+7UTfAyufBwaMyOfo5I.XIPq8pW8D8rGIhPCIXnQsZQswgk86r8JKoVLRM0VKJrn1KWR1JIFLZzHN4orrfn92u9f+y+943JsR83BeWzv8cWXMqaSX0qY8n95qGszRK3HG833HG83Lmq92u9fGhJUQDBgPtTSP8MUXY2i72S8rGIhd1iDQYkWA1zV1N1zl2JyZxqrppvr9n4fW+U9OnWIwt9N9IyIPGO.SGk2Zc72e+fZ0AZ0ikevB8wau6xBNC+.34latYyfRZxjInmW09JpnhjYm4XK5yLKAkRTwWOhv0xKLXhcV5HWaD+ji0WUpDEfz5pudlqMqi96HBS7ftKwNGRTqWvIRVjzDjf0150djicB.X46g26seUt17VBwGGFyntVX79tKrscrKr7U7GnzRKClMaFm67oIpRIDUjgiqFX9IA...B.IQTPT8yy+bcnppAgPHDBgXMxjICCn+8ECn+8E4keAXCaZqXaa+uX1g24WPg3se2YiO3ceCQqOi+0B.zwRF0VZoEbpScFtwwpUqUWyiQiFg9L42JbiFt4laN86osTXQEyztXcz9Oe4kWAJu7JZ+00AWeot3hUTKhplZDrF+v5XWWivMYH+cXe0UWMyy0QSr3CKH1zBSf6hJpX7ly7CDsoDiKVsnW8pmHodjHBIjfQPZzHJF7q7OViUm+sot5qmohPaqu+LYxDWaRHkTRF+2W3ex0ZkaqZT2Pi2EV252LV8etNTac0gVasUbrieRQ2GqTRIY7XO78a02KBwUfpP.jK6HWtbtEdXHqbvuszkiCc3iw87m7jmFq3OVCtkoMEtGynISLKLwY52i7sJA+QDacikE9GL6JJ4n7CRlat4FhI5HkdtjAaVJ5LICA+EX3kWdIJHgB6MOQFQ3cnxCjsHrLolnS9YoytauZpolPN4zdFqJ0toZIKaELICPfAF.d5m3QPJ8tW1c9b1y0d4wxKu7BQGk3u2D1lGr0u+nPgB7LO4ihO4y9R7LO4iJYeVxSO8D25zuIL4aX7XCaZqXsqeSnBdyekJUhoM0IiocSSFt0M5+zOgPHDBoyi5.C.y31tYbyScxXqaam32V5ui5pqd.XInJexb9RL2OcVLU4q1d91zQV+9IO0YXVSk8J8i72M8w0EjLu.V94k+Z3iUazbAQRJ4keALsMMm4ZJDlTsR8yuvjn1C2cWzwzYvYu1nlZtYjMuxruTsFslatYlw9xqcX4L9y0tAlw8rGhCTH+4uF01dWCID+Jtlb4xQbwo0pG6S7HO.d9W50wy9TOFWx.vmBEJv3FyHwnttgi+Z26Cq9OWKS0zPlLYXLidj3tuya0psiCBgPHDBoyPDgGFdn6+twcbqSCqcCaF+9JVMZs0VAfkJU0G8IyEexreOlWi30367UnzsuyciJ4Ukqr0MvMmbyiYMiN5Mq2Y3rsCr1Hbs51qpg0lhJpX6VIbEtNY+5.qSN0zRmoxlEZngvrF3NiqWqlZqEaYqamarJU9fPDTUmW5uuJljAve+8CO8S7Hnu8w9sQM9sNAOb2cnUhMIodAwf2VItrb4xwy7zOJl0rmCdtm5wj7537zCOvzm1MhaXhiCaZyaCqYcajIwOT5la3ltoIgoO0arSO4THjKVzcEhbYMswDEdwm+eheek+IVzusLtG+.G3vLIDfB4xg+96GprRKKVnpppVz4xdRMszwY30mirbC3s9t4g+hArTNhb7ckuivrYyL6TEswDkj+QHwkmSGO3ls1ZqHyLMvMNt3zJJiC8UvNTheoBpyB+fl5me95zky9zE8cgsKMTBaQAB+LqwFaB6cuGfarbYxvG7NuABH.+s6bozxJioECz8DiWzmo.hSBB6kDC8N4jvLeqWwt6XLO8zSLsaxxM9urxq.4jStvGe7FQEUjVs+dQHDBgPHcFbWoRbCW+3P+6aJ3c+fOlqUbUc00fye9zXZc.B608U1AV+9JDjLu1J.fYnOSlcSusZs.WLxI27XtA+wam.+Irhf4nAJDP75IkJIWCMD1cKTYNY6.ynISnklagarat0MISNUm8ZiLXHal1LgTIDP.96O7zSOQCMz...Jt3Rbp4NfkVJwgN7Q4F6qJU3ZF5fXNl5quAlxkpiz9w3i+0hDscVycPAoAu6a+pHxHB2lmyt0stgQOxQfQOxQfZpoVjU14.4JjiXhJRISj.BgPHDBoqh2d6MtsoOUzu9jBduY8wb6N8bxMejeAExTk.DVstppppDsteawjIS3OV8ZYdLaVAeuDzRvDWYZcr0q2Q2LgBqluREq+vCicC8UTwkH5FsaOq7OX+bdhSXrLiE9cYG450V+F1Ly8RP30qzRKsf+ZW6karLYxv6MyW2gR9fJpnRb7Kra9A.hOAcRVIIDkD0146gj5Q2w691uJ7yOamjEd5gG3ltwa.2zMdCn7xq.Ymadvau7BQGUDv8tnjvlPtX0wRH.pmAP5fN8YNG90EsTtwSeZ2HF3.5mcec27TmL17V1NJozRA.fgrxFM0TSL+GWCOrv3RHfhJtDXxjIQ6HFaY4qX0LiiUazRFrK.KAFKSCF3F6r6JeGQAEVDWvu.rdfobz1JfTLjUNn4VZO.eRsflPCksb.kt9LkbW0XMaZKaG6Yesey0uu69NPrZigabs0VGSoy2YqzBFMZjIoFzFST1M66r2mYkTZoLILPRI0CGJY...9y0tQlfaJUoJxxbn8EEJWlLDWrwH4wwm8BbnPpCL.mZQ2DBgPHcYDlbbTKC3uMlyW70nnKrVM+82O7e92OmceMgDRvXp2zjv79l4y8XmK0zYRHfHDTUpJh25AcDoktdQ80TacS9EFHuth18E.6tEGv9qsUXop2YVKL+jpMzPCA93i3aTbXgxFXvBKpHG97C.7Me2OhstscxM98l4qKZN1Qt1HQAV0Je2EUjQfTSKc..je9E.ylMKYx1ZMBCz4zu4oHpmup2fA615ErlhKoDGdGr0FmcM8pT4CRtW8zodMDBgPHDh0X1rY7lybVnkKDS33hSKdjG7ds6qKdcwhwL5QxTgcOepowjP.Bag.EVTwHtX05vyscu28yDmX.fDh25qMSbBAzEzRe48d3g6t6vqki+MhVlLYRl7tR47olNyXoVmbzQEAy37xu.Gpp11lbyKebvCcDtwAoQClv3GCywDZHACYxjwsNYm850pu9Fv51vlYdLgqUtzxJmIN5cOw3c3JQvZV+lXZuX8zZwfm22exjIC5hUqcO2N650CLv.PfTL3I+M.0v4HWREX.9izROCt+G+cjusHSlLlcMtISlDEGY98wFiFMJpusXK+3urPQ8ZcasadxIm7XxtM92f6NKNZPKE1uNclfHllfLNTpR0uvdqpy74Zs0VGVvBWBN0oNCN0oNCJrvhPzBp5BWL8qS.fryIWljZPqC7cg8RHfpDzijRRPOu0ZJu7JvV15NXdrdziDr6bHJJyAIDBgPHWlxjISbqc+fG5HnwFax9uH.DRvr2HZS7BVCf3dP4gN7QfiJ27xGe3GMGQOtT6x71Hbs0cEqeGPpRJps2AQ72k+d3t6HxHivFGc6pt5ZPwkTJ2XqEfQO8zSlc2xgN7wDsVWqI27xGae6+Eu2CsRdsFcjqMR30.Xsu6hlWKSqwlZB63u1icO2sYiadaXG6bWbikJPm.h28VNSol0Y+9lPHDBgPb0jISFZpoF4Vi+AN3gc3Wqv1HqQilXFKLg.N3gNJbTm5LmEe82NelGyWeUgfCx5stV9qwWoatIJoiuXYznQXvPVbiiKtXcnMfnYylYRd2HBOL3kWdZiWQ6RmW7582e+DsS8AXWiLfkMjmQSlDcbRoxJqBezm74LO1cb62rnVLqRkJgF0sey4O24Skq5PXO0WeC3c+fORzwKbsxczXvWYkUgMuksw7XVKF7B+dPXxASHWMoCkP.TABfzQEZng.O7vCtwG9nGG0WeC13UXQs0VGNepowM1e+7Cd3A6MPsmB9O5ufEsTlLLyZ9ge5WwZV6FE8315FSmIuEBXY9X+9ziISlvxW4pwxWwev8+V652jUOdQ2zZqDjO9+QMmIKEADmP.R8ybbwFChJp1WjwINwor47tMszRK3y+puA0We68anIL9wHpz8zQ6mRsISCYyL1Q5sn7C.YvAoQTY3ObAUEgryNWXO4jSd3Ud8YhFarQlGWp1NQYkWAW0r.v4KKoDBgPHDxkJwJnOLtq8rOG50cXAIaqvRXo5.C.AyKgeSKc8Xe6+f187lSt4g2ble.ytxF.H7vCCd6kWV80kYlrqYzdk.R.KU2L9qce4q3Ofgrx1lulzSu8cziu9pRTPS4qkVaEFxJGtwwEmVIKykRQbR0Z8jgH4dkT6umszBVkfcMuTJqrxwG7geJSUy55mv3j7X6HWaD+qgQiF0VsumNnA1elwKXg+Fpq95k7X4aSaY63a+9eh4wtiae5hBzI.6mkN5tFpMhpHDz55IDBgbIDUysHcT72PUUTQk3Tm4r13namvMTWnBViu1XhhI1+6Z26E5yjcshR4Tm9r38m0mJpU0Zq3y2Rqsh7xMOtw95qJGpRRs+CbXQqwujRKSxiMqryUP000wVqWAEVDSLwczDNs4lal45Cr1Z7CRiFlXNmSN4h0KX23KkpppZ7VuyrPd4W.2iEUTQhqc3CSxim+MYugFZDKaE+gceOpq95w679yVz5jADe+M5HwfOu7xGu7qMSTWcrWSfTwfuhJqDkUd6sLMJF7jq1QUH.xkTxjIio+tme9Ef2+C+Tq9GcArDLp25clESIf4ZGg3+H00N7gwrXlbxIW7NevGiRKS5ycUUUM9pu9Gv5rxM21V+Adgmy8t+ChVasUqd7.VBd4h+skiEujem6+c3ibLqd77CRlmd5IBWhLbzjISPOuxkerwFiS0lDRi2eXViF0ve+8SzwHWtbLiae5LO1OufEieaYqvp6PrbyKe7dy5SYVjnJU9fwM5QJ5XyHCGa2AYMkJ32c1+9OHyuqHTc0UGJrv1KUpRsPf.CL.ljDXe6+fXKaamRlfIlMaFG6DmBuxa7NnTA8jUkJUJYfoEsKjnEiPHDB4JbBCLiYpkA72FB2s2e62+SXa6XWVcGnX1rYrl0sQrl0tAtGSoatggNjAJ5Xuu64NYF+Ue82isrscH53ZyQN5wwaNyO.UIQ+qzV2PbylMixDr98+Z21OwFV652DyZ2W7R9cQAoju5quAjadsGbM6sFuryNWlqgvVUnLgbldg4cOiakokZs50rd7cy+Wr5ZlOzgOJd8258PQEWB2iEUjQfgOrAK4w6rWaTc0WOxufBaetaiOm5eeSACcHChabUUUMdoW9MsZklqkVZAqZ0qEey28iLOdO5dh3ZG9Pk70ves4N6tFh+0S4gGdfHhnycWoQHDBgPHcEDtF+YM64XypBaqs1J9oErXbnC29N9Wi5.QO6Y2YNNu81abqS+lXdr2+C+DqFCbiFMhssicg2+C+TzbyhWmssVia4kWASxqVZYkiyc9Ts5w2lkt7UHZM9JsR6mUTatxAWut3VYfiE6W8YZfYM5V60ISlL7DO1Cxbc1+7urH7yKXwnII9bDvRKX9sdmO.4lW9bOlBEJvCde2kUueB24seKLe1rt0uI7yKXwR9ckk2ibvLe2YK5me.ffCNH3qupXdLe8UESa58PG9nXiadaVcSddhScZ7Juw6v0Vo4+ygupTI53EdeGb1VULgbkFwoGOgzE6tuyaCu4La+F7etymJd5m64QxImDhOtXQ.A3O5V25FprppPpolNNwIOMyeDHpHi.S6llrnyqb4xwC+f2Cds23c4drSdxSi+uW3UPuSNIDVXggPBNHTUUUibyKObfCdDtdkjGt6NRHw345Co93i2hxvQ9DtCVJrvhvS+bOOhKtXgISlfISlvq7R+aliQp+Pn0VDgvxQjt3zJYFNlW9Evrizclarb0UWCSOYxV+AwAOv9iDSPGWl8YznQrrkuJr4srcjRu6EhNpHgGd3AJtjRgACYgSHnet5i2diW6keAQ6De.1xjZD1YmcIEg6tq7KnP7TO6+F5zEGLZznnuKxPuAli2ZAON4dkD169N.2348M+.90EsDjRu6E5dhIfhJtDjYlYgLMjEZnAKU4BYxjA+7yWtc+eyM2L129OHhJpHQfA3OWvESW+kldXKgPHDBgbwp2ImD5e+5CWhdZxjI7Uy66vBW7RwfFX+QPZTCe8UEpugFQwEWBNvAOLJu7JXNG2+8cWPkOhWG3PF7.PxImDN0oNC.rrqSl22LerwMsMDarwfvCKT3latghJtXbhSdFjSNsuiQF3.5GN7QNFWxkXq0AKSlL3qu9xTUA95uc9XSadqPiF0njRJE25zmJFP+6KyqKcAUSKEJTHphIvb750yjrK1KfghCvniuVd9A2Rtb41rL8GTPZvTtwIheeEql6w1vF2BN7gOJRHAcHtX0B2byMTXQEiyctTEUEDznQMdk+6yCkJUJ442Yu1H8N35wayCc+2MN9INE2ZtKrnhwa71uORpm8.QFY3HhvCCFMYBEVXQ3.G3vhpdDIlfN7xu3+Rx.cVYkUwjTuNytFpkVako5HDuNGqDxRHDBgPHtZi55FN1zl2FxJaK6F8FarQ7tevGiPCIXzu90GnNv.fO93Cpst5PAETH1+ANDps153d8JTn.O5i7.RVcqlzMLArkstCTvE1PVUVYU3Cl8mgd1iDQTQEIBOrPgYylQgEULNxQNNyM2cvCp+3.Gr8VIlsp9Rp7wGldbO.vLeuOB5hSK7yO+PAET.9GO6Shn30RtZnwFQN4jGy4I3fzX0pGVGc85BqlWNZhDHbW0aq0lFut3vDu9wwsYGMY1LV8ZVO1ydO.RLw3QjQDNBH.+QIkVFROC8b22i1nPgB7udtmB8N4jj5zC.KWGwTuoIikt7UB.KIZ8pWy5w91+gPO5QBH7vBC94munjRJEokgdtqqCvRkGn4lZhKIis10qkbuRB+0tZusf8se+OgE8aKCoz6jQO5dBnjRJEYZHKnOyrXp5BADf+nhJpD.VtWE6ZO6GwGmV3qe9xc+EDVAlsVaViPtZQGJg.nVF.4hQO5dh3Qdn6iom.Y1rYbxSdZQ+gIghLhvwa7punnrIi6bmXB3dt66.KZwKiKgCZngFYVHgPJTn.uv+94vx98Uw8X16FqmjfreD.n7JpDkegrjbTibDhddoJSNVaQD4jadLkiHq8G+EtnDmqeWZ+1E.euxK87Xde67YtI4UVYUXm1oOd5kWdgW8keAICRYEUTIJ+B+ga.ma92lj5gU9t3PV9Nezi55XdNQshAq7d9vO38fyc9T4VXA.PM0TK18d1O18d1uni2SO8.+im4IvQN1IvF2zV4d7O9y9RHWlL7yyedRNGTpTIhNJ199DgPHDBgb4B4xki+wy7D3+9ZuMxmWokrxJqBaZyayFuRKd3G7dwDF2ns5y+DO5ChO5S+bXfWafRelFXpBVB029z6+e169NN4ttN+A96YlsL6lduWHgPMTRHzCIBH3Y2ySO0ySEPP.MHE4G10bmhkS8rQwCDA8rc24UTOOUrRRHTSARHEBgP5gzaa1Y2clc98GQRx2cSikjc1cxymOdveLe+N6tuytr67c9780m2uiK6UewI1gRGpEm6TNkSJl4ir2qgqPgBwRdtmeOg1c3snEStoMs4DWmZD6tEndfto3Qr+lm7G7ZpUKT3KiaF899wN7gMzn5CRcEQD+0uo2PrhUrpDeOaiaZywF2zliG4QOvipgt28tEepO9sF8o285.9bd49diZU2M3P7u6d0qdF21G4CG24ceuIt48KXgKJVvBWzA8i8BufyKt1q98c.20+sd7kc3+yfksrkmnSHnEjB.PmEUWc0wG8Vuw3i9ImZh4795dw0e.6ltujLYxD25sbCw3OySe+d9Jqnh3COkqM9m+F2Uha1+BWzyFKbQG3cv+k8pu3XDCeXIVG+CVmjs1ZqIF0wMhDa9qFarw870npJqrUcb2k97KKQWEHhCdW5Ze6jT8tW8L58A4ZhOPebUUYkwHF9g2Z+1x6evAZDB+R96dGusXW6ZWwCMsGdOGaSadyIV+98md2qdFW+0c0wYd5i8PVSu42zqKV4pVU7nO1StmisgMtwXCyXiGvOl92u9F++t4oD2zs9I1ywNPqA+U9996hErfEkn09uycVWLyG4wR792dIYqt53Flx0FOyBVT7+8q26Xf9acG6ds2ef66t1yw122yTEUTQhNWMbrHwWmRhW8kL4XJevqIwro+fo1ZqMds+UWVL0O8G6PNuOeyugWa7kt8oFibDG3cuyKYjib3wW3y8oiS9jNgDKf2gZwbF5PFbb0W068.NWh1e276VtCih3.mNvC2YBZqt41uL1o4OaKpmCUREqs1Zha4F+fwG3puhCXaTZeUSMYi27a70Eeyu1WLF8nF4984zVSK49ZXCaHwUcE+8GjeVj7+OXe+ZlNUpXTib+Wa8n6cOt0adJ62Q0PKMvAz+3K749LwYM9yLN8wdps57CYnCIpt5piH1c3W12cE0wMxQDYxj4P90..nSsV95zFY.cpTas0DepO1GIt3W0jRz54OXNwSXLwsdy2P7Wc4W5A84Mf92u3K949Lwa+u4sbHulnLYxDu8+l2Rba25MFO6y9b643UTQEwHNDW6+6+J96OfKDWW6ZWh9029j3XsL7rQbnao+KokKf2g3lK+76y0k1qd0ynO8o2Gzm+KYSadK6oiTEwg2H2Ja1cunu23Mbc621oYKUas0F+sus2R7s95e4XHGhqG9k66MZe+2cpTohQc.duB6qwdpmb7O+U+Bwq4P7+Osu0zG+1t43ltgq6fNB.dkrqgZ4+OxInEjB.PmH8qe8M9LexOZbdm6DhzGfqiaekJUpXbm4oGelO0sESnEcVqV53G8nhu1W4yGW1AIXvujZpIab0W06Mtlq58FKbQ6crPMvAz+8aWFaeciS45hduOsb980vG9PaUGLX+0AeOgwr+uF+5ykKQ60+vc7dkOe9Dcbqi63F4g8Z+tjkr22iy.G3.ht10tbPe9YyVcLkq+ZhO4G6iD8sEuel8mpppp30b4WZ70+pewCqv.DQDUWUUwG4llRbSe3q+PVOQr6.49E97el3E2vFSz0mGyA38rzst103VukoDCcHC9P94t+8quws+49zw4LgwGm99oyFL3AMvDce38cyTdbib3QEUngoyw1RUrML.O+yOWiwO4I26rCehitx38b1YOhVXbri4M+EDOwrlSr4MukXKaYKwV1x1hrYqJ5Se5Szm9z63DFywGW3EbtGxc8RKkOe93od54GKeEqJV9JVYrxUtxnxJqJFwHFdbbib2+2XN9QGYxjI1wN2YLi8YNhdFm9XiAOnAdH+Zr4Muk3Qe7mLV+F1PryctqnxJqH5Q26dbIW7EE8ue8Kwy82969iIdQvpppx3Ru3Iue+7tnmcIwxV1da+jS7BOu86E.83O4riM8W1kLoSmNdMW1kbHq4Wxbl6SmXjAbIW7jNr+d7V251hmb1yMdpmd9wl27lissssGoSmNFv.5eLfAz+XXCcHwDuvy6P19+W1Kr7XQKdI64wmyDF+g8Bg1RI+YQcQkUVYzit283Ru3IE8qe8cOOuo+vOZryct6julMa13h2Ocyg8UyM2bLiY9nwrmySGabiaJ1zl2bTUUUEcuacKFv.5eLgy5LiwcFm1dtg+QDwu+O9Pwe7OMsXaaaaQ+6e+iK8RlTLwKX2yrzFZrw3O9ml1ddtCcHC9f1ZlfNZt1e5NR73+k24g9lJ.vr9HWcroYr2cZxXu86NF7q90UBqHZq1912Q7ml1LhUtxU+Wt18sF4x0vdtg1CX.8Kl3EbdwHF9K+cewZW65hErnEGKeEqJVwJVYrwMtoXHCYvwHG4viiaDCOFyXN98rS0m8be53E+KWKaW5Rswjl3EbH+7Wn4li4O+EDOyBWbricrinolxGcoK0Fi53FQL4K5BS7bW5y+BwytOKHWD6dmvev920zlwLi5pa2swxpqt53RdUWzAsd122ePe5cuhy4rOqC4+FhX2AB3wehYsmGehmvXhQcbG3QFPKs8suiXtO87hUul0FqYMqMV8pWaTn4liA9WtV9gL3AES7BN2nKc4Pufe6qC22azLl4itmchV1rUGW7jO3eepkV4pVc7rKYowJW0phkuhUEu35Vezkt1knO8tWwPFxfiK77O2C6ueL2md9wZW651yiurK8UcXuPgOyBVTrh8YLVbQW34eXsHoPDQ7fmax+ezK+wV9A3YBvd8o+U0EqeG6csEm5qq1XPc2lLgW41vF2T7menoGqccu3d5nq4ymO5Su6Uzm9zmXvCdfwjunKnUq28gik8BKOd1krzX4qXkwJVwphss8sGCeXCc2Wi+HGQbhi432yXlceuNw90u9dHCdPDQzTSMEyZNOU7bKcYwN1wNhhEKFcoKcIF6obRsZjfMu4ufD2j+H18nHqkgCNhceMyO79rC0G8nFYbBi43Oj0Sc6ZWI5ntGtq8a974ie2e3OumGe39u+WR84xEOyyrvX4qbUwJW4phUrhUEMkOez6d0qnO8oWwYb5mVbNm83iZx11uOdaa6aOl27Wvd9Y4ZVyZid26dumeVN5QMx8LhFZ459eoW7jNncaslat4XlO5iGyZ1OUrwMtwXia5kVC9tFCX.8ONqwclw3NySOxlcuqA+e5gld76+C+4XqacaQ+6e+hK9UcQ648E1XiMF+g8YM3GxfGTb5mVq2HePmEGIVS91Vf.VRiwOYV6Sf.N9Ji2yDDH..fxcBD.Pag.A..rWBD.Pag.A..broiDqIuQF....bTVKaAkFY.......sGZSABnkKe2gdBy........sEhXK..sU5P...........kgDH..........fxPFY....vQWoZw6XnnFbJ.....P6AcH..........fxPBD..........PYn1Vf.Ly....fCSoLx.......JIzg...........JC0lBDfFD........sSZ4hvqoaA.vgIcH....3npVNx.JZjA......ztPf...........JCIP...........kgDH....3nqVLx.BiL......f1EBD..........PYn1Tf.Z4F5oka3G..........Jszg....fitLx.......JIDH........5.qkMoWQrE.fCWBD..........PYHAB..........nLTaJP.srcD0x1UD...vdn+lB.....TRnCA..........TFRf...........JC01BDPKZwmoLy....fCfTsXlATzLC......ncgND..........PYn1Tf.Z8N5QKB.......fiFZ4JvWTS2B.fCS5P....vQWsbFiY0KA.....ZWHP...........kgZiiLfjLv...........5XQGB....N5XIAyjC..f.PRDEDUxHC......njPf...........JC01BDfYF..........PGZ5P....vQWsXjATzHC......ncQaJP.ZP........zNwhvC.PajND..........PYHAB..........nLjQF....bTUpTIeGCEK1x2QA......GMnCA..........TFRf...........JC01BDfYF....bXqEugAiL......f1E5P...........kgZSABPCB.......f1GsbM30ys..3vkND....bTlkuD.....nTPf...........JCYjA..........TFRGB....N5JUKhPbQiL......f1CBD..........PYn1Vf.Ly...........5PSGB....N5xHC......njnMEH.MH........Zezx0fWDaA.3vkND..........PYHAB..........nLjQF....bTUpTIeGCEKpAmB.....zdPGB..........nLj.A..........TFpsEH.yL....3vUKe+BlX.......sKzg...........JC0lBDfFD........sSz0s..nMRGB....N5JUKV8xhV8R.....f1CBD..........PYHAB..........nLTaJP.UkI4iarvQhRA.fNxZHexV7cEYZ4.LDf8uToR91NJVr4RTk..TZUrYuFH...z9pMEHfrUl7F.ryFMCPA.J20xWuulJKQEBPmNYps1DOtP80UhpD.fRq76J4qAlNaMknJA...NVQaJP.8sKI+vV+1ktY.fxcqaaIe899zESdHfCOU1idk3wMr90VhpD.fRq5ew0j3wU1sdc.dl.jTksnK80TdaRO.fxcMdDpq81lVI+A08jewVwVZNxWvEf..TNaoaJ4LBZP8Pf..N7zkgebId7NW5hKQUB.Po0NV7BS73ZZwqQBvARK6ReaugRSc..P6mskK4lzq11XW6sMsR98oKYhdV6d+PyWnXr30W3f7Q..Pmcya04S73SneBD.vgmtehmZhGu8mYNQgFarDUM..kNa7wldhG28S5zJQUBPmM8qaIeO3qYaVOd.fxcqbqI2P98uqss0juMuR9mx.yj3wOxKzTa8SE..cvs5sUHVwV1aZDSEQbJCrMFGQfi4z0QLpnpd2u873laHWr9G9OUBqH.f1eEZHWrwo+aSbr9btWTIpZ.5rYnsnK8YC5A.T9agqK4lzaX8tcNP.myHpHwim0JxGaZWMe.d1..zY1uYAI2IumP+yD8rl117JB3XS8YRWdhGux+iueIpR..JMV0u7+LJT2N1yiqn68J56YcdkvJBnyjSZ.I2fdKY8EhcjyX7E.nbU9BEiYshjAB3TFPEGfm8AWaNP.mT+yD8aeZKAMWLh+mmxfKB.nbyKr4BwSzhK7XRiopRT0.zY0Peiu8DOdqy5giMO2mrDUM..suxW+thkc+eqDGafu12Zjph11B5AbrmAzsLwf5dx0i+O+bFCW..kqlwxZJpqw8F9uZqJUbxsnC9e3pMGHfToRE+UmRxVE7iu77w7Wa9CvGA..c1zTghwO3wyEE2mMcv.5d53rFZa6BO.N1UuF63htO1yJwwVvW9SFM2jQOF.T96Yuyubz3FW2ddbpJpLF064CTBqHfNitfQkLDQ+gE2TrccI..fxN6pwhw+67SF7uy63pLpLSaqq81lCDPDQbAirxXHsX1Ec+OZtXi0Y9EA.TN3GMqFhUu0jiDn+1wUcjJkwE.vKeG+0cqId7td9EEK5ac6knpA.n8wZ9C+5XU+GOPhiMz216Kx1uAVZJHfNslznqJpox899wquohwO3wqOJVTn...Jm7u9D4RLZfpHcDulSps20deEEHfzoSEu6yNaru2Sfc1Pw3a9myEasdWDB.PmY+r41P7HOexct6DFdEwXGj1ZJPaSeO6KH5+k9FSbrU8ue+wK7Su+RTEA.bz0FehYFK3y9gSbrp52fhwbs2RIph.5LKakohW+XSdy.l2ZJD+74YzA..Tt3WL+FhYuxjcj++pSopnm0z12jduhBDPDQL59lIdis3hPV+NZN9x+9cEqda5T...c1zTghw8+34he2hRtfB8qqoi2yYmsDUU.kKNkO5mOppeCJwwd1u9Tim6991knJB.3ni07f+xXN276KZto8dc0oxjIN8a+NiJpsKkvJCnyrKcLUFCqWIWV+e8BZL9UKngRTEA.vQBM2bw3eeNMD+pVLp.FROSGu1Sts2c.hHhTEOBzOgJVrX7cejbwSthjoUnxLoh25YVU7pN9JizZsv..c38BatP7Cdrbwp2VxwDPWpJUbaWVMw.6VlRTkATNYqOybim75eGQyMjKww6yE9piS8S7khr8seknJC.3Utl14NhE8M+BwZ+E+3VctS7i9EiQ7V+6JAUEP4jMryBws+aqOpuojKs+YOhJh2yYmMptBqEO.PmIaOWw369H0GK9EStY6qspTwm3xqI5WWekst7GQBDPDQju4hw2YF0GyaMstq.LjdlNdcmZ0w3GRlHcZWLB.PGMqZqEheyBaLdxkmOZ4EFzkpSEe3IWSLxdKL..G4r9G9OGO0G8ZhhMkL0yYpsqwveWWSLx24UFU18dThpN.fW9xW2Nik+e8iiU7udWQSaaKs57i9C8IhQ+du1RPkATNZwqOe7M+y0GERlm+nm0lNdymVkw4NhJiLVKd.fNzx0Tw3OsjFie6BapUA8qpJRE27qplXT88U95xeDKP.Qr6VYvObVMDO7RaZ+d9tkMUbFCsh3j5WlXH8LczqZSGUWQn6A..zNpg7Eic1PywZ2dwXoarPLu0jOV4VZd+9b6WWSGSYxY0Y..NpXSO4iDy81tlnPc6nUmKUkUE89beUQeO+WUziSYrQsCYDQkcsaQpL96Q.PoWwBEhl14Nhcs5UDaaQyO17iM8XSy7ODM2XqaY2opnh3DusuXL727eaInRAJmsf0kO9NyHWzP9VuD+cKap3rFdEwI2+JhgzyTQOxlNpRmC..njoXwhQt7Qro5ZNVwVJDOyZKDO8pKDMVn0uNdWpNUbCSpl335yQl0A6HZf.dIybYMF+aypwH294BQ..nygydDUD+8SHajsRKX.vQO0slUDO0G8CF67YmWotT..NhK6fGVb529cF87TNiRco.TlZUasP7u7v4h0ui8eP+A.nykiqOYhq4BpN5SWNxsoXNpDHfHhXK0WL9YyIWLqUz5VOLPmbEKFQjJhnXD5vGPYmA08zwaebUGm5fpnTWJ.GinXgBwx92t+XYe2uw9saA.jzK813S4ZwgNrRWc1XXuqOPb7W0GJxTc1Rc4.Tlqg7Eie47aL9CKtwnYKFOTdxZxCk8xVYp3MN1phKYLUFoOBO1eNpEHfWxZ2dg32s3lhYsh7Qtlb0HPmduzuFmJhnXwnXpHREt.DnytTQDm3.xDS93qJF2Py3FL.TRjutcFuv+1CDq4W7ShbqcUk5xA5D3kVTPfNJppeCJFzq+sGi7cdkQ08p2k5xA3XLartBwucgMEO9xsV7P4jhQwHUwX2AAXeWedfxB8r1zwEM5JhKYLUE0V0Qme49ndf.dIMVnX7rquPrnWrPrpsTHdwcVL1UCEiFxWTGD.5jn3eYAGSk3XQjpnTIBclTYlTQ1JinucIcLndjNFS+RGm5.qL5QM98XfNN15yL2XiO5zisNuYG6ZEOezzV1XTHWcgs7DzZEihBoKzdKcpHS1tDU1y9D0NhQG8XriK5y4bgQuNswKbs.kbMluX7LqqPrn0mOV4laN1vNaN1USQje+LihA5fqXwnXpVul7g2C.zoT0UjJ5Z0ohAzsTwH6Sl3TFXl3366Q+MnW6Vf..5baQuX936LibQ8GfzE+FFaUwabrU2NWU...brgW7g9cw79LSIZNWtVexTQb72vmNF069pa+KL...3nhe47aH9emei62yUSkohqahYiSZ.F4m.GZBD.vgzLVZiwO5Ia3Ptg7lvvqHthyMaTYFISD..fiTd9ez2Mdtu8mKNTsWuA8FeWwX+Xe9HUEVTP...5rpoBEiG3wxEO4JxePedoSEw6dBUGSbzU0NUY.cVIP..GPEKVL9ud5FiGbgsNEhmx.yDKd8EhBMm73GWexDenIUSzspEJ....dknXgBw7+RepXs+hebqNWuN2IGa4IldDMm7Bx643O+Xbek6Mprqcq8pLA..fiP1QCEi6bZ0GKaSERb7Loi3D6elXAqqPq9Xt7Stp3sd5UYrEAb.IP..6WMluXbeOR8wbWcqu.i2zoWU75Okpikrg7wcO8bQcMl7OizmtjNtgImMFT2yzdUt...TVooctiXN210FacVObxSjNUbB2z+PLx2w6KV+C+Pw79TWeTXW0k3oTyvGcL9u4CDcYvCucrhA..fWIV61KDe6GJWro5RF52tTUp35unrwX5WEwuZAMD+hmt0afuybHYh2+4WSTUEBE.PqIP..sx1puXbGSaWwJ1RxK7nhLohq77xFSXX6sEjtgcVH9VOTtX86H4yslJSEefKLabJCT6JE..fWN10ZVYLqa5Jh5W9yk33Ypo13zt86N5+E9p1yw19RWbLma7JhF1vZR7bqn68JNyu58E89LNq1iRF...dEXAqKebOObtn9lRdK65e2RGe3ImM5WW26lu6IWY939ezbQ9BIetCuWoioLoZidTiPA.jj.A.jvp1Zg3aOsbwV2Uxave2xlJ9PWTMww0mVuq+2UiEi6dF0GO65S1MARmJh20DpNljYXD...GV17SOq3ot02ezz11RhiWU+FTL9uwCDc+3OoV8wzvl1PLqa4phctnmNwwSUYUwo7o9pwP9qdyGUqY...nsaZKsw3m7jMDM2h6V2Iz+Lw0OwZhZqp02f+ksoBwcN85icjK4GTOqMcbCSJaLzdp68BrWBD.vdLu0jOt2YlKZHex+rvf6Q5XJStlnO0l9.9wVn4hwObVMDyboM0pycYmTUwa8LpJRaFFA..vAzp+s+hXAetORTrojs.ztdhmdbVe8uWTce52A7isPC4hm9ybywF9y+es5bG2UeKwXtla7Hd8B...scMWrX7e8TMF+tE05Q.vEL5Ji+9yp5HS5C7Zpuoc0bbGOT8wZ1VxM2W0UjJtlKHabZCV26EX2DH.fHhH9iOaiw+9bZHZ4eQ3TGXl3Cbg0DYq7v6l4+qWXCwO+oZLZ4eX4zGRl3pO+ZhpMCi...nUVx28aEK6d+Zs538axu13z+beiHS0YOjeNJVrXr363KGq3Gd2s5bC3xeKwX+zekHSU5dW...Tp0P9hw28QpOd5Umrq6lJh3MeFUEu1St5CqOO4ZpXbOOb8wyrtV74IUD+siq53RNAW+Of.A.Gyq4lKF+z4zP7PKo06r+IMlJi203pNRePRg39yrWU9368H4hlZwLLZX+kYXTOMCi...HhHhBM1XL+O2sEu3C9e2pyM7280Em3M7whTuL6zVq7W9yhE8k9nQw74Sb7tepiOF2W69hp6UueEUy...Pa2VquXbGSaWwJ2Rxc1ekYREW04mMF+Pe4sy9at4hwOYNMDSa+rF+SdLUFuy1vZ7CTdQf.figcvRO3aebUGW5qfzC9BatPbmSq9X6sXFF0iZRESYx0DC2LLB..3XbMr0sDy8Vu5Xay6ISb7TUTQbhezuTL72zauM+4dSy5Qim5i9Ah76XaINd1AMzX7eiePz0QN517ma...nsYEasPbGOT8w1pO45l28rohOzjpIFYua6qa9e3YaL9ONBzEfAJ+HP.vwnZOluPadW6NoiqdqI+ZTUEohq97yFmwPLCi...N1zNW9yGy9lduQt0rxDGuht183L9x2SzmIb9ux+ZrhkEy9FeeQt0r7DGOSW5VbFe46I56YeAuh+Z....GddpUmO9tORtnw7IusbCom6ty516ZekeC6m2ZxG26LyEMzhuFCtGoioL4Zh9Ta5WweM.57Qf.fiAsrMUHtyoWeriVr686YsoiaXRYigdDb26mqohw8Ny5i4u1VOKjdaiq53UehlgQ...GaYiOwLim9icsQ9ct8DGO6fGQL9u42O55vOtiXesZbaaMlysdMw1d5GOwwSkISbh21WHF9a4cdD6qE...r+86WbiwOaNMDs7FxM1AkItlK3H6t2eUasP7smVtXq6J4F0qaYSEenKpl335it2KbrlLScpScpk5h.n8yStx7wcM8bQtlRdoGCuWoiOxkTaz+tcjMgfUjIUb1inhntlJFuvlRdAHKXcEhsmqXL1Al4k8bQE..fNiVwO+eKl+mdJQy4pOww6woc1wDtqebT6.FzQzudYxlMF7q8uNpaMqIp64VvdOQwhwFmwuOZp9bQeNmI55wA..3nflatX7imUCwudAM1py8pNgJiq77xFUl4H60h28roiyY3UFKd84issOaJvFyGwit77w.5d5Xv8PmB.NVhND.bLje8BaH9edpVegGm4PxDu+yulnpJN5tHf+okzX7uM6VOCiN4AjIt1IVSTiYXD..PYphEKFK9N9xwJ9g2cqN2.t72ZbZel+oHckUdTsFVx28aEK6d+Zs538YhWdbF292JpHaMGU+5C..vwRpuohw+xLpOV3K1htmapHdGiu53hGyQ2tmai4KF22iTeL2UWnUm6sbFUEu1St5ipe8A53Pf.fiAju4hw+5S1P7nOeSs5bW1IWU72b5U0tsifl+ZyG26CmKx0hYXzf5d5XJSNaz2tncEA..TdIet5im9SeSwFm1uoUm63tlORLlq9C2tUKq42+qhEL0aJZtojAEtKiYrwY80u+Ha+5e6Vs...P4pMVWg3NdnbwZ2dxtla1JREWyElMF6fpncoNJVrX7e9zMF+tE15MJ34MpJi2yDpNpHsMpGTtSf.fxb00Xw3tmd8wR1PxT.lNUDu6yt5Xhi5naJD2eV81JDe6GJWrkVNCipNU7AunZhQ0WgB...n7PtMtgX127UF67YmWhimtxphS4y90iAeYug18ZZKyeNwb+HWUzzV2bhiWUeGXLtuwCD8XLmb6dMA..P4hmeiEh6Z50G6ngj29sdUa53Flb1XH8n8e8umwy2X7idhFhlawcDbL8KSb8WTMQWpRn.fxYBD.TFa86nP7smVtX86H4MdulJSEW2DyFmz.ZeRg39y1xULtyosqX4aNYsUQ5Hthyql3rGdoq1...3HgsujEFy9luxnwMr1DGuxdzq3L9Z2ez6SabknJKhcstUGy9Feewtdgkj33oyVSbZ29cECXhWRIpx...nyqmXE4iG3QqOxmbYuiQz6zwTlTsQ2yV5tw6K5EyGemYjKpuoj2Vv92szwMLorQ+6lMpGTtRf.fxTO65yG28LxE6pwj+Jde65tSg3.6.7h6MVnX78dzbwbVY9Vct2zoWU75OEyvH..fNmdwG9OEy+S9AiB0uqDGu1Qb7w3+le+n1AMzRTksW4qamwb9XWerkGeZIOQ5TwIbie1XjuyqrzTX...zIzuZAMD+hmt0sl+wMrJhq57xFUkozuK7W2N1c26ci6LYhEpspTw0OwrwIzeaTOnbTloN0oN0RcQ.bj0LWViw8LybQis39rO59lItkKt1n20ltzTXsPlzohyZXUDMULhk1hQZvhewBwF1Yw3zFTlHsYXD..PmHuvO8AhE74t4nXSMk338ZBSLN667GEU269VhprjRWUUwfeMu4H2l2TriE8z68DEiXSO5eNpeSaJ524O4HU5NFu+A...5HJeghwC73MD+wE2TqN2q4TpJ96mP0QEcPVi6tVc53bGQkwR2XgXK6ZualvlJDwiu77QupMULrdU52Lg.GYoCA.kQJVrX7ymeiwu9YZcJDOmQTQ79NmrQEc.Rg39yC+7MF+nmrgnPKZkRGe+xDevIVSzkp6XV2...7RJVnPrfu1TiU+e9CZ04Fza4cGi819bQpLcLWbsk8S9dwR9V+iQKGpn85blTLtuzcGUzktVhpL...53ptFJF20LpOdtVrg2xjNh28DpNtvQUUIpxN3xWnX78e7bwiu7V28desmZUwadrUEoRYM4gxEBD.TlnwBEi6+QyEyd+z98eCisp3MN1N9se+Eu9cOCiZ4XNne+kwbv.5.LlC...X+Iec0Ey4ie8wVdrGJ4IRmJN9o7ohQ8tu5RSg8xvKNi+XLuO4GLZNW8INdsibL6dLGLvgThpL...534E+Kse+MreZ+9W2DyFmXmf1u+ub9MD+uyu0avvyZXUDWQGjwb.vqbBD.TFX64JF24zqOdgMkLEhUjNh224lMNmQTYIpxd46fdQTWX13DGPG+KhB..3XK6ZcqNl8McEwtV1yl33oylMNsO2cFCXRu5RTk8x21VxBi4bSWQz3FWWhiWYO6cblesuWzqwNtRTkA..PGGK9EyGemGt7Xys83Kuo36+X4h7sn68Nx9jI9PWTMQ2yJT.PmcBD.zI2Z11tuA5adWIe05tVcp3CdQ0DitucdtviWRcMTLt6YTerjNYsYI..fi8r0mYtwb9HWUzzV1ThiWUeGPLtu9CD83DNkRTk01kaCqOl0MekQcKY9INd5JqJNko9MhA+pe8knJC..fRuCz3ucL8KSb8cRG+sKciEh6Z50G6rgj2xvdW6tC3vf6Qmu6y.vdIP.PmXyes4i6cl4hbMk7WiGX228KR22tz48Eoy2bw3G73MDO1KzTqN2q4TpJ9qOMyvH..fRq07G90wBl5MFM2XCINdWN9SMNquw8GY62.JQU1qb4yUe7TexObroY7fs5bi55ts33uxOTInp...nzoXwhw+87ZL9sKn0sX+ycjUFu2yo5nhzcdWy5MV2t27gqa6IS5P1JSEefKHabpCR26E5rJyTm5TmZotH.d46O+bMF2+ilKZJ4lnONoAjItoKt1nGYSWZJriPRmJULtgVQjNUDKd8I+G4R2PgX0aq43zGbEQlNwWfE..PmWO2CbWwh+xe7nXgjWqZel3kEm0239ip5QuJQU1QFoqnxXPW9aLZptcEae9yJw41xS9vwNW0ph9OwKIRkoyaHjA..3vUi4KFe2GIWLik15Mv1a5zpJdGiOajtS9FXq1pRGm2HqLdgMWH1Xc6cSHlu4HdhUjO5Z1TwH6sq+G5LRGB.5jo4hEi+i41X7GWbqSg3DO9Ji+twWcY2MI+IWQ939erbQ9BI+yUCu2oioLoZidXFFA..zNo4lZJl+s+wi08q+OZ04F167piS5l9TkccxpU7+7SiE+O8IZU3G5woeNw39p2aTUO5YIpx...3nuskqXbGSaWwJ1bxcNeEYREW44lMlvvKu147EZtX7imcCwLdtVG9gK4DqJd6mYUc5C+.brFAB.5Dog7Ei6cl0GyaMIWHtTQDu0yrp3xOopKMEV6fm+uLCi1QKlgQ8p1zwTlT1Xn8TxDA..N5posusX1250Da6odrDGOUlLwIbqe9XDu0+tRTkcz2Fe7GNdpO10FEpaGINd1AOh3r9V+fnKCajklBC..fihV0VKD2wzxEaYWICCP2pNU7AunZhQ02x20k9AWTCw+0baLZ4MQ7zFbl3ZtfZhpqPn.fNKDH.nShsrqcmBwUs0jW3QUYREu+KHablCo7JEh6Oa5uLCiVaKmgQUjJt5KHabZCt7+6A...kF0sxWHl0M99hbq9ERb7Lcoawo+E+NQ+N2IVZJr1Q67EVZL6a58F4V6pRb7J5VOhy3KeOQeNqyqDUY...bj27VS936NybQt7IuMZCp6oiaXxYi9zkx2v.7Rl6pyG22LyEM1ht26P64t6du8pVgB.5LPf.fNAdgMWHtyoUer8bI+00dTSpXJSplX38p7+BOdI4ZpX7cd35iEttVzkDREwe63qNtjwTUIpx...JWsoY+3wScaWSjeGaMwwqdfCMNqu42O55HO9RTk09qgsr4XNej2er8mY1INdpJpHNoO1WNF1a7sUhpL...Nx4OtjFi+8Y2Pzx6f1IOvLw0cg0DYq7XmaD9J1Rg3NlV8w1pO42L5d1TwGZR0Dir2G6b+IfNqxL0oN0oVpKBfCr4rp7wcMsbwtZp0Iv6ibocIFX2RWhprRiJxjJNmgWQriFKFKuEyromYsEhc1Xw3TGXlxt41J..Powp9U+Ww79DWWzbtck33c+TGeb128OIpcPCsDUYkFUTSMwfdsu0ntUshntmew68DM2brwo8fQSM1Tzmy9Bb83...cJ0bwhwOcNMD+p42XqN2jFSkwUedYiJOFqU42iZRGSXDUFK5EymXSK1P9Hd7WHeLndjNFT2O159T.c1nCA.cfYF8bv86WbiwOatsNklm5fxDefK3XqTZB..bj2hu6uZr7G3a2pi2+W8aJNsO6WMxTU0kfppiik7u70ik889Fs5386he8wo+O7OGYpNaInp...nsIWSEi6Yl0GOyZac2o8sclUGu5S7X6tSaC4KF26LqOl2ZZw2ehHdqmYUwkeRGa+9ifNxDH.nCnBMWL9Qypg3gWZSs5bW5IVU71Nyphz1wMQDQ7zqNebuORtnwVLGmFRORGSYx0F81LLB..3koBM1P7ze1aN1ve7W0pyMxq7FiS35tkRPU0wzp+M+7XAe9aMJ1TxcPU2N4yHF+W69hp6S+JQUF...G917tJF2wCsqX0aKYWospJREWy4mMN8gTQIpx5Xo4hEie1baL9CKt0cPgKbzUFu6yp5HSZqIOzQi.A.cvTeiEi69gqOV7KlLkcoSEw67rpNl7wercJD2eV4VKD2wCkK1Z8IuXMyvH..fWtZXyaLl8s79icrv4l33oprp3T9jekXHu12RIpx53ZyO0rh4dqu+H+12RhiWc+FbLtu4CDcezmXIpx...3PaYapPbWSu9DsC+Hhnm0jNlxjyFCqmVe4V5gdtFie5rZHZtE2gwSb.Yhq+BqIpoJgB.5HQf.fNP1vNKDe6okKdwsm7FamsxTwG3ByFm5.kBwCjsVew3Nl1thUtkjeuqxLohq57xFieX9dG..vA21e9mMlyMdEQCqe0INdEcumwY9k.Hvcg...H.jDQAQUtun2m4DJQUVGe0slUDy9Fuhn9UrzDGOSscINsa+6D8+BlTIpx...3.a1qLe78dzbQSERdqxFVuRGSYR0F8rF2X6CjmYc4i64gyE4ZJ426FP2SG2vjxF8qqBRAzQg.A.cPrzMjOtyYjKpqgj+JYu6R53Flb1Xvc2KddnzP9hw88H0GO0pKzpy8WeFUE+UmrYXD..v925ejoGy6SbsQgcUWhiWyvFUL9u4CDcYHinDUYcdzzN1dLmO50FacVyL4IRmNNga4eLF4a+8TZJL...1O9MKrg3+9oZcqu+LFRl38e90DUWgv.bnrlsWH91OTtXy0kbi50kpSEenIlMFc+rQ8fNBxL0oN0oVpKB3XcO1KzT7cd3bQC4Sd7iqOYhOxEWaz2tjtzTXcxTQ5TwDFdEQCEh342XxPArnWrPr4cULF6fxDoS4B4...1qk+y9gwyL0ObTrwjKFXOG+4Gm8c9iir8c.knJqykLUWcL3WyaIpeCaH14yN+8dhhEiMMy+Xzv12Vz2yaRQJWON..PIT9lKF+qOQCwuaQM0pycYmTUw68bxFUjw0rd3naUmNN2QTYrjMTH1Z86cyN1TgHdrkmO5aWSGC0HW.J4zg.fRre47aH9emeqSg3YM7Jhq7byFU5BOZSl9RaL9wOYqmgQmP+yDW+DqIp0LLB..NlWwlaNV323yGq5e69Z04F3a3cDm1G+KDopvNZosXo+q2Srz671inEWOduOuKNNyu3cFUTaWJMEF..vwz1UiEi6dF0GO65StgxRmJh+tITcbQitpRTk04VSEJF2+ikKl0Jx2py8FFaUwabr5duPoj.A.kHMUnX78e7bwSr7V+BjutSsp3MeZdAxWoV35xG+KObtn9VLCi5e2RGe3IaFFA..GKK+tpKl6mXJwlej+XxSjJhQ+A+3wneuWWoovJirtG5Ai4+ougn4Fxk330NpSJNquwCD0LfAUhpL..fiEs9ct61a+52Qx1aeMUlJt1KLabxCTXfek5mOuFh+umo0a.xydDUDuuywFfDJUDH.nDXGMTLtqoWeqZq8YRGw68bpNNuQJEhGort+xLLZisbFFUUp35unrwXLCi..fi4jaCqKl0MdEQcKcgINd5pyFm5+v2JFzE+ZJQUV4mssv4Ey4VtxnwMugDGupd2uXb+y2eziS9zJQUF..vwRVxFxG28zyE00XxaIVe6R53Flb1Xfc2lG6HkG8EZL9AOdCQgjKIeLp9lI9fWTMQ2pVn.f1aBD.zN6fdCpmX1XL82Mn9HMAv...3krsEM+XN27UzpaPck8puw39mu+nmmxoWhprxWBfA..PojaPc6ukr97wcOCAv.5nPf.f1QGrVX+ML4rQ+0B6OpwHZ...PKruz4fOhF9DwneuWaoov...JqoE1W5XDM.cbjYpScpSsTWDvwBl9RaL9tORtnojaR83D5el3lu3ZidVS5RSgcLhLoSEieXUFEiHVx5S9CgkrgBwZ2dywoO3JhLocAf..P4nk9udOwh9B++hh4SFPzdedWbLgu0OHptW8tDUYGaHckUEC5xeSQi6XGw1el4j3ba4Ildrq0stn+W3EGoR68EA..7JWSEJF22ilKl1y0TqN2qerUEuqyJq0B9nrtTU537FYkwx1TgXS0s2MIY9li3wWd9nG0jJFQusIIg1C5P.vQYEKVL9OepFie2hZcJDO+QUY72OgpiJbgGsqdrWno36+34ZUKh535Sl3CcQ0DcKqed...kKJlOeL+uzmJV6u7mzpyMz29UDm7s7YcSnams7e1OLV7W6SGQyIuf7dN9yOF2+z8DU1stWhpL..fxA6HWw3Nmd8wx1TqGgruuyIabtirxRTkcro7MWL9gOYCwi77sNbFW1IUU72bFUEoRYM4gilDH.3nnFxWLtuGo93oVcgVct2xYTU7ZOYso9Rkktg7wcNibQcMj7OA16+xLLZvlgQ..PmdMsycDy419.wVm0LSdhzoiS3V9GiQ91eOklBiX8Oxzi48It1nvtpKwwqYXiJF+27AhtLjQThpL..fNyVy12capey0kL7oco5TwGZhYiQ2Oso9Rke8BaH9edpVuwIOigjId+meMQ0UHT.vQKBD.bTxVquXbGSaWwJ2RxK7nxLohq57xFieXtviRsM7WlgQuXKlgQYqLU7AtvrwoZFFA..cZU2ZVQL6a7Jh5WwRSb7L01k3zt8uSz+KXRknJiWx1e9mMlyMdEQCqe0INdEcumwY9Utun2m4DJQUF..PmQOy5xG2yCmKx0Txa60.51t2DX8qq1DXkZydk4iu2ilKZpPxeFMrdkNlxjpM5YMBE.bzf.A.GErxsVHtiGJWr05Sdil6d1TwG7hpINt93BO5nn9FKF28LpOV75S1EGRmJh24YUcL4iupRTkA..zVs4mZVwbu02eje6aIwwqteCNF227AhtO5SrDUYzRMr4MFy9Vd+wNV3bSb7TUVUbJexuRLjW6aoDUY...cl7POWiwOcVMDM2h630INfLw0eg0D0TkazbGEKaSEh6Z50GaOWxeX0yZRGSYxYig0S2+D3HsLScpScpk5h.Jm7zqNe7smVtntFS9hYCoGoia4RqMFbO7hYcjTYlTw4LhJhslqXht4PwHh4slBQ8MEwIOvLlgQ..PmDq927yim9i8AhlqOYqnuam7YDm8c+SitLjgWhpL1epnlZiA+5dqwNW9yG6ZYKYumn4BwF9y+ln4linOS37KcEH..PGZMWrX7eL2Fiew7ZLZ4te8BGckw0b9YipzJ56PoW0lNNqgWQrn0UH1w9LReykuX7nuP9Xn8HcLftmtDVgP4GcH.3Hne+haL9Yysgnk+V0oNnLwG3BpIxVoK7nire6hZH9umaquvwSavYhq4BLCi..fN5Vx87Mhkcee8Vc79cwu93z+G9miLUmsDTUb3Zw20WIV92+NZ0w6+q9MEm1m8qEYpR26B..XuZHew3dmY8w7VSxt+ZpHh+5yrp30bRUWZJLNrjqohw8Ly5imYss3meoh3sclUGu5Sz0+CGoHP.vQ.M2bw3mLmFhosjlJ0kRDQD+KuytUpKgiXt1e5NJ0kPDQDCsmoioL4ZidYFFA..c3TnwFi48Odqw5+c+7RcoDQDwk+XKuTWBGw7fm6HJ0kPDQDc+TGeLtu12MptW8oTWJ...c.rk5KF2wCsqXUas4C8Stcf0j+HuIMlJi203pNRm1ZxCuRoma.uBkqohw2dZ02gIL.bzwp1ZywW7AqKVwVJbnex...saZXKaNdhq6czgIL.bzw1elYGO5U7lhc9BOWotT...JwVwVJDewGrtNLgAfiNl1RZJ91Sq9HWS1WyvqTBD.7JvlpqP7k986JVv5bShOVv1puX7U980Gyc04K0kB..PDwNegkFO1U9Fis+LytTWJzNng0sp3wtp2RrgGaFk5RA..nDYtqNe7U980Gaqd2j3iErf0s66Aylpy8fAdkPf.f1nmeiEhu3CVer1sIEhGKowBEiuyzqO9cKpwRco...GSaiO9CGO1U8libqcUk5Rg1QEpaGwbu42ar7+qebotT...Zm86VTiw2Y50GMVPX.NVxZ2VywW7AqOd9MJT.PaUEk5B.5rZT8MS7U+q6ZotLhH53LSeZOTNMKl...Z6564bgwk9GmeotLhHh3AO2QTpKg1MW9is7RcI...bLpK6jpJtrSppRcYDQXM4A5bQGB..........nLj.A..........TFRf...........JCIP...........kgDH..........fxPBD..........PYHAB..........nLj.A..........TFRf...........JCIP...........kgDH..........fxPBD..........PYHAB..........nLj.A..........TFRf...........JCIP...........kgDH..........fxPBD..........PYHAB..........nLj.A..........TFRf...........JCIP...........kgDH..........fxPBD..........PYHAB..........nLj.A..........TFRf...........JCIP...........kgDH..........fxPBD..........PYHAB..........nLj.A..........TFRf...........JCIP...........kgDH..........fxPBD..........PYHAB..........nLj.A..........TFRf...........JCIP...........kgDH..........fxPBD..........PYHAB..........nLj.A..........TFRf...........JCIP...........kgDH..........fxPBD..........PYHAB..........nLj.A..........TFRf...........JCIP...........kgDH..........fxPBD..........PYHAB..........nLj.A..........TFRf...........JCIP...........kgDH..........fxPBD..........PYHAB..........nLj.A..........TFRf...........JCIP...........kgDH..........fxPBD..........PYHAB..........nLj.A..........TFRf...........JCIP...........kgDH..........fxPBD..........PYHAB..........nLj.A..........TFRf...........JCIP...7+m8tOCvtpp2eb+cxjIsI8xjduQIDPAjt.RS5cDKW8mW0q8q0qkq8JfMPTTrdQDEDTDDoWjND5DfDRuWljLkjIYljLYl4+Khg+Sxb168YRFRhaeddkyds2q85bN6yAj0m02E.......jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PcdO8..ni2G7FpaO8P...f+s08bXidO8P....1Mx+M4A1alJD..........PNj.A..........jCIP...........4PkzRKszxd5AAv+53Ftoab696K9Bun8PiD...92S92IG..f+8g+8+A1UoBA..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PcdO8..3escC2zMtmdH...v+Vy+N4.....IQEB..........HGRf...........xgDH..........fbnRZokVZYO8f.....n3bC2zMtc+8EegWzdnQB....vd6Tg...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgDH..........fbHAB..........HGRf...........xgJokVZok8zCB..........5XoBA..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNj.A..........jCIP...........4PBD..........PNTm2SO....f7iO6m+qDqZ0qd298c7iabwW6K+41seegNRszRKwG5i9ohF13FKX6cpScJ9EW0kGcsqcc27HC16zW5q9sikrzklX6Wx29qECeXCc23HB...XuOBD....zgnt0u9XQKdI6Qt2CaXCYOx8E5Hs7Urxn5ZpMw1G4HGgv..+SaZSaJl67lezbyMWv16d26VLzgL3cyiJ...f89HP....PGh4M+EtG6dOgwO18X26zbkW0uHpu9FRr8O4G+CGcqalfW1p4Nu4mZ6SX7ia2zHg8zV9JVYbsW2MjX6Ce3CK9OdGWztwQzdeVvBWThgAHhHF2XGSzoNYmxD...Pf....fNDyKiIy70Sieb68EHfZqcswi7nOQhs2+90WgAfsybla5eGZhSPf.92Ey7Umc7rO2KjX68qe8c23nYuSyYdKH01mvDF+toQB...vd2DUZ...nCQVqt4Wuz0t1kX3CeX6Qt2oY9KXgo1931KLDCrm0bEH.9ml27Sext2aLDT6tMm4LuTaehpnF....QDBD....zAYtYrZMe8xXGyniR2KrrPm06GlPOZsFarwXgKZwI1dW6ZWhQNxQrabDwdRyOy.ALlcOCj8hkUUoQ.Z....1p899uZF...7ubpp5ZhZqcs6Qt26stR6ydE9NlcOCD9WBKbQKIZpolRr8wNlwrWYvWniWiaYKwBWzRRr8xJqrXT+ad3PV25pKV0pWShs2+92un+8ue6FGQ....68py6oG....v+5KqRcdDQLkorewAr+6WG989fNvozg2mcDl+7WXpsqBAPqk0VtwDrZm+2FKdwKM0vgLlQOxnzRKc23HZuOY98kw62WA...1FAB....1kM24mcf.NoS33hi7veS6FFM64UU00D0t1jqXBCbfCH5cu60twQD6saNYDpFk+7+8QVUWj8VqJJ6NMmLCPy32MMR....16m5MH...rKatyK8IvJhHl33+2mIzL6sK.SnGauL2Oz+2nu+7u6rcijsrpJM99B...v++Tg....fcIszRKYVd76cu6ULnAMvcOCn8Br6XB8Zt4liWc1yIVwJpLptlZhpqtlnkVhXnCcvwPGbEwPFxfiAO3Jht1ktrKeuZul27WXrnEujXUqdMwZVSUQm6boQ4kWdbdm8oGkWd46R88xV9JhY9pyNpolZhpqo1nkVZIFbECJpnhAECYvCtCexRWxRVVr50rln5ZpMpo1ZiZpo1XSaZSQ4kWdzyxKO5YOKOpXPCL1+8aeht28tuScO1vF1Pr7UrxDauu8oO61+9SKszRL24sfXoKa4Qs0VaTSsqMpu95i90u9FCZfCLpXPCLFz.GPLnAMvnKuN7L1Fpu9XFyXVQUUWcTSs0F0V6ZiN24NGCYvUDCdvUDCcvCNpXvCZOxy2MzPCwKN8WNpb0qIpolZh0u9MD8qe8MFbEUDUTw.iwO1wrK8b9dxsaj5pa8wqLiYFqZ0qIV0pWSzPCMDkWd4wAM0oDuw2vAl501TyMGyd1yMVwJqb69tRECZfwfGbEwPF7figL3J5PpNJoskATRIkzt9cfMTe8whVzRhppt5npppNpp5Zh5qu9n28t2Qe5cuh9zmdG8oO8I128YRQ26V21kG6....6tIP....vtjUrxJi5qu9TOmIraZ0Z9q9sWa7BuvzSr8gLzgDeku3mM09XSadywkbY+nX0qdMIdN8pW8J9he9OUzmd263q8MuzXMqY6O20st5R8d72u86Ntu6+A2ti0ktzk3G9891Qm5T5ExsEtnEGO3C+nwi+DOUTSM0l54FQDULnAFG6a9niS5DOtne8suYd96nuvW5qG0U25KXaGzAM03C7e9tiHhXiabSwC+nOdbO26CDKZwKoMmaW5RWh2wEeAu1euoMu43y7+7khVZokB12GwQbXw65segQDQzXiMF2wccuwi7nOdrnEuzTGuSbBiK9OdmWbru6yjJpWeERs0t13gdzGOdf+wCGKe4qnntlRKszXxSZBwAN0CHN1i4HiALf9Wz2u4k0D.uab+PetyaAwi7XOQLso8LQUUWclme25ZWiS3DNt3LOsSoc8ZtP1zl1T7XOwSEO4zd5X5uzqDM0TSYdMCeXCMN+y6rii9HOrnjRJoceOule+0GO8S+rErsNUZowO56+chx57V+OcxK+JyLty69dim+EdonwFaLw9rG8nGw4ctmYbZmxIFkUVYIddqrxUEequy2qMGe0qopTGyWx26xiNsCuVOvC7.h+q226Y6N1ccO2eba+86Lw9467M+JQe6aehHhX1yYtwccOOP7jS6oK3qsgOrglX+7xyXlwi83SKdpm9Yy729hXqu+bRmvwEmyYc5QO6Y6O3DUV4ph0u9MjX6iX3CMyv4zbyMGS+kmQ7fOziDO0S+bo9441zktzk3vdSGRbbG6QESY+12L+sZ...f8VHP....vtjr16yiX2WIx+XOliJtm68ARr8Us50DKbQKNFynGUhmyu7WeMwqLiWMw1KqrxhO9G6CF8o28NV25pKlwLS9bSx5pqtXc0s8Sb19tOSJ0IXZC0Webc+warMAIHKqZ0qIto+xsD27sbawEbdmcbdmyYTzSjUUUWSpSVcE+yUsBQ4wWA...B.IQTPT8JVwJiK6G7iikkxjmOtwN5nzVceW3BWbT4pVcl88KOiYF+xe00DqXkUVTi44L24Ge0uw2MNyS+sFu620EWTWy1TWcqO9E+5qId5m44hlat41001TSMEyXlyJlwLmU72ui6J9DerOTbfScJE4Xddo19Dmvq+ApYsqccw09Gtg3gejGucccabSaJt863ti65tuu3nOpCON2y5zigO7g0tu+O4zd53286u9XMUkcHDZsks7UDW4O8pia8uc6w63hufLWE66noO8WNVUBg+YLiYzQYctyQc0s932ccWe7PO7iUT8Y80Webc+g+TbO26CDW529qE8pW8rfm2Le0Ym38NMqo.AFXvULn1brssR+Kj90u9F8su8IZt4li+vM7mi+1scGodOKTntV9JVY7+869CwK7huTQNx2p5qu93Vus6Ht26+Aiy9LOs3zO0SJ5ZW6ZQe8yNi+YNSXBiO01u++wCE23e9Vhpqtlh9dFQDadyaNdjG8wiG4Qe7XXCanwW+K+4i90u1eHq....1cSblA..fcIYUd7iHhIraXBMiHhIMwwGGvAr+odNOvC9HI11ccO2elSH5G6i7Ah8YRSLhHhYM6419GjIXxSdhI11KL8WN9jeluX6NL.sVSM0T7mtoaN95eqKM1zl1TQcMYsu1O4IMg3El9KGegu72L0v.DQDieGlPwzJ42QDwjl3Dh67tuu3a7strhNL.s1sc62U7xyXlE84Wc00Desu42Ml1S8Ls6v.ripqt0GemK8GF+ka41RrBHzZY8dwq2UXiG8wex3+9S+EZ2gAn0ZpolhG5ger3K9U9lwRW1xK5qacqqt3a9c+9wO7Jtp1cX.ZsEs3kDWx26xiu127RiMrgjW83sVCabiwxRYrN4IMgnxJWU7Y+BekhNL.s1pV0piey0bcI19rl8bZ28YRJzueL24k7uMO4IMgn95aH9NW1OJyv.TVYkEidTiX6N1Mcy2Z7o+e9Rs6v.zZ0We8w0+m9ywG6S74ZWeWcW46K23e9Vhq9W9+0tCCvNZ4KeEw25R9AoVoB....1ag.A....6RxZRiiHhIrapBADQDWv4cVo19i7nOdz3V1RaN9rl8biq4Z+iodsuy29EFG4g+lds+dlyZ16bCxBXagLXG8TOyyEW526xiZqcscH2mY9pyN98+warnN2zlPwRKsznu8suwO5J9oYtkQDQaWk6oEjjt0stEy7UmU7aSYxTKFW8u32Fao.eVuiprxUEekuw2MVxRK9IxNKszRKwM7m9KwC9vOZlm6bma5gpYBuNtkAb226CD+3exUWTeFVLZngMFW526xSbaln0VSUUEeku92IdoW5U5Pt2QDwLl4qFe2K6xKpPurfEtnn4TBrQe6Sehu925R2kl73G6wexDmz7W8U6X98iN24N2lpvxZW65JXkDXalzjlXbM+9qOl9ze4L6+wL5QEc9etsIzTyMGW8u5+Ktwa5uVTaoCEiZW6ZiK66+iS82aZs4lUEBn.ABn4laN9k+leWbS+kaYmZLVHKYIKMtjuWw8rF...vdRBD....rSaKaYKwBV3hS8bpXPCL5cu60toQTD629L4X+12ImX6qe8aHd5m441tiUasqM9gWwOM0I35jNwiONmy5z2tiMqY0AtBeKPf.dpm9YiezUbUcXS711b22y8GuXQLQfyMkIsebiczwu+ObCQCMrwh5dtiSR27RYx+ZrwF2kCCPDQT4pVcr7UrxTOmMrgMDekuw2MVUJaeAQr0.PLrgNjXpGv9G629tOwfF3.KpwvMeK+8TaeMUUUT6ZSNrGCanCIJu71+9rdw31uy6I90+1qsCueqbUqN9AW9OI0vXrxJWU7k+pemL+7Ymwrmybie20cCYddo8LXDQby2xssKU0B1lm84ew1br5V+5yrpZTrlv3GaTVm29cDxrpbKaowFi+wC9vEW++OCySyM2bbEW4OKt+G3g14FnoXiabiw2+G9iybx0apolhEtvEkX6coKcoMUyfH1ZkA3duu+QliiN0oNEibDCOl5Ar+wvF1PiRKszTO+YOm4F2SQzu....6I04rOE...fBawKYYQiM1XpmyZpp5389A9ncX2ygOrgEe6uwWJ0y47OuyJlw246mX6+iG7QdsU5eSM0T7i9wWUTSM0l34ePG3ADuu26+QaN9ge3GZbHG7AscG61uy6IV6ZWWh804b1mdzit28s6XcqacK5YO29I8sxJWUbkW0uHyv.zm9z6X7iarwHFwviAWwfhUV4phErvEEyadyO0Iq+mc0+53G989Ns49tMszRKw7SYREWSUUGyIiUp61zqd0ysaONeC0WepSDbRulGwvGVLzgNjXkqrxXIKcYE08d4KeEwnFYamfvs4V+62Upe128t2s3rOySKNoS33aSvVVzhWRbsW2MDSOkU39JWYkQc0s9D2G4yZ0Nuia0BcTl0rmabs+9qOyyq28pWwgdnuwXnCcHQ26V2h0TU0wxV1xhm4Yd9TWc8yXlyJts63tiycGBQSDaMHQ+vq3phppN6Iaeel7DiIMoIFCthAEqac0EKcYKOlybmWlA339u+GLN0S9DiQNxgm34j0JRuP+1Vu5UOiwOtwFadyaNl27WProMs4LeMr7BLw+adSaNdGW7ErcGa8an9TKe+8qe8MN0S4DaywG6XFcaNVVu1ty699Rs8VaaUef+5s92imbZOSlme+6e+hC9MdPwvF5PhRJojXYKeEwRVxRiWMi.TUcM0F25scmwEcAmShmyhV7RiMmx+LmwNlQ2lIwu95aHti65dS8deZm5IGG6wbTwHGwvhxJqrW63UUcMw0bs+gTec+XO9zhy7zeqo1+....6IIP....vNsrVEpQr0UUZG49r7PFREYdNScJ6eLoIN9X1yYdEr8Wb5ubTUUUGCX.8O98+w+TLyTJc2iYziJ9zexOZTZmZaAV6LOsSY696srksD2ze4VSru5d26d7NdaWPTRIkj53u4laNtpq9Wm5jMVVYkEm8YcZw4dVmdzktzk1z9pW8Zhu6k8iRb+bu5ZpMttq+lhOzG3+WAaekUtpXCaH4xHeZShde6aeh9129FqcsqMpolZaS4Le9yegIds6ngMrgFum20EGSdRSX6Vo7u5rlcbk+zeYr50rlTu9zVE1aZSaJty67dRr8xKuGwW9K9YSbOIeziZjw+6m+SGe6K8GFu7KOiD6m0TUUIFHf4jwD2tia0BcD1zl1T7S+4+pTmP+H1Z3UNuy4Lit2st0l1V9JVYb4W4OKVXJUHjG4QdrBFHfq+Fu4TWk2QDw.G3.hO7G7+Ll5T1+1zViM1X76+i2XbmoLIuM2RKwe8uc6w+8G8+JwyoX1tShXqUGh21EcdwgenGbLzgNjW63qac0EW6e3FhG5gerTu9BEHfALf9Gm6YeFa2wd9WX5oFHf8aembatljj0uMmz2e6bm6bLhgOrXiaZSQ0UUcr4FaLl3DFWLm4N+3F+yoWt8KojRh24a+BiS8TNwB9aRS6od13m+K+Mo96J21seWw4d1m91Mo7s1by3yrITfuu7buvKFMzPCIdMGwg+lh2669cTv1FP+6W7I9XenXYK+qGKYIKsfmy7l+BhlZpoLql.....6oHP....vNshcEh2QJoImcGc9m6YEWx26xKXaszRKwC9vOZL3AWQb62QxSHb+6e+huvm6SUvIDsPxphIL9wMlLCCPDQbO22+H0PJzidzi3a+M9RwHGQxq94AMnAFequ9WJ93epOWhAxXZS6oiOv66cWvvNTr6m2Qr0vIb5m1IGSdhSHF2XGSz+92uWqsMrgMDaXG1e5SaqHn0NhC+PiO7G78Uv2+2mIOo3K++9YiOwm9KjZer9Tl7wYMm4FaLkRT9a+scAY97VokVZbzG4gmZf.5TAd+caxpBA75Qf.9S+4aIV4JqL0y4sdJmX7Nu3KLw1G1PGR7e+Q+fwm6K90RbqAXIKc4wxV9JhgOrg9ZGatya9oNo2Qr0mu+RegOSLhgOrB1dYkUV7e9ddmQyM2bb22y8mX+7Bu3zilat4B99ecqe8QkYTkAhXq+Fvm4S9QiIMwIzl15cu6U7Q+Pu+npppNd4WYlI1Go8LXqk02KZOUKhrl37VaJSY+hi5HNrX7iaLwHGwviN+O29AZp4liksrkGCYvUDepO6+azbyMmZ+7e7tt31DRpV6vdSGbz6d2q3q9M9tIdNabiaLdkYNq3fl5TJX6Y85pPeeIqOmm7jZ6mssVm6bmii+XO53ZSYannt5Vez291mT6G...f8TDH....Xm17m+t+.ALwIL9h57diugCLF2XGSL+ErvB19ceuOPTe8IOQccqacK9hetOcLfVM41YIqIqZGWo7ERSM2bbqoLgocpjRhO0+8GN0v.rM8rmkGG8QcDwckP4Ae8aXCwbm67K3DhMuh7y1ANvAD+Oe5OdLtwNlB1d4kW91sx9iH68t8Hh3nNxCO9je7OTpmyvF5PhgNjAGqHkI2dfCn+I11bl67it101tRliXqSB3QejGVliyHhn+8quo1dEsZ6Rn0Zt4lScaYnrxJKF8nGUQMFJVMzPCw8c+oummOkorew+uDVwzs1HGwviIOoIDuxLd0DOmUrxJ2t.AbK+szCCPokVZ7+7o+3IFFfV6bNqSKtu6+ASbKlnt5VeL24sfXRSrs+lw7JhpTQ26d2iu625ql5uATRIkDugCZpoFHfzdFr0xJbHSnH98iHhX0qopXcqqth5bO+y6riK57O6BFZhR6TmhQMxQDOwS9zotEeDwVCPRZgAXa128YRw9su6SLiYl7yLO+KL8jCDvNQ.ZRqZlDQDyXluZb5m5Im54b.SY+hi6XO5DaukH8psA...vdRBD....rSYiabSwRVRwsOt2QorxJKF8nRd+feGc9m6YFe+ezOofsk1jD0oN0o3y7I+nwXF8HaWiurVU8SX7YOgdS6odlXMqopDa+TNkSLNnC7.J5wzgcnGbhABHhsVtqKXf.JhIsexSZhwm+y9IRrb3m38LifSzydVd7deOYOgzQr0xeeZF0HS94ky+bNy37OmyrntOo4oe1mOw15YOKOwJLwRW1xSsBELlQOxnrN2w9+s8G3AejngF1Xhs2+92u3y7IJ7VjQgLzgNjTCDPUUU8q8+dkUtp3od5mM096+7+26Jlx9uuE08dfCX.w9tOSNd4WI4pyPkqZUENP.EwJn+c91uvhJPPY8L3HS4YvsaLkR3P5TIkDicLit35mh30VokVZ7Y+Ter3PN32Plm6sc62YpsOk8e+Rrj6WHGyQeDoFHfJqbUE73MrwMl3VfRDashMTwfZa3a5WFA14od5mK9w+zeQ7tdGWThedOlQOp3i9gd+o1O....6sRf....fcJKXgKJy8f7NZicLi50Jm0EiC8PdiwHG4HRbueNIu++y2c6ZR22lNhJDvcdWIO48cpScJNyS+s1tFSYMYXqccqqMGqolaNVPF6w6kVZowG+i7AZ2gAXsqccwZZ0jDWHuq2wEE8o28Ny9pwFaLpo10l54TrSh5NiVZok3Im1yDOwS7TIdNEZBJ2lr1xMlPQVMLZORqD6GQDG2wdzQO6Y4odNs1Ec9mSbRmvwmX6st5IbW2y8GsjxuYz6d0q3sbbGSQeuiHhJpXfQ7JI29ZWaae9NhrCuyDmv3iS9DS90UqspUulTaebiM6mAW8ZpJwwZDQL7gOrnacqqE03oX1tONs25IUTgAXtya9Y9b5YelmZpaKF6nJpXfo195JvuIEwVCLQZO+jz16wPGxfybL8nO1SDO9i+jwTm5Thi7HNr3PO32P656A....6MSf....fcJEy9.eW6ZWhRKsi6+aG669L4104WRIkDm+4dlwUbk+7h9ZN6y5ziS5DNt14HaqULgkszjqXB8t28JFzfRehv1P80Gyd1yIw1Gz.GP73OwzZeiqLV8xEpzhurks7XSaZyodcm1odxwfGbEsqwRDouJniHht28tEu4i9HKp9ZYKeEoNAgUTwf5PmTuFZngXEqrxXYKeEwxV9Jim84d9XgKbwodMoM4mYEfjhohRzdrlppJ0sWgHh3nNhhaaRXa5W+5algNYal9ze4Ta+M+lOp1UfehXqaYEoot0u9Bd7z1pFhHhS9jdKQIkTRQMFVZJeuOhHF23FSl8QVqp+w2NdVHqsCgd2qdEm+4cVEUe8hY7Y1.GP+iod.6ewNzhHhXPCHiOypqvelk4VpPA1t.hXqgBpSkTRlAXq4VZIdgW7khW3EeonzRKM1+8aehC+vNz3vOrCI5UOaeAeB...XuIBD....rSIqImIhHtju8Wqn1q6e8zQbXGZbiC8ul4dfcDQbjGwgEuyK9B1otOyegKL0IbpXpN.yblyJ09nxUs5359i23N03q8HqUXbO6Y4wEbtE2DJ1d66C9M9FhxJqrhpuV3hVRpsWLqL6cTCabiwbly7hYM64DqXkqJpolZhpqo1n5pqI13FStT6mjQOpQkXaYEHfIlvJddm0Ll4rRs8QNhgk5Vrvth0t10EKIiIN+DN92b6teSa6OHhH5VA1tFpt5s9YZRJszRiC8fOnh592TyMGKNisNkhoJULmL2tQJtmEZokVxLzMW3EbNQ48nGEU+8xuRxk1+Hh33NtiocUc.hXqeGKME5yrHJhp5PJUHfS9jOgT25T1QM0TSwzeoWIl9K8Jwu8Ztt3vdSGbbhukiqn2NK....1ah.A....6TxZEs1st0sX3Can6lFMIqScpSwwebGS7Gt9aJ0yael7DiO1G98WzqJ3cz7xXxpJlU36KOiYtScu2Uzu911U2cVST8gdHGbzidz8cp6WVSV4QbXGRQ2WYuB6KtIQcYKeEwceuOPLqYMmXgcvaEFSZREtr+uoMu4XwKN4sxhd1yxigNzgzgMNhHhYLyYmZ6G1gcncn2uV6URYOiOhHFyXFULhgOr1c+t5Uu5TauPqr6rVA8GvT1un7xKtJKwRW5xhMu4jqlFCYvUTTqt7LqP.EQfhhHhUrxJiFZngDauScpSwwbTGdQ0WMtksjZEKIhHNli5HJp9p0V0pR+yrdlv6WYVg.R466W7Ecdwq9pyNV3hRuhdTHaYKaIdrGeZwi83SKl5TmR7Q9fuuX.8ues69A...XOk1WLtA...hsVRmqLiI0Y7iaLs6UN5qGVwJqL9a+86Lyya+2u8snWY5ERV6y1EyD5shUjd4b+0CEpbumU4T+feCG3N88KqIwee22heagHqIQMq.AzPCMDW60cCwm4y8ki67tt2X9KH8p7P6UIkTRhqZ4ErvEEM2byIdsiqHm.31iJqL8mud8L.OqbkqJi6c6OL.QDwpW8ZRs8d2q1N4xyc9o+by90NdFLqmmGeQDJklat4TCoPokVZL5QOxNjwyjmzDJ5vNTc00DatwFScbsyrsgrpL9LqWE3yrZps1nppqNwqYHCYvot8fTdO5Q7c+1e03LN825NcnuhXqa6EelO2WJd1m6E1o6C...fc21y+ecN...3e4j0p7Nhhe0Y+5o5V+5iK4x9QItmT2Z24ceeQ80m7JqMKYN4zEwD7VWc0sSe+2YsiABnwFaL0RweokVZL0CX+1otWqdMUEqacI+ZbvULnhdu5twsrkTGmkTRIot2s+rO2KD+2epuPba29cEM0TSE08r0F1vFZb9m2YG8sO8IwyYDiX3Q26dgqjBYsZmm3DJbkEXWQVOe0+WGW0yqqt0kZ6ULnAtS0uUVY5ASZ.EX+pOqROe642txrL1mv9ZeqsrkuhT2NJFynGYTVmKtB7XVim2P6HLOo8c0HhX.Cn+Qo6Dg9ZkUld3PF3.5eaN1bm6t96yk04NGum20EGW0O96Gm+4dVELLTEiMrg5ie7O8pyLLJ....6svVF....ztk0jNEQDSnHlflWO0XiMFeuevUFqXkE2ptu95qOty649hy+bNy188ZcqqtTW0qCn+8O5aeSdhi2l0lxDv0291m3feiE29Zd6wH2gxz9hV7RRcBxmzDGehSxcVxLzDsimYV7hWZrksrkDaeDCeXQ2SXuHe4qXkwUbk+7XiaZSodOJszRigMzgDCe3CM5W+5Wzmd2qnO8oOwDmv3hQOpQFUWcMwe4lu0Du9IMwIjXaYsRtmXQrESzdkUvX5e+dcLP.qK86cEULn1ceNiYNqX8aXCI1d25V2hwLlQ0limVEvnjRJonKO+QzwDtfr5i1S0hHqstjC7.lRQ2WYEfjJFT6+yrlZt4LWc8669z1Jzvb5f1dPhHhAMnAFW7EcdwEdAmS7pu5rio8zOa7TO0ylZEHXG0PCaL9I+reY70+Jeg8JpDN....oQf....f1srlLyHhDKU56NzRKsDW0U+ahWcVoumouit863tiS+sdxQ25VWaWW2bynhIL9hbxc2TJSP8XF8nhOzG381tFW6LxbBN2EV45crqL6ctvEzXiMFW9O9mkZX.lv3GabZm5oDG9a5fScaj34ewWJ0wvjlXxuWk0VLwqGApIqJfQZU6fcUMzP8o1de5cua28488.OTpsuOSdhsYErWYkqJV+5SNDACanCI5QOJt.ur4Mu4XIKYoI1dokVZL1BDHgcTlOKWjeunolZJV3BWThs2kxJKF8nFQQ0WQDwFx34k9zmdUz8017hu3KEUWcMI1dIkTRre66jZywmybmWp86NSE0nzN0oX+2u8I1+8aeh2669cDya9KHdxm5Yio8TOSrxhHHYy7Umcrzks7XTir3eOE...XOAAB....Z2xZUn1u902X.EnrOu6xMbS2b7XO9S1tut5pa8wceeOPb1mwo1tttrV46E6JNtW8rmwZWagKs5abiouZ16njYIPeWHnGYsUSzdlD7r5qjlfva5l+awBWzhS75NnC7.hO2m8STTkn8m9YdtTaexIDHf5pa8wpVUxk59JFz.2olf7rz8dz8TCBwF1vFJ5vvrwMto39+GIOg78nG8HN9i8n2t+NMqdMsuxu9Fpu9XZS6oS8blx9uus4XYEdm1yyfKbQoWMMF8nFYzktzkL6mr98zwmxVeQqsjktrXyM1XhsO1wNlnzRKsn5qHhn7xy3yrUWUQ2WaSZOyDQDidziJJu7x2ti0RKsDye9KLwqoyctywXF8Ha2ikVqjRJIlv3GWLgwOt3c81uv3oelmO9S2zMGKZwIusjDQDKXgKVf....f85IP....P6RUUUcT6ZWapmS6oja2Q6e7PORby+0aKw16VW6ZzTyMGMlvDm82+62Ubpm7ITTSj21j8JeuHCDPu5Yhsszksrhd7rMaYKaIZIk1KzjdO+4m0pUdm6y1VZokXdoLodcpScJF6XFcQ2eyMqUXeBiyW5kd4TGCe5OwGonBCPc0s93ERoBATd48HF1vFZAaKqxe93ecp5ZzyxKOpolZSr80TU0EcPddnG4whq4Z+iI19Yelm11828pWouZxW9JVYQce2lG7gdzTm76RKsz3MezGYaN9typTQwTYPZrwFSMfJcsqcIFwHFdQNd5XpTIaSuS42ihHhUrx12mYUUcMwy9buXpmya43Nl1brkuhUF0WexUXhQOpQ1lJ4wpWSUIF5lxJqyotcdDQDG5g7FhC9MdfwW8abIwrl8bR77V3hVbbrGSaeNC...XuIBD....ztj0jYFwqOk67hwK8xyH9E+pqI0y4i8Q9uhm6Edw3A9GObAau10t139dfGJNs25IUz22LmXvhbE9N3AWQLyWsvayAqe8aHVYkqJFxfqnn5qm6EldbIW1OJkwzXiK86701ti0vF2XrzkshDuld26dECZPCrnt+6nkuhUFMzPxkf7QMpQDcsHCgwF23lhksrkmX6corxJ3p1solaNV7hStDuOlQOpn6cu3JW7OvC9vot5vm3DFeTRIkTv1xJLCSLksZfcE8ou8IVxRSNXIu7qLiXxSJ8IJMhsFzj67tt2DaurxJKNiS6T1tiMnANfT6yoMsmI9OdGWTz0tlcEJX1yYdwe75uoTOmi9nNhne8qus43YUMOZeABHqpTQ180hVb5UYfwL5Q2ls8fc1wS640VDQlgCot5Ve7buvzi23AM0L6qMsoMEe+e3Ul5q0dVd4ELP.6LaOHO7i7XwMbi2bAO+90u9F+xe1UjwHdqAD5nNxCK0.ArgMj9VgA...vdCDH....ncIqIcJhstxym0rmaG98dXCcHItJ5WxRWV7Ct7eZpS3zEd9mSbXuoCNF1PGRhABHhHt0a6NhS5DO9hZkhulppJV25pKw16TIkTzUafod.6e7fOzilX6+1q45h+2O+mNy9YUqd0wO+p+ModNW7a67aywVvBVTzRKIWSAZuSnXq0QNYkyegKLZNkw4XGagKM5KeYqH0UU9fKxvVT4pVcbS+kaI0yIs8z7rlfyItSVEFxxjmzDiW9kmQhseG248FmwocJYNo7+tq6Fhks7jCNxwebGSz291ms6X6+901x2eqU6ZWabG208Fm6YeFoddUV4phK6GbEo94XDQblm9ozli0byMGKXAKJwqo8V54ybKvnHdlNsplQDQz8t2s1w3IimqZmA0pe8suwvG1PS8y5q+O8mi2vAd.IF9kH1566WwO4mm46WmzI8VJ3ydyIq.zTfWW8rmIWcCpolZi0TUUw.GP5gToXLnAsq2G....udSf....f1kr1uqiHhe+e3O85x89R+Ne8BFHfZqcswkbYWdpkU52zg9FiK77O6HhHF4HGdL0CX+io+RuRAO2pqtl3AenGMNoS33xbLk1JNOhHZtkVhm84ew3veSGRl80Tmx9GcpjRRbxte9WX5we7F9ywEd9mcaJQ1ayJVwJiu8k9CScacXe2mIEGzTmRaNdlqD2cgIptiXxSes9JqvELgBONqplZRuem+BhVZokTmbyMTe8wO8m8qhMsoMmZeMoTVo8o89bokVZL1wNlT66cV6+9N43ujR6qqt5hq3m7yiO9G4CF8nGssRIz3V1R7Wt4+VbW288kXezoN0o3rNiSsMGeziZDQe5Sui0t10k3f9jYm...NLYRDEDU0di+4aI5cu6UbBG+wVv1qt5Zhu6k8iRM.NQDwobxmPL5Q01I1eYKaEwF2zlR75F6XFUz4hHDPQDQ802Pr7Tln7t0stECOgsLhVKq8n94L24E0TasQ+5aaq1As1l27likrjjq9C8r7xK5pKRqM0oNkTCDvBW3hiK+J+YwG4C99it0s1NY9M0TSwu4Ztt3Yd1WH06SEULn3bOqSqfskUUcnPguYfYTcCt668Ah24EegodNQDotsfDwVCoF...vd6DH....nns08A9rCDvqGJqrxhQOp1VF32zl1TbY+fqHV8ZVShW6HGwviO1G4+Z6ln2y3zNkDCDPDQbK25eOdKG2wTvUZdqUSsIumruM+3exUGO3TmRz291mXiabSQCMzPb7G6QGG9gcna240m9z63LOiSMt0a6NRru9q25eOd7mXZwYb5u0X3CanwPFxfiNWZowhWxRim6Eldb22y8mZURHhHd6usKnfGuitji2ZYOodcbkp8jFmiJi8h8UspUG+he8uKd+u22UAmX3YLyYE+jq5WDqoppybLlzp7uxUs5nt5VehW2HG4vK5sNg1q8celTLvANfXMqopDOmm4Yeg3K7k95wobxmPLtwNlX3CanwJqbUwBV3hh65tuuXoorUMDQDu0S4DiAWwfZywKojRhS4jOg3Fuo+ZhW6V1xVhq9W9+Eu3zek3PN3CJl3DFez0tzkXEqrx3YetWHt6649yrx.LxQL73c+NeaErs4lwJne7smpTwBVX5803FSzohnT+WasIGbmH1ZIo++4K7Uior+6WzktzkXiargXC02P7Q+fuun+8ueu14svEs3T+d+31ICyyIehGeb2288kZE43IdxmNV5RWdbBukiMl3DFeLzgL3XUqdMw7l+Bh+1scGQkqZ0odO5Tm5T7I9XenBtccz3V1RrfEt3Du1xKuGwPGxfaywGynGUpgq5Vt0aOZrwFiK77N6n7xKuMs2TyMGW+e5uDO2y+hIdu6YOKONjC9MjX6....6sPf....fhVV6C7udZLitsqd2lat43JupeQpSPbOKu73y+Y+DQ2611W5sOnC7.RsbXupUul3gezmHN9i8nScbMf9m9JQMhsNQmO6ys8qP1yNgUC6EcAmS7zO6ym5pOtxUs5327+86y79VHmva4Xi8celTAaqibU72ZM0TSwBSYR85VW6ZLhgOrht+xtj6W3wY+6e+xbUpe+OvCFO6y87wQdDGVLjAWQr4FaLVvBVTrnEs3XYKeEotkJz56SgljwhZrmxVMvtpN24NGm6YeFwu5276R87VwJqLtlq8O1t6+C6McHw64ccwI19YbZmRbW208EqqtzWg+OwS9TwS7jOU69928t2s3S9e+gSbK5niLvKyIypoQw0WsdR8SxZW65hG6wexW6u6d26dzu9s8ULfrdskz2IxxHF9vh27a9nRcqLIhstksry7LSDQ7Nt3KHlzDK7y8KJifNL9wM1BVQOFv.5ebHGxaLdpm9YS7Zu863dh64d+GwgbvGTLhgO7X.CneQCMrw++Zu6+f75557.3u.Z+tegcW1u6O.VXaQgEPCAjJOs.gUzCjvRSBYvT6thyzHKGKu7txlLstNupKuoY5euapblbpIcBS6ZlqIO6xiiK8rqqqCQcWP362u6FvBBDAK60eXqCs786mue+trnMelGOlY+G97q2re9t6erud990qnPw9isss+yD6xJQDw5V6pOqEdG...fwSBD....T0pTwLOaZdkXGj+0evGJ9O19SW1qYhSXBwcb6aojyF9ILgIDq6crlDKN5C+HaM5YEKKwc56bmy4l35tjqqINwn6xbcYxjI1xsr43SeOe9pp3y0hdV4kFevM+mUxi8xu7gi9SXm7N8oOsRNtFpF6Z2uTh6r64Vk6l5Hp75rolZrjuuGwxW1aKdrG+Gl3yXvAOXEOmjTpcr7Hdtc97IdsmIcggpwptrUD+qO4OM9+1wyMtdeW3a57ia+1tkDeON4rYiaaK2b729EefX3gGdb84mq4liO4e0GKlcWmdWDYDUZTSTKcohJO1Jpt6U2y8bq5m4Hl+7l6oUD7JG1gw93938cCaJ1wN1Yr27EFy2ixduuoqOdWq6JK6wetcVgfWjv2meuaZCwN1wNSrv9m3DmHdp+8sGQr8JtVOUqY0Wdrg0eM0z0....75kp6u3B...PT4hNc1znKV2O3G9uDe+G6eNwq4FuwMEKYwWPYOdOqb4QiMV5cxcDuxNk9e6oRdmJO0o1TMOGom8r6Jpu9SedaOhyaAyqjyg8yDqbEKK1xs7AJaAaOa0c.hnxetoVZU6UZc18bStvm2vl1PzUBEMtZbAK77S73SYJSorGam6b7qnziE08FdCwccm2dhgVnVctmyri65Nu8nt5pqhm6adoKI1xst4JNJNpEczwLhO2m8SEy4bOmxdNmXngh910tK6wmxTJcqmubp3HvnJ+L8Bl+7J4NbOw687m2oudNK9yuM0Tiwc+WemQ6s21X9dLZSZRSJ9He3OXhgAHhJGHfj5nFcNqYF2687Ii1aqxcwkZwUstqLt4Ov6qleuA...75EAB....pZUZWwd1zoVPqm9Yd13e7e5al34uxUrrJVro5yjIV8UrpDOmG9Q1ZE2o9ehO9GMZt4ol34bpNuEb5Ezaztw26FiM+9uoRNK6qEMzvTh2y5ul3Ceq+EIt6sqbAEG66v3m+E5MwiWKsy7JtSnqPA0yjISbGejOTjKWyU8y7TcEWdOwG+NtsDOmIMoR+84SdxSFuXByd9IO4rQmyZlio0UsnolZLt+uvmMdOW6UW11qe0nwFZHtgq+5hO28d2wTlxoO+2KmdVwxi+9u3mOt3+j2xX9YGwq7tbia3cGeo6+9RrqPDQD6ZWuTLzPCU1i2c2kt0yWJCN3Aie891eYOdtbMGsUkEgtyYMy3CcKatlJt74Mp1q+QO5uIxmvt2usVacL+48QLso0d7.eo+lXiW20FYSHLSUiK5stz3A9xegXkW5xp34dlF7hY1wLh68d9TQGiCAfot5pK13Fd2we9Mc8mw2K...fWKYjA....UkgFZnn29J+bf+roFangWc269h81W7U9G9ZwvITj9408bha8le+U08dsq4Jhu2i93kcNUu6WZOw119OKdaW7EU16QmcNq3yb22U7MdvGJd1e9unhsC8pcNwu10bEwhWzBiu2i93wS9Sdp3DIz18GsoO8oEuy0ckwp5YEQ1rUt.dimyW8Q64egwda+tVuWUS3B5pqNiu5W4uKdjs9XwVezGON9wOdEulEL+4EaZiqOV7hVXbzi9aR7bKTr+R9uWwQmvbp9QmvYpImMaroMt9XM+oqJ9Ve6ua7ieheRUOhJxlMabUq6Jiq9pVaMEDfS0rlYGwe4G6iF+u+pcDeiG7aUwcB9oJWtliK4hun3Zu5qppK7dkF2I0xmuGu2M9qpmKMxjIS7vOxVSrKFLhQ+6Odgd6Mw2c0xOekj5qu935V+0Dq9xur3g9NOb7i9QOQh+d3SUc0UWr3EsvXcqc0wEtjEUUWyQNxQRbLEzd6sUUAwZZs2V7ku+6K111e53G+DOY7e+K9k0z3XYdcOm3x5YEwktrKIZngx2QY....9iUS3+e7dnTB...oRCMzPwt18K85xyt9LYhN6bVQDQz+.CDG9vGIwyeFSeZ0Tga1yd1a7aSnnvM0TSwzpx1k8AO3ghe1y7rw9129hAO3ghicriE0UWlHSl5hFangnolZLV9a+RhoN0lp50WDQ7xG9vQu8tqXu4KD4KTHxmuXjOeg3jm7jQqs1ZzVauxWs2VqwLmYGwRVzBqohKWouGL6tdii4tUPu8s6X3gKcfKhXBwbmS4a06iVkVmuwNmUMsq2229OP7L+W+7Xu6MejuPgXu4KFG6XGKx0byQqslKdSm+4EW3RVTbNytqW8ZFd3gid6q7EtcRSZh+Am+HNxQOZTrLgEHhZ6yYi25efAhd6a2Qwh8G4KTLJVr+nXw9iINwIFczwLdkulwziN5XFw76dtQSM0335y+E6suXu4KFEJTHxWn+nPghw.CLPjMa1HWtlilat4niYL83s9VVZrf42cM2t12+9OPhyR9o0d6U8+mN3gNTruD5P.MO0oV0AUXz5aW6N9e9k+pXvAOXL3AOTL7vCGYxTWTe80GM0XiQas0RzyJV9ev07xG9vw.C7qK+5o4li1Zskwz5II6ae6O5aW6NxWn3q9Yl74KDmb3giV98uyZokbwhufEFKcoKNlb1r0z8+2d7iG6YO6srGexYyFyrFGWKirt+oaa6Qwh8G6e+GHNvANPr+CLXjot5hVZIWjKWtn0VyEs1RKwa9BWRzUWcVyOC...f+Xh.A..........jB8ZSuHD.........fWSIP...........oPBD..........PJj.A..........jBIP...........oPBD..........PJj.A..........jBIP...........oPBD..........PJj.A..........jBIP...........oPBD..........PJj.A..........jBIP...........oPBD..........PJj.A..........jBIP...........oPBD..........PJj.A..........jBIP...........oPBD..........PJj.A..........jBIP...........oPBD..........PJj.A..........jBIP...........oPBD..........PJj.A..........jBIP...........oPBD..........PJj.A..........jBIP...........oPBD..........PJj.A..........jBIP...........oPBD..........PJj.A..........jBIP...........oPBD..........PJj.A..........jBIP...........oPBD..........PJzuCf6YaXzD.+0M.....jTQNQjqBAlf" ],
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
				"bootpath" : "~/SDT_git/MaxPackage/media",
				"patcherrelativepath" : "../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "basicImpact.maxpat",
				"bootpath" : "~/SDT_git/MaxPackage/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "basicFriction.maxpat",
				"bootpath" : "~/SDT_git/MaxPackage/patchers",
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
