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
		"rect" : [ 112.0, 243.0, 950.0, 740.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 14.0,
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
		"style" : "SDT_package",
		"subpatcher_template" : "",
		"showrootpatcherontab" : 0,
		"showontab" : 0,
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 43.25, 262.9375, 56.0, 23.0 ],
					"style" : "SDTpackage",
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-25",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 43.25, 289.9375, 170.0, 37.0 ],
					"style" : "SDTpackage",
					"text" : "window size 90 90 1040 830, window exec"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 43.25, 328.0, 68.0, 23.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"style" : "SDTpackage",
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontsize" : 40.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 15.0, 456.0, 54.0 ],
					"text" : "Sound Design Toolkit"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
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
						"rect" : [ 0.0, 26.0, 950.0, 714.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Lato",
						"gridonopen" : 1,
						"gridsize" : [ 2.0, 2.0 ],
						"gridsnaponopen" : 2,
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
						"style" : "SDT_package",
						"subpatcher_template" : "",
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 10.0,
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 312.0, 320.0, 35.0, 20.0 ],
									"text" : "rolling",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-25",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 340.0, 12.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 340.0, 74.0, 73.0, 24.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.0, 46.0, 100.0, 23.0 ],
									"text" : "setactivetab intro"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 11,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 308.0, 145.0, 504.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.0, 201.0, 102.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "sprintf %s.maxpat"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 101.0, 170.0, 99.0, 22.0 ],
													"text" : "Transportation"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 69.0, 135.0, 77.0, 22.0 ],
													"text" : "route symbol"
												}

											}
, 											{
												"box" : 												{
													"coll_data" : 													{
														"count" : 12,
														"data" : [ 															{
																"key" : "blowing",
																"value" : [ "Blowing" ]
															}
, 															{
																"key" : "rubbing",
																"value" : [ "RubbingScraping" ]
															}
, 															{
																"key" : "dripping",
																"value" : [ "Dripping" ]
															}
, 															{
																"key" : "filling",
																"value" : [ "Filling" ]
															}
, 															{
																"key" : "whipping",
																"value" : [ "Whipping" ]
															}
, 															{
																"key" : "shooting",
																"value" : [ "Shooting" ]
															}
, 															{
																"key" : "gushing",
																"value" : [ "Gushing" ]
															}
, 															{
																"key" : "fridge",
																"value" : [ "FridgeHum" ]
															}
, 															{
																"key" : "rolling",
																"value" : [ "Rolling" ]
															}
, 															{
																"key" : "photocopier",
																"value" : [ "Photocopier" ]
															}
, 															{
																"key" : "blenders",
																"value" : [ "Blenders" ]
															}
, 															{
																"key" : "transportation",
																"value" : [ "Transportation" ]
															}
 ]
													}
,
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 69.0, 103.0, 101.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"precision" : 6
													}
,
													"text" : "coll load.example"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.0, 230.0, 114.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "prepend loadunique"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-81",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.0, 257.0, 57.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "pcontrol"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.0, 54.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-81", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 1 ],
													"midpoints" : [ 78.5, 163.0, 190.5, 163.0 ],
													"order" : 0,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"order" : 1,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "SDT-comments",
												"default" : 												{
													"fontsize" : [ 13.0 ],
													"fontname" : [ "Lato" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "SDT_package",
												"default" : 												{
													"fontname" : [ "Lato" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "SDTpackage",
												"default" : 												{
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
									"patching_rect" : [ 478.0, 670.0, 103.0, 24.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p load_examples"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 612.0, 636.0, 38.0 ],
									"style" : "SDT-comments",
									"text" : "The bottom-up hierarchy represents the dependencies between low-level models and temporally patterned textures and processes, for the four classes of sounds: solids, liquids, gases, and machines."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 14.0,
									"id" : "obj-61",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 728.0, 556.073170731707251, 58.0, 23.0 ],
									"style" : "SDT_package",
									"text" : "Video:: ",
									"textcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"fontface" : 3,
									"gradient" : 1,
									"id" : "obj-62",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 556.073170731707251, 146.0, 24.0 ],
									"style" : "SDT-comments",
									"text" : "#7 - processing / analysis",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 14.0,
									"id" : "obj-59",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 728.0, 520.0, 58.0, 23.0 ],
									"style" : "SDT_package",
									"text" : "Video:: ",
									"textcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"fontface" : 3,
									"gradient" : 1,
									"id" : "obj-60",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 520.0, 85.0, 24.0 ],
									"style" : "SDT-comments",
									"text" : "#6 - machines",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 14.0,
									"id" : "obj-57",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 728.0, 482.0, 58.0, 23.0 ],
									"style" : "SDT_package",
									"text" : "Video:: ",
									"textcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"fontface" : 3,
									"gradient" : 1,
									"id" : "obj-58",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 482.0, 93.0, 24.0 ],
									"style" : "SDT-comments",
									"text" : "#5 - gas sounds",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 14.0,
									"id" : "obj-55",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 728.0, 442.0, 58.0, 23.0 ],
									"style" : "SDT_package",
									"text" : "Video:: ",
									"textcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"fontface" : 3,
									"gradient" : 1,
									"id" : "obj-56",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 442.0, 105.0, 24.0 ],
									"style" : "SDT-comments",
									"text" : "#4 - liquid sounds",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 14.0,
									"id" : "obj-53",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 728.0, 398.0, 58.0, 23.0 ],
									"style" : "SDT_package",
									"text" : "Video:: ",
									"textcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"fontface" : 3,
									"gradient" : 1,
									"id" : "obj-54",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 398.0, 125.0, 24.0 ],
									"style" : "SDT-comments",
									"text" : "#3 - compound solids",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 14.0,
									"id" : "obj-51",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 728.0, 266.0, 58.0, 23.0 ],
									"style" : "SDT_package",
									"text" : "Video:: ",
									"textcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"fontface" : 3,
									"gradient" : 1,
									"id" : "obj-52",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 266.0, 95.0, 24.0 ],
									"style" : "SDT-comments",
									"text" : "#2 - basic solids",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 14.0,
									"id" : "obj-49",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 728.0, 184.0, 58.0, 23.0 ],
									"style" : "SDT_package",
									"text" : "Video:: ",
									"textcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"fontface" : 3,
									"gradient" : 1,
									"id" : "obj-50",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 184.0, 109.0, 24.0 ],
									"style" : "SDT-comments",
									"text" : "tutorials on Vimeo",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 14.0,
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 728.0, 227.365853658536707, 58.0, 23.0 ],
									"style" : "SDT_package",
									"text" : "Video:: ",
									"textcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"fontface" : 3,
									"gradient" : 1,
									"id" : "obj-44",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 227.365853658536707, 142.0, 24.0 ],
									"style" : "SDT-comments",
									"text" : "#1 - introduction to SDT",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 11,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 392.0, 267.0, 997.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 432.0, 176.0, 136.0, 22.0 ],
													"text" : "4.compoundinteractions"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 313.0, 176.0, 109.0, 22.0 ],
													"text" : "3.controllingfriction"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 188.0, 176.0, 112.0, 22.0 ],
													"text" : "2.designingImpacts"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.0, 176.0, 112.0, 22.0 ],
													"text" : "1.instantiateModels"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 69.0, 115.0, 275.0, 22.0 ],
													"text" : "route instantiating designing controlling compound"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.0, 246.0, 114.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "prepend loadunique"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-81",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.0, 273.0, 57.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "pcontrol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-80",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.0, 222.0, 102.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "sprintf %s.maxpat"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.0, 54.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-81", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-17", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-17", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-17", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-80", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "SDT-comments",
												"default" : 												{
													"fontsize" : [ 13.0 ],
													"fontname" : [ "Lato" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "SDT_package",
												"default" : 												{
													"fontname" : [ "Lato" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "SDTpackage",
												"default" : 												{
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
									"patching_rect" : [ 701.5, 336.0, 81.0, 24.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p load_solids"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 809.5, 356.0, 105.0, 23.0 ],
									"style" : "SDTpackage",
									"text" : "controlling friction"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 809.5, 328.0, 102.0, 23.0 ],
									"style" : "SDTpackage",
									"text" : "designing impacts"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 809.5, 300.0, 135.0, 23.0 ],
									"style" : "SDTpackage",
									"text" : "instantiating the models"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 11,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 1089.0, 549.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontface" : 0,
													"hidden" : 1,
													"id" : "obj-22",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 197.625, 318.5, 71.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "233624811"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"hidden" : 1,
													"id" : "obj-21",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 175.25, 292.0, 71.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "232451891"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"hidden" : 1,
													"id" : "obj-20",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 152.875, 261.5, 71.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "232451089"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"hidden" : 1,
													"id" : "obj-19",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 130.5, 234.0, 71.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "232450301"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"hidden" : 1,
													"id" : "obj-18",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 112.5, 203.0, 71.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "231852922"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"hidden" : 1,
													"id" : "obj-17",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 85.75, 176.0, 71.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "231852701"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"hidden" : 1,
													"id" : "obj-16",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 41.0, 108.0, 214.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "https://vimeo.com/showcase/2105400"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.5, 353.5, 297.0, 22.0 ],
													"text" : "sprintf https://vimeo.com/showcase/2105400/video/%s"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"hidden" : 1,
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 63.375, 145.0, 71.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "231851966"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"hidden" : 1,
													"id" : "obj-14",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.5, 396.0, 128.0, 37.0 ],
													"style" : "SDTpackage",
													"text" : ";\rmax launchbrowser $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 9,
													"numoutlets" : 9,
													"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 41.0, 78.0, 198.0, 22.0 ],
													"text" : "route tutorials #1 #2 #3 #4 #5 #6 #7"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-7",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 41.0, 41.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-10", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-10", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-10", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-10", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-10", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-10", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-10", 7 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"midpoints" : [ 50.5, 383.5, 81.0, 383.5 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "SDT-comments",
												"default" : 												{
													"fontsize" : [ 13.0 ],
													"fontname" : [ "Lato" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "SDT_package",
												"default" : 												{
													"fontname" : [ "Lato" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "SDTpackage",
												"default" : 												{
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
									"patching_rect" : [ 780.0, 600.0, 94.0, 24.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p Url"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 660.0, 184.0, 86.0, 22.0 ],
									"text" : "click me! -->"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 14.0,
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 494.0, 170.0, 146.0, 23.0 ],
									"style" : "SDT_package",
									"text" : "click on message boxes",
									"textcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 9.0,
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 203.0, 400.0, 43.0, 19.0 ],
									"text" : "rubbing",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 9.0,
									"id" : "obj-22",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 522.0, 249.365853658536707, 77.0, 19.0 ],
									"text" : "transportation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 9.0,
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 372.0, 286.0, 47.0, 19.0 ],
									"text" : "gushing",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 9.0,
									"id" : "obj-19",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 374.0, 400.0, 51.0, 19.0 ],
									"text" : "filling",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 9.0,
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 374.0, 464.0, 50.0, 19.0 ],
									"text" : "dripping",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 9.0,
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 584.0, 464.0, 51.0, 19.0 ],
									"text" : "shooting",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 9.0,
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 494.0, 400.0, 55.0, 19.0 ],
									"text" : "whipping",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 9.0,
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 478.0, 350.0, 50.0, 19.0 ],
									"text" : "blowing",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 9.0,
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 210.0, 249.365853658536707, 54.0, 19.0 ],
									"text" : "photocopier",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 9.0,
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.0, 236.0, 51.0, 19.0 ],
									"text" : "blenders",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 9.0,
									"id" : "obj-12",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 307.0, 237.365853658536707, 61.0, 30.0 ],
									"text" : "windshield wipers",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 9.0,
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 400.0, 249.365853658536707, 64.0, 19.0 ],
									"text" : "fridge hums",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"data" : [ 27060, "png", "IBkSG0fBZn....PCIgDQRA..APO..D.8HX....vxV+sh....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6ceGbbbde+3+80an2ANhdkDDfDr.BBBRSPBVDEknrhs7jwwNyHWxHGmYxDYIaGqQV1dribFKm3zriawR1I1IRIxRhRTjDr.VAI.HDIZjD8NNzO.bEb0e+A+A7kjh31m6vd6s2hOulAST78b69.v6126yy9Tjcz+uE7Bd1ysNSHaC146CKgPHDBYEHOTWAHDBgPHqdTfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.JM5Zbd+fN8XC.YJrx6GWBgPHDtXwsJLsGc75wTkLOHEkKvqGS9lRaG+U38C5o48iHgPHDBaLmzVQ+47375wTm0oP925WwqGS9F0k6DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.JC0UfvEJUpDwGe7Ht3hCZ0pEpUqd4e..rZ0JrXwxG6GOd7Dhq4DBgPVKfBzeDhHhHP94mOxO+7Qd4kGRN4jQzQGMjISlecb73wCFZngPO8zC5t6tQO8zCFd3ggWudCR0bBgPHqUQA5++Sud8X6ae6npppB4me99c38ihb4xQFYjAxHiLvd26dA.fc61Qmc1It7kuLZrwFgSmNW0mGBgr1U+82OFbvAWwWOwDSDEVXgBXMhDprlOP2fAC3odpmB6cu6c4tOOXRqVsnjRJAkTRIvhEK3pW8pnt5pCCLv.A8yMgPjdlYlYPO8zyJ95d73gBzWiXMaftRkJwANvAvS7DOALXvPHoNXvfATSM0fZpoFzWe8g+6+6+azd6sGRpKDBgPBuslLPu7xKGOyy7LHwDSLTWUVVVYkE95e8uNt7kuL98+9eOle94C0UIBgPHgQVSEnqToR7k+xeYricriPcUYEsqcsKroMsI7G9C+AbwKdwPc0gPHDRXh0LyCcCFLfW7EeQQcX9RhHhHvW7K9EwW6q80DjmqOgPHjveqIZgdBIj.d9m+4QZokV.89c61MLYxDFZngvvCOLFarwfUqVgMa1fc61gWudgACFV9mXiMVjat4hbyMWDYjQFv06RJoD7BuvKfW60dMX2t8.93PHDBQ5SxGnmTRIgW5kdIDczQ6WuOKVrflatYzTSMgVZok.d5kkbxIiBJn.TUUUghJpH+98WPAEfW7EeQ7i9Q+HX0p0.pNPHDBQ5SRGnqPgB7bO2y4Wg4iN5n3+8+8+E23F2.tc6dUWGLYxDLYxDt3EuHRIkTP0UWMppppPDQDAyGibyMW7M9FeC7C+g+PXwhkUcchPHDhzij9Yn+zO8SibxIGlJ6ryNK90+5eM9leyuIZngF3kv7G1XiMF98+9eOd9m+4wYNyY7qULtLyLS7U+peUduNQHDBQZPxFnugMrA73O9iyTY6pqtvK8RuDpqt5DjkkU61si23MdC789deOLzPCw76aCaXCn5pqNHVyHDBgDtRRFnqPgB7E+heQlV9VangFvq9puZHYde2c2ciW9keYbsqcMleOelOymAwEWbAwZEgPHjvQRx.8st0sh3iOdNKWSM0D9W9W9WBoqm5tc6F+ze5OEW5RWhoxqSmN7rO6yFjqUDBgPB2HICzqolZ3rLyLyL3W8q9UBPsgad85E+hewu.m8rmkoxWRIkfJqrxfbshPHDR3DIWfd5omNmaDAd85E+7e9OWzMhwei23MPmc1ISkkkaZgPHDxZGRt.88rm8vYYZrwFEkaBJK0R8EWbQNKat4lKRJojDfZEgPHjvARt.cV1l.EyqQ5lLYB+O+O+OLUVpa2IDBgrDIUftVsZQ5omtOKiYylQKszh.UiBL0VasLMc1n.cBgPHKQREnmSN4.4x88uR0We8viGOBTMJvUWc0wYYRN4jQt4lq.TaHDBgH1IoBzyJqr3rLCN3fA+JBO3xW9xLMc5JnfBDfZCgPHDwNIUfNKqY6yLyLBPMY0yhEK3F23FbVtXiMVAn1PHDBQraMWf9ryNq.TS3GrDnGSLwH.0DBgPHhcRpcasnhJJNKiYylEfZB+XzQGkyxHVZgtGOdfMa1fMa1Vduheo+aEJT.Od7.850Cc5zAc5zs7+sVsZ4bbOPBes3hKholZJLyLy.61sCGNb.mNcBud8B4xkCEJT.850CCFLr7OQDQDPgBEg5pd.yoSmeruKrz+Wud8BUpTA0pUC0pUinhJJDarwhHiLRlVppIDeQREnyxFqR3T3gISl3rLgx.cmNchAGbPze+8igGd3.ZvFpToRjd5oirxJKjVZoEVegbx8LyLyfd5oGLv.CDP6QBJTn.ojRJHszRCokVZ901ebnhMa1Pe80G5s2dwjSNoe+9UpTIRJojPVYkERO8zgFMZBB0RhTmjJPmkKdDUTQE1zJc61siYmcVe1s5BcWt6xkKLzPCg95qOL7vCup2lYc4xE5s2dQu81KToR0CDtKT270jSNIt3Eu3JdCIImbxnpppRPpKbo81aGczQGq3qWZokh7yOe+93dhSbBX0p0U70OvAN.m8.1.CL.t0stEld5o86y+8ysa2X3gGFCO7v..HwDSDkUVYHkTRYUcb4aKt3hXfAF.81auXrwFaUcrb4xEFYjQvHiLBjISFRO8zQokVJsQLQ7KRp.84laNNKSRIkTXyHcG.nkVZAYjQFq3qO1XiAYxjIHa6q8zSOnwFaD1saOnb7c5zI5omdPO8zChLxHwN1wNPZokVP4bc+lXhI74MCZylsfdcfUiLxH9bIK1gCGAzwchIlvmutu58ESlLgFarQL0TSEPmatLwDSfScpSgjSNYTVYkExWgD850K5ryNQSM0TPYicxqWuXfAF.CLv.HiLx.kUVYgE8RAIzSREnyRKu27l2LZpolDfZC+3W9K+kg5p.La1Lpu95Y5Q.vWle94Qs0VKxLyLw1291gd85EryMgMd73AM2byns1ZSPNelLYBe3G9gn3hKFaYKaIj7Lmmat4vUu5UEruKLv.CfQGcTrm8rGXznQA4bRBeE97.kY.KsPeKaYKzyokQtb4BM2by38du2SPCyue82e+3cdm2AczQGgEKHPqUX0pUbhSbBAKL+90VasgKcoKspebO9COd7f1ZqsPx2Eb5zIN6YOqnb+mfHtHoBz6omd3rLQDQD3y7Y9LBPsI7lc61wINwIPKszRHOH0oSmngFZ.m8rmEtb4JjVWH2aMR3jm7jAstXmE81aun1ZqMnzk2OL2tciye9yilZpIA8lHted85EM1Xi3pW8pg7uORDujTc49vCOLLYxDRN4j8Y4NzgND5niNPyM2r.UyBuX0pUb5Se5.ZvCpQiFDczQu7TQRud8PiFMvtc6vhEKvpUqvhEKvrYy98EiGYjQvYNyYv9129fJUp765FY0ypUq3Tm5TLO50UqVMRN4jefornRkJwhKtHra2Nra2NLa1LFe7w86wAhISlvMtwMvN1wNBjeUXhGOdvEtvEXZuU3gYvfADYjQ9.SIOYxjs7zXaoelat4X96Bc1YmXt4lC6cu6kFI7jOFIUfN.PSM0DNxQNBmk6K8k9R3kdoWZUOhbkZVXgEvoO8o8qoajLYxfQiFQ94mOLZzHSiNcWtbgAFX.zYmc5WcgoISlPs0VK1+92OTqVMyuOxpmWudwktzk37yFZ0pEYjQFHiLx.ojRJL84A61sigFZnkmBjr5N24NHyLyLnLB383wCtzktjeMHZkKWNxLyLQgEVHyCdO2tcigFZHzUWcgQFYDNuwFSlLgyd1yhCcnCEVMMbIAeRt.8FarQlBzMXv.9pe0uJ9I+jeRXyzXKXa94mGm5Tmxmih56mRkJwF23FQd4kmeOn0TpTIxImbPN4jClat4vcu6cQGczASsRaoQ8bM0TCzpUqecdIAt1ZqMeN8rTnPA13F2HJt3hgRk92kVzpUKxKu7Pd4kGFYjQP80WOVXgEX58dkqbE7jO4S52mSewqWu3JW4Jnu95ioxqToRTRIkf7xKOnSmN+5boPgBjYlYhLyLSX0pUzc2ci1ZqMeNiElXhIvst0svl27l8qyEQZSxc6cc2c2n0Vakoxlat4hW8UeUTSM0rleUZxkKWn1Zqk4v73iOdbzidTTZoktpGA5QEUTXaaaa3vG9vHxHijo2yzSOMpqt5DjoqG4dc09G8QezJ95omd53XG6XXSaZSq5f0zRKMbricLlmO8KrvB31291qpy4Cq0VakowjCv8VxoOxQNBJojR76v7Gld85QIkTBdhm3I3rE9szRKX7wGeUc9HRKRt.c.fe2u62w7fWQud83y849b367c9NHmbxIHWyDuZpolXpa1kISFJojRvi8XOFSK0t9iDSLQbzidTjWd4wT4MYxDuegbxiVas01JNXrJszRQ0UWMhHhH3symBEJPEUTAyaOvrF9xh4medbqacKlJaVYkENxQNBuu.OYvfAbnCcHr4Mu4UrwFd85kFGPjGfjLPezQGE0Vas906IyLyDu7K+x3a9M+l3fG7fHgDRHHU6DeFczQwctyc3rbxjIC6ae6CkUVYAsmcmJUpPkUVIpnhJXp723F2fdjIBfUZeEX6ae6Ast8UlLYXm6bmXcqacbV1YmcVdamT7ZW6ZL0ffRKsTrm8rmf1.zTlLYnzRKEG7fGbEmpslLYJfVpYIRSRx.c.f25sdKzc2c6WuGYxjghJpH7Y+reV7Zu1qgu6286hm5odJjat4JYG7INb3.W4JWgoxVUUUIXKtEETPALET31sab4KeYZp7DBTd4ki0u90GTOGxkKGUTQELs1QvGsRu2d6EiLxHbVtryNaA64WmbxIi8rm8rhsTmk5KYsAoYJEtWP0O9G+iWUqwxYlYl3S9I+j3ke4WF+re1OCesu1WCOwS7DH+7yWxr3zzXiMxzyMeaaaaH6ryV.pQ++TZokhBKrPNK2jSNYHYANYsrzSOcTTQEIHmK850ihKtXNK2pcIc1gCGngFZfyxEe7wiJqrxU04xekd5oisu8sKnmSR3GI2nb+9svBKfezO5Ggu427ah3iO9U0wRiFMnjRJAkTRI.3de4uyN6D2912F24N2Ac2c2gcK5IyO+7nqt5hyxs90udrgMrAAnF8wUd4kCKVrv47.t0VaEEUTQz7SW.nSmNryctSA8bVbwEiN5nCeNesme94ga2tC3a19t28tbtOEnUqVTc0UGRtg9hJpHrvBKPqXbjUjjNPG3dSuiW9keY7W7W7WfRKsTd63pVsZTbwEubKGb3vA5t6tWNfuqt5RPVEqVMXY.kYvfATVYkI.0lGMYxjgJpnB7G+i+QedCSNc5Dc2c2BVqFWKaG6XGB9zETkJUvnQi9bZj40qWL6ryFv27NK2b6l27lCo6q.kUVYn+96m4YiBYsEIefNv8Zo9q8ZuFN5QOJ9jexOIuNeUWhZ0pw5W+5W9YJ5xkqkC3u8suM5pqtB3cBqfAmNcxzEv1912dP4uW9C850iRKsTbiabCeVt6bm6PA5AYQGcz9b2+KXJ8zSmy4EdfFnO93iy4dAQTQEEyy.ifEEJTfxJqLboKcoPZ8fHNslHPeIG+3GG0We83IexmDUUUUA0tMSoRknvBKDEVXg3XG6XKuueuT.+su8sCocQeO8zCm8fPZokVH6h2OrMrgMft5pKedQWylMiQFYDAYKWcsJVdV1AKrLfLmc1YCniMK2bavb1c3OxN6rQGczQHcszmHNE5+zo.axImD+5e8uFe8u9WGm4LmgocnM9fRkJQ94mOdhm3IvK7Bu.9m+m+mwW5K8kPIkTRH4hDrzc6hoAgib4xYp9PyK8fGc5zI3CLx6mZ0p4rq9sZ0peebc4xEms7Ot3hCYlYl98wNXPlLYXqacqg5pAQDZMUKzueSLwD3Mdi2.+1e6uEEVXgn7xKGacqak2WfHVI50qGUUUUnpppBKrvBngFZ.W6ZWC2912Nnu5mM93iy4b2NkTRAQGczA05g+JszRCQDQD9bIAcngFBVsZk1+zCBxN6rC4ytCc5z4yAtVfLtUFXfA3r2xXcAtQnjRJov42EHq8rlMPeId85c4t.+29a+snfBJ.ae6aGaaaaCwFarBRcHhHh.UWc0n5pqFyN6r35W+53xW9xLuNR6uXYp7EpeVgOJxjIC4lat3l27l9rblLYJj1RRopfwFfh+RmNc9bAjIPBzmXhI3rLhkVme+xLyLooqI4ArlOP+940qWbm6bGbm6bG769c+NjZpohBKrPTTQEgBKrPDWbwEzqCwDSL3fG7f3fG7fn4laF+e+e+eXfAFfWOGbs9OqRkJQyyN+gwRf93iONEnyyjISFmaKwBAt54k.IPmqUZsDSLQQYO9jUVYQA5jG.En6CiN5nXzQGEm+7mG..IkTROP.ehIlXP87WVYkgMu4MiFZnA7lu4axKaDCd85kyVjjc1YGxGY6qjHhHBjZpothKEo.beCKD+WBIjfnXN9y0leh+NPSc61MmKYrhwVmCbuE3Fpa2I2Ow4UsEoFe7ww3iONt3EuH.t2.konhJZ4.9fQWRJSlLTd4kiRKsT7FuwafKe4KupNdyLyLb1JlzSO8U04HXacqac9LPelYlANb3f1uz4Qq1ElI9BeGnOyLyv4xFrXdVSjVZog6d26FpqFDQBJPeUX5omFW4JWY40B8niN5GHfOszRi21VV0pUK9xe4uLJszRwu427afMa1BniCKsdUrbw6UBK8LxDSLgfstyuVfXoKmWsaOoOLtl5WxkKm22UA4SBwiAjD9fBz4QlMaFW6ZWCW6ZWC..QFYjK2E8aZSahy82XVTQEUfLxHC7C9A+.l1tSeXb0c6QFYjB9p.l+J1XiExkK2msrhBz4W7cPZfhu61etBziN5nEEy87UhPMqbHgGn.8fn4medzXiMhFarQ769c+NXznQTVYkgxJqLjSN4DvWnHszRCuvK7B3Ue0W0um2sb0x9vgsMVEJTf3hKNeNXlBzdvf7nIVBz4ab84DgZltDnD60OhvhBzEPCO7vX3gGFG+3GGQEUTnrxJCG5PGJfZIYlYlId9m+4we+e+eOVbwEY98wUYC1CzO9RBIjfOCz8m+lP3lTMPmqkiYwdfoJUpnAFGYYh29RRhat4lC0UWc3a8s9V3e+e+eGlLYxuOF4kWd3YdlmwudObEzYvfA+tdDJvU8jBz4W70XAQrgq.cwxXGvWBGpiDgAEnGh40qWbkqbE7M9FeC7q+0+Z+d8Yde6ae90bFmqftvkQFtFMZ74qSA5DVvUfd3v2GBGpiDgAEnKR3wiGTWc0gW3EdA7lu4ax4ToYIxkKG+4+4+4LUV2tcC2tc6yxvUPoXAEnS3CRg.cwv5C.QbfBzEYb61MN9wON9m9m9mXNTJu7xioMtDVNdTfNYsBVtA2vgvxvga5fHLn.cQplatY7C9A+.lClJu7x4rLrrnaDp27MXEW0SOd7Dz2jaHg23JLG.gEeFJb46rjfOJPWDqu95C+leyugoxVZokxYqIXo0FAxZgcn.W0SkJUJYGHWD9gXc4M1e4uqNdDoqv9OQavfADQDQrhutCGN3bsZVL6JW4JnvBKD6cu60mkSqVsn3hKFezG8QqXYXo6zc3vQXwHcmqdtHb4QG3unKdyejKWNTpToO+aJWOicwfvg5HQXD1GnevCdP7TO0SshutKWtv29a+swPCMj.Vq3Wu0a8VXW6ZWb1B6RKsTeFnKWtbnRkJe151vkm8LWWDSpFnSW7leoVsZeFnGNziUzmIHKIruK24J.RoRkH0TSUfpMAGyO+735W+5bVNVVC1kJClr0psPObHfIbBWCnrvgvR5yDjkD1Gna2tcNKiXdyUfUm4LmgyxDczQyYY3Jnat4li45TnDW0SoZfd3P.S3DtBzCj8KAgV3PcjHLB6CzYoEkrDzI10e+8y4HtkkabgqKf4qkSUwDtpmRw.c2tcSsFimw0mSD6i+Fa1rwTiZHqMD1GnuVoE5tb4BlMa1mkgkeO80.HDf6ciMw.mNchYmcVeVlvgA1m+hqemI9Ot9bhX+u4h8a3fHrB6CzWqzBc.t+xqJUp3rE3bsEtZ2tcQ+F8.K8h.erU0J1PW7l+w03NYt4lSTOyBnOSPteg8A5rzBcox9hMK6S4bsXYvRPmXuU5bU+jKWNSCPPVIVVbQD6sVLbDKaWvh4PSwbciH7VSDnmbxIizSOcAn1Dbw0Eeb4xEmA5QFYjbtUX1e+8620MgTe80mOe8DRHA+Z0yhqxJVdFkSO8zg5pfjSTQEEmSGTw5Td0iGOX3gGNTWMHhHg8A5iN5nvlMabVtssssI.0lfmXiMVNuvCWOi8kvUqzGbvAEMgXOrolZJNaop+1c6b82UwveKb5zonumSBGISlLDWbw4yxHVuA2wFarvloYJQXD1Gn61sazd6syY4XYyKQLikPJV69MtNVd85E8zSOLcrDZc0UWbVF+MPmqwcvhKtXHua2Gd3gYZsGm3+3pmulat4DkcsMW8TEYsmv9.c.fVZoENKiQiFCqWfY14N2Imkg0tFLszRiyxvRvoPysa2n2d60mkQgBE7dKz850aHuU5CLv.gzyuTVJojBmkQr0JcOd7fAGbvPc0fHxHIBzu0stESk6S8o9TA4ZRvQzQGMpppp3rbbE1c+GOttH1ryNKFczQY53IT5t6t4bgUImbxwu2NIYo7gx4mua2tEsOGWofTSMUNGWIc2c2hpdHo2d6k5tcxGijHPepolBiLxHbVtssssEV9rzOzgNDS6TZ24N2g4iYQEUDmk45W+5viGOLeLClVbwEQyM2LmkikeudX50qmyxDJe90c2c2h5oNU3N4xkibyMWeVFKVr3We+JXxkKWL8cAxZORh.c.1ak9m6y84X5B3hEwEWbXe6aebVt96ue+pE0qacqiyEUCylMiN5nClOlASM2byb1hjjSNYDarw52Ga0pUy4Bty3iOteeb4Ctb4B27l2LjbtWKIu7xiyxzRKsHJV5cau81gUqVC0UChHjjIP+rm8rL0JlXhIF7m9m9mJ.0nUOsZ0h+l+l+FN6NP.fqd0q5WGa4xkiBKrPNK2Mu4MC4W7XpolB28t2kyxEHsNeIbMRmmXhIfEKVB3ief51291LMKNHqNQEUTbN1KVbwEQas0l.UidzrYyFZs0VCo0Ah3kjIP2jIS3Tm5TLU18rm8fO8m9SGjqQqNxjICekuxWgo4OuUqVQc0UmeeNxO+74bNX6xkKbkqbkPVWu6vgCb4KeYNKmACFVUq0.bsPz30qWzYmcFvG+.gCGNnKdKfXoU5s0VagrwSgGOdvku7koG+BYEIYBzA.dm24cXdtXezidT7rO6yBYxjEjqU9OEJTfuvW3KfMsoMwT4O4IOY.0JZMZzvz4XjQFAW4JWQvm5Vtc6Fm6bmioUHsssssA4xC7ONyUKzA.5ryNErAFkWudwEu3EEEcw6ZE4jSNb9Ha73wCN24NWHoWqpu95YZrBQV6RREna2tc7lu4axb4+DehOA9q9q9qXZ.mIThKt3v25a8svt28tYp7yO+73jm7jA74q3hKFIlXhbVtd5oGzTSMEvmG+0RAZlLYhyxlc1YiLyLyU04KkTRgycdKa1rw7X0X0polZhVEvDXxkKmooGpMa1X9Q7wWt4Mu4JNUREiMJgDZHoBzA.t3Eunesnnr0stU78+9eeQwBOSokVJ9deuuGmi3162q+5u9p5YrJSlLrqcsKlVpTau81wMu4MC5sT2sa23pW8pLM2q0oSGJu7xW0mSEJTfbxIGNKWqs1JlZpoV0mOeo6t6dEWrjjBKgwhYIjPBLM1Rld5owEtvEDjsy1k9d2JImbxgo84AhzmjKPG.3m+y+4Xt4li4xmbxIiu5W8qhW9keYje94GDqYOZYmc13q809Z34e9mmyQa886ZW6ZngFZXUe9iJpnvV25VYpr27l2D0VasAstbb1YmEevG7ALuv1TYkUxa684r7LT850Kpqt57qOewJud8hVasUbkqbkG4qGQDQfsrksv6mWxCprxJioAh5PCMD9fO3CX9w74ura2NN6YOKZrwFWwxHWtblezbDoOIYf9niNJd0W8Uw7yOue89xM2bwK8RuDdwW7EQ0UWcPcaWUlLYnfBJ.+0+0+03UdkWAkTRI906erwFCu9q+57V8ovBKj4URuQGcT7du26w6qdV2912Fu+6+9LuLaVPAEvq6jdwFarLs6asvBKfSbhSvqSkMGNbfyctygabiarh8.xt10tfRkJ4syI4QSsZ0XG6XGLUVylMi2+8eedeYXc3gGFu669tbtfBUd4k6WMBfHsoXSaZSuRntRDLL+7yiVZoETd4k62qbXIkTRXyady3vG9vnjRJAQDQDvoSmvpUqqpAEkBEJPQEUDNxQNBd1m8YwAO3ACnki1olZJ728282wqsRTlLYHiLx.SN4jLsen61saze+8iImbRnRkJDYjQFPOKOWtbg95qOTe80iN6rSl6N+bxIGTQEUv6O+vXiMVl5c.2tcid5oGXwhEDczQGv8RvRKmsW7hWzmid5hJpHTXgEBmNc5y0FfzRKs.Zufmq45dgEVnnnacme9484iTSkJUXCaXCq5yyR+aJKiiAOd7f96ueL0TSA0pUGveWXoky0lZpIbyadSNeF84latnrxJC.2az2uRkOlXhYUOFSB2rngzf4XKfWOlpbZCwaZ02inASR5a2evAGD+ve3ODeiuw2fyEQkGEYxjg7xKuk6JVud8holZJL5nihQFYDL1XiAKVr.61su7OKt3hPgBEvfACvfACH93iGYjQFHSWjVXJ...H.jDQAQ0LyDFMZbUO.7lc1Ywq9puZPYqzTkJUX+6e+37m+7LOfrFd3gwvCOLzpUKxM2bQd4kGhJpn74Ez73wCld5oQ2c2M5omd76mCYAET.1wN1QPYv.kPBIfMtwMxz9CfGOdPmc1I5pqtP5omNLZzHRJoj372ef60xtkdubMR1otZOznnhJBtc6l4AC5PCMDFZngPDQDAJrvBQ1YmMmKhUd73AlMad4uKv5dFPpolJpnhJXprj0NjzA5.2aSs36+8+93K9E+hLMnm7EYxjgDRHAjPBI32cQNe3N24N3m8y9YA08EaEJTfpqtZbgKbA+ZCAwtc6ns1ZCs0VaPlLYPud8vfACPud8PiFMvtc6vhEKvpUqvlMaA7.qaCaXCA8ku2RKsTL3fCxzzkC3d2n2.CLvx+8RiFMH5niFpUqFZznApToBtb4BVsZEVrXAVrXg4QHcrwFKpt5potZODo3hKFd73wuVpUWXgEPSM0DZpoldfat2fACPlLYvlMavpUqvpUqAzl9SwEWL1xV1BM51IeLqItJwvCOL9te2uK1+92O9TepOESC3EwDOd7f29sea7du26IHyEb4xki8rm8f5qu9.ZWWyqWuKGbwm1zl1jfL.fV5lZps1Z86wgAv8VQw3imudVYkEprxJov7Prkt48.Y8S2sa2Xt4liWd7XJUpDUVYkHqrxZUerHRSqYtRgWudQs0VKZrwFwm8y9Y4ko5jPn81aGu4a9lB99Stb4xW9hGW+5WOnLptYUBIj.1wN1Amqla7oHiLR7XO1igyblyDzmlZOJaYKaAabiaTvOujGsRJoDjRJofqd0qxbO2vmhHhHP0UWc.sWEPV6XMSf9Rlc1Yw+5+5+Jpqt5PM0TCJszRYZNXKzZs0Vwe7O9GE7kazGVZokFdhm3IPas0FZokVDzsPR0pUisrksf7yO+PR2KpUqVbvCdPboKcIAaumVsZ0XO6YOLsm0SDVIlXh3nG8nn0VaE25V2RvVNjyLyLQEUTAuM8LIRWq4BzWRqs1JZs0VQjQFIpnhJvt10tP1YmcHsNM6ryhlZpIboKcIAuE49hBEJPokVJxImbPiM1HFbvACpc8+RKxKkUVYg7QVsJUpP0UWMFarwvMtwMBZqi2JUpDETPAn3hKNr6QBsVhb4xQokVJxLyLw0u908qc3P+gZ0pQ94mOJnfBPjQFYP4bPjdVyFnuj4medb5SeZb5SeZjVZogctychBJn.jQFYHHaypiO93nolZBM1Xin6t6VvWuz8GQDQDXu6cuXwEWDCN3fKuksxGsTQoRkvnQiHyLyDqacqSz8biSIkTvQNxQvfCNHZqs1vDSLAu7uUQEUTHqrxBEUTQLcyK5zoC4kWdqXOkjRJoDP0CecyrxjISzLWm0oSmOqqAy0NhG97bfCb.X0pUzWe8g95qOd4l8hKt3PQEUDxN6r8qdNrvBKbEerXzpK3ZGx97e9Ou3MAIDKojRBYlYlHyLyDYkUVvnQivfACOxt9xgCG9b9taylML7vCigFZHL3fChgGdXL3fCxzb9VLygCGXvAGDCMzPvhEKvlMavlMaOPHuBEJdf.HEJT.c5zAc5zgHiLxkmxWhsPbewgCGXrwFa4ounUqVYZjqqSmNDe7wu7zYjdlnRGKrvBnu95CiM1XK+8f6eTr+veO.3dsDeoYNiQiFYZeUfvMyIsUzeNONudL0YcJj+s9W40iIeiBzC.KEHoWu9k++t3hKB850COd7fEWbwGXtoa2tcA8YOKFr3hKt7zyQmNcXwEWb4Pb+cg9IbgSmNgc61W9B4d85EJTn.pUqFpUqFZ0pMj+HDHBKOd7.61sCqVsBOd7r7M5pQiFnQiFAoW.WKZsZfd3SShDQb61MVXgEB6accvzRWvJlXhITWUDLpToZ4UMOBA3dOyc850SA2DAgjbsbmPHDBYsFJPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.j84++F2KeePOZzCfTUYkuOrDBgPHbZQOxgEOp30iobudQLpbvqGS9lxogdd+fZHxXQ7Fzw6GWBgPHDxiF0k6DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhDfRitFi2OnSMZ+vqbZ+PmPHDhvyhG0XZO76VCtRYdPpJliWOl7Mk1N92k2On0x6GQBgPHD1XNosh9y4w40ioNqSg7u0uhWOl7MpK2IDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBPYntBv2hO93wm9S+oCIm6EWbQX1rYL6ryBylM+.+3vgiPRchPdXSM0Tn81aeEecc5zgssssIf0HBgvGjbA5FLX.6bm6LTWM9XrYyFLa1LFarwP6s2NZqs1vPCMTntZQVCxpUqn2d6cEe8HiLRJPmPBCI4BzEqzoSGzoSGRIkTvl27lA.fYylQas0FZqs1P6s2Nld5oCw0RBgPHgqn.8PnniNZTYkUhJqrR..L5nihqcsqgSdxSBqVsFhqcDBgPBmPCJNQjTSMU7TO0Sge7O9Gim9oeZnWu9PcUhPHDRXBJPWDRmNc3XG6XKGravfgPcUhPHDhHGEnKhsTv9q8ZuF9S9S9SfJUpB0UIBgPHhTqIeF5Nb3.1saeUcLjKWNzpUKTpL3+mPc5zgm7IeRTRIkfexO4mfYlYlf94jPHDR3k0jA5m+7mG+m+m+m7xwRkJUKOB10qW+C7emTRIgryNajUVYgHiLxU84J6ryFuxq7J3e7e7ezmS6HBgPHq8rlLPmO4zoS3zoSL2by4yxkPBIrb3d1YmMxM2bgVsZ86yWLwDC9a+a+awu3W7Kv0u90CzpMgPHDIFJPWfL4jShImbRzPCM...MZzfcsqcgZpoFXznQ+5XoVsZ7W9W9WBiFMh29se6fQ0kPHDRXFJPODYwEWDm8rmEm8rmEqe8qG0TSMXKaYKPtb1GmhO0S8THlXhA+G+G+GAwZJgPHjvATftHPGczA5niNPbwEGdhm3Iv9129X98t28tWbm6bGbkqbkfXMjHknWudHWtb3wimPcUgPH7HJPWDY5omFu9q+5niN5.O6y9rPmNcL8997e9OO5pqtv3iOdPtFRjBhO93wm4y7YVw.cYxjIv0HBgvGn4gtHz0u90w29a+swfCNHSkWmNc3q7U9JPgBEA4ZFQpPkJUPiFMOxeTqVcnt5QHj..EnKRYxjI7c9NeGbwKdQlJe1YmMdlm4YBx0JBgPHhUTftHlSmNwu7W9KwwO9wYp7G5PGBkVZoA4ZEgPHDwHJPOLva8VuE5niN3rbxjICeguvWPPV85HDBgHtPA5gA750K9o+zeJLa1LmkMlXhAkWd4BPshPHDhXBEnGlvrYy3m9S+oLMUiNvANf.TiHDBgHlPA5gQ5niNXZkgKmbxA4jSNBPMhPHDhXAEnGl48du2CiN5nbVtZpoFAn1PHDBQrfF8TgY750KNyYNC9y9y9y7Y41wN1A9C+g+.maZLAa1saG1rYCVsZc4erYyFra2NTpTIzqW+x+XvfAnWudnUq1vxE2DGNbfYlYFX1rYXylM3zoS3vgC3zoS30qWnVs5G3mniNZDe7wSy66Ggk9LiMa19X+HSlLnVsZnQiFnUqVDe7wiDRHg0DqCCtc6FSO8zXpolBVsZENb3.Nb3.tc6FxkKGJTn.pUqFFLX.FLX.QDQDHhHhHf1HnHgen.8vPW7hWDepO0mxmeIUoRkXu6cu3ce22U.qY2y3iON5omdP+82OVbwE862ub4xQpolJxKu7P5omtes91Kjra2NFbvAwPCMzxWfMPDczQiDRHArt0sNQ8uuAayN6rn+96G82e+X1Ym0uduxjICIjPBnvBKDYkUVRp+FZ2tczWe8gd6sWL4jSBud852GiniNZXznQjVZogjSN40D27yZQTfdXH61siqbkqv4Z9d0UWsfEnO2bygd5oGzSO8fEVXgU0wxiGOX3gGFCO7vPiFMH2byE4kWdHlXhgmpsAN2tcit5pKzau8xaK0tlMaFlMaFc2c2PqVsHu7xCETPAHhHhfWN9OrQFYDet1+GQDQfCe3CGTN2Or4medzc2ci96uellEGqDud8hIlXBLwDSfO5i9HrwMtQjat4xYv0XiMFt7ku7JFRlVZogJqrR+t9zZqshae6auhudgEVHJojR74wvrYy3l27ln+96OfBwe3ikYylQ6s2NznQCJt3hQQEUDMEWkXn+0LLUs0VKmA5wEWbHojRJntFuaylMTe80y7xTq+ZwEWDs2d6n81aGIkTRnhJpHjDr61sab26dWzZqsBa1rEzNO1saGs1Zqn0VaEqe8qGkUVY79Ecc61sO6MAgn0atb4B25V2Bs2d679lDyBKr.pu95wst0sPwEWLJnfBVwemlXhIfEKVVwiUfzCS.2K.0W+M1gCGq3qYylMzbyMit6t6UcP9ixhKtHtwMtAZu81QIkThO+6CI7BEnGlZ3gGF2912FEUTQ9rb4jSNAs.8d6sWbsqcMedwI9z3iONd+2+8w1111PgEVnfbNAtWKZu7kubPMH+QoiN5.CMzPnxJqDImbxB54NXZvAGDW+5W2mAo7AqVshFZnAzUWcg8u+8C850GTOe7ggFZHb4Ke4.9FI7G1saGMzPCnyN6D0TSMgE+8g3aRmGzzZPrrNumat4x6mW61siye9yiKdwKJXg4Kwsa23ZW6Z3bm6bA8K540qWbqacKTas0J3g4KY94mGm7jmDs0VagjyOexpUq3rm8r3bm6bA8v762LyLCNwINwppK8C1750KZrwFwYO6YEjv762ryNK9fO3C76ws.Q7gBzCi0c2cyYY36.8wGeb7Nuy6fAFX.d835uFbvAw68duWPq2Gb4xEN24NG9nO5iBJGe+USM0DSK+uhUKrvB3C+vODCMzPgjyuEKVvINwIDkawvd85EW8pWEs2d6gr5fUqVwINwIfISlBY0AxpG0k6gwFarwfMa1749ldFYjATnPAb618p97MyLyfyd1yFPsJO93iGQEUTKOE0zpUKb4x0xSkMKVr.SlL4W0SqVshZqsVb3CeXDWbw420Ieo95q2uCejISFhKt3Vd52oWudnSmN30qWXwhErvBKr7OVsZ0ue9nMzPCPgBEnfBJvudegZyM2b3zm9zATqxW5um2+eS83wCrXwxxetY94mGyO+7bdrb3vAN8oOM18t2MxHiLBjeUBJpu95QWc0ESkUlLYHojRBQEUTPmNcPmNcPiFMvsa2vtc6vtc6vhEKXzQG0uaouSmNwEtvEvwN1wnoRYXJJPOLlWudQ+82uOeN5pToBYlYlnmd5YUctle94Qs0VqeElGYjQt7pVWjQFImk2oSmn+96Gc2c2L2RAWtbgyblyfibji.CFLvbcyW5niN7q+dEUTQgbyMWjat4x7ygziGOXjQFAc2c2XvAGj4AFV80WOhM1XQhIlHy0uPoYmcVb5SeZ+5QVXvfAjWd4g7xKOl+2zImbRbm6bGzWe84yaJzsa2nt5pCG5PGBIkTRLWmBV5ryNQmc1oOKib4xQZokFxHiLP5omNznQCmGWOd7fIlXBLv.Cft5pK3zoSlpO1rYCMzPCXW6ZWLUdh3BEnGlq2d6koAF2pIP2lMa90EkMXv.1wN1AV25VmecdToR0xWHet4lCW6ZWioUEOa1rgyd1yhCe3CCUpT4WmyG13iONZrwFYprYkUVnnhJJfBFjKWNV25VGV25VGrYyFtwMtASOBE.fqd0qhidziJ5mq0K87+YskhwEWbnrxJCokVZ98BKTBIj.RHgDv1291QWc0E9nO5ifKWtdjk0qWu3BW3B3IdhmvuNG7s4laNzPCM3yxrt0sNr8sucltg36mb4xQxImLRN4jwF23FQCMz.5qu9X581c2cirxJKXznQ+5bRB8D2WQfvod6sWNKyp44n61saTas0x7bKuvBKDO4S9j9cX9CKpnhBG3.G.6bm6joP5YlYFTWc0spmBT25V2hytBWoRknpppB6YO6gWZkmNc5vt10tvgNzg74iOYIyN6rh9mmtWud8qQqcQEUDdrG6wfQiFWUqRfpUqFaXCa.O9i+39b5MZ0pUbsqcs.97vGt90u9JdSGQDQDX+6e+Xe6ae9cX9CSmNcXO6YOXe6aeLO8zX8lZIhKTfdXNVBzWM2ocqs1JlYlY3rbJUpDG3.G.6XG6XU2J46W94mON1wNFhM1X4rriLxHn0VaMfOWlMaFiLxH9rLxkKGG3.GHnr42jbxIiCe3CyT2LeyadSX2tcduNvWZu81YZ.noQiFTc0UixKubdctPGczQiibjifryN6UrL80WeXpolh2Nm9iolZpU7yZwGe73we7Gm2ag75V25P0UWMS8riYylCY+sgD3n.8vbiO93bNXiBz4W5BKr.SAjJUpD0TSMH0TSMfNObQud83fG7fLMv2Zs0VC3ft6bm6vYYprxJCpO+5HiLRb3CeXNeNotb4B82e+As5wpgYylQyM2LmkSiFM3wdrGComd5Ak5gRkJwt28tQwEW7JVlP0r0XrwF6Q9+dpolJN3AOHSOm7.QZokF18t2MSkkkFKPDWn.cI.tZAcfFn2PCMv4nNWkJUnlZpInO.iznQCNvAN.mg5tb4B27l2LfNGb8LrSJojDjskVCFLfxKubNKmX7Btd73AW5RWhyG8gb4xQ0UWMhJpnB50osrksrpeDPBgjSNYru8sOdsGtdTxLyLY5ln5s2dCJqTcjfGJPWBfqMEDVdtrOrQFYDlVNWqpppDrQKrFMZv92+94r0K28t2koowz8ytc6bNRfW+5WuecLWMxN6r4LDhkdmQn0SO8vTW0t6cuaA6yMxjICUUUUH5niVPNeAB0pUipppJAaIXcqacqbNVErYyF0s6gYn.cI.tF84xkK2u19D850Kmi9Vf6MX6BVcW5JQmNcnhJpvmkwqWu3F23F90wkqfQYxjI3+t5qtJdIg5E3mGlu1PRVRIkTBxLyLEfZy+OpUqFUWc0h10r7JpnBdaZWxhklpkbgkwOCQ7fBzk.XY5j4Oc693iONmKSlFLX.ae6am4iIeJyLyzmC1I.32aAmbMJ9MXvffOMwRJoj37h7hokqywGebL8zS6yxnSmNN2kwBVhJpn3bJdFJjQFYfrxJKA+7xxMUQA5gWn.cI.V1Gt8m69mk4C8N1wNBoqlTkWd4b9rFYcd2BDbdrEqVxjIiyKzuZ2pZ4Srz57fwtGm+XiabiA8mQs+JTcCNojRJb92BwzMLR3FEnKAvxn5l0.IVF8zwFarg7AYjFMZPd4kmOKi+zczbMHtD5MLikv0VEq+NVABVrZ0JmetIt3hKnrYA4OVZu.WrHkTRAwGe7gjysBEJ3bloPA5gWn.cI.VZgNqc49fCNHmCNrMtwMxzwJXa8qe89bf8L6ryh4laNlNVbcCOKrvB7x5gu+JhHhvmutEKV388S7.QWc0EmiH5RJojU0hFCeY8qe8hlVoGpu4BtVzZra2tn3yWD1PA5R.74yPmqtaOhHhPvGPSqjHhHBN2jMXsU5bMnA83wCyafF7oHiLRjbxIiniN5G4OQEUTLuNcGLw0RzqRkJC48pyRToRkfO.GeTzpUKRKszBo0AV54tUZ0riH9Pqk6R.rrgovxBUga2t47By4kWdhp0P7byMWe1UuCLv.L0iBrbgsVasUjc1YKnic.850iCcnCIXmu.gGOdvjSNoOKS5omtnZDlmQFYrp2vhVsRIkTB48XAKet2oSmztuVXBwyUlIALV9xFKOC3omdZN61TwPKateImbx97hhSN4jLMFChN5n4raXsXwB9vO7C8qcNr0BlZpo37wQDJFE29hQiFCoCNO.DzVYE8GrFnSBOPA5R.r7kRVdN6bsHRDQDQvzZptPRkJUHgDRvmkgqofGv8lq9rbyJyN6r3Dm3DhlAilX.WqY6JUpLj20xOLEJTDx2MwRIkTBome.JPWpgBzk.X44iyRfNKcapXDWszgk.c.1lWt.2a.x8ge3GhgGdXlJuTGW6c8wFarhptaeIgx8Cc0pUup2E03CrbsiPwfAkDXn.cI.gpE5hgtH7Qgqo8CqA5FMZjoM.Ff6MPDOyYNCN9wON5u+9WSulWy0maDa8pyRBk0qPw5ZvihJUpB4O5AB+gBzk.3i.cmNcxYvmX8Byb0JCVCzkKWN14N2oeMPkld5oQc0UGdm24cPGczgnZgdQnv03yf0aRRnw0b7OXJP2vjBFn.coC5eIk.3i.ctBhToRkftVS6O352eVCzAtWq8KszR86crs4laNzPCMfFZnADSLwfzSOcXznQjPBIHplU.7MmNcx47TVrdifZ0pE5zoKjLHGEKsPmHsPA5R.bcwAOd7v4H8lqo9lVsZWw8v4PMt5taKVr.WtbwbKQ1zl1Db61MS6E7OJyN6rX1YmEszRKPtb4HgDR.IlXhK+iT5h4rL6IDCOq3URTQEUHIP2e1rjHDVQA5R.b08crbAKttv77yOON0oNkeUuDSb5zoe00haYKaApToB27l2bUsRY4wiGL93i+.iD7HiLRjXhIhjRJIjXhIhXhIlP97QNPwRftXdNLyx5yPvP35+dSD2n.cI.tdFkrLf3XYwoIbVfLRcKojRP1YmMZrwF40soz4medL+7yu7BahJUpPJojBRM0TQZokFhJpn3syUvFWA5JUpTT+HGDKKArDBefBzCykbxIyYKzo.8.ep2DQDQf8t28BSlLgFZnAN2dPCDNc5DCN3fXvAGD.2amwKszRCokVZhhE.Eegq.cwdfoXt2CHD+k38JEDlv09BN.vPCMDmkQpGnuZ2fIRN4jwi+3ON5t6tQ6s2dPcWnxhEKnyN6Dc1YmvfACXaaaahl0O+GFWs9VrGnKluYIBweQeZNLGKA5rrlUK02.F3iEGCYxjg7xKOjWd4AylMiAFX.ze+8GTZ09RrXwBpqt5PxImLJu7xEciXbtBrE6KJIh85Gg3On.8vbrrFYy0NnFf3ukTqV78EtiN5nQIkTBJojRvBKr.5u+9w.CL.lbxICJKxLlLYBG+3GGEVXgXSaZSgrAy0CiqtrNTsOxyJwd8iP7GTfdXLYxjwYftSmNYZ.cwxyRTrsdbyJ0pUGTaYaDQDAJt3hQwEWLb4xElbxIwDSLAlXhIXdyggEd85E2912F82e+3fG7fH5nilWNtqFb84FWtbAOd7HZGXbR8G0DYsEJPOLVJojBmym096uelZcJWWX1nQiX+6e+9U8asHkJUhTRIkGXi2X94me4.9IlXBLyLyrpZEuMa1voN0ovgO7gC4ywaV5YGGNbHZm20TKzIRITfdXr7xKONKCKc2N.2A5TKYBbQFYjHxHiD4jSN.3d8ZxniNJFd3gwvCOLSyBgG1Rg5G8nGMj186rzyNKrvBh1.cZWyiHkPA5gwpppp3rLrLf3.B+eVngSToRExHiLPFYjA..lYlYv.CL.tyctie087VrXAM1XiXW6ZWAqpJmTnPATpToOGTkSM0TbtE2FJX0pUZusmHoHNevVDNst0sNTTQEwY43qVnayls0z6nXASwFarXSaZS3oe5mFkWd490F2Q2c2MFYjQBh0Ntw03SfqcisPEt1tfIjvMTfdXJVdd1SM0TXhIlfoiGWgHNc5j5dxfLkJUhhJpH7zO8Sictycx7bjtolZJHWy7MtVoBo.cBQXPA5ggzoSGScy54N24X9XpQiFDQDQ3yxHVuvrTib4xQ94mO1+92OSg5yLyLXlYlQ.pYOZbEnO6ryJJGCF2+5qOgHEPA5gg18t2MmCDJmNchye9y6WG23iOde95AyEPExGWxImL1291GTnPAmkk0wJQv.WetwqWun+96WfpMrYgEVfBzIRNzfhKLiLYxXp61u90ute2E4wGe797Buh0tnztc6X3gG1mkImbx4QtCWwx3BHTtyXkRJofpqtZTas05yxM3fChst0sJP0pGTLwDCjKWtOWdc6omdP94mu.Vq7MVGaIDR3DJPOLywN1wdf437J4zm9z98wlqtNc7wGG1rYSzsede26dW7QezGshutFMZPt4l6i70t5UuJ5pqtVw2ad4kGprxJW00wUik1nV70feagEVP.qQOH4xki3hKNedCelLYBKrvBb9XcDBd85kBzIRRTWtGFYCaXC3XG6XbVtt6tazau852GeV55z.43FL40qWeFHC36U3NtBXlat4Bn5EeqfBJvmutGOd3sUjt.AK6o.hkPzwFarP5M.QHAKTfdXhXhIF7bO2ywzRnIWcO6JQiFMHlXhwmkIT9rZeTX4hyqacqaEeMtV9TEKirettYK.DRmS0Ymc1b9nIZu81C4y6aud8FxmU.DRvBEnGFPlLY34dtmCQEUTbV1YlYFbsqcs.9bsRcM8Rld5oCpacn9qN6rSe95xjIymsPmq.ca1rIJVTcX4wbDJqmZ0p0m23Dv8Fnlg5vz6d26RCtShjEEnGF3YdlmgoEQFud8he4u7Wtp1YwXokVM2byA7wmOs3hKx4FOuoa6iK...B.IQTPTQBIjfOmQ.QFYjb966fCNX.U+3SrL38B0Kupbcyf.2qGdLYxj.Ta93ra2tn4ytDRv.EnKhoVsZ7k+xeYbjibDlJ+INwIPqs15p5bpWudjZpo5yxL3fCx4nJWHzSO83yQVM.2aurJTnfyM3Dwv3Ffkm4qACFDfZxJynQiLstxWe80K3yKcud8FRNuDhPhBzEoRM0Twq7JuByqS28zSO3sdq2hWN2rzRqFZnANCSClra2NZqs17YYToRESafMbcCLiN5nAzFnBehqAmmZ0pC46o8JTn.kTRIbVNylMiybly3y0+c910u90YZaDlPBmQA5hPUTQE367c9NvnQiLUda1rg+s+s+sUUWse+RO8z4LbXt4lC25V2hWNe9KOd7f5pqNNCYKnfBXJjikQnciM1Hy0ufg6d265yWWLLcv..Jpnh3b5OB.LwDSf5pqNA4lBu4MuItyctSP+7PHgZTftHRBIj.d1m8Ywy8bOmeskX9a9M+FlWy1YgRkJQokVJmk6V25VbNkwBFtwMtAmOGVYxjwz3N..HwDSjytqtu95CCMzPLWG4SSM0Tb9HN3Zv8ITjKWN14N2ISKFOCO7v3BW3BAstA2qWunkVZA27l27Q95JUpjyoCHgDNgVXYDAJt3hQM0TC17l2LSSKs62YO6YQ80WOuWmV+5WO5t6t4bDse0qdUnSmNl6MgUq95qOzd6syY4xN6rY9YJKSlLjUVYwYW3We80iG6wdLA8YU6zoSl92WwTvT7wGOV+5WOS+6z.CL.lZpovt10tXZAShUVsZEW5RWBiM1XqXY17l2Lu0qVDhX.0B8PDsZ0hZpoF7pu5qhW7EeQrksrE+NL+se62Fu9q+5Ak5mb4xQ4kWNmkyqWunt5pSPF4xyN6r3JW4JbVN0pU62KCp4latb1pRqVshO7C+PAatouziVfqMEm3hKNjbxIKH0IVsoMsINGrgKwhEK3Tm5TnwFaDNc5bUet6qu9v69tuqOCyiKt3XtGbHjvETKzEHIkTRH6ry9A9we5V86mCGNvu5W8qBJsL+9kRJofryNaNGk2tb4Bm5TmBadyaFabiaLnr1mO93iiKbgKvz.oZ6ae698xSaLwDCJpnhPGczgOKmEKVvIO4IQ0UWMSK1KAJa1rgKe4KyzdctXLXRkJU3fG7f3jm7jLupr0d6si6d26hLyLSjWd4gjRJIl+rjMa1P2c2M5pqt3b.DJSlLryctS+9FnIDwNJPeURiFMPud8PmNcK+yR++uTHdVYkEu0MslMaF+jexOQvVFM2111FFYjQ3bQKwqWun4laFiM1Xnppph2Vu2850KZqs1PyM2LSyE6zRKMlFk9OJadyaF80WebtZlY0pU7AevGf0u90iMsoMw6it7AGbPb0qdUlVJWiJpnXZP8EJXvfAbnCcHbpScJl6UCWtbgt6tazc2ciHhHBjd5oCCFL.850C850CMZz.ud8Ba1rAKVr.KVrfomdZLzPCwzmO..JqrxBp2LFgDprlLP+fG7fq5MbC4xkCsZ0Jn2k+fCNH9G9G9GDz8kbc5zgZpoFbpScJl5NzQGcT7tu66hBJn.je94Gvi9Z2tcid6sWzd6sy7JSmNc5vN24NCnyGv8ZU41291wEtvE3rrd85Es2d6n+96Gqe8qG4latAbOtrzwavAGDs0VaLO.GUoREpt5pYZ6UMTYoP8SdxS52OphEVXAN6wD+0N1wNPgEVHudLIDwh0jA5.hmo4CKrXwBd+2+8woO8oCIKLFwGe7X+6e+n1Zqkot7dwEWDszRKnkVZAFMZDETPAH0TSEJU56OtY2tcLwDS.SlLgd6sW+Zc+VsZ0nlZpYU2SHYkUVvjISLOMmrXwBZrwFwMtwMPlYlILZzHRLwD474G60qWX2tcL4jShgGdXL7vCCKVr3W00cu6cKZFc69hd85wgNzgv4O+4CYaAuxkKG6YO6AYjQFgjyOgHDVyFnGNvlMa3Tm5T3Dm3Dg7M0hjRJIru8sOblybF+ZjAuTXEv8BcMXv.LXvvxcI+hKtHb3vArZ0Z.uyloToRr+8ueDarwFPu+G1N1wNfLYxvsu8sY983wiGzau8t73MPqVsH5niFpUqFZznAJTn.1saGVsZc4eXsKheT15V2Jmqc5hI50qGO1i8XnyN6DM2byB55NuJUpv9129djCbPt9rrXaqBlP7EJPWDxgCG3Lm4L33G+3hps4wTRIEr28tWbgKbg.ZzH6vgC3vgCLyLyva0I0pUiOwm3SfDSLQd6XB.Td4kC4xkyzTu5Qwtc6AksyTkJUhcsqcgLyLSd+XGrISlLTPAEfLxHCbiabCAYMLH93iGUVYkq3M6w0miExUyNBY0hBzEIVpEdezG8Q3BW3Bhpczr6mQiFwwN1wDEKklImbxnpppJnMuv2111FhN5nQSM0jnXM.OpnhB6cu6kys3VwNsZ0hJqrRje94iae6aigFZHdY5pc+zoSGJqrx3b5Hx04MTub5RH9CJPODxhEKKuRV0RKsHZ16s4hd85wd26dw.CL.t90utfuNmKSlLTVYkghKt3fxTj69ke94izSOczXiMFx1K3UoREV+5WOJt3hkTALIlXhHwDSDtc6FiM1XXfAF.CN3fAbOarzVkad4kGV25VGSCVPJPmHkPA5B.Od7fYmcVL0TSgImbRXxjIzZqsht5pqU0yQMTKiLx.olZpn4laFc0UWA8tmTkJUH2byEEUTQLs2vyWzpUKppppP94mOZqs1vvCOrf7uaJUpDqe8qGaXCaXUMB5E6TnPALZzHLZzHpnhJvjSNIlat4fMa1V9QWrz+sFMZvBKr.TnPAznQCznQChKt3PBIj.maUtOJbEnqVs5UyuZDhfRxEnO1XigKbgKDRVzH73wCVbwEwBKr.lbxIWN.e5omVxtDSpRkJTd4kist0shgGdXze+8iAGbPdMbOlXhAETPAH2byMj1hojSNYjbxICqVst7hXBe2qJpToBFMZDomd5vnQiAk.k3iOdjSN4rhuNeM3BCDxjIa4VtKD3ZvlFn+8OwDSzm2zmPsTIyhrxJKe9HkBkedf3ej84+7e9v2lHRDkb61MFYjQv.CL.le94WtEVr7bRUoREhKt3V9h5IlXhPqVsBPsNvL2bygolZpG3l2X8lYTpTIhN5nQLwDChN5nQBIj.RJojnUvLAhGOdv+0+0+kO2w218t2sncg6grxLmzVQ+47375wTm0oP925ekWOl7MIWKzIgdJTn.omd5H8zS+A9e2kKWvlMavlMaXwEWDxkKGpUqd4eznQSXWXVTQE0Ga0ZyoSmvoSmKOp9c3vA750KToR0x+nVsZQ8MprVfYyl4b6aUud8BTsgPV8n.chfQoRkHxHij4MsivUKEZSgAhaSO8zbVFV1a2IDwhvqlCQHDBOgq.8nhJJZTtSBqPsPmPH7BmNc5ywOfVsZC5SyP+wRqfgqDp04jvMTfNgPV073wCd629s84bH+fG7fHkTRQ.qUqrklZb9BEnSB2Pc4NgPV0jKWNmCnQV1a2EJrr8CSA5jvMTfNgP3EbE.JVBz83wC5qu97YYToRERJojDlJDgvSn.cBgvK3ZAHY5omFSM0TBTsYk0QGcv4t8VVYkEma2uDhXCEnSHDdAKcQciM1n.TSVYVrXA27l2jyxkWd4I.0FBgeQA5DBgWjRJovYqZMYxTHcW5qgFZfyUxunhJJAaomkP3STfNgP3EZznAETPAbVtKe4Kyzh5Be6t28tLcyDTqyIgqn.cBgva1vF1.mi1cmNchyblyHnaWv2912F0We8bVNc5zwzMkPHhQTfNgP3M50qG4latbVNa1rg2+8eeAo62aqs1v0u90YprUTQEzVlJIrEMLNIDBuprxJCiN5nXgEVvmkygCG37m+7H+7yGaXCa.QGcz7Z8XxImDM0TSvjISLU9ryN6O1FJDgDNgBzIDBuRqVsn5pqFm3DmfosR1N6rSzYmchDSLQjWd4grxJqU0Zn9zSOMZokVP+82ueUmKu7xC3yIgHFPA5DBg2EarwhpppJb9yedleOSLwDXhIl.MzPCHqrxBolZpPud8vfACPmNcPgBEer2ia2tgMa1fISlvniNJFczQgMa17q5pRkJwt28tgFMZ7q2GgH1PA5DBInHiLx.UVYkn95qmy8c76mKWtPWc0E5pqtdf+20pUKzoSGjISFVbwEwhKtHS8.funQiFru8sOZZpQjDn.cBgDzjWd4gXhIFbtycN+tkyOL61s6yM+E+kACFPM0TCu+r6IjPEZTtSHjfpDRHAbzidTjbxIGpqJKK93iGO1i8XTXNQRgZgNg7+W6cm8USkkv1.+IIjDRfv7fLFPFzxgpPTFrPnTQTKs5gK6ZsdW86+B8eCe22W9ca+ceu5ap1tqRWMn0BQPvADhHxLQDYR.ABIjDRNuWTu3WMHr2gLcNGd9sVtJW0YmyYmfjmyYORwc1rYC23F2.u4MuACN3fXiM1HoTOb3vApqt5PEUTgpZuYmnXAFnSDkvTd4kixJqLL8zSiW9xWlvB1sa2N97O+yQ0UWsvE9FhzpXfNQTBkACFPUUUEppppv5quNb61Mb61cLObOiLx.EUTQ3XG6XnzRK8SNJ4IROgA5DQIMYmc1H6ryF0UWcXqs1Bqt5pX80W+i+Y6s29.e8FLX.VrXAVsZEVsZENb3.G6XGCEUTQHszRKA8tfH0AFnSDoJ3vgC3vgCTQEU7w+eJJJX2c2EABD.ACFDACFDFLX3iA3lMal8ENQ+uXfNQjpkACFfYylipUNNhNpfiNDhHhHc.C+W+ikTh0mz+PNyihs3MVeZIhHhDZmPFfuvw1V0IEC.NRIPL8bFqkxGLF6G3H1SOSjcZbcQlHhH8D08.sjM4NQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzARorfKFyOoqL+rHjwsi4mWhHhHQ1NrUrZX6wzyYJHDJNkMiomyXsT19e++IleRueL+LRDQDImMJ37v8wucL8bZy6pnlg++ESOmwZrI2IhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjNPJI6JPjHmbxA+o+zeJYWMTM762O9a+s+FTTTR1UEJA6Uu5UXkUVYeOdEUTAb5zYDedmat4vzSO89d7RJoDTc0UGwmW0p27l2fYlYl8834kWd3zm9zIvZDQGdZp.cmNchlZpojc0PU4u+2+6Xqs1JYWMnDrUVYE31s6883YkUVGp.84me9C77ZylsH9bplswFabfueCGNLCzIMC1j6DQDQ5.LPmHhHRGfA5DQDQ5.Zp9PmHhzpb4xEBEJz9d7ZqsVX2t8DXMhzaXfNQDk.3xkKr6t6tuGuzRKkA5TTQSEnGLXPr95qmvut1saGVsZ8.KyVas0A9KqwKbJqQDQDfFKP+ku7k3u7W9KI7q629seKt4Mu4AVl+5e8udfymUhHhn3INn3HhHhzAXfNQDQjN.CzIhHhzAXfNQzQVYjQFI6p.QwLZpAEGQDEK4zoS7se62tuyVDiF4y7PZGLPmH5HMylMmrqBDESva+jHhHRGfA5DQDQ5.LPmHhHRGfA5DQDQ5.LPmHhHRGfA5DQDQ5.LPmHhHRGfyC8iXBDH.750K74y2G+u68GylMCEEEX2tcXylMXylseweWOsHannnfc1YmewmA682CEJDBGNLrXwxu4y.61siTSM0jc0mHh9MXf9Q.d73Atc6FyN6rX0UW8PcNrZ0JJu7xgSmNwwN1wzrg6u+8uGyN6rvsa2X6s29PcNxHiLfSmNQEUTAxN6riw0PhH5vgA55Td858iAWqrxJQ84yue+XhIl.SLwDvpUqeLPqvBKDFLXHFTiieVc0U+3Mz3wimn97s4laBWtbAWtbgLyLSTQEUfJpnBjYlYFCpsjHKt3hn2d6E6t6tBKapolJ98+9e+9d7QGcT3xkq883kTRInkVZYeO9O9i+HVd4kEVO.fv5aWc0UD86REUTQn0VaU5xS5eLPWmY2c2Etb4BiLxHHb3vwkqge+9w3iONFe7wQt4lKZt4lQt4lab4ZEM1d6sw.CL.lat4haWiM1XCLzPCggFZHTUUUgye9yyljONZlYlAO5QORp+scZokFZqs1Nvxr6t6hc1Ym883ABD3.e8986+.e8QB+98GQk+Ce3CwjqKoev.ccj4medze+8GSdJTYs5pqhu+6+dbhSbBTWc0AKVrjvt16mvgCiQGcTLzPCI0SwEqL0TSg4laNTe80iZpoFUeKWn03xkKL3fCJUYyM2bwUu5UgMa1hy0JhTOXftNfWudw.CL.dyadSR45qnnfW+5WC2tciFZnATQEUjTpG..Ku7x3wO9wIsmdIPf.3wO9wXpolBM0TSHmbxIoTOzSBGNLFXfAv3iOtTkuzRKEs0VaHkT3WuQGsv+EuF26e+6Qmc1ovlFLQvmOen6t6FKszRnwFaLg+DpiM1Xn+96OgdM2OqrxJ3e+u+2n0VaModCNZcACFDc2c2X94mWpxexSdRzPCMvVGgNRhA5ZXKu7xnqt5BACFLhesYjQFvgCGvtc6HszRC1saGojRJvmOeX6s2Fd85Eau81Xs0VCgBEJhN2iM1XHTnP3hW7hIruXcjQFAO6YOKhecFLX.4jSNe7yf89uJJJe7y.ud8BOd7f0We8H5bqnnfG9vGhPgBgppppHttcTmOe9PWc0EVas0jp7W3BW.e1m8YLLmNxhA5ZTKrvB3AO3AQTeDa1rYTYkUhZpoFoGDaABD.yLyLXhIlP5uXE.XxImD6t6t3RW5Rw8o31vCOLdwKdQD8ZRO8zQM0TCppppfc61k50r0VagImbRL4jSBe97I0qQQQAO5QOBgBEB0VasQTc7nrO7gOft5pKolZglLYBs1Zqn7xKOATyHR8hA5ZPyO+73AO3AROJ1SO8zQc0UGJu7xi39UzhEK3Dm3D3Dm3DXs0VCu5UuBSO8zR8Zmc1YQnPgPas0FLYxTDcck0ye9ywKe4Kkt7EUTQ3rm8rGpoamCGNv4N24vW7EeAd26dGFd3gw6e+6k5093G+Xr6t6hScpSEQWyihVbwEwCdvCjpkmRM0TwUtxUP94meBnl8a0d6sK8uG9O9G+iC7Fvu10tFxKu7j9ZyVhf90XftFyFarA9we7Gk9KQN9wONZpolfYyli5qcN4jCtzktDJu7xQe80mTSyl4laN7zm9TzTSME0W+eswGeboCyMZzHpu95iIMIqQiFQokVJJt3hwvCOLb4xETTTD95d5SeJb3vAJqrxhpqud1zSOM5s2dk5eemQFYf1auc3vgiDPM6SKVNv6rXwhpXVhPZWLPWCIb3vnmd5Qp9z1hEKn4laNtLfrJu7xQ94mOdzidDd26dmvxO1XigxKubTTQEEypCd73AO8oOUpxlUVYgVas0X9p5lQiFQc0UGJt3hQO8ziTSWv95qOje94y4p9mPjLszJnfBvUtxUfUqViy0JhzNzlqemGQMxHiH0R2pMa1vsu8siqitZa1rg1aucbxSdRoJeu81aLaj3uW+RKy3GnnhJB2912NttDsVPAEfu4a9FoFWB6ryNXfAFHtUWzhBGNL5qu9jNLuxJqDczQGLLmneEFnqQr95qigFZHgkyrYy3ZW6ZIjlgzfACROuy2d6sk9IpE40u90XokVRX4xM2bwku7kia8e+OmEKVP6s2NxHiLDV1YmcVL6ryF2qSZAACFDO3AO.SLwDRU9yblyfVas0DxOSIRqgA5Z.60T6h5WQiFMhqd0qlP2vPLXv.ZokVjp4zmbxIwae6aipq2latId9yetvxsW+qFKF6.xJ0TSEW6ZWSpUmr96ueoGo75Ud85E26d2Sp4XtACFvEu3EQ80WeBnlQj1DCz0.b61sTyA5KcoKgBKrvDPM5WxjIS3xW9xRs4jDoSureMWtbIbLDXwhEbsqcsjR+Tmd5oi1aucgSUO+98iQGczDTsR84Ce3C3G9gePpoBoYylQ6s2NpolZR.0LhztXftFvqe8qEVlRKszj5JRlYylQyM2rvxs1ZqI8tS0u1N6rClYlYDVt5pqNjd5oentFwB4jSN3zm9zBK2DSLQDun8nGr3hKhe3G9Aoli41saG27l2DEWbwIfZFQZaLPWka0UWU31epQiFQCMzPBpFs+JrvBQkUVovxIyMn7oLwDSHraGxN6rUEKfKm8rmEokVZGXY762uT2fhdxzSOM5ryNkZNlmc1Yiacqaw8bdhjDCzU4jI76Lm4LI04h6O24O+4EN2bc61M750aDcdCGNLFarwDVtlZpo39JSmLRIkTvEtvEDVtC6M2nEM7vCK0XAA.n3hKF27l2T5UwOhHFnqpISSLaylMb1yd1DTMRL61sKr9nnnH8Nm0dlat4DdS.UTQEnfBJHhNuwSNc5T3XZHZ5BBsh8lVZxN9IpolZvUu5USnCnQhzCXftJ1zSOsvmlopppR0MEdpt5pEtZrI6zTJRJuZno1+0NwINgvxDoeVnkDLXPb+6eeoeOVe80iKdwKpJZkEhzZ3u0nhs3hKJrLUWc0IfZRjwlManzRK8.KiOe9vlatoTmuvgCK7oXSO8zSJiveQJqrxDtbdJyOm0h1aZoIypInQiFQqs1JNyYNSBnlQj9DCzUoTTTDNX3JnfBjZgLIYPlazP1lZd80WW3pBmLsJPxfISlDNPA2aKZUOY80WW5oklUqVQGczgTCnRhn8GCzUo1XiMDt4mnFe578TRIkHbdfKaftLkSMueiKyOmjYkuSqXgEV.28t2UpoklCGNvW+0espr0UHRqgA5pTxDhIpYsSlLZzHJojRNvxHaftnvtbxIGgSQrjobyMWgqdb5kAF2TSME5pqtjZZoke94iu9q+ZUaqLQjVCCzUojoOiU66XWh1am2byMkZ4OUzmEQxdHcxhn5ndHPe3gGFO5QOR5s12Ke4Kq5+2vDokv.cUp2+92efGO+7yOAUSN7jInUz6SOd7fc1Ymn95jrI5mWxLNATqBGNL5s2di3k02X0l0CQzOgA5pThdxUsPHV1YmsvoTmn2mx7D75katQzMtnFs2zRaxImLhesyLyLXpolJNTqH5nIFnqBENbXg8AoVHP2nQiB2ivEMv+DcbylMqI5CVY1qzE8dUswqWu3t28tRMsz1O82e+Xqs1JFVqH5nKFnqBIyWrqlGDX+bxrdlGMGOszRSUNc090La1LrZ05AVFsTf95quN99u+6kZW.7fr6t6ht6tao62chn8GCzUgj4K1EENnVHZQUIZCzEc9USzKA56MszhUyc9UWcUL3fCFSNWDcTFCzUgD8E6lLYR0sbuteh1PLQGWqbiM.Q+M2nFL0TSI8tklc61woN0oj57NxHifEVXgns5QzQZLPWEROEhEsA5ABDHpN+pI5gmPOXvfPQQQX4xM2bwst0svEtvEjdQ+omd5QSNv.IRsfA5pPgBE5.OtV4oyADWWE8dUzT45nzmEZEUTQE+hs9zFarQo1de84yG5s2di2UOhzsXftJjnsMRYZtS0BQ0UQuW4mEZK0UWcns1Z6WbyKlMaFs0VaRsCp8129VL5niFOqhDoaw.cUH8PSytmns6C3mEZClLYBe0W8U3y+7O+Sd7byMWbtycNoNWO6YOKpG87DcTDCzUgD8E6JJJZlmLMdGnKpO1USzSiGfeN61siadyaBmNcdfk6Tm5Tn3hKV34Kb3vn6t6Vytx4QTxBCzUgj4K10JOYZzFhwmPWcK2byE2912VpENGCFLfVZoEoV+12XiMvSdxShEUQhNxfA5pPxL2p2byMS.0jn2FarwAd7nMP2iGOZhASlOe9D1pJZs.88F7ah1I494rYyFZokVjprSLwD3Mu4MG1pGQG4v.cUHCFLH7K2WYkURP0lCufAChO7gObfkIZCzCGNLVas0h35VhlL+7RKEn+oF7axpjRJQ54mdu81qT6q5DQLPW0J8zS+.OtncoL0fUWcUgkQz6SQGGPa7Ygn5nISlzDaknhF7ax5bm6bR0L8ABD.8zSORM22I5nNFnqRIZGDSKDhI5oRMXvfvMYFqVshLyLyn55nFHpNlWd4I0z5JYqlZpQ3feSFlLYBs1ZqHkTRQXYWZokfKWth5qIQ5cp+uA4HpBKrvC73986W02O5hBwxM2bk5KzKnfBhpqSxV3vgE1ZEh94sdTFYjAZpoljprCMzPX4kWNNWiHRaiA5pThBw..lc1Yi+UjCo.ABHba0Tl2ixTts2daUcKVL+7yKbJXI6mE5MUUUUnxJqTX4TTTPO8zilZZJRThFCzUorYylv9OdxImT012hyLyLB2RLiUA5.+zmEpUhpaFLXPXWrnm0TSMI0XkviGO3wO9wIfZDQZSLPWESTyv5wiGrzRKkfpMQFYBXkMP2gCGBmZTyLyLpxEhDe97g2912dfkI6ryVWrrudXYwhEzVasI09Z+ryNqp9l2HJYhA5pXxrpZoF+xs0Wecg8YbN4jSDMptE8YQvfAUkyY4omdZgshhL+bVuKu7xS5kF1AFX.U+3GgnjAFnqhUd4kKLzysa2pt4o6qd0qDVlSbhSDQmSYJ+qd0qTUcAQnPgvXiM1AVFCFLfZqs1DTMRc6zm9znnhJRX41c2cQ2c2slXAEhnDIFnqhYxjIgeYenPgTUKQlKu7xXpol5.KiUqVwwO9winyad4kmv9Yds0VCSLwDQz4Md5ku7kviGOGXYJszRkp+iOJXukFVYVfcVas0vfCNXBQk.g2C..IbTRDEDUnVQj1ACzU4ps1ZE12hu4MuQ3HJOQPQQACLv.BKW0UW8gZEF6jm7jBKyfCNnpX8c2iGO3ku7kBKmLumNJwtc6Ruzv9pW8JUw+tmH0BFnqxY2tcoVHOFXfADNpxi2Fe7wEtLrZvfgHt412iSmNE1ED986WU7jaO4IOQXSBmYlYJUSLeTSokVJ9rO6yjpr8zSOvmOew4ZThA6BAJZw.cM.YdJtM2bS7zm9zDPs4Sa80WGO+4OWX4JqrxNzMwrQiFk5lAFe7wwbyM2g5ZDKLwDSH00W1Pqihpu95QN4jivxsyN6fd6sWU0XmX+Hpk1TCsrDosw.cMfBJn.oV7Md8qesTMyarlGOdPmc1ovcSrTRIEb9ye9n5ZcpScJotgft6t6jxJK1byMmTyU5bxIGTc0Um.pQZSQxRC67yOOFczQS.0pnintYhA5TzhA5ZDM1XiRsMU97m+7D5TYamc1Ac1YmR0rm0We8vgCGQ00yrYyR0GqgBEB2+92W3t8VrzxKuL5t6tE9zhFMZDszRKZh0t8joLyLSzPCMHUYe9yetpeW2STftWudSP0DRuheihFgUqVwW9keoTksu95CyLyLw4ZzOsnozUWcI0bB9XG6XG59N+WqvBKTplqNPf.nyN6LgDpuxJqf6e+6KU+fVWc0gryN63dcROnlZpAUTQEBKW3vgQ2c2spbwEZOhZsgEVXgDTMgzqXftFRIkThTMSqhhBd3CeHdzidjvlA+vZt4lC+y+4+TpsHUylMiu7K+RoVIvj04N24PFYjgvx40qW7u9W+KL5niFW5m0vgCigFZHb26dWoVmwyO+7kdu.m9IM2byHszRSX41byMkZVVjrHpE1VYkUvN6rSBp1P5QLPWiogFZP5lsdpolB24N2Il1Wx6t6tnu95CO3AOP597qwFaLlOWqSIkTvktzkjpYqCGNLdxSdB5pqthoiH5s1ZKbu6cOLzPCI0MKrW2EvlZOxXwhEzZqsJ0MDN4jSB2tcm.pUQtrxJqC73JJJn2d6UU2JCj5F+lEMFylMiabiaH0SmB7SCXs6cu6gG9vGhEVXgC8So50qW3xkK7ce22EQKdKM1Xinppp5PcMEIu7xCW8pWU54z96d26v28ceGd1ydF1XiMNzW20VaMze+8i6bm6H8V2pEKVPGczgz+bi9kJnfBvW7EegTksu95S3B5SxfLcyxae6aQmc1IVd4k4zXihXhGBojpic61wMtwMv+4+7ejp+gUTTvLyLClYlYP5omNpt5pQkUVIRKszNvmVLPf.XokVBSLwDX94mOhtY.CFLfKdwKF2GI2EWbw3ZW6Z392+9R08BABD.iLxHXjQFA4me9nlZpAkVZoG37aWQQA974CyM2bXhIlHhG7UolZpniN5f8adT5rm8rXgEVP3FRTf.APO8zCt90utpp0PN1wNlTka4kWF28t2EFLX.Ymc1H8zSG6t6tHXvfHPf.HXvfHXvfvoSmROtZniFXftFkMa1vMtwMPmc1oT8i8d73wCdwKdAdwKdALXv.rYyFRKszPZokFLYxD74yG1d6sgWudOz8+tACFPqs1pTCloXgBKrPzQGcfN6ryHZ+xdkUV4iOgsISlfc61QZokFra2NTTTfWud+3mEG1EsGa1rgqe8qiLyLyC0qm9+au+c0ctycD1cOKu7xvkKWR+T8IBNb3.EVXgRuCIpnnf0Vas88FHijeumNZP8b6qTDypUqniN53PuZisWn0JqrBlc1YwTSMEd26dG1XiMNzg4lMaFW9xWNgElum7xKObiabCoF7TeJgBEBas0VXwEWDSO8zXlYlAKszRviGOG5v7LyLSbyadSFlGCY2tcoepzgGdXU21KLWpeo3IFnqwsWeydoKcoHZ6HMdnxJqD+w+3eDkUVYIkqe1YmM9C+g+.NyYNSRsoVMYxDN24NG9lu4ah54cO8aUVYkI0TfTQQA8zSOQTq1Du4zoSoVjnH5vfM4tNwwO9wQokVJdwKdAFarwRnKElYlYln4laFEVXgIrq49IkTRA0We8npppB82e+XwEWLgd8KqrxPCMz.2A0hytvEt.VZokDNFR1d6sQe80G9pu5qRP0LwZt4lghhBlc1YS1UERmgOgtNhEKVPiM1Ht0stUBYS+vlMa37m+732869cphv7etLyLSb8qeczZqslPFY44jSN3pW8p3JW4JLLOAvjISns1ZSpY3fa2tUUaqtlMaFs0Va3xW9xvtc6I6pCoivmPWBCN3fB+Eus1ZqDTsQrbyMWzQGc.e97A2tcC2tcikWd4XxSsa2tcTd4kCmNchBJnfX5hES7PkUVIprxJw5qu9G+rHZlxZ+b4jSNvoSmvoSmI7oiVEUTALa179d7RJojC04M+7y+.Gy.IqtS4SIqrxBszRKX94m+PeNJt3hOve2s3hK9PetEo7xKGkUVYX0UWEyO+7X94mGd73A986WpeWUs+6dThmg+7e9Oq92lhnn1dS6p28t2Ae978w+bPy00TSMUjZpoB61sirxJKTd4ki7yOeM+Wj7gO7A31sar5pqBud8Be97gc1Ym88KQ2a1.r2eJnfBfSmNY+iSwEJJJHXvfvue+vue+vfACvjISvjISHkTR4i+cYW+ENJZiBNObe7aGSOm17tJpY3+uwzyYrFeB8iHrYyFps1ZQs0V6u3+ef.A9Eg6VsZE1saGolZppp4varTVYk0uYU6RQQA6ryNeLbG.eL.2pUqZ9ahgzNLXv.rXwBrXwBuoQJhv.8i316KNNpO0p94OENQDoEoOeDLhHhniXXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjNfga82+fRr9j9emmaTVpaGqOsDQDQB4OrA3KTJwzyoIDFNLGJldNi0RwXJw12z..omd5Hqzh8mWhHhH5SiM4NQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzA9e.nchKW208k9o.....jTQNQjqBAlf" ],
									"embed" : 1,
									"forceaspect" : 1,
									"id" : "obj-41",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 842.0, 23.0, 100.0, 100.0 ],
									"pic" : "Macintosh HD:/Users/stefanodemo/Documents/GitHub/SDT/MaxPackage/icon.png"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Lato ",
									"fontsize" : 20.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 120.0, 682.0, 26.0 ],
									"style" : "SDT_package",
									"text" : "A taxonomy of physically-informed algorithms for sonic interactive synthesis"
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"data" : [ 341650, "png", "IBkSG0fBZn....PCIgDQRA..Gv...P.zHX....f68G6H....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6ceGUTb0FF.+YoHBXAUrfJpAUrgUTwRrEwdM1qXOwFViwtnhsXIVh8BnFKwV9r2vBI1UDEEPEQTjlJpfRQ562eXbfkYV1cwEWJO+NGNGeuycuyKKK3N66buWYxkKWNHhHhHhHhHhHhHhHhHhxSROccBPDQDQDQDQDQDQDQDQDo6vBFRDQDQDQDQDQDQDQDQTdXrfgDQDQDQDQDQDQDQDQDkGFKXHQDQDQDQDQDQDQDQDQ4gwBFRDQDQDQDQDQDQDQDQTdXrfgDQDQDQDQDQDQDQDQDkGFKXHQDQDQDQDQDQDQDQDQ4gwBFRDQDQDQDQDQDQDQDQTdXrfgDQDQDQDQDQDQDQDQDkGFKXHQDQDQDQDQDQDQDQDQ4gwBFRDQDQDQDQDQDQDQDQTdXFnqS.hHRao28enB+6BVvB.W155EhCJ3PvTl1rEhqVUsFKzoYIDeiadG76qcCBwsw9VgeZDCQH9PG4n3fG9nBwCaHCDcr8sQH92W6FwMt4sEhm6rmFpkM0PHdJ+5bPPAErP7V23ZPQJhYBw8c.CCoHWN..LwDSvt1wFENVng8JLwoLCgXqqbkvhW3bDhu8ctKVwu+GBw+PqZNFyOMbg3ibzSf+5.GQH1gA2ezkN1Ng30t9sfqdsaHDO6YLUTmZWSg3oMy4gW7hWJDuo0uJXdwJlPb+G7HQRIkD..xuQFg+bmaQ3Xu90uAieR+pPbkp32gktHmDh8vy6ieaEqQHtEM+6w3GyHEhO5wOE169OjP7fFPeP25RGEhW+l1F9m+8ZBwyXZSB1Vu5jZ7rW.dV.OO09u1UfRVhhm53MzeBwGeB..vPCMD6a2aS3Xg+12gw53TEhqPEJOVwRWfP78t+CvR9seWHtYeeiwDF2OKDehScVr687Wo97Te6E5Q26rP7F2hK3xt+uBwSapS.Mr90SHd1yyY32SelP7598kAKrnTBwNL7wfO8oOA..8zSObf85hvwd+6i.+73lrPb4KWYwJ+sEID+fG5CbdIqPHtIM1NL4ILFg3Sclyict68ID2md+in28naBwaY66DW3htKDO0IMNzH6ZfP7bm+RvieheBwqdkKAksLkVHdXiZbH5niQH9P6emB+6O7gOhQN5IHDW1xTZr5UtDgXu88QXAN+aBwMxt5ioNowKDe1yeQrCW+Sg3d1itg906eTHd6t9m3bm+hBwSZBiAMsw1IDOemWF7w2GKDuxeyYT9xYoP7HG8DvG9vGEh+q85BzWuOe+WEUzQigOpTyEKJUIw5Vcp45idreXdKH0uWZP8qG90ol52qtcQ2wV2dpOW7icqyX.8qWBwtrq8hybV2Dhcbb+DZ922Dg3EtjUfG9PeDh+skr.X02Udg3edrSBuOhHEh22t2FLzPCA.Prw9ILjQj5qAJQIJN1vZS80H98T+wrmWpuFpd0s1Xl+ZpuF6hW9ewl2ZpuFrqcoiXvCnOBw6ZO+EN4oNqP7XG8HQqZw2KDu3ksJbeudnP7RWz7PkpnUBwiwwoh2912ID+mttEj+7aD..hO93wfFZp+tm4EqnXSqO0e2z+m8bLy4j5u6VmZWSL6Yj5ua69+dMrgMk5u62oN1NLzA2eg38ruChichSKDO5eZXn0spEBwKaEqA20y6KDunELGTEqqjP73m3zvqeS3Bw6bGaDlZhI..HwjRBCXvo927JRQLCacio92De9KBD+5LS8uYZiMUGNM6T+apW4Z2.qa8o92b6P6aCF9PFnP79NvQv+6nmPHdTiXHns12Jg3U76qC29NdJDu.mlIpdUqhP7DmxLPng8JgXW155QAKXA..PJojB56.S8+qoPEpfXGaI0+unWFTvXp+Zp+eUUuZUEKXdo9+kcsabarl0k5+WWaayOfQMbGDhOvg+e3vG4XBwCenCBcnc1KDup0rAbyacGgXmlyzgM0nZBwSYZyBAEbnBwaaSqElYVgEhS66Yn.lZJbc6o9d.BIjPwj9kTeOBUsJUFNO+TeOD271dfUs5TeOFs9GZIF8nRc7N7eebbfC82BwC0gAfN0g1JDul+XS3ZW+VBwyYl+BpcsrQH9Wl9bQfuLHg3MugUihUzhHD2uAMBjbxIC..iMN+X2trYgiE1qdMlvjmtPbkqTEwRbdtBw2wi6gkup0JD2pV1LL1edDBw+uicRru+5vBwCdf8EcsycPHdcaXq3JW85Bwyb5SA0qN0RHd5yZ9Hfm+Bg3MttUhhWbyEhGnCiBIjXh..He4KeXu6ZqBG6MgGNF2DllPbEspBXYKd9BwddOuvRW9pEhadyZBbbr+jP7wN4Yvd16ADhGP+6M9wt1Ig3Mr4sC2+mqlZt9KSD0215JDOq4tP7T+CPH9OVyxQoJYIR84hgMZDWbwA..80We7W6YGBG6cu68XzieJBwUn7kCqXYKTH99Ovar3ktRg3l1jFgI43nEhO4oOG10eteg390mdfd9icUHdyayUbwK8OBw+xjcD10PaEhmiSKFOwumJDulUsTTlRagP7PG4XQLwDK..jISFN39bU3XQDYj3mFyjDhsrrkA+9JVrP7C81WrvEubg3F2nFfoLwwIDelycA3xN2iPbu6Y2Qe5U2Eh25N1Eb6BWVHdxSbrnIMpgBwNsvkBeezSDh+8kuXXokkQHdD+ji3iQEkP7A2mqPlLY..3ieLJLhe1QgiU5RaAV6pVpPruO5IvoElZbCafsXZSI09eN2tD1tK6VHtG+XWP+6SOEh2wN2CN64tfP7DF+nQyZZiDhWvhVN71GeEhWwxVHpP4KmP7nFyDQjQ9Ag38+maGFXvm+HXhIlXvPGYpOOVpRVB7GqI0mmereOEy0oT+4P8ssNX5+Rp+b5BW5evV1Vp+bracsSXP8u2Bw67O2GN0oOuP73G6nPKZVSEhcdoqDO3AdKDurEOeTQqpfP7nG2Tv6d+6Eh2yt1JLJe4C..eJt3fCCK0W+VbyMGa7OR802O0+.vrlapu9ut0oVXVSO0e+3x+yUvF2bp+9SW5T6gCCpeBw6duG.m3jmQHdL+7HvOzxlIDuzkuZ3487RHdwKbtv5JWQg3wMgeAuI72l534xlfwFaL..RHgDv.GRp+cihVzhfsrgT+6JA77WfoOq4KDWqZVCL2Yk5eW5etx0w52Xp+cqN1g1hg4v.Dh26ecHbzicJg3eZjCEso0sTH92V4ZgG28dBwNO+YgpVEqEhcbxSGu5UuVH10ssATfBXJ..RN4jQ+FTp+8ZyJbgw11bp+87WDXPXZyH0+duM0nZvo4j5+evUu9MwZ+iT++KZWaaMF4vFrP7ecv+FG4+cbg3QNbGP6ZyOHDuxUudbqa6gP77m6LPMpdUEhmzTmIBIzvDh29VVGJbgJjPLuV8OiWqNuVcds57Z0A30p+E7Z00MWqtpvYXHQTtBo8BPHhHhHhHhHhHhHhHR8ISt7+61jgHhxA6KELLs28SDQDQDQDQDQDQDQDoZbIIkHJWA80WeccJPDQDQDQDQDQDQDQ4HwYXHQDQDQDQDQDQDQDQDQ4h7x+ae5sbVVV0p+rfgDQDQDQDQDQDQDQDQDkKhltMdoWVWpPDQDQDQDQDQDQDQDQDkcGKXHQTtBu68Qf289Hz0oAQDQDQDQDQDQDQDkiiA55DfHhzFF83lL.T+oWMQDQDQDQDQDQDQDkaU0qVU0n9yBFRDQDQDQDQDQDQDQDQTtHKXdyPi5OWRRIhHhHhHhHhHhHhHhHJOLNCCIhxUn7kyRccJPDQDQDQDQDQDQDQ4HIStb4x00IAQDQDQDQDQDQDQDQDQj1w0twsA.PSabCUq9yYXHQDQDQDQDQDQDQDQDQ4hrl0sQ.n9ELj6ggDQDQDQDQDQDQDQDQDkGFKXHQTtBd8.ugWOvaccZPDQDQDQDQDQDQDQ43vkjThnbEVzRWI..Nz92otMQHhxyyCO7.93iOHzPCEgDRH..nxUtxvZqsFVas0nBUnBPe80WGmkzWqfCNX7nG8HDXfAh.CLPDVXggRThRfxW9xixW9xCqs1ZXkUVoqSShHhHhHhHhn7nZaa9AMp+rfgDQDQTlxgNzgvfFzfTYe5ZW6pZOle3Ce.UoJUAQDQDJsOsnEs.m+7mWsGS.fqd0qB6s2dHWtbQGakqbkvQGcTiFuzye+8G6XG6.G3.G.O+4OOC6aAKXAwzm9zwjm7jgIlXhZM9xkKGkpTkBQFYjhNlat4FZdyatZMNaZSaBSZRSRT6MoIMAW9xWVT6kqbkCu90uVT6m3Dm.ssssUg1N9wON5cu6sjm2CbfCft28tqV434N24j70L6d26F8su8Ug1N5QOpn19Zou95ivCObXpolJ5XxkKGm+7mGqcsqEm8rmUxWOkVsu8sGyZVyBMqYMSqliDQDQDQDQDQjpLpg6fF0eVvPhHhHJS4l27lHgDRHC6SPAEjFMlqXEqPxBTkV0st0UiFyjSNY3niNh3iOdIO9Ce3C0nwKshKt3vRVxRvxW9xU53mdQEUTXNyYNXSaZSvYmcFCYHCA5oWFuJw6u+9i27l2Hpc8zSOM54iabiaH4OyjZLBJnfT5O+r0VaE01st0sT5qG1wN1gZWvPO7vCIGGM8blYU8pWcIKV3cu6cw.G3.wSdxST6w5rm8r3rm8r36+9uGG4HGAknDkPalpDQDQDQDQDQjVCKXHQTtBMsI1oqSAhxy41291prOeYI4Tc7pW8Jrl0rFU1uF1vFp1iI.vV25Vw8u+8U5w8wGeznw6Kd7ieL5bm6Ld1ydVl5wGRHgfgO7gCu81arpUspLruJ645pUspgBVvBp1mSkMNR8bpx5qUVYEJVwJlZ2e.fyblyfvBKLXgEVnxbzCO7PTaEsnEEUpRURT624N2Qkimlp90u9hZyGe7AsqcsCu6cuKSMlW8pWE8pW8BW7hWDFZngesoHQDQDQDQDQDo0kw2N6DQTNDSxwwfI43Xz0oAQ4YjbxICO8zSU1OMofgKZQKBwDSLpreZRACe26dGlyblSF1Ge80W0d79Bu7xKz7l27LcwBSqUu5UC2bysLrOJqvXZxyEQFYjvO+7SsGGkcNsyNw2fFxkKWxB88EImbxX26d2pUdd26dWQs0fFz.M9blYk9y0yd1yPaZSaxzEK7KtxUtxW8ReKQDQDQDQDQDotNvg+e3.G9+o18mELjHhHhzX93iOH1XiUk8K3fCVsFu.BH.r0stUU1OKrvBXokVpViI.vblybv6e+6yv9DYjQhPCMT0dLezidDZUqZEBO7vUZeJTgJDr2d6wHFwHvnG8nQKZQKT59Unb4xgCN3.d6aeqRGOMYlApLd3gGRtm6Yt4lCqrxpupy4Se5Skb+ULsb0UWUYN9l27FIWFTk5b5me9gO7gOnxwTSk9YX3HG4HQXgEln9YngFh9zm9fCdvChae6aiG7fGfybly.mbxIktzitksrEbgKbAsdNSDQDQDQDQDQo2gOxwvgOxwT69ykjThHhHRiIUwjLxHiDsO9otyvv4Mu4gDSLQUNdZRAxt28tmZUDRfOW.zRW5Rqx9kXhIhAMnAgHhHBIOdgKbgwRVxRfCN3.JPAJfBGK3fCFie7iGG6XheiZu5UuBN4jSXCaXCRdNu28tmjmOM44CkU.Pol8dojRJJc16oIKeoo0SdxSv0u90QSZRSTZejZ1EpryoxlAjUu5UG+4e9mpLeTlZVyZJ7uexSdBb2c2E0GSM0TbzidTXu81K5w1912dLsoMMzzl1T3kWdI5wt+8ueQONhHhHhHhHhHRWiELjHJWgSclyC.fN0g1piyDhxaPpBD0rl0LbiabCEVVQUmYtmWd4E1291mBsYmc1gW7hWfW+5WqP6ZRAxbzQGQJojhBs0zl1TDVXgg.BH.EZ2We8EsoMsQki4BVvBT5RwZQKZQw4N24jbOvC.nrksr3HG4HvN6rSxBichSbBIKX3Ce3CQbwEmn1ye9yuBE2RUt0stkjsK0RL5ie7iQTQEkn1Mv.CPcqacE0t5TvP..Wbwkr7BF1zl1TTu5UO0JeTkabiaHY6CcnCMCK5molZJ1291GpQMpgni8u+6+pUxMhHhHhHhHhHRahKIoDQ4JrycuOrycuOU2QhHsBoJVScqacQ4Ke4UnsnhJJ7wO9wLbrl0rlknkJyQMpQIpXg.peAC26d2Kt10tln1W9xWN9tu66D0tO93iJGyPCMTrhUrBIOl4laNtzktjRKV3Wnu95iUu5UK4wBJnfvye9yE0txJLVcqacggFZnJx5ToIKwnJ6bVyZVSXrwFq18O8N3AOXFtOUJ0rZrBUnBRtDepMVlVUEoVdTU2yQ0qd0QAKXAE0tTKuoDQDQDQDQDQj11vG5fvvG5fT69yYXHQDQDoQhM1Xg2d6sn1qScpC71augu95qBsGRHgfBUnBI4XckqbEb5SeZEZqssssHe4Keh5qLYxTYA4..hN5nwu9q+pn16d26NZRSZhnhZBndELb8qe8HgDRPx757m+7n10t1pbL.97djmLYxjb+D7Mu4MhJno1nvXAETP3Uu5URdLoVRR0jyYhIlHt+8uun1qQMpgnmWiJpnvgO7gwPFxPjb7kZFFpImS.o+9IyxHiLRx1O1wNFbvAGT4i+O+y+Tx81Q4xkCYxj8UmeDQDQDQDQDQjxzg1oYaIJrfgDQDQjF4d26dHojRRT60oN0AW4JWQT6gDRHnZUqZRNVyXFyPgXYxjgktzkhssssIpuVas0vLyLSk4myN6rnkBU80WerzktT.74YrV58nG8nLbLiM1Xwl27lk7XcricTxkoSkwXiMF8pW8Bu8suUzwzSOwK9CZiBFprwvJqrBlat4eUmyG7fGH4Rl5DlvDvu+6+NdxSdhBs6hKtHYACe8qeMBN3fUqyoxVlVMwDSjbY.MyRYKsoG8nGEae6aGiXDiHCK7W25V2zZ4BQDQDQDQDQDkUhELjHJWg916dnqSAhxyPphIYrwFipTkpH4r2Sph.A748ruqe8qqPa8oO8A0qd0SxkST0o.Y94meXMqYMhZeDiXDnpUsp..RliQDQDHzPCEktzkVxw0c2cGQDQDRdrIO4Iqx7J8N3AOnZ0uniNZQyXyuH4jSVxBzJkie7iKY6R8bZ7wGOdvCdfZ2ekUbw5W+5iQLhQHZ1d9u+6+B+82eToJUIEZWar+EV25VWXfAZu2dqxJXXJojBF0nFEb0UWwDm3DQG6XGQAJPAzZmWhHhHhHhHhH5aMVvPhnbE5UO5ptNEHJOCoJVSMqYMg95qujEiKjPBQTaojRJXVyZVJzlAFX.b1YmwG9vGjbIBUcJX3Dm3DEsrgZhIlf4O+4KDK0LLD.vWe8MCKXnTrwFaPqacqUYdkY4omdhTRIEIOl5rjXpJR8bpWd4kjK8pEn.E.Uu5UWT6R85AiLxHTyZVST1xVVL6YOajXhIpvwc0UWwhW7hUnMoJXn95qOr0VaUqyIvm+YnxJxWFoG8nGXNyYNhZunEsnn+8u+X+6e+R93t90uNt90uNLxHiPSaZSQiabiQG5PGPSZRS3RNJQDQDQDQDQjN0pVyF..vTmz3Tq9yBFRDQDQZDolQY0oN0A.RO68jpfg6cu6Uz9f3HFwHPkqbkw4N24jrHYppfgG+3GGm8rmUT6SYJSAVXgEBwRki.edeLzd6kdsc+xW9xR1de5Sexvb5qkxl8dZKZ5LFTcWxTqcsqMLzPCQIJQIPW6ZWwQNxQT336d26FN6ryJLdd3gGhFmZTiZ.SLwD0NGiHhHT5LAMi7S+zOozis0stU3omdJZoUMshO93wktzkvktzkvhW7hQoKcoQO6YOwTlxTTZApIhHhHhHhHhnrR27VReCWqLh+TeHhHhHRId26dGd1ydln10jBFlPBIf4Mu4oPaFarwBsI0xQZ9xW9DNGRIt3hSxkFTyM2bLsoMMEZqrksrRtrUJ0rZ7KT1dbX5WVM01xJKXnAFXfjyFOMY+KLpnhRxmape8quv+djibjhNdvAGLN+4OuBsI0LLTpyYLwDiRWlVyrxnhQWfBT.b5SeZzhVzB0d7BMzPwe7G+ApQMpAV9xWtj64mDQDQDQDQDQT1IrfgDQ4Jr4ssSr4ssSccZPTtdJaof7KEyyBKr.4Ke4Sgik9BFtksrE7hW7BEZaBSXBBKGnoeeM7Kie5G2zZkqbkHf.BPT6yctyEEpPERg1zWe8QYJSYD0WkUDp3hKNDSLwH4wrxJqTZNoMjUVvvZVyZBiM1X09bJUQ0t6cuqjyFzzVvv1111BKszRQ8wEWbQ3e+pW8JImIp1YmchZ6d26dH4jSVxbLyvXiMF0pV0JC6iUVYEt7kuLbwEWf0VasZO1wFarX5Se5XHCYHesoIQDQDQDQDQDkkhELjHJWgKdI2wEuj655zfnb8jpfg5omdBEbQO8zCksrkUgiGbvAK7uiN5nwhVzhT33lYlYX5Se5..H4jSF25V2Rz4HilAXAETPXoKcohZ2JqrBiYLiQxGiTKSjJqfgu8suUom6JVwJpzi805Mu4MHv.CTxiUjhTD09KCMzPIGCodN8Ce3CvO+7Ss6uxJfbZKXnd5oGF9vGtn9bricL792+d.H8rKTYmSkUPS8zSOXjQFowe0vF1PImwoomLYxvvF1vvSdxSvMu4MgiN5H9tu66T4iC.Xe6aeXe6aepUeIhHhHhHhHhHsAmlyzgSyY5pc+YACIhHhH0lTEqoxUtxvTSMUHN8EiK7vCGIlXh..32+8eGu4MuQgiO8oOcTjhTD..7fG7.DczQK5bjQELbpScpH1XiUT6KdwKVoEKSpkN0HhHBDZngJpckM6BA.JbgKrRO1WKkULNqrxJ792+d09qZTiZH43H0yod3gGPtb4hZuTkpTRNKAk50ClXhIn5Uu5Jz1vF1vDs+GlPBIf8t28B.oKXnolZpj4txddY9ye9Ht3hSi+xc2cWxwKiXmc1g0st0g.BH.3qu9hEsnEgpV0plgOloLkonwmGhHhHhHhHhHJyxlZTMXSMplZ2eVvPhHhHRsIUAhR+dKX5KFWJojBBKrvvae6awpV0pT3XVXgEXBSXBBwRs+EBn7BFd4KeYbnCcHIO1RW5RQcpScj7qyblyH4iQpYY3WJloTT1L.TYjKWNhHhHj7qzSSVZPUlO8oOAu81a0dbzzyoxd8f95quBsU9xWdzl1zFQ88KKKoRUvv5Uu5IZbxL4XVspUspgYO6YiG8nGgyctyIYgUA.d8qeMd0qd023riHhHhHhHhHhTOpd8WhHhxAXpSd755Tfnb8BLv.EM6.ATcACA979X3gNzgvG+3GUn84Mu4ASLwDgXo1+BMyLyjbeiKojRRghMldO3AOPoGSY7wGef81auBskQELLf.B.UpRURsG+SbhSft0stIp8pV0phG8nGoPaZiBi4omdhjRJIQsWfBT.QyBPM8b95W+Z7xW9RQsm1kizzZjibj3bm6bJz18u+8w8t28fGd3gZcNe26dmj6Uk..MnAMPx10T95quRVHX6ryNTzhVzL7w1111V7vG9PTwJVQ7t28NQG+gO7gnTkpTZk7jHhHhHhHhHhzl3LLjHJWgF0v5iF0Po+PpIhzNT1RAo5Tvvqe8qiMtwMpPaUpRUBibjiTg1jZFFV+5WeHSlLQsugMrAkN64xrjZFFZngFJ42S.ede3SSrqcsKIaeXCaXhZSYOeqIELTYE.zVasUzRDZFcNsyN6T69prBF1st0MT7hWbQsu3EuXIWJXU1RlpTpTkpjJKlm55+8+9enicrih9xM2bSsd7EtvEFCX.CPxi8hW7BsRNRDQDQDQDQDQpxTl1rvTl1rT69yBFRDQDQpEkU7I0ofgye9yGwGe7JzlyN6LLvfTWrCBN3fkbFqIUgidyadCbxImTq7VS3iO9HY6snEsPx12wN1ABIjPTqw9hW7hRVfQCMzPL3AOXEZKf.BPxYnlAFX.pW8pmZc9.zrYLXngFpjeuHSlLIKBnxFakUvPCMzPLjgLDQsejibD0NG+VrbjJ0LuD.ve+8WsGCoJFK.PIKYIyT4DQDQDQDQDQDooBJ3PQPAK9lzVY3RRJQDQDoVjpXMkpTkRzRrnTELL5niVg35V25h9129pPaRsbjBH8raalybl3Ce3ChZubkqbnrksrRNNo2MtwMfb4xUnMolgg..1au8X26d2hZO93iGidziFG3.GPgkV0z6oO8onO8oOH4jSVzwF0nFErvBKTnMkUXLarwFXrwFqzyS5oIEXSY80ZqsFlYlYpU+KXAKHpRUphRymQLhQfUtxUpzi+EknDk.UnBUPT6ZiYcopTspI8lA9e+2+M9ke4WfQFYTF93SN4jU5djoxlopDQDQDQDQDQjtFKXHQTtByc9KF..NO+YqiyDhxcJkTRA28t2UT6oe1EB.T1xVVnmd5gTRIEkNdKYIKQzxLpTKGo.hKFzctycfqt5pn9YngFB2byMI2uCkhkVZIBN3fUnsHhHBDVXgIp.d8oO8AyXFyPxkNySdxShlzjlfCe3CKZ+LLojRBqcsqEye9yWTQSA.LwDSvbm6bE0t1Xlz8129Vkte+IUQX0zyoTEuqt0stJc10A748pwu+6+db0qdUk1GM8bB7484RkM6PUkhVzhpvOuqTkpDLzPCQhIlnB8ySO8DiYLiAaYKaAFZngRNVIjPBXfCbfvO+7SzwpXEqHpUspUlJGIhHhHhHhHhnrZrfgDQ4J73m7TccJPTtZO5QORxBdIUACyW9xGrvBKT5R0YKaYKQ6ae6E0tTyvPKszRElAixkKGie7iWzLCD.XricrpcwBA.pbkqrnBFB74kkzzWvPiLxHL8oOcLwINQIGKu7xKT4JWYT9xWdT+5WeXokVBe7wG3omdJ4RKJvmWpOc0UWEMCMAzNyjNkMFkpTkBVZokeUmym8rmg2+92KpcksbjlVibjiLSUvvfBJH7pW8JI6+PG5PU44UYV0pVElxTlhPrAFX.5Se5C16d2qn95pqthyblyfe9m+YzfFz.T5RWZXpolhW9xWhqcsqgssssozW2O9d.wk0...H.jDQAQ0wOdI2KNIhHhHhHhHhnrBaaSqUi5OKXHQDQDoRp69W3WT9xWdkV3jktzkJpsXhIFb+6eeQsm9BGsyctSIykhVzhh4Mu4I44SYpbkqLt7kurn18wGef81aun1czQGgat4FN4IOoRGy.CLPDXfApVm+ktzkh9zm9Hp8jRJI3omdJ4iQSJXnlLiAkKWtFUvPMc+KLs5cu6MlvDl.93G+nR6iTmSkkeesj5bs90ud7u+6+hfBJHQG6Uu5UXAKXAZz4vAGbPoEalHhHhHhHhHhxJXlYEVi5uxWynHhHhH5+jYJXnT5V25FZTiZjn1uyctCRJojD0dZKlyG9vGvLlwLjbbm27lGJZQKpjGSYpbkqrjsqr8wPYxjg8rm8f10t1oQmGoLpQMJL8oOcIOlO93ChM1XE0tolZJpd0qtZeNzjBF5me9I4dBY9xW9j7mweMELzDSLACX.CHC6SCZPCT6y4WCCLv.Tu5UOQsalYlgcsqcoUlQfcqacCt3hKb1ERDQDQDQDQDksFKXHQTtBqYkKAqYkKQWmFDkqkTEqwTSMUoEcSpBFpmd5gkrDo+8T0Y+Kb9ye93Mu4Mh5SUpRUvXG6Xk7wmQTVtmQ6EdEtvEFm8rmEG5PGBkoLkQiOmEoHEAKcoKEabiaTo8QYEFyVasE5qu9p84RSJXnx5asqcsQ9xW9Tq9alYlIZObTYF4HGoROVkpTkjr3uYEyvParwFXhIlH4wZUqZEN7gOrFUj1zxPCMDCcnCEG3.GPi94FQDQDQDQDQDoKvBFRDkqPYJSoQYJSo00oAQ4JEWbwgG9vGJp8ZUqZA8zS52JgTELzAGbPoEeQp8uP8zSOgYrlO93CV+5WujO1UrhU.CMzPkl+JilNCCSqd0qdgG+3GioN0ohRThRnx9WfBT.Lm4LG77m+bLiYLCXfAJeUgWar+E97m+b7129VQsKSlLIm8dJ6bZmc1IpsjRJIbu6cOQsaqs1p1yhNas0VkN6TU1RlpGd3gZM1ZBU8bZO5QOvCe3CwANvAfM1XiZMlEu3EGyYNyAu3Eu.t5pqvHiLRajpDQDQDQDQDQjFo28enn28enpc+kIWtb4YcoCQDQDQ49EYjQB+7yO7jm7D3me9g2+92iJTgJfJVwJBqrxJT4JWYXpolpqSS5qfb4xwqd0qvKe4KwKe4KQPAEDd4KeIjKWNJe4KuvW0rl0jEIjHhHhHhHhHRm6KEK7P6empU+YACIhHhHhHhHhHhHhHhHJWDMsfgJe8vhHhxAYXibb..v0suAcblPDQDQDQDQDQDQDQ5VEPCWsqXACIhxUH5XhQWmBDQDQDQDQDQDQDQT1BZ5jqQurn7fHhHhHhHhHhHhHhHhHJG.VvPhHhHhHhHhHhHhHhHhxCSlb4xkqqSBhHhHhHhHhHhHhHhHhHsiPBIT..TlxTZ0p+rfgDQDQDQDQDQDQDQDQDkKRu6+PA.vg1+NUq9ykjThHhHhHhHhHhHhHhHhxCiELjHJWgHi7CHxH+ftNMHhHhHhHhHhHhHhnbbLPWm.DQj1vnFyDAf5O8pIhHhHhHhHhHhHhnbqpZUprF0eVvPhHhHhHhHhHhHhHhHhxEw44OaMp+bIIkHhHhHhHhHhHhHhHhn7v3LLjHcnjSNEnu9rt8ZCVV1RqqSAhHhHhHhHhHhHhHJGIYxkKWtxNX.OOvuk4BQ44Xt4EEEpfETWmFDQDQDQDQDQDQDQDkKxMusG..nQMr9pU+4LLjHcn3iKd.VvPhHhHhHhHhHhHhHhzhV0pWO..Nz92oZ0etVHRjNTbwGutNEHhHhHhHhHhHhHhHJONVvPhzgRLwjPJojhtNMxUvaedD71mGoqSChHhHhHhHhHhHhHJGGtjjRjNVbwEOLwDi00oQNdKXQ+F.T+oWMQDQDQDQDQDQDQDkaUq+gVpQ8mELjHcr3hmELjHhHhHhHhHhHhHhHsmQOpgpQ8mKIoDoiEWbbeLjHhHhHhHhHhHhHhHcGNCCIRGKgDRPWmB4JzH6ZftNEHhHhHhHhHhHhHhnbjjIWtb4J6fA77.+VlKDkmUYJiEvn7kOccZPDQDQDQDQDQDQDQTt.G9uON..5UO5pZ0etjjRT1.wykkThHhHhHhHhHhHhHhzRNvg9abfC82pc+YACIJaf3hmELjHhHhHhHhHhHhHhHcCVvPhxFHNNCC+pclycAblycAccZPDQDQDQDQDQDQDQ43XftNAHh.RJojPJojBzSOVC+LKW14d..PGZm853LgHhHhHhHhHhHhHhzsFpCCPi5OKXHQYS7o3hClZhI55zfHhHhHhHhHhHhHhnb35TGZqF0eNclHJah34xRJQDQDQDQDQDQDQDQ5.bFFRT1DwEOKX3Wid0ytoqSAhHhHhHhHhHhHhHJGIYxkKWtxNX.OOvuk4BQ4oomdxPEJe4z0oAQDQDQDQDQDQDQDQ4vsl+XS..XRNNF0p+bIIknrIRIE4HdNKCIhHhHhHhHhHhHhH5qz0t9sv0t9sT69yBFRT1HbYIkHhHhHhHhHhHhHhnu0XACIJaj3iiELLyZatrarMW1stNMHhHhHhHhHhHhHhnbbLPWm.DQohyvvLuy61k..vnFtC53LgHhHhHhHhHhHhHhzslyL+EMp+rfgDkMRRIkLRN4Tf95yI+KQDQDQDQDQDQDQDQYN0tV1nQ8mELjnrYhKt3folZhtNMHhzQh8UgfWdvci2cy+AwE1KQxwFitNkHhnrL5k+7CiJYYQQqeSP46yPQApPE00oDQDQDkKDuNKhHJ6I8Msfv3xTATrF2BT9d6.xewKotNkxSSlb4xkqrCFvyC7aYtPDAfBW3BghUzhnqSibbt1MtM..ZZianNNSHJyy+ctQ77ssJHOojz0oBQD8smLfxM3wgpL1oAYxjoqyFhHhHJWBdcVDQTNC5YX9PEG2Lv20+QnqSk7rXACIJaFiLxHTlRWJccZPD8M1iW2xvK26l.jAXRC+ATX66BxuUUA5aZAz0oFQDkkI4OEKh6kOCQc4yfX92SC4ojBJSOb.0X5NqqSMhHhHJW.EtNK6ZMJbq6LuNKhHJajji5iHV+eD9naGGexyq..fJLrIBqG8TzwYVtC+xzmK..V4uodWiMKXHQYyHSlLTgxaIuy5IJOj2e+6.O94dAY5qOJ9DV.JjcMWWmRDQz2bQ60cvqW4Lf7DSD0a86Gl2flnqSIhHhHJGLdcVDQTNKe3JW.ucyKBxSIET+s92nn0xVccJkiWu6+PA.vg1+NUq9qWVWpPDkYHWtbDe7InqSChnugBbe6...Eri8iWDKQTdVEn1M.EpyCD..A9WtpiyFhHhHJmNdcVDQTNKEtY1iBzt9.HO0+FN8sEKXHQYCEe7wqqSgbbbZgKCNsvkoqSChxTh7AedO3zL66rNNSHhHcqB2pN..fO5sG53LgHhHhxoiWmEQDkyiYssa..Hx6eScblj2jA55DfHRr3hOdTXccRjCiuO5w55TfnLsDi7c..vvhagNNSHhHcKCMuj..HwO7dcblPDQDQ4zk3Gh..o99KHhHJ6u7UhO+Yi8kOqL5qyl2vp0n9yBFRT1PbIIkn7X9xtIL26RIhxiSld+2BfhR2k0IhHhHhHhnbq30DpcUrhVDMp+bIIknrgRJojPRIkjtNMHh9V4K0ITNe2PDQDQDQDQZCx9xMjIuLKhHhH0BmggDkMUbwEOJPA3uhptV0xWjtNEHJySlrOWrPVvPhHhHhHhHsCgBFxqyhHhHRcvpQPT1TwEe7n.EvTccZjiQ4rrr55TfnLMYxzCxQx7BYIhHhHhHhzZDVJWzoYAQDQjtR+FzH..vesmcnV8mELjnrohOt300o.Qz2J7NekHhHhHhHR65+tNK4ojB3tEOQDQ4EkbxIqQ8m6ggDkMUBIlHjyhGPTdD7NekHhHhHhHRah6ggDQDQZFNCCIJaJ4xki3iOdj+7meccpjivH9YGA.vN1xeniyDhxD9xc9pb47NekHhHhHhHRaPFuwLIhHJuMiMVyps.KXHQYiEWbrfgpqO9wnz0o.QYZxv+cIrbVESDQDQDQDocHryOvqyhHhn7l1sKaVi5OKXHQYiEW7beLjn7Dz6+VgvyBtP1yetygOF0GyzOdiyuwnSctyBwd68Cwie7iUnO0u9M.UnBUPiG6icrihDSLwLctUjhTDz5VaeF1mTRIEbu64IbyM2fOd6MBO7vQrwFCrrbkCVYkUnhVUIzwN0IThRTBIe7QEUT3bm6rY5bLsZaaaGJTgJDBO7vw+7Otq1ONYPFJSYJCpRUqBJRQJZF1WO73N3Eu3EJz12+8eOJUorPkmmm+7mC2N+4vsu8swqeyqQDu+8njkrj36rphvJqrBsn4s.0vFaT67VY7+oOE22q6K4wr1ZqQspUsU4XDRHgfabiqK4wrrrVB6ZTiT4XDUTQA2c+x3xW5RHnfCBgGd3.xkCyKdwQYJSYPKaYqPqZ0O.yLyLkNFu3Eu.d3wcT44RULv.CP269Olg84IO4wvsyedb265ABO7vQDQDIJTgJDJdwKNpgM1f11l1h5T25l5RukRDe7wiSbhiqQ4WwMu3npUspnjkpTZziiHhHhHcKs2dEeBIj.t10tJtvEt.B3Y9ivCObjbxofuypuCVYkUvZqqB5bm6BLwDSz3wVtb43926d37tcdgqY4ie7inHEwLT7hWbXqs0GsossEUoJUUki06d26vku7kj7Xlat4nksrUpbLhM1XwoO8oj7XlXhInicrSJz1Eu3EPDQDgJGWYPFJrYEFknDk.VXQoQwKdwyv9614OO9vG+fBs0ktzUXjQFkgOtacyahfBNHEZq4MuEJ8Z9..dzidDN1wNJBLvWfWFXfH5niFVXQogEVXA9tu66PO6UuQYJSYj7wdhSbbDuV3yuqt0sdnhUrhPtb43HG4vJbrzec4JSRIkDt4MuAtfatA+dpe3sgGNhM1XQwJl4njkrjnQMtwnMsosvRKsTkikTWqSEpPEP8qeCxvGmTWuQ0pZ0z3qk7oO0O3kWdoQOlzKsWKbLwDCNyYNsBG2TSMEcnCcTkiS5+bUT2eW5Se5S3pW4J3BWvMDXfA94q4D3yeVDUrhnl0pVn8suCPe80OCGGo9cRyLyLXu8sQg1NyYNMhIlXTnsNzgNBSM0zLb7u+8uO72+mpPa+3O1CExqae6aiW9x.yvwQU5bm6BmXL4.HSdFba1Dvy+5dQ.QzWGCLPeTNKKqtNMxQn28en..3P6em5z7fnLiKzhpfThKN7ctdVnuwZ9EXlQZWasG96u+Y5GeIJQIvMt4sEhW9x+MrkMuIE5yRW1ug9zm9pwiccpcMQTQk4mcv1XSMwwN9IT5wC5kuDSbhNpxKxvXiMFNLjghe9mGMJbgKrBGye+8GsqsYbQIUWm4rmCVacUvst4Mw.FP+xTigUVYEl+BVHZZS+dIO9zl1TweejinPaaeGtfV0pePoiYrwFKVv7cBG9vGJCO2xjICcnCcDSdJSEVYkUZdx+eb0EWvhVzBk7X0t10F+8+6XpbLV1RWB1111pjGqicrS3OV+FxvG+wO9wvbmyrQzQGcF1OiM1XL244D5aek9mWG9vGBS+WmlJyWUwDSLAOzaek7XQFYjXFy3Wgam+7pbbr015iUul0pzOLCfO+gH0vFXalJOKdwKN90ecFnG8rmYpGu5x+90b..z1awqEgHhHhx7tXKqFR9SwhuykSC8Mo.Y5w4N241XxSZhHrvBKC6m4laNF23cD8u+C.FZngp0XGbvAiIMoIf64omprusscsCKaYKWz0rjVd54cQu6kzuWMSLwDb66bWXrwFmgmmSe5SAGG+3j7XkoLkA+6UtlBs0st1E3s2OTEYuX10nFgAMnAKp.jeQ6aWawSepeJz1stsGvbyMOCG2I333woN0IUns8r28gF23lHpud4kWXMq42w+9O+SFNl5qu9ncsq8Xbi2QT0ppXgaqus0CQDw6yvGu5XAKzYLnAMXjbxIAqqbkT3XEu3EG27VY7Mpn2d+PLwILA7hW7bUdtFxPGFlwLlIxW9xmR6ygNzAwLl9upPalZpovM2tXFdiD9129VXWCquBsMtwMdLko9KpLuRqcrisikr3EoQOFQigKtJTXufd4KQKaYyE0mstssqxaD411lVim8rmIDaqs0GG7PGNCdD.+i6tioMsoh28t2kg8qhUrhXxSYpn8suCJ8l+LzPCEM66U70u0vFavwOthuNuksnYHnfTrX4CYnCCyadNkg4vBluSX26dWJzluO5IJTb9oL4IgicrilgiipbyacGUdiB7E7ZB0czSWm.DQJWRIk7W0ruIujCrWWvA1qK55zfnLIs2c9J8YG6XGEcpScPstiD+zm9D1xl2D9gV0B3meO4aP1k4EP.A.GF7fvhWjyZkwyGu8FcsKcRkEKD3y24ym9zmBsucsQTQI0V7xKuDcANR4rYxY8YrwFC9keYpXxSZhprXg.e90FyZly.NN9w8UUb6LqacyahN0wNnVEKD.3t20Cz4N0AQ24rZKgGd3XZSapXTibDH4jSNK4bPDQDQjVyW9v2yjWlUxImLVyZVMF3.5uJKVHvmKTxBluSnKctS3Ce3Cpr+m5jmDctScPsJVHvmmkScpisG24N2V0cVBwFar3RW5hprem8rmISM9ZpacyaBGG+3vF2XFey9kUwSOuKF3.5mJKVHvmesvoO8oP+6WeDUDScM4xkisssshd1ieTsJVH.vt1oqnm8n6JTDL0QLwDCV3BWPlIMy1Z9NMODarwp0FuDSLQr3E4LFwHFlJKVH.vyd1yv3G2XwXG6nQJojhVKO9h87m6NSUPeJ2ivd0qQXu50pc+YACIJat3iOAccJjifd5oGzSO9mznblR8tHiELTaXdycNXJSdRhVJNTkHiLRLxQLb71291rnLS6wEW1Atfat8UMFG+3GC8rm+Hd9yUuKp7KRN4jwrl0Lvst0s9pN+JyoS2cCb54qu9hfd4K03w80u5UnycpS3+82ZdwNO8oOE5TGaOBN3f03Gal0t1oqXPCZ.3UuR0e3To0G+3Gw3G2XwxV5RxhxLfKcoKhst0sjkM9DQDQDocj4uwLSHgDv.GP+wert0pw2nTO8o9gwN1QijRJIk1GmcdgXBSX7Z7MkVXgEFF3.5O1yd9SM5w8Em5jY760NgDR.te4KmoF6LqeeUqDW6ZW8a54ze+8GibDCGe5SeRzwxe9yuRmEle7ieDCanCAu9UuJqNEUKojRJXjiX3XYKcIY3q2jhu95K5VW6L9G2cWidbm8rmQoK6s4DEZngh0s10nUFqniNZzidzc3hK6Pi26TO+4NGVjV5FCNsRN4jwrm0r3M7YdXSXxSGSXxSWs6O2CCIJat3hKdTfBjwq0zDQ4v8UdmupopacqKLv.0aIxoHEsHYwYSpjISlJ2ODRKoVVLu10tJ16d2in1KVwJFZTiaLpus0GemUUDAF3Kfam+73pW8JJzuPBID7y+zHwgN7eC8zSOXrwFiFzfFJ44+UuJLQyFNKszRkteAZbFrbyV0pVUzyd0aQsGcTQgm9zmhyctygjSVwK.bdNMWXeaZinGi5HxHh.y2o4IZVrajQFA6ZTiP8ss9nl0rV3cu6s312913HG4HJb9SLwDwXGyOiiehSkgK+kYFm7TmD+7nGiROdlcOk729skg.C7EhZu5Uu5n9Mngv15YKzSe8fmddWbmaeGQ2ElgDRHXwK1YroMkZgxL2byU5qO72e+EszDU0pVUTvBVHQ8M+4Ww8gkfBJHrrksTQ2golZponwMtInd0qdnZUq53YO6YvSOuKt9MtNhLc6aLaaaaEsqcsG0sd0Sx7KsL2byk747O8oOgWFXf3zm9ThtqaW6ZVM5ae6GJZQy38UShHhHhzYDtNKMeV63hK6PxYxW4JW4QiZTiP8r0VThhWB7T+eJNxgOrnUpjadiafEr.mfyNuXQiwsu8swNcU7JjTQJRQQSZRSP8pmsvJqrB99Hegm28t3F23FH1XS8lgL4jSFKcIKF+vOzZT5RWZM56K2c+xHlXhQo6oYW8pWQiuwKkx3FuiJrWfKWtb7wO9w+66mqqPwTjKWN9G2cWoa6BYE18t1onYAp8soMXZSa5nRU5yKGnQFYj3rm8LXUqbE38uO02WeXgEFb0UWvLl4r..P8pW8vG+3GQ5ESLQCe8Uwsc.yLyLT4Jasj4TIKQI03uON3A9K3t6hKvaoKcoQiZbigs0yVTxRUJ3kWdAOu6cwst0MUnvhe5SeByd1yDtcgKoxkp1zxo4MWzny2XM5wnMT1xVVXgEp+q4KbgU99QeZ4hKtft08eDUqZUKylZ..X8q+Ofu93in1qXEqHZnc1AaqmsnXEyb77mG.NvAN.dxSdrB8aW6zUT0pV0L0V9RFwaueH9ycuaLzgMLs53Zs0UICWhjSO0coZlzsXACIJat3zBabx4EDUTedokqfELyuuDPjNir+a1wlEr7SHkstscjs7C4WO8zG+0ANXl9wmbxICmWn38FOarolv0ctKE9dtYMqYXPCZv3rm8LXhSvQEtno6e+6i6cOOgs1VeTlxTFklSaaaaUzr3p+8e.YXwtTlu66rBCe3iPoG+dd5I5ae6sB2Ufu9UuBgDRHYpB1s5U+6ht.YyLyLrCW1IpScpiBs+i8nmXDibTXnCYvJrTLEYjQh+2eeDLdGmfFe9yH95iO3Eu3EnBUnBRd7LyRjz87zSb7iKduQb7NNAL4IOEEZ6K6gJadyaBqX4+lBG67m6b3F235B6+IsrksRoa18iariQTtNOmV.ryN6TY9tzkrXjPBJtBCTpRYA10t+SgO.C.fl2hVfgM7giW+5WigNDGD8AUsvEt.72+uipz8BiuvrhTjL70eSZxSActSc.QFYjBskXhIhG9fGfVzxVpxueHhHhHRWP1+sJDooSvv27l2fMtg0Kp8N04NiUspUqvG5cKZYKwvF1vwF2v5wZVypUn+G5fGDSe5yDEn.o94TjRJo.mW37EM1UqZUCttycqv96UyaQK..fe98DLzg3.d8qScIkKt3hCKaYKAqachyyLR7wGOtvEbCcqacWxiqsVNR6ae6mRuNk8rm+DNMu4pPad6i2Zkyq55V2VwUKkxW9JfMtwMC80Weg1LyLyP+5W+gM1XC9wt2MEtY97LMKiracaaWxygWd4E5wO1MEZqN0otXGt3p13aADUTQgUspUJp8VzxVhMrgMoPw79xdZ+Uu5UvXF8OqvMCXXgEF15V2Bl3DmjZetCIjPvZW6ZvLlwL+J9NPy0u9O.LlwLVs93lbxIg4L6YJbiCmYDXfuPxaDf90+A.mcdQJLtMuEs.NLjgheaYKEaaaaUg9u28rGsdACA.98eeknCcnCY39OolZlyZ1n4MW79BIkyFW+9HJatDRHAMdZrmWzv+owig+SiWWmFDkovkjTsi8su8JZ+jvFapI129+KkVfz129Nf4OewEYzsuxk6Sss5Vu5gl98huiaezi7UhdmwdxSdL1+92mBsUfBT.bfCdXQEK7KpTkpDbcm6BFXfh2qYYUOOcpSdBIaOf.B.9+zmpQikb4xwBW3BD8+k9KS6WEUrvzZzidLRt4v67BWXV5x4xMtw0EMKJKYIKIN7Q9aEJVX5O9ecfCBqstJJz9CdfWZk8aRKrvBzyd1KQs+nG+nu5wlHhHhnrNYtkjzUtxkKZV108t+iXMqYcRNCYzWe8giSXhnu8seJzdhIlH9m+wcEZ6fG7.hl0YUqZUC6+uNnBEKLsr15pfCdni.yM2bEZ+Tm7jvCOti59skBONojbxIgKdgKnwimlpu8seHe4KeJzV7wEWV948KhHh2K5ZJrol1nPwBU3X1TSTspWcEZyauenFuDfps8GqasJLyGA.ZcqsGacqaWoy7uu+6aF1yd2unqqaqaYyHzPCUiN+tricfG+3Gq5NlCw8u+8EccxZhkr3EKZE7wAGFBV7hWhjEgTlLYX5yXlvtF0HEZ2Ge7NKYIuMlXhAKXAyWqOtT1eUtRUDUtRUTs6OKXHQ4.DWbbVFRTtZ+WAC48FvWmstkMKpMGmvDT5xsyWzqd2aXVQTboW8BtcdsZtoMT1xVVQsYnZtzxlV6XGaWTAu5Uu6iRKF0WT4JaMZYqTb1z4s2OTi2i8jhkVZoBwmTIeHFouPZVVtxASLIi+46st4MwCdfWJzl4laNF4HGkJyqAMXGDcmQ+jm7XQevOZSRs2.5vPFJrvBoWpa+hBW3BiwNtwIw3I92KxLj50eo+CZfHhHhnrUDVjET+Kz5su8shtgqzWe8wT+kooxYdzHG0OIpszuuiu0sH985Mtw6HJXAKXFN1ksrkECdvNHpcoFuzK8uW6+8e+GIWBMu0stkBqnD5qu9Jc4y7qg95qunhy8sb4HM+42Xnu9J99Xummdh28t2ozGyxV1xw119ND9Z8aXihJNz2RwEWbXW6ZmhZ+Wl1zT46Qu10t1BqpJoc718t2kFkCeYV4kaZRNrhk+aH7vCWiebADP.3BWPweWO+4O+XhSZxY3iSlLYXPCZvB+Ng95qOzSO8xx1iHO24NKtzktXVxXSYesDmmKVhyyU0c7+vBFRTN.bYIknb6xb24qTphN5nEcGQZokVhe3GZsJerFZng3zm5L3RW1cgu1gKtls6Bedyqein1rrbkSiGmm7XEW1JkISFbvAwe3CRY4KekJ77zktr6p89BQFoqcUwkpG+76IRNSBO6YTbIRpKctKPO8x3kayzuuP..z+ALP0Z+SPe80GCZPCVT694meRzasim7DE+4iQFYD5W5ta0UlNzgNhRThRnPaO+4OWq7gYj1k.qunbVp4u9iHhHhnucz7qy5oO0OQWGf812F0ZuBzJqrBt69+pv6UdZ+5zEN9m9zmvKeYfJ7XJUor.ssssUsxs90+AH58vl9kjdoj92qchIlHN+4Omn9k92qciZTiE8dK0FbysyiO8oOoPaeey91srFZrwFipVsppPagFZnnScr8XMqYMRiPNO...B.IQTPT0hV0Z.979d9O7CsVgu9Vu+8kVADP.hlgi10nFIZEGQYbXHCUTapyqk5d2+QEhu28tG1+9x7yJOcsN2ktnPwiiJpnfyNu.Mdbj5ZN6V25tB6imJSG6XmfeO8YJ7U+5+.z3bPJ0sd0CkqbkWg1luSySz9SOQoEusfIJGf34LLTkJsEZu0fah9lKSbmu90Xu64OgIpXV2A74BUHUwRxpHWdJXG6P58+gzqnEoH3G6QOEh82e+E0ml07lq16+.Zy0w+rBAGbv35W+ZJzVUqZUgUVYkFMNxkKGADvyTnsJTgJfxW9JnVO9BW3BqQap4pqVaeafqt5hBW3xIN4ITXICMjPBAd68CU3w04tzEUdmv5+yD+ZCksuCJkVzxVhe62VlhioFtrnpthN5nEs7yT6ZWaQy.Vkw.CL.MoIMEG8n+Og1RN4jwyed.p8GdfThM1XwIS2xDaAKXAQy39UAQDQDkMlLg5Ep9WmkTWWQ5WkMxHYzMz2yCH.Q4RyZVyDMa2TFyM2bXiM1f6cu6IzVvAGL9zm9TFV7pxU9xiZW6ZCu7J0UciScxSfd0qdKDmRJo.2R2prRm6RWvIOgzaU.px+9O+CJZwTbagHrPCCt69kvMu4MEZSlLYXxSdJnAMnAYpySlk8s1d3i2JtuIFd3gi+XcqE+w5VKJcoKMZbSZBZbiaBZRiaR1tqW7YRbMNsRCtFm5V25hBUnBovLMUctFmALvAhW7hmi6e+6Kz1JVwug11t1IZIyMqfG24NXG4S89LCr2d6U404V0pVMXgEkFaKMqxKm5jmD8pW8Qi1a9dlT+cCM3mGYUxuQ4GKXgNigMzTuAgCIjPv5V6ZvLl4r9pG+yctyJYA1kRe6a+TX+bkx9hELjnb.hOgDz0oP1dq82Wlp6DQYa8scFFtl0rZ0pelYlYeSKXXJojBVxhWjZ0WqstJJTvPodC5VXgpuKfyt3cu6s3l23FhZO5niFOwumfcuqcpPwzzSO8T3tUVcEVXgI5tIL6vySlXhwn0s1dbhSbbg1N8oNoBELL8KGoUtxVipTEEuyfkhzu1HiWdOSqRW5xHpMo9fjzFd1ydln1zze9H0c+t+96eFVvvOEarR95uOE2mPfuHPrm8raDbvAqvwlvDmjN8tplHhHhHURnhgp+CIq75Jj5FYyB0XlKlVktzkQgBFJWtb77.B.UuF0HCebcoKcSgBFdsqccDYDQHbiocu64IdyaRcEMwPCMDsqcsOSWvv4LGUWLB802.rgMrQzF0bFVpMMtw6H7xKuf6teYIOdngFJNxgOLNxgOL.97rG8G6QOwfGrCpb4i8aAotdjLy0Mj1BFFZnghXiMVXhIlnzGidxzCNunkft2sthjS9yyvwO9wOhE47BwZV65znyelg6teYk9yrzyxxZoZciwNgILQb5ScRDRHgHz17l2bvYO64Q9ye9Uqykj+7nzReMmwFaLH5niQxi8E5qu9nXEqXp04VUZdyatnh+6hKtft08eDUqZU6qZr+KMXOer8suCrfg5H2wiO++Yzf5WW0p+rfgDkCPxImLRLwDUqkOMhnbdj8eKohxSI60RfYNIRcw2pyxFT1E2912FCbf8Ws5aAKXAgSNM+L0crnTWHS1kmm5Z25lBELLf.B.95qun5Uu5..3bmUwBF1ktzE0ZbS+2yFXfAn3Eu3pcdUvBVPXpolhXhI0KpSpB6oM70VbyO2ew+7TpwMsBIjPT6W+YngFhwN1wggO7QnQ4EQDQDQey8kBFpAULT5BwnYuerrxwVp96+y7WkELrSctyXIKYQHkTRA.ed+m6rm8LBK8go+8Z27l2hrjUVjzJ4jSBKaYKEQEUTnG8rmp9AnEou95i08GqGKaYKAG3uNfPwuTl.BH.rpUtBrkMuI3jSK3ad9ldRdcCJo.UJiEVTZ73Gm5Ro4WJ9bMrwlL7wU8pWcLrgMLr8suMg1NwINN5Yu5MZVyZlFkCYGXhIl.ml+BvOMpQJzVPu7kX8+w5vuLseUsFColwmJq.taaaaCqasqICGuRThRfabyaqVma0wbly7v+3t6HpnhB.e928l6blEN3gNhZupLQ4bs7UsV..bn8uS0p+7UDDkCQbbYIknbuxDWHKoHiLxHQskPtvYmsgFZHV+F1nBytRMQ14mmZdyagn83gS8eKClgGd3vSOuqBGqypYACS+2yojRJBePIpC4xkKZ+AIeFkO09wqIj5mOZ59OXhIJ9mmRMtYVycdNgILwIo0FOhHhHhx57eWmkF7d+zFuerrxwNAI5u57d8JQIJArytFoPam7jmT3em9Uyitz0tpQ4Ul0Kdwywzl1TUYATxJXpolBmcdw3Lm8bXfCbPnjkrjp7wDczQioO8+O6ceGVSd8EG.+aV.Ig8FQ1KEDv8dVstGUs1V2VspUsUspUsKG8m0UssNqVsUa0pVq1g65duGnBhHprk8dDxN+9i.QBI.IHPHv4yyiOJuu222bBfPN4bum6mh+9u9q5fHrho0uWRr9l2P066k..lyb+DMl3oK4q9RHRjw46cYu6ceP+5W+U6X6XGaWm2JJpM+4F0DbvAGznCEEVXgg8qGqPPRiGzJLjPLRHTjHXgEzR2thDYTJ2blCrYU+8nIBwvotskjtzktLvmeU+ySpsJJREgISlX0qds5zXK+rc0Oe8SiwjbxIWiDW0mHQhDLoINALqO5iUqccpq7yu5uedhMa1n+8e.3O9i8q5XG+DGGe5BWDNyoOsZE4K3fCQm22E80O+T64nb4xQJojBbyM2zoqOqrxRiDe012uUSvW+7Uiioue8orsRmWceq4h2k7UeIt4MtA13l1LXnZxNPHDBgPH0+vnzUNCCcOOK+7yOMZ4gIm7Kesace.UPNKZ40tUYz138UGesoCYnCE23FWW0Ge6aeKjYlYhzRMU0Z+7b4pb6B30wYO2EznfREWbw3l27F3RW7h3vG9eU60XugMrdz6d2mpb0sUavGe7Ae8+aEX4e8+CO5QOBW6ZWE235WG24N2VqE8Qtb4XQK5SQHgFJ70WMe860Ez1quW+yaP8sb.1rYCO8xKc5Z4wiGV5RWNl9zmppikPBwisr4MgILwIoWwg9n+8e.3MdidqSisEAGrdcuWxRWJt5UuhpNKiToRwW7EeN9iC7mU405qu9oVqBFP4O2nlZ0IWSXzidL3u+qCo99O4ZWC5ae6W09dNko7A5z1DB.fM1XcUOHR8BTACIDiDhnUXXkZoKeU.P2Wd0DR8IpdS2qiJX3fGxPgs1ZaUOv5XLXvDi7se6p00psBsDebwoyW+ecnCgae6ao1wl+B9T3niNVshG8U6ae6wblymn1wjIWFRK0zvUtxkwQO5QfhR99CEJTfMuoMh10t1gt1U8qkuXqs1BarwVjSNYq5XIjP7570+fG7.r+8sW0N1aM7giN0oNqWwQEYnCcXpUvvDSHA7nG8vWqY7re95Gt7ktjZGK93iSmKXn197i199sZBd4k2fEKVPlLYpNV7wGmdcOhWKwaUUfSWc0Ur10tN0NlBn.YlYl392+9X+6aup8lkbhSbbz111VLwI895UrQHDBgPH0opF6ggZqPLwGut+5k2vFVuZE0yTSMEe8+aE0H2asMdNb3.O8zCc5Z6e+G.V5R9JUutNYxjgSdxSfLJydWH.vaz6dWo6ic5BSLwDMV0UlZpon+8e.n+8e.n4AFHV9xVpZmeW+5tv5V22o5iYylkF2WcoSgT1WK8qtWU8aANCFLPngFJBMzPwLm4rPQEUDtzktH14N+ED18uuFwwUt7kMXELTau993zi7FjJUpFEXzSO8Tm97To5ya9l3M6aewYN8oUcrsu8eBctycQmuG5qVDbvU62yfphyN6Bl27V.9e+ukq5X28t2AG7f5PAC01+2Nt3QaZSa033sLzVpQdT235WGQG8SqFQstiISM2+IKnfBvJVwWCaso589C00t0cz8t28ZxvjTKnW8T+deinBFRHFIDKQBjKWAXxjlM+DRCNklHqdLyWIpSaEZ4rm8LH+7yGVZokU40uyc9yps+MXgEVfUtpUWqDqZic1YO5Xm5jVO2HF4HQ.MqY3aW6ZT63+w92udWvP..+7yWb6a+p8CgzSOcbkqbEcZ+l3XG6H3PG5fpcrwNtwo2wPEocsu8vImbBokVZpN1d+8eG23F2P0GyfACLnAMHc9dpsj296+5uz4O28WZocC4ue9qyO95CSLwD3t6tiXiMVUGKxHiDQEUTnYMqpm4lYlYlZTbTtb4BWaZSqzqiKOdU32+MjgLTzktzEL8oMU0N991+9nBFRHDBgPpmqj8Jd8XhYpsUq2e+WGRm1+lEHP.9wsrY0Zm8cniupMf5gGtCNb3n1Dw5BW37H2bxAVaiMU48O7veDd1yhVsioLOHc6s20JqrB8nG8Dm8rmQ0wN9wNlZSlP.fgL3Z+1Q5.Fv.0nfgQ8jHU6ic2cOvSdxST6X4jS1U4j5LszSSii4t6upnpG7f+IJVf.UeLO97wa+1iRiqgOe9XfCbPX.CXf36+t0ge7G2hZm+F23538m7jqzXo1h1xw4v+6+f4Lm4BVrzrPqk2wO9wzrKpTMxwYoKc43ZW8ZPf.kqJOIRjfktrkn22m5KF+Dl.96+4uviiHBUGaMqdUUYgT0VAb+q+9PZcutrG8rmnG8rmpcrQMp5l8DSss+SdridzZzNRCo9mYN8p92eUVzdXHgXDQnHgF5PfPH0FXn7WGqPNUvvpKSLwDzhx09ZDHP.NvA9ip7ZiKt3vSep5yluNzgNpSIZUWYJS4C.Od7U6X25V2rZcuZcqaiFGaW65WpxqSpTo3bm8bpcLKrvBDTP0bsMHlLYhAOX02aBOzgNnpY.I.P6ZW6fyNq6s1kV0pVoQqy73G+XpUTxJRt4jC92+4u07d15VqyO95qV2Fs70mcV0e8A.Xu6820XOoLzV1xW6Mx99zm2DAFXfpcrm+rmgryN6J3JHDBgPHj5ApFcxE+82OXt4pu8M7jm7DbqaV0u16yetyowdecmKSm3fEK1HzPaoZmWnPgXe539H1t14N03XsVOecoCcnCSsO9N24134O+4p9XKrvBMJlQsA974qwwxJqrT6i8wGezXLO+YOWiiUduLI0a0llat4ps+D9y6X6X4KeYp9yms3EopMTpMLXv.S+CmA3xkq5wxyq5Xo1hat4Fr2d6U6XIkTRpUL3Ji19dopSNNt3hK3Slm5aUF5599W8QrXwBey2rR0xeJ2byEYlYlU50ETKZALwD02RWt4MtgZSJ4JRd4kGB+QOp5EvUCZa+mzX9qYjZdTACIDiHTaIsh0910Zz91U68F3RH0ppiaIoMTsnE+4ZbrMuoMVkI2+EewmowrNticT6q1JCENb3f1zF0+YbYmc1UZhsUjoM8OD1TtVNxkt3EwN19OUoW2115OpQ64r8suC03EVspZ2nCdH52Ld1O+7Gibjp21ZjJUJlyr+Xje94WgWm.AEg4LmYCgBUex5LnAMXDbvgnWwf9XtycdvLyLSsi8O+yei+5PGpRutKeoKgedGaWsiwfACrnEs3Zj3pryN9RkPBITibuIDBgPHjZCLJcuhWO5Io73wGydNyUiiu3EuHjXk7ZeJrvBwJW02nwwKeWbXQKdwZLY115O9i3ZW6pUZbcfC7G3XG6nkKV4gYO64ToWW4UUsaz91u9oQgOpMbu6cOMNV.ADfZer2Zofg6cu6oRuum8rmAoWtVrZ4aanku6aHWtbbwKn99Vo1T9hAqKc.jZKrXwBKbgZ957W9xWlFqB0xasqcMH7vUu.UMsoMEiabiuZEKSbhSBAFTPUqqs9nfCNDLtwOA85Zr2d6wTm5zz33y6SlqFe+X4s7ksTstWYVaoz8eRBohPELjPLhHTDUvvJxmNuYiOcdy1PGFDR0R0IQ1WGIkThHgDhWm+S4SLp7xN6r046UwEWbkbmTnWwUBIDuZE5qCcnCXPCdvpcGKrvBwjlzDvecnCopMoTpLyLSL8oMUbyxztKA.r1Faz39Tefat6tFGK2byUuuOVYkUXAKXAZb7Uu5UgUrhuFYjQFpcbIRjfuaceK13F2fFWyXGaMW6HsTAGbHvSO8RqmiEK1X.CXf5887SW3hzXlhem6ba7du66fHe7iUauPQgBE3oOMJLlQOZb0qdE0tFtb4hO6y+B89wWezjlzD7ge3LT6XxjICKbgK.aYyaB4lSNpctBKrPr+8sOL0oNEHnLsVI.f29sGEBIjPqQhK2cSyu+Kupw2+QHDBgPH0YplSLyINwIowpaKgDhGiZTiDW+5WSi2b+m9znvneu2AokZppc7fZQKPqZUqT6Xst0sAu0aMb0Nl.AEgoL42GG3.+gFSHvbxIargMrd74e1h0Xu4aly5ifSN6rd8biKWtnO84MqvyOjgLrJ7b0DTnPAt90uFVzB0Lejx2ITBN3PznSYbqacKLm47wZ75dAT1hPKeaNUa229129owX97Oew3gO7gZMlkKWNV+5+dM95dHgVy75rqtFwHGIBsbwPZolJd22YT37m+bZzxQSIkTvBW3BvOssspw85K9huRi8bRcEKVrvJVwJes6pI5h7xMW858Kn74Noql+7WfZqJUcwGNiYpQmv4oOMJLp2dD3d26tp00b.T99Qr3EsPb3C+uUqX70Qo6+jutxH8z0qudT92SFRci+4vGC+ygOlNOdZOLjPLhHVj3pdPDBw3Sc7JLb3uk9kD3YO2EfWdo8B3..7sqcMZr+5UQ94eYmnW85Mz54jISF5UO6gdEagGwiUqUc9Ye1WfyetyoVgIEKVLV3BW.9rOaQHf.B.d6iOH93hGO6YQqwpGC.X0qZMU49hggfiNnYLkWd4AWc0U89d8Nu66g8s+8o1dy.fxVSyt14Ngat4FBIjPQlYkIdZTQo0BSNgINoZs1UzPF5PwlzRAJ6RW5Lr0V8eCY2d6sGydNyEq7aVgZG+oOMJLjgLHXt4liV0pVAlrXgvt+8qvUd3LlwLgKtn6sC0pqoM8ODG5PGDIUt1oz2+8eG99u+6f2d6MZdyCDu3EOGQGczpUvyRYgEVfOcgKpFKlbPK+eh7xOuZr6OgPHDBgTiqZllEa1rwWsjkgIMQ0WwUYjQFX7iarvTSMEAGbHvQGcDO6YOCwDSLZTL.tb4h0u9Mp08WvEtnEiSe5SoVwAkHQB97Oaw3K+hOWYNKd6ChLxGq1dacY4gGdhoLkOP+dhUhgNrggibjCqwws0VaQm6bMSmVYRSb7fCG0WohRkJAokVZnvBKTiwylMaz6d2G0Nlu95Kl7jmhZ62Z.J2y0N0+8evGe7A95menvBJDIjP7HlXhQi6qKt3Blyb+D0N1PG5vvuumcq19iXgEVHFwvGF5dO5A5bm6Bb0UWgbYxQrwFCN0o9OM1KEM2byw.Gn9OQFqIwfACrzk80Xji3sTahzlWd4go9ASAb3vAsnEs.N4jy3gO7AHkTRQq2mt10tg91OMKhp9HzPCEicriC6YO69059TU1wN1N1Q45pJUloNsoiEu3OSuebL2bywWsjkhOZVyTmuFd73gO6y9bLm47wpc7jRJI7Ni5sAWtbQHgFJr2N6QbwGGdwyetVe+HpqT98expiEpkB+WY1vF1DF7PFRUOPRMp88GJ6VQCeX51DimJXHgXDQlb4PrXw0IsGBBgTGh5Ho0XbwEWvOt0eBe5BlmF6y.xjICQFYjHxHirBu9QOlwTiLS6pM3R41mA.PUtWJTQXxjI17l2BlyrmMdzizblzlXhIhDSLwJ75CHflUsR7RWMjgn8BF95LimmzjlDROszvu7K+rFsf1BKrPbkqbkJ3JUZ7ieBXZS+Cq1O95CSM0T7Sa+mwbl8Go08FkXhIFs9FhTJmb1Y7Ce+5gc1YWMVL4hK0be+GgPHDBgTmP0DyTyIWUUoacqaXoKa4X0qZkZrRsDIRDt6cuSkd8e0RVJ71au054bzQGw19osi4OuOQi1Unb4xwSdxSzn.Ukke94O13l1T098Fpacq6vZarQiUe0.G3fzZANqNprWqp1r50rVDTKzbuQedyeA37m+bZb+jHQBhJpnpz8HNFLXf09sqSiNMBOd7vO+K6DiX3ukF6q4W9RWBW9RWpJi2u8a+N3t6dTkiq1VngFJ91uccXIKYIZT3GIRjfvBKrJ856Xm5DV62ttZjXY9K3SwoN0+UksfSiECX.CD8rm8BW7hUc6psTCdHCAIjXBXCq+GznSMUbwEWgaWJlZpovQmbpRa6w0zJc+m7aVw+qN6wjXbfZIoDhQFpsjpcm9rW.m9r59uDmPpOgAypehrDM08t2cbx+6z3MdidqyWCWtbw7WvmVutW9GXyCTiiUU6OEUF2c2CbvC8WXlybV5U6iY3CeDXO+9dq1srFcgO93CBLP0e9ZhIl7ZULWVrXiO6y+B7a6dO5U6kwVasE63m+Errk+0fCGNU6Ge8UyZVyvgOxwz619Z+5W+wINw+o08bvWGADP.ZreU9rnq9e+GgPHDBgTa6U4YU8lYlSXBSDG9HGUu1q5bvAGvOr9Mf28ceuJcbctycAm7jmRue8sie7S.G9HGE96e.U8fq.rYyF8u+CPiiaHV4ON5ni3aV4pvvG9Hz54M0TSwV25Og1111oW2W6ryNr50rVz4N2Esddmc1Eric7KZcaenxXt4likrjk9Zuh7pIM7QLRb7SbBzxV1Rc9ZXylMV3BWD1yd1qd25MqHVXgE3K+pkTibupuXYK+qAWtb0qqYlybV3fG5upvsYixyDSLAacq+DFz.GT0IDeszPa+mjTyfJXHgXjQjPpsjpM63W9Mrie42LzgAgT8TG2RRaLnzh7rhUrR3me9WgiiCGNne8q+3Tm9rXlybV0oEDRe4e.AnQ7cjCqYqDRevlMaL+E7oXu66OPG5PGznfPkhISlnEsHX7GG3Ow59tuuFckqUQF5PUe0D1yd0KXgEV7Zee6RW5JNwI9O7tu66AqrxpJbblat4X3CeD5cwmqIYlYlgu9+sBrie9WPKaYKAiR+YEZQ.AzLr50rV7iacavZqstFOV3xkK71a02KeN8YNcUrujV8Ikuk3N26d3AO5g3wOIRD8yhFwDWrHwjRBolVZHqrxB4ke9PPwBfDIRzXUiRHDBgPHpdaOeMdYB94m+3e92ifYNyYow9SVYwiGeLo2ex3rm6BZ75XqHVaiMXaaa6XUqdMUZA.YvfAZUqZE94eYmXYK+qqQl3dkOFc1YWz6hxUcXt4lil27li2ru8EqdMqEW9JWCu26M5J8Z70O+vA9yChssssCe802Jcr73wGezGOabwKcY71u8npzwFTKZAN24t.13F2rVWcik+99ge3Lvkt7UwDmz6Woi0Pvc28.+4AODl27W.byM2pvwwlMaz0t1M7W+8+fo+gynFeeGbPCZvn68P+1lQpOyM2bCe7GOa895BIjPwQO1wwjm7Tf81auVGCa1rQO5YOwwOw+gdzydhVDbvutgqdqtb+mjX3L9w9tX7i8c04wyPQkjccLwFeMRPQHjZNb3vFt0T8e+ppgtQM5IA.fCt+e0fFGDR0wkGd2gvjiGt8c+NL0U8aFNRzMIjP7HxHiDYjQFnXABfmd5E70O+fGd3dMVa2ogfbyMWb+6eOjd5oibyMW3ryNC+70O3sO9n2yrRiAxjIEgEVXHojRBYjQF.JT.6s2dzDWaJZSaZCXyt902ajQFYfG9fGfLxHCjSt4.KszRXu81ifBpEU5aLfwlm+dcGhb1cTz393pdvkAa1rgIlXBLgCGk+co+gSo+aNfSIerolXB3XRI+MGNUZwXIDBgPHFmdUdV6Al5ZMS6iLxG+XDSLwfLxHCHWgb3qO9B+72e3hKt7Z+5IRLwDwiebDHyLyD4me9vFqsAN3fCHzV1R3fCNTiD+MDjWd4gDSLADe7wiWlTRvJqsFd5gmvcO7.N6ryU6uNjVpohjdYRHwDSDokZpvV6rCt6l6vM2cGN6ryFUEUI5neJdVzOCYlYFPPwEC6ryN3niNh1zl1ViLILI5N4xkivCObDe7wgLyLSvgCGDRHghl27lSa4TUhm+dcG..88VT8opqQELjPLB4oGtYT8BUpKPELjXLq1HQVBgPLV872q6PFOygu+7ggDIRfToRgDIRfDIRgDoRfTIRfDUGS44K+dDh9fACFvTSMU0eLqz+sIlp8iapoTAFIDBgPLBb4QzCH7kwA2V2tgoM0SCc3PHDBQGQELzvo90zllPH5DgBEAd7Z3sROdcL72ptuW6SH0XnVRJgPHpgkfBge9T4sbpxRgBEPpToPrXwJ+iDwPrXIk6iK8XhfXIu5bRjHABEJDBEJTmdrJs.ibMyLXFWtJ+ayLqj+lqx+MWkGiMsBlIDBgPLXJcB9PstbBgPHDcCkAKgXDRnHpfgk2Xd2QZnCABoZiRjkPHjWOLXv.b3vAb3vA74yWutVYxkAwhDCghDAQk6OJOlPHRrXkerPgPrXwup.i4lakdu4vgC3xkK3wkK3wimx+MOdfGWdfGWtfKOtvDNTqHhPHDBoVgpNB.kmEgPHjFm13V1N..l8rllNMdpfgDhQHQBEYnCABgTSpzVLLUvPBgPpywhIKvkKWcde5Ttb4pJXXwBEBgBKtj+VHJt3hKywEppsole94Wg2O1rYWlBJxC74yC74wG74q7O73xkZApDBgPHUGp5jKF1vfPHDBwP4JW85.fJXHgzflHwhMzg.gPpIQsjTBgPLZvjISkqRPd7pxwJVrXHnXAPffhgfhEfhK4uEHP.DTbwn3hKFRkJE4WPAH+BJPq2CFLX.d73AyKo.hJKlHOvmu4fOedfqYTAEIDBgPzpR6jKxkafCDBgPHDiCTACIDiPxkKGhDKFlZB0BqJ0N+s8B.fIOwwZfiDBQ+opQ4PELjPHjFTLwDSfIlXBr1JqqvwnrnhEihKoPhEUj.TjfhPgEUDJpnhfPgBQQk7u0F1rXA974CysvBXg4lCyM2bXg4V.yM2bZ0IRHDBoQMFTKIYfv4j...f.PRDEDUkPHDBQuPELjPLRIRnHpfgkwI+uy..pfgDiTThrDBgzn0qJpnUZ87xjICEIPfphFVj.k+coETTjHQHu7yG4ok1dJSlLKo.hupPhVZokvRKr.lYlY01O0HDBgPLrnN4BgPHjF49rEMO8Z7TACIDiTBEIBVBKLzgAgPpIPIxRHDBoBvhEKXoEV.KsP6utOIRjfBKrPTPgEhBJr.TXgEp5iEJTHxO+705dnnIlXhx6qkVBKsvRXokV.KsvRvmOeZUIRHDBogAZOLjPHDRibstkgnWimJXHgXjRnPQF5PfPH0TXvT4eSELjPHDhdhCGNvFarA1XiMZbNIRkfBKrHTXgEnrfhETfxBHVPAPrXwHyrxBYlUVpcMLYxDVXgxhGZkUVBqsxZXkUVAyoBIRHDBwnC0IWHDBgPzGTACIDiTRkJExkKGLYxzPGJ0KL6OZ5F5PfPp1XPqvPBgPTiLy3hSd5SAu7vS3omd.yLkZelUGbXyA1Xs0vFq0bOTrXgEi7yu.jeAJWAhETPAHu7yGEWbwHu7xC4kWdHwjd03YyhErzJqf0VYErxRqfUk7uoVaJgPHj5qn7rHDBgPzOTACIDiXEKTH3yimgNLpWnacoSF5PfPp9nDYIDBQMh7IDHLu7vCdzCwCC+QvUWcE93k2vYmbhVka0P3ZFWv0LtvIGcTsiKQpDTP9Ef7JHejWd4gbKo3gEWbwH6ryFYmc1pMdSM0TXsUVAqKovj1XiMvBKr.LYPSpMBgPHFXTdVDBgPZjaQe9x..vZV4xzowSELjPLhIRnHpfgDRCBzdqQ8cojRJXaa8GA.vb+jOA1Xis04wvANvefHe7iQKBNXLpQ8N04O9DRcItO4VncqX83EwFCRIkTPRIkDRJoj.Od7fOd6M70aefolZpgNLaPhCaNvVasE1Zq5+bNwhEqp3gJ+6bQd4mODIRDRK8zQZomtpwxlEKXkUVorUoVRQDsxRq.KVrpqe5PHDBoQMJOKh9q9PteDBgTSIlXiSuFOUvPBwHlPQz9XHgzf.CZu0n9tbxNa76+9d..vT9fOPsjFewKdAt5UtLXwlMF23FesVLbkKeYbxSdBLnAM3FMELbO6Y2PtLYnacuGvau81PGNj5PLjC3ZSZBbsIMAEWbwH13hCwDaLnvhJBgGQD3wQFI7zCOP.94OrxJqLzgaiBlXhIvQGb.N5fCpc7hDTDxKu7PN4lKxImbPN4lKJpnhPVYmMxpLqFQFLX.KszRXaI62h1YqsvZqrlJhHgPHjZOkjmkBExMvABwXR8gb+LT98eeOPlTonqcq6vGe7wPGNDBw.fJXHgXDSrHwPgBETq4B.K+aVK..V5WrPCbjPH5OFkrWjpPNkHqwnvC+Q3q+5kCSM0zFjIMZHsxuYEPrXw36+g0SELrQLtb4h.adyQyaVyPZomNh9YQijSIEDSrwhXhMV3rSNA+8ye3hyNSulHC.973C973il3RSTcLwhEqr.h4liphHVPAEnZuQL13hC..LYxDVakUvVasC1YqsvNasEVXgEzWGIDBgTinz7rnVRJolRC8b+V0J+FHTnPrtu66oBFRHMRQELjPLhIWgBHVrXpkbAfHhHRCcHPHUep5TNThrDBgTQXvfAb1ImfyN4DJnfBPzO+YH13hColVZH0zRCVYokHv.CDt2T2nBNYfYhIl.mbzQ01eDkJUJxMu7PN4lCxtjUeX94mOxNmbP14jCd9KTNNNb3.aswFXqs1B6r0NXmc1Btlw0.8LgPHDhQMJOKBgPHMx8iabc503oBFRHF4DJRDUvPBwHmp2XaJOVBgPzIVXgEnMsp0H3VzBDSLwhneVzHu7yG23l2DQXwiQPMu4vc2cGLYvzPGpjRvlMaXuc1A6syNfRlv5RjHQYACyNajU1YgryNaHn3h0XOQjOe9vA6sG1am8vd6sGVYokTQgIDBgTkn7rHDBgzXmCNXudMdpfgDhQNQBEAXogNJHDxqmRSjkxjslPXgEFhN5mhLyLSXs0VCmc1YzktzUXlYlUoWmb4xQLwDCB+QODolVZvc2bGcoqcEVas0Zc7IjP7n3hKFImbxpt9m9zn..fYlYF7vCO06XufBJ.QDQ3HhHh.lvgCBsksBgFZn57aLtLYxPLw7BD9iBGYlYFvUWaJBnYMC95quZc7kFud5oWvTSMERkJEQF4iwCBKLXis1h1zl1hlzjln10jVZogae6agTRNYzjl3JZeG5.brLqhnJRxImLdbDQf3hKV3omdgfZQKz3dC.jWd4gTSME.n7yokdskOVKuhJpHDYjOFQ93GCt73gVDTKfe96O3vgiVimzRKMjat4.qrxJ3ryt..frxJKboKdQTrvhwXG63pxmSDCOS3XBZV.A.+7yWDWbwgHiJJTPAEfad6aiHhLRDXyZN7zSOnBGVOEGNbzXkHVrvhUsBDyJqrPVYmMJpnhPQEUDhK93Ucc1amcv9RJhnc1ZKXylRskPHDR4Q4Y0PmwVtekOmFYxjhHiLRD18uOr1FaPaZSagqt5pZWSZokFtysuMRN4WhlzDWQ6Ze6gSN4TU9XU97uBLnfz3dCn87uRIkTz67uBJvff+ADP0J+KAEKnAYKdkPLFQYUQHF4DJRjgNDpWXsqZ4F5PfPp1d0LekRj80wcu6cvW8keIhN5mpw4rzRKwzl9GhYLiYp0q8JW4JX9yatHqrxRsiapolhoM8OD8oO8QiqYdy6SPX2+9p9XIRjfANf9C.ffCND7uG9H5brWbwEiu5K+B7u+6+.Ek66CBLv.wpW8Zqx6wwN5QwW9keNJnfBz3bcuG8.e9m+EvO+7W0wjISpp38Dm7+vKe4Kwbl8rg.AEo10No2ex3q9pkfBKrPLiOb535W+ZpcdSLwDLiYLSL64LWsFWgG9ivmL24fXiMVMNmWd4E9g0uADbvgn5Xm9zmBKdQpuezttucsXceqxOGbrieRz7l2bUmSffhvRVxRv+9O+sFetyDSLAya9K.evGLUMJ55115Ohcu6eCiZTuCV8ZVK17l1H1xV1LDKVLbwEWnBFZjgESVvGu8Ad4oWHtDhGQ9jmfBKrPb66dGDUzOEgFbHvUsTfZR8ObMiKbsItBWahx2PK4Jji7xKOjYlYhLxLKjYVYBABDfTRMUjRpoB.k+dTqs1Z3nCN.GcvQ3fC1CS3Xhg7oAgPHj5An7rZ3xXL2O4xkq5ZN1wOIRKsTwr+3OBEUj54eMgINIrzktLTTQEgY7gSGW6ZWUsyahIlfo+gy.yctehVebdbDQf4N2YiXhIFMNmmd5E9g0udDRHgp5Xm8LmAKbgKPsw8cq6aw2stuE..G8nGGAFTPpNm.ABvxV1Rve+W+kVy+Zty8Svzl9GpQ9W+zOsM7a+5tvHe62FqcsqCaYKaFadSaDhEKFN4ryTACIj5InBFRHF4jJUFjISFXwhkgNTLn7xSOLzg.gT8o5ERSIxVc83Hh.u+jlDDHnHXt4lit10tAGcxIjS1Yiqb0qfbyIGrtucsvLSMCu+jmrZW6u7K+LV8pVIjKWNL0TSQvAGB7wGePTQ8DDYjQhMswMf6eu6owioCN3.b0UWQQBDfbyIGvfACUqXNcYE2UpLxHCLoINdDUTJmAmt3hKnssscPhDIHrGDFhLxHwDlv3PSzxrAsTqXEeM10N2I..3wiOBMzPgKMwEbsqdUjVZogKeoKgmDYj3P+0+fl1zlpw0ejCeXricrCXgkVfN2kNCqrxJb6acKjXhIhecW6Dt5pq3HG9vH7veDZcaZC72O+Qt4lKt90uFxO+7wF1v5ge96OFv.FnZ228uu8gksrk.oRkBSM0TDZngBu8wWDyKdNdvCd.hM1Xwnd6Qhksrki2azioj3mmpY95Ke4KA.fM1XK3wS4dXVYmwpwFarXJS98Q7wGG..7wGePHg1RHnnhv8u+8PFYjAV8pVIt90uF1111dE1Bu2xV1L9ge36U8wLYRqFMiULYxDd6oWvSO7.IjPhHhGGAxO+7wUt1UgC1aOZYHgB6ryNCcXRzCLYvD1XsMvFqsA94qe..PPwBPlYlExHyLQlYkIxM2bQN4jCxImbvSiNZ..Xi0VCGczQkEPzd6gIlPEPjPHjFcn7rZPxXN2uRczidD7K+7Nf4laN5SedSXk0Vgae6aiDSHAr6e6WQSaZSwwO1QwCe3CUK+qabiqi7xKOroMtA3me9gAMnAq188O1+9vxV1RgDIRfIlXBZYKaop7ud3CeHhKNk4eszktbLlwNV..vkGWU4ekbxICEJT.qswFvmGO..vwjWk+U7wGGlxjeeUSFTu81aDZKaEDTTQHrvtORO8zwZW6ZvMtw0wV211AWtZeendqa8Gw2+cuZeUiI0p4IjZMicBSE..6c26PmFOCEkep.TFwDa70LQEgPpU4jiN.974YnCCBgTMcyoLBjeD2Ct7ka.7aQqLzgiQokszkf8rmcCmbxIb3ibL3fCNn5bBEJDe3zmJtxUtBbxYmw0u9MUct3iON7l8oOPlLoHv.CD+5usG0JlPxImLlxjee0l4pW3hWBt69qljB+6+9OX9y6SfolZJh7IZNCWqJewW743O1+9.CFLvRVxRwDl3jT67+5t1E9lu4+op8vLnAMXrwMsYUm+ZW6pXBiW4pgqO84MwF2zlUUXLEJTfqcsqhI+9SBxjICcu6cG65W2M.TtBC82uW0pR6e+G.V2288pRpSf.AXzu26hHhHb.nrU67SaeGnqcsaptlDSLQLzgLHje94qQbkXBIf27M6MjHQBZVyZF13l1B7wGeTc9m+7miY+weDd5SiBlXhI3zm4bvM2bSsm6MuY9CwhEiu+GVOF1vdKM9b23G2Xw0u90fYlYFV5xVNdm24cUcNwhEiU9Mq.6YOJe9N+E7oXlybVpN+xW1Rwt28ugV05ViHBObvkKWrfOcgnMsosvKuTus6jc1YiadyafBJn.zpV0J3u+AnQr..D4ierZy9VR0yyeutC.f9dqW+bQjKWNd9KdNhHxHgXwhA.faMsoHzfCAlat4u12eR8CRkJEYlUVH8LRGomQFH6ryV0OyrTTADIDBowmaN4gi7e78gKe0F.+fn7rZnvXM2O4xkC+70aUeb+5W+w288+fp7uJt3hwXF86gG8nGB.k4es0sscz8t2cUWSRIkDF5PFDxKu7v.Fv.wl2xOp5bIlXhnuuYugXwhQ.AzLrwMsY01ZJdwKdAl8GOKDUTQANb3fyblyA2b2c0hwfBrYPnPgXce22igO7Qnwyg2eRS.W9xWFlZpoXIKYoplzm.JW0kqZUqD+1utK..L249I3im8bTc9u9qWN9secWnUspU3wO9wvLyLCyeAeJZSaZK71auUK+qbxIabianL+qV1xVh.BnYZ8yoT9WMbUSlSXiciZzSB..Gb++pNMdZ5SSHM.PskTBw3FCZlu9ZKhGGA..7yO+UKgQ.nJQDKszRTr.AHwDST0413F1.jISJ3ymO988teMV4QMoIMA6+ONPsVgERLgDvgN3eB.fOXpSSihEB.Lo2+8wbpf18I.TMyLCLnfvOt0soVhVLXv.csqcCipjBociabCTXgEpw8vSO8BaXiaRsY.JOd7TMqSA.l0G8wpUrP..2byMUqpvnKYU8Tp0rlUCIRj.d73gctqeSshEB.3qu9hcsqeEb4xEhEKFe6ZWSE9bTatvENup1i5m9oKRshEBnrc3rrk+0nO84MAfxVPZ4a6P..gc+6CGczQbhSdJL1wNNzrl0L09b3INwwwazqdfO9ilE97OawX.8ue3se6Qfyd1ynVK3412913sdqgpp0oRpefISlve+7GCYfCBA1rlC1rXgDSJIbhS8eHhHeLjISlgNDI0.XylMb1ImPHsHXzmd8FXDu0agd0idffZdfvA6sGLYxD4jat3oQGMtx0tJ9mibXblycVDdDQfzyHCMJtHgPHjFHnVRZCRFq49UVd3gmXiaZypk+EWtbUK+qYNyYoVwBA.ZZSaJFv.GD.fFsi0ucsqAhEKFb4xE6ZW+pF6i893iOXm652.Od7fDIRvZVyp0qX9xW9x3xW9x..XdyeApUrP.kcBlkrjkh90Oksc0su8eBYjQFZbeBKrvf81aON9I9OLtwMdz7l2b0x+5+9uShd0yWk+0.GP+waOxgiydF0y+5t28N3sdqgg0pm4QRHjJGUvPBoA.gBoBFNsYNWLsYVwug5DR8aThrutZW6ZO..twMtN9m+4u037AGbHHrG7HD1CdjpUwlBEJvIO4I..vvdq2BVYkUZ8das0Vi268FcsRbe5ybZHUpTvjISL9wOgJbbieBSD73o4JIOlXhAO3AOP4XF+Dpv1S87m+Bv29seGV4JWMDokIYxnGyX.a1Z1o5Ka6Ks7IqVpRaeMBEIT0wDIRDN0o9O..LwINI3jSNo0q0ImcVUQRO4IOgpU.lt3v+6+B.kI1OtwWw62EKbQKF..EUTQ3rm8LZcLyblyBt3hKZb7G9vGhOYtyAETPAvLyLCN6rxwD18uOl9zlJF3.5O99uacX8q+GvTl7jnhOUOFGNbPHAGLFz.FH7zCOfb4xQDO9w3jm9THkTSwPGdjZXrYwFN4nSH3VzBzaUEPrmHn.UV.QFLXfrxNa73mDIN+Eu.96C+u3xW8JH5mEMxK+7MzgOgPHjZHLXTxa6IkmUCJFq49UVidzitJy+paUQ9WkMuNwhEq542Dl3jfSN6rVuVmbxILwRx+5Tm5+zZtgUjibXk4e4jyNq5dnMKZwJy+Rf.A3Lm9zZcLyXFyRUKcsrBO7Gg4NmYqY9WgEFl9zeU9WaXCqGu+jlDjISJnlYJgT4LwDSzqtqBsGFRHM.HVrXnPgBM1PgaLImbx0PGBDR0GMyWesMjgLTr6e6WgPgBwBl+7v5+guG8pWuAZW6ZOZaaaqVSXJszRUUBRcpSctRu+ctycA+7Oqa86c8Q7wEG..byM2Uk3m1XkUVg.CLHb26dG0u9R169..5RW5ZEd81ZqsXDibjU348vcsuOvV1WTYoIqUdZKQ23iONUqXm1z11VgOt..soMsA.JaQOIDe7vW+7qRGeoJceyHzPaoVigR4iO9.qs1Zjat4p5ZJKVrXgQLx2VqW6edf+.RkJECYHCEKcYKC1Xis34O6YXqa8GwQO5QPzQ+T0lYucsqcCy8SlmNE+DCCtb4hN19N.u8xabu6eOjW94iKckqfl5pqnUsrUp1qVHMrnr.hNBmbzQffT1BSSOiLPpokJRMszP94mORNkTPxonr3wb4xEN6jSk7Gmqv8+TBgPH0yQ4Y0fjwZtekk6dT8y+hiVx8Ig3i+U4eUR9UUjRyOStb4H93iqB2tEJuXiMF..DRHgn19Je44gGdB6ryNjUVYo5ZJKlLYhQ91ZO+qCbf+.RjHACdHCAKcoKG1Zqs34O+4Xaa8GwQNxg0H+qtzkthOYdyWmheBowp89aaWuFOUvPBoA.EJT.QhDCyLidyLHDiRkjHakrsBSpBAFXf3HG83XQKbAHrvBCIkTRXO6Y2p1+570O+v67NuKFyXFqp19R7wmfpq2kJHYrRUYEy60QBInre76rKZeFfV9Xn7ELLg3Ud8LXv.N5ni07AXYnOSJkxVXNu7x6JYjpe9XiMV8nfgwTx06UUNVu7xKDVXgo0DVcvAGqvYa2W9UKArYyFKZwelpU3ou94G9tu+Gvbm6mf8t2eGgEVXPlbYn28tOXpScZUZwKI0e3nCNf98l8EQ+7mgHd7iQRu7kH0zRCsJzVBe7tx+dVhwO1rYil3hKnIkrxhKt3hQpokFRMszPZomFJt3hQrwEGhsjI0g81YGbojwai01X.ibBgPH5EJOqFjLVy8SeUWk+ktWvvX0o6eoiQYAC0bBa5fCNTgSFqu7KWBXwjEVzhWL3wiO.TtUVrtu66wbJM+q6eeHStL7FuQuo7uHjZAz+ihPZfPjHQTACIDiTLXVZhrF3.wHmO93CNze8OHwDR.W3BmG23l2.26t2EYkUV34O6YXkeyJvecnCg+3.+IrzRKAWtlo5ZUTE6ejRqkZ0jlU5dVgN7EeoxjpwwjHU4wXvfAXxr9ypLurIsIUhjJcrRk9pyylit+RSKcVsV5mCpLRjnbLbXq4Lg0Ym0d6REP4pLZ4e8+SqmyM2cGK9y9bcITI0SwjISzL+C.d3l63dgcejzKeIty8tKRLoDQ6aa6zZa.lzvDWtbgWd5I7xSOA.Pt4kKRMszPJojBxHyLQlYkExLqrP3QDALyLyTUrQmbzoJcF1SHDBw.q9yKOlTCyXL2uZSkMOpxlek1T17yzmhsU5Xqp76JaLns76bxoJdxxZlYlUw4e4laXwK9yzkPkPHuFn8vPBoABg5QeGugn8smeF6aO+rgNLHjpGUsJG4F13nAB2b2cLgINIr0s9S3124dX++wehdzydB.fm9znvF1v5AfxVkRohujUpWE4kuLoZkX0yRhgxNiWqHI+xWp40Wxatsb4xQJojZEdsxkKGO4IOAO4IOA4WGr+b4s29n5eGSLZtp9Jqxddu0iU1kWkL1Xqh6OvqVMhZ69qO8xeRCSb4xEcsycAcpCcDlXhIH0zRCm7zmBwDmlyHZRiCVak0nY9G.5UO5IF9vFF5Zm6B7wauAWtbgPgBQLwFKt50uN96C+u37W5hHpneJJnvBMzgMgPHjxgACZhY1PmwTte0lJadN5W9W9TIir7OF9nS2efWsZD018mx+hPpakdFYfzyHCcd7TACIjFHDIRrgNDLn3vlsV6i6DhQgFw6+n0DDHP.1111J1111JRoj8epxp8su83m9oc.WJo0ycm6ba.nbeAzd6sG.nB2L1K0oN0+UCG0J4iu9B.fTSMEDQDgWgiKkTRAO5QZddO87Usiyqb4KWgW+oN0+gAOnAfAOnAfTRI4WiHV23t6toZU2b4qboJcrkF2lXhInoM0Mc9wvmRR97d26dnnhJpBG28u+qNu29n6IDSZ7wC2cGCre8Gt1jl.IRjfaem6fKesqBQhabOorZriCaNnot5JZWaZKF1fGB5+a1WDRvAq52ejd5oiG7vGhiexSfSdp+COJhvQ14jsANpIDBg..ZhY1.jwbte0lZZScSUg3pr7BAdU9Yb3vAt6tdj+UI4R8fGDFJnfBpvw8vG9PjWd4o7ZziBRRHjZGyZ1eJl0r+Tcd7TACIjFHjJUJjpCskMBgTeToIxZXiBiU73wC6Zm+B910tFbridDsNFNb3ffBpE..ps+SMgILQ..b5SeJ73HhPqWabwEGN5Qz98srJcSlu7TnPADHP.DHP.Jt3hU6bCZPCB1Zqs..X8+vOTg2isrkMAYZokj5s2di.CLP..rqc8KPnPgZ85+ossM..3hKtf.BnYU4ykWWrXwFidLiE..+4AN.d1yhVqi6oOMJbvC9m..XLicbfEKVZcbZ6yKia7iGLXv.4jS13G2xlqvqakeyJ..fSN4D5ae6md+bgz3hYlYF5VW5J5X66.3vgCRN4jwoN8oQFYlogNzH0SXs0Vi.aVyQe50afgOzggN0wNBOb2cvgCGjW94iHexSvoO6YwQN1Qw8B69H0zRqB+Y6DBgPpkQSLyFbLly8q1DKVrvXF63..vAO3ehm9znz53d1yhF+4AN...F8XFKXwR6S7dEx07MmXricbfISlH2byEadSaT6WmBE3aVgxVJp81aOFv.Gfd+bgPHFVTACIjFPDJrw6LfuHABPQBDXnCCBoZ4Ual4TECqt5Tm5L..1vFVON4IOgFIvclSeZbkqnblV1gN1QUGeRu+jgM1XKTnPAF6XGMN+4OGjUxdVgb4xwst0sv6LpQBwhq3Uws0VaM..jHQBt10tJxKu7ffx7yiRM0TQvsHPDbKBDcoycTsqkGO93CmwLA.vEtv4wLlwzQVYkkpyme94ikurkh8uu8o0GalLYpZez6Eu3EXBiebH0Te0LsUhDIXyaZiH7veD..l5TmVE97nl1bl8bfkVZIjISFFyneObtycVUmSgBE3rm8LXriYLPlLYvJqrBe7GOaMtGk941acyahLyLSTXgEp5qsAGbHXXC6s..v111Vw+6+80pkTdJojBlv3GGBKrv..v7l+Bn8jNhNySO7.8uu8E1YmcPPwEiyewKfHi5IPA0SyHkgIlXB7vM2Qm5PGwvG5vPO6dOfu93K3xkKDTbw3YO+43hW9R3eNxgwMt0sPhIkDMA+HDBoNUoSLS52e2PhwZte0193Od1vJqrBxjICicLiAm8rmQ0qcUgBE3bm6rXLi98fLYxfkVZIlyrmiF2CqJM+qaoY9WAFTPX3iXD..3m+4cfkurkpV9WokZpXhSX73d26t..3Sl27AOd7qUeNSHjZdT+6iPZ.QnHQvbyab9KimzTT9Ftev8+qF1.gPpNXVx72gZUNUae0RVJd3CeHRHg3wGMqYBas0V3gmdBVLYg3iONjQI8q8V1xVhwO9In553ymO11O8SXVybFHyLyDS8ClB3wiO7yOeQLwDCJnfB.GNbvLlwLwV25Op0Ga+7yevhEaHSlTLgwqbVcFbvgf+8vU8LSE.XhSbRH1XiA6ee6Cm8LmAm8LmAd3gmvTSMEO6YQCEJTf1zl1ByLyLbsqcUMt9tzkthY8QeL15OtEbu6cWzkN2I3l6tCaswFUOG..dy91WLwI8950mWecXsM1fs7iaEexbmCxLyLwzl5G.qrxJ3s2diXhIFUsoFGbvA7CqeCpR9trZdfAhzSOcbvC9mpVIhG63mDMu4MG..e4W8UH6bxFW9RWB+5t1I988ra3u+9ihJR.hO93.fxBx+AScZXDiXj0MOwIMXvmGez6d1K7nHBGQ8zmhGEd3H8zSGcpCcDlZpoF5viTOCSlLgyN4Db1ImPaacqQ1YmMRJ4Whjd4KQ94mOhOg3Q7IDOXyhEZRSZBbqotAWbwYvtBlY+DBgPd8wPUdVTACaHwXN2uZSVas0px+JiLx.SeZSUq4eYu81qL+KarQi6QfMOPjVpohCcnChCcnCB.fidzii.CJ3+dUjj...H.jDQAQE..74e9WhrxLKbwKdAr6c+aXu6cuHf.Tl+UBIDOTnPAXvfAlxT9.7Nuy6V28jmPHUHe71S8Z7zJLjPZ.QjnFuqvPBwnFCZlu95xN6rC6a++AF+3m.3wiOxN6rQX2+93t28NHiLx.N5niXpSa5X26YuvBKrPsqssssc3HG4XnOu4aBKszRHPPQ3gO7gnfBJ.t4t6X663Wv.G3fpvGaWc0UrpUsZ3iO9.tb4p2wNa1rwJVwJwpV8Zfe94OXxjIhO93PzQ+TvkKWLvANH7a6dOvRKsrBuGyadyG+9uuODXPAA1rYiDSHAUOGr2d6wJVwJwV1xV06X60Um6bWvIN4ovfF7fg01XCxKu7PXgEFxKu7f01XCFzfGLN9I9OUyR3xaIKYYn6cu6vZqstLqD2WwFarE6bm+J9hu7qfmd5EjISFhLxHQ7wGG3vgCZQKBF+5usar3E+YfIS5k8RzeLYxDsLjPQO5V2folZJRMszvoO6YPt4kqgNzH0yYqs1hPZQvXf8q+XPCX.HzPBA1YqsPpLYHgDSDW6FWG+6gOLt9MuARLojTsBGHDBgTCh5jKMHYLm6WssN0oNiSbxSgAOjg.arwVMy+ZPJy+pyctKZ85+pkrDz8dziJL+Kqs1Z7K6bWXIKYovKu7BJTHWU9WrYyFA0hVfctyeEe1m+ET9WDR8Dq9aVFV82rLcd7LTTI8UmXhM9ZhXhPH0QXvfA7zC2z5uTugtQM5IA.ZEFRLNcmYOQjystHbZ9qBVzNs+B2I5NQhDgW9xWhzRKUvlMa3fCNB2bysJb+wqrTnPAhKt3PlYlAZVyZtFIXVWPffhPjQFIrwFagWd4kdmnkDIRvyd1yPgEVH7zSOgiN5XsTjp+RM0TPbwFG7zKOgyN6RM98WffhPTQEE3wiO70WeAa1zJ2wXzyeutC.f9dq5W4hTbwEiqb8qgryNavlMazw12dzTWapgNrHFYJRPQHwDSBIjThH6ryV0wYylMZhKMAt6lavEmcVm9cVDBgPpb2Y1S.4bqKAmVvpfEskxypgHi8b+psUZ9Wd3omvEWpcx+5oQ8TXFWtvO+7ix+hTio9ZNgMFP+uXBoADEJT.QhDAyLyLCcnTmyIGcvPGBDR0FsGFVyxTSMEd6s2vau8VuuVFLX.u7xK3kWdUKDY5Fd73i1111UsudNb3f.CLvZvHpliyN6RsRgBKEOd7Qqacap0t+jF23xkK5cO6Ety8tKhK93wUu90QKBJHzh.CxPGZDiH74wGMKf.PyBH.TTQEgDRJQjXRIgryNajPhIfDRLAvlMa3VSaJ7zCOfiN3XixICHgPH0LJsStXXiBRsGi8b+psUWj+UqZcqq0t+DBotGUvPBoAFgBabVvvMugu0PGBDxqsJYQ+SHDBod.VrXgN19N.qrxJ7vG8HDwieLxO+7QGZW6oUDFQuwmOez7.ZFZd.MCEVTQHwjRDIjXhHmbxAwFWbH13hCb4xEd3l6vCO7.1nk85UBgPHULZhYRHDBowt6G1CA.PqaUn5z3oBFRHMvHj1GCIDiOzdXHgPHFUZd.MCVYoU3F25lHgDSDBEJDcqKcEb3vwPGZDiTlWlhGleAEf3SHdDe7wiBKpHDUzOEQE8SgUVZI7vCOfGt6A3yimgNjIDBwnAMwLIDBgzX0pV6O..cea7h18QIjFXDKRrgNDHDhdhQo6QcThrDBgXznIt3B5cudCXlYlgzyHCbtKdAHTnPCcXQZ.vRKr.AGTKvfG3fPedi2.95iuvDSLA4ke93QgGNN5wOFN+Eu.hItXgToRMzgKgPH0eQSLSBgPHD8BsBCIjFXjJSFjHQRitY39Si94..H.+80.GIDR0PIIxRy7UBgPLtXsUVg27M5Mt3UtLxM2bwYN+4PO6dOfElatgNzHMPXuc1C6sydz5V1RjRpoh3SHdjbxIizyHCjdFYf6GVXvc2bCd4oWvA6s2PGtDBgT+BUvPBgPHD8BUvPBoAHQhD2nqfge4RWA.z8kWMgT+BkHKgPHFq3ymO5SudCboqdEjc1Yiyd9ygd0id.qsh1u4H0bXxjIbsIMAt1jl.IRjfDSJIDSrwfLyJKDSrwhXhMVXgEV.u8zK3omd.tlw0PGxDBgXvUZmbglXlDBgPZrp6cqy503oBFRHM.ITnHXt47MzgAgPzUkNyWAkHKgPHFiL0TSwazidhqd8qgTSKMbgKcIzqdzSXsUVYnCMRCPb3vAd6kWvau7B4WPAH1XiEwFebnfBJ.OL7GgGEQ3vEWbAd6oWnIt3BXxj1IRHDRiUzDyjPHDRiae7LmldMdJyABoAHghDYnCABgnG3Xtk..PVgEZfiDBgPLrjUXA..fEOiuI9Da1rQ25RWgKN6LDIRDtvktHxKu7LzgEoANKsvBDZHgfgN3Ait0ktBWc0U..jbxIiqd8qgib7igGEQ3nHAEYfiTBgPp6wtj7rjKfxyhPHDiExJHe..vhGsMOXHPELjPZ.RrXwM5Z4Fso0sDso0szPGFDR0BOO7B..Bi9wF3HgPHDCKAO4g..fqa9XfijpGVrXgt14tnpngm+RWD4kOUzPRsOlLT1xR6Vm6BF1PFBZYngBKszRHTnPD4SdBN5wONt7UuBRNkTZzkm.gPZ7hu6dB.JOKBgPLlTX32C..78zOCbjz3DUvPBoAJgBabsJCW7mNWr3OctF5vfPpVbpm8E..EeqyAIYkgANZHDBwvPgb4Hm+d2..vodOPCbzT8UZQCctzhFdwKh7KYVxRH0ELyTyPy7O.Lv90ez6d0K3g6tClLYhjSIEb4qdEbrSbbDYTOABEJzPGpDBgTqxwd0O..H3lmCRxNSCbzPHDBopnPhDjyg1I..bpuC0.GMMLb3icRb3icRcd7TACIjFnn1RJgX7vBu7C1289CERDiTV2W.YTKygPHMxnPtbj11WGDGaTfiM1COF0DLzgzqEVrXgt04t.mcxIHRjHboKeYTbwEanCKRiPNXuCnScniXXCdHHzfCA74yGEIP.dT3giib7igqeyafzyflrRDBogIK81eXWW6KTHVDkmEgPH0yIWrHj7OrTHM43gYtzT39HGqgNjZP3226Avuu2CnyimghJoejDSrwWiDTDBotGOtbgyN6ngNLHDhNRT1YhaLgACwYjBXYmyvl298g4stifsU1XnCMBgPp0HqvBffm7Hjye+aPbrQAFb3fVuw8A6Zc6MzgVMBoRkhKb4KgrxJKXsUVgd2q2.b3vwPGVjFwTnPARMszvyewyUq8jZs0Vi.7yO3tatCVrXYfiRBgPp4HJ6LwMF+ff3LSUYdViZxv7V0AJOKBgPpGPgBEPZtYihB6VHm+cOPV5uDr3YNZ21ODrzulanCuFDF0nmD..N39+UcZ7TACIjFnXwhE7v8lZnCi5Lm6BWB..8tW8v.GIDR0mfTRB2edSABhIJCcnTmQACFfAsWJQHD.vwF6PHqbaMXJVXoDIRDN6ENOJnfBfiN3.5Q26NXwjJHCwvSf.A3EwFCd9KdADUR2IwTSME95iOvWe7AbMiqANBIDBolgx7rlLDDySMzgBgPHjJA2l5EBcs+Drzm.LzgRCFTACIDhJt0zlznYVrqu+vOBo9JExjgDOxehTN4+fhhIJHsf7LzgTMNEL.D4Q.PTq6FPwECqN4dMzgT8VR4aAjyyRvN2L.SIhMzgCgTiiEO9fqa9.m58.gGiZBfMO9F5PpVQQEUDNy4OGDJTHbqotgN2wNBFLXXnCKBA..xjICIjXB3oO6YH2byE..LYxDt6lave+7G1ZCsJbHDhwOU4Ych+FEE6SaPlmEowC4lXJjZgMfgnhAmBouWlXbiskVCy8oYv498VvsgLJvfMaCcH0fx+bjiC.fgOzAoSimJXHgz.lC1aGrvByMzgQcBpfgDR8ehDKBwDar34u3EnnhJB..b3vACcvCFbX23XxMnuhLpmfGEd3H.+8GsJzVZnCGBg7ZH2byEm6hW.RjHAA07.QvsnEF5PhPzP5YjAh9YQiWlbxpZWo1au8H.+7GM0UWoBcSHDBgTOP7Ij.twstIb2M2Pm6XmLzgCgPZ.gJWKgz.lPQhZzTvPBgT+U14jCd1yeNRLwDfTYx..f474C+70W3kWdQEKrRTXgEB..KLm9Y4DhwNqs1ZzkN0YboqbY73mDIr1ZqgaMswS6imXbvQGb.N5fCnvhJBO64OCwDarHyLyDYlYlvbyMGMKf.fWd3IsOGRHDBgX.o.JmTOzD4gPH0znBFRHMfIRnHCcHTmYXCYfF5PfPHkgLYxPhIkHd1KdAxJqrTcbWb1Y3mu9AWb1YJ4FcPAET...L2bKLvQBgPpI3rSNgVFRHHrG9PbqaeKXgElCqsxZCcXQHZvb97QqBskH3fZAhMtXQTQGMJrvBwcu28PDO9wvee8C95iOvDSLwPGpDBgPHM9npgAR4TSHjZVTACIjFvDKQx+m8tyCOpJO+af+clIYx9FIjURBIS1SfPVHKhBFHrHqpXs3BJhn0Zs05RWPspun00Zq8p0eps1Jf0RE2ETYQjcYIPXI66gjP1CYkvrOu+QXNlgLIYBjjSRluett7xbNyy4L2yPxrbtetuefd85gToRE6PYD2cem2tXGBDQnm0oqRKuLTdEU.Up5YRKXqs1hPCIDDlBEvEl3qgjNYEFRzDNQFQjn01ZCUdtygCd3CiEjYlvN41I1gEQlkM1XCBOrvgBEJP00TCJrvBQqs0FNat4f7Kr.nHzPQjQDAbzAGE6PkHhHxpgw7Ex4fKQzf4sdm2C..+hGZcVz3YBCIZBNkpTAGcvAwNLHhl.yfACn9FpGkTZon15pSX+t6t6HbEggfCJHXCWzpGxzpUKTpTIjJUJbzQdgXIZhjYlTxniN5.Wn0VwQN5QwbtgYyptlFSSpDoH3.CBAGXPn9FZ.ETXAngFaDEUbwn3RJASM3fQzQFEb0UWE6PkHhHZBOiqyv7yORDMX129OD.XBCIhtLUJYBCIhFYnRkJTdkUfRKqLbwKdQ..HUpTD3TBDgGlB3kmdIxQ33aFeN0ImbheQPhlfQlLY35m0rvN28t6I4KEUHhIpnE6vhHKhu93C70GePqs1JJnnBQ00TCpnxJQEUVIBJv.QLQGCb2M2D6vjHhHZBKlvPhnQJLggDMAmRUVGqiga7C1B..VypuCQNRHZhulaoYTZYkgpptZnWud.zSRsTDZnPQHgB6risVugCWr6tA.fSr5BIZBIGcvQj5LSAG3PGD4jatvGu8FdNIOE6vhHKlGd3AttzRGc0UWnvhKBkWQEnppqFUUc0XJAD.hMlXgGty0nShHhngaF.SXHQzHClvPhlfSkJ0hcHLp3q+lcB.lvPhFonUqVTYUmCkVVYns1ZSX+94meHbEgA+70W9kUFl0c28TggrcjRzDW96meHxHh.EUbw3GN5Qwhl+Bfs1ZqXGVDMj3ryNijSLIDSzQiBJrPTV4kiZN+4QMm+7H.+8GwFSLXRdLIwNLIhHhlvfUXHQjk528jO5PZ7LggDMAmd85gZ0Zfb47hOQDMz0dGsiRKqLTQkUBsZ0B..6ryNDZHg.Egp.N6jShbDNw0OVgg74XhlHa5SaZnwlZBs1ZqHqSdRbcoklXGRDcUwQGbDIkPhHlniFEVXQnrxKCmu1Zw4qsV3me9g3hIFVEsDQDQCCXBCIhrTImTBCowyDFRjU.kpTxDFRDYwzqWOp970fRKqLzTSMIreu7xKDlBEHvoLEHSpLQLBsNz8kSXniNwJLjnIxjIUFttTSC6761Mpp5pP.A3OBNvfD6vhnqZNXuCHgYLCDcTQgBKtHTZYkg5pqNTWc0A+8yOLs3lFaUoDQDQWCXBCIhFovDFRjU.UJUC3hXGEir9E+7GPrCAhF26hc2MJq7xPYkWNTc40+TarwFL0fCFgoHL3tatIxQn0EtFFRj0CWbwEjP7y.YcxSfrO0ofud6CWOXow8r2d6wLld7H5HiBEUbwn3RKA0VWcn15pCAEXfHtXiCt5xD7ujBQDQzH.C5YBCIhFYvDFRjU.kpTJ1gvHtab1yRrCAhFWxfACn9FZ.kVVon15pSXlJ5latgvUn.AGbvvVaXEJKFTdoKAfdpTChnI9TDZnnppqBMzXi3jm5Tr0jRSXXmc1goOsogHhHbTPAEhRJqTTU0UipqoFDxTmJhMlXX62lHhHZHfUXHQjk5o9Ca...uzK7rVz3YBCIxJfFMZgd85gToRE6PgHZLB0pUixqrBTZYkgt5pK..HUpTDTfAhvTDFlrWdIxQHoTYOS1C6cvdQNRHhFsLyjSF6Xm6DUUcUH3fBBA3u+hcHQzvF6sydjvLlAhLhHPdEjOJuhJP4UTAp7bmCJBUAhM5ng81y2yiHhHZvn2fd..HUBuNeDQCrRJs7gz3YBCIxJgRkpfiNxpTgnIpJq7xfhPULni6Bs1JJozRQ0UWEzpSG..bzQGQXgp.gFZHvd63Epar.0ZTCs5zAarwFVgmDYEwYmbFSeZSCYe5SirN4Ivjm7hfbakK1gEQCqbzQGwLSJYDUjQhbyKObtppBkTZInhJJGQDQDH5nhhu2GQDQz.fUXHQzHElvPhrRnT0D6DF9Gek2...O8u+ID4HgnQe4jWtHu7yGdOYugKlYs.Rmdcn5pqFkTZonkKbAg86qu9hvUDF72O+3WzXLFkW5xUWHqzBhr5DdXgipptZzbKsfbxMOjTBIH1gDQiHbwYWP5olFhNpnQN4lCNes0h7Kn.TV4kioEabHzPCgUNAQDQjYHjvPo76wSDM7hILjHqDpTpRrCgQTm9L4H1g.QhhJq5bHu7yG..EWZIHoDRT315t6tQokWFJq7xgJU87Z.1ZqsHzPBAgoHL3hyNKJwLM3tzkaGoN3vD2I5AQj4IQhDjbRIgct6ciRKqTDVngB2byMwNrHZDi6t4FtgYc8n4VZFm9LmAM2RK3DYeRTbIEiYDe7ve+Xq4kHhHp2LnmUXHQjk4u8lu1PZ7LggDYkPkZ0hcHPDMLqolaFGOqrD1thJqDSOtogVaqMTbokfye9yKLyCc2c2Q3gEFBNnffMx3a+OVmRkWB..NvJLjHqRt6l6PQnJPokUJx9zmBYLmaTrCIhFw4kmdgLm67P00TCNSNmEczYm3.G5Pv6IOYLi3mAljGdH1gHQDQzXBrkjRDYo70GuGRimWwPhrRnWudnRsZXmbtN3PzDAccwtvg9gCC850KrOsZ0hcsmuCc1Ym.nmu7PPAFHBOrvwj8xKwJToqBpT0yj7vN6rSjiDhHwxzhKVTU0UgFZrQTy4qASIfoH1gDQiJBbJSAA3u+njxJE4ke9nwlZB6561MlZvAioE2zfSN5nXGhDQDQhJ8F545.vV2MQzvMlvPhrhnRopIrIL7kewmSrCAhF0nViZbfCcHg1LZu0YmcB4xkivCKLDVnJXKsbbJi+aqcxYBCIxZkcxsCSKt3vIyNabpybF3mu9AYxjI1gEQiJjJUJhL7HPHAOUjeAEfhKsDT44NGpolZPTQEEhNxn3eOPDQjUKtFFRDMRgSCAhrhnzLIWXhhvTDBBSQHhcXPzHN850ie3HGAczQG86XRLgDvzhMNlrvwwTo9xILjUXHQV0Tb40uvKdwKhRJsTwNbHZTmb4xwLhOdr3EcSHn.CDZ0oC4lWd3a14NPMm+7hc3QDQDIJze40vPorkjRDMHV888PX022CYwimILjHqHJUNwMggDYsH6SeJTeCMLfi4bm6biRQCMRw3D7fILjHqaRkHEyX5SG..4WXAPiFMhbDQj3vYmbBWWZoi4diY.2ubRzOzObXruCrez9.LIpHhHhlHxvkaIoRXKIkHZPnToRnToRKd77UUHxJhVsZMY8NiHZ7khJoXTZYkMniqt5qGc1UmiBQDMRQsPBCmX1FoIhrb94qevKu7BpUqFEURwhc3Pjnx6IOYrf4OejTBIB4xki5anAricsSbpybZlPchHhrZvVRJQzHElvPhrxbogvLJX7je9i733m+HOtXGFDMho15pEm5zm1hGOacciuw0vPhnda5wMM..TTwEC0pUaxsoViZycHDMgkTIRQ3gEFVxhtInHTEvfACnnhKFa+a+FTQkUH1gGQDQzHN1RRIhrTxjIaHs1eayHXrPDMFjJkpfSN5nXGFC6ZtkKH1gvnNCFLfxJuLTZ4kiN5nCV8nSvIWtbLYulL70GefM1XCTqQMznQiv+otW+rFMZv4ppJLs3hC1ZishcnSWETe4pjvV4rBCIh5opp70GeP8Mz.JnnBQ7Sa5niN6.EWRIn5ZpA2xxWgXGhDMpyN6rCyLojPXJBEm7TmBM2by3XYkEJuxJwLSLI3pqtJ1gHQDQzHB1RRIhrT+u+y+ZHMdlvPhrxXbcwhF+6nG+X3bUUkXGFznD0pUilZtIzxEZAyL4jQjQDgXGRzHHisUM41xD9RD0ioE2zP8Mz.Jp3hQqs0Fpu95A.WqSIxC28.YlwbQkm6b3Tm4znolZB6X26BQGYTHlnidHMipIhHhFOfsjThnQJLggDYkQkJ0vfACPBaaAiqUQkUfyUUUvFarAImXhHvoDHuXHSfYvfAz0E6BEVTQnrxKGGOqrfKN6B7xSOE6PiFAnWudnUqVHQhDXKSXHQD.znUCtvE5oaJnWudgjEB.95DDcYSM3fg+94GNSNmEkUd4HuBxGmq5pPxIlD70GeD6viHhHZXiwNLkTVggDQCyXBCIxJiACFfZ0pmvMaz+Oa7cE6PXTUokUF..RXFy.SM3oJtACMhShDIvEmcAyLojgs1ZKJrnhPt4mGtwaX1hcnQi.LVcgLI.DQccwtPIkVJJuhJDdsgqDesBh9QxkKGyLojwTCdp3Dm7Dn8N5.66.6GAGTPHg3mAr2d6E6PjHhH5ZlPEFxhAfHZPzxkWFu7zyIYQimILjHqPJUoZBWBCmn83Yvzd6sC.ffBLPQNRnQaQGYTnvhJBM2byhcnPiPTqQM.X6HkHqckWQ433m3DC53r0F9U5H5JMYu7BKb9K.EVbQH+7yGmqppPs0UGlQ7wCEgDpXGdDQDQWSze4DFJksjThnAwC8HON..93srQKZ7rtkIxJjJkbcLb7LCFL.s5zA..asgITvZiwjiqUqVQNRnQJZTe4JLTtbQNRHhDSgL0PPLQG8fNNVggDYdRkJEwDUzXQKbQvOe8EZznAYchSf8cf8iKdwKJ1gGQDQzUMCWtkjJgsjThngY7UUHxJjRUpE6PXXmRkpfRlHThnI.zn8xILjUMDQV0jHQBldbSCokRpPpz9+qswDFRz.yYmbBy4FlMRO0zfb4xQ8Mz.91csSTRokJzR2HhHhFOgsjThnQJ7JQQjUHsZ0Bc5zAYxjI1gxvlUee+L.X4kW83YF.+fgDMQlwpG0FlD.hH.L0fCFN6rS3fG9vPkp9N4nXBCIxxDbPAAe7wabxrOEptlpwIOU1npZpFoj7LgKN6rXGdDQDQVL1RRIhrTSM3fFRimUXHQVoX03MNFmHzDMglFM8jvPVggDQF4kmdgELuLgat4VetM1dxIxxYuc1iYkd5XVoecvN6rCM0TSXm6ZmnnhKlUaHQDQiavVRJQjk50ekMfW+U1fEOd9pJDYkRoYlg5DQDI9DpvPlvPhndwImbBYlwbg+94mI62Fa4qUPzPUfSYJXwKZQH3fBFZ0oCm5LmF6YueO5rqNE6PiHhHZPITggrySQDMLiILjHqTSzpvPu7xS3kWdJ1gwnB1RRIZhMlvPhn9is1ZKtgYc8HxHhvj8QDMzYmb6P5olJtgYc8vd6sGM2RKXm6ZWnzxKSrCMhHhnAjvZXHaIoDQCy3UhhHqTpUqFFLXXBSRmd6+1aH1gvnG1sjHZBMMZ0..lvPhHyShDIHg3mAb0EWwIx9jrkjRz0n.72eLYuVDN4oxFmqppvIN4IQs0VKRI4YB6s2dwN7HhHh5ierkjNw3Z5QDMx4zmMW..LioGmEMddknHxJkACFfJUpg81amXGJDQD0KrBCIZnwfACnrxKCEWZonyN6zpZcHyfAfid7ihid7iI1gx3RRjHAt3ryHrvBCgqHLdQ2rhIWtbjdpoA+82+dRXXc0gucW6DyLojwTBH.wN7HhHhLgPEFx0vPhnAwe7k+S..3i2xFsnwyWUgHqXp35X33RFaIorW0SzDS5zoC.LggDYoN4oxFmH6rQGczgUUxBA.54iBvOOvUKCFLfN5rSj8oNEx5jmPrCGZLffCLHbSKbgvGu8FpToBG5GNLN9IxRn5+IhHhFKfqggDQiT3UhhHqXJUoBtI1AwvjRKqb..DlhPE4HYTf000BkHqNFSXnLYxD4Hgnw9pst5PokUFrQlLjxLSASIf.fTobNQRVF850iyWas3XG+Xn7Jp.SIf.f+94uXGVjHyQGbD23rmCJozRvoO6YQ4UTAZnwFQ5olJ7xSuD6viHhHhqggDQiXXBCIxJlRkSbpvv0+La..Vd4USDQiUwDFRjkqzxJE..QGczHn.CTjiFZ7FoRkh.mxTPmc0INaN4fRJqLlvPB.8ztZiH7HfO93CNxwNFZqs1vd16dwzhKNDcjQw1WKQDQhperkjx2OhHZfMqqKsgz3YBCIxJlNc5fNc53EkdbFisjTvOXHQSHo0XKIku1LQCplaoE..D5TCQjiDZ7rPBdp3r4jCZ4x+9DQF4lqtgELuLwYyMGTXQEgylSNnwFaDokRpvd6sWrCOhHhrRYPud.vDFRDM390+xGZHMdlvPhrxcIkJgyN4jXGFzPwUYKIs5pqFs1ZqBaO8oO8gzwmSN4HLK1b2c2QPAEzUWfLJp1ZqEM2byBaGWbwwVUGMlmdVggDYQLXv.TqVM..uv8z0Di+9iweehndSpToXFSOd3i2diid7ii5anAricuKjVJoBe8wGwN7HhHxJzOtFFxquAQzvKlvPhrxoTopIDILbFwOMwNDFy6Ye1mEabiaD.8bgOL11CsTojRJPoRk..3Nuy6De3G9gC2g3vtW+0ec7lu4aJrcGcXpazpN...B.IQTPT0AbwEWDwHhnAmVlvPhrH8tULwYWMcsf+9CYI7yW+vhl+BvQN1QQiM0D12A1OhI5nQbwFKufsDQDMphsjThnQJLggDYkSkpIFqigO8u+ID6PXTiwVRJ+fgDMwDWCCIhHhFaxAGb.YLmaD4UP9Hu7yG4WPAnwFaDomV5vIGcTrCOhHhrRvDFRDYo192rS..rzEuPKZ7bZvQjUN0pUK7AMnwI3+bQzDZBILTJSXHQCDdgRHhDCRjHAwESrHi4bivAGb.M2RKXm6dWnt5qWrCMhHhrRvOGLQjkZSevVvl9fsXwimILjHqbFLLwoJCsVvJLjnI1ze4EvdtdaRDQDM1k2SdxXQyeAvO+7CpUqF6+fG.4ke9bxXRDQzHNlvPhnQJrkjRDAkJUA6s2dwNLtlr28eH..jwbtdQNRFELLdMHzoSGxM2bwIO4IQqs1JRJojP5omNryN6tpOmUWc0H6ryFETPAHhHh.omd5vO+7yrisjRJAZznA..d5omvGe7Ac2c233G+333G+3vKu7BwFarHojRB1XS++VVM2by3nG8nHu7xCwFarH8zSGd5omVbL2VasgScpSgScpSA2c2cjd5oinhJJy9guqqt5Pqs1J..ryN6fBEJ..vYNyYv92+9gb4xwC8POjv30pUK16d2KJszRQSM0DbwEWP.AD.xLyLwjlzjr3XjrdvDFRjkw3DnQJuPIDQhD6ryNL6Yc8HuBxG4lWdHm7xEsbgVPZojJjKWtXGdDQDMQESXHQzHDlvPhHnbBPEF9+8NuG.rRRX3vjVZoErxUtRr+8ueS1eLwDC1xV1Bl9zm9P57UUUUg669tO78e+22maKwDSDe1m8YH3fC1j8mYlYhpppJ..7XO1ig65ttKrnEsHzbyMax3l0rlE9e+u+GlxTlhI6WqVs3W+q+03sdq2xj8amc1gMtwMNnwrRkJwS+zOM9K+k+RelM3d4kWXyady3ltoaxj8+7O+yi+w+3e..fniNZjc1Yi6+9ue7e+u+W..DTPAIjvv+8+9ei0u90iFarw9beamc1gUu5Ui25sdKdAkHSvDFRjEhEwCQzX.FaQodNIOwQN1QQs0UG102sab8W2rf6t6tXGdDQDMQFyWHQzfXU29sNjFOuRTDQPkJ0hcHPCACGsjT850iTRIk9jrP.f7yOejZpohRKsTK97s28tWL8oOcylrP.fryNajRJofie7i2umiie7ii4N241mjEB.b3CeXrl0rl97XXIKYI8IYg.8zlcuy67NwW7EeQ+d+0TSMgjRJI7m+y+Yy15nZt4lwxV1xL64u2dvG7AERVXu8ge3Gh0st0IjrPYxjYRUOpRkJ7du26ge5O8mNfmex5CSXHQVFiueH3LqlHZL.+70WrvLmO7vCOPWW7h36998fJNWkhcXQDQzDP5YEFRDYgV4srbrxaY4V734UhhHB5zoCZznUrCCxRMLUQEkWd4Xkqbk3y+7OGezG8QX9ye9B2lRkJwi8XOlEcd5t6twZW6ZQ6s2N..TnPAdm24cvN24Nwu5W8qfWd4E..ZrwFwpW8pERFxU5vG9vPqVs32+6+8Xiabi3Idhm.xjIS312yd1CJrvBE1dqacqXW6ZWBaGTPAg+5e8uhu669N75u9qCO7vCTYkU1uw8S7DOAxO+7A.fCN3.1vF1.10t1EdkW4UPzQGM.54uM9U+peEJojRL64nhJp.evG7A.nmOndvAGL71auAPOUWnwDQFarwh5qudzbyMi5pqNr5UuZgywW7EeQ+d9IqSLggDYgXEFRDMFiSN4DxLi4hPCIDnUmNbriebbhryte+7uDQDQWMDVCCYIFRDMLisjThH.zS0NYqsieeIgktjEI1gv3N+ze5OEaYKaQXFocq25shLyLSgpNb6ae6H2byEwEWbC344kdoWRHwbd5om3XG6XBUR2BVvBvhVzhvhW7hA.PwEWL9hu3Kvsdqlub3+3O9iEFK.fb4xwK+xurv14jSNHpnhB..aXCaPX+t4la3fG7fHnfBB..yadyCyadyCImbxl8BzbvCdPgD8A.74e9miEtvEB.f4O+4ie9O+mi.BH.zUWcA850iW+0ecg1PZuoToRHQhD7bO2ygG6wdL3pqtJbaG6XGyj3yXhS80Wewa7FuA5t6tE9P9UTQEH7vC2rOmPVeXBCIhHhF+RlLYHkjmI7bRdhSdprQokUJ5ni1wrR+5tlVmvIhHhLx.qvPhnQHieyN.QzvJkJUAmc1IwNLtpcu28pD6PXTyvQKIE.3odpmxjygM1XC9s+1eqIsozbxImAMgg6XG6P3mW0pVkIscS.fEsnEgHhHBTbwEC.f268dOylvPe80WSRVnwis2ILr95qG.8ztPKnfBD1+ce22sPxBMJgDR.KXAKvj3ynctycJ7yJTnPHYgF4pqth0rl0f+9e+uC.fMu4Mi25sdKXqs11my05V25vy8bOWe1evAGrPEL9C+vOfYNyYhUu5Ui4Lm4f3hKN7Iexmzmigr9nSuNHARfDIRD96QlvPhrLh8EJojRJAW5RWB..1au8HhHhXT699rm8rB+7jlzj5yZ760x4yCO7.AFXfV7wNR77PM0TCtvEtfv1C00U47yOenUaOcOCWbwEDRHgbMGSDMToHzPg6t6FN3gOLZrolvt1y2gYe8WObyU2L63OW0UA85zgPlJ+8UhHh9Q5MnW36LdkXBCIhFLuy+78A.vC8.2mEMdlvPhH..nTkJwNDHK0vPKXyd6s2rW7sTSMUS1tnhJZ.OO50qWHoX..u0a8VC5Z9WM0TiY2u4t3jSdxS1jsu3EuH.PeZgmojRJl8blXhIZ1DFlSN4H7ykUVYC5GxVkJUnolZB96u+841V25VmYOlm9oeZb228cKbAsOwINANwINA.54hWlQFYf63NtCb629syDCYE6jYmMJuhJL6s8we1mBoRj.b4jIF3TBDojbxixQHQT+4Nuy6T300m9zmNNyYNynx8qACFP7wGuv1qacqC+y+4+7Z5blPBIHLYEVyZVCd+2+8s3i8tu66VXMJNt3hyj2i8p0K7BufIU1uVsZMoMkOXxHiLDVCgW5RWJ111110bLQzUCOmjmXgYNebfCeHzZqshcum8fqKszf+9Y5morwlZDG63GGt6t6LggDQDYhrNwIQEUZ9uy3V+zOomuyH.fDIHn.CDoj7LGEiNhnw51y22SggXoILjWgRhH..nVsZgDaPS7ckUAnQd3gGlj7rZqs1A77zTSMITUAVJiW.uqjat02YasM1X57ZwXr0byMax98vCOr3yI.PUUU0fFmWo9KtUnPgY2+cdm2I1yd1CxLyL6yiiN6rS7Ue0Wg63NtCLqYMKzUWcMjiGZhgXhJ59Mg050qGZ0oCZ0pEZznAQFAaasD0aCWUbOQDMRxAGb.yKiLPPAFHzpUKNvgNDJnnebc4t8NZGG7vGF50qGW3BW.s1VahXzRDQzXMwDsE7cFu72aLxHhbTN5HhlngUXHQj.kJUAGbvdwNLtp7A+2sB.fUem2tHGIi7FNt.oM1XivfAC84bXb+FMXsvKu81a3ryNKjvqa8VuUr10t1A7XtVplNiw1UFW8WhMapolL69UnPAN8oOM..l5TmpPqGcfbks7Tib2c262iIiLx.YjQFniN5.6e+6GG7fGD6XG6vjpu3nG8n34dtmCuwa7FCZLPS73ryNifCJHT44N2.NtfCJn9sElQjUKQddNEczQK7ygEVXhXjHthN5nEpNw9aRzPj0NajYCttzRGt4laHmbyEm4rmEs2d6HtXhE6+fGDZznQXrkVVYXlIkjHFsDQDMVhKCouynqiRQEQzDULggDQBTpZ7aBC+ps8M.v5HggCGWfTMZzfCbfCf4Lm4Xx92yd1iIaGUTQMfmGIRjfXhIFgVQlFMZvRVxR5y3TpToP6D0bqCfCUgFZnPhDIBIP7a9luA+re1OqOiq2qGi8VrwFK9zO8SAPOIIcgKbg8oJ.0oSGZqWyv6IMoIYwwWSM0DxN6rE19Ftga.KaYKCKaYKCu1q8ZX+6e+XgKbgP0kaEvG7fGzhO2zDOwDcLC3W9ShDIHtXhcTLhHZ7AwtBC27l2rnb+NVyF23FE6PfnwMhM5Xfat5FN5wOFp7bmyru++4p5bXFwOcXqMW6elYhHhlXfemQhnqVO4i8KGRimILjHRfJkbcLb7.i4K7Z8xi9rO6yhctycB6sumjD2ZqshW9keYgaWlLYHgDRXPOOKcoKUHgge629sHqrxBybl+XOyus1ZColZpn3hKF..uzK8RX8qe8WSwtiN5HV7hWL95u9qA.v1291wt10tvBVvBDFyW9keIxJqrL6wujkrD7BuvK.CFLft6ta7m9S+I76+8+dSFyZW6ZEtXvyd1yteS9n4zc2ciEsnEIr8m8YeFtka4VD1dNyYNHjPBAEVXOsiJ+7yOK9bSS73pKtffBLPTU0Ua1aepAGLbwEWFkiJhFGvBm.MkWd4PoRkBaGSLwXxs2VasYRkpqPgBXmc1IrsJUpPYkUlv1d5omvGe7AUTQEBska6s2dDZngB.fN5nCSVudiHhHfM1XCN24NGNzgNDpolZPTQEERLwDM652qQFWmf+ge3GfFMZPZokFhO93sn0xOc5zg8su8gRJoDzXiMBmc1Y3u+9iLyLS3kWdMnGO.vktzkvQNxQPVYkE72e+QrwFKRLwD6y358yC1Ymc8aUF1byMiryNablybF3me9gzSO8qoJRzfACn3hKF+vO7Cn81aGokVZHwDSDxkK+p9bRzngoDP.Xty4Fw2uu8Bs5z0maWqVs3bUUEBKTVwtDQD0id9NiAgpp17KuJAGD+NiDQlWpoLz5bELggDQBToVsXGBjE4xWgzqwJp3.G3.H8zSG21scaPsZ03i9nOBEUTQB29C9fOHl5Tm5fdd9M+leC17l2LJszRgVsZQpolJRM0TwMey2LpnhJv1111DtPrt4la3ge3G9ZJtM5YdlmQHgg50qGKe4KG20ccWH93iGm9zmFe3G9g86wlRJof0t10h+0+5eA.f0u90i+w+3efexO4m.4xkisu8sKzxRA.dpm5oFRwVvAGLhLxHEd97gdnGBW5RWByd1yFJUpD+q+0+RHYg.8jPRx5VrQGiYSXnDIRPrWQxMHh5gkVggO+y+73C9fOPX6BKrPDYj+356xq9puJdkW4UD19y+7OG27MeyBa+0e8WiUtxUJr8l27lwpW8pwse62NNwINA..l9zmNNyYNC..18t2Mtsa61DFeUUUE9y+4+Ldy27MMItr0Vawq7JuBd7G+w6SLmat4hUrhUfxKubS1eJojB9pu5qFvGu+m+y+A+leyuA0We8841jKWNti63Nv69tuqIIE8JkWd4g4O+4i5pqNS1+xV1xvF23FMop6W0pVkvDGJt3hyj1tMPOIP8QezG0rUhXfAFH15V2JRKszFvGSWoJqrRrhUrBb1ydVS1eTQEE91u8aGRmKhDCEWZolMYgFUVYkwDFRDQjIhMlnMaBC6o5B42YjHZ3ASXHQj.c5zAMZzLrzxHGs8PO3.ut4MgxvPKIMnfBBt5pq3zm9zljXLiBLv.wK9hunEctr2d6wl1zlvJW4JQ80WOLXv.N5QOJN5QOpIiyAGb.exm7IvM2FdVG1RKszvy7LOiPbpRkJ7u+2+agaWlLYX9ye9X26d2l83e0W8UQ94mONxQNB.5oBIdsW605y3dlm4YvBW3BGxw2F23FwBW3BQGczAZrwFwccW2kYG2rl0rvC8POzP97SSr3latgoDP.nlyedS1engDBb1ImEonhnw3rv2O7VtkawjDFt6cuaSRX3UVA46cu60jDFtqcsKge1FarAKcoKcHEl+re1OyrIwRiFM3Idhm.QEUTXwKdwB6+vG9v3ltoaBc1Ym84XN9wONRO8z626qO4S9Dbu268JrlBJUpT3gGdfVZoE..nVsZroMsIzPCMzuIVKu7xCyYNyQ3X5sssssgG+webKtMjVVYkg4Mu4gy0OsPqpqtZjQFYfMsoMga+1sr1Jed4kGxHiLL65TbgEVHRO8zM6ycDMVQN4lKp7bUNfio01ZCsbgK.OGBsDehHhlXyMWcCANkofp6Umr..HjoNU3ry76LRDM7PpXG.DQisnbbZaIcdYLaLuLrNpRKgVR50PEF5gGdfCdvCh4O+4CoR+w2JPhDI31tsaCm9zmdHsl8ccW20g7xKObO2y8.mbxIStMIRjfEu3Ei8su8gLyLyq5X1bdgW3Evl27lQvAGrI62CO7.e7G+wXUqZU86w5omdhCcnCgW+0ec3s2d2maO1XiEaZSaBuvK7BWUwVZokF1+92uPUKdk7xKuvi+3ON9lu4a5yyYj0oqrRBkJUJhIZNSQI5Z0BW3BgCN3fv18dhjzc2cKTkfFsu8sOS1t2ieNyYNvCO7XHc++se62hzRKM7W+q+U7Nuy6zmD982+6+cS19wdrGyjDdspUsJ7IexmfO6y9LrpUsJTQEUzu2Wu+6+9BIKL7vCG0Vasn4laFMzPCXcqacBiaG6XG8oR.MJqrxBFLX.++9+8+Cu+6+93AevGzjaeKaYKlMYhlyO6m8yDRVnGd3Ad8W+0wt28twy9rOKBIjP.POqyw228ceV74b8qe8ljrvkrjkfsrksfssssgG3Ad.Te80KzhTIZrl5andjegEXQiszd0JjIhHh.5oyzzaRkJsO6iHh5sm449i3Ydt+nEOdVggDQlPoJUvEW3LSZLMCWckX36+9uOd+2+8MYe6ZW6Bc2c2Hu7xCc1YmHwDSDt6t6l83GrK91jlzjvl1zlvF23FQ4kWNJpnhvjlzjfBEJvjm7jM6wzeUbfQgGd3vvf73c0qd0X0qd0n95qGm8rmEgFZnPgBEBITcsqs+q9ToRkhm7IeR7jO4ShFarQjSN4.YxjgfCNXgKj4U5ce22Eu669tCXLYzLlwLvV25VQ6s2NJu7xQc0UGjKWN7yO+P3gGNWmkHS3g6d.+8yOT6kaAfJBMT3jiNJxQEQicY78GFrIPiiN5HV3BWH9hu3K.POUPnVsZgM1XCNxQNBznQiIiOmbxAszRKvSO8DkUVYlzVP685QqkJt3hCG7fGD1XSOe0q64dtGDP.AfVasUg6Oi1wN1gIq+t2+8e+38du2yj6e6s299sB+N1wNlvO6pqtJLgX71auwq8ZuFZqs1DRnXUUUEl1zllYOOe+2+8H93iG..qYMqAW5RWRnJMUqVMJt3hGvJcD.XqacqXO6YO.nm2u86+9uGyXFy...YlYlXsqcsPgBEPmNcn6t6F+s+1eCO+y+7C347Tm5TXaaaaBau7kub74e9mKL4mV5RWJlzjlDd0W8UGvyCQhEe8wWbKKeEngFaDMzXCn9FZ.c0UWlcrUWcUHgYDOjaK+7hDQD0C2c2cDf+9iye4k8kPlZHbBHSDMfJp3RFRimUXHQjITMNsBCslHTggCSmOGczQLyYNSL24N29MYgCERjHAJTn.KdwKFokVZ8axBGt4qu9hErfEfvBKrqppuzau8FyadyC23Mdi8axBuZ4latgDRHAr3EuXjYlYhXiMVlrPxrLVkg1HSFhIpnE4ngnw1FJue3sdq2pvO2YmcJz1r6c6H0XBvLXvfv96c0EJQhDrhUrhgbbt5UuZgjEBzSK5t2qcsMzPCBI+7.G3.lbrlaMz829a+s868Uuq39SdxShjRJI7lu4ahSe5SCWc0U7we7GiO8S+T7oe5mhkrjkX1yQRIkjPxBMZQKZQlrs4VeDuR6XG6P3mm0rlkPxB6cr16mOMttBOPN3AOnIa+69c+NS5TB..OwS7Dl77MQi0HWtbD3TlBRNwjvRuoEiksjkfTRNYDbPAYxZKpVc5PkCxjqiHhHqOwFSr.vX0ExuyHQzvKlvPhHSnViFgYd93Iu7q8WvK+Z+EwNLFkb4KQ50PKIkHZrIOmjmvWe7AJTnvjVnHQj4X4ue3RW5RMIIRFSDnwDC5jSNg0u90Kb6FaKo8NggImbxXJSYJC4nLnfBpO6q2SlFMZzHTkikTxON6O8zSOQngFZeN1niNZXu81a16qm5odJHSlLgsO0oNEdrG6wPBIj.b2c2wxV1xv+4+7efNc5tpiW.fKdwK1uGuQ8txIO3AOHjHQRe9uO6y9LgwTas0NfwEfoO+HQhDjbxIa1X8p4emHRr3jiNgPCITjdpogadYKGKZAK.IDe7vOe8cP6FGDQDY8YRdzSmoQQngBGYGogHZXFSXHQTenT03upLL6ScFj8oNiXGFiNt55HoDQiSLs3hCQGUThcXPzXdCkNzsGd3Atwa7FE1d26d2PkJUBsvyq+5udLu4MOgp+de6aePmNc36+9uW3XtZZGo.8Tk4WoqrB3LVY7M2bylDyCkyI.vJW4Jwd26dwBW3Bgs1ZqI2VWc0E1912NV8pWMRIkTP6s290b7NPppppFzwza50qePWGC68yON4jS8a052eO+PzXcRjHAt6l6HxHhDy4FlMlWFycPaO+DQDY8ItXikcjFhHKxa9FuLdy23ks3wyd0BQTenRoJ3HqrkwrFtaIoDMdhNc5PwkTBprpygN6rywkUDs0LIRj.GczQD3TlBhIpnYq4ktFYYqggFcK2xsfu669N..b7iebryctSn5xSRpLxHC3niNhzSOcr+8uejat4hu4a9FzVasIb727MeyCyw+OxXBABIjPDptw5t75Yp4F6.kXsa3FtAricrCzYmchCbfCfCdvChcricfyblebhUkc1Yim5odJ7Vu0acMEuCDEJTfFarQ..jXhIhMrgMLnGyfsF7z6VFdWc0E5ryNgKt3ReFWSM0zfdeQSbTac0gRKqTzbKs.0pUK1gCYkPhDIvA6sG96u+HtXhseq7ahlHQud8njRKEUdtJQmc1IzNHcF.hlHSpTovEWbASMnfQDQDNjIU1fePDIBBve+FRimILjHpOFOVggVWXKIkrNoUqVr28uOzxEtfXGJzUICFLfKdwKhBKpHb9ZqEYN24B6ja2fefDYNCwht4lu4aFOxi7HvfACPmNc34e9mW31xHiL..PlYlI1+92OLXv.9C+g+fvsGYjQhnGEViXBKrvD94KdwKh8u+8i4Lm4XxXN7gOLzpUaeN1KbgKfrxJKgsm0rlEVxRVBVxRVBdkW4UvO7C+.VvBVfP6D8JWO.GtEarwhibjiHDalaMSTiFMniN5..8bQWFrDF16me..9lu4avO8m9SMYekTRIn1Zq8ZIzowILXv.x5jm.kWQEhcnPVgLXv.59RWBkVVYn15pCKXdYxjFRSnoUmVr+Cb.zTup1ehrloWudzd6siyjyYQM0ddjwrmCWGsoID3uESD0GpTM9al49G2vyH1gvnG1UhHqT4UP9nkKbA3nCNfjRLQL4IOYH2VVgZimnSmNbgVu.x5jmDczQGH27xGIkPBhcXQiSMTq3d+82ejRJoHzFRO0oNE..bwEWPRIkD.5IggFSTXuqHuq11Q5P0sdq2J9C+g+fP0S+TO0SgcsqcIjHM0pU2uUpmFMZvMcS2jP0+8e+u+WbG2wcHb6W20ccH7vCGm9zmF..942PallNTszktT7du26A.fJqrRroMsIbu268Jb65zoCKaYKC6bm6D..qZUqBaYKaY.OmKYIKAN3fC3RW5R..XCaXCHyLyDd5om.nmKbyy9rO6HwCGZLnhKsDTdEU.ajICwDcLXpSMX3f8NXwUcLQWKzqWOZq81PVm7jn0VaE4jWdXlW98RHZhn7Kn.zTyMC6s2djTBI.e71G1sPHqZp0nFM0TS3jYmMZokVPdEjOheZSWrCKhtlw0vPhn9Pud8PsZMhcXLjDQ3ggHBOrAefS.vVRJYsx35gUZolFBv+.XxBGGRlLYXxdMYjZxyD..m+70HxQDMtlggdE2eq25s1m8cC2vM.Yx5oEBMyYNSyt92MZkvvnhJJrxUtRgs+ge3GPpolJd9m+4wK9huHl0rlE18t2sYOVe7wGL8o+iWjhe4u7WhO3C9.Tc0UixJqL7rO6yZRRPm8rm8H2CD.rhUrBr3EuXgsWyZVChIlXvy8bOG9M+leChM1XERVH.v5W+5GzyoO93CV25Vmv14me9HkTRAO0S8T3Ue0WEYjQF3+8+9eCuOPnwrJszRAPOetfXhNZ3nCNxjERiZjJUJljGSBojTx..n15XkMSSrctK+cwRO0zPfSIPlrPxpmbaki.7O.jVpoAfg952MQiVVy5dXrl08vV73YEFRDYVJUoDxkaqXGFjYwVRJY8wfAC3hc2M..lrWdIxQCcsxCO7...ce4pDhnqFWMSfla4VtE769c+NS1mw1QJPOI09FuwaDe4W9kB6Kf.B.ybly7ZHRGZ9S+o+DxM2bQAET...xKu7Pd4kmvsGWbwg1ZqMTSM8Mg6+6+8+FYlYln0VaEszRK3dtm6wr2GyblyD+xe4ubj4APu7+8+8+gkrjkHD+ETPA8oBIkHQB96+8+tII6bf7rO6yhie7iKTonkWd43ke4WV31m5TmJr2d6QgEV3vziBZrpttb600+Q3pkknAhwIYxk3moglfyXKMexSleWLh5Mu7pmNcgwqWAQi0bwKNz9cSVggDQlkJki+ZKoVMXKIkrxwpGX7OoR4GAkFNLzm.MgGd3H1Xi0j806DFBzSaIs2VwJVwn5q6DTPAgibjifexO4m.GczQg8KQhDL24NWbfCb.yVEj..IlXhX+6e+3Nti6.1YWeWePmzjlDdzG8QwN24Ngqt55H1iAiBN3fQ1YmMV+5WOlzjlTet8TRIE7EewWfG9gs7Y7pWd4E1291GV6ZWaedLjbxIiCe3Ci.BHfq4XmFGger.RDwOSCYsQpD967D0a7uInIZXEFRDYVJUoRrCggjewi9a..va8WecQNRF4wVRJQDQTu5HoCwiK2byc.u8G4QdD7HOxiLnmmrxJKyt+UtxUJrNB1ed629swa+1uc+d6t4laXqacqPqVsHmbxAs2d6HwDSTHAYCzigoMsogj9DPlA..f.PRDEDU+6+8+hN5nCTd4kiZqsVXqs1B+7yODd3ga1DIpSmtALdyHiL52GSFqzu9ib4xwK8RuDdoW5kv4O+4Qd4kGbvAGvTm5TQfAFnYOl28ceW7tu661umS6s2d7u9W+K7O+m+Sje94iFZnAjPBIHjTxu669tALlnIFjHQBLXvPO+tI+fwDQDQDQTeLTm7qLggDQlkFMZfd85G2LiIarwlD6PXTiMWdcVRiVshbjPhAUp6IY91XCeKbhHqcS7aQ21XiMHgDR3p5Xc0UWwLlwLvLlwLFlipqdADP.CqU+mToRQbwEGhKt3F1Nmz3GRkHA5AFzDzSDQDQDQVq15+88GRie7Ql.HhDEJUN9pJCsV3niNB4xkit6tazPiMJ1gCMJqvhJB..d4omhbjPDQhLli.hrtc4IK.SXHQDM5gulKQDMwFSXHQT+Z7VaI0ZgToRQXJT..fe3nGAUWS0CZqDiFeyfACnyt5DmH6ShBJrP..DaLwNHGEQDMwlgKmwPttlRj0IILggDQDQDQzvJ1OyHh5WpFGUgga5e0+qCPSDEaLwfKbgKf5anAb3ibDwNbnQQRkJEImTRXxd4kXGJDQj3h4HfHqZLggDQDQDQz.q01ZC..d3t6Vz3YBCIh5WpTqFFLXXbwL22QGcPrCgQUxjJCy95uATZYkhxqnBzQmcB850K1gEMBxd6sG95iOH5HiBt4lahc3LpiURDQzUxXJB3qJPj0IlvPhHhHhHZf8f+7eM..93srQKZ7LggDQ8K850C0Zz.6jKWrCExLjJUJhH7HPDgGgXGJDcU4Tm9zHn.CDdx0iQhnqFFSR.mHADYci4KjHhHhHhFVvDFRDMfToT03hDFpQiF..Xqs1JxQBQjkp9FpGEURwHvoLEL83lFbwEWD6PhHZbDVggDYciUXHQDQDQDM7hILjHZ.oTkJ3JF6eQ7uy64A.fkWd0DQhOc5zA.fpqoFTy4OOTDpBDWLw.6s2dQNxHhFefUXHQVyjd4+1WOSXHQDQDQDYVANk.FRimILjHZ.oToJwNDHhlfRWuV2MMXv.JsrRQkmqRDUjQhnhHRXiM7ioPD0+XNBHx5FqvPhHhHhHZf8me8+3PZ77JwQDMfzpUKzoSOjISpXGJDQiwYvfge7h1Iw3+quU9iwKvmwJLr2zpUKxMu7PokUFhKlXQngDBjJku9CQj4zyq2HgUXHQVkXBCIhnQeFfAy9c7HhHZhAlvPhnAkRUJgSN5nXGFCnI4g6hcHPz3N50qGp0nFpUqAZTqFpTqFp0nFZT2y9Te4sUqQCzqSGzY7+zqG5zoqm8c4eVmNcPeupXvqUJUpDmH6ShhJoXD+zlF72e+G1N2C2zqWOxM2bE11Ku7ZLc7RzDFLGADYU6ZMggW5RWBm6bmC1XiMvWe8EN6ryVzwoVsZTXgEJrsu95K71aus362lZpITWc0IrcjQFIryN6r7.eTVgEVHTqVM..bxImfBEJD4HhHRLHQhDNAMnQDUVYkniN5...xjICwFarhbDQj0MlvPhnAkJkpFymvv28+6ME6PfnwLLXv.TpTItzktD59RWBW5x+WO+b28rsRkPiFMC622WYk9bs9kJ6ryNQVm7jHkwvUPTmc1IhO93E19we7GGuwa7FCKm61aucgu7D.P.AD.q3RhtLiu5xX2WcfHZjzUaBCO1wNF9k+xeINwINgvw9hu3Khm9oeZK53qt5pM488eoW5kv5W+5s36+Mu4Mim7IeRgsyO+7QzQGsEe7i1VwJVAJt3hA.v0e8WON3AOnHGQDQiG0RKsft6ta.zyqeOkoLEQNhHi5t6tQKszhv1d6s2CqSjkFarQnRUOK2Q1ZqsvWe80ja+wdrGCewW7E..XRSZRlDKDQW6xI27A.vzhKFKZ7LggDQCJkp35XHQi0nSmNz0E6Bc1YWnyt5Dc1YWnqt5Dc0UW3RJUZwW7L4xkC41ZKrUtbXmb4Ptb4vVa64msUts87+sUNjISFjISZO+eoxfTiaKU1kuMYPpToVbqATmNc3i+rOc.GiyN6LhLhHPHScpPpDqyjj8pu5qhW9keYgsqu95gO93iHFQDM1gwWmahbKIsjRJAW5RWB..1au8HhHhPjiHhF63pIggkUVYHiLxP3uqHhHZzwu3W7KvG8QeD..bzQGwEu3EE4HhL5S9jOA268duBauu8sOLm4Lmgsy+xW9xwwN1w..PLwDCxKu7F1N2DQCtM7GeM..7waYiVz3YBCIhFTpToFFLXXB8EjinwpToVEZqs1Pas09kSLXmnyt5RX1Y1ejKWNbvAGfiN3.b3x+WO+riB+rb4xEs+t1bqegFMoIMIDcjQgoDP.Bw2vY6Nc3lLYxPxImrv1b1xRDMb4Nuy6Dm3Dm...Se5SGm4LmQjiHhF63pIggu1q8Zljrvq+5udjXhIhDRHAK9bXmc1Yx66ekUJAQDMglAv16.MrRgBEBuupqt5pHGMDQLggDQCJCFL.0pUOlds0n7JNG..BMjfE4HgnqNFLX.W7hWDs1Vans1ZCs1Vqns1ZCcO.y.dmbzQ3hKt.mc1Y3hKt.Wb1E3hyNCGczQHSlrQwnenybILze+7CQEYTv6IOYQHht54ryNirxJKwNLHxJzkSR.mPSDYU5pIggm8rmU3m8zSOw92+9Gxs56oLkov22mHhHZXxe5O8mD6PfHpWXBCIhrHJUoZLcBC+cO0yA.Ku7pIRrcoKcIzTyMilaoYzZqshVaqMnUq19LNoRkB2b0U3t6d.Wc8xIEzEmgyN47X9jBNPLlvPoRkhoFbvHxHhDtMBLaBqs1ZQas0F.5oc9EZnght6tabhSbBjUVYAu81ajVZogvBKr9Tsk5zoCEUTQBaGP.A.2byMnToR7Ue0WgRJoDr7kubDarwhBKrPgw4omdJz1Pqqt5Pqs1J.5opOCKrvfd85QN4jCNzgNDzoSGhM1XQxImLbyM2DNGUUUUnqt5BM2bylDSEUTQnkVZAN4jSH3f66DjnpppBYmc1nvBKDQEUTHszRqeq7ghKtXgemyKu7Bd6s2Pud8XG6XG3rm8rH0TSEYjQFBiu0VaE6d26F0Vasn81aGSdxSFJTn.yadyC1XC+HkznOi4HXhb5B685ZVXgElHFIDM1yPIgg4meOqcKM0TSB6Kf.BP38uCN3fgs1ZKJszREt8fBJH3ryNit5pK7Ue0WgJpnBrpUsJDXfAZx371augWd4UetOau81wwN1wvoN0oP3gGNRO8zge94mE8XyfACnvBKDG8nGEs0VaHkTRAIlXhvAGb.kTRIBqC089ybbkN24NGxN6rQQEUDhN5nQ5omN71ausn6+AiFMZvINwIvgO7ggGd3AhIlXPxImLr0Va6SLXrsCZ7yAckL9uM..d3gGBOG0PCMHrNVY7XMXv.xKu7vANvAfLYxPJojBl9zmtIel3byMW7ce22AYxjgHiLRjYlY1uIE1fAC3PG5PnfBJ.MzPCvAGb.94meHiLx.96u+WaOIQDA.fRKsTnVsZSVW10qWuve6a7u6qolZDFiCN3.BIjP..PVYkENzgND7vCOvZVyZL4bWe80i8su8gZqsVzQGc.2c2cDRHgf4N24BWbwESFqZ0pM6qw2TSMgCe3CiBJn.DZnghoO8oOfqqrszRK369tuS39zau8FgGd3HiLxnOe+71aucb9yedgsiLxHA.PN4jCN1wNFznQCRKszP7wGeed8yqjd85QIkTBxImbPwEWLBJnfvzl1zPzQGMjKWdeFe2c2MprxJE1NzPCE1au83BW3BXaaaanlZpAKe4KGxjIyjXD.nxJqDSdxSF1XiM8oc3qQiFr28tWTd4kiFZnAXu81iIO4IiYO6Y2mWiufBJ.FLXvjJ6WkJUB+auw2+r5pqFc1Ym..Bu1s4zYmchbyMWb1ydVzQGcfXiMVL8oO89sC+b9yedzd6sCfe72ozpUKNyYNCN7gOLjISlv6eck+9BQSjjdZybHMdd0cHhrHpTpBfcF.htpXvfAzQmczSBBatYzTyMa10rAas0V3g6tCOb2C3tGtCOb2c3pKtNjm46iKHAH5nhBQDV3vAGbXD6t4oe5mFabiaD..wGe73i9nOBye9yGUWc0lLtXhIF7ke4WZxWxw3WBwnMsoMgPBIDb629si5qud.zS6SMnfBxjw83O9ii23MdC..rgMrA7Nuy6.fd9BhG8nGEKcoKEG9vG1j6ee80W7ge3Gh4N24B.fG5gdH7se621mGOFWKIl6bmK1yd1iv9qrxJw8du2KNvANPeNlYNyYhO8S+TDXfA1mykwGG+te2uC2+8e+3lu4aV3Kv8HOxifLxHCnQiF7vO7CiO3C9.gEq9dyGe7A+w+3eD2+8e+841HZj0D+JLbyadyhcHPzXVCkDF162m1nyd1yJr+ctychPBIDSF2W+0eMLXv.tm64dvEtvE..Dtvo8dbuzK8RX8qe8lbtegW3Evy+7OuIsTcoRkh+7e9OOnw54O+4wsbK2RephwvCObr28tWL24NWTSM0..fm3Idh9TYFkUVY3du26sOeVC.fzRKM7oe5mdMkLr5pqNL+4O+9rFTkZpohO5i9HSlPSqYMqA6ae6C.8bwpKqrxL4XLNwoL5AdfG.+i+w+..8TwIFerEZnghicrigkrjkfie7iax4XYKaY3y9rOCUWc03ltoaxjI6EPO+a0G9geHhO93MY+ae6aG+hewu.UUUU84wnLYxvJVwJv6+9uOaOdDcMZoKco84uKUpTove6ut0sN7O+m+S7DOwSfst0sB.fzSOcrqcsKb228ciu7K+R.zSqY2XBCqqt5vC7.O.1wN1gY6bMxkKGO5i9n3UdkWQ36RWc0Uaxq2rsssMzPCMfG7Aev9r7W7y+4+b7W9K+ESlz7pToBO3C9fXKaYKBSZidye+8Gu5q9p3tu66VXeae6a2jsqrxJwC7.O.18t2sIGqqt5J9vO7CwRW5RM6ygm7jmDqcsq0jpj2H+7yO71u8aiUrhUzmiY1yd1lrcd4kGd3G9gQWc0E.548AM9bduY74Y+82eSRl3K8RuDdy27MMYx2zayblyDacqaEScpSE..IjPB846OVVYkI7uCu3K9h3oe5mF+pe0uBewW7E.nmueswIKhQ5zoC+k+xeAO6y9rlcMHd4Ke43se62tOu21S9jOI9e+u+G.548n9pu5qvhVzhvoN0oLYbAETP3i9nOBokVZl8wEQi283O5uXHMdlvPhHKhRUpE6PfnwMLXv.Zs0VQ8M1fPBBuxuTgToRgmSZRvKu7Bd4omvc2cGN4nShTDO5yYmbFwOsoOpdeVWc0gq+5u99T0d.8L61SM0Twt10tPRIkjYO9RKsT7POzCY1ujhkniN5.YjQF3zm9z841pu95wxW9xQ0UWM7vCOFRm2csqcga61tMgYk4UJqrxBolZpX6ae6HwDSzrioyN6zjK.Yus5UuZ7QezGIrsCN3.rwFaDt+ZngFv5V25fDIRvZW6ZGRwNQWKFKUggkWd4PoRkBaGSLwXxs2VasgZqsVgsUnPQetHT89BoarpgpnhJDdMGiUIMPOudRu+60HhHBHUpTjat4hicrigKcoKgzRKMLiYLCyNqy6MiUSc1YmMps1ZQRIkDRIkTL6Lst+lc9WYEXoPgBgwTQEUfCdvCh5qudnVsZ3qu9h3iOdLyYNzloqDcktZZIoCEm7jmDaXCavrc.hAx8ce2mvjUp2zqWO90+5esPUyXNUWc0HkTRQXB8zakTRI3FuwaT3B8ZNey27M31u8a2rSLM.fidzihTRIE70e8W2mDnYIZngFvMbC2PeR7G.vwN1wvccW2ENzgNzP97NX5niNvMbC2fIczAi1111FV0pVEN1wNlY+bL4kWd3Nti6.Ymc1vd6sG..e+2+83Vu0aU3ymKQhD3omdhVZoEXvfAnSmN7Ye1mgye9yiCdvCNnU9CQzvu67NuSrssss9r+ye9yi4Lm4XxqCIUpT3t6tKL4NTqVMd8W+0gDIRvq9pupYO+u0a8VXG6XGl81d629swTlxTv+e169Ntl576O.9mD1xT1xdHJS2B3dgHs05np05dTq1ZsZqi5pVW8WUqsV0ps0UUq0w21p1gaTwAHCWHHfHKYir2jvH42ejxCDHfDD3x3790Ke8hSxMImDgat264447rt0sN1sMkoLEoxG0TSMnfBJv1mbJojBl8rmMTPAEvzl1zj4y6a8VuUsFrE.R1G23G+3wO9i+HVzhVjT22u7K+BVzhVTc9cQolZpXBSXBXoKcoXO6YOxba.jLvXV+5Wei96LWxRVB1+92uT2lN5nCJpnhX6K892+9vc2cGIlXhMY62rrxJCibjird+tk+4e9Gb6aeab0qdU3latIysIiLx.CcnCsVEuFPRW5YricrHwDSrYcvLSHsUzNbJKPHjlCkWd4xbja0ZgKt3DbwkZOxgIjVJBDH.uH9W.+CL.7W+6+fqciqiPBMTjRpohxJqLnrxJCSLwDzydzC3wHGIlzDmHF0HFI5oK8.lZhocnJVHWI8zSGYlYlXJSYJ3O+y+D+we7GXhSbhr6O6ryFqbkqrNe7e629srKbuFZnArwFajqV0bpolJBN3fwzm9zwgNzgvN24NkpcgVTQEgidziB.fsu8sCe7wGLiYLCodNN6YOK7wGeXyPgBJn.79u+6yJdW25V2vAO3AwUu5UwRVxRft5pK60d1yd104IHdzidT1EYSEUTA1ZqsPCMz.4me93O9i+fscezG8QH+7yG4kWdH7vCmU7B.fctyc1f+rnwJ2byEOOpnZ1ecHsUz5YFFtoMsI3jSNw9WMuXD6XG6Pp6ulyf3KdwKJ08esqcM..7tu66xtspu+Ju81ao193hKNLtwMNzyd1SrvEtPrrksL3latA8zSObtyct5Luu8suMr0VagSN4Dl0rlEV8pWM7vCOfN5nCl4LmoTEAEPR6Er5ut24N2AW7hWDVZokXFyXF3K9hu.O5QOB.R1uyHFwHfs1ZKlyblCV8pWM1vF1.9fO3Cfqt5JbxImP.ADvq0m6jN1jmBF5iO9.e7wGol8aN3fCraWVEvdaaaarKPq1ZqMr1ZqekW.z6d26JUwB0SO8v27MeCt90uN16d2KrvBKPbwEWc932xV1hTEKzKu7B+4e9m3u9q+ByadyCQGczrVsdMkWd4g2+8eeVwBcvAGvgNzgvUtxUvG8QeDa.IkbxIWq15WCUTQEERN4jwm+4eNN1wNF97O+yk5yD+7yOYNvndckYlYhm8rmgYO6YiidzihksrkIUG33rm8rHojRBd4kW3.G3.XKaYKPGczgc+QDQDR0YFNwINA6BbarwFi3hKNjQFYfLyLS74e9my1t.CLPY18FHDRC2u9q+J7wGejZoNPEUTgs+WYc9WAGbvrhywmOeXkUVA8zSO..bjibDoJV3W8UeExHiLPVYkEhHhHjZVlUeGCzUtxUf0VaM1wN1ANxQNBdm24cj59qdwwRO8zkpXgKe4KGETPAHu7xCgFZnvTSME.R99n5a83KrvBC8oO8gsu4UspUwZiohDIBqZUqhsbV..jTRIgO8S+T12Eoqt5hsu8siqe8qi8su8IUq6bu6cuRsetZZqacqruuTO8zCVZokXxSdxvGe7AqYMqQps86+9uG93iOryCL4jSVpOOFv.F.BKrvPN4jCxM2bk56Td4KeIt28tG.jLvV8wGejpEuZokVx9+9pO6KqKe629sRUrvQNxQhe8W+UboKcIrhUrB1me4kWdXAKXAxb1eBHYv887m+bL+4OebjibDrsssM14JCHoUyd5Se5WY9PHcDPyvPBgzfIPfPnt5chqSCY5KW2p35TfzAiHQhPlYkERKszPpokJxoFW7FUTQEXrQFCCMv.Xf95SsynVIl0rlkTs3uIMoIgoMsowlAc25V2B94meXPCZP05wVRIk.as0VbpScJzu90O1Eppx0EgFhO9i+Xru8sOVr6t6NFxPFBKNzPCE.RZ4N.fUzfJMnAMHoVqh15V2JqPeFZngHv.CjcAx7zSOgGd3AlvDl..jbBpW7hWTls5lRJoDnqt5hie7iiwLlwvt3e27l2TpVziEVXAa8JzAGb.6ae6CG9vGlc+4jSNx8Ljr9TQEUfzyHCjbJofTRMETbwEC80SOzM6rqI60fz1UqoYX3Dm3DwINwIXwd6s2RcQbt8susTauO93C6uMAj9u0UTQEqyVRU885KqQrdgEVHl7jmL18t2MV5RWpT221291w5V25jYwVDIRDN4IOIhIlXv+9u+qLWe1.p6YfUgEVHF9vGNd9yeN61zRKsfPgBYslpvCOb3omdhae6aid26dKWueID.4qfgCe3CG..pqdUCPKs0Va1sCfZ0ABJojRPO5QOvu8a+Fb1YmYudxZ10Uost0sx9YEUTQbyadS12oOpQMJLtwMN3hKtHytBPJojhTEabXCaX3BW3BrKF53G+3gZpoF9we7Gk4q8F23FYEazDSLAADP.ri+bLiYLXDiXD3ce22E.RtX7W6ZWCd5om046k5xIO4Ik5Bqqt5piMtwMxhCMzPQu5Uuj6m2WkZdLT.PpYSyfFzfvEu3EYGeV26d2wTm5TY2e3gGNdq25s.fjBAVIUUUU1E6WWc0EadyaFIkTRrALwKe4KaxeuPHcj3pqtB.vVlF.jz1eq99eqoRJoDnfBJfcricfEsnEAMzPC1883G+X1RsfwFaLVyZVCa+j1au8vSO8jsuzniNZTPAEHytlfFZnABJnfXGiy7m+7w.Fv.XCloTRIEjUVYA8zSuZ0JjszRKYulN6ryXe6aeRcbfEUTQR88MUp6cu6vGe7Qp8Mamc1gEtvEB.ICFz8t28x1m5pW8pkZs865W+5riYZTiZTXJSYJnO8oOr1F5G+werLmI1U9Y5fG7fwQO5Qq0ZMXMaMy8t28lsTX..3qu9J0xawV1xVXcSiN0oNgErfEH02e8nG8HLrgMLVKQs5WKD0UW858+6qtzRKMo9d0QLhQfqbkqvNW023MdCXu81iO3C9..HYMr8m9oepVGyakV25VG9pu5qXwN6ry3se62lEW44hSHs2b4qdc..7FiwiFz1SyvPBgzfIPFqcUDRGIkWQ4HojSB2Kf.v496+B27V9fveVDHmbyE73wC5qu9vEmcFd5gGXBu83v.byMXqM1PEKrUjZN5I4wiG9hu3Kj51t90utLer74yGW4JWAt5pqM50UxZ1xNG7fGrTmLorZAY0mp2FclwLlgTild.IqqOUu0mcjibj57453G+3XricrRMSAp9Lw.PxZB468duGN0oNEasB5rm8rr+0TTrPABEfXeQbv264GN++723128NH5XhFEWbw.PxE3kPZsYLiYLR0Bip9ZSSwEWLdvCdfTaekqoWxZ6G1vFlb+2RgEVXnG8nG3.G3.3pW8pXMqYMrh6KVrXr10tVoVuYdzidD9hu3KXEZwSO8Dm5TmBm6bmCSYJSg0FSCHf.vF1vFpyW25ZFXc26dWoJV3INwIPd4kGxO+7g2d6MK2JnfBj5BHRHxil6VRppppJ71augKt3B60p9HVrXb26dWV7a8VuEqXgUxRKsTphXUcAGbvRU78O8S+T1EjtRKe4KuNe8q9wDLqYMqZc7mSbhSTpK3a8cLA0kN24NK0fc.Pxrfr5j2ikogplccgANvAJU7TlxTj53yp9Z2E.jpckV8iu4Eu3EvYmcFey27M392+9PAET.m7jmjcrMSe5Suo7sAgPZfV9xWNVwJVgTEKD.37m+7HgDR.IjPBHnfBRp8SFbvAWqYYWMWeBqza+1ucsFPTiYLiQp3J2eVMOmnku7kiYNyYh+2+6+gjSNYLgILAoNmHYUrP.fEu3EWq8MO+4Oe1fV.P5yEs5emhWd4UsFfUFZngRsNxGYjQhzSOcY9Zqmd5gqd0qVqhE1PL0oNU1m4IjPBvCOppnC4kWd056SpqOykWO3AOPpkCjUtxUVqY5+bm6bkpq8TeyJ7Zdt3d5omR886MWe+Egv09ki8a3WN1u0f2dZFFRHjFLABnBFR53o7JJGolZZHwjRDojZpRcgbTSM0PWL1XzEi6BLxHCgxJU+qSTDtk5pqdsVWw.jLxB0TSMYidyXiMVY93G1vFVi5DrpNKrvhZcaFXfAr1GVcslCIKkUVYR01C+9u+6w2+8ee89XRLwDk4s2ktzE1ntu5r0Vawzl1zXsmEQhDg+2+6+wlQllat4XLiYL3C+vOrNW6GaHxKu7PxolBRIkTPl0XQtulnBFRpTkEIngbg7at0oN0ILlwLF7W+0eA.IyfvxKubnnhJB+82+Z0djBMzPYiZ8XhIFo1uS0a8nMT1XiM3V25VrBM5omdBGczQL6YOa.Honk6ZW6BaaaaC.RtfUU1p48zSOwku7kYWn8INwIhUrhUvZ8wG6XGCadyaFFZng050stlAVaZSapV4G.fxJqL7vCOv1291YsqpJKdHgHuZtKX3a+1usL+895R0mUZ.UMqZpo5Z8Dtlsx3p2B2pjs1ZKTSM0p05or.ABjZ8EcG6XG0451UkpqiIn9XlYlUqAMkAFXfTwxywxHOrqFcWfN0Io67McoKcQp3ZVjgp+6IqZUqB93iOrY7bjQFIV8pWM.jTn3gNzghIO4Ii4Lm47JWGXIjNZDilm84VSKXAKndu+6e+6iae6aiPBIDDWbwgHiLRoFbTuJ004kUcUt+Lmc1YLwINQb9yed.HoKnbxSdRbxSdR..XkUVgwLlwfEu3EWqAJR0IquWPAET.t5pqrm6JOlv7yOeo1Occ8cJ071CKrvj42cM8oO8ZseS4U5omNtxUtBdvCd.hN5nQzQGMhM1Xa1V9hd5SepTwx5y.EUTQzm9zGboKcI..Y1wM.jbLCUePy.H43R0VasYs56lqu+hPZqglggDBoAqzRKsY6DxeccGeuGtiu2iqSCR6DkWd4HwjRD94u+3u96+F94+8PBIlHJu7xglZpIbzAGfWi1SL9w91v090eXtYlQEKrMf5aFq2LMnA...H.jDQAQ0T4ZhA.XszkZxVas80NGjUwtp9EKWdJ7QZokFJszRkqW+5ZDmZs0VWmu1+5u9qX+6e+vd6suV2WhIlHN7gOL5W+5GV6ZWqbkKUJ6bxA9bmaiPBMzWYwBA.zVKpfgjVmpdK5qfBJf0Rqpd6Hc.CX..PxEttxau5ytPd73gwO9wK2u1KZQKpV6ialyblRMCiqbDqmat4JU636i9nOpVE.XIKYIraSf.A329MYOhTqqYfUMGI9iYLiAe5m9o3RW5RHmbxAqXEqfMJ7q9ZhCgHOZtKXn79890rklVWG2QM6F.UpgdAWUUUUq0skbxIK2Wv155XBpOupiiAP9NVF44+6p4rsrluNxSdLxQNR3me9gINwIVq0iZABDfqcsqgEtvEBWbwEZFmPH+mVxAnEOd7j5XXptTRIELvANP3pqthUspUgSbhS.e80WjQFY.M0TyF7.7Td1eFOd7vYNyYvt28tq0fW.PxLU9.G3.nW8pWXKaYK04qYc88BU+bQSM0TgHQhp0f5nt9tiZ9bVWCFjW2ykc8qe8vRKsDyYNyA+vO7C3xW9xHpnhBhDIB8rm87054ttzX9Lntd+qlZpIy0g3F64hSHsmQCmSBgzfIVrXHrzRgp03jpZM3G1+AA.vPG7.eEaIgT2ROiLPrwEGRJoDQ4U6htnolZByMyLXg4lCczV1GjJo0u5aDmlU0JTUMGg5UptNAklRxyENyDSLApppprYyvTm5Twrl0rp2GScMSdpu2aJpnhXwKdwXwKdwH93iG25V2B2912FW7hWTpK131291gWd4kTq2EMD514NCuFsmHffBDo0.VmfBHv.fd5qOzSWcgd5pGzsycllgRcXU4hXXqiStericrPQEUjMSz81auwfG7fYEFTc0UGqcsqEiabiC.RZKouy67NRUvv90u9AyLyL490VVi3Zd73A2c2cDWbwAfpFw50b8YogLiFqdq7q5pqYf0Dm3Dwt10tXiL7BKrPrm8rGrm8rGviGO3hKtf27MeSrjkrDoZCWDh7n4tfgx626WyKtcJojhL2t5pPcVYkUREGQDQH0ZgJfj0SubxImZ8XqbMFtx8+LiYLCLsoMs5Meatl4b00+eHqA4T1YmcyRNzPz291WbtycNTbwEC+7yOb26dWb0qdUb+6ee16gm+7mikrjkf+7O+SNKOIjNhTWc0kYwc.jbrGO5QOB.RFHAyadyCuwa7FvAGb.1Ymc3y+7O+U10UZnp99yTVYkwxV1xvxV1xPrwFKt0stEtyctCt3EuHa.iHVrXrwMtQ3kWdIyiMK8zSuV6WGP5yE0HiLB74yGVas0fOe9r16YMGTJUplmiacUXvWmyk8m9oeBe8W+0r390u9gErfEfd1ydB6s2djRJo.mbxoF8yecolE+MyLyTp1OZkp9mAuNEFs05DjfPdcMkIMgW8FUMzUWgPHxEgBD1prfgDRiUIkTBhK9WfXiKNTXgExtcM0TSXgYlCyM2LpHgsSHTnPbu6cuZsl2DbvAyZGo.09DSZMo5qGDJnfBvd6sGAGbv.PxLiUVsUzRJoD15+m7dwACO7vYiRSMzPCLnAMHLm4LGLm4LGTQEUfMu4MK0BQ+cu6ck6BFBHY1RLrgLT7rHiDg7zPq2SVqDABPRIkDq.F73wCZokVrBHpmt5BszVKvmG0HMZuqxeMo0Q4BkL5lG9vGNal74s2di0st0wlMeCdvCFiZTiBJqrxnzRKE25V2BUTQE3l27lrmiFS6HsxWaYo5iX8ryNaHPf.jPBIH2O+0UANpuKJ0st0sv29seK9ke4Wj5wKVrXDRHgfPBID78e+2iyblyTq0DMBogn4tfgxKczQGnmd5wtvuW5RWRpuirRUeVGWc0rEjdfCb.L9wOdolwCU1pfqIkTRIzst0MDd3gC.IGuPS8wDzXT80pqzSOcVqZtRQEUTM64PMUXgEB+7yOVb+6e+wnG8nwnG8nwV1xVvSdxSfmd5Ia+V95qus34HgzdWicMtK93imUrP.f0t10Vq8ylWd48ZkaxRngFJaPfns1ZC2c2cXiM1f4O+4ixKubrt0sNryctS116qu9JyBFdqacKLjgLDotsxKub3u+9yhq7bQ6Tm5Dr1ZqQLwDC.jzt6kkZttX2TT3tZ9+Om6bmi8yVZokvWe8UpYmcDQDQi94t9Ty2K93iO0ZvvTRIkHUmyvYmctA+7SHcT7tSV9NWK5JoPHD4h.gz5XHosOQhDgjRNYbGeuK9mKdADRnghBKrPnjRJgtZqsvSOFMdKudC3hyNSEKrclu7K+R15UCfj0AvMrgMH013kWd0RmVMX0blAM1wNV1O+O+y+vJdXkxJqrfKt3BzWe8g95qON3AOnb85cyadS3kWdAu7xKL5QOZoJptBJnPslQi00ryrgfGOdvA6sGdLhQB0qi0WCiLzP7FiwK3Z+6O5ps1hN+eiT17xKODabwg6+vGfq380v4N+4wMukO3ogGFxHyLPEhZdVWMHbsVWyvP.oK3WPAEDt5UuJaeNiXDi.cpSch0VRe5SeJtzktDacSA.M5BmUWEzq5iXcczQGnpppVqh7sksrEbgKbg58eKaYKSlO+02nUWO8zCaaaaCokVZ3wO9wXO6YOXBSXBRs94HTnPL8oOcZMigznzZqfg..SdxSl8yO5QOBG+3GWp62e+8GW3BWPlOVmbxIL7gObV7UtxUvrl0rvcu6cQPAED9rO6yv27MeSc9ZW8iI3bm6b0ZseJiLx.N5niriI3XG6Xxw6rFmpebAkVZor0nK.IGOdS0r.RdnfBJfILgIvN9lSbhSH082yd1Szqd0KV7qyw1PHsK0DrK2Zttq1PUyAYP25V2jJVnPgR04FZpb4KeY19L7xKujZ8pUQEUDyXFyPpsut1uwO9i+HdwKdgT21t28tkp0G+Fuwav9427MeS1O6qu9Vqu+H7vCWp8kOvANvljthSMOmyp+4tkVZYsZky002qIKwFarrAtxqhqt5pTC9ssu8sK0wMC.70e8WKUQhq9mYDBowglggDBQtHPPqyBF9FdMZtNEHsATbIEinhNZDabwIUQiLz.CfMVaMLyLyfhJPe0X6Y23F2.t6t6XhSbhPAET.+y+7OHnfBhc+d4kWvM2biCyPoYhIlHU7Dm3DQ+6e+Qe5Sevt10tvZW6Zwu8a+FdwKdAJqrxPe5Sev.Fv.v3G+3QzQGMtvEt.RM0TA.ft5pKVzhVjb85O5QW09VKojRva9luI9pu5qP26d2Q7wGOV25VmTa+PG5PajuSqhd5oGFimdhfdvCpUaPTas0FZqkVPaszB1XkjV+VEUTAxI2bPVYkMxJ6rQVYmEJpnhP5YjAROiLvSCKLnnBJ.8zSOXngFBiLzPnam0sVqYaj1dZsMCCAjTvukrjk.whEiJpnBroMsI18MhQLB..3gGdfae6aCwhEK0.Vn6cu60ZFF0PcqacKo96U.IWL9pOyXpbDq6niNJ01os1ZKyYhT94mOJqrx.fjVCl7vO+7iM.CL2byQu5UuPu5UuvRW5RQd4kGlwLlAt3EuH.jrukG9vG1jr+CRGKsFKX3ZVyZvQNxQXsFz4O+4iqd0qB2c2cDQDQfSdxSx96JYYiabivWe8k83O4IOIN4IOI690UWcgPgBkYQ12vF1.N0oNERJojfPgBQO5QOvfFzfv3F23PjQFItvEt.d4+05uMv.CvBVvBZJeqKSt4la3.G3.r3YO6YiKcoKgN24Ni6bm6fG9vG1rmC0jZpoFFxPFBqnBqe8qGpppprAL1u+6+tTy7aZeSDRSiZddM8u+8G8su8EiYLiAqZUqpA8bTyig469tuC1YmcvRKsDgFZn3a+1usVqgcx6Z9tr3omdhUu5UC.ICTwwN1whMu4Mit10thXiMV18Uo5Z+FokVZX.CX.XZSaZvBKr.28t2UpYumt5pK9jO4SXwacqaE+4e9mrymaRSZRX5Se5nO8oOHxHiDm4LmgU.MEUTQ7y+7O2nd+Uy+uYkqbk3Lm4LvLyLC+9u+6vQGcDwGe7.Px.e4vG9v3Mey2Domd53hW7hX6ae6R83q4m4U+4uzRKEVas0nW8pWXFyXFX1yd10YdoiN5fu669NL24NW..DRHg.2byMLoIMInmd5Ae7wG1wSBH4XsqYwaIDh7itpnDBQtTQEUfxqnBnXMVz44ZyeNzAEPpaYmSNHxmGIRHwDYWTIUUUUXiUVCqs1ZnoFZvwYHok.Od7vvG9vgO93SslId.RV6f18t2MGjY0sgNzgBETPATw+slZVbwEiae6aCE9u8A2oN0Ib7iebLkoLEjd5oCwhEi6cu6g6cu6I0yi5pqNN6YOKzPN+c8t28tisu8si0rl0.f5ukitgMrAXmc1IuuEkIkURYL3ALPDcLQiGEbvrVWi1Zqcs1VETPAnud5C80Se1sITnv+qfgoizSOcjW94iWld53komNBERNgZ80WeXjAFBiMxn5rcNRHxKSLwD3pqtxZMRO9wOF.RZy08su8E.RJXXkEJ7IO4IrGaiscjB.bvCdPLu4MOoZox+3O9iRcQypbDqqkVZggNzgh6bm6..f8rm8fYO6YK0HROnfBBCaXCiMB5CLv.kYq0ptrm8rG7G+we..Ii18p29+zVaswDm3Dk5B7PyfGRiQqwBFZkUVg8rm8fktzkhJpnBHRjHb5SeZb5SeZ113kWdgqbkqHyG+vG9vg2d6MlxTlRsVupLwDSv0t10fWd4kLKXnFZnAN9wONl5TmJxLyLgXwhgu95asZolZpol3bm6bPM0TqI3cb8a5Se5XcqacrYOi.ABjZ1vLtwMNDZngxVqUaor+8ueL7gObjRJofhJpH7ge3GJysyd6sGqe8quEM2Hj1qF4HGoTyp3byMWbiabiZs9uVeLwDSva8VuE6XHdxSdBqyMTIczQGolEZ4jSNv.CL30J26Uu5E9xu7KwV1xV.fjAg5MtwMj41tssss5b8Ydjibj3l27lxb1UqppphCdvCBM0TS1sos1Zie8W+U7du26grxJKTZokhicriUqYHtxJqL10t1EbwEWZTu+5W+5GzTSMYKSGkUVYve+8mUnuO3C9.b4KeY188AevGH0iWVelWy22UeFlmd5oiqcsq0fFPFyYNyA95qu3vG9v.PxZK61111p01Yu81iCcnC0Pd6RHc3bviHoiWrv2eNMnsmFZ0DBQtU81u.gzZkXwhQxojLtws7AW65di3SHAHVrXXngFhgLnAiwM1whd3hKTwBaiP7+06a38Zz5A4wiGt5UuJVvBVfTqaOpnhJ3Mey2DAETPxbQnmK0idzCb5Se5ZMZZqtgNzghvBKLL8oOcoZ0e.RdOO1wNVb6aeaoZyYxiUu5UiSdxSVmy7RWbwEbfCb.1IP2Tpq11U3oGd.s9uSbVGspcACkEUTQEXtYlg9169f2XLdgILtwgA59.PWs0VnklZhxKubjVZogmDZH3pW2a7W+6+ffdvCPxojLaVcPZ8qxhD75reglCuy67N051FxPFBqP+8u+8WlE+90ofgYlYlXPCZP3S+zOE6YO6AScpSEKcoKkc+ZokV3y9rOiEu+8ue15HVrwFKL1XiwDlvDvt10tvjm7jwHG4HYGumGd3gbUrP.IiD+Jcu6cOrfEr.DRHgfzRKMboKcI7Ue0WwteiM13lrAa.oikViELD.XwKdw3BW3B0pU4ogFZfe9m+Yo9aQYY3Ce334O+43RW5RXyadyXMqYM37m+7HzPCE1au8H+7ymss0b1+NxQNRDVXggoN0oVqiIfOe9X7ie73N24NXvCdvuluKaXTQEUfe94Ws1GhxJqLVvBV.N6YOKTUUUaQxkpyN6rC24N2AyadySlyfZszRKrvEtPbiabCXngF1hmeDR6QicriE+vO7CvJqr50544Dm3DX5Se50pagnqt5hCdvChyblyH0sW80GvWGadyaFG6XGiM.vpod26diidzixFnkxxW7EeANvANfTGGHOd7fKt3Bt8suMlzjlTsdLd3gGH7vCGSaZSqVCzCkTRILhQLB73G+X7we7G2HemIofeW9xWFt6t6x73pm3DmHNvANPs1eHOd7vLm4LQjQFIL2byY2dM+L+i+3OFaXCa.FYjQMp76PG5P3xW9xvAGbnV4Wm6bmw5W+5QvAGbct1ZSHcz4808AdecYuNnJK7DWOGccrwEeSRRQHj1WzRKMg95oKWmFDhLUd4ki3dQbHxnhh0Nz3ymOrvbyQ26V2Yq4Yj1VpPTE3ON6YAe97w6NoI+pe.+m4Mu4wFAl74ymMS8DJTHdzidD3ymO5cu6sTEPr0phJpHjSN4.974C8zSuZs1Q.HoEDFarwhm+7mC8zSOXqs1B80WeY7r03jbxIiDRHAjQFY.c0UWXpolJWiJ3p6L+wuC.f2aJu6qbaKu7xwiB9wn28pWPIEUpQ85UckHnDjd5YfWld5H0zREkTRIr6iOe9vHCMDlzkt.S5hIxcqXjzxIojSF9dO+folXBFxfZYt32MDQEUT0pPA6bm6DqbkqjEOgILA72+8eyhM0TSQhIlXstHH8u+8GO3AO..RF.AUNiDO6YOqTqUZUNh0kEkUVYbricLLsoMMot88su8gUrhUTuspK6ryNbyadSXlYlIy2aae6auVsgK.Ii97oLkoH06w5J2N+4Oeqh0aF4YeRjVGBHn.wKhOd3V+cEV+ZdAnatjUVYgG8nGASM0TXu81WusCaQhDgacqawJ.ZkOlpyWe8ECYHCgEe3CeX79u+6WmOewDSLHpnhB5qu9vVasUp0BpVZYlYlHhHh.74yG8qe8SlGGCWnnhJBwDSLHkTRA73wCcoKcA1Ymcx0Lvj1+Aoife+r+IDIRDlx6LI1ffpwJ+7yG4kWdPIkTB5qu9rAwj73ku7kHxHiDBDHf0VRaoVxARLwDQhIlHxLyLgd5oGLyLyfkVZYs1tSdxShYNyYxhu4MuIFwHFADKVLhHhHPpolJ5ae6aCdcGrxy0KpnhBlat4n6cu6PIkd8O2npSf.AH6ryFhDIB5pqtRM3SDHP.hHhHPJojBL0TSgc1YmbctRhEKF4kWdH+7yGpnhJv.CLPt++rBKrPDVXgg7yOe3jSNUq1oJWg9d.RqYSYZyE..+woOVCZ6oVRJgPjaUeseq0hScl+D..S+8Z3ERfz9RYkWFhJpnwyddjrK9oxJqL5pM1B65ZWaQZ6Rj1NTQEUpU6qo0N0UW8W4IjwmOez0t1UoZKgMkL0TSqyVrSyIEUTQ3Z+5eS1ymZppFrzBKfkVXA..xI2bQJolBRIkTPVYmMRMszPpokFd3ieLzVKsfIlXBL2LyftclFrLstT4hXXqqYXnc1YGbxImPXgEF61pb8KrRd3gGRULswO9w+ZMSIW4JWIl0rlEV9xWNqMPwiGO3niNhCbfCfAMnAUqGyRVxRvvF1vvhW7hQ.ADfTyt1N0oNgYO6Yiu7K+xFU6BUIkTB+9u+6Xm6bm3vG9v3Eu3ERc+73wCd3gGXMqYMXjibjx8yOg.z5cFFVc5omd0Z8EstvmOerjkrDDQDQ..IyZhPBIDVA6A.9se62X+bkcHg564yN6rqUyL3Ue80Wphc1Zg5pqN5QO5A5QO5AWmJDRGFZokVPKsz5054vHiLpQOi0dcYt4lK0LpSdU4wnUecQFYo49b8.jzZTqqhvoppphd26did26d2ndt4wiGzQGcZvEHUVzPCMpyNeCgPZZPELjPHxsRKsTHVr3VUs.ry+2W..TAC6Hp7xKGQESzHhm8LVgB0PCMP2sqavZqrpQMZEIDRGKcVGcPm0QG3jCNBABEfTSMUjRpohTSKMjW94i7xOeDwydFzPCMfElaNrvbKfNxnkRRZYUYMBZ8bzHU4oO8o068ujkrDrjkrjW4yy8u+8avulyctyEyYNyAQFYjHojRB8su88Ut9b5hKtf6d26hRKsTDQDQfjRJIXlYlAas0VYtlmZmc10fKNixJqLV+5WOV25VGhN5nQJojBxO+7gQFYDrxJqn17G40VagBFJul8rmMV6ZWK.jrFPMfAL.L5QOZXpolB+7yO3iOU0NoV3BWHs9eRHDBgPHj50msrEKWaOcUTIDhbSrXIyxPtX8lfPpT4UTNhNlXPDO6YrY8plZnAbxImfklaQqpBZSHj1NTUEUg0VYMr1JqgHQhPFYlARJ4jQhIkDJrvBQ3QDABOhHfVZoEq3gUtFKRZo05bFFxk3wiGr2d6qUaL7UQYkUF8rm8D8rm8rYImZMMKmHsezdrfgqd0qFImbxXe6ae..HojRBG8nGUpsgOe9XsqcsXSaZSbPFRHDBgPHj1RFn6x25QOUvPBgznHP.UvPB2nhJp.wDaLH7m8LHPf...ng5pCmbzQIqaA7ZYV2BHsMLzgNT1rLkJhLQdIY8LzHXjgFg9zqdizyHCjPhIfDSJIje94imFVX3ogEFzQGcfElaNrzBKg5Uac9fz7p07LLjPHM+ZOVvPd73ge3G9ALqYMKbvCdP7fG7.jPBI.kUVYXfAFfANvAh4N241lqspSHj1ODi1O6ys4ls1ZKVvBV.KllU3DBos.pfgDBoQQPqr0wvEtf4x0o.oYlXwhQ7Ij.dRngfRJoD..ndm5DbzQGg0VZUK1BbNosk4Mu4g4Mu4w0oAoc.d73AiLzPXjgFh9169fWld5HgDS.IkbxH2byE4latHjPCEcwXigMVaCL0DSn8K0LqxKXEMX.HjNlZOVvvJ4pqtBWcU9FM3DBgzbhOOdPDWmDsw3t6tC2c2ctNMHDBQtPELjPHMJBEVJWmBRYziZ3bcJPZFkU1YgG83GirxNa..nlZpAmbvAXi01PWPdBgzhiOe9nKFaL5hwFi902JPZokFhOAIEOL0zRColVZPEUTAVaoUvFarFZooVbcJ29T6uZDzfYkUVI0HV2LyLiCyFBgazdtfgDBgPHDBgzTXiaYa..Xye4ZaPaOUvPBgznTQEUfxJqbnjRztQHMeJojRvSBMD7h3iG..JpfBvAGb.12stCETPANN6HsnnqEHoUJE3q.L0DSgolXJDVpPDe7wiXhKNjWd4gm87HwyddjPe80G1Zs0vbyLm0hbIMEpbGCc7lgg8su8EG5PGhqSCBgSQELjPHDBgPHj5W3QDobs8zUrfPHMZBEJjJXHoYQEUTAdVjQhHdVDn7Jp...VYoknmtzCnlZpwwYGgPHxlJJqB5lccCcyttgrxNKDSrwgDRLAjYlYhLyLS7vG+XXsUVgtYmcPSMzjqS217Xqggc7pWHgPP0JXHMphHDBokCsKWBgPZWitR+DBoQSf.gPCMTmqSC..7Me2dA.vmuhkxwYB40URImLdTvOFEWbw..PWc0E8sW8F5omdbblQHDRCmd5pGzSW8Pe5UuPBIl.hIt3PVYkEhJ5nQTQGML0DSP26V2fgFXHWmpsg0wcFFRHDZFFRHDBgPHDRSMpfgDBoQSfPgbcJvb+G7HtNEHulDHP.dvieDRJoj.fj0ovd3hKvJKrjcAgHcbQWTv1W5H8+iJpnhvFqsA1XsMH27xEQ97nP7IDORNkTPxojBzQGcP26V2fklaAslrJ2p76F5376SjlGcj1mT6I74IYelhDIhiyDRGYz9OHcXPypaBQlnuGfzZ2t9l+O4Z6oBFRHjFsRKsTHRjXvmOULGxqmXeQb3wAGLJqrx.Od7P26V2fyN5DsVeQX3ymOTRIkPYkUFJp3hg5cpSbcJQdMTbIRlAwpnhJbblzxRGs0At0+9id5hKH5XhAQESzH2byEAFTP3IgDBrqqcEc0Fa6v84RikpppJ..Jrnh33LgzVWIBJA..JqrxbblPjGr8ATHsO.B2g1+AoiBUUQETX4kiBKrHzYczgqSGBoUiBKpP.T0wkPHs1Xt4lJWaOMLlIDxqEgshlkgj1dJrnhvstysQP2+9nrxJC5ns1XzixCzqdzSpXgjZwXiLF..Q9b4aAalz5SzwDC..LPe843LganpppBmcxILt2Zrv090ens1ZCABDfPe5Sw+dwKfGE7iQIkTBWmls5oud5AEUPAjUVYgLyJStNcHsgEWbu..R9cJRaGFYjQ..HojRDEULUzPB2H13hC..52A8XZHcbXDctXDhLE4yiB..F+eGWBgzVmBaZSaZS00clSt40BlJDBosHkURoVEihFWb1QLhgODXf9zE5os.whEimGcT3d26dH+BJ.74yGN6jSvcWcCchl4Xj5flZnAh8+VG3DCwny5nCTPAE35zhHGpnhJPbuHNDxSeJ..5e+5GTuSsNVKb4B74yGctycF1YaWg95qODJTHxufBPVYmMhJ5ng.gBQm0QGnjRJw0oZqR74yGUTgHjQlYfjSIEnklZAMTWcpMVSZvDIRDRLojvSB4IPjXwnO8tOPSMzfqSKRCjJpnBxuf7QN4lKRMszPm0oynSpoFsO.RKhZs+id0aZ+Gj10zRKsPbwEKxNmbPYkUF5bm0gFjujNzJszRQXQDNh74OG73wCt6pasJt9nDxqKdhqmFsarwEeKYtPHj1f5jZpAiM1PtNMHsgTXQEB+CLPjUVYA.IileW6W+gVZoEGmYj1BhN1XvCd3C45zfzDvQGb.8vYW35znUmbyMW7zvCCIkbx.PRQwr0FafC1aO5jZz.pnlDIRDtqe9hTSKMtNUHswYqM1h9229x0oAQNUZokhad6agbyMWtNUHcf0UasE8qOz9OHs+kPhIB+CL.ZMaiPpAW6W+fMVaCWmFDhL89K7S..vQN3Ozf1dpfgDB40hBJvGVZg4bcZPZiH9DR.2+gO.kWd4PQEUD8vYWfccsqzHAmHWROizQXgGNxJ6rQ4kWNWmND4.e97g1ZoE5d26NrxBK45zoUsbyKW7zvCGIkTR.fJbX8QjHQHpniFwDWrnfBJftHVjFLd73AM0PCXWWsCc0VaoiGoMpxKubD9yh.wmPBnHZMMsYjX.P+MRk3wiGzTSMYq+vz9OHcTjU1YimF1SQFYlIctXjNzTTQEgd5pKbxQmfgFX.WezZZUO...B.IQTPTkNDRcZJSat..3ON8wZPaOUvPBg7ZybyLgZWZj5U4kWNd3ieDh6Eu...5pqtXft6NzPcps8PHDR8I27xCgEd3HwjRD.UU3PmczInhJpvwYGo8tHh7YPEkUlFwzDBA20OegYlZJr1Jq45TgPHDBgPHMPxaAColMMgPdsIPfPNufgK8yVM..162uCNMOH0V14jC7O.+QAEVH..bvd6gKN4L3ymOGmYDBgz5mNZqMFz.F.xKOGQXQDNRHwDQTQGMdQ7wCGs2AzM6riVKOIMaxO+BPbuHNviGOpHADRGXhEKFYjYlH0zRCZnglv.80mqSIBgPHDBgzLfJXHgPdsIPnPnolb6LEK0zdIm95SpMwhEimG0ywSBMTHRjHnpppB2c0MXrQFw0oFgPHs4ns1ZiA59.fiN3HBNjmfzRKM7jPCAQESznmt3BrvbKn1gFoIWgEV...B792GfGOXskVwsIDgP3D4WP9nzRKE..9dO+fmixCnt5pywYEgPHDBgPdU98ScT4Z6oo2AgPdsITfPtNEHsxTZokh636cwiexSfHQhPWL1X3kmdREKjPHjWS5ns1X3CYnX3CcnPas0FEWbwv+.CDdeyafLxLCtN8HsyjeAEv94.CJH7h3okrBBoinLxHS1OKTnPbG+7EkUdYbXFQHDBgPHjFBd73IWCtXpfgDB40VokUFDIRDWmFjVIxKu7v0tt2H0zRC74yG8tm8DCcvCApphpbcpQHDR6FFajwvqQ6I5e+5GTUUUQ1YmMtgO9.eumenfBK3U+DPHuBkUVYPnPoGTXAd+fP7IPEMjP5nolCHk7xKODPfABwhEyQYDgPHDBgPZNvSb8bDdwFGcxfDBogoKFaHTSM03rW+JWe7zTCts0n1QWRImLBHn.Q4kWN5jZpgAOnAAc6rtbcZQHDR6ZkWd4HhHeFhLxHQ4UTA3ymObvd6gi16.s9FRZzxN6rw0tw0q0syiGO3tatAKM2BNHqHDBW3et3EPwEWbstcGr2dzSW5AGjQDBgPHDBogH+7kLfh0RKMaPaOsFFRHjlDBDHjSKXHUnPtkXwhQXQDNdZXgA..80WeL3ALPnppzrJjPHjlaJpnhvEmbFc0FaQHOMTD2KdABK7vQ7Ij.5We5K0NnIMJ4WGyTUwhEi.BLPvmGOXtYl2BmUDBokVQEWjLKVH.PDO6YPaszFVYoksvYEgPHDBgPZHd+E8I..3ON8wZPaO0RRIDRSBABo0wvNpJq7xfe9eOVwBswZavHF1vnhERHDRKL0TSM3V+cEiZDi.ZokVnvBKD25N2F9GX.Pf.Abc5QZiofBp6VaqXwhw8BH.jXRI0BlQDBgKT80uPYInGbejUVY0BkMDBgPHDBo4DUvPBgzjPnvR4zW+JDIBUPqihs3JrvBw0uwMPRImL3wiG5au6Cbse8CJvmZAdDBgvULPeCfWi1SzCmcAJpfBH9DR.W7JWFQGaLz5MEoAqfBJrdueIEMzejTxI2BkQDBgKTy0uvZRjHQ3t2yu5bVHRHDBgPHj1NnBFRHjlDhDIBkVZYb1q+6Mi4i2aFymyd86HJqryFdeyaf7xOenrxJiQLrgA65ZW45zhPHDB.3ymObzAGfWiYLnKFaLJqrxvCd3Cw084lH27xiqSORa.ETGsjzJ0oN0IzstZGTSMpiBPHsmkQl0+LLDPxZoaTwDcKP1PHDBgPHD4gIlzEXhIcoAu8zZXHgPZxHPnPnrxJw0oAoEPpokF76d9gxqnBns1ZigNnAC0UWctNsHDBgTCZntFXXCYnHgDSDOJ3GirxJKbsq6Mb1ImfCc2dviGOtNEIsRUWsjzt2stAKL2bnmt50BmQDBoklPgBQ94muLuOKL2bnu95CCzWeni15PeeBgPHDBgzJzd9tsIWaOUvPBgzjQn.g.ZpAWmFjlYuH93Qf2OHHVrXXnAFfgLnACkThJTLgPHslYg4litXrwH3PBAwDaLHjPCEojRJvcWcCZnA8c2DoIPf.Td4kC..M0PCXtYliDSNITPAE.CMvPpXgDRGDUN6B0Vasg95Io3fOJ3GiRKsTzSW5AMfAIDBgPHj1YnBFRHjlLBDJjyds0Vas3rW6NRdVjQhfC4I..vLSMECvM2gBJPqWgDBgzVfRJoD5ee6KLyTSQf2OHjYVYgq380Pu5YOQWswVtN8HshTZokBmbzQXtYlAczVG..nfhJfPe5SQRImDL0DS33LjPHsDzU2Ni2Y7S.Jqrxra6Ew+Bj1KeIxMuboBFRHDBgPHsyvSrXwhqq6L13hukLWHDR6.VYo4fOeZ4Qs8FwhEimDRH3YOOR..XqM1h90m9PsdHBgPZipzRKEO3QODIjXh..nKFaLbs+8GpopZbblQZsJu7yGW9pWAJqrxXBiabfOO538HjNhBNjmfmEYjvYmbBN6nSbc5PHDBgPHj5Q3QH4Z45nCcuAs8zY4QHjlTBDvcyxPRyCQhDg.BJHVwBcxQGQ+6aeohERHDRaXJqrxXftO.L.2bGJojRH0zRCW9pWEIlThbcpQZkRaszBZpolnzRKEYjQlbc5PHDNRky53byMWNNSHDBgPHDxqxF2x1vF2RCecLjJXHgPZRwkskTRSOQhDg6Ef+H9DjLiy6We5CbwIm43rhPHDRSEKsvB7liwKXrQFgRKsT3m+9ifdv8QEUTAWmZjVgLyTSA.PRImDGmIDBgqzYcnBFRHDBgPHsWQELjPHMoDxQyvv3SHQDeBzrhnojHQhv8BL.jTxICd73gAMfAhtZaW45zhPHDRSL0TSML7gNLz2d2GnnBJfXiKN38MuAJnvB45TizJiYlZF..RN4j43LgPHbEM0TSviGOTXQEgxqnbtNcHDBgPHDRSHpfgDBoIkvREh5YoQsYyJW8FvJW8FZwecauRjXQv+.CDIkTRrhEZtYlw0oEgPHjlQ100thQMxQAMzPCjat4hqccuoYRFQJ5oqtPM0TCEWRIHqrylqSGBgvA3ymOzTCM..PAEPCrDBgPHDBo0LW6eegq8uuM3smJXHgPZRIRjXTVYkw0oA40fHwhP.AFHRLoDAOd7v.ce.rVPFgPHj125rN5fw3wngYlZJJqrxfu26d3wOIXHRjHtN0HsRPskTBgnoVZA.f7yOeNNSHDBgPHDR8YUK+SvpV9mzf2dpfgDBoIm.NpsjRd8UYwBSHwJKVn6zLKjPHjNXTRIkvfG3fPu6Yu.Od7PjO+43l2xGTbIEy0oFoUfJaKoIQskTBoCKs07+JXXATACIDBgPHj1SnBFRHjlbBD1xWvPmbzd3ji12h+51dhjhEFDqXgCvM2g4lYNWmVDBgP3HcuacCiZDi.polZHyrxBW0auQZu7kbcZQ3XFXf9PYkUFETPAHOZ1EQHcHokVZB.f7yu.NNSHDBgPHDRSIpfgDBoImPNXFFtoMrFroMrlV7W21St+CdHRHwD.Od7f6t5FrvbpXgDBgzQm95oO7ZzdBiMxHHTnPb66dGDcLwv0oEgCwmGeXpIl..psjRHcTooFRJXXgERELjPHDBgPZM6pdeSbUuuYCd6oBFRHjlbkUd4nhJpfqSChbHjmFJh6EwA..2b0UXoEVvwYDgPHjVKTQEUvvFxPgC1aODKVLdvidHdTvOFhEKlqSMBGgZKoDRGapqg5..nvhJhiyDBgPHDBgTeN7u7q3v+xu1f2dpfgDBoYAWzVRIMNQGSzH7Hh...8s28FVYgkbbFQHDBo0Fd73gd5ROfa8u+fOe934QEEtie9hxJqLtN0Hb.iMxHnnhJhbxIGTTwzZaIgzQippnJTTQEQYkUFJszR45zgPHDBgPHMQnBFRHjlEszskT+7OP3m+A1h9Z1dPRImLd3ieL..bvd6gcc0NNNiHDBgzZl0VYMF9PGFTVYkQpolJttO2DEULMCS5nQAET.FajQ..H4TnYYHgzQj5pW4rLrPNNSHDBgPHDRSEpfgDBoYQK8LLb268mvt26O0h9Z1VWFYlIBHv.fXwhgUVZI5oK8fqSIBgPHsAXnAFfQOJOflZpIxKu7v0t90QVYkEWmVjVXlZpo..HkTRgiyDBgvEzPCM..PgERCZDBgPHDBo0p2YhuMdmI91M3sWwlwbgPHcfITXoPrXwfGOdsnutG9nm.KXdyhEel+373rm6uYwu+7lE7xyQwh+tcuODPfOfEuwMrZ3riNvh+rUtNjTxUcgvN7OuWns1ZwhmxzlK6m0PC0wQOz9YwIkbJ3yV45Xw128tgstophCHv6iua2Us8dLpgiEsfpd99iy8232+iyyhm6rmNdq2vSV72u2eB2qZypxMrtUgd3hSr3Ut5u.wmPRr3Cr+uG5pamA.Pd4mO93ktJ15OkZpoFb2U2XaapolFV5xWCKta1YK9+1xFXwA8fGgc9c6kEOhgOTr3EMeV749qKfS++9SV7rm46g29s7hEu28e.bWe8mEutUubz6dUUAKW0Z2HdwKhmE+i+v2ACzWOV7zm8GvZCdpnhx32N1AY22KSOCrjksJVrs1XM19+2FYwO7QAisuycyhG1PGDVxG8Ar3+9euD9sS86r3YLsofILt2hEuue5v312wWV7pW0mh90mdwhW6WrYDcLwU01u6uAFYjgr3YM2EwJnthJpHN8INL69xLqrvGsjUvhsxJKvN21VXwA+jPw+21+NV7fGz.vxVxhXw+6ktJ90SbZV76M0IgIMgpNnfe5f+BtoO2gEupk+Iv092WV75+xuBOOpnYw6YWaGlzEiYwy48WLJ9+Z8b74wC+uScT18kSN4hEt3OkEat4lgc8MeEKNjmFF15+2NYwCvcWwxW1hYwW5Jdiid7Sxhe2IOALkIMAV7AOxwg2W2GV7xW1GiA3d+Ywe4l+ZDwydNKdW67+Clalor34uvkfBJnpQ.+eb5iw947xOerfEsTVrolzEr6uaar3vB+YXSac6rX2bseXke1RXwW06aJU+feRSbb38d22gEe3idBb0qcCV7x9jODCdftyh27WsC7zvhfEuysuUXkklyh+fObYH27xiEele6HPAET..RtHcy6C9X18YrwFge362AK9YQ9brgM80r3902diUuxkwh89F2BG7vU8YwDF+agY7dSgEeze8T3RW9Zr3kr3EhgMjAxh25WuSDRngwh2wWuIXi0VwhWzG+YH6rygEexiePnrxJC.fRJoDL64+Qr6yPCzG6eueKK94QECV+WtUVbe5cOwZ+7OiEeyacW7SG3Hr32druAl8LlJK9W+syf+8hWgEu3O78wHF1PXwe8N1EdbvgTU7V+RXWWsops+SVIxHyLq546n+LTSUUA.fvRKEybNKjce5oqt3m2+tXwwD6KvZV+lXw8nGNiMr1Uxhu8c8C66GODK9sdSOwbm0zYw+1o+C72+yEYwK5ClG7XjCiEuiuc23AOLXV7V275g8cqpYH9m7oeNR6koyhO1g2OalfTd4kioMqEvtOczQabneZOr3WDeBXUq4KYwN6jiXiewmyhuqeAf8tuelE6hyNft0MqwMtkOX.t4F78dAgyc9+kc+KX9yFiYzijEuyc8CHn6+PV7l+x0BGcn6r3ksh0hTRIUV7QNvO.szRS..HVrX7tSedr6SKM0DG4f+.KNwDSFK+yWOK1QG5N17WtVV78BHH7864GYwi1iQfE99ygE+6+4eg+3r+EKd9ycl3MFiGr3csm8C+C39r3ub8eNbwYGYwKeUqGIlTUy1tC9S6FcVGcXwu6zmG66cUW8Ngic3pxkjSIU7oqnpbs6cyN7Uatp2KAFzCw298U8dcTibX3C+fp9r3rm+evY98ywhmyrlFF6aNFV7t+geF9cu.XwqesqD8pGNyhW0Z9R7h3SfE+y6aWPO8zkE+dy78YqO0pppp3DG8mgIcoKfGOdH13dA1+OU02GXWWsAe8Vq52gdvCeL1w2V0uiM7gMX7weXU+N34+mKhSc5+fEOyYLUL9w9Fr3e3GOHtycuGKdse9mg9z6dxhWy52DhI1Wvh2+d2ILz.CXwyXNKj0xDUVIkvI+0p9auLxHSr3kV0eaZi0Vgc70ahE+nfCAaaGU821CYvCDK8iq5u8+mKbYbhS9+XwS+8lLl33GKK9GOvQfO25tr3OeEKC8ue8lEutMrUDUzwvh262uCzEiMhEO64+gnjRD..Iypyy7aUsOurxNG7gebU6SzRKLGe6NpZelOIjmhuZaUsO0AMP2vm9IUsO2Kd4qgi8qmhEO0o7NXxuy3Xw+7gNFtwMuEKdEe1Rf6t1OV7F1z+GdVjQwh28290vTSMgEOuE7wRs91U8u2M2byCevGU02EYtYlfcsyp9tpmFVDXyeUUeWl6t0erhOspuq6xW853WN1uwhm7jFOl5jmHK9P+xuhq48MYwe5RWLFz.bkEuwsrcDdDOiE+ceyWAKL2LV76unOA4meAr3+2I+EvmujwZcAETHl+Bq5X.LoKFi8rqpNFgveVjXiatpigv092GrpkW0wXbsq6CNzQNNKdhS3swzm5jXw+xwOIt7U7lEuzkrHLjAM.V7l++9F7zmFNK9a11lg0VU0xIvBW7mhbxIWV7oNwggRJJ4x9TTwEi499UcrWFYnAXe6opiMKxmGM9hMV0wt029zKrlUU0w1cCetM94CV0eq6ta8ElZpQriM7Xm3z3hW5pr6+i+nO.CenChE++s8uCA+jPYwa6q1H5psVyh+nkrbjYVYyh+sic.nhJp...ABDhYMupNlW80WO7S+PUGSbzwDKV6WT0wL2qd5BV+Zp5Xp8419he7mq5XtG6a4ElyLeOV7IN0ui+4euDK9CW37wnFwPqJW+luGO5wOop2Ka4KP2rqqU8dcYqBomdFr3iejeBcpSpA.fxJqLL8YW04Znam0AG3Gq5bQhMt3wpWWUmqhKt3D9x0U04xbGeuG9g8W0457FdMZL+4LCV7oNyehy+2WfEuvELWL5QMbV727c6E2+AOhEukMtN3f8ciEuzOa0H0zdIK9WNz9fl+WwfqPjH7dynpywSas0BG9mq5b.iOgDwJWcUminSNZO1zFp5bH8y+.kZP8NFOGEct5+m56b0A.l5LlODIRD.jbt5+5uT0miz4pSmqN.ct5UhNWc5b0AnyUuR07b08ZLdf2etyDS6cq5XMaHnYXHgPZVHVrXZ8rnUpRJoDb66dmW8FRHDBg7JXhIl.aswFHRjH3m+9ibxImW8ChztfJJqBzWe8YEAkPHcrnnhJA.fhKgVGSIDBgPHj1K3ItdNCuXiK955tHDB4URO85LzVKsd0aHoESEUTAtws7AYmc1Pc0UGidjiBp9eiBGBgPHjFqvhHbD5SeJ..5oK8.NXu8bbFQZID4yiDO9IOAVXtEXft69q9APHj1MhOwDf+AD.LyLyvfGv.e0O.BgPHDBgzpGMCCIDRyFgBnYXXqMO3QODYmc1PIkTBCaHCkJVHgPHjlDN4finu8oO..3IgFBdRng7JdDj1CLwDIsSpTSKUVqSiPHcLzI05D..JoXZFFRHDBgPHsWPELjPHMapr2uSZc34QGEh6Eu...CvM2gVZpI2lPDBgPZWwNa6JFfatAd73gHd1yv8e3Cn1UY6bZpgFPKszBkUVYH8Lx3U+.HDR6Fpolj0nuRJoDNNSHDBgPHDRSEpfgDBoYS4kWNpnhJ35zf.fzyHc73fkrn61CmcAlzktvwYDgPHj1irzBKwPFzffhJn.hI1Xg+AF.MyyZmyTSLA..ImRJbblPHjVRpoljNURIBDPCNDBgPHDBocBpfgDBoYk.AzrLjqUTwEA+72eHVrXXtYlAGcvAtNkHDBgzNlIcwDLzgLTnnhJhDRLQbG+7EkWQ4bcZQZlX1+0VRSIkj43LgPHsjTfuBPIkTBhEKFkUVYbc5PHDBgPHjl.TACIDRyJpsjxsJuhxwc8yOHTnPns1ZC25uqbcJQHDBoC.CMv.LxgOBnhJpfzRKM3qe9Qccf1ozUWcgpppJJp3hQt4lKWmNDBoEjJpnB..DHT.GmIDBgPHDBoo.UvPBgzrRHMCC4T2+AO.4latPYkUFCYfCBJpnhbcJQHDBoCBc6bmwnprngu7kvW+uGpPDUzv1a3wiGLoKRZKoIQyxPBoCEUqrfgz47QHDBgPHsKPELjPHMqDVZozZZAGIlXiEwmPBfGOdXft6NzPCM35ThPHDRGLZokVXjCa3PYkUFolZp3d96OslF1NjYlRqigDRGQpnpj0wPgTWkgPHDBgPZWfJXHgPZVIVrXHrzR45znCm7xOe73feL..bwImgwFYLGmQDBgP5nRas0FiXXCCJojRH4TRA9GXfPjXpngsmXjgFAEUPAjSN4fhKoXtNcHDRKjJmggTACIDBgPHj1G3Itdl5OwFW7sj4BgPZmROc6LzVasZ1eclxzlK6m0TSMvubv8whSLojwxW05YwNXe2vV135Xw9Gv8++Yu66vZpyu3.3eCgMHBxduDYn.JhhZcu2VG08pZ0ZspXcVG08dOp15dU05dTst9YchCDW.prQAk8VkcH+9iPtv0j.gQFfmOOO8o7duu4lSvPF2y8bdwl15NXF2kN2ALwwOFlwm5LmGm7zmmY72OlQfd18tvLdSacm3gOxelw+1BlM7nQMjY7LlyBQrw9dlw6dmaAFXf9LiGxv+dTTwubr1ZqMNz91Iy9hK9Dfuy3WYF2.mpOV4xVHyX+exSw52z1YF2g12F3f8VgLxLSXhIlfzRKKbhSdVl8O5QMLzmd1Mlwa822EtueOjY7B90YhF6o6Lim87VDd6aigY7e76aDFYngLiG1n9ATXgEB.AmzfibvcwruDSLILkoOGlw02Q6wpWwhYFGvydAV652By3101Vio7S+.y3yewKiid7SwLdjCevne8omLi+8+XO3N20Olw+5rmNZpWMtjwKXoHxnhtj4u00CSMw3RNdichHu7DjPa0TSMbrCuGl8kbJohIO0YxL1N6rEqe0KkY7yeQfXUqcSLiaSqaIl1O+iLi+mKeUb3+5uK42SCYPX.eauYFuycsebqaeWlwydlSCM2auXFufEsbDV3QxLdaaZMvbyKIwuidb+DxImb..fJpnBNwQ2Oy9RKszwO9y+ByXaswJrg0tBlwAFzqvxW05YF2pV5C9ko8SLiu7UtNN3gOFy3A+c8Ge2.5Gy3cs2Ch+2MuMy3YN8eFsvmlwL92VxpPHgFFy3MugUwT8I..e+D9Y7oO8Ylwm53Gj4myLyrvOLoowL1JKs.adCqhYbvu9MXoKesLiagOdiYN8ovL9pW+lXeG3HLiG3.5GF520elw68.GAW652jY7zm1Oguok9vLdIKeM3UuNDlwaXsKG1Zi0Li+gIMMjYlYwL9uO59AWUDb8W8wO8ILtITRrXtYlhss4Rh02DRXXQKsjGKMyauvblYIOVuwMuM18dK42E8ue8FCenChY79OzQwUt5MXFO0edhnsstULiW1pVOBJnWwLdsqZovA6skY7ON4oizRuj0Wric38.0TSM..jc14fwL9RdNfIlXL1wVK44HgEdDXAKpjmC4US7DyaNk7bradq6h+b2k7bv91mdhQM7AyL9P+0eiKc4qxLdxS5GPGZWqYFux0rQ7hWFDy3UuhEg56nCLi+ooNSjRJoxL9HGXWPSMK4jTNxwVxe6Yjg0C+wuWxeaFQjQi4svR9a2F6o6XA+ZI+s8suqeXG+QI+seu5Y2vXG0vXF+WG6j3B+y+xLdRS76Qm5P6XFul0uE7zm8BlwqXoKDN2f5yLdJ9NajXRIyL9f6amPGs0F..ETXgX3ipjWyy.CzG6dmk7ZhQ+12g4LuRdMyF0H2vhWPIul5876gXa+dIulaO5dWv3FyHXFerSbFbty+OLimv3GC5Zm6.y30uosA+exyXFuzEOO3lKNyL12Y7qHt3SfY7928ui5TGAUqdQEUDFxHFGy9zSu5f8sqRdunXh88Xlyoj2qxMWcA9NkIhac26fBJn.jatEhK+uWmY+csKcDSXbilY7IN84voOyEXFOtwNRzit0YlwabK6.O5wOgY7hW3bQiZnqLimwrmOh88kTsa64O1JzW+5xLtzelAc0QGbf8VxmA3CeHNL8YUxmQvEmcBKeIk7YHdj+AfMt4R9LFcpisGSZBkb7N8YuHNwoJ48cG6nGN5UO5Jy3sr8+.98fGyLdgyaVvSOZDy3YM2eCuKlXYF+m6Xyvv5Y.y3gNxwyrdPpkVZhCu++jYewmPhXZ+xbYF6T8cDqZ4+Fy3mDvyw513VYF2g12FL4eb7LiO2EtDN1eeZlwiZDCA8s28fY711wtw8t+CXFOu4NC3Ui8...2yu6iC+WmBYjQlL6emaaCvXiMhY7HF8DP9ET...TWc0wQOztY1WRImL94oMalwN5fcXMqbILie1yeIV851Ly311lVgoN4IxL9BW5J3uN5IXFO7g8cn+8sWLi2wetWb66belwycV9BuaZSXFO+eaYH7HhhY712x5fYlZRI+t36mDxMWAqSak98sjD5ykJPG6PawOMwRdshyb9+A+8INCyX5ykVy9yk9x.CDuIzPvku7MYV65oOWp76ykVQPulj.zqIU690jDh9txBPeWY56JSeW4ZNeW4ktnRduL+dn+XKaqj2qq596JWdnJLjPHxb4JGthSK8W.5qcokVpHiLyDpqt5nkM2GvgCGEcHQHDBgf5Uu5g10l1BUUUUjRJIW92.RMJBWGCI.ETbRQIjZ6TScAmLUZInP96GlzzXk3fxxRWw5jwQCgPHDBo1BpBCIDhLGWtbgs1XkL89HwDSB..lVpqD7uF8g3hC2yOAW87s4aZMrzB5j2QHDBQ4RRImLt68tKJjGO3T8qOZZS7p7uQDkd4jSN3BW5efpb4h92uuEb4xUQGRU6F5HETMl+8esuxbdBuP1jlJQjPpIK7Hi.O8YOCN5finYMsoJ5v4qJzqyPHDBgPjETUQG.DBo1Od73gBKrPnppxtWx4q8DEBH3D083mHnUu3T8qOkrPBgPHJkLwXiQaZcqwct28P3QDAzRKsfatH8BUITjB..f.PRDEDUsHEhxIszRKXf95izyHCjXRIAKL2bEcHUsq7RTHg70F0KtcsUPAzZVOgPHDBgTa.0RRIDhbg7nsj90L974iG5+iQ94mOpacqKZrGdpnCIBgPHDIxTSLEszmV..f.CJH712Qc1jZCrn3KVo3hOdEbjPHD4A0TSc..l0lTBgPHDBgnbYFyd9XFyd9k+DKFUggDBQtHubyC5piNJ5vnVqvBOLjTRIAU4xEspEsnVYa.iPHDRsKVakUnIMtw34u3Ev+.dBzRKMgolXphNrHUAVXtE3Uu90Ht3iC.e81pYqmA5qnCABQtPM0DbJkJrvBUvQxWe96iteodt2yuGA.f17MsPVENDBgPHDkTw993pPymRXHgPjKj0UX3nF6OB.fibvcISueTF8wO8IDTvAC..O8zSTW8pqBNhHDBgPjNN6TCP1YmMBMrvv8evCPm5PGf90kR1RMU0y.CfFZnAxN6rQFYlIzut0t9LIolZZ..vPCqWYNucsysHOBGBQgiKWAmRIdTBCk63phz2vv11u+m.fRXHgPHDBo7QsjTBgHWjWd4C974KyN94lWdeU11S4ymOdR.OAExiGLwDSfSNVeEcHQHDBgTgzXO7DVak0nfBJ.24d2CYmc1J5PhTIwgCGl0tPAUYXsKSZJy.SZJyPQGFDhRCUKtqlTHOdJ3HgPHDBgPHUGnDFRHD4l79JLgdxZQFUjHojSFpxkKZdS8VQGNDBgPHUXb3vAsn4MGFajQHmbxA24d2E4WP9J5vhTIYg4z5XHg70BtpJHggTEFJ+8wO8I7wO8IEcXPHDBgPTxsm+XqXO+wVk54SILjPHxM4lqrKggppppPUU+5pKK+4ryFuHv.A.f6MpQPWc0UAGQDBgPHUNb4xEs4aZMzSO8PlYkE76AO.EwuHEcXQpDLyTSgJpnBRM0TQd4+04EKVTQ+NDUzuSQGFDhLmpE2RRoJLT9abSXJXbSXJR0b6d25L5d25rLNhHDBgPHJizW+5B80W5WpH955rqSHDEJYYKC83GYuxrisxp.dZ.nvBKDFVu5gF3TCTzgCgPHDRUh5pqNZWaZCtwMuIRLojvKCLPzDOarhNrHUPpolZvXiLBIlTRH93S.1YqsJ5PpZic1ZiTMu4N+EC.fSc7CJCiFBQwiawsjzhnDFpTa7icjJ5PfPHDBgTCAUggDBQtIu7n1KV0kne6aQ7Ij.TQEUPyaVy.GNbTzgDgPHDRUlNZqC9lV1JnhJpfPCKL712QUoUMQVXQsy1R55Wyxv5WyxTzgAgnzPEUDbJk3UDUQ3DBgPHDRsATBCIDhbCOd7PAEPquEUU4lat34u7E..vMWcE0UOourxIDBgPT1YrQFAuZbS.ffpoOszSWAGQjJJgqigwmP7TqkkPpES3EsHe97UvQxWeL2LSg4lYphNLHDBgPHJ49tgMV7cCarR87oVRJgPjqxKu7fZpU8+ROojZp..vHCMrZ+Xqr4EAFHxO+7Qcqacgat3phNbHDBgPp1UeGcDokd5HpniB2+A9gt04t.MzPCEcXQjR0QWcQczUW7wO8IjZpoAiMxHEcHIW4t6MTQGBDhbAGNb.GNb.e97QQ7KBpvgtlzkW11lWqTO2iexy..fgM3AJqBGBgPHDRsDTBCIDhbUt4lGzUWcp1Ot+zTlI.p8uVwjRpoh29t2B.fl6cyXZCPDBgPH01zTuZBxLqLQpolJ76gO.sussideuZPL2bywGCObDeBwWqIgguHvfA.Pi8nQk47Vz7ms7HbHDkBBSXH+h3CvUQGMDw4rm6e..kvPBgPHDR4i9F2DBQtJ27xSQGB0XwmOe7zm+L..3f81CCqW8TvQDgPHDhrCWU3hV2xVAM0TSjTxIiWD3KUzgDoBvbyLG..wmPBJ3Ho5yJW8FvJW8FTzgAgnTQ3ExQQz5XHgPHDBgnzQWczA5pizW7NTEFRHD4p7yOeTTQ7gJpvQQGJ03DUzQizSOcnlZpAOZj6J5vgPHDBQlSKszBstUsB+2suMBK7vQ8Lv.Xms1onCKhTvDiMFpxkKRO8zQt4lKzTSMUzgDgPH0Z7lPBC..t5RCTvQBgPHDBQY1A16NpPymRXHgPj6xKu7fVZU8dRiryNapVOdJaxO+7QfAGD..ZjaMThmzs3hOdDRngfzROcTXgEJOCQRw3vgCzUWcg81YGboANK2ZedwmP7HjPCEolVZz+1+UDU4xE5qu9nAN0.Xi0VqvhizSOc75PBAIlThH+7yWgEGDkapxkKpq95iF3jSvVqk9221HCMBMsIMAO4oOEA7rmACqmgnN0oNxvHkTcfKWtvXiMFwmPBH9DR.1amcJ5PRt4t2+A..nsstUUpaeru+8HzvBEYjQFnPd7pNCMhLjZpoFLxPCgqt3BLwXSTzgCoVtEszUA.oaI43GF2nkwQCgPHDBo1BJggxXu+8uGQEUTHtO7d7gO7AjRJo.iM1XXgkVBKszJ3niNBKrvBERrUPAEfG+3Gg2GarHwjRBIkXhnN0oNvN6sG1auCvd6sGlXB8EcHU+jEILb8qdYUqGOkMA8pWg7xKOnmd5Ampe8kvbBFu50uVNGYjuDe97wG+3GQfAEDRIkTPa9lVCNbjsUTavu9UH3W8JY58AQ4Tg73gTRMUjRpODolZpnIMtwx8XHxnhBA7rmB974K2uuI0rTHOdH0TSEOL0TQpolJ7pwMQpusN5fiHojSFuKlXvCdzCQm6Tm.WUnEKKkclal4Emvv3qUjvvuoUsPpl212wtAPkKggu3kuDgDVnU3aGQwqfBJfIA4d5gGvUmcQQGRDB..5VW5nhNDHDBgPH0PH2SX3YOyYv7m+uJ0ymKWtPO8zC0st5CCLPeXmc1id06diV1xVAtbq5mjfctycfss0sH18ctyeQ3pqtVgOlEUTQ3+t4MwAO3AvCe3CJy4xgCGz4tzEL4I+yvCO7TpN98tW8.QDQDhr8MrgMgd2m9Tt29G+3GiydlSiqe8qgrxJqxbt1XisXVyd1nW8p2RUrQHRibykVGCqHxHyLQDQJ3u48pwMQrUrVbwGOd0qeM3vgCZrGd.6sydnt5pKuCUBD7d.wmPB3wOweDW7wiHiNJTeGbTlc+EW7wife0q.GNbfGt6Nbvd6gFpqgL69inbofBK.uKlXvyd9yQngGFL1XifUVZkb69O4TRAO4oA...mcpAnAMvIni1Reuwm70kR+70vBObXhwFWgd9p2d0TjZpohzyHCDXPAgl3o7OA4jJFyM2LfW.jPhIB974Kyu.Zj0l9TmjL83+9O7ADRXgBUTQEzjF2XXmM1B0TSMY58Io5St4lKhHpHwqd8qwKCLPXf9F.yL0TEcXQHDBgPHjuh8gODG..rzRoqn0jO8IsR44u3YnfBJPp+ubyMWjTRIgvCOL3u+9iSdxSfwL5QgV0Rev0u10pRwR7wGO14N9cIdeGd3gUgOlO9wOFcrCsC+3ONgxMYg.BpDkab8qi9+s8Ce+XGM9zm9TYN+O+4OiPCMTwFuMx8xdMMKwDR.+7j+IL7gMDb5SepxMYg..wDy6vzl5Tv.Gv2h.B3Ik67IDoQd4QILrh3YO+YfOe9vRKsThmzAgWI5M1COfyMvYJYgJPpnhJvRKrfoRuhJ5nko2eB+2dOcWvUxNkrvutnlppg56fivih+L.gFd3x06+W+FAU0rat3JZRiaLkrPRYpp97U0TSMzxVzRvgCGDZXgg3hOdYQXRpFUGcqCzUWcQ94mORMszTzgiRuPK96e5QibGN4X8ojEVCilZpIZjaMDMpgMD..gDZHJ3HRNql80CPMNMyauPy71KEcXPHDBgPTxM8YMeL8YMeod9x8DFF3KCrZ43jRJo.e8cp3wO9wU5iwpW0JQN4jiD2e3gUwRX3Ke4KwD9gwgXiM1JU7b26dWLcemFJpnhj3bBJv.E690We8gckQa94e+2KiN24Ngqd0qTohsW7hWfgL3uC2412tRc6IjRiWQEgBJnfp0i4KdYP3EuLnp0ioxfODWbHojSVvUZtmRtJjSq3SBm81Yu7JzHkCqrzR..jUlYJSueD9u8NXO8u8eMygh+a+zSOc458axojB..btAMPtd+RpYqp77UCqW8fGMRPBGe7S7G4jqj+r7DkClalY.PvZs6WK5Q26B5Q26RE91I7uIn2SulMgcVhTRMUEbjHmTbKImCkwP4p4Lyog4LyoIUyc8aZ6X8aZ6x3HhPHDBgTafbMgg4me9HjPdS05w6mlzDAuJwBA+iezivku7kJy4DdDR+U8bHgDB99wNZ74O+4JbrTZ25V+G1zF2fD2efA9RwtcO7vCIdaN8oOEltuSCYmcUK1..l8rmIRo3SNHgTUTc2VRW4Z1HV4Z1X05wTQiOe9HvfEjDTWZfyPWczUhysvBKD.ftRzUhnlpB92hBqDuGUEgv+smppzutI7e+E97A4EgeFL0TmdsGhzqp97UWb1YXlolh7xKO7nG+XZ8yTIm4lYN.DzcWpo6R+60vk92xuK2LtwLBLtwLhJzwlOe9z6oWKgFZHnaOHueOYEkhDlvPUnDFprx+m7T3+SdphNLHDBgPH0.HWWCCe8qesX+Py5qu9vhhqDiuTpojBRLwDk3wLyLyDQGUTn9N4jTGG73UHVxRVb4NuvCS5SX3LmwzQlhoJRzPCMPO5QOQW6V2fkVZITUU0PBIDOdh+9iie7iI1aye7G6DcuG8.MpQh1hQe4KkPBCkvZ3x4N2YwuN24TlmHEyM2b3pqtAKszR7oO+YDQ3gifCNHwdaRM0Twblyrv912ApwuFjPTrxMu7PcpijS.FA3cwFCxLyLg5pqNbwEmUzgCQIWsg0FJRMX7A0JxHxMb3vA9z7liqd8qiDSJI7lPCAt4REecGmHeXhIFCUTQEjV5oibyKWnoFZpnCoJsCcjiC.fd2ytofiDBQ4gvNfjJbj6MvJBgPHDBgTNbwYoOuY.x4DFJopiajiZz3W9kYHwaWzQGMN6YNM14N2gX2+qd8qpPIL7uNxQPXEulOUVhM1XPd4kGyUHnj77m+bDRHht9Dnmd5g8efCglzjlvZ6t3hKn8suCXBS7Gw.5+2h28t2Jxs8R+y+HgDF9BwFCdJlVUXLw7Nrne62jXxBaPCbFyZ1yFcnCcDpnB6Ob+SeZ.X9y6WQDQDgH2t6b6aiab8qit1M5KJSp7n0wvxVQEUDBN3fA.fqN6BTWM5JMmPHJe3vgC3ymOUgWD4NszTK3SyZNt68uGBJ3fg4lYFLPeCTzgEQLTkqpvDSLAIjPBHgDR.1YqcJ5PhPHUSDlrPNb3PW3ZxY23l2F..coSsWgFGDBgPHDkaKeIKnBMe45k.VfAJ90uvxpcZB.Xu81iYNqYC2cW7yKRwjTKIIszRCaYKaVjs2+ALPQ1FOd7PTQEU4dLe1yDeqcXziYrhjrvRSe80Gqa8qWr6ye+EcsYL4jSVhsxGO+hJLjGOdXlybFRrMj1nF4NN9eeBzoN0YQRVH.PSap2X+G3PPas0Vr29+2MugX2NgHsxO+BJy0qyJpV+MsDs9aZY01wSQKpniBe5yeFZpolvImpuhNbHDBgPT5Xg4lCmpuSfOe93wO4IUqetBR0qRVGCSPAGIxGG6uOMN1eeZEcXPHxbEwWvq6xULmSAhr0t26Awt26Akp4tzEMOrzEMOYa.QHDBgPpUP9lvPIVcbhucZ9kpe8E+IM2XSLQpigMr90grxJKVay.CpGVzhVLTUUQK3xvCOrx8XFe7wI1sKtp96K4t6d.tb4Jx1SJojDYaRpBMszRKggFZHqsck+8ewydp3SjYSZRSvecziA80W+xL1rzRKw3+gIH184u+9Wl2VBQZTcVkg9NkeD9NkerZ63oHUHuBQvu90..ngt4FTka4WL3Buhd4CpJeHDh7iJBesGpBCIJHd5t6PWczAYjQF3MhoiePTNXtoBRXXBIlXM5WuXnCd.XnCd.k67N2EtDN2EtjbHhHDEKlJLjRXnRM2b0Y3lqzRbAgPHDBo7I2ZIoe5SeRrUqm4laNLxHijpiQbRHwbN5niR0sOnfBDm5TmTjsOkoLUnmd5AysvBDaLwvZegGV4mvP0UW7srz+2MtA5XG6TYda0PCMvV151Pt4jKqsqpZh9OMRZ8KTbIbce6auhctVas03PG9ufN5nSYFWBIop+L0TRUpt8DRYI2byCZokVJ5vPoSXgGNxM2bgN5nCbzdGTzgCQIGSKgD7AGZQjiHuQWrBDELUUUUzLuaFt0ctMd0adMrzRKg90stJ5vh7EzSO8f1ZoExNmbPFYlQM11G6.6eeUzg.gnToHdEu9ERILjPHDBgPTJ8H+C...sn4dKUyWtkvvfBJPwd0jJsUW36d2aQfhIgY1XisvGe7obu874yGKYwKRjVUj0VaMFwHGI..rxRqDMggQDd4draXCanX294O+4PKaUqPe5SY+EK6YO6U4de.H4JzziunRFCHfmHwpQbLi46k5jEB.3rytfVzRQayib.GviGOwVcjDhzJWZcLTD4me9LUHg6MrgzW9lPH0LP4Kjn.YpIlf56niHhHiDO9I9itzoNAU3Pu+oxFyLyLDUzQiDRHwZrILTVR3EdAsNvQpIoPd7..fpz4EPtq+8q2J5PfPHDBgTCvF27uC.fSc7CJUyWtkvPwkrO.oqsc97m8LL24NajSN4Hx99kYLCvUJZWem8LmAu3EhlvsYNqYC0TSM.HnEb9kBOrxOggt6t6hc64kWdX59NMbpSdRLxQNJz110NnolZVtGOwgOe9RbMf7KS550t5UE67zUWcwfGxPpP2uVZok3nG83UnaCgHsxKu7q1NV+y+dM..zmd1spsiohPngEFJnfBPc0SOXqM1VwO.7AnhL6qTz+1ST.3PsjThRBO8vCDW7wizSOcDRngB2bwUEcHQ9BlYZwILLwDfqt3hhNbjol3OLVEcHPHxE73UH..3Jlk2Ehr0vG5fj5456LEr9Et0MtZYU3PHDBgPpkP9kvPIjrqadyahWW7Z00WJmbxAu8sQiHhHBQ1GGNbvbm6uh9129Ut22e7ieDqacqQjs2vF0Hz6d2GlwVYkUhLmXiMFjWd4AMzP7scT.AU4XaaW6vcuycD698yu6C+769PKszBd6s2vKuZJZeG5.7vixOYoBESLuCYlYlhrctb4hF0nFwZaO5wORrGiuavCtBUcgDhrVQEUDxO+Bf5pqVU9Xc3iHHw10jSXXAET.Bq3pZ18F4NcElSHDkdz5mJQYgZppFZt2diae26hfe0qfUVXIzSO8TzgEoTLs30c9jSIETHuBkp0nYkM+4dN...lzD99xbdcoSsWNDMDhhWgERUXXMAwEW7J5PfPHDBgTCgb6ao8RIzNMCHfmTgNNZpoln8suCXHCcXnssssR0sYaacKHkTRQjs+q+57XcB4szRQSXHOd7PTQEEb00x9pTdyaZKn28tmH93k7GDKmbxA26d2C26d2CacqaAVZoknm8rWXbi+GfIE+EnkDIs9E5jSNAs0ValwYlYlHj27FwN2d0SpkUPT9jad4UsjvvZChHpHETcg0stvJwTwyDBgnzhxWHQIfYlZFbvd6QTQGMdb.OActCcjt3aThngFZf5YfAHszSGImbxvbyLWQGRUX27+DbAhVdILjP9ZAUggDBgPHDhxsN0w1WglubYw8H4jStLSjVEQ8quS3a+19i1zl1HUyOhvCGG5PGRjs2l1zFzpV8Mr1lkhoBCA.BO7vJ26G8Mv.bvCdXopEqJzG9vGvd1ytQW5bGwQNxgEY8UrzjTBC+x1QZTQEkDON1ZmcRcrQHxK4kKsNFBH3hSHzvD7ZMtUKuMcQHjZOnVRJQYSi8zSnkVZgTSMUDQjh1kRHJVlYlY..HgDRTAGIDBo5.UggJN6+PGE6+PGUQGFDBgPHDkbSZBiESZBiUpmubIggAEj3aGoUFAGbPXRSZhXNyYVkYB1DZoKcILW0aBwgCGLm4NOQlq3VCCADjzQoQ8cxIb5ybNrjktLw1dSkjO8oOgkr3EgkurkJw4HoJzziuHAkomdZhcd5niNnd0qdRcLQHxK4lW0SBCG5PFHF5PFX0xwRQH529Vjat4BczQGXs0VqnCGRMHTKgjnHQO+inrQc0TGd6kW..HvfCF4lWtJ3HhTZlYpfDFFehInfiDYq0swsg0swsonCCBQlqvBEbtVTkpvP4tqb0afqb0aHUyce6Z6Xe6Z6x3HhPHDBgTafb4S0Iopiqcsu8nAMvYQ1N+hJB4jSNH12GKB3IOAYmc1hLmydly.ar1FL0o4qDueu5UuBdvC7Sjs2u98svM2bSjsat4lAtb4Bd73wZ6gIEUXnPpnhJXTiZzXjibT3IO4I3hW773V+2sPBIT9UX4gO7gP6aeGP6Ze6Ys8BKrP7FIrNO9kUXX5oktXmmM1Xiz8.fPjyJnfBPQEUDTQkp10uv.+19T9SRIUQ7KBuIzP..fqN6LTgib4Z4nJImbxAu6cuCppppvLyLC5pqtH93iGImbxLyogMrgfawWswAETPLUfj95qOyqIkVZog2+92ybape8qOq1rLgjat4hvBqj2G1BKr.FYjQ..H8zSGwFarL6yQGcTpWqdK8ZqrAFX.kn9pppw7EFarwhzSujOOiGd3Q02AWApnhJBAGbvLiMxHifEVXgTcae26JYsrVEUTQj0uZBaVZgkvbyLCwmPB3kAFD7oYMSQGRjhYjgFBUUUUjUVYgbxIGnkVZonCoJjY8KSUpl2SB3Yx3HolmO9wOhniNZlw1Zqsnt0stR0ssvBKDutTeeXSLwDlpUknXUPA4C..0TScEbjPJK5oWcTzg.gPHDBoFB4RBCCLPwmvvoMsoiF23FK18IT1YmMl4L+Eb8qcMQ12912dw2OtwCc0UWQ1Wt4lKV0JWgHaWc0UGyXlyRr2Wb4pJL0TSQbwEGqsGdXRWEFVZb3vAMu4MGMu4MG..gDRH3pW8J37m+bH1XhQh2tUspUHRBCCKzPQt4J5UGsVZoEZPCZ.qskcNhlbU..8zSuJ3i.BQ9I2byCZqcMqSXT0oXhMV74O+YnolZB6sy9J0wfCGNfOe9x7p74wO9wXpScpHf.BfIAfqXEq.KXAK.acqaEqcsqkYtIkTRvXiMF..Mu4Mm40wF9vGNN5QEz9bNyYNCl3DmHys4QO5QvGe7Ql9XnVqZoE3U3gGNq188V1xVfu9J3hE57m+7XbiabL66d26dn0st0R0wsIMoILcpfwN1whCbfCTMF0e8PVzRRWzhVDN3AOH.Djbru7B4plpO+4Oy54x95quXKaYKR0scNyYN3jm7j..PWc0Ee7ieTlDi0l3USZBtx0tFh9sQi56fCvPCMTQGRDH3uoMwXiQbwGOhOwDfCUxO2ihhOMuoJ5PnFq6e+6id1ydxL9zm9zXfCT55NHomd5rd8ye8W+Ur5Uu5p8XjTwkeAE...0UiVS5IDBgPHDkQm9rWD..CZ.8UplubJggh1RRUSM0DaU98kzVaswV1x1PSZrGHuun0E9wO9Q7rm8Lz111VQtc+4e9G3Ce3Chrctb4hebh+fDu+RKMQaomwFaLH+7yGpqdk+plyEWbAt3hKX5SWPxOW3BmORM0TEYdQEUTH2byEZpolLaSRUnYCaXiXpdGgjzUoYoqfGoUAETfXqtSUUUUotBNHDoQt480aBC4ymOdSHBptvF3jSh72zJShLxHQG5PGPN4jihNTHDhRBpkjRTVUGcqCbwYmwqeyaP.O+YnqcpyLOeknXYlYlg3hOdjPBIViKggDBgsBJNggpQILTtap+7DK+IULgWXWz6CRHDBg70mSbpyB.knDFFaLwfLRWz1joqt5lTm.NMzPC3gGdhm7D+EYewDy6D89L1Xwt20eJ1iUN4jCdyadiTc+JDOd7PjQFIb0UWY11qe8qQxIkjHy06l0rxMYZcsacCMwKuP6aWaDoxAKpnhPDQDNZTibmYaRZ8KzyuX8KD.P+5puXmaBIj.JrvBqPqs.qZUqDG9PGTjsO5QOFr3kH40aQBohJubq5qig+wt2O..9oINtxYlJWhK93QlYlITSM0fSNVeEc3TlV25VGqjE15V2Z3kWdglzjl...qrxJ3s2dyreo40aLxHiXcanKFAh7RSaZSYN4I1YmcJ1foFLgm1opwBLjHFN3fCLuVYMsV3nhjat3Jd66dGRO8zQjQEIpuR96y90BgqigIlThfOe90JOA1KawyWQGB0pnpppx5yKZokVp.iFRoQILTwosstUR8bG7v+d..bpiePYTzPHDBgPpsPlmvPwUcg.nbaEoeoO9wrD61E2Ijdkqb4hTMhUUQDQ3rRX34O2Yw912dEYdG5vGAst0sobOdFarwnacq63BW37hru2+92yJggR52gdJleGZqc1J14xiGO7e27lnqcqakarAHXch3et3EE69Fzf9No5XPHRq7xKup7IL5+t0cAPMuDFFRwqcg02QGU5+h1k90hLzPCwctycXs1SNkoLELkoLkJzwr+8u+n+8u+UawHgHs72eQuHjHUBBecaJigxTqd0qlZ+dUBppppnId1X32Ce.BL3fg0VYMzPCMTzg0W8zqN0AZqs1H6ryFYjYlv.8E+E7nxnEt3UB.fUrzETlyyUWZPYteREiAFX.dxSdhhNLHhQ94WbBCUW496wPHDBgPHDoiLOggRr53p.ILL6r+LhLxHE69L0TSYM9d26d3FW+5Re.JkBOrvXMt9N4jXm26d26jpDFB.Vmn8RyHiLh4myN6rQDQH90PQO8TLILzV6folZJRLwDEYeae6aUpSX3111VQ5oKZ6Y0M2bCMrQMRpNFDhzpH97QAETPUps+VSTFYjARNkTfJpnBb1opoSrjL3b1+5W+Z..jbxIyrMKszRDRwsRUas0VniN5fjRJIjRJovLGmc14xsEqld5oi3iOdlw1au8LUOSngFJyZWlwFaLL1Xiwm9zmvie7iQ.AD.L0TSQCaXCQSaZSk3qmB.De7wiG9vGhvCObznF0H3iO9.yNVEho...H.jDQAQkLxHDe7wizKtB30PCMfiN5XE4WKJMTgCGTDp9ZIjBaM1B8ksO7LxHCVq0uN5nirNA74kWdrdOaCMzPQdu5HiLR7vG9PDe7wibxIGXfAF.mc1Yzt10tp0Sl+m9zmPLkZcClCGNLW7OBedM.f95qOrvBK..X87XUUUUzfFz.vmOe75W+Zb+6eejc1Yy77txZMQK2byEO8oOE96u+Pe80G93iOvUWcE4kWdHpnhhYd1YmcPas0tZ6wr7l7pkjxiGODbvAim9zmhzSOczzl1TzxV1RQd9BOd7PngFJyXKszRT25VWjat4hKdwKhvCObz291W3t6kbgYwmOeDUTQgm8rmgHiLR3t6tiVzhVHUq4cu5UuBO8oOEwEWbnfBJ.0qd0CMpQMBey27MUnt5fPgDRHLqsl..Vas0nN0oN38u+8HqrDbwyohJp.WbwE.H34Yh64SIjPBvO+7CgEVXvImbBd5omvII7YWE96fPCMT7vG9PjQFYfl0rlgl1zlBszRKDd3gyTAI0qd0ClYlYU3GWJRVakUvLSMEIjXh3kAEDZdopRIhhiolXBh9suEIlXh0nRXXnUh01d4gLxHC3u+9im+7mC6s2d3iO9.as0VQ9bVt5pqfCGNh7Zkh68pyJqrXsrVXiM1.c0UWVyIyLyD23F2.u+8uGYlYlvHiLBN3fCnyctyR8EBWRIkDtyctChJpnfyN6LZbiarHU9+WFuFYjQvDSLA..wEWbHiLx..k7443wiGBLv.ge94G3ymOZXCaH71augd5omDiiO+4Oim7jmf.BH.XlYlAe7wG3jSNIxmkn90u9e08cVJK4WP9..Pc0nemPHDBgPHJiF6nGdEZ9JvJLrIR8wXYKcoLmnhRSUUUEMoTGmBKrPr7ksDwdLb1YWfN5V9s5tO+oOiPKtheJsvB+KRXX8EeKM5xW9RXnCcXk6IIO+7yG2+92Sr6yRKsh4mCN3fYNg4kV8pW8fUVYkHaG.nUeSqw4N6YDY6u90uF6bm6.Sdx+bYFaW9RWB6bG+tX22Tmpuk4skPprxM279p6KeGVDQ...ar1FVqaoJaZXCanHaKv.CjY6W6ZWCcsqcEaZSaBqcsqkYNIkTRvXiMtLO1m9zmFSbhkr9a7nG8H3iO9..fV0pVwrtx9a+1ugt0stgd26dybRgDpScpS3nG8nhbhtJnfBvzl1zve9mraQ0Zpol3BW3B3Tm5TXu6cuLOFCN3fKyX8qEKYIKAG4HGgYbHgDBb1YmYFu10tVrl0rFlwm6bmCe629sLiu7kuLF3.GHy3Ce3CiQMpQA.AIWYRSZR392+9h89VGczAqZUqBSaZSqJ+3HqrxBctyclohD3vgC10t1ESBCc2c2YRLyXG6XwANvA..vV25VwpV0p.ffDU+129VLfAL.bsqcMVGeCLv.bvCdPz29JZOf+5W+5XnCcnLIjVnQMpQgoLkov7bb.AWnSst0stJ+3UQSVVfgolZpXfCbf3N24Nr1tat4FN9wON7vCOX1VVYkEqWy5PG5Pvd6sGCdvCFIjPB.PvmgRXBCe0qdEF0nFEd9yetH2ucpScBm3DmPrINzO+7C95qu3oO8ohMl0We8wN24NwvF1vj5GmKbgKDqbkqjYbe6aewoN0o..vLm4LwIO4IA.ft5pK93G+H..dyadC7xKuXtM24N2AO6YOCyXFyfok6JzLm4LwpW8pE4j3Ge7wiALfAfG8nGwZ6N5ni3V25Vnqcsq3su8s..vWe8EaYKaQpeLorvqlzDb0qecDUzQAmbzQXfAFnnCou5YpIlJHggIkHboTuGCoha6ae6XFyXFnvBKj0123F2HzQGcvjlzjX1VN4jCzTSME40Jm0rlEV+5WOqa+0t10vfG7fYFekqbEz8t2c.HHAdScpSEG3.GPjkXC.Au+4RW5RwO8S+TYF6G3.G.SXBSf022kKWtXYKaYXdyadLWTJokVZrh2e8W+Ulpt929seC6e+BVZBb2c2wsu8sQO6YOwie7iYceYgEVfie7ii1111JRbbhSbBLtwMNjc1YyZ6yXFy.cnCc.8oO8gYagGd3R7bA70Hgc1IMz3qquGmxfksJA+M6hl+rK24pWcpirNbHDBgPHJo5UO5ZEZ9xzDFxiGO7pWI5IfUe80WpVufd26dK13F1.t7kujX2e6aeGf9k5K7efCrewVIh1Zqc3BW7ejpqxwXh4cnCsuchr8HBm8USpiRXMP4wO5QXMqdU3Wm27kXRCyImbvOMoIxpZcDxc28.lat4Lik75WnjqPyw88iSrILD.XiaX8HhvCGKeEqTj0JrLROcrl0rZb5SeJQNISBtO8TpqPQBohJ27xC5gJ+WjY1yXpUiQirW94mOyZvpSzIcnbc26dWrwMtQQNQN..27l2D+3O9i37mujV7Le97QO6YOw+6+8+DY94latne8qe09NYOUSIro+8u+rRX3MtwMXkvvuLoM25V2hUBCudopxeUUUUz6d2a..7xW9RzoN0IjZpoxre0UWcns1ZyjD3O+4OCe80WnkVZgILgIToeL74O+Yzqd0KljEphJpf8u+8iwLlwTgNN4kWdnqcsqvO+7Sj8kd5oiANvAhniNZVW.O+8e+2Xjibjh8h84HG4HU30QYkckzJokMYLrnhJBMu4MmUUzIzqe8qgO93CBJnfj3eOGQDQfIMoIwZ8WUn+9u+aL1wNVI1F6u4MuI7wGevUtxUXUcd2912F8pW8h0qGoolZB0TSMlD4kQFYfgO7gi5Tm5v72.kkUtxUxJYgCZPCBG6XGqB2ppWyZVCtxUthX22F23Fgc1YGqVG8G9vGPyadyYU0vBEYjQh1291yTYi0joWczCMvImPHgFJdYPAh12VQ+r9D4KSMUP0gkbJofhJpnxrSATSzz9k4B.fss40VNyrp4W+0ek0EqUoMyYNSVq6eUmF+3GONzgNDyXM0TSnt5py75EImbxXxSdxfOe9XxSdxh8Xrm8rGb8qecQ9dm73wCKXAK.MnAM.CZPCpBEWYjQFncsqch8h.Kt3hC8t28Fu+8umUkFt8sucIdgJsoMsIb26d2JTL70l7ElvP0o18r7VPA8Jodt6a2aWFFIDBgPHjZSjoeyrHhHbwdxcyO+7wfFX+k3+0u91GzTuZL5XGZuDSVngFZHV7RVJy3jSNYr8ssUwN24Mu4K0mvEKszRw1BohIlXP94mOy35V25h1091K1iw92+9P6aWavN24Nvct8swadyaPjQFIt6cuK1v5WGZWaaMt28De0EN5Qy9jYFjjV+B8zSI9XvsF1PzoN0YIt+KbgyilzXOPO6Q2wbmyrwu8aK.CZf8Gey2zRbpScRwlrP8Mv.r4sH9e+RHUGxK2p15NZyaVSQyaVSqlhFYundaznPd7P8pW8fg0qdJ5voLcqacKbqacKXqskrFo5pqtxr8l0rlIyig6bm6.tb4hEtvEhCdvChoMsow5jK9O+y+vpcQc1ydVVIKzAGb.6YO6A23F2.Ke4KGb3vgpnPInacqaLsEV.AILTnryNaDP.AvZ92912l03RO+10t1wTIOabiajUxBO7gOLRKszP5omNt28tGq1x4YO6YqzwuvDBKrJF4xkKNxQNRENYg.BpVM+7yOz+92erqcsKr4MuYVWvSEVXgrpf0byMWL6YOaljEphJpfYO6Yiqe8qiCbfCfl0rlIxu+poiIcgxvJLLpnhBCbfCDm6bmCm3Dm.coKcgYe4lat3W9keQh21MrgMvjrPc0UW3fCN.MzPCjPBIfIMoIwjrPu7xKr+8ue7u+6+hwO9wi5T7UhejQFIqpyA.XEqXELe9VUUUUboKcIjd5oirxJKbwKdQVu1z4N24J2GeadyaFKbgKjY7vF1vve+2+ckZcs8JW4JvEWbAqe8qG6cu6E8rm8j09+8emcGjXEqXErRVXW6ZWwoN0ovEtvEv3G+3QTQEESkdWSmat3JTSM0PBIlHRHwDTzgyW8zRSsfd5oGJrvBQpokZ4eCTRrkMtZrkMV9qmnwmPhH9DDcIhn5TDQDA13F2Hy35Tm5fMrgMfadyahsu8sCqrxJYx64jSN4fie7iyLdbiabHqrxBYjQFHjPBgokIC.QpZwR6ZW6ZvKu7BadyaF6ZW6RjJ+6Ke8JoQrwFKBN3fwnF0nvd26dw5V25XZco..e7ieDG9vGlYbZokFqW+Uc0UGKcoKE+u+2+ioqDTa68sqtkWwmiDZ8gkPHDBgPpcPlVggRpcjlc1YK1V+jzRc0UG+4t1My5MD.vZW6Zvm+7mEYt9zhVftzUourK4xUUXs0ViniNZVamGOdHxHijoUlA.rl0rNzydzcwtV+EWbwgMtAI+EjDmw98iCCnTswMfJWEFB.r50rVzu91aVqYEklf0AhPDa6W8Kot5picu68.as0txctDRkUAEVH3wiW41NeqMfOe9HhhaGo0Dptv1W7EGQoqJ45V25xrc4kKcoKwbxjFyXFC3ymO191Eb0xVTQEgW8pWAarwF..VUpScpScfe94Gy5tUm6bmgmd5oXakjD.s0Vazst0MlJ17V25VnvBKDpppp3gO7ghzhvCJnfPpolJLzPCQjQFIqJAq+8u+.Pvy4CN3fg0VaM..71auYZSo..st0sFd4kWLI46YO6YUpXO+7yGCbfCD27l2D..polZ3XG6XU3JTnzF1vFFN1wNFy3t10txpsnETPAw7yG9vGl058z5V25vLm4LYF+ce22Au7xKD1WrtHWilvJLTFlwvgLjgfie7iyTMiCX.C.ctycloZWuzktDBN3fQiDyZrbN4jCbzQGwwN1wf2d6MSx7F8nGMxLyLA.PCZPCfe94GSqgtG8nGnYMqYLIJ7+9u+CADP.vau8F4jSN3su8sLOWtW8pWnW8pWL2e8oO8A1YmcL+cP48b4+7O+SLiYLClwiYLiA6e+6uRWsUFZngve+8mIgmiabiCt6t63UuRPUHDVXgg7yOent5piDRHAru8sOlaaqacqwku7kYtv45ae6KzQGcv1111pTwhxF0UWc3lqthWFXf3kAFHLsylVpJjknHXpIlhrxJKjXhIAiMprag4JKrzByK+IImrt0sNVsgz+4e9Gzt1In5Y6XG6H5Uu5EbyM2DaKCsp34O+4rtPZs1ZqYt.Gb1Ymw1291we7G+Ay9SLwDEoswCHXI93AO3ALKIAicriE1XiMHwDEjn0R+9qUD+xu7KXSaZSLiaZSaJ5Tm5Dy3Reb+8e+2YUE06e+6GiXDi..BZK0CX.C.MpQMhIlHrUTQEgBJn.vgCmJ0E4BgPHDBgPj81x1E7Yym9TK6kK.gjoUXnjR1UUgVZoEVyZWG7xqRpjnm8rmhyeNQqFAUTQErvE7aU36C6rydwt8HhfcaI0DSLAqZUk+UXpzn+CXfXgKjcrlVZow5DOVZdTFUXHffSXzt2y9j3iEoEGNbvF1vlPSaproc1PHkVtRnsvUaS7Ij.9zm+LzPCMfMVYshNbpQvQGcTjq7bgqiNBIb8IK+7ym0ErxvG9vYRVnP8oO8gUKFjv1.Fv.X94O9wOxr1lU51QZKaYKAffjAJb6kt5B4vgC5W+5GyO+rm8LDSLwfXhIFQpfvae6ayJwJBWaAqn94e9mw+9u+Ky3cu6cWkRVHffDtTZt4laLIKBnjm2A.VUgfVZokHqcS5niNrVyNqMPXBW3KiZIo..ye9ymUhcTUUUwblybXMGIchkUQEUvUu5UQyadyYkDtqd0qx7yie7iWj0Q1QMpQwZctS35cpVZoEhHhHXdtboOo374yGm+7mm0EcVY8b4qbkqvpU80m9zGbfCbfpTqYbPCZPLIKDPv+9z0RcgywmOelS7cfAFHqK..e80WQ5xFkNYl0Fzf56DzVKsP5YjAhI1XJ+a.QlxrhaKoIlDkLF.Tg6ryk98bZZSaJSxBExd6smUKCu5Ro63D..KaYKCe228c3u9q+Bu6cuCctycFm4Lmg4+DWxBA.FwHFAq0ub0UWczwN1QlwokVZrRLoz5Kee6NzgNv59QRuus4latHq6rFYjQrt.mHrkW9B9tapqt5zEfgBvZW0RwZW0RK+IBfXi8CH1X+fLNhHDBgPHJi76AOF98fGW9SrXxzDFJoJLrxPSM0DiabiG29N2C8qek7EeJpnhvRVxhEaazb.CXfvsRUE.RK6r2Nwt8vESEAz0t0MrgMrQXiM1JlaQ4SCMz.iZTiFqcsqSjOjsjR3pM1XKzWe8K2isat4FtxUuFl9z+kJUKBwQGcD+4etazKoXs2gPpNTUZKoKXQq.KXQqnZLZjcBu3K9.Gr29psJpTE4vIsWQRXkCVZFaL6pQPXUlGYjQxZ8iqzUFdo0vJw6OnTRF7u88t28lUhCDlHPgIFTGczAyadyiY+BaKokNggd6s2rVa+.Djrhae6aiUtxUhgMrggVzhV.80WezgNzAw1ByqnBID1UMeoSJTkU48buR2cCBMzPY9Yas0VVsYUgDWUvUSlrtkjpolZBO7vCQ1tO93Cqwk928kV6ZW6DY8MLwDSj05H8bm6bAGNbX8e5niNH8zSmYNe4EvEOd7vUu5UwhW7hwfG7fQyZVyfd5oG5e+6uX+LohSXgEFq45u+9Wka+mUjWq7K+cl3dsRas0Vnqt5VkhIkIb4xEMpgB9av.CN3J8Em.o5gwFaL3vgCRI0TYUob0Fr+876X+6oh2RMkV74ymU0pKoOqir38brzRKw2+8eOqX4zm9zXTiZTvN6rCVYkUX7ie73wOtrOoDRyqWUY9rAe4wkCGNvHiLhYrjdeamc1YwdAaTa68sqNIrsdSsiTECGr2V3f8R24gZFyYAXFyYAx3HhPHDBgTafLqkjlWd4gPCo7a2kRholYFryN6f81YOr2AGPe6a+Xs9CHzIOweiWIl0gJs0VGLyYM6J08sjpJuv+hJLTn9OfAh91u9gKb9KfcrieGu8sQK14UZlZpoXDibTXXCa3ndRX8KSRIbswMtraGokl5pqNl5z7Ee621erhUtb7.+d.xNaQacqklUVYEl1zlN9192+uJZOjDkGUkJLLrvinZLRjc93m9HhOgD.GNbP8czQEc3TiQcqacEYaeYkvH7htnzIKrrT50oOBaFXfAn8su8LqCj23F2.ye9ym4j+05V2ZzoN0Int5pi7yOeb6aeaviGO7e+2+wbLD1NREJv.CDCcnCEu4MuQj6OiM1Xnt5piO7gp2q74SbhSfAO3AyphIqnJum6U5K1Go44d05ddmLtkjZngFJ1safAF.Nb3vjvsRuN7UZNJlWmszq2oRqjRJIle9N24NXLiYL3cu6chLOqs1Zjc1YyZ85TZkXhIhoN0oxpE3VQIqdsxO8oOUoiIkM1amcHjvBEYkUVHhHiDMfp1bEF0UScXfAFfzRKMjbJICyMS4oceJIi8GDTUvGbu6rLmWcjCIZWV+dNk0E+vd1ydPKZQKv1111XZ4wB8gO7Ar+8uer+8ueL8oOcr4MuYwdLpHudUEgd5oWYdb+p+8sqFIrc2p0WTk9DBgPHDBolKYVBC0PCMPngI6OA9CcXCGCcXCuZ8XNxQNJLxQVwZ8Hb4pJFv.GH5+.F.RJwDQbwEmf+KdA+etbUAVZgUvRKsDVZokvYWbQjuPzWxWemN702oWUdnvvZarA6ZW6A.BNgTuM5nQTQEEhN5n.e97g01XCr0FaE7+s0FvkqLc4sjPDq7xKevmO+Z0szlHhLR..Xg4lCczVmxY1jJBgmXK6ryNVaWbInpr1dMVUy4qo+8u+LILze+8GW6ZWi4JIuCcnCPas0FsrksD24N2AAGbv3e+2+EYjQFL29R2Fz9zm9D5QO5ASRczVaswjlzjPG6XGgyN6LbvAGv29seaUNggZokVX8qe8XFyXFLswrIO4Ii10t1IwDOUUU5Snpc1YG7yO+.ffjRkc1YKRUFVa64cx5VRZRIkjXeeAgaWH6sW7WrWhqiL3fCNvZ7O9i+H5Se5SYFGBWCW+vG9.5W+5Gy5enAFX.l7jmLZSaZCb1Ymgc1YG71auk5DF5qu9hG7fGfm7jm..fie7iigLjgvzNekEJqWq7Kq75TSMUVUiYsAb3vAd5tG3d9ce7p27ZXuc1Qq8VJPlYhoHszRCIjXh0HRX3m+bUuZ3qNvgCGXqs1xTgbeYE1Kjz9dNhq0eVVU7LWtbwDm3DwDm3DQrwFKt8suMtyctCt7kuLqV94V1xVP26d2Q25V2jp33KIsUrck8XZmc1gHK9ylGVXgghJpHQpxvZauuc0obxQPBC0TSJopDBgPHDhxpENuYUglOkUnpYb3vAlZlYvTyLCMwKuTzgiXYpolBSM0T3SKZghNTHDV3ymOxO+BfFZnd4O4ZfJpnhvaKthTbp9xnJZn1YGIsBQWc0EVYkULsPvScpSgUspUwpZtu0stEdwKp9WmcqM4a+1uESYJSA74yG73wCKYIKgYecnCc...ctycF24N2A74yG+1uUx5vqyN6Lq1i1ie7iYUAX6bm6DiYLig08mvDvTUru8sOLrgMLjPBIfUrBAsn3DSLQLsoMMbzidzp7wu7T5GyYmc13vG9vXRSZRLaK+7yG+9uK6ZQcJBx5VRZAET.t6cuqHqMW27l2j0XWbwEo9XZngFByLyLlSpspppJ5Uu5kHy6ye9yLUOgv03v+6+9OVOW8Dm3DnKcoKrtcR6ykGv.F.1xV1Bd1ydFZdyaNSktLoIMIzl1zFI1AJpt7k+NaW6ZWXfCbfrRN6l1zljowfhhkVXAL1HiPxojBBIzPg6TKGTgwTSMAuNj2fDKUU7Va.uha2sbqBqIokGWc0UlDFFP.Af.BH.3s2krtyGe7wiie7iK1aqt5pa4Vk1gGt36tNgDRHLUXs1ZqMZSaZCF0nFEF0nFEJpnhvpW8pwBW3BYl+8t28pzILTVyUWck48ShKt3vEu3EE4BdZ26d2JpvSoGUggJV+3jEbwkuqctkxctt4pyx5vgPHDBgnjxSOpXeeWY5ZXHgPHUT4lWtUpa2V2zZvV2zZplilpWwmP7Hu7xC5ns1vTwzhkIUelxTlByOmVZogN24Niye9yifCNX7G+weHSqdmZKrvBKPyadyYF+7m+b..Tm5TGzzl1T.HHggB8xW9Rle9KaGoQDA6NNPCZPCXMN4jStbWqijFVas0..XAKXArphricrigKbgKTkO9kmwO9wyjXI.foMsogMrgMf.CLPb0qdUzktzEDrXZi50nIiaIo..KZQKh4jRB.jd5oiUu5UyLlKWtnIMoIUniYuK05y7QNxQPzQytcxGSLw.GbvAXjQFAiLxHb9yed.H5IP+KetbHgDhHOeWRD97Uu7xK7y+7Oyr8DRHA3qu9J8OXpjbwEWX82v+u+2+CiXDi.28t2E96u+XVyZVXUqZUx73PQwyhWaLCM7vPd4W4aI5jpFiLzHnhJpfLxHClpXWYlv04zxyPGw3vPGw3jowRo+rN..8pW8BG9vGFu90uFm7jmDey27MrVu9JM0TSMVqqeW+5WmUEElXhIhibjiH1a68u+8Q26d2Q26d2Qm5TmX0cATQEUvnG8nYMeyMW4sxQm7jmLq+8bTiZT3O9i+.AGbv3hW7hnMsoMRrkWS.xI2b..X8YeHxOokdFHszyn7mH.V5hlGV5hlW4OQBgPHDxW8nDFRHDkJ4kqnsDIogElaFrvbyplilpWQ812B.As+nZyscUkA+zO8SvBKrfY7ye9yQ+6e+g6t6Nl7jmL9zm9DrxJqTfQXMChas+qMsoMLqusMqYMSrqAQeYBCKck2A.rjkrDDXfAh2+92iKdwKht10tx5DEKtViVEglZpI1wN1AqsMoIMoxr8pUcvLyLi0IvsfBJ.yd1yFd5omnG8nG3t28tLIIp1BYcKIE.3t28tnksrkXkqbkXwKdwnksrkrVyrl3DmnHsWyxypW8pYpfurxJK3jSNgN24NiMtwMhwLlw.u7xKl0sPGbvALzgNT..3latw53L24NWlps4zm9znm8rmr1uz9b4ku7ky5jp+W+0eg+4e9mJzioJiEu3Eypcbd7iebzt10N3iO9fMtwMB80WenqbXsXSQvHCMBlalYnvBKDgIgJohH6wkKWXbwItJojU9qxvSdrCfSdrCnnCC..zoN0Iz912dlwIkTRXLiYLngMrgXHCYHH5nitLeOGe7wGleNqrxBd6s2X5Se5XBSXBvSO8Thsi3RWU0ETPAnm8rm3V25VHgDR.ADP.XhSbhrleaaaaqjOBk8b0UWwHFwHXF+oO8IL4IOY3t6ti90u9gW7hWTq68sqNwTE9ZQILjPHDBgPpsfRXHgPTpjaMfqt7Ji7xKOlqPY6s0NEav7U.8zSO7jm7DVmLLgTUUUwgO7gQ26d2U.QV0OYYBa9xD+ATR6HEPvI5szmrR..KszRzrl0LVayGe7Ad5omLiu90uN7zSOg0VaMyIjqzq0be7iejo8LVY08t2cLnAMHlwxqp1ZcqacX4Ke4h8hBnG8nGxkVip7jrtkjZiM1fF0nFgW7hWfEtvEhksrkwzB9.DTkdBa+rUDFYjQ3.G3.LI7lGOd3l27lXVyZV3vG9vLqAgFZng3Lm4LLIIuacqavFarg43bhSbB3pqtB6ryN7ce22gniNZVOWN8zSWphG8zSOr4MuYVa6G+weTpu8UVst0sF27l2DlHlpd2byMG28t2kUUHUaSCKNAvgEd3nfBJPAGMe8R3y+ps0VRkG92+8ewvG9vE69l0rlEl+7muDus+xu7KrFGczQist0sh8t28hjRJIL0oNUwd6r0VaY85UO7gODcricDlat4nYMqY3pW8pL6a1yd1vc2cuh7PRt6fG7fX5Se5hceibjiDaaaaSNGQ0bjSNBpvPsn0vPBgPHDBQo0rl6ugYM2eq7mXwnDFRHDkJEVXgU4DEnL5cw7NvmOeXrQFUqsZMT1XgEVf6cu6A+7yOrksrEL8oOcbfCb.DRHgfQNxQxpZyzQGcTfQpxKmbxIzvF1PVaqzILDfcaIE.ne8qe9bwryI...B.IQTPTgjrLMzPCb9yedwljVarwFb9yedrxUtRlswmOe7nG8npZ3isrksf5Tm5vLVdT0Vb3vAKbgKDQDQD3nG8nXlyblXMqYM312913hW7hrZsl.07etGSBqkQYLz.CL.26d2CcoKcApTp0BLNb3fAMnAgW7hWToWq+5ae6KBN3fQe6aeEocpoppphgLjgf6e+6iF23FyJdtzktD9lu4aD434pqthacqawpJSSLwDEocmJICYHCAcsqckYb7wGuDOI1UmZSaZCBMzPwUtxUvxV1xvbm6bwYO6YQPAEDZXCaHq1MXM8mu9kLxPifIlXBJnfBPXQPUYnhhIFKHggIIgJZqln5VW8Pcqqdx76GszRKbzidT77m+brm8rG3qu9he+2+c7zm9Tr90udVWzApolZPc0KYcBuicri3bm6bvPCMj0wrd0qd3nG8nXxSdxR79c5Se53jm7jnUspUhc+t4laXG6XGXcqacUwGgxdb4xEadyaFu4MuAG5PGB+xu7KXSaZSvO+7CG9vGFe7iej07qs85fUEYWbBC0VKJggJBG6v6AG6v6Qpl6Cdj+3AOxeYbDQHDBgPTF8tXhEuKlXk54ygeYbFdhJ52UsDTDBgTQXpIFCczQ6JzsYLiWvI03P6amxhPpJ6p235HiLx.M26lAGr29p8i+oO6YPg73gA0+A.UUU0p8ieMMO6YOi4jjoolZJxI2uvBKDFYjQHyLyD..CZPCBm5TmpZON96ScR..LzuavU6GagNy4OGJnfBv.522x5DAprJlXhAgGd3fCGNnAMnAvRKsrVSK5MwDSj0ZTXiabiE4DwNqYMKrwMtQlwojRJhLmJK4wy29R2712BImbxnisu8LmzeYkryNa7p+O6ceGdSU2EG.+aFcuaS2CnKnTnrDYohhkkHJCkghrcAtQTbfurDETAQkkHJhKDAbgCTlxP.YSgR2kV5Nckl1RynIu+QZtzPtoMoMI2jzymmGddHI2bumll1l6876bNW4JPpTonu8su5TIesWM1XiHyLyDYmc1H3fCFwFarvO+7qEeNYmc1H6ryFt5pqnKcoKHjPrsaK12J0pUiCcnCwjr2vBKL8Zevm7jmDCZPCh41aZSaBO0S8TlkiOW79U1TZYkgC8OGFN6ry3Au+wP+MTNfJUpvO9y+DT1XiXbOf9Iv2VRUMk.c+Li+9GsToRE9gcuKviGOL4Gdhs51mYlYh7yOelaOjgLDcZwv..2y8bO3e9m+A.ZZI9rs.FToRExKu7PFYjA5Tm5D5ZW6pI82kKpnhP94mOJqrxfe94GBO7v0YNBaKS6mIQqALfAn2B66wdrGio6.3ryNiFZnAi50GakeGmkhZ0pwN+wcCUpTgGdBS.BEP+tSaYS7QlI..141+RNMNHDBgPHVel5mCf9TcDBwlSCxjYxILr95q2BEMseUWc0n5pqFBEH.QRyMOqhu4a9FcZWV6d26Vm4w2d1ydXRVH.6sdShkQTQEkNszQGIRjHQmJtbDiXDXu6cuLWXQoRkhe9m+YlG+ttq6xrkrPthktkj1bt6t650taMWDHP.RHgDPBIjfQ+bhM1XQrwFqEIdrF3wiGdwW7EQJojB..7wGevktzkz4mO+lu4aX9+N6ry39u+62pGmVZAGTPPT.AfxqnBjU1YiD5ZW45PpCG974CQhDgRJsTTlXwHJa3YF2SNWMU8qsvEc+zm9z5L+8d8W+0w67NuCysyM2bwwO9wYtsg9rN74yGQGczH513BZKrvBSm4Fs8jqcsqoye2dZSaZ3q9puh41kWd45zhUYqKJzQkLYxfJUpfyN6LkrPBgPHDBwAB8I6HDhMGYM3XMGCy4ZZVM2QDQD5sxuMarfywN6QO5i9n3i+3Olo81N8oOc7Mey2fjRJIjSN4fcricvrsIjPBXJSYJbUnRbfzktzELfAL.bpScJ.nYVMNfAL.LjgLDzXiMh8rm8fryNalsewKdwbUnZ1XoaIoDKqoO8oiW4UdE.nIg2CdvCFCe3CGQDQD3Dm3D3.G3.La6blybPDNnK5ktmX2w+bzifzxHcDebwwLyJIVOAEXPMkvvxroSXnsjwLlw.+7yOlNpvpV0pvYNyYP+6e+Q4kWN9ge3GfRkJAflEbg1eVmbS24cdmHlXhA4jSN..3q+5uFW6ZWCCdvCF0UWc3m9oehYl1JPf.7VukwO6WbzocwZ5t6l1h7jX9Te8M0RXcmZIrDBgPHDCaSq+Ca8MpYnDFRHDaNxjKGpUq1jVAu7sQWsupToB40T6hJ5N2YtMX5.oe8qe3G9ge.Oxi7HPtb4LWzme5m9Ic1tQMpQgssssoyrQiPZO1yd1CFwHFAtvEt..zTAHm9zmVmsIv.CDacqaEImbxbQHZgPILzdzK+xuLJrvBwZW6ZA.PgEVH9xu7K0Ya3ymOd0W8UwxW9x4fHz5HzPBgIwKYmaNnKwEOWGRc3DTPAB.fxJqLNNRLOzNiP5TTVtje5s2diCcnCgQLhQfxJqLnRkJru8sOru8sOc1tt28tisu8siPCMTKVrXuhOe93fG7fH4jSlYA8bzidTbzidTc1tnhJJ7se62hjRJItHLsIQyuPt2LlybAfwUwyCeXCsU2FBgPHDhio.7ukG2J2JJggDBwliZ0pgL4xgqt3hQ+b1w2sUKXD01URokBYxjA2c2cK978hnqILgIfryNa7Ye1mg+5u9KjWd4A4xki.BH.zidzC7POzCgG8QeT69VKEOp5RsoDXfAh+6+9O7i+3Ohu9q+ZjQFYfRKsT3iO9fHhHBLrgMLLu4MO6t4cmgbyJLjiCDRaBOd7vG9geHl5TmJ9zO8SwoO8oQ94mOb1YmgHQhvfG7fwLlwLzaNv5Hp6cKQbr+833pokFhMlXf.9TUFZM4ue9CgBDfZjJEMzPC1rywvHiHbiZ6VvB0TIZV5VWZu5UuPlYlI9pu5qvt28tQN4jCjHQB72e+QrwFKF8nGMd5m9ogaTRcLnN0oNgTRIEricrCr8sucjUVYgxKub3me9gN0oNgQNxQh4Mu4YVmatNBpu95..Ugg1Kdx4LCtNDHDBgPH1InDFRHDaRxZPlIkvPaUWu.Mqv7NGUmrNIlhtn85HhHh.KcoKEKcoKkqCERGHN4jSXxSdxXxSdxbcnX4w760ne4i8r90u9g90u9w0gAmJ7vBC93iOPhDIH+7uN0U.rxrWligq48WAWGB5wau8FO6y9r3Ye1mkqCE6Vt4laXlyblXlyblbcnX2nt5zzRR8vCO33HgPHDBgPHlSTOXiPH1jZPl8+bLTkJUnfBKD..QFoi4behXCgxWCgCvjtP58eD6b73wCIzktB.fzyLCNNZ5XJnfzzIFJSriQaIkPbjUac0B..OoDFxYBJn.YZmyDBgPHDhgLkGaNXJO1bL5smpvPBgXSpgFLsDFVUUUC..+7y1ocAURokBEJT.O8zS3mulV+hlPHD6A2rkjRYLjX+KpnhDW3RWDUWc0nLwhQPARWHVqIsstcGg4XX2SLAtNDHDKp5pSSKIkpvPty5+n22n21eXW+L..lzCONKU3PHDBgPrQ0XiMZRaOkvPBgXSpwFaDJUpDBEZb+ZpmbduH.r7yJFSg11QZjQPUWHgPbPQsjThCDA7Ef3iKNb4qbEjdlYPILzJye+7CBEJzldNFlxkSE..I0iDawsaIu0qYMBGBgyTKkvP6J6b2TBCIDBgPHFGpkjRHDaV1yskTcZGoQXaNGdHDBo8hZIoDGMwESrfOe9nvBKjok6QrN3ymODEP...nTaz1R5xVw6gksh2iqCCBgSIStLlE1oKNa+Oy4IDBgPHDGYt4lqvM2L9EiIkvPBgXyRlI1VRskTZYZZGod3gGve+n1QJwxgokPRU3EgCPsjThiFWc0UzonhB..YlYVbbzzwi14XnXwh43HgPHFh11QJM+B4VYjYVHC5uSQHDBgPZEe0WrI7UewlL5smZIoDBwlkoTggQFosUa+L+qW..rdsiTgBEBkJUBkJUBmbxIqxwjzxjqPN.zTwDVRBDH...JUpDfVj2cXoToR..Hro2OXsnssQqToBq5wkXeiqd+pwpKw2Ej60tFxN2bPO5d2o+tpUTfhzzFXs2SX3wOwo..vcLnAXzOGd73Ad73A0pUiFarQl+9Nw9iBEZ9ah1p+Nt1Ko0po5q8zSO43Hois27+81.v3FIGydlOlENZHDBgPHNJnDFRHDaVxjIGpUqloBVZIq48daqPDYbToREJrHMsiznrRsiTe8wGTRCMfby6ZHwD5lU4XRZYkVpl1ol2d6sE833qO9f5qudbs7xC8HwtaQOVDaW4ked..vae7wpdb8ooi20xKODcmi1pdrI1uxK+7Af0+8qFK+70WDTfAhxDKF4dsbQWhuKbcH0gg+96G3ymOjTSMPlbY1bs6vAMva2n1t09waD.ldBC80GePUUWMxK+7PLQGSaJFIbuby6Z..vWGztLRsR0jvPu7zKNNRHFq6ajCiqCABgPHDhcBpkjRHDaZxrCmigkVVYPtb4vC2cG96u+VkiY7wEO..t7UtBRKizYptMh0mJUpPwkTBN64OG..htScxhd7z989qjZp3pokFjKm9deGIJUpDYmS137W7h..H9Xiypd7itScFBEJDkVVY3j+2oPc0WmU83Srun48q4fyewK..q+6WMEZSRXFYkE0xcshDvW.Bno4XX4kWNGGM5a9uvyf4+BOiEa+q8uoetKbAjU1YCET0aaWQlLY3JolJN+Ez763RnKckiiHKCo0JE..d5EUggDBgPHDhsthKoTTbIkZzaOUggDhEzMtwMPZokFJrfBPgEV.JrvBg.gBQ3gGNy+RLwtyzR2H5qgFjAWc03GLq1BzVcgQZkptP.fvCKLjPW6JRK8zwEt3EwEZJ4ADtUPAFHyE+yRIzPBAI1stgTu5UwES4R3hobIK5wiX6J5NGMhtyc1pdLc0UWwfFv.wwOw+hqkWd3Z4kmU83SreEcm6rU+8qlhvCKL3gGdfZqsVTbIkfvBMTtNj5vHHQABwhECwhKGgGV3bc3XUESzQCwkWNx8Z4hybtyhybtyx0gDoMJwt0MDQ3Nlu+UaKIkpvPtUe6Su35PfPHDBgXG34eoEB.iqMlCXESX38b22EJojRrH66W4UWHlybdb..7kacqXkq7cLq6+.BPDN9+dB..blybZ7XS8QYc6Vza8+vi8XSqU2ekVRIX7iernxJqTuGyImbFe411F15W7EX+6eesu.2.tu6az3CW6GA.fOcSaDe3GtF81lQNpQgO5i9DideN6YOS7uG+35c+u0+awXpSU29keJobILwG9gLwnFvYmcFAFXPHnfBDgFZXXxSdJX.CbfF0ycvCZ.r95c6wa7lKBSe5yf0GqvBKDe8W+U3G1w2CIRjzh6mPCMT7DOwShIM4o.2byMyZL5HvXmigW5xWA..8rGbeKYrnhKF..QDg08hDz6d1KHJ.QH8LRGUUc0LyHJh0EOd7fGd3A5bm5D5VWSvhOCCA.5YORBA3e.H8LRGUVUUz266.Qn.Avae7AwGabbVxWBOrvvHF1vvUR8pnzxJkpxUhAYK79UiEOd7PbwFKt3ktDxN2bnDFZEEXfh.tJPYka+NGCG4HRtM+bGvse6H3fBDYlUVPhDIPYiMZFiLhkjPgBgn.B.csKcEgFRHbc3XwHUplJLzKZFFxod8W8kL5scMez5A.rnUHMgPHDBwwfUIggkUVY35W+5Vr8eO5dOX9+m+BmiYHiatjPBIv7+6W+tcz291WbpScJ81ts8kaEScpOVKNu0TpTIdlmcdnzRYuLPe2UtJba2V+vy8rOiY+qCsRr62LgJm+Bmm0iShcKQid+oVsZbgyy99o6M66MZcgKbg1zWaJTn.0UWt3ZWKW..7K+xOi9zm9fEujkhjRpmF74c8qecC95c6Q26t9IlRgBE30esEhe8W+EznQdx8EWbwXYKaoXcq6SvRW1xwnG88atCU6ZxjYbW34kuh2G.F+pkvRoZIRP80WOb1YmQ.9GfU+3GQ3gaQWMykWQ4nwFUgfCJHK1wfz1DdXggvCKLtNLrXpVhD3sWdYUR.Kwz4qO9h6XPChqCC6NRqsV5BtZCK5N0YboTRAEUTQngFZvtqiGXuJf.B.73wCU0zBfwVpSb7m+09APqOOvd7Y05KhzVRm6TmQm6TmaW6CaMEUbQHrPcb+bJcTHWtbHWtbHTf.ZwtZG4Dm7zZ9Ou.2FGDBgPHDaeVkq51krfsFO974ij5YRM6XY9aEaI0ScSF0y87r+orxImbvQO5Qaw80JVwaiyetyw5i87uvKhwO9IfRKoDKRBtzp28t2L+eC88ld0qdy58yl7xKOVqhNmbxIjXh5m3wKcIy26GN+4OOdpm7IPUUY3pGzbd7zRf.AHwD0MggM1Xi3Ed9mC+zO8iFcxBatJqrR7xy+kvEoVIoNZrwFgBE1OUKUQEWD.zzlHaoEOf8nby6Z3fG9vnt5pkqCERGLJTp.G+eONJuBau4YEgzdb4qbEjdlYv0gAw.b0UWQ3gEFTqVMx8ZWiqCmNLbRnSvWe8EpUqFUTYEbc3niu3K+F7Ee42v0ggcm5puNbr+8eQ0sRmWgX66lyuPpcjRHDBgPH1ChOtXQ7wEqQu8VkDFdgKbdK19Nt3hGt6tG..n5ppB4mu4e14zyaIggCZPCF8qe2Nqa6Wssuzf6m8rme0fO93F23wK7BuH..tvEuPaJNMFBDHfop+LThI0jDVCWwd2pKZf3MgD5Fb1Ym069uzkLuI0szRKEK3keYC93oXlOd.ZdeWyWQkpUqFK7UeE7W+0daW6W4xki49zOIJqrxZugnCEYFYaI0VPwM0NRC0Ap0koVsZbwTtDN0+8ePkJU1UIvk3X3zm4rPZs0xzteIDGEhKWLtvEuHJoTKSa6mz9ESzw..fbxMGNNR5XIHQAB.fxDa+1VRI2TlYlEToRkE87bIVG0TSM..vau7liiDxANzQvANzQ35vfPHDBgXi6cV9ag2Y4ukQu8Vk96hkrho5Uut4fd9RojhE4XvV6t74d9mGyX552pYN7gODxO+7PTQ0Ict+LyLC7Fu9qw59u+8u+Xkq58Xtsk70q3iOd3t6t2hGmXhMV3gGdXz6SCset0DsB.TWc0gbxNaV29t0stAdrzp4Z3F2.UTQEs3r.7vG9PnjRJFgDh9IowPIzr8HojRRma+a+1dvO8S+HqaaBIj.dnGdhn6cuGH.+8GUUcUH+7xG6XGeON6YOidaeokVJV9xVJ9j0sdydbaupAYxfmd1xumbPCr+VonwvjKWNJuBMqD9PC1wXtknToRbhScRTXQEwbeJTZYZWxDBaxJmrQ9WOe.nY9f16d1qV4YPH1Gpst5P80WO..N9INAFwvFF7xSphMr0DZHg.2cyMHs1ZQYhKCAEH0RtsFBLPQH8Ly.hK29rxx+9c9S..XJSb7bbjv8TpTIxtoDtWRokhhJtXZlfZGqlZzTggd6M82q3ZaZyeA..RdnCoU21+2a9pV5vgPHDBg3fvpjvv+2hWLj2BygrryIa7Run9s4SABDhctqcCgBDXvmaPAGLy+OECz5Iui63NwBWH6Iqq0viGODXfAp28em24cg9z29pW6EUsZ03q9psgEsn+Gy8UWc0g4M2ml4hB0bQGczXiaZyvImbh49djG4Qw82BywNkM1HlzDeHnTo9U4yZ9v0h3hMNC9b8pYevdCkHslmDViwkL39Q+1Z5kSIEnRkJ8te+82e7a+9e1hGmTR4RXoKcIFrktlQ5YnWBCarwFwku7UXc6W6G8wLqZbSUf2x7aa6e22x51MoIMYrh24c0alac62d+wC8vOL17mtIrpUsR8ddG3.6G0WecLUOaGcMzPqWggy+ElmUHRZYEWZIPsZ0PT.A.WbwEtNbZ2pq95wQO1Q0q8Qw1u6gPrDpt5pw4N+M6RA0TSMnt5pyjVTKDhsJwhuY2DPgBE3nG6XX3IOLc9LgDtGOd7PzQGMtRpohryIWJggVIA1TEFVYEU.UpTYyL+Zm3CMNiZ618O9K.fRXH.PtWKWcle8m+hW.gDbv1LeOkXZjHUSEF5i2TEFZOIodn+nhgPHDBgPXiUIggwGeWZwGO0qlJq2eWSnqlTxqLTqtbfCZPn68nGF89wX87O2KfYMqYn28uqctSL+4+xLI64UekEfbxQ+1Xje94O9hs9kvWe8Um6OxHiDHxHM3wMszRi0KXuPgBwnF08YzIpvPUFnoL+BUpTIRMU1+9GaeuyPySvdZDULRRI0Sr0stMbO2yPP0UUkdOdFYlAFxce25be4jS1n95qSus0ImbBiZT2mY4hxoVsZbNVRho6t6NV9auhV7jgexm5ow92+90qRCkISFtzEuDF3fFT6N9bDHWtbapKVjg3H0NRKuhJvQO9wXscvRsjTh0fBkJvwOw+p2hLonhKFwGmgWXLDh8hxDqakSUiTo3eO4IvPty6xgaF3ZuKlNqIggEVXAPt79vZK2mXd4hKt.u8xKTiTonpppBADP.bcHA.fI8vFWBCIZnVsZjQlYpy8IUpTjUNYitDW7bTTQZOnVRJgPHDBgXe4zmQyBw+16WeLps2l3pu2dRhTyYtpXNi0Pt66l08sToRwO9iZZOkaYKeF16d0ux4b1Ymwl+rOSuVWpwvPud00DRvnSVnZ0pQJovdBVMkWuROszXMgBd3gGHlX0eXZZv1WpQdL8xKuPuMPBMEyxb+yPGut0sDMaqf+JpnBcV0rM+XHTXqmS9d2a1+5oLwzbLr4j0BUors.0pUyLe0BikViq8jqkWd3fG9PFb1QpjZIoDqfybVMysvaUQkPywPhiAwr724KtjRvEMvmOivc7vCOPHAGLT1XiHOKv7RmvNsc4kxJmlig1qJtjRX8uke4qbEHWts8msmnuFarQTWc0Ad73AO8xStNb5v6AefQiG7AFMWGFDBgPHDabu2p+H7dq9iL5s2pTggsFCWoaFehqJojhgXw5exj73wi0YPn4xy87u.d74La8t+u9q1FhO9tf2aUqh0X5C9f0f912aqMcLMGudkSN4fZY4j2b1YmQBIzs1crzijRh0pAyPI6zThc+7yOVu+niQ+1K5kLg4qXakgR73ktzEQYkUFBJnVt0UMoIOEVeMuG8HIV15NtjISFbyMWM3i+G6ce..XziZ3VqPRGUTYkPtb4vUWc0fuG0VmZ0pQJW9xH0ztZKtcrkfbBwbJqbxF4ke9r9XhKqLnrQkPn.ahOBCgzlT+MpG0Vm9c.A.fzROc3qO9fN2oNacCJRKJlniAkTZoH6byEwSUFkUgHQhP14jCJu7xA5JWGMll4LK8m08cDkQlYv58KWtbbkTSE8w.KbRhsIo0VKTqVM7xSOg.9FdrwPrNl1iNIidam+q7l..XMu+JrTgCgPHDBwAAme01jISFROszX8wLkjHYnDW04N2Y3sEr+5OzgdunG8HIb4KmhN2eVYkEd74LKzXi5259d4E7J39GyXZyGSCmzMi+DtLzbGLwDMtphSKCUUmrUcnUTQEnvBKzn2dC4Tm5jrd+csK5ekDLGsc0ViO93ChLxHw0u90049UnPAVza9F3cW4pZw1nTbwEGhiZudspFLP0to0V2ll4HIWkvvhappmByNtcjl60tFtZ5r+6iaNZFFRrjt04V3sRYiMhxJSrc8OqQHrsH2Zt+6LmAd4kWH.+sMZCiDfvCOL3ryNipqtZTsDIvWe7gqCIGdhBPD.zzlzsUr4Oea..3Imi9ikhlaTiHYqQ3XSShDInjRK0fOdFYkIhK1XgWd4kULpHsGRZZtlaIu9JDKiqW.6WGFBgPHDB4Vw4sjzTSMUVu3yt6t6HNSX06Z3JIyxzNRatm64edVu+5qud8tuINwIg4N240lOVMzPCH8zRm0GyTpZNC2ZPMsDoYJU6ngRzYDQDA72e+Mpi2usm8fhJpH8t+XhIFjzs70ub4xQ5FH4GlyJLDvvUC3ANv9wvG18hMrg0iqcsqYVOlczzPCsbBC4Zk0TKwMT631QZLQGMFynGMRnqcsEaYuJnDFRrPLzbK7VUTw5+2AHD6Ik0JILTkJU3nG+33F23FVoHhzZDvW.hpoYLd9FnBnIlWd4omvEWbAxjIi01ZIWXe6+PXe6+PbcXXWH8aY1EdqTqVMtfAN+PhsIsILzWe7kiiDBgPHDBgXrF58bWXn2ycYzaOmWggFpR25d26ADHv3ayEW5RrOuWN9wOFdfG39M43Z5SeFXhSz3ZwCIm7vPhIlHRM0TawsavC9Nvauh2wjiklK0TuBqUsn6t6gIkfUyQaMst5pCYmcVFX+nehGMz2iLlj5JSlLric783sW9xX8wWzh9e5UYjW8pW0fsNwW7EedvikVlZKQn.gXW6d2P.KsAuo9XOF9q+ZurdQtkHQBV8G79X0ev6iXiMVb62d+Q+Gv.v8duISqnVSfJUpfBEJLaydRyIkMpDUTYk..HnfBjiil1GOb2Cz6d1KziD6NxI2bw4tf9U5E0RRIVJm67m2ntnvEWLMGCI12ZsJLD.PoBEH8Lx.81BMKtIltnhLJjU1Yi7td9nmIQsNdqAQhDgBKrPTd4kCu7jlYZ1KjISFx2Hl2mEVTQnzxJCA2JivAhsgpkTM.zzgcHbus8MeO..lwiMENNRHDBgPH1xl2SMGSZ649DFZvjHY7U.lZ0pQJov99o7xKWybuvDEbPAazaKOd7vy8bu.l6beJCtMwEe7XCabSlT69jMW5hr+0YO5Q2YclAxF4xkiqdU1StoozpNu7kuLqIHSjHQHrvBSu62PsuT9B3i+9u9K8t+5uQ8nzRJAW6ZWC+0esWlUz3sZ5yXl3tum6wnOd.ZRlnoJwt2cVSVH.vfFzfwy+7u.V6Z+vVbejc1YiryNa78e+1gSN4Dtq6ZHXxSdJXXCmaZil1aZnAYFLggS5gGmUNZtoxKuBnRkJ3qu9BWb1ENKNLmDJTH70WMWL.2c2c3sWdwzVonVRJwR41us9gtFeWP0Rl92dVA..f.PRDEDUpFUWsDTsjpYsclUW80CI0HA93McAqH1eZngFPMRkx5iEQ3gi.CLPHJ.QvOe80n+rcDqi.EIBt6lant5pCUTQEsXKmmXdHJf.zjvvJJGQ24Ny0giQa0qcc..3kewmkiiDtQV4jMT1Xir9Xt5pqPnPgvIgBgSN4DJsrRoDFZm3lUXH84urE7a+9dAfwkvvMuw0ZoCGBgPHDhCBNOggFJoNlRhqxM2bgTCbgWZq5oItZtiHhH.Od7fZ0pY8w+jOYclkpIyb75kgp7Nu81azYS3DwMT0gZnJFzPI6721ydvusm8XzGWsDJTHV7hWJdzoNU1OdFHYzsUsV0W9LO6ygFUoBaZiavnp.KEJTfCdvCfCdvCf69dtGrzktbDYSs5JB6ZPlL3kWru5xm3CwcILTa6HMn.suqtvaUQMUEWQEQjn28pWPRMRPFYlIJv.yhTBo8hOe9vWe8E95qu.cBnt5qC642+c3hKtfAMfA1zrCqZTc0UiRKsTJggD6RhKubviGO3qO9.QhDAQAHBW9JWFRqsVjXBcynaS6DqOd73gnhLJjVFoiqke9TBCsBr0liguzKXbiVhSdpyXgiDaagFRnHjfCFBE5DShA+s+7OfLYxvHG1vgat4FWGhDSjBEJPc0WO3ymO7z.mOFw1ke9RsQVBgPHDhwgSSXXM0TiAmqalRB6LzrwqspScpyZtXkFoRKoD73OwbLXxBA.9m+4ePW5RWa2wlgm8fF+qWFJoi8rm8B73wqcGKrkXsBJn.TUUUZz66VRu6cuwC9fiEiZT2GBNjPL31khY98E8t28oEeb974iW7EeI7.OvChUsx2EG9vGl01GKa9mCeXL1GbL32+i8hPC09cF3YoISls4bLrzxzTATNZqNZss8QsumzGu8A29s0OzqjLuy.TBwPzNKf8zSOQHAGLBIXiu5+IDaUhDE.dnwMdc55DEUbQPZs0hpjTMkvPabQEklDFd8BtN5au6sI8YmIlN+8yOvmOeHQhDahVS+fGX+4ziu8B+8yO8tOO7vCHSlLTW80SILzNjjZzTcgd6s2fOOp52IDBgPHD6E+zu7a..X7icLF01yoeRuTR4RrljM+7yeSpRqLThqDHP.b1YmM4+02a61L5ic80WGlyblEJsjRZws6y2xm0tS1gDIRPd4cMVeLiYN.pkgp7NSY9EBzxIdzX211hpppZDVXg2hIKr1ZqEYmc1r9Xsk2S3ryNidajUwYrwFK17msEbhSdJ7Vu0hQ+6e+MXqLs4jHQBVvBlOqs4UhFxkqvl60GEJUfJqpJ..DnHGmJLTSKerFHTnPDnHQ57XN6rybTTQ5not5zjvPOb2cNNRHDyG2b0M8ZQ8ZWnZUWc0bQHQLA96mevKO8DMzPCnzl5v.DKGABD.+ZJ4S1JUYHosw8l9a4ZWLPD6KUSsiTaNy6oebLum9w45vfPHDBgXi6699cgu662kQu8bZEFZ3pkyzpdECUIYq58deL9wOASNtLVM1Xi34d1m0nlGdhEKF6bm+.drGaZs4imgRzW.AD.hHhHL58igd8pW813aqohEKFEUTQ5c+BDH.8tO5WIdoXFaOn4k20vy7LyCe+N1A5aeYO4tWNkTXMYzgDRn33+6ILawRKIf.B.ybVyBybVyBRkJE+ygOL9ke4mwQNx+XvY.2IOwIvAO3AvvFFMSCMDYxjw5pRdye91..vSNmYXUiGwhKGpUqF94meNTIRqjR0rHHBN3faSyPq7xOOjQlYBIRjXvYXCw9Ae97gWd4EhKlXPbwFmUqhZzdQEc2LmvvJpnBjZZWEhKubHWtby59l3XSXSIunqcoqHhvC2rse80GJgg1ShJpnvURMUj+0ymp7Yqf.CPDpnhJP4UTNBsEVvf1RV7asPtNDr4ncw+TW80wwQBosnppz72mLkNwDwxZn28cZza6jdzYA.fe361pkJb5PSkZUHyLyBYmaNPpTosX2Gi33xYmcFAJRDRracCA3O015IDh8KNsBCMTqD0TlGeJUpDolZps68SawxV5RvgO7gL5seye5lL5VTIaLzqWlR0EdiabCjSN4v5iYJudchS7urd+21scavau8Vu62PUX3hWxRw4N+E06em5+NC9y89W3MdyEw57gowFUhcsycZv3yvy5QSqJJMW7xKuvXdfG.e1V9bb7+8j39tuQavs8pF38yDMZnA1qT28s+Cg8sei+mGMWJSrlpKH3.crZGoUzzp3usLWFO2ENONwoNEpnxJojE5fPkJUPhDI3rm+73j+2orZGWsWTQOb2Cy19LyrxB6+PGDEVTQTxBIlLkM1HDWd43X+6wwESw7sXn70WMUrg1J3fXaqSQEE..tdAEfFUQ+cNKMQhzbt.kWd4bbj.r3k8tXwK6ca0sqGI1MziD6lUHhren8ukqs6APruTc0Z5nJ94q9saVhsO0pUSIwxBQsZ03eO4Iw4u3EPM0TC85bGXxkKGEVTQX+G7fHyryhqCGBgPZy3zJL7RFpBC6owWggomVZr1pO8xKuPzQGcaN1ZMe9muE7MeyWy5i8Vu0hwpW86qW6VovBKD+xO+KXBOzC0lNlliWuxMmbXskNJRjHH5VZ6fsjieriw58eu2ax5cepToBW9xWg0sefCbfvGCzVSDIRD5RW5J5ae5KlzjdX8h6KekKav3yb01UMj5pqNblSeZ8t+fBNXzst0xWb.QhDg0s9Mf+2asH7se62n2imd5oaVhQGUMXiMGC01NxBJHGm1QJ.PkUpYli5uel1rzpfBK.YjYlPn.AnO8tOnSQEkdsdOh8mFU0HJpnhw+clSi7xOeDRHgfn6Tms3GWycEFVlXw3rm+b..naIj.5RbwSyQIhIQgBE3Z4cMb9KdQb0zRChBPDBOrvZ26W2b0M3hKtnY9dUWcvCOLeIImX94sWdCe80WTc0UihKtDyZ0lRzmn.zbNJUTYkPsZ0b5biL0qReN81Js+dsZqqVNNRHlJ0pUCIMsfV7ipvPBQG4l20PAET.bxImv.6e+QngDZapC8Pr+ciabCjQVYhqlVZ3rm6bvWe7wgZr0PHD6WSapS1j1dN6uhUZIkfRKsTVeLSoR2LThg5YO6kE6jI+6+5uvJe22g0Ga5yXlXlyZV3gdnGl0Geiab8s4YvlgqZNi+0KsUC0sJHSncJoPgBbji7Or9X2axCSu6K6ryB0yRqmwc28.wEW7s5wqO8suHpn5jd2eFomtAasmlipWskHSlLL6YOS892Jd6kaz6iGaZr2dZKnfBLKwniJYxjayrp8jKWNpppp.Od7bn9ffJaTIjTSMfGOdvO+LsKJP5YlI..RpG8.wFSLTxBcPHfu.DYDQfd0zBTwPyHVys5ZJggd3g4IggolllVHd2SLQzqj5IkrPhIyImbBwGW7nGcu6..H8Lyvrsu0dQXqVB0VRsGzoH0TkgETXgbbj33yUWcEd3gGPoRkTU3ZGSaWnolZpgiiDhopFoRgxFaDt6t6NTifA6cqXkqFqXkq1n1VO7vcy1mmlnqrapCd06d0KDdXgSIKrCL2byMzqj5I5d2RD..oZDiuJBgPrFdvwbe3AGy8YzaOm8WxLTh9BO7vg+9a7Uzh0t0SdoKcQL+4+hrlzuALfAfEsnEA.fYLyYwZBKyImbvd26eZxG2RJoXHVrXVeLSYlOVWsrOyHJtnhM58w2+8aGkUl9IdLpn5DhM1X069MzrpLoj5gQ+go5Tm0OggJTnf01IW4kWNqyWQ974ijLgpwrk3u+9C+XoxqxKuqYz6C97X+qcSoRO6HRkJUPgB8ST77egmAy+EdFqZrTdSssS+7yO3jSNYUO1VRUUU0PsZ0vGu8FBEXZI7qppzzthhtyVtJ7lvczdAxsVyYsFZnA.no5qLGz1N65hQrXUHjVRbwn4y6nsZrMG7waMcbAIzES2tP3MUUgEUbQPk511hAjX7XpxvJ391Rpw3kVvafWZAuAWGF1T7zCO.e97Q80WuAWzmDaS2rcjRUWnsjKbwTvEtXJF019kaYC3K2xFrvQTGSRZ57hhJhH43HgXqH93iC..hsAZk5DBgzVvYILzbTsb.sTqmz7O+BKrvBwS73yA23F2PuGKzPCEex51.DzzEWO5niFCcn2Kq6mMtg0axGaCkzsHiLRVSbkgDXPrOm0pppJwt1kgmIfZUVYkg0utOg0GaT2G6Yp1fsRUS36QZunwMGOd7Xs5PLT0EFSrwZVawWwEWb5ceEWbw3LmQ+VUJaNvA1Oq2e3TaspUwVaIcPC71wfF3saUiiJpro47mCT0EBn42G..SZwa.nocEo8B.Qq9XGSZSLt0X1TpVsZnPgBcNtsWM1Tb6jyNNI3mvMz963LmWzau7xS..TasT65ydf2d4E7xKufb4xQ4kWAWGNN7BH.MeljJLiIousXMu2JvZduUzpaWAEVDJnP8W.icjwiGO3sWdA.fZjRKLB6IU0TBQn4WHgnKUpUAkM1H3wimC0BHlz93pKtB.y64IPHDh0Dm0q3LTBv5oITYf0We8Hqrxj0GyM2cCY1FaSTAJJP3qe59ggkJUJl8rmIS0Izbt3hKXia5SQ.ADfN2+rl8rwAO3Aza6SM0TwgO7gv8bOC0niIywqW..ctycF73wi0V53RWxRfzZjhoOioyj3yl6fG7.Xgu5qv5poO3PBAyadrWcWli4IHaW7LWc0UVqhSCc7hJxnZyumfG3g3hW2JRI13hCm9z+mN2mZ0pwy9LyC6bm6FQFUTFb+82+0egO7CWCqO1HG0nZSwXGIxZPFPSWXUtTEMUgg25O6auqFoZ94MCMeQIDqAkJUB0pUCgBEZ9asOpA.2MBrHDV4omZtP5RkJkiiDhwJhvBGWM8zPgEUHBJPGqEOjsFQ9q4yZo8ydwUhLRZg80d3s2dipkHARpoFSdNYS3NZ6fH94GkvPBQG1FSJEBgPHjVzGu9MC.fm+YdRiZ64jDFpVsZjRJFd1CZrtxUtLS0Bbql9zdr1TrA.rgMtILxQdyj1nToRLu49zHqLYO4ju8a+NHojzuUWN3AeGnqcMAjd5oo2is90uNSJggFrJ8LgWu..BJnfvccW2ENxQNhdOV80WGd62dY3S+zMh3iuKHlXhA73wCYkUVH6ryh01PpVqXEuC7poULZyIWtbjVZr22tMkp.sVo5mvPWb0UV2VCU8pG7fGf0D3ZLhIlXv91+A049dvG3AwN99sqWxWEKVLRN46EibjiDiZT2GBIzPfHQhPkUVExMmbvt+wcgSdhSv5wIt3iGCZPCtMEicjvVEFZsoVsZlU4t1U8tih5pSyOu4oYrhbIDSkrlZ4zlypUU6BlQMc18DaPZ+bTRoJLztQ3gGllDFVXgnOVftaB4l70WeAe97QMRkB4JjCmch5jA1in4Xn8G0pUiJaJgg9SILzlx691+OidaKroQPS3gEpkJb5PR64Tv1BYmPHDBwVwQO1+B.a7DFlat4x5pmlOe9Hoj5gQueLTkj0dcqU91hdy2.+6+dbV21oOiYhI7POjA2WyZ1yFu1BeU8t+yc1yhScxShALvA1pwiJUpLXBVaKypw4+xK.m8rmE0UG6yyPwhECwhEavuluUiabi2fse0qd0qxzR4Zt.CLPDVXgYzwbs0p+6WzVl+2JKw6KXK4lCXfCDyYNON1xV9L8drFaTI9i+32we7G+tQeLBJnfvV9rOm9vlFAEJT.UpToSUG8+V56..fksXqy7hoFo0.EJT.2byM3taNVCP9Za52M3gGlVUbRmvDwbRgEHggLn7ERrA4tatAgBDfFZnAnPgBp0VYGH.+C.t3hKn15pCRjHgpLeKH974C+7yOTQEUfJqrRDRvgv0gTKZKa5i45Pvlj1Yfm1JViX6q15pEJTn.t5pqrNNPHbm3hMFidaewW90A.vN29WZghlNnnyofPHDhCHNYFFZnYLWbwEOb2ciuhVLTkj0dDTPAgPB4lq5pMrg0ictyef0sc.CX.XQKZQs396AevwZv4.15W+5LpXJ2byk0Vxo.ABP26twmfUsRJodhuXqeoI8Zsgzm91W7VukgWYalqYUIae8qTo9Ih754mOp1BbBnFp0u9xK3UPBIjP6d+6qu9hs8UecK1FSI5pgFzsJCuZZYfqlVaqky1VTt11QpINm+r0oVsZlES.UggDtjbEMkvPJoIjNH3wiGyrVllig1G3wiGBuoE.WAEUHGGMN9z9YtpnBtaNFNmm74vbdxmqU2Ne7wa3iOdaEhH6KZaokURILztg1wQhoNayIjNBz1so3SKXVBgPHNP3jDFZv4wWO0usd1RrHURVuuYhr9s8rGrlU+ArtcgFZn3SV2FXcV+0bt3hKXpO1zX8wN9wOlAesn4tjAR5llDr11pro90uaGe9WrU3aSqxSSku95Kdm2ckXm6b25MuGaNC88HSc1KxlZqsV8ZGnVppNs28l8Db5ryNiOcyaAO3CN117L1JgDR.ewV2F5RW5Z6ID6vgqaKoNpyuvabia.UpTAWbwEHTnIVD5zJrjXFI2BTggZOYd1liuDhs.sskzZXoyJPrMEdXZlocEVTQbbj33K.sywvJ4t4XXMRkhZn4LZal6t4Nb0UWgb4xY5nEDaaT6HkPHDBgPru85Kb930W37M5smapvPyPUmUcUUgqme9lqPRuX3rm8L3UdkWl0KpnKt3B13l9TiNQAScpOlAaqTaXCsdUFZnjJ1VZGoMW+6e+w+dhSg07gqECX.CvndNt5pqXRSZxX+G3fXxSdJsZqGLECTMolZrGUTcRu6qgFZ.Ymc15beFp5UaObxImP25VhF7wiHhHvGt1OB+0eueL9wOAHPffVcexmOeL7QLB7se61wu+G6sc+8xNhj0fsQBCE4fkvvFj0..zzZ7HDtjBEJA.n1xHoCEO8TSqflpvP6GgDbvPn.AnxJqD23F2fqCGGZZO2KsyPZh8IsIdpppnuOZOPaEF5n0UUbDL2m6kwbetW1n11t1k3QW6R7V3HpiGlqWHUggDBgPrg02d2Sz2da7EpGmLCC28O9ys68gu94GxNmq09CFC31ts9Y1ZugAFXfHszyrM+7WxRWFVxRWlYIVtUt3hKXricbXricb35W+5H6ryBkTRInjRJAhEKFt3hKvGe7A94meHoj5IRJojLopN5u968aVhy89W+sQscu9a7l30ei2zrbLMUwDSL3CV8ZvxV9xQgEVHJpvhPwEWDJpnhPkUUIBJvfP3gGABO7vQLwFKBJnf3j3zQQCxjA0pUyjz5079qvpcrUnPAjTSMfGOdLsVIGExkqoU+5jkXtwQHl.sm.tYclXRUXHwFm1NGAk3I6GBDH.AGbvnvhJBEVTQHtXikqCIGVd5gGvEWbAxjIC0VWsvSSbVKaMMwGYl.flWXrwO+7CEUbwnxppBQFQjbc3PZApUqFUUc0..ve+nDFZqo7xM9ps9sWJ2bMRbzoFVfyWgPHDBgiwIILjXaJxHiDQFIcRasWt6tGH936BhO9tv0ghCM0pUCEJTvztBiLhvsZGasqrce80WHrUZKw1aTnPSBCo4FGgqoVsJ..viGmzLDHDNg1p6tdJgg1UBO7vQgEUDJpXJggVZA3u+nnhKFUTQkbRBC+guaqV8ioiFsIdRa25fX6RRM0.kJUBOb2c3hKtv0gCgX6gVChDBgPb.QWENBgX2pANpsjVdEkCfaNKcbjHWgl4FmSNQUXHgaYIpvPdTEFRrw4VSILjpvP6KgFbH..nLwhgJUp33nww1MaKobSxl3wiGUIIsShDo46gUVYkzOuXiyQclsSHlKTEFRHDBwdvBeikfE9FKwn2dGqRigPHcnzfLYva3kU+3VUUUA..QA330ZdTHusWggzILQLmT0TR83ymd+DoiC2ciZIo1ibyM2fOd6MjTSMn7Jp.AEXfbcH4vR6h0xVu5z7zSO35PvlkKNqYjWHQhDTYUUBQAHhqCIhAnMw7TBCsM80a8SM5s8T+2YA.v.5+sYoBmNln0fHgPHD6.4j60LosmRXHgPraIqYUX3rexmE..ewlWmE+3xLKO72wKggJUpD..Bch9yCDtEUggjNhbwUW.Od7PCMz.ToRE3ymZFH1KBI3PfjZpAkVZoTBCsfBnoO6UUUWMm7yH0TiT..3s2s7BVaqe15sFgicq.EIBRjHAkIVLkvPaXLUXnCXWUwQfqtZ7sI1O3C+D.PyUUyMZAyRHDBwQDcEgIDhcKEJUhFarQHPf.HUZsVkiob4xQ80WODJP.7xSqe0MZsvCsgS5gxAidJszRQokVJys6V25FbhlOjFE0pnS.mqIQhDjWd4wb6niNZ3kWF2u2SgBE3pW8pL2N3fCFAGbvl8XzQCed7gqt5JtwMtAtQCM.Ob2ctNjHFofCNXjdlYfRJsDjTO5AWGNNrbxImfWd4EjJUJpVhD3ue9YUO9y4odN.PWz81q.CLPjU1YCwkWNWGJDCPgBEPRM0.974C+70WtNbHDaSz4+ZRTpTIRM0TYtcPAEDBIjPL5mepolJyBb1Ku7BQGczl8XjPHDBMCCIDhctFjYcmigZqtPu8wGGyDYzzWRpoy9wrXSaZSnW8pWL+qjRJgqCoNzXpvP582Fk8u+8qy6eO1wNlQ+bKpnhz44t4MuYKXj5Xglig1mBJv.Ae97QkUUEjKWNWGNNz72OMUYXkUUIGGIj1pfDooJbKu7xop92FUEUp4mu70Weg.AB33ngvFYxjAYV4yElnKKQGQwQlXwh047CV+5Mspwe3Ce3LO24Mu4YghRBgPb7rgO9CvF93Ovn2dJggDBwtVyaKoVCU2TBCc3Wosz0tgvwDJTyEmRoxFM+6b582DaXt3ry..TRmryHTnPHJf.fZ0pQokUFWGNNz72eMUUXkUVEGGIFVAEVDJnvh35vvlkat4F7zSOgBEJPkUY698wNxzN+BEQyuPaVO1LeJ7Xy7oLpsM468tQx26cagiHBgPHDhsn.CTDBLPieL.PsjTBgXWSaEFZsZMTZqvPecvSXHUAVlGgEVXne8qeL214lRD.o0IPnlOhRiMpzrsOoJLz5wYmcVm26GZngxgQi8EmoDFZ2JjfCAkIVLJozRPjQDAWGNNr3xJLLrvLteW1Ksf2..TqKskDRvgfrpMKTRIkvLaJI1NJuo1Ea.TBCcH7zOwr35PvgDUggVW8rm8DgEVX..H93imiiFBgPbbQILjPH10jISNTqVsU6CoWc0ZVEzNpUXXaZ1ERLnm3IdB7DOwSv0ggcIgBz7QTzNmJLqn7EZwEZnghSe5Sy0ggcIsy4TEJnDFZuIjPBFW5xofRZ1rqkX94mu9Bd73AIRjvLKqsV9nU+tVsikitPCIDjU1YghKoXz8DSjqCGRynVsZTdEZpvv.Cv3WM5DRGMZWDhTBCsN9y+7O45PfPHjNDnDFRHD6ZpUqFxkq.t3hkuxsZTUiPRM0...e7wGK9wiKHno1.YiMZ5sARsmvDey7ILoRkJbjibDjVZogxJqL3gGdfvBKLjbxIifBJnV74ld5oi+6+9OTbwEiFZnA3u+9it0stggLjgvbQ4A.JqrxXVI0..QEUTvSO8j41JUpDYjQFL2N3fCVuUbclYlITnPA..bwEWPrwFKDKVLDKVLy1De7wCmbxInVsZb0qdUl6OzPCE94men5pqFm3Dm.W3BW.QEUTn6cu6n28t2s3Wi4kWd3jm7jHu7xC8oO8A8u+8G93iOH+7yG0Vas..vCO7.cpScpE2O1ZtYKI09rBCKnfBvEtvEvku7kgO93ChIlXvPFxPXlOcMWpolJy+OjPBA96u+PgBE329seCW8pWEiXDi.8t28Vm2CFXfAh.CLPc1ORjHAEVXgL2tyctyvc2cWmsopppB6ae6CEUTQPhDIHv.CDwFarH4jSFBEZbervRJoDb3CeXjWd4gDRHAz291WDYjQpy1nPgBjYlYxb6fBJHHRjlK5XgEVHjHQB.zzV5hN5ngRkJwEu3EwwO9wg.ABPhIlH5W+5G7xKuLXbHUpTb5SeZb1ydVDd3giALfAfXiMVTSM0fBJn.lsqKcoKF8Wa1BtYEFpfiiDhoxOe8CN6rynt5pCRqsV3Uy96HDyGgBEBu8xKHolZP0UWMUAT1oBNnf.e97QEUVIjqPNb1IpKLXqPRM0.EJT.2c2c89bDDaGhBfpLWtlwNBVyImbPCMz.ysS7VVjDUWc0nnhtYarN1XiEt3hKL2VlLYH6ryl41ADP.H3fCVm8gRkJQ5omNRIkTPN4jChIlXPRIkD5ZW6pQ84fqpppvktzkPJojBTnPARJojPRIkjdGmakLYxvANvAPt4lKJu7xgu95KhHhHvHFwHZwOGeyIUpTbricLbgKbADczQijRJIz8t2c81tLxHClyMzSO8DQEUT..nxJqDkTRILam1WeyLyLwwN1wPEUTARLwDQe6aeQHgDhAiC4xkiKbgKfScpSAWbwEz+92ejTRIA0pUqy4gEQDQ.u81ai5qMBgPrEL0oqoPF91u5yLps294pmPHDhAnp4IxyB9A2polZfZ0pgmd5IbRnSs9SvNj1KVisRqvam6bm3kdoWRmjfnkPgBwDm3DwV1xVz6hYblybF7rO6yhScpSw590au8Fe3G9gX1yd1..3fG7f3QdjGg4wWyZVCdoW5kXt8INwIvPFxPXt8S7DOA17l2LyskJUJRLwDYNAloLkofsu8siMrgMfkrjkvrc4me9HxHiDxkKWmSBZiabiH7vCGSZRSRmSlD.3ge3GFe9m+45cRI0UWcXlyblXW6ZW5b+95quXe6aeXwKdw3O9i+..ZFP7+8e+2r9ZgsJABz1RRMeyvPsox1XO491hBJn.LiYLCbvCdP8drfBJHL+4Oe7Juxq.9742TrnVm2K7QezGg63NtCLgILAje94qIt4wCgGd35rcKZQKBKe4KWm8+u9q+Jl9zmNysOzgNDtm64d.flD3Mu4MO70e8WCYxze1uFbvAiUrhUf4Lm4zhe8swMtQ7LOyyvzBl.zTQbqbkqDye9ym49JpnhzIdW1x1bIY7O...H.jDQAQUFdq25s..vBVvBv2+8eO..Fv.F.90e8WwnF0nv4O+404XEUTQgcricfANvApWbrsssM7TO0So2WKKZQKB8rm8DSZRSh49JrvBYZeQ1CztXFjSUXncGd73gfCJXb8BtNJszRoDFZA4u+9CI0TCprpJsISXXBcsKbcHXyS6b+rLwhQokVF0FesgncQzEnHp5Bsksw0sFida28O8q..3gF+CZoBmNnLtJLbIKYI3q+5ul41okVZnqcsqL2dUqZUXkqbkL29m9oeBiabii41+9u+63gdnGh41e0W8UXZSaZL29vG9v3we7GWmjJpUrwFK9rO6yvPG5PYM1ZngFvRVxRvG7Ae.qm20rm8rwpW8pYcjrr5UuZrhUrBTEKyhV2c2cL24NW7du26wbdOr4XG6X39u+6G0zz0yQqYMqYg0st0oy44OzgNTlDqNpQMJlJN7a+1uEO+y+7570zrl0rv12910Kl1vF1.lwLlgdwwoN0ovDlvDzIws..228ce3S9jOQmyqYm6bm3ge3G1feMQHDhsF4JLsEirg+s1DBgXmvYmcFO9S873wepmu0231AsyuPG01QJ.fyN2zEptsjvPybRX9se62vi7HOBSxB4wiGSEJAnYUTt8sucL5QOZcRdwIO4IQxImrNIKzEWbQmDtUSM0f4Lm4vjzhQO5Qqy7Ebe6ae5DK+y+7O5b6CcnCo2sadkv07SvyX7i+3OhILgInWxBA.10t1EdsW60z49jISFty67N0KYg.ZVgpCe3CWmUAo8HsqDVyZKIk4j4sLYL7XG6Xnm8rmrlrP.MUx5q8ZuFdtm64L39nnhJBImbxLIKzbYZSaZXKaYKLIXyM2bSmU8aokVJd7G+wwW7EegA2Ge7G+wXdyad57ya.ZRF4K+xuLSBpMEhEKFCYHCQujEBnIA6iYLiA23F2Pm6+8du2Cyblyj0De91u8ai268dOSNNrkn82EovD+P8DaCAGrlJeurlUc4DyuaNGC0+hTZIk5USGod0za0sa4K4MvxWxaXEhH6agFhlYBYwkTLGGIjlq7JzjvPQT6H0gw2+C+H99e3G45vvgi1ORbq0ecF+3GuN21TOWyluvOEJTHFyXFCysW0pVEt268dYMYg..Ymc1H4jSFuy67N58XRjHA8su8EqZUqxfKRyu3K9BjXhIp29esqcsXAKXALIKTnPgvO+7i4wqu95wpW8pwbm6bYc+B.bjibDLxQNR8RVH.vV25VYMlMFie7iWujEpMll4LmItvEtfN2+92+9wce22sdIKDPSaPcJSYJso3fPHD6UTBCIDhcMmc1Iq1rqo5lRXHaqtNGENYCUggaaaai4DW5Tm5DJnfBXZwmO6y9rLa2+7O+C9u+6+Xt8JW4JYNoCd73gcsqcgpppJHQhD72+8eqSqH8m9oeB.Zp3vjSNYc1mM+0fa8j3xJqrzopGa9I84hKtfQO5QaRestu8sO3u+9iku7kist0shYMqYo2qERkJk41adyaVmSzoW8pWXaaaaXu6cu30dsWCRkJEYkUVlTLXq4lUYkEHoIVf7EpToR7TO0SwbRyBDH.u5q9pXu6cuXUqZU5z5g1vF1.9ke4WXc+7we7GyztNc2c2QrwFKqswTSQM0TC14N2Iysm6bmKpolZfDIRPpolJhIlXXdr2+8eeCte16d2KF3.GH9nO5ivl1zlvfFzfz4wW25VmIGa4jSNHiLx.yd1yFe9m+43ce22E96+MawVUTQE5bB+kTRIXoKcoL21UWcEqXEq.G3.G.abiaDwEWb3Lm4LlbbXKwVqRuIll.EooUAWd4TBCsj72eMWTxJqrRq5wcwK6cwhWFMGCMWBMTMsFthJtX8VLJDti3lpvPQTEFRHsLlLF1xoLbjibj5744a94NVe80q2mc8vG9v5b6lu828ce2LIl6xW9x3sdq2h42eFd3gi0rl0f8u+8i0rl0fHZpxsUqVMV7hWLt3EunN62W60dMcFSFSXBS.6XG6.+7O+y3we7Gm49Kt3h0Kwee9m+4L++AO3AiJpnBTYkUhqe8qqSBM+7O+yQEMMSTuUG4HGAADP.3ce22EewW7EXxSdx573e5m9osoEO5e9m+IF1vFF1vF1.9jO4SPO5QOz4wa94rnVsZL+4OecVHhO8S+z3O+y+Dey27M3du260t+bKHDBwYmcVmhjn0PsjTBgXWy0l0a+szptCQEF1zEp1FnxVZdEB5gGdvLuADIRDd228cQYkUFyIPnM4cZmcCZmmZCcnCUm12xvG9vQ25V2vktzk..v4N24XdrwO9wyzVSpu95wwO9wwPG5PgBEJvINwIzK9N7gOLl5TmJ.z8j3RN4jM540fV74yGG8nGEcoKZZgYyblyD0TSMX26d2LwSN4jC5Uu5ETqVsNq1xHhHBbjibDlJnbjibjnycty3oe5m1jhAaMt4lq..ngao5xZOrjyvvO8S+TclEgqacqi46AibjiDicriEIlXhPkJU..XO6YOXricr5setwMtAhHhHv29seKti63NXVPDEWbau5KNyYNCywEPSq9TaEb1st0Mrt0sNrksrElGupppRmUHrV8nG8.G8nGk44N8oOcDd3gyjjzTRIk1T78Fuwaf29seacNNOvC7.L2t4620t10h5qudla+ce22wrpsu268dw3F23PhIlHqsFI6EBDnY87YNaGuDqGu8xK3ryNi5uwMPc0WG7vcO35Pxgju93K3wiGpQpTnToR6p4TJ4l70Gegmd3Apst5P4UTA0BLsAbiabCTWc0AgBEBecPmY6NJxJ6bA.PbwFMGGIcbo8LJZsJLzc2cGibjiD+7O+y.3lcmFgBEhSbhSnWWkHkTRAUTQEHf.B.Ymc1Hmbxg4wZd0J9BuvKv7b8zSOwQNxQXVHfImbxXbiabn28t2nlZpAJUpDuvK7BLIi7RW5R3S+zOkYeM0oNU7Mey2vb6wN1whPCMTlQfv9129vO+y+LF23FGps1ZwUtxUX11.CLPlyEMhHh.qcsqUmKLcVYkEqsObWbwEbxSdRlQGvrl0rPYkUFSEVVd4kihKtX8lU5sljSNY72+8eybteSbhSDQFYjLuV07ysXO6YO5b6ErfEnyBnbRSZRXHCYH3jm7jlTLPHDhsjucaat02nlgpvPBgXWyEW0jvvvCKTDdXgZQOV0zTEd4qONxILrczRRMy5Tm5Dy+O0TSE8pW8Bqd0qFm8rmEt5pqXG6XGX26d2X26d2XBSXB.PSqP4pW8pH+7yG4me9Xaaaa5rO26d2qNI0o4IQYricr5LeEzlDvyd1yh5pqN..cpnJsmHS94mORO8a1dxL01QJ.vcbG2ASxB0ZTiZT5basCx8BKrPcFp6OwS7D5MeCm0rlEqI7wdhSBcBBEJDJarQy+rbyBTDC6cu6k4+GbvAqypxE.nqcsq3K+xuDqbkqDqbkqD2wcbGFbe8K+xufgLjgX1pd5l+yR..u4a9lXJSYJ369tuCW+5WG228ceL+rzt28tM36cl1zllNWTd2byMclsmkVZosoJDQ6rDUqQLhQnyrfo4ueu4qv2XhIF8ZwSgDRH5LORsG074aIw9Syae1hEWNGGMNtDHP.7wGefZ0pYZY71RN4oNMN4oNMWGF1EhHbMU.CayqZh0WYMUczhDIpUmKaDt0qunkhWeQKs02P.Lio8HXFSy99yGYSxHqvP.vb9p..RkJkIATMuS1n8bMUqVMy827ElJOd7XVvgM1Xi3e+2+k4wl7jmrNcMD.fniNZcZmlm3DmfYA2dricLc9rl25Hv..3kdoWBtzrEn8QNxQ.fljS17JP9W9keA28ce2XSaZSLcujletECX.Cf0WSF0nFkdyYbCcNvlhYNyYpyu+J3fCF8t28l084sV8fu7K+x5bambxIc5tQDBgzQ.kvPBgXWSaEFt1U+tXsq1x0hnjKWNZngFfPgB0Yva6nwMW0zpTZngFzIYZbgW60dMcRNwku7kwBVvBP+5W+fO93CF8nGM9xu7KYsMknRkJr+8uerrksLLkoLEz+92e3s2di669tOC1VSBJnfzIINZO4rleRbKZQKhocxnc0Y17ShiOe9rV0XslnhJJ8tu.CLPcts1jV17jSBnoBwtUN6ryH93i2jiCaMZes9F2P+Y6XagkrBCSKszX9+CZPCh0pcYZSaZXgKbgXgKbg501Y0pO8oOnu8sul0XK1XiUmjnoRkJricrCL0oNUDUTQgnhJJ7DOwSfyd1y1h6mV68oJTnvjm6d73wSuUMryN6L7oYU0f126Cn66+Y689.Pu1Nj8Fd7z7wy45eGLosSaURoss9QrLt4bLz50VR6+sean+29s0pa2pW65wpW65sBQj8uvCOb..TPgEvwQBAPyrEF.HHQA1JaIwdxXF8HwXF8H45vvgi1yovXRt9XFyXz47Ct0y0zCO7.u9q+5LONamqY+5W+XZynYmc1ngFt44H0+92eVOtM+9kKWNxLyLAflysVK2byMV+7y94me5bNkMupBWzhVjNa6QNxQvbm6bQ26d2Q.AD.l3DmH90e8WYMlzxTNGXSQqseMz4V3qu9xzUiZN68ysfPHDSEkvPBgX2hGOdVsVPk1pKzTa0j1a3ymOb2M2fZ0pQ8lXqfjIILloUi78e+2ON5QOJFyXFid8Z65qud7m+4ehYMqYg9zm9nybQ3Tm5TnqcsqX3Ce3XwKdwXG6XG3zm9zPpToHzPCEAGbvF7X17pU5bm6bnhJpf4j3b1YmwPG5Pwcdm2I.zbRZETPA5LD5G7fGLBJnfL4uV8gkV9zs9dasmHpw1lBauy8NaAt4pl1R5MLiskT.X1qvP0pUiqcsqwba1Z4NFqXiM11UbXHe0W8UX8qe8HgDRPuG65W+5XKaYKne8qe5bgJtUlx6SMVt4la5LWQYa+178Yye+ug950d+89ZqvPJgg1uzNGCESywPKJ+apZnslsf3WY9OGdk4+bVsiWGAhBH.3pqthZqqNTsDaupEsilxZJgg25EsmPHrvDNmB+7yObO2y8vb68su8AYxjwLFNty67NQxImLy48d3CeXzXiMhCdvCx7bZ94pd8qecc1+9Zfwlxs14Pz97Z9y2PO2a8427myy+7OO90e8Wwcdm2oNcoG.M+c4csqcgwN1whQMpQYvtWjk3bKLl8qgN2BCwd+bKHDBoLwhY9LdFCJggDBwtkat4pUqU4TizZ.flYSjiNO7Py7VpsrZ9L2F3.GH1yd1CprxJwe9m+Idi23Mzq5qzV4g.ZlyAiYLiAYkUV..vau8FKbgKD+we7GH6ryFEVXgrlvDsZ9IgoRkJ72+8eiie7iyDKt4laXXCaXLayANvAvANvAXtcaocjZrzlbjN24Nqy827JaSKUpToWkHZOhoBCav7jvPKUEFxiGOlU6KvMWc92JEJTf5qudl+8+Yu663ap58+G3uxnIsYzz8jtaoEZK6Ucff3.EPT7phqe2qCDthWEAUTQupn3WthWwwUQDGfBhJ3.bfHprDYHPAZo68dORSWoMI+9izDZZNoMoMImLd+7wi6iq8jO4bdSoz1y48m2ueyjA6F16Oltw6lZxzUYCe97wC+vOLxN6rQIkTB15V2Jtu669LJA2qe8q2fpp0RYKZil8+b1+u9mou1G.H6ry1pGC1Sb4p8qSUSsjTmV94qufOOdPtb4nakcy1giKKe8U62uzQrkjRLeb3vAg2WKoqhJn1RJap6t6FxkKG74wC94mycqs2cvDFepXBiOU1NLbqYIUXHfg2q4oN0ov92+9Q2cq82SX1yd1PjHQ5aKoYlYl3m9oeBszueFW+uWy3iOdCN2MXhtZv.uuDcaNw9+9arwFM4uCe+e+CbiMtfEr.bzidTTWc0gu9q+ZrhUrBiFyF6e+6Gabiajwys4vdduEszRKL1BTc1u2BBgPV9i9jX4O5SZ1qmRXHgPbZ4Y+5m9WLqbvEyh4Gdr0Pax0VggdK06gXkN+F1ILzJ96x2Zqsh8u+8q++0au8h4N24h0st0gyblyfScpSYPhUN5QOp9++9eyR5lYb2vMbCH1XiEb3vAs1Zql75FczQav7MXCaXCPtbsIKd1yd1..FjvvMtwMZP0MNv4olsPTQEkA6xwssssYTxm14N24vZdO3n4RsjTG6JLD.Xbiab5+uO1wNFiIzalyblPrXwPrXw3ptpqxhN+CbNUVUUUYzZz0hgFnrxJK8+aoicrignhJJ72+6+c7we7GipppJ77O+yav508umbD0+1PZQEUjAU3Kf1az+i+3O1dGVVUTEF57iKWtvW+z1tLangFGhUSFtjISF3vgCjKWtYW881KWyblEtl4LK1NLbZDQea5lxJuLVNRbuoqpn8ye+AOtVm4nLw1YMO8pvZd5UMzKD.u46793Mem22FGQtezOBCMy0ey27MaPWi4EewWT+qMv60TiFMF76nmXhIZvuGbjQFIjHQh9O9fG7fLdM00ZSA.DIRDhIlX..PxImr9iqToRClGh5TYkUZv8Wnq0bVYkUZv8p6iO9fEsnEgMtwMhbyMWrm8rGCRhpyx8V..79uug+6D0pUi27MeS6YHQHDBqiRXHgPbZIzyKkvvW7kWOdwWd81rqk9JLza2fJLTD6WggZznAyadyCyctyEyctyE6d261fWepScpXricr5+3PCMT.XbBSF3NbrrxJCW3BWXPu18Ooeomd55+u0cSbSXBSPeKm77m+75e8wMtwYzfl2VPnPgXIKYI5+3BKrPbi23Mh8su8gye9yiMrgMfG3Ad.adbXOnK40JTnvpb9rkyvv4N24p++twFaD+2+6+0fW+nG8n3Dm3D5+34O+4aQmewhEaPKQde6aeFj76pppJryctSFeu+9u+65+2RW60dsF74Sd73g68duWCVut+8jinku7kavGe629sisrksfKdwKhu669Nb4W9kaxcXsyB8ecJUggN0tzbLjZKo1J74wGRkJEZznYP2LPVS6+.+N1+A98gbcK8A+GXoO3+v1GPtHBJnffPgBg71Zyt1hYIFRWqpJHpcj5x4X+4Ivw9ySLzKjXgrrQxQXgElAyTPc2qoToRwjmr14ia+2bp8+dMG3FSkCGN3FtgaP+Gu28tWiR52INwIv29seq9Odtyct52XZW8Ue0PX+1.1uvK7B5q1Q.s+dnO2y8bFrgbzc8pt5p0euEycty0f6wAPakG5WeabJ.G66sXwKdwFLNIV6ZWKdgW3EP5omN9se62vMey2rAIckPHD2A1mg+kE3ttqEiydlyXzwCHf.vebriaQmq24seK7tu6+yniygCG7KG32PDQDgYcdd+2eS3M23aXzw22O+K52cN5r42eSXiLrVlhgfCNXDYjQgHiJRDUjQgHiJJLyYdUT+wlPLSBGvbsyVxcYFFBzujzvhILzGe7ASaZSCG+3Z+99qZUqBb4xEyYNyApToB6XG6vfaLYlybl..FjDQ.f0rl0f0st0AoRkhyblyfm4YdFCpZGlpBrEsnEgW3EdACNlmd5IlwLlA.zV4HW8Ue0XW6ZWFrF6Q0EpyS7DOA9zO8S02hZN7gOrAsQRO7vCDRHg3zWkgx5qp5Zsup7zpwFjGlktzkhst0shScpSA.fm8YeVb1ydVjVZogCdvCh8u+8qes93iO3u+2+6V70X5Se53W+0eE.ZSJ4TlxTv7m+7Qas0F16d2qIeHqW60ds5+u6ryNwMdi2HdkW4UPhIlHJszRwy9rOqAqW2+dxQzjlzjvhVzhv27MeC.zVMxOzC8PFrlHhHBilqKNSTq1xZuUDGSZmigYi5cxSfsiNe8wWHWtbzbKMavCmzV4C+3OE..W+0d017qk6Dtb3hHiHRjeA4iRKqLil4VD6C8yuv.nDFRHlCKsBCAzdul5lag5bkW4UBd7zVUuScpSExjIynMBCS2q4F23Fw92+9gb4xgRkJw0e8WOtq65tPJojBxLyLwm+4et9j.JQhDCpTtXiMVrl0rF7u+2+a.ncTajVZogEtvEBgBEh8su8gibjine8+8+9eW+8HLoIMI3u+9quS6bO2y8f23MdCL8oOczZqsh29seaC5BONx2agXwhwy7LOi9QbhFMZvZW6ZwZW6Z0uFm86sfPHj3hMZKZ8NTILbu6cO3jmf4c8T0UWMZokVL6Y6C.vYS+rnmd5gwW6q+5ciUrhG2rNOW37m2nyiToRMZNRA.j94R2jWyAp7xKGkWd4nuwiE..BIjPwSs5Uia5lVH8fhHjAgPABLZ3ZaqnVsZ8UjiTIt9ILTeRZZkcmIPevG7AX1yd1ngFZ.s1Zq39u+6mw0M9wOd8+B9yZVyBIjPB5qzv8rm8f8rm8Xv58wGezmnsVXXtGkRJof3iOd8yAQ.fzRKMC1AlWy0bMFkvPa47KbfhHhHvIO4IwBW3BMZNtIRjH70e8Wi24cdG7S+zOY2hIaAcsgS4VoDFp6mpZKpaKtb4hO4S9DrfEr.TTQEA.fcu6caT0wxkKWricrCF+cHFJqbkqTeBCA.JnfBzei+73wCOxi7H3+8+LdiRkXhIh0u90im9oeZ.nsZGMUKQ84e9mGIjPBVbrYO8EewWfG8QeTiZYP..O3C9fXNyYN3Nuy6jEhLqCcapAd1oeFGw1H.+8Gb3vAM2byPkJU5ePfDqKe80GTZYkRywPW.QGYeILr7xv3G23n6E1NSoRknkVZAb4xEAzupsg335PGQ6CRZVy7xY4HwMlFKqBCAzl3uUu5Uavwz0Ia.z96zOqYMKCtG1vCObL0oNUiNWgGd3XKaYK3AdfG.JTn.JTn.evG7AFsNwhEisrksXTQSr5UuZbpScJ7C+vO..sU7X+6vN5LsoMMC5dJ5telEtvEht6taTRIkfEsnEw3edm27lGV7hWLiulihUspUAwhEiG8QeTiddtokVZXyadyFL9IHDBwYy5W2KZQq2g4IQzQGsi0++8pC5ZxO+7rny4f01495cuKyd1vjQFFedRMUluIlKzuVFvvQM0TMV4iuBba+sEw30kPHZ0+1QJ.vzm1Tvzm1TrIWq1Tn.ZznAhEK1s3A9ISlL.nspJsjYnkkNz2GJojRJ3nG8n3dtm6gwJu1Ge7AKe4KGG3.GP+NQWhDI36+9u2fa5Rm3iOd7y+7OqOoI.Za0kYjQFFs1AtCNG34q+sJF.im8g1CidziFm8rmEG7fGDaXCa.O9i+3XG6XGH2byEyctyEM0TS5WqtpF0YimB8DBDH.8zSOVm4Xntu1zF0pGG6XGKtvEt.dzG8Q0+ui5uq+5udblybFbi23MNrN+2vMbC3K+xuznMOU.AD.9xu7KGzVQ6pW8pwN1wNvzm9zY70SM0Twl27lMX2z5nxCO7.aZSaBYlYl3i+3OFqXEq.u4a9l3Dm3DXKaYKFsirc195e0p015m35F7yabk4gGd.u81anVsZF2bJDqCe8Q6O+2QqMVtquYOXWeydF5ERzye+8GRDKFc1Ym5qzMh8Sc0WG.ztYGbGteGWAu6l1Bd2MsEyZsq4YdBrlm4IrwQj6Gc2Qgkb2uIjPBFL+.AF560bgKzzETvse62NxLyLw7m+7MXCtBncTVL+4OebwKdQFSZm.ABv2+8eO1912NialwfCNX7Fuwafie7iaPa6DP6807a+1ugErfEv32yHrvBCO2y8bX26d2vCO7fwX2QxxV1xPQEUD9pu5qvpW8pwK+xuLNvAN.98e231Pty18VPHDhkhilAY.oTTwkZ2BjW609OXyu+lFz07Juxqh67ttKy57UdYkgYMqAur221m9Y3JthqbPWSSM0Dl5TljQG+e9OeX7DO4SYvwpslZvkcYyvrhOygToRw9+keEAGbvVsyIg3pHn.C.RjXe9E0pnxJve7m+IBMjPvUckNtsSCqoeXe+DTnPAl60ccvGYlWkcqrGk3a9tuCd3gG3VuYqa64TgBEnvBKDUUUUfGOdHzPCEIjPBvSO8zjumhKtXTXgEB974iQO5QivBKLqZLwlN9wON5niN.f1D7NkoXXxxapolPPAEj9YNwi9nOJdq25srJW6uXWeE..V7sc6Vky2P42N3ui5anALqYdUHjQ3OO7m+k8iVZsUb8W60AesfNVvvUIkTBxN6rQfAFHRHgDXLIhCGpUqFkTRIH+7yGwDSLFMqNGJUVYknrxJC0We8vO+7CgGd3F0h0cTURIkfBKrP8ebZokFDIRjAqYQKZQ5mWKd6s21rYals5eKTSs0fCcjifPBNXLqYxbkfRbNbx+5Tn3RJASdhSDIDuick65rRoRk3a1y2A973gEcK2B3xw1teX24W80..3Nu8acPW2scm+C..rqctUaZ73pIiLyDWL6rPrwDCl1TLtZZH1NmI8yh7Kn.jRxIiTFaxC8afv5nuOC6qwFaDG32+M3me9gqaNWyP+Frw5s2dQAET.Jt3hQLwDChO93Ae9leikqkVZAYlYlnmd5AojRJHPybdl1TSMghKtXTc0UCQhDgPCMTL5QOZmhMePyM2LN6YOq9OdricrFMyEe8W+0wS9jOo9ONyLyznj9NP166YlPHDqIGhVRZIkTB93O5CGx0kmETggm2LpzucuqcMjILLSFp7D.fwOdiqjjAqhFGNZqs1v+9e+bXya1710XDh6DOGPEFZKIWt14Wnt1in6.ejICJTnPaqf1LSXnsjDIRv3G+3w3G+3M62SLwDiSSRPrTu0a8V3K+xuD.ZaILG4HGAW9keo1QzN24NMX.0aOmuhVad6s2n9FZ.xkKeDmvPacEFNPQGczCqVO5PgKWtH1XiEwFarCq2e3gGNBO7vsxQk8QN4jCtga3Fz+wKcoK0fVSZM0TiAssUmwu1WkJsU1s8psaSrc7yW+PwkTBZxAq52bkHPf.HVjHzdGcf1ZSg91ptsxPknPxHSTQEItX1YgxJubLoILQK5AcSFYpsNsUXXvAQaVYBwbYs6vNiT74yGIkTRHojRZX898wGevUbEWgE+97yO+rKyQXaAMZzf4N24hd6sW.nc9LdhSbB8UEY2c2sAihjjRJIL5vHmWK...B.IQTPTkwLFVIVIDBY35roqMOYSZhl2yT0g32.esq8EMq49W94YIIL7bC4Z9keQ6vAdvRBPFYxbBCGGCOzZScMm8ruZ73O9JM3Xc1Umnf7yG4lat3.G3WP0UWMiu2e8.G.+3O7CXdye9lLFID2Mb4x0t9.DZSg1DFJUpq+7KTGe7wGTQkUhVZoUfnLy2j8IGLD.bu268pOggpUqFKXAK.W20ccHwDSDW7hWDey27M5W6UcUWEl0rlEKEoibx7VaU40hUXlZZKmggD6i4Lm4fvCObTYkUB.fMu4MibyMWjVZoA4xkicu6ci1ZS62y1CO7.qYMqgMC2gEcsBZJggN+7yOssKy92hnIVe93qun8N5.M2Ry17DFRrs7Vp2Hf.B.MzPCnrJJGwFsq4F+xQSWc0EjKWN3yiG72I8g96NZd230y1gfaO8ivP1MLHi.94meXdyad5mYjm8rmESdxSFyd1yFBEJD6ae6CYlYl5W+y+7OO86nSHDmN+eu1FAf42UBX8DF9a+1uhCenCYzwukEcq3a+lu1fiUPA4a1mWyoBC6t6twd26dv8bO2qIWSlLjvvPBITFaSnl5Zd4W9UfjSIEiN9T5qMqrhGek3Yd5Ui8u+elw2+q8ZqmRXHgzOdwPanb+GPauk+5u1q1pe8Tzd6..PpD2nDF1WUEZMRRCw5adyadXSaZS3ge3GFZznAM2by5SfX+cW20cgMsoAuce6nS2CtpgFabjexryUXHw5yCO7.G5PGByYNyAkUVY..3PG5P3PC32kL1XiE6bm6DIjfyWafT2NblprFme9HyGvgCGHus1Pu81K82o1H95iOnxJqDszbK.QZt6xIaq+w+OyaLZPLVrwDCZngFPQEWLkvP6jZqqV..DPfAROHbmH+i68NM609jO8+F..aX8N9ypZmK5xXHkxPmYae6aGKXAKP+8SjQFYfLFP2lSpToXSaZS3tLywjEgPHNyX0eaPkJUhW4keYiN90bMWKisPp5qudzRKC8CuVkpdQVYcQyJF10W8UC5qmACsYTlZIdZznAYjAysjzwOgAubOkISFduM89XFokFiudEUTATnPwfdNHD2IBYncj9ge7mhO7i+Tax0q89RXn6zvst+IoYPF0sDVzxV1xPd4kGV0pVElxTlBBLv.Q.AD.RLwDwcdm2I9tu66vN1wNb5akt95qufKWtPtb4PoRkinyEUggtFhO93QVYkE9fO3CvblybPLwDC71auQzQGMl0rlEV+5WON24NGl1zlFaGpCKJU1M.z1pEIN23wiGjISl1M1gYbOLjgGe8Qakb1bK19V+5Gs0siOZqaeHW27tgqCy6FtNad73JJxQEA3ymOZngFf71jy1giagK0NRChkiDhsRIkVFJozxX6vvkCUggtFjHQB9se62vd26dwsbK2BRJojfLYxP3gGNlxTlBV8pWMN+4OOt669tY6PkPHD6BVcat9ge3VPYkUpAGiGOd3IexmB76qeQOP4medXpScve.P4kW9nyN6znimPBiF4Of4fXlYlAxM2bPhIZbO9tolZhwVEJSILr3hKVeKvp+3ymORNYiqtPlrhU73XwG+3L9ZETPAXBSv34lHg3NxSg1u4WnZ0pQmc1I3vgCDIxK610ks4kWdAIhECEs2NZo0Vz+v3HNVhO93wq+5uNaGF1Tb4xE96men9FZ.MzXiHrALD5sHbnTF5pPrXwXIKYIXIKYIrcnX00ceIFWn.62OqiX63mu9gVZoEzTyMg.CH.1NbbI4qOZ6JB1ijx9y6W6LR8A9G2iM+Z4thOe9HpHiDEVTQnnhKFSXbl+7qlL7PILjPFdzswZcTlggjgOtb4hErfEfErfEv1gBgPHVcy7JuLKZ8rVEFVSMUiM8duqQG+Vu0+FhOgDPXgEFi+P2Bxufg7bapYI3ytlmiwcq8t1EyUYXlYv77Kb7i23D2YpqYhIkDDZlI2XpScZHZSz1UJrfg9O2Dh6BABXdCEXKzQGc.MZz.Qd4E3xw8pE8DP.AB.f5anAyZ8NZC8chqi.56gr2fY90hlh9zER4Kj3.q6t0VggBERUXnqfKMGCs8U+l6JQhDAABD.kJUx3lFk37I1XzdOwEWRI5mqqDai1Tn.s2d6Pf.AzFDzIy1+7uBa+yG7NlEgPHDBg7ud3GB+qG9gL60yZO86W8UWG5niNL3Xd5omXEq3wAf11vTfAFnQuu7FPEBxjKvvrDzCO7.okVZ35tdiGLze229c5mWL8GSsXTtb4hTG23LqqI.vDXH4hClHhXTLd7BJjRXHg.n8Anxzr03VukaB25sbSV8qmB2v1QpNAFf+.XjmjFBYjJ.+6KggMNB+ZQpBCINAzUggBnJLzkfe91W6xr4lX4Hw0lLYx.fiyrWdiu8lvFeam6YHLaxe+7GxjICc2c2n7JpfsCGWZ0VaM..H3fBl1zeNY1y2+SXOe+OYVq88+euAd++2aXiiH2OTEFRHDBwUDqjvvSdhSfe7G9AiN98ce2OBNjPz+wgOJiSdVA4m+Pd9uvELN4cIkzXfGd3Ati6XwF8ZM2bS3W+0CXzwyHSiqvvXiKNFSb.SWS.lqFwAS3gybBCGoysIBwUgoZGoK91WDV7suHq90ycb9EpitJLrt5qmkiDh6t.7WaxqapolFQUZ.UggDmAJoJLzkhLYxzNGVaqMzSO8v1giKKezkvvVZ0ldcdzGYY3QejkMjq6OO9Iwed7SZSiEWcIDe7..H+BF56+mL7USs0B.fPBNXVNRH1R96ueve+8isCCWPTBCIDBg35wtmvPUpTgW5kdQiNtO95KV5x9mFbrvCObiV2.mAgCTmc1IxKOiWSpiKU..jVZWFhHxHM5028t1kQGKiKXbBCYZ9E1SO8frxJKFimwagycPk8vbhA0MaNHD2cB8z9VwEtyILzaoRg.ABPWc0ETzthg9MPIggXiHTnPHSlLzqJUirDXSUXHwIf9VRJUggtD3wkm9peydLi8bW4iLs2qjstBCuxKeF3Ju7YXSuFDshNxnfGd3AZnwFQysPszWaA0ZTqe9ERILjPrbzlPjPHDhyf87C6C64G1mYud6dBC2w1+Ljat4XzwW9xeDHUpTCN1nXnZ6pu95QKCxMaewKlIToRkQGO0T01FQ4vgCt8a+NL50OxQNLpsucWG.PiM1HpolpMZcLUwf4jS1LVAfRkJEwEWblLVYRwEUDiGWFkvPBA..BYXNjZK0dGtuILjCGNHn9ZMz8+6ORHrgvBMT..TU0UMrOGTEFRbFzdesreuD4EKGIDqEcskzVnjdXy3iO5ZIo11JLjX+vmOeDazZmkg4W.MdNrEZtolQO8zCjHQha4853raYOz8gk8P2GaGFt456lJnJLjPHDhCrsuiuDaeGeoYud6ZBCapolvF2nw8M8QMpQg68d++YzwMU64rfAosjbdSLKA0kvP.fa8V+afGOdF75pToBe629M5+3Lyv3pKDf4YR3fcMszVSPgEVHiGOnfBxhNODhqH974AO7vCFesO7S9L7gexmY0ul5lggRbSuI5PCQWRZLdCTLP599ppUoR+7bf3ZoWUZm2uLMGQs0BKzv.f480hlBO97A.XbtESHVBceMD+A76SNR0sxtQu81K3ymOUggtPtz70SNKGIttj4s1OGKWt7QTqq1Z44e1mDO+y9jrcX3zK99ZKokUVYnakcyxQiqGpcj5baNy9pvbl8UYVqcw2yCfEeOOfMNhb+vkq1eOPUz8VP5Gcsfdq88IPHDh8hc8I985a30fb4FeixqbUOAiIAXTLLCCA.xOOSmvPllkfd5omXziNA8ebvAGLl0rlsQqa265qz+emQFWvnWWnPgHwjRxrtl..SvBaGoM1XiL94GsmqIZQmKBwUjPSL+BA.1+u7aX++xuY0ul5aIohbWSXn14Jas0U2P9.33ymODKVL5UkJTYUUZOBOhcVUUoMYcd6s218qc.96ODHP.TnPAj21v6gtqaFWUZYkZMCMhaHceMj2880TVKs6luIUbUoKYVsJmp9MaE974CIRj.MZzLr+YDliW5UdM7RuxqMjqabolLFWpIayhC2ERkHAgFRHnWUpPQEWLaGNtbpo1Z..PHAGBKGIDaMUpTwXm3hLxHSl16IpwlZBsonMVNZHNJJpDs+7Je5qCSPHDhyF6VBCyHiKfc0uDxoyXSNYbS2zBY78DFCyvP.f7Fj4XHSU62XFyX.Od7M3X29cXbaIs3hKFm4LmVa7lowUX3XSNYvmOeiNtopvPlZeoClCcvCx3wiHhHPvzt9iPfmCRBCsE5UUunqt5Bb4xEd4k6YqgSjHQPl2did6sWTeCMLjqOg91I3m7u9KTbokPUxkKB0pUiJprRblzOK.f9VDl8DGNbtTaIspgWUFFWrwBNb3fRKqLb1ykN5rqNslgHwMPO81CJnvBQ5m6b..Hg3h2pd9aucssiTp0v4ZQ2lUnUpcYZSo6yyszhs6yyYdwrPlWj4YWOw1Hg30tweyO+7cHpdTWEJ6QIZnwFAGNbPvT2LhPFV7TnmHxHh.pUqFG4nGE0VWsz2mxMVWc0ExHyLw456YDOlDSjkiHBgPz5ttyaC20cdal85MN6W1.ZznAuzK9BL9CNqut5vBl+Mx36q2dYdGPUP9LWggM2bSn7xJyni2+1QpNyd1yFAETPnt9Fx25rqu5qvjm7TPlYjoQuGlR.X6s2NJxDsQzwaAUXX2c2M13F+uL9ZSa5S2rOODhqLO8z9lvvN5aNRIRjHKt8B6JIzPCEsJWNptlpGxGnPhILZzPCMfJprRbxScJbRbJ6TTRrWBMjPP7waYymWqkvBMLTRokhpptJjzv3FvjJQJl5TlB9qSeZjW94i7LwuOAgXNhMlXPLQGsU8bpncE.fRXnqFgBEBgBEht6tazdGs6110Br07wGePEUVIZo0V.PTrc3PrRBMjPf2d6MjKWNJq7xQzQQ+cq0Ps0VGznQCBLf.L4Hef3Xa8a3MA.vS+jqXHWqmd5osNbbaM4IMIzpb4n0VaEG7vGlsCGhChTRNYDdXLWDLDBgXucK2z7rn0aWRX3270eMRO8zY70pu95Q80WuEc9x2DUX3ENuwsQT.lSXHOd7wsdq+MroM8dFb7e7G+Q7vKe4nlZLt5EF+3GuQGKiKbAFSDZngFJBLv.YLdXx115mfpMwbY51tsa2rOODhqLO7PfIesG6esLq90qyN0V8QhEIxpetclDZHghbxMWTc0UiILNi+9f8GGNbvkm1kgBKtHTXQEgVasUZWV5BfCGNPpToHlniFIlvnAWN1+YXH.PHgDL3xkKpugFPmc14vpxeiM5Xf2R8FYkS1n95qW+LlfPLG74wCx7wGjPbwaSdn0TKI00kOxjgZqqNzZqxoDFZi3iLe..PKN.Ux4Sr5mC..u9+4UX4Hw4GGNbPRiNQbpS+WHm7xkRXnUR0887NBsut2.w4yYN64L609Yex6aCiD2aBEHDWyUe0HmbyEkUVYPQ6sCMZzv1gEgE3gGdf.BH.jznSjpbaBg3TylmvPEJTfW60VuU8bVe80iVasUHa.yMFSMKAScbox3wu863Nv6+9axfeXdGczN9Oqm43koDFZ54Wn4OyAKu7xMJwk5jbJofoN0oY1mKBwUkmdJDb4Z5p76JtrYX0ulc1YW..tssiTcBLf..e97QqxkCEs29P9fr4vgChO13P7wxNUglshFMZfh1aGRkHgsCE2VB7P.BKzPQEUVIJorRwXRz34Jr4H.+8Gy7xuBqbz45p9FZ.AFP.rcX3VP2rrVhDorbjPr17169RXn7V02dkIVWWpkj1hM6Zrg0uVyZckVVE1rXvcTTQEItPlYfVZoETSs0PybOqfZpQ67KT27JmPHCedv2CjZxofTSNE1NTbJUYUUgPCIDvkK6roTIDBgXHa92M9sdyMhFLi4dkkhopLjoYInHQhPblX9xDYjQgYLizL53+7OuOiNlO93ChJpnMqqIf42NROzgNHt4Et.8OfnA5AevkXVmGBwUmP677KD.5muYd4o6cBC4xkKBOrv..P4UTNKGMrmLxLSjeATKrjsESeyOwRJoD1MPbSnQiFb7SdBTQkUx1ghaAcUFku93CKGIDqMej4M.n4XnsjXwhAe97QWc0E5VY21jqQzQEIhNpHsImahowiKOL5DzNKCyI2bY4nw4Wqs1J5nyNgmd5o9JykPHD1RAEV.N3gOj9N7DgPHDqq288+P7tu+GZ1q2lVggEje9XaaaaFcbd73Y1ITqpJqhw1CZ94kOlxTlpAG67m23VxvXGaxC5tT4NV7hwwO9eNjww3Fmws0TScMAXddG1epToBu0atQ7du26Zx1Uvbly0fa5lV3PFaDh6.OYiDF12uvpWdQy7gHFUDnzxJCkWd4C6p5xYVYkWNxJmrMpx1I1egFRHPnPgnU4xQSM2L7yWeY6PxkViM0H5niNveclSi.72eZF3XC0QGc.kJUBABD31WY6thz8yOnDFZ6vgCG3sTonolaFxkKGAFf4OdHHN9hO13PVYmMpo1ZQyszBswJFAptupKLjfCwsdNs6r6UdomyrWaM0VG..BIXpMIRb7nQiFTeCMf8+qG.W1LlABJP5qSIDBwZ5PG9O..vxW1CZVq2llvv0t1WBpT0qQG+1t86.qacupYcN9rO6SwK9B+aiN9.qxiJpnBzTSMYz5LU6HUmq65td3iO9LjstlwyPKFs95q2jycPABDXPUPpVsZzRKsh5qqNb5S+WX+6+mQc0UmIudADP.X8+mWaPiIBwchPgld9EB.7Rux+A..uvysZq10TWKI0S27JLDPaRZ3ymOZp4lMq1RpqjVZoEbp+5T.P6C5s6t6lUp3UhVb4xEQEYjHu7yGkTZITBCswJqbsUUb2c2M9qybZbkTqb0lokV096hRODbWSx7VaBCaqs1fFMZnGRuMhLYxPSM2LZsU1Mgga9c2HqcscUIPf.DWLwhbyOOjcNYiKigNEDw7ne9ERsiTmZINZl6jVL4eshmB..6Zma0FEMDxvm59Jhht5pKbvCeXLtTREIkXhzuqDgPHrDaVBC2+9+Ybri8GFcbwhEiUtxUY1mmn6q0iMP4mmgsjTSN+BSk4JCTGgBEhEdy2B11V+jAccVx7KD.3VWzMOnmuAiu95G1xG9QvO+7aXeNHDWI74yG74O3e6pLuX1V8qq9VRJUoGfGOdHrPCCkUdYn7Jbepxvt6tabz+7XnWUpzer5pudDwnFEKFUjniJZjW94iRKqLLgwMdZdWXinQiFTdEWZNbUYUUghJoXDqI9cyHiLM22lWyGJggtj7vCOfHQhPGczATnPAjJklSk1Bd6ces9U41lJ4bI+yGC..aYSu0ftN+7i1LK1BIl3nQ9EV.Jq7xQJImL7Vp2rcH4zomd6A02PCfCGNHjPBlsCGBgPLnqqoQiFb9Lt.ZnwFvzm5zf.AC9FGmPHDh0mM4Ir0UWcg08JuLiu1xW9i.+82ey9bEczQy3wG3LL7BlXVBNTILD.3Nti6XHWCSsXTSM+BGIhHhHvt+5uAiabFmfRBwckmdxNUyk9VRJ0B9..PjQnMIYkWt6wbLTsF03OOwwQ6s2tAGut5Mc0gSrO7yWegLYxP2c2sa8b0zVqgFaznYIxYSOci92DDqiVZQaBNn4IkqKY5SlEyytbxHmtJ4zTyG9QpVZoU8+aUh8mHuDoeVFmU1V+MKn6fZqsVnVsZ3u+9CgBnNlAgPXeLMllprppvu7qG.M2RyrPDQHDhqkU+DOFV8S7Xl85sIILbya98QkUVoQGeTiZT39t+GvhNWgEVXvCO7vniWe80avL.goYInDIRPLwLz6B9DSLIFqfPcF0nFEiU62ELw7Kb3fGOd3Nuq6Bey2tGSljTBwcEaL+BA.5tq9ZIozLLD..gFRnFzVRc0ctyedTKCsNZlNFw9azwqsMLk6.53.DqmxXXyAzau8hS9WmxjyeYxvWiM1...7kZyttrzUMTs0Varbj35hRJqquwlTRfCGNnzxJCJTnfsCGmNU02HUIrPCkkiDxH0i7XOIdjG6IMq0lP7whDhOVabDQHCOl59JTzd63.+1ughJtH6bDQHDhqkoL4IhoLYiG2dlhUOggUTQEXyu+lX70dpU+zVb4jyiGODYjQx3qoqJCUoRExLyLM50SNkTL6dd8seGK1juFSUWnFMZvEtvELqy8fwSO8Dyct2.9oe5mwq7JuJ0FRIDFXNyKtMr9WFaX8LWYyCGJUpD8pRE7vCO.ed1zw8pSCd73gvCKL..TRokvtAiMVwkTBxK+7Y70jKWN5pujISXOQGUzPnPgnolaF02P8rc33xQa6Hk4p2rt5q2j+6Cxvih1aGczYmPf.A5S3Aw0iDoR..PaTRNrYDIRD3ymO5pqtP2J6l0hi63tuebG288yZWeWYhEKFQGUzPiFMHqbnpLzRnQiFJggtPpst5Qs0Yd+Nvu5K+uwq9x+aabDQHCOC1FQTsZ03Tm9z3j+0eAU8aLgPHDBw1wpmvv0stWFc2sw2b1jm7Tv7l27GVmSSMGCKnuGVUgEV.5niNL50sj154BVvMAQhDy3qMNFp9vxJqTCpvwgBOd7P.AD.RLwjPZocY3tu66Ae3G8w3Lm8b3ceuMg3SHAy9bQHtaDHv3pLdfhNpHPzQEgU6ZRyuPloqMPUbIk3xVgQM1TS3uNyoGz0TW8TBpXa73wCwGWb..HGpJCs5pugFFzDie9Lt.UAOVQ5R5cfADfYuY2HNejJQaBCUnfpvPaENb3bo4XXqV+uG0N+rOD67y9vgbcpUqFpUq1pe8IZM1wnsJCKtjRP6c3520KrVZtklQWc0ED4kWT6ulPHNLzXF+7xZqsFpS+PHDhchUurY1zl1r09ThOXKC9MkM5QmHJrnRFQWCwhEiLx7hl85iJpnGwWSBgLz7zSOYkGdZmcp8AkSyuPCEbPAAQhDg1aucTeC0ifBLH1Njrp5pqtve7mGaHeHe0VWcHxHrdInlL7jPbwiryIGTYkUh1TnP+CimLxwT6Hs+TqVMNwoNIt1qdNfKWaRGt2sR88sIDBLv.Y4HgXKIQhT.PUXnslLu8FM0TSPtb4HHq7+lhOepqS3HPpDoHxHhDkVVoHqryAScxSlsCImB5ptvPCMLVNRHDB4RFrMhrDwhwXRZLH5niB73xyNFUDBg353Ye90B.X1ca.5I7PHDGZd5I6L+B6rSpBCYBGNbPLQEM..Jp3RX0XwV3hYmsY0tQqqdZ2M5HvSO8DQEYT..Hu7opLzZQiFMnhJqXHWWyM2LtX1YYGhHWe5SXX.TBCckIRjWfKWtnyN6D8ppW1NbbYouBCka9cCFqMu7xK52gzFK4wNFvgCGTTwEQyxPyjtDFFdXT6H0UvV+n2Ca8idOyZsm9LoiSelzswQDgL7XpDFxkKWLmYe0HtXikRVHgPHi.4WPQH+BL+4AKkvPBg3PySyX9EB.rjk8XXIK6wrZW2t5VWEFROrmAJ5niF..UTQ4nmd6gcCFqrIOwIha8VtELmYOaLtTR0jU2Zas0l9jJSXWIM5QC.fBKpHzQmF2dxIVt5pudSl3b+8yeDUjQhjG6XwLl1zP3TUJLh0YWch1Tn.74yG95K0h3bkwkCWHVr1QffBETaTzVQl2x..rIsM41auczd6C8e28oe7lvm9waxpe8IWh2R8FQGUTPiFMHyrL+NEj6pt5pKzTSMA973gfBx0pCg3tRrHQPrHQl0Z+Ou9ag+yq+V13HhPFd5eBC8wGePZSe5HjfCFpUqF4WXArXjQHDh6IpmpPHDGZly7KD.nEKXlhZNTpTI..DZlIrzchTIRPfAD.pugFP4kWNhMlXY6PxphOO95qxGMZz.Yd6Ml4UdknolZBMzXinwFaDM0bynt5qSe0sQXOxjICQFQDnrxKGWLqrvTm7TX6PxoWaJZCwDczPhDIPpDoPhDw3nG6XnyN6DoMioCIhoV+p0T08UwGAFXffKGZu74pSpDIns1ZCJTn.9HSFaGNtjjIS2LLz5Wgg+iGb4..XW6bqV8yMwxkxXSFkVVYnjRKEiIojzmrXhwpr5p..PPAED3yidLPDBwwgFMZfe94GRdLiEgGl1MinHQhQM0VKJnvBwXSZLTKAmPHD6H563RHDGVd3AeV6WLr6t6F..BDJfUt9N5hIlXP8Mz.Jp3hc4RXnNM1XS..Hf.BDhEIFhEIFQLJsysP0pUid5w0p5JclkRxofxqnBTTwEijRLQHsu4DFY3I9XiCwGabFbLoRjfN6rSnPgBJggVYUVk1GhKUsltGjz2rVsMEswxQhqKQdIB74yGc2c2nakcCgBnM+kqJwhEiXiIVTPgEfLxLSbEW1ky1gjCqJqrR..8OLdhyud5Uaqs1CJQJDmboMiY.+70OCNVfAD.BHf.PCMz.JrnhPh80UYHDBgX4dm270rn0SaiYBg3vhMqtut0UggzCYhQQNpHfGd3AZnwFQyszBaGN1DMzTi..ve+8ynWiKWtT0m5.waoRQLQGMznQCxHSpsjYKnOIGsQyIJqIUpTgZqsV.PODW2ER66eKQybMaGNb3.oR0twQjKmcRLa0UWCpt5ZXkqs6ljG6X.ed7PEUVIZp4lX6vwgTup5E0Um14ucXzOqwkwccuOHtq68AMq0Nqq5JvrtpqvFGQDxvy.SVnNiIwj..Pt4mGTqVs8LjHDBwkRHAGDBIXyukzSILjPHNrL24WH.vWr8OBew1+Hq10VotJLT.UggLgOe9Hl9lkg4WP9ravXizTSZenS96Gy2.CwwRxiMYvkKWTV4kgVbQShMaRWUaRUEk0Us0UK5UkJ3qu9Bu7hlYttCjn6eK0F8ukrk7Vps4yyl6Ma+nq7owitxm1pdsILyKO8BwGe7..3BYlIKGMNlpsVs+rF+7yOZ9r6lZ4K6AwxWl4kbQBwQQXgFJ71auQGczAJs7xX6vgPHD2FTBCIDhCKO8z7SXHOd7.Od7rZWa8UXH0RRMoDhS6CmorxJS+LezUQWc0E5niN.iGVYnB..f.PRDEDUe97g2R8lsCGhYPrHQ5+ZxymwEX4nw0iTazCe2cm91QJUwGtMnJLz9P2O6Vdaxspm224MeMKtk9Pr8FShIAO7vCTSM0fZ5qpsIWB8yZHDhyHNb3fjRLQ..jSt4xxQCgPHtOnDFRHDGRb3vAd3gGr10W2LLjZIollToRQHgDB5UkJTTwEy1giUUi8Ucg94qufCGNrbzPLWiYLZefgUWSMnxppjsCGWJ5SXHkjCqF0ZT2uGha3rbzPrWDIVD3vgC5nyNgJUpX6vwkEsIGbuHTnPLljz155N2ENOznQCKGQNNznQC8yZbQ4qu9.e80G1NLHDapniLJ3kWdgVasUTcMUy1gCgPHNkt26aY3duukY1qmRXHgPbH4omBsnD0nPQ6Pgh1sZWecULmGBXujV5LPWEckegE3R8vYzMCb7iZGoNU7TnmH0TRA..mI8zQu81KKGQtNjHQL3vgCZu81gJ0TRNrFpolZQWc0EjJQB70G5A94tfKGtPjHQ..niN6fkiFWWd6ceyvPVJggiNg3vnSHNV4Z6tJwDFMD4kWnkVZAkTVorc33vnwlZDc2c2PrXwvGYxX6vgXE8Au2ahO38dSyZse6d+Q7s68GswQDgX8wkKWL5DR...4lWdrbzPHDhyot5pKzUWcY1qmRXHgPbHYIyuP.f6aIKG22RVtU4ZqrGkPiFMvCO7.b4PeaxASXgFJDKVLZu81co1weMouBCoDF5rI93hC95iOniN5.WL6rX6vwkAOt7fXwhgFMZnVonURIkVB..htu4AKw8g9DF1Qmrbj35R2bWUgBEPsZ0VsyaN4kOxIugd1Mut097Xcq84sZWWxPiGOdH0TSE..YjQFTE71mJpTaGWfZGot297ctK746bWrcXPHCKwESrfOe9nlZqEszJMq5IDBwVidR3DBwgjPKLggVSJ6V27KjZGoCENb3f3iS6NnOu7G5GflyhlZtY..3me9xxQBwRwkCWLkIOY.ncVWHWt0c9U4NiZweVOJ6Qo9GhazQEM6FLD6NQdoKggVuNi.wP730uM4P6VuM4vy+BqCO+KrNq14iXcEcjQAe7wGzQmchbympDEfKkvvQE9nX4HgPHjgGABDfXhNF.PUYHgPHCG73wC73wyrWOkvPBg3PRnPAr10takZmegBDvdwfyj9ui+ZtklY6vYDq8N5.c2c2Pf.APhXIrc3PFF72O+QbwFKznQCN8YOCaGNtL7tuDFJWNkvvQpxKubnVsZDbPAAw8UsYD2GhD4E.nJLzVi1jCte3vgClv3FO..xNmbzOSxcW0ZqsBEJT.gBEh.Bve1NbHVYEWRon3Rn1uKw8Ph80VRKsrxrn1pGgPHDfuX6eD9hs+Ql85oDFRHDGNd3gGVzNe..HjPBFgDRvVkqe25pvPJgglEABDf3hMV..jcN4xxQyHWy5leg9RUWnyrwm53fPgBQc0WOJrnhX6vwkf9DF1FU0liTEWRI.fZGotqnYXn8AatIGN0oOKN0oOqc+5R.BI3fQngDB5omdPFWLS1NbXU8ucjRiYAWOO0y7B3odlWvrV68b22Atm69NrwQDgX6HQhDLpvCGpUqF4WPArc3PHDhKM9rc.PHDx.4omVdq.8c13+wpc8U1WEFRsjTyWhILZjW94ixqnbnn8TgDwhY6PZXSe6HklegN0DHP.lzDlHN9IOAR+7mCAETPPpDphQGIjJ0a..HmpVmQjlaoYzPiMB974iHnVDmaIcUUZ6cPILzV5RaxAq22yZJSdBl051v+8sA.vt14VsZWah4aBie7nlZqEEVTQH93hC9HyG1NjXEUTYE..XTgGNKGID11Bm+Mv1g.gLhk3nSDUTYkH+BK.iYLIA97nGoMgPH1Bz1LiPHNb7jkSTWO8zK.nVRpkPjHQHpHiBZznA4lmycUF1TSZqvPeoJLzoWTQFIhLhHQu81KNwoNITqQMaGRN071ap89YMna1qDaLw.97oGzg6nKMCCoDFZKoaSNzlUrpnW8SrBr5mXEVsyGw1Pl2xPBwGOznQCNa5oy1gCqn81aGM2RKfOe9H3frNcgEBgPXSAFP.vO+7CJUpDkTJ0NdIDBwb0XiMgFarIyd8TBCIDhCG1tx95o2d.f1ViJw7MlDSD..EWbwN0yLF8UXneTBCcELkIMIHxKuPiM1HxJ6rY6vwolmB8DBDH.8zSOnyNoYu1vQmc0IJq7xAGNbvnSXzrc3PXI5aIoTBCsorEUXHw4QJiMYHPf.TW80ixqnb1Nbr6pnJssizPCITKdTOPbNjRJiEojxXY6vfPrqRrue+47yOeVNRHDBw4wxdjUhk8HqzrWOkvPBg3PgCGNvCOr7JtHmbyC4jadVkXn29pvPpxOrLxjICgFZnnWUpPdE3b9Kv2d6sCkJUBABD.whbdaqpjKQf.AX5Sa5..3hYkEZrIyeWUQLF8.3GYxufBfZ0pQ3gElScqalLxHPf.vmGOzau8Bk8njsCGWVd4kWfOe9PoRkPoR66mmm8rlIl8rloc8ZRLj.ABv3RMU..j94OO5UUurbDYeoa9ERsiTWWuvZdJ7Bq4oLq09Nu2Gf2489.abDQH1dQLpQAO8zSzpb4n15pisCGBgPbIQILjPHNT7xSOAGNbr322y+huJd9W7UsJwf9JLjOUggVpwjXR.P6CEW2mGclbopKjlegtRBNnfPhidzPiFM3Dm7DNkesoiBu8V2bLz50h+bWzqpdQAEVH.zNCVHt2tTUFRUqqsjj9lcsJTnvpb990e+v3W+8COjq6gW58iGdo2uU4ZRF9hKlXgO93C5niNPN45b2x7sDc0UWn95qGb4xEgEZnrc3Pb.bji9m3HG8OY6vfPFw3xkKhOt3..Pd4ac1v3DBgPLDkvPBg3PQnmra6HE.n2d6qBCGFU5n6tfBLPDP.A.kJUh7Kn.1NbrXMqKggz7Kzky3RIUHSlLzlBE3jm5Trc33zRptJLTNkvPKUQEULTpTI7yO+PfAD.aGNDVF0VRsOzkvv1TXcpJ5MukOAadKehU4bQr83vgClzDlH..xImbP6czNKGQ1GUTYE..HjfClFwBDBwkS7wFG3xkKpp5pQ6s6d780IDBYjH5nhDQGUjl85omFtcRVW7hH2byA0VWcn1ZpApUqFQGcLHlXiAwDSLXTiZTfGOq+eczVasgSdhSfpptJTWs0hFarQDXPAgXhIFDSLwhXhIFHSlLq900VpzRKAkTbInxJqDUVYEn4laFAFTPH7vCGgGd3H93hGAGRHinqgb4xQt4lSeWiJQUUUED4kWH7vGk1qynFEFyXFyvpR3XCETPAnrxJU+edj2ZqHjPBQ+edRXziF96u+rcXB..OY44WH.PO8PUX3HQJiMYbnibXjSt4hDhOdmpOO1TyZaWkTBCc8viGObEW1kge4W+UTQkUhKlcVH4wPy8EKkr9pvv1nVRpEo2d6EYki1YnYxiYLrbzPbDnOggcRILzVRp9DFZcpvPhymfBLPDYDQfxJubb1zSGW4keErcHYyUdEZSXXDiJBVNRH1RG8XGG..W4kmFKGIDh8kmd5IhLhHPIkVJxuvBvDF23Y6PhPHDGZaX8q0hVucOgg6XGaGu7ZeIyd8xjICAGRHHjfCAgFZn3Fm27wzm9zGx22oN0ov+u68ts33SnPgHv.CDAETPHrvGEty67Nwjm7Tr3yC.PEUTA9pu7KvO7C+.JszRFz0xmOeLiYjFVyy8bXziv1TkZ0pw99oeB6cu6AG4HGdHmYGSdxSAOyy7rXhSZRl803i+3OBu1+Y8in3bfBLv.wQ+ClaSFpT0K94e9mw115VwYNyoGzyCOd7vMbi2H9m+ykijRJIKJFxKubw1111vd9tuEc14f2hnhOgDvxV1+D2zMcSlUxde8M7Z3C+vsXQwyPIojFC9t8rWFeMkJUhueu6EacaeBx5hWbPOO74yGKZQ2JV5x9mH5ni1pFiVJABFdIWZJSdhVsXPeEFRyvvgkPBNXDP.AfFZnAje9Efw5D8vw00RR80Wpkj5JRpDoHsoOCbj+3nHiLyD94qeHzQ3FLwciTo80RRoJLzhjWA4it5pK3me9gvCilmTD.u7zK..zUmcwxQhqMoV4VRp45a9te...K5lmuc85RX1DG+DPUUWMprppPUUWEBKzvX6Pxlo6t6F0Ue8fCGNH7vbc+yIA3s+eaF.lWBCelm5ws0gCgXWkP7IfRJsTTTwEiTRNYv2FT.FDBg3txt+cTO24RWe06XNZngFPCMz.tXlYB.fsu8OCiM4jwC7.OHt4a9VL4667V30Qmd5oGnPgBTbwECfShu8a9ZL0oNM7Bu3KgwXlOz6d5oG7Aa98w69t+Ozc2caVumd6sW7G+wQw7m2Mh69tuGrhGekCqJ+KyLy.O+y8b3BW37l864Lm4z3u82VDtga3FwSs5UiHiLpg78btzGde9cvjTRL+42CcnCh07rOKpolpMqyiJUpvO78eO9gu+6w0dcWGdy27sgmd54f9dZs0VwJdr+ENxQNhYGuEje93IV0Jwa8laDu9+8MvTlxTGz0e1zOqM3yYLmPzu+62KV6K8hnolZxrNO81au3q9puD6d26B27sbKX8q+0.Od7rlgpYQf.OF1W2U+DOlUKNzWggTKIcXK0jSFG7vGF4jWeUYnSP6PRQ6sCkJUBgBEBw8U4GDWOgEZnH0jSAYbwLwedhiiq+ZtV8srNxPShXwfKWtniN6D81auzFqvLzSO8ne1YMtTRkkiFhiBO6qEr2U2TBCskjHQaaT1ZUggK7llmYstc9k6F.TBCcT3kWdgTSIEj94NGNS5oifBJHW1GtbEUVIznQCBMjPf.ABX6vg3fXRSjp.KhqE+8yO3ue9gFapITZokh3hMN1NjHDBwkgceFFdgKbgQ74HqKdQrpU93Xaa0zyOBqw0Qm+5uNEV1RWhYsa5KqrRw7tw4h23M9ulcxB6OUpTgO8S2Ft5qdV3zm9urn26a9laD2xMuPKJYg82912OgEL+4gxKu7gbsC2qwfI0TM9gnc7i+m3g+mKyrSV3.cfe4WvSu5mZPWSGczNt+66uaQIKr+Ju7xwxV5RQkUVoIWiZ0pQlYjwv57OXRcbiyni8y+79vpV4ia1IKr+TqVM9lu9qwq9pqyZDdVLGg1QJ.PO5qvPG+jb4nJ3fBFA12rLLuBxmsCGyRyT6H0swXGyXP3gEF5omdvQ+yiouphICMNb3nuhcjSskTyRN4kKTpTIBJv.QHAGLaGNDGDBEpcyr0UWTBCskr1UX38bm2Ftm671rJmKh8UBwGO7wGeP6s2NxJqrY6vwlo7J00NRGEKGIDBgXakPBI..f7KrPVNRHDBww14tPl3bWHSyd810DF1d6sihrhei70st0gSb7iy3qYsSnUEUTAd1m4oGz0TP94iEeG2NJzJ7mwVZtY7DqZkniNF54ZhFMZvK8RuHdm29sfZ0pGQWWEJTfG+weLnRkJStllatIyJohVpwMdC20aomd53gVxRFVIds+99ueu3C176y3q0c2ciG7Ae.btyctQz0n4laBKaoKwjswzhJpHaxvXdbCHggG4vGFq3wdzA8u+LGa8S9X706d2inywvgPOcLRXXu5mggtl67X6kTRNE..jad4Y0qtVaglZRa6H0Opcj5xiCGNXFSa5PpTon0VaEG63+4H9me5NQZeywP4sQskzgRmc0IxMu7..PpT0ER5Gcc+htFg+dtjAmWd4E3yiG5t6tcJ9cQH1Nb4vESYRSF.Z2HGthsVakJUhZqs19ZGoT6u1U2ML2qE2vbuV1NLHDVSDiZTPnPgnkVZAMzXirc3PHDhCq08+85Xc+eutYud65SCOyLyjwGHmPgBQbwGuQGuqN6D0VaslLQKpT0KV0pVIN1eZXRCarwFQE8MnuGnwlbxLd7N6nCzXiMNn23v912OgVZoE3iO9XzqUVYkhEu36PeEpvDQhDiILgIfvCObviOejYFYfbyMGSdyqkWd4XCa30vK7BunIOm..qcsuD9zss0AcMIjvnQbwEGBNjPP80UGxN6r5qsqZrzO6Ywa+1uEd7GekL95W37Vup2r+RM0Kk7K0pUiU7X+KzQGF+28hDIByadyGWy0bsHzPCEb3xE0VaM3OO1wvW9keAie8xF1vqgq65mqQymus7AaFm7Dmfw3YJSYp3VtkaAwmPBvGY9fFZnATPgEfcr8si7xKWiVeVYkEd2+26fm3IMthFuv4s9UjoGd3gAsw0t5pKrhU7nL90Sd6s23ltoEhYM6YiPBITnVkJTcMUiCcnChu8a9FF2c6O2y8r3pmyUaWmkaijJL7.+1g..v0NmYMhiC8UXH0RRGQBNnfPfAFHpu95Qd4mORdriksCoAUS5pvP+nDF5NvCO7.y7JtB7q+9uipqoF7Wm4zX5ScZrcX4Tvao80h+jSUX3P4bm+7n2d6EgGVXHv.BfsCGhCDc+NOcSUXnMmXIRPqs1JZSgB6VWD3+28rX6x0gXYBve+QbwFKJrnhvoS+r3pupYw1gjUUEUoscjFbPAAgNHctEhsy8+2uaydsO8ZdQ..r908h1lfgPXA73xCwFSLH6bxAETXAH.+8msCIBgPbIXWeZ3lpp+RKsKCezGyb6EUsZ03O+yigW9kWKJHeiaqc0TS0n1ZqEA2uV7TFYvbBsBO7vw2+8+nIiOMZzfyctygW7E92HyLYt8QlWd4goMMCefhpToBqZUqzjIKTjHwXUq5Ive61tMilSR8zSO3S93OBaXCuFiIS8y9zsga7FuQLUS7PL+se6WGzjENyq5pvJVwJw3Guw8r98rmuCu7ZWKiw8ldu2E2wcrXDFCCJcS82iW4Udk3IexUaxXYvvgKW3e+9g6+wQOJiI8Mf.B.a6S2tQytuwN1whYO6qFK4gVJt4a9lPs0TiAutZ0pwO9i+.V9xeDCN1W7E6jw3Ykq5ILXs..wmPBXFokFtm64dwZVyyhuXmetQuuu+62KyILzDeNadye9XoOzxX70FJdHvCClKb66m9QzZqsZz5hHhHvm8Y6.QDYjFb7jSIEbMWy0hG7AeHrnaYgF8dUpTI1+92OV7huygU7Yo3xgyHZVX8Ae3VAf0Igg5ZOgtpy1D6oTSNY76G5PH6byAwGWbNrO7BMZzflZVWEFRsjT2ERkHEy7JtRbvCcPTbIk.u7xKZFyYFzkvPpkjN3pq95PokUF3yiGl3DlHaGNDGLTEFZ+HUeBCaaD+y325mo82++ebu20fttELu4NhtNDamwkZpnhJqD0UWcn3RKAwDUzrcHY0nqK.EYDQvxQBwQSgEUBaGBDhMQbwFGxNmbPYkWNl33mfC6yafPHDmI10mFdFlXtBxzbXSGtb4hq3JtR7oe51w0ecWCZigGNU1YmkAILzTUy03F2fOnm4vgCl3DmH1119TLyYdELVoZ4muwILbya98wYOyYX7bJQhD7IacaXR809SFHO7vC7PKcYHwDSBKcoKwnpCSiFM302vFvW9U6xn2aSM0Ddlm1zInagK7lwFd8+K3wimIecYxjgG39uOidMUpTgCdveG28ceOF8ZlZ9PNiztLjbJoXx3wRblyx7mOenktLiRVX+ETPAgW4UVGVxC9.F8Z+0oNIP+RBXM0TCptZimMhwGe7FkrvA5EewWBG9PGzn2eEUTApt5pQngFpAG2zIYcl17OmshGekFkrv9K5niFOyytFFm0i+0oNkcKggd5kmfCGN1kq0foWU8BMZz.9746PDON6BJvfPngDBptlZvEyNKLIGzGZdaJTfd5oG3kWdAu7xK1NbH1Q96me3xR6xvQO1efrxNa3kmdgDXnqGPtDukRsjzghZ0pwoO6YA.vXRZLPhXwrbDQbzHPf.vgCGzSO8.UpTYxeecxHmDq3bL7G+oeA.CcBCINtDJPHlv3FON4ecJj94NGBMjPfm8MSQcl0sxtQM80NRGU3z7KjPHtGjHVr9m2PwkTBRJwDY6PhPHDGNW9kMCKZ810YXnoRZx.mCaLI3fCFSbRShwWKqrxxfO97lLggC80A.vGe8EojJyUXPs0VqAebKM2Ld2+26v3Z81auwms8cXxjE1eW0rlEt4a9VX70RO8yxXhR2z68tnQSzmt+a+saCu9+8MFxG9vrl0rwLupqhwW6Tm5jLd7yedlm2eLUEiCWUWcUC6qwDLQBIpqt5Mqqw.mkhLwCO7.ImLyI5qt5pyfOtmd5AYmc1LtVq5mypx3jep8ZLgg78NgIv7ZF3eVrkFIsiTqIU8pc9ONRp1QhgFeesa3BJrPnvFLKOsFZpo9ZGoT0E5VJrPCEScJSA..mI8yhxMQaMmnkz9pvv1Un.ZzngkiFGS4UP9Ptb4PhDIzCtfXRTUFZeH0JlvPhqgXhNZDRvACkJUhzGgyxdGEUTA0NRc274e4WiO+K+Z1NLHDVW7wocydVPQER2aBgPHLXE+qkgU7uL+Nbnc6Ih2byMouEYLPCUk+oS3gy7f6dfIMyTIlzbRbhN95CyOz33hKNC93crisy37eC.3i93Owr+yFf1pm6q+5caTqIUkJU3Tm5jXNy4ZzeLEJTfu5q9RFOOyd1WMV++40L6piZbia73HG9vFc7Fav3jQVUUUwXRJ4vgCRwJ1F2DHP.iG+WOvAvTlxTGz2qe94GdiM9l5S7iNdIxvpFxTWiib3CCkJUZxWWmGd4OBt9q231MTHgDhAebN4jMTpToQqSjHQHt3rdUwh.gl5yY+BVxCszA88FSLwhMrg+qQG2W+reIOQnmirar8lW37rJwgJ08kvPZm9a03iO9fniJJTRokhLxLSj1zmNaGRFow9RXn+9Qy8.2UwFcLnyN6DYjYl33m7DfK2KCgyPa4lncSy3omdht5pKzQmc.whnpmq+Tzd6HyKdQ..L4INQpxwHljmBEhN6rSzcWcAwhDw1giKKwh6Kgg1wMsza+taF..O5xG7eGbB6YJSdx3m2+9QokUFhJxnPXCnCw3ro7Jz0NRMcmkg3Z4a+tuG..20cbqC4Ze22dC15vgPXMgEZnPjHQPgBEnlZqEgNfmIGgPHDKicKggYbAlmIfgDRnHf.BvrNGkVRoLd7.CLP8+2UTQE5qTj9iKWtlrpAGHMZzXxpqazi9R6R7d5oG7oe51XbcyHszLqJKr+hM1XQDQDIJszRL50FXqu7K+xuvj6R1Gd4K2hZkhSdxSAyHszL53QEczFcLSUcgwFar5q3.qgTLQ0684e9NvTlxTw0bsW6f99W3Bu4g7ZjXhIA974qed0oSCMz.doW5EwZVyZfnA4gfN9wOdypBAMUEulRJoXUeHhojbJ3W1+9M53aYKe.RI0TQZocYl78xmOernacnuQCaIgCQBZGJ28huMqRbnRk1D1ykd.uVUolbJnrxKGkVVoHoDGsI2TFrklZR6FgvO+7ikiDBaJ4wLVnToRjad4gic7+DWdZTRCMEoRjft5pKzVaJnDF1OZznAm7TmD81auHxHh.gFhy8CflXaIjpvP6BcsDXlF2DVpG4gWhYsti9GGG.TBCcjIQrDjRJofyc9yiSe1yfa35ud3AeOF52nCnt5tKTac00W6Hk4MYMw8VP86YlQHtZ9+ydm0gEUY+gwemYnQEES5FTbEEQDq0N9Yqq0Z28tqc255Z2cmXiIlfJlfnDFKFzCcHozLy76OPF4N26LycfYHVOedd3Qmy8bOmyD257d999kCGNvJKsDu+Ce.gFVnDACIPf.gxHkaBFJU6HsorylPyImbjpsNZgEVH29wRqrB5xx7GyUtxkYTzwF1vFBas0Vwu1e+7CImbxL1FSXBzygdrACMzPFELLUIFO2+d2iw8uoMsoJrPksu8sGsu8smU0UZ4uPEIRJYCRSb2rxJKL0oNYz4N2ELhQNRz111N4FIfRCMzPCXqs1RyRaA.tv4OGdhWOFSYpSC8n68.0uLbCGR2JdUxelIkH77qe8qXTibDnO8suXnCcXnUspUfGuJW1solZnA3xsb0gjkJB+dDFVYY77eEzUWcgMVaM97W9Bd66dG5X6Y1JjqHPfPAH0zRC.EkO6H7yMN9c2HfHZnro5Uu5HojSFY9sLQCJQdj9mc9zW9LRJ4jgVZoEbRJVoOABESw4MMo4VIDTNniN5.Nb3fryNaHTnvxz830gessJwQFgJZr0FaPj74iTSMU7t2+A3jiUNy01xihsiTCLvfR8yFSf.ABUkwRKr.e3e+WDSrwhbyMWw19NABDHP.v86TT.F0md0CVU+xQACYVnolzD1IX3l27lPpoRWDOczQGz9RLwyRWPK42O4jSNvUWOK1zF2.iaekqb0ThHLedkOLVOyLybzoN0Y41eLgAFx7JQOqrylx3TZQ523KkBUxVjl3WO+4OC8suJtkPNtwNdLnAOXZk2nFYObxoV.+76MLteO5QODO5QOD5pqtvYmaIZdyaN5Tm6Br2d6Un9eTidLXoKYwLts3hKNrlUuJr10rZXeiaLbxoVf1z51f12gNnP4Eh28Vl+Mo6t6Ndo2uTgFu..y5ulMiQXoKspUvFarEAG7WXt+t0sf625VPO8zCN2xVBmZtSnycoqvZqUd1hZokxpcjpLQ32ivPdDACU5XeiZDBK7vQ7Ij.RHwDP8qWkCQFRKszfPgBQMpQMf5pW0bkkSP4BcQCaMLxPxJ1ujT8pUjqB7sLI4DrhIszSGu+Ce...srENCM0nxy01HT4Ds998+jadDACUkvkKWns1ZiryNajU1YKNmFRf.WNbQKagy3Ad5ABNjfg4lYZUR6omeT7A.folXRE7HgP4ISdhishdHPfPkFzVKsggFX.hI1XQ3QDAZTCaXE8Ph.ABDpzvoNy4APkRACkVTVIcg7DIRDBMzPwN2w1wcu6cXrNCe3i.Zq8OxMcuSJBoA.FsqwrxNKDe7wivCOLb+6cOoZymScZSGtzpVQoLejhXO8rm8rTuxUyHiLXr7ZTiZH9+6meuglMZB.viGO7+9e8rT0urAgBEh2KEAYSJojPRIkjB2l0SJQk.Od7vd1yqf5S5...H.jDQAQ0dQe5SuXLZOKlrxJK3kWOFd40iw1291fYlYN5cu6MlvDmHpUsjejBMrg863095Kt10tpTqiHQhv+9gOf+8Ce.m9TmD5nitnycoyXTiZzvYmaoLa+rxJKDZngv31hO93P7wGGiaSVXnTrYFszRKru8e.Lf92Ojc1R2xkRO8zgmd3A7zCOvl1zFgM1XK5Se5CF+DlHqiBWkMZo.BvJMNwoOG..F+XFQYpcJNGFppsjTA4mG361YQ72+FH6HCABjw2Y+WBtMqcP8ZTS3+dVN3UIwB1JTmpAMsyQje94iGrRh0goPvkKzP+5A8co8vhQOETcKrohdDozvwl1LvAbvm9xmwye4KQ6aW6H1KYInZeeB2y7aYVAORpbf.gBfOuxGHTnPXkkVUkOWXUZ4aQFFB+LGFo3ySPdeMd.IxK2DnRtFXNzvHyQXmYWH5Dhthd3TkB00qVnZ10DXTeGJLna8QtoigpoqtEIXXVYUtHX3RWzbKS6elgGbQGK46yP9eMAxwRpXTuUcChzTK75ctDvkgmytxN4ZpsPsF4H97tVFBtf7qnGNDjApUc8ftV0PXPuFDLoOCFbJCOyY26ZmXccG4XmB..b8TGtT2eDHTYGqrzJDSrwhPCOLhfgDHPfPYfxEACiO93jpXRqasqgQayH+BJ.QGUTxzhdbr4MGKbQ+H5vDJTHd+6+.i08pt4Ftpatofi7hrsx+9u+GFiBtPBgYgfXJ2+wV3GIeFKW+Z8i78UnRoeMv.CToQGSXgElRI2eTLb3vQlBFW+Fz.bxSdZrvENe7oO8IV0lQFYDX+6ee3bm+bXIKYoXPCZvxcBDV2eudnsNZiyetyAQhDI29H6ryRbz5MnAOXrjkrToJN4G9vGfPk3C3qs1ZC6ryVotcqrxJbrieBr3EsPFs1VlH3f+B1wN1NN24bEqXkqB8rm8RIMZYOZoDhvv6b2G..kffgkCQXXFA+QD3BlDxMte9lbPcC74UzCAZnV1eCpEvypnGFUMQnPjexwi3u8kPB2+pv14rFX1fGUE8nRoQyZZSA3.vmOeTipWC4uC+DQMqYMgElaApSsq5EIFpB3xgKL0TSgvHh.Nxh7a7+Eg+0u.97VWNDUPAUzCkpLnUbQ.DWDUrChpnTP5ohT88oHUeeJ3e9igls4CAspqzct.c0UWfjRBYk02.Po2gCV2F1J..VwRluLqmiMictnCSD4UbEeYGqDhpBJbUUUplOdTQODJSnE+u.s3yrKyPnxEElY5H8.eEROvWA9W3XvwsdDnqQlox627ymHjLg+6iAMnAPas0Fe6aeCIjXhn90qdUzCIBDHPnJIkKBFJMKYDP5htIOpcsqM12d2OTSse7VHrPCUlQVkhfSN0Bz290O7+9e8D0kgDDsHQhP5omNi6qolXZopOEIRD3yORF2l9kvZTRI0TYrNlTJ6W1x6kRThVZwbyMG5omdxrNM9W9Ebya4NN9wNFNwIOARH93YUamVpohEsvE.974i4N24Iy5ps1Zi0st0iANveCaYyaBu90ulUBGB.31UtBdyqeCb+12F5nC8nySZQVaokF23eQt4evV1xVh6du6iCbf8CWO6YjYDZVRRHgDveLyYfUspUiwL1woDFsrCtb4R433JZJVfWUUNLLyvCFudJCFBx9aPMCMC0ZHSDUqINAde2d+HPnpDhDTHxKF9HU2uLx5o2FedKKCpoa0fQ8b.Js9H2jSBQd4Siu5sWHmnCGBxp7Oh1TWKswKVWNk68aUARG.gVQOHpDAWtbviVE6tGhJZ3viGTul0F50jV.iFvHP8Z8uVpaqX8vc7oMrH..nSa6ApUeGFzxDyAmJY4LYB+2.QhDgBSIYjouOGoeiSiLBJ.3y35GZ0IuoTEMrXWz3akwE+36dGyKNUkEwbuafOukkB..caeuPs5yPglFYJ4XIBD9OBElVJ3a96CR0sSfrC6yv2wO.3xIuIzwPhcxRfPYENb3.KsvB7uAEDBK7vHBFRf.ABemeen+lBU+xkjzkxVzDarwVb3ibLT+Fz.Jk+12p75mzRKUXhIlvnXg.EYqiBDHfwsYpYktUHVBIDuTinxF+K+h3+epRQ.HyJk8KaQZe9xiGOngFZnv+0bmbhU8KOdpgIOkohm+7WhybVWwPFxPk52KRxAOv9kZdPTRZdycBm+BWBd8jmg4N24glzDGjazIBTTTMtt0tVF216j5mYpoR+LSSM0Dyd1yA97JewQO1wQ+6+.PMKQTpJK13F2fTyChpBztRVxnt3iqUEVRpHABPfKZZPP1eCZ6XafYa5XPuV2QhXgDpxBGdpAsL0RXvLVDzeT+A..9zlWJxO8zTJseDW5z34CnMHxSta7sO+tJDwBA.3kKQrPBrCtBqZHVHPQWSJ+ulHRxq6f.m8nP.KbZnvbxV96nDTPlYfOsghb7iZ96SCF9mKCZat0DANHnxfCGNP8ZWWneOGHLcKmDZXYiP9IGOBbQSSp6S09tfgJS2RQYSAYjN9zlJRrP8G0e.ClwhgVlZI4XIBD9ODpUS8QM6bufoa8TPyF1LTP5of.V3zX8BVtjrksuarksuaVUWMTWcnAIWsS3m.rzBK..PTQGMIxZIPf.guyfFX+vfFX+Xc8KehvPoj26TTpacqKl8rmCFxPGF3wvj4qLElLzPCESapSAt410nHVWwjSNRexCKY9FTQ31291LVtAFX.LpD4strkReW8RY+xVj1muaYqaC8u+JunIQZvkKWzl1zVzl1z1hxqf+6GvcuycvMtw0Qbwwbt.Tf.AXCa3evUthzyQgRhwFaLl4e7mXl+wehjSNY7vG5Itw0uF70Wek5MxeoKcQLwINIXsMTyeWR6yriehSf10tR+J4msvimZnScpynScpyPnPg3sAFHt8cbG25l2DImbxLtO4kWdXqacK3PG5Hp7wG.flJA6HE.3OlwTTJsSwQXHOtJeACixc2PNQFB3UWCgAyd0fi5zsiYBDpph98YnHK+dAx6iA.9tcVX8D9ixT6E7Q2MB+HaC..Z6XaQM59.fNV2HviXMnDHnTPjfBQ9IFGxzauP52xUjzStKd6xJ.Ns8ioPsSjtcVTXVYBMrqonNCnrYK3DHnnvq55AiVxlA+4OVjw+5Oh0yaCC6ZuoUOc0sn7VXYMBCYKKXIqB..aYCqg06SjW4LPP1eCZ1HGg98YnppgFABDpD.Os0AFtv+AQNuwfrB9CH16cCE1gN7809y5555oKed1dBDpnQWczEMnAM.wGe7HhHiD1JwbzQf.ABDjOpbACEIRDd+6YVvP0UWcoFAWb4xEFZngvJqsFVak0vZarAcu6cmQaerXjVDvswMsYz8t2CZkWPAEfu90jwS7xKbnCeHjlDV8YAET.b6ptwnfg5omzmvxniNZzPELA6JPPg3jm33LtMmctkRz2LaimwDshmOzxImbXbU2ngFZ.s0VawutfBJ.e7iejw1noMsYJb+VVgCGN3W9klfe4WZBl+BVHt4MuAVypWEi1D6m+zmfHQhXUzBJI0oN0ACaX+NF1v9cDQDQfEunEhW+ZeYrtA8wfnHXXJojBhlguSJJ2MV9mei3xkKbr4MGN17likrjkgKbgyiMtg+AYmM8nI3iAET413RKMUNBF1gesMJk1o3HLjGOke.XG+8uN..p0.FM3pYkqHqj.AkA0rWCAI7w.PxO+gkIACSKn2hvO51.GtbQsm5RPM6.8qgSf.gxFb3oFzz.Sfl+1nQ0a4uhXV4LvWegmHtGeeXPmX+wbI+zhx8W0rWCQUMTIPPlvq55A85+nQJmdWH1acYFELTYEggab8qlU0KhHXNMSHKR94OD.jikHP3mE3oS0PMGvXPJmX6H163lR0R+IP3mYrzbKP7wGOBKhvIBFRf.ABkBT4BFFYjQhLxHCZkqt5pi2+gff5JIaQH+7yGe5SLKnUqboURUjs5Tm5.6rqgvAGZJF4HGNss+uef47TgN5nKTSM0PgLjL5ihOeEVvv6bm6fXiMVF2Ve5aeo75ZJk2K74yWg5S.fQMxgi.CLPZku0sscLvA9C+s8Se5iLJrnd5omRyJTe+6eGR4qzsa0V05VCMkgnRb3vA8u+C.M2wlitzkNQypXyN6rQTQwGlZpYHojRBA8u+Ks1vLyMGlat4xb7Yt4liyc9KfINwwim9jmPa6e9SeBne8W7qkVzEZt4lWpiBUIwe+8CYlAcK56Wae6kYN3iGOdXjibTvAGb.Cn+zCI4XhIFjUVYINeunJQCMpbYMJBE9cKIUEjCC+VvEIDqtN5hRusIPnx.ZaaQKvlrirzkehKlHN6Q.DATsdLHhXgDHTNflFaNp4fFOR4L6Awb8yqPBFlM+hxhk5zPGTUCOBDjKU2k1gTN8tPlej9y0..nkVZAtb4h7xKOTXgEVpye1VYo4kgQoro3qcV70RIPfv+8o5N0FjxI1N91meeE8Pg.g+yfQFZHzPCMPZokFRKszPMqYMqnGRDHPfPEJG7Hm...SaximU0WkKXnzDMwd6sWoIVHPQBZUPAEPq7ZVqZASL0T4t+sp0sF0uAM.IDe7TJOnfBRpQml4laNBID5SJpGd9.zst2cVO1KnfBvgOzAYbalXhInScpyTJyLoHr0m9zGQzQGML1XiYU+FVXgwnXg5pqt3+8+5Ikxjlsx5fCrKO+wFb8rmEW9xWhV4W652fUQjmIlZJZe66.d7ieDssEczQCSM0LDcTQgILgwQa6+9vGAV+5+G41Gb4xEiX3ijQACiNFpQSnzxegJyHx7.6e+3QO5gzJ+oO6ETrwVoQSZhCvAGZJiGmFczQA6rSwD9VQQSM0PkHLWYAApPKIsvuUTdcSM8XW9jj.gpZvqFEsfVJ7azWnPJBo5u2..nl8frRqIPn7hp2p1iTNydPFAwrfKRiByrH2cn3i+IPnh.0zud..nfzSkwsygCGnqt5hLyLSjUVYI0ESZEIEesSxwRDH7yCpU65B.oetKYwZV0RXccSJohRGI0st0Qg6GBDppAOd7folXJBIzPPXQDNZdybrhdHQf.ABUn7vGUjNFrUvPU9L0KMACU11Xozrizl1T1a8ilyPjxkc1YI07VWKcg4nD55W65HJVFse4me9XZScJHHoXAjibTillfJtzRl62BKrPbfCreV0uBEJD+8euVF2Ve6W+oXGo..u8sLO4QNnD+dTx7+WwDYjr2Rejl3S0oNEciwVYs0L2GQDAq6CNbYVfz5Tm5R40JieSJOj9mYQv51fKKe+nJPYYGo..q6e1BV2+rkxb6HTPQBFxUEXIoDH7ecTVKfjBR+q..Pi5YnRo8HPff7QsZUz08KLS1Ookk7djUVG+SfPoA176Oc0QG..jEC1wuxl8umsg8umsw55SNVh.geNorb7t8MzNXeCsiU0cF+07wL9q4Wp6KBDppgkVXN..hjOeH76KJbBDHPf.6P0KX3akRjooDEMAP4HLYt4lKsxJ19ZXh1111wX4BDTHV1xVpbyQF4kWdXpScxvKudLia2BKr.iYLikV40uAM.VYkULtOW4xWRpsWIYSabC3Id4EsxUSM0vzl1zoUtz9dToJ9kTDyy8acKoJZaII6ryB93i2zJmCGNv.CJZRmqQMpApW8pGs57t28VvmO6Dl7QOjdD8A.ZQzmz9MoRUjUqX9yracyaxp8OojRBu+8zs+DszRKnu95WlFarAM0R4IX36d++h28d51MqhRw+VS0D4iE+.gx+2yDH7SMB+9wHUxh.YBD9uLbJ93ME4RTEOALD8MHTE.c9tfgYmSoWvvoMy4hoMy4J25U25TaT25Ta12vE+rNjikHPf.ABDJyneszG5UiZf7xKODabwUQObHPf.gpTnRsjTABJDAEDySfuxNBCklkYpHBZ8su8MZkos15H052st0MXhIlfnhJJZa6Eu34329sAf8suCvnPXADP.XyaZCvWe8kw1lKWtXyaYqRM28MgILQrrksTZkWXgEhIOoIh4M+EfIO4ICd7n9UbXgEFV4JVN716WxX6N7gOBXhIlPorrxJKDZnLmOpzVasQvA+EF2l7nt0otnl05GVynURQ7KO8zCr6cuK7m+4eIUQbxLyLwDmv3YTj11zl1hpW8pSoeRLwDoTmrxJKLsoNUbtycdJiII4DG+33hW7BzJmCGNnac6G1PaLwDCRIE54iQtb4B0TiWo9yrFz.Cn9dQJhrdoKcQXeiaLF8nGiTaqjSNYL1wLZZ47Q.ft28dTtr5l0TCMT48ghhnuOSobHyXCABUbvkSQhFJTH.Oku8.Sf.AkDhE4fHtOgJ+ny2ettrKCQX3WY396UJHV7cxwRDHPf.ABJCrvBKPfu8sH7HBGFyhT1CABDH7eUl+b9SEp9pTACCN3PPN4jCsxqd0qNrvBKTZ8SVYkEBKzPYbakUAC0RFQ.EOdpgoOiYhktjEy31CI3fQO5dWgAFX.ZhCN.yL0LDe7wifC9K3Se5SxbrLy+3OQyatSRc6+1fFL1291KhM1XosMgBEhsr4MgcuqcB6s2d7K+RSv2xJK7wf9WDbvg.ABJjw1z9F2XrvEsHZk+gO7AoFB+idTiTluOjEG7fGlRtdzXiMFM2Imf+94Gs5t6csSb8qcMLhQNRXms1g52f5Cd7TCwDcz3Eu34vM2tBRKszXrejLJM6+.F.iBl94O+Iz111Zz+9O.zgN1QTu5Uenu90BIkTR3ye9y3hW7B3e+vGXrO5bm6BEgVklEtJTnPz+90WF2Fa3xWwMJ+tvd6sGVaiMHjfClVcW8pVIb8rmECe3CGVZk0nAMn9.nn743ieziv0u90XTfUNb3fQOFoKznxB0TimRMOlprPjJbEdygCmhjijDfgDHHG3fhNPgbvBABUlgMN.AABUVPbDFVNXIoJJjikHPffhxrlaQyC0t19FkacK1dFIP3mIL2Tyvae26PrwEGxMubgVZpUE8Ph.ABDpPvkVJcMlXBUpfgR0RFcnoJ0nW5Cu+8LJnkIlXBpUsXusJlYlLIXnrufxvF1uim+rmg6bmaK05DWbwg3TfPfeZSa5X1ydNxrNZngFXu66.32G1PP94mOi0Iu7xCADP.Hf.BPt8YCZfA3nG83PGczk11j12ikUjzVZ4vgC1911A5cu6IiBYwmejXia3eTn93ul0rQW6V2nT1PFxPgmd5A7zCOnU+byMWbwKdAFihPogs1ZG1xVoliRjVDuVVfGO0f812XJkogFZfcr8che62F.JnfBnsOAG7WvZW6ZTn9YUqdMxTrZkERK5YKsro+Y0JmFRrdgjHLj.gJJ3vkKDITXQQYHI.CIPnRK+XQ1PtlIgJ+TdJX3HFyjA.v4N8QXU8IGKQf.AEkXiKdVWWk1yJSfPUHzRKsfAMnAH13hC74GEr0FapnGRDHPfPUBToddhzyqfJ27Wnzhlql1L1a6oBEJD4vP9rnvBYNZ7JIaZyaAcoKck08kzfGOdXtycdXAKjdT9wDMsoME6Xm6B5omdko9UWc0EG63m.0u90mws+t2p7ELr9MnAL1elXpoXkqZ0Jk9XLicbXVyZ1LtsMrgMg5Tm5Tl6CSL0TbpSeFZeG7No7axxB10P6XT.a6abiwbli7ykJrg4N24ISaLUYhVJYACszByUJqbRQPElCYJdRfHqhbBDjCj78IABUMfHxAgpNn62ELLqxffgm8TGFm8TGVt0qfBJfwEymzgbrDABDHPffxFyMyb..DA+HqXGHDHPfPUHTwBFJs7JX4U9Kj88izrAlLxHC4tu5niN3vG4n3PG9HvnRouX6fCMEW+F2By7OTLOk8+8+5I77gOFCZvCtTE0lsp0sFm+7WDMrgMTp0QUDggMSFe2L3AODrt0sdXfAFTpZas0VaLkoNMrxUtJoVG80WebxScFz9NzgRUe..3rysDm4Lth5Uu5QobgBEhOHEqKsrPyjg.3SdJSEKdIKE0t10tT01Uu5UGyeAKTg+8WYAYY2uUnHd9ZHSXCABUTT7wehjhcXSf.gJIPV.LDpBQwQXXN4jSo1BP0TCMTI4faQjbXHABDHPffRGiLzPnlZpgTRIEjQlYVQObHPf.gJDV9pVOV9pVOqquJ6IRxKu7vmkRd5SRqnrrhxHRF4wiGL1XioUd5omNhIlXXUaz0t1Mb+G3Il9zmAqhdMMzPCz8dzCr68rW31UuFr2d6Y83sjnu95iMu4shKdoKCGczQVkW3ZVyZFNyYcEt554Qi+keQp0KkTRAQGczkpwkrPde2LhQNR7XudJ96+9eXsHrFYjQXwKdI3EuzGrnEsX4J3SiZTivINwovUu1MPm5TmYUengFZfeaPCB25V2FW3hWhRdKrXBKzPYzRUKqHKAv4xkKl7jmBdxSeNV5xVNpacqKqZSKszRr50rV7Ru8ASe5yPYMTYEpqtxexVTFHRkFQSjnlh.AVg3nwshcXPf.AYyOrQQhHGDp7COd7flZpIDJTHxM2bUo8klZpAzTSE3dcIhuSf.AEjie38hie38xp55efuC9GnxOsoPfPkc3wiGL46y0ajQRhxPBDH7yIe9KAiO+kfYc8UY4vPM0TS74uDhpp4ovSe1KTJsiWO4Yk41Pas0FyeAKDyeAKDYlYlH7vCCgGd3HrvBCe8qIi5Tm5h5Wu5i52f5iV1RWP0pV0TBi7hvImZAthaWCBDH.wFSLHrvJpuiHhvgt5pKL0LyfolZJL0TyXsHb5qu9HzvhPoMFUDTWc0wvGwHvv98eGIjPBH1XiAwFarHtXiEwFarPCMz.FYjQvHiLFFZjQvN6rC73o3I6pl1zlhidriizSOcDarw9i9It3PlYlALv.C+d+XDr1ZaPMqYMkY6YsM1Tg8Yl1ZqMl3DmDF23FGhO9e7YVwetoiN5.iL1XXjQFAiM1XXiM1VgDIcZoklfKWka+N0YVTd+7P6aGko1o3I+rxZDFJTnPbu6cW3s2uDQwmOhLR9PCMTGFXfAvPCMBNzzlhALfAJ27uJSDTPAAO73AHv.7GIlXhHiLx.FZnQvRKsDVZoknacuGvbyMWlsQBIj.d1ydJq6SNfCL1Xigc1YGpYspkBOlA.72e+PXgEFkxrxRqfiMu4xceyHiLvCdv8YU+Tu5UeXqs1fFz.YG8yL8YfIlXJbwEWD+ZQhDA2b6JTpCOd7P+6+..Wtxdh2e1ydFRHgejyRzQGcPu5Uuk63ufBJ.d6s2vSOd.BIjfQxImLxufBfEVXArzRqf8Mxdz290OngJHxITX3PDWm.gpDTFD43A2+9HiLkuSdTLUqZUC1ZqcvbyMWtmmjIRHgDfmd5Ad9yeFhOt3QxImDzTSMQcqacgEVXI5RW6JZW69UVkik8zCOPZomFkx5Se5qBes2u90uhG+3GQoLiLxHz5V2FEpc..d0qdEhJJ9TJ6W+01SIE.DVXgA+82OJ0wRKsTt4t5ryNaZ4q8F23eAMpQMRtiqjRJI7PO8.O6YOCwEWrH4jSF5omdvBKsDVYk03W+0esbI2YWL5niNHu7xCYmS1Pas0Vg2+b9tPiZKmuqO6IkuskRgJ.ACUziAKIZqk1n28oO.nnuiexS7hx1M1HiQqZcqU318Id4ERJ4jnTVO5w+CUu5UWl6W.96OBMrPoTVqZUqorffCI3fQfRj1H9keoITbZmzRMU34C8TtiSMzPCX42+Mrh76nqcU2ffRo6ITm5TGzwN1I..DQDQf27lWSY61YmcnIMwgRUaKIETPAv6W9R3omdfPBIXjTRIgbyMWT6ZWGT+5Wezl1zFz0t0cYNmBgDRHHv.CfRYx57FLcdF4c+7W+5WiRJjQWc0E8rm8hV8DJTHdvCtOd4KdA3yORvmeTPM03ACMzPXngFglzDGv.F3.KUmSnhjpWc1OWRaXSaG..W97mTEMZHPnxKlalYH7Hh.QvORzDYDvDDHPf.ghPkIXHghr4QGbnovAGTtQTo7fGOdvDSMElXponCcrikq8sp.tb4BCLv.XfAF.mTgymfd5oGzSO8X0jeTYGd7TSrHmUFgMSFmhRJojpxogDmBCUABFVrMKJRTop0uvENON7gNDhLxHnssPBonEnwEu3EvV1xlwHF9HvTl5zj6Dr.TTjDuvELeZSZI.PrwFq3IjXKaYKXHCYH3u9qYg52fFvXa8ku7ErnEt.E3c0OvZqsFqYMqSglfIQhDg4M24B9RjSBrzRKgGdR+8ijDe7wovi2ZTiZfVzBmwJW4pfIlZJssGRHASqM6Se6KEACEJT.i862912jadD8XG8v3YO6GKvECLv.4JXXfAFHl8r+KDEe9z1VT74im9jm..fcrisg+7ulEF7fGL3wqB7VDTgVRZ94mOdwKdN7zSOQXgFBRJojf.ABgEVZArzRKgs1ZG5Se5qXqqSZ3meuAgGd3rte0PCMf0VYMr1Fajonr4me93l27FTJqFUuFn68nGxsOb+V2B4lG0nlYvCdHTdMSSFawzoN0YVYs095quzNlqXbwkVQI56iN5ngO93sbaStb3BiLxHXis1B80WeYVWllDR6suwkJmZfoILuu8seTtNESSDsiN1bXkUVIy1N93iCO+4OmRYsoMsEFZngxcbEQDQ.Odv8wqd0qPhIkHR4qeE0u90GVXoUvJqrB8nG+OXokVJ21QkivRuHGaaaaQ70tTDzRKsvXG23wrl0rY08SHPf.r28tGru8tGHPf.ZaO7vCG95qu3hW7Bn90u9X6aemx85Pae6aCe9yTcRk129NnvBFFd3gQ6ZAcq6cuTIX34Omq3V25lTJ6Tm9LTDLzGu8FqXEKiRcpQMpA7vyGIS2QI8zSm13b1ydNx7dlEJTHN3AO.14N1ADHfZNgOlXhAAETP..X26ZmnicrSXdya9v9F2XY+lTIfN5nCRM0TQ1YmMps9JtU9OlwOM.nBlz8J.KwuzdLH.P8qe8EKXXXgFJseezyd1qRkfgG3.6Gu909Rorl0LGk68yd0q4FNmqtRor8tu8SQvvm8rmg+9uWKk5L24MeJBFFSLwnP2WHWtbgIlXJbpENgErfEQKUULNm.HA...B.IQTPTIIKcoKA4me9rt8KIsnENKVvvW+ZewhWzBor8oL0ooTDLLf.B.yY1+EhJpnnssXiMV792C3omdf0st0hIMoIi4ufEB0Ti98LlRJoP6yx9129gctqcyX+9Ze8kV8aQKbFW7RWlw5Ge7wg4M24Port08tSSvvKcoKhCcvChHhf98rEZnEcs8KdwKfst0Mie+2GNl5zlNpQMpAi8IAoiHQhPHgEJBIzPQlYlIDRRq.U4QMd7fd5oGr0VagYlP+YdqJQ8pa8f1ZqMxJqrPRImLpKKbDNBDHP3mYHBFRf.gxczREHXnxBQ+PwPkNbv2mOnRwpHe6aaqXe6icVNSZolJ1+92G7yu2fSdpyHSwIdwKdNl2bmCRJIlEPnjHPPg3BW373ZW6p3HG8Xnssscrd7yFBIjPvHGYQOn9BW3hX0975W+ZFEtHrvBCADP.vQGcToNFAJJpDezidH7wGuwhWxRwHG4nTZs8V2xlQO5w+StS3DaQnPg3vG9PX6aaazlvVlHt3hCKcIKFW9xWBm8rmqTEopJC3nhhvvW+Zewbl8rPbwEGsswmej3Id4E..11V2Bl4e7mX3CeDR0luuxkuLtzktnBOF3wSMzst0MrpUuFF+dNqr9FsILyJqrhUBFt10tZ70u9UJk8a+1fnDMVLMYrEyBW3hvTm1zka+rvENeFEeF.XW6ZOTDL78u+cJrn70t10FsuCcDKeYKmwHO9ku7EXMqlZdJdVyZ1kJACYZBy6bm6BEgnt10tJb00yRoN1Xisv8aeGFmjzh4ie7izduevCdXYJXXN4jCV2ZWCt3Eu.ssEWbwg.CrnniYGaea329sAg+7ulUE7hC56QkeoHh+Jsjat4hCcvCf6eu6AWO24jYTeGarwh4L6YQKRbjFIjPBXzidjX5SeFXVyd1UrKbhxIxHiLveut0J0IwuzPBwGOl67lC7wa4uXA..7xqGim7DuvJW0pwXFyXUZiClPGsKZwfjU1YqR6GEEQhH4vvphHTnPDYjQfHiLB3wCd.V7hWBF1uO7JsNUhrPVh7yDhDIBG4HGF93iOXW6d2vLyLmx1czQGgN5nCxtDGq4meuQpsm2d+RZk812FHxM2bY79Qe8qoed810tekxq20t1I18t1o7dq..fzRKMbvCd.7l27Fb5ybVUxBbUYSwhxUZh5dkM93quHRorXxHT0jBEH.eMkTf293CR4qo.GalzSQNU1gCGNvLSMEe5yeFQxORhfgDHP3mN1411fBU++6+TvDHPnRGJTNcobFwVRppPwvRIm4LmVphEV8pWcjc14v3C1+pW8JL+4OWrqcsGFm3hCenChMu4M8ibPEKIu7xCybFSGWwsqAqs1ZEZeYCG5fG.tzRWXUDR61UXdUGC.3laWVkHXXwjc1YiUthkCSM0L7q+5uJ+cfE7su8M72qasX26gchCKKDHnPLgwOd77mq31sc.96Ol6blM1691eEyjPT7DlVFhdoRh.ABvd1ytw922dYLBijjjSNYrlUuJbNWcEW7RWF5omdJkwQQikBw8t2cwKe4KvANvgJUQfgpB2us6xUvvfBJHoJVnxhu90uhqcU2vyd5Sv+rgMhtzktpR6uRCAG7WvQO5QvzXg.qrkfBJHL6Y8mhi3AYg.ABvku7kvMtw0wQO1wU5KfC1xOt9Q4+0LiHhvwRV7hvIN4oYb6942avjl3DPFYnXVtnPgBw912dgO93CNyYcsJwjFWV4V25lXPCdHJkqk8t28VL9wONjVpJlyOHRjHrt0tFXngFht10tUlGGRCc+dzimS14nx5C.fDRrnEhU8qG6xq3hWLYUdt8SBJHYlYlXYKao3Ad7.brichpThFJPPgX7iab3Eu34xuxRv6e+6Pe6SuwAN3gnbsH0UWc3bKao3EiE.Dm1OLv.5KzCuYXAFTPAEf.BveFi55W6K8E+TI6+y4pqRUrPY87Su4MuFycNyF6Yu6qRgPbxhgMxI..1Ewy+Z6T7HWmsDA+HQj7iDpolZvEmcFFZngfGWEOUwPnxEEVXgHR9QB+BH.74f+BpacqKLtRpCVwFL2Lyvm97mA+nhBMuYNVo+3aBDHPPYhQFJ6TqjjPDLj.ABkqnlZpIyHxnzhqmRAyULRCU4beV7DGnfZfrmcuKJulKWtXdyeAX3CeDPO8zChDIBQDQD3btdVb7ieLJ081t6NlvDlDZlDqHvvBKLrsssUZhEVspUMzpV2ZzBmZAZXirGwFaL34O6Y3t28NTpalYlIlzDGOb+12Ut4h0F+K+BFv.FHsxyLyLwW97mgGd7.Zh3rpUsB4lWYyN6rvctycj51us6tiUrhUovS1qolZFF8X9gsfJTnPjQ5oifCIX7Du7B4kWdTp+5V6pwct68UZ+t9121cLnAM3xrkR6pqtxnXgFYjQnUst0vImZALxHi.+H4iqe8qQaUee+6eOr6cuKL6YOGZsgJGwGqT1ELL+7yGiYziRpQUmrH3f+BlwLlFN0oNiR+7VYjQFXdyat3d2+Arx5fKOHn+8eQDQDgLyUo2+92qba7jbxIiYNioi6ceOja9Sshf8r6cgd269PIhJKsba2cGye9yUgspt7yOeLioOMb4q3Fr0V6JyiCEFkrHGyYNyE5nqtTJqvBJ.wEe7viGbeZQG7Se5Sgmd5AMAlDHnPrrktTZhExkKW3ryNil2bmPybzQjVZoA+8yO3iO9Pytu8yu2ficrihYLiYpbdyUImUthki6c+GTlDHUnPgX4KeYzDKjCGNnEsvYzbmbBM2wlCgBEhf9XP3rm4LH0TSgx9O6Y8W3F2zc4Z4ukVzV6hhTobxszIXHaiJg+XVEEcwr15REerTEqHSN5niPM0XNx5KI0R+RWdmtpHEYIe+37qYkcVHrPCE4latLV+m3kW3Bm+7X3iXDxss4wiGqygmkz5TU1b1ybFFEKzXiMFspUsFM2ImPcqacQfAFH72O+fu95KEw1xJqrJRrzG3IEmMossscTDLD.vu27Fzm91WJkkQFYffB5eYbr8pW8JlELThHLzPCMDVXgEhe8d1C8meZNycdXDiXjnl0rlPjHQHxHiDm+bthidziPot26d2EADf+vImZAiioph7WybJpr1NjuuPmZlCN.SLtreOQDpbfZpoFrxRqP9ET.d66dG9RveoJsfg0TuZhZTiZfLxHCjPhI.CjgCUPf.AB+rCQvPBDHTthpxNRkksapHTrkjVYIBCCIjPnYwfSbhShRTsvgCGXgEVfks7U.szRKr+8uOJ0O.+8mlfgq+uWGJrPpqpViM1XbpSeVZSL+vF1uC+76MXhSX7HyLyTb4QEUTvCOd.F3.+MY9dvJKsBSXBSTpa2We8EibD+NkbcQTQEERLwDko0bd26bWjc1YI0smQFY.O8vCw4XG1hAFZfTGuwDSLXXCcvTlz5PCMT77m+Lw4UFkAqZUq.269dTpsDzzRKMrqctCZk20t1Mr68rWpSHb6.FwHGIN4INAV25VCk5e9y4Jl0rlc49pjuX6MTQi9Ul33G+XLJVnolZFZUqZEZtSNg5U25gfCIX31UtB9xW9Lk54i2di0rlUg0st0K29ZHCYnvV6nJZiPgBQxIkD71auwG9v6ors3iONbfCreVaAukGba2uEl4e7mRc62+dkcACatSNQIGCInvBQZokF9vG9.716WRYADTPAEf0s10fic7STl6WkM4latXkqb43Dm3Tko1I8zSGqbUqflXgZpolvEWbAN4TKfCNzTjYlYB+72ObwKbdJST82912vDmv3wcu2Cj6B3PoiRVjiQLxQI0bX4RVxRwnF4Hns3F7yO+nIX34N24PvA+EJkot5pisuicRKmuN3AODTXgEh4Ou4RKG.df8uOLnAMXJ4Av+qBe9Qh8s28f4Nu4WpaiqbkKi+8CefRY73oF1xV2J5e+G.kx6dO5Al7jmBF6XGMBve+EWdN4jCt1UcCyeATyOaJKz96VRZ14T5DLb+6YqJygiXpHiV2RxgOxwjadj8mMbvAGvIO0YnTlPgBQTQwGO3AO.aaqaAETPAT19l27FQ25d2kYtAE.PSM0BW3hWRoOlUDRK0TwtXHR75Z25F18todOictycA..O9wOB+wLmAkqEEEe933G+XTdFk1zl1RqceyadMMAC88UuRp47tW4i2.f5hWK8zSm143KocjFQDQfDSLQJaeriabTV.Hb3vAlat4XIKcYPaczg1Bzze++ukfgpRRKsz..foLja2IT0GqrvR7128NjhB5b.UFwLSLEu+e+.hjeTDACIPf.AY.IFrIPfP4JZoUkbq8RUt.uKE4kMlramlJi7GvPG1uSqr.BveJu9Id4E7xqGSoLCMzPboK6lTihGmbpEXu6a+zJ2SO7PpiE1RKaYKgKtzJZk+oO9QYteW4JTmfklzDGP8aPCnVG2jtkkVZvHiLByYNyiV4AGbvJ09Ipnhh1DWnHrqctCwO7dwzid7+v9OvAkZziLtwOdZQBZxImr3blV4KJmHLLwDSD6mA67s28oO3Ad3I1vF2DFxPFJ5PG6HlzjlLb+12gwHp7xW5R3ae6axs+5ZW6FlvDlHk+lzjlLV7RVJtwMuEF63FOs8wu2H874SEAt6t6RcagEVXzlftRCMrgMjxmQSdJSEKXgKBm5zmAW9JWE5JQDl4kWOlwbUZkAd5SdBt8sk9mYrgcsqcRKhrzSO8vYc8b3Dm7z3O9y+BsuCc.8tO8AqbkqBOviGRyN2hM1XgWOl540KOn7TjCMzPCL0oMMZk+oOFDkWmVZogctisSqdG4nGmlXgEiZpoF1wN2E9sAMHJkmc1Yisr4MUFF0Us3vG9Pzxomrku8sugstkMSq7CbvCRSrvhQWc0EG8HGC5nC0i48zSOKUiA1f3HLrTJXnpBQEKVRUHar7mY3xkKLyLywjm7Tvkuhazt+yLxHCrwM7OUPiNEicrisizSOcJk0yd1Kr+8K86YrScpy3Tm9LfGOp1N4916doHTWCaXCoI.MS4wPu8Q546z.CLPZt6wadyqosnxJofg956qn0NMqoROMELLld9I+8mgZV4hZTipiZTiJVWpPjHQhWDpZndk2zNBgROEuvrkbwFWUDS+tqfDSrwvpzTAABDH7eEF2jlAF2jlAqqOQvPBDHTthpJW.kSN4nTl7mJa4aDcqltzJ6gd5oTWEtlXhI33G+j3HG8Xh+qj1qI.vgN7AoseSXBSRtQPQ6Z2uhF0nFQorm9zmpvVnGSXrwFSqL0TW5AAOe9QRyJhF3.GH5SuoFMgu34OGIjPBk4wWIoINzDZkEdXgoT6C.fidziPKZ2XCYkUVvUWckRYb3vAyeAKj1D6HIidLiE73wixeO9QOTgGCkYDaIoL+6b1xV25lQVYQMJTGv.FH14N2MTWc5VtFOd7ve9Wyh1DGUPAEfm7DuJSiE.f+5O+KZk8oOIagwKu4Ke4yHDoH.d4gcj1zl1TLpQOFZkWZEwn7f+dcqkRzWqHDRvAiydFpQthN5nKtvEujTsoNiLxHr+CP+73d5YYeAbnnTdGUTLdsBIrOwKeoKRaASzt18qxM+7wgCGLu4MeviG0q8b8qeMZQpx+UofBJ.qX4KsTEc2W0sqPyQDb14VJ2bPZMqUsP+5W+nbcmvBKTDUTQoviA1f1ZoM.T8BFZkkV.qrzB4WQwT4vRRIn3zjl3.l2boGYtO3A2uBXznXjYlYhye9yQoL1dOisnENSK5tyN6rfqtdVJsUaZK0nL7Se5SzVDV938Ko75R5bL4me9zV7ZR9L.E0O+v1RkbgGA.7vGJ8mex.CL.m3DmhxyOMtwOAFqakIN1g1CN1g1Cqp6Mc+t3lteWk9XPr67PN2Egp.T8pWcTqZVSTv2s6dBDHP3mExJqrQVYkMqqOQvPBDHTthFZH+7hRogwLgoiwLgoK+JJG3vsnG1QnRvJDo23E8OJxDw4niMmVYW6ZWECcHCBW3BmmVTo..zgN1Qz4N2Ew+4rysjx1+7moJBkN5nKF7PFBqFOm5zmEO5wdI9O2u8sUJIL7DRjtndlXhzs0F2byMJeNxiGOz69zWz69P0hiDHP.tw0uVYd7URRM0znUlxHGz00t1MJ1IXgEVHV9xVlBOwsgDRHTxqL..sqcsCVZokxceaVyZF9RvgR4uxh8zUZgSo3XEII4jSFW0M2nTFOd7v7l+Bj6uYmzjommWTFQSaMqUsnEIMphb5phPcqacoY8stKkHlSR6HUUkOkZRSnKJeXp.Q4UVjXhIhss0sTp12ie7iQ630AMnAI27QnCNzT3niNRQjkm87mQqsT4njyggxiDRftvclHgEnI403..FyXGKqZ+Fz.CPO5QOnTlHQhTJQVakUjLxx80WewUthhGc9kkO2W++rAZW6QYjaPYB0TSMnt5pCgBEh7xOO4uCRPvgDFBND4e9nMt9UgMt9Uw9FtRhkjRnzQ+5e+oEkgYkUVHgJ4SHcQ2yH0nr4Wae6YcdCdricbzJSxE6Vaaa6n7ZgBEh.BH.wuN0TSgx4OzVasoEUxuRhHP7MugpfgMxd6Qsp0OhjQlVvM27l2.CdPCDW37miRtSsXZeG5.kmepksrkzpSUYNiqWDmw0Kp7aXUviLSffpjhsNW9QwuBdjPf.ABUdgHXHABDJ2PKszpR+pOr3wmxH2owPqiu23rdOLwDSfc1QeR4CHf.vxV5RfyN6DFP+6G1zl1Hd5SeJxNaYuhQRIkTnIxnSN0bVK3UsqcsgYlYNk+JqBdDYjQ.eeEUqCpIMwAoNYgBEJDW0sqPor1111h5Tm5fl1zlRaxic6pTEMprxie7inUlUVacYtcqW8qGl27W.kx7yu2fKdwKnPsSnLDIVcrictLM1J2Qrhgk9lH3f+Bsii6ZW6FLzPCk69ZokVBu75oTDGeAJg7LXVYkEs7torDFu7fpUspINmDUL218aQqdwDSL38u+cTJqe8q+pjwTZpHQ4UlHoHKt55Ywae6aU314ye9STdMGNbvnGC6DY4JtcMJBr3meAPK53T4Hp70FEuDCmOr28lpMiJYznxkKWzgNzQV2Gcnizqqzh51+KvXF63Pi+kegRYabiafwITWVvTT.qLysuJSzV6hixvbkSMoyRWwZwRWwZU1Coxcw2kFYjQFHszRSl+Io8PRnnbjZm6L860JjPkWzwKRtedmVZooxrBvPYX70IE33VWZUqnsnij77kRKOFVL93iOTteMGcr43W+01So9upDVLZt4lKd+6nd+HkzNRAJJhAs2d6o0uu8suEKaYKEsz4Vf92u9hMtwMfm9jmH2mehfzgDggDppQw1RZrwF6+IrYUBDHPfMvgCGE5Z0UrKqcBDH7SEZoYk+7ZfXACEV4Y4RdnCcXLvAN.Fm7NgBEh2+92g2+92gCenCB0TSM3TKZAF6XGG5V25NsHohoIzy.Cju.JkERN4jgOdSO2jjYlYhO+4OgScpShby8GSZGOdpg4ufEPq9Ei2d+RDarwRor9UhUhbe5cevANvOx2hgDbv3su8snoMsokk2FH4jSFm+bthidjCSobNb3.GcT54EEEgQMpQiqc0qh28teH7vl2zFQ25V2QsqcsYUavzjSYfgLmT2yM2bQFYjgbay5Uu5wp9VoAmu+61xfkjx3jW2I1OIXRJ7rx.lD+URwNpHnu8se3N241hecXgEFBJnfnLYaO39TsVMyM2BzDGbPkLdXRTdqUBhxqLYwKYo3IO4IhOurPgBwxW1Rv0uwsjqMtURj72oFahIvJqrRoNVUoHR4Zihu40uF0nF0fRYEJnPDWbwgacyahW7hmSYacsacCN4TKJwvQDBMzPoTm5Tm5nPKrElVTAxeR+q5BOdbw5W++feafCPrc8kVpoh+4eVO1xV1FqaGI+LRO8zC5niNLV2zRMUjeAEHy1Sas0VksPAzVKsPFYjAxImbPM0SOURennT78cVQOo6coycTt0YwKYoXxLDI9+riAMf98ZEZngRKB6JIYmc1volK8bSdwr+CbPzid7+JSiOlPY7bAFXfAH7vCW7qiLR9nvBKT74cM1XigolZFkbQbIyeyR9LBt3hKvYIhtu.72eje94CMzPC71.Cj1j72t1Q+y3CdnifANf9QypjAJ5Z1e3CuGe3CuGG4vGpnmexImvnGyXQO5w+So3dJkGvOpnA.folP2ttK2nxyiLSf.qPWczE0o10FI+0uhXhKVXVE7h2j.ABDJO3Rm6DJT8IBFRf.gxMjbEnpLod0sNJk1QUFgg+XRfTr11DSMEm4rthUsxU.+76MxrtEVXg3U93CdkO9.qs1ZbvCcDXgE+HG5vTzmwlHtprvKe4KvKe4KXUc0SO8vpWyZosRgKItcEpQWnVZoEEKjqO8seTDLDnnbqDaEL7sAFH5ZW9gvRhDAjd5oizSOMFy8I+1fFDrwFaYUaKO3xkK96+d8XfCr+hsHpzSOcr9+dcX66XmrpMX56XCLfYACu0stIV7hVnbayuDbHkqQtDGNJdz3JIL+4fp825e9yehhsxBTzJuNwDSDu7Eu.W6ZWkx1L2bKvv98gqRGSrgN1oNgpW8pSIO7ca2uEEACu28nl2a5SeoZ+uJChhOebvCd.7vG5Ikx0QGcYLRqqHoV0pVXoKcYXAKXdhKKnfBBm7jm.SbhShUsQBIj.s73jgR4XU.fjRJI4dsopUspIUQZTE7C8BUNhbL8oOUVW2dzi+G1112AkxhO93oEEuR67eRClNOASmO4+Rzjl3.F0nGCN8oNo3xtpatgAOng.WZUqj69yj6EHqO2mzjmHBve+kYa9aCZPJjfkJBZqcQGinJyig94eQ4bM1HFTQPrjzp5HokjB.DQDQT9OPT.X7dkjxhLSZXfAFRQvPABJDQDd3vZarQbYsscsE7O2ODL7suMPHPPgfGO0f2Rj+Bctktf5Uu5AKszRw1Qdd4kGd6aCDN6bKwqesuTpulZpIZQKbl13xHiL56O+zJosORRgEVHd0qdEd0qdErzRKwAOzQpRr3cl2BWN..t74Oobq6H98AqRFChHJFRnJHlXhIH4u9UDUzQSDLj.ABDX.hfgDHPnbiRl.6U1rucuUkR6T7jdJrLDYSpBZTiZDtzkuB73AO.W4JWFO+4OiRT4wDgDRHXjib337m+BvLyLG.E8P0RR94mupXHqvnolZh8u+ChV05VK05jYlYh6eep4Qstz0tRIuv0vF1PXs0VSYUS6t62BKa4qfU+FL2bykxDeHKzWe8wBW3hYUcYKM9W9ELlwNVbhiebwkciabcL3gLDFs0IIgouiKPNQxQkNDuxtK8SBAyqZdEaRvTT191Y+jaaeiaL16d2Gsnoph.MzPCzid7+nj2xt8ctsXaXM4jSF96ueT1m91m9hDShd9jiMbqadS38K+wDDJPfPjd5ogzSOcFq+e7G+AMgXqLvuMnAgq31kwq7wGwksycrczqd0aV8aMlrBNYIpcm6TGjqsoszksbVKXoRAUh8cKeFv.FH1zl2BsHGTYb9uBJf90DYpc+uFyadyG2+d2EIjvOxovKe4KE24t2WF6UQvz0VqLecGs0tnEvVN4p3BF5XyXWjUuwsTzh7gMSjeQnbiVWBk+vTzkWYIBVkFLdNy7UzyYRu9R1tssssCm+bmS7qyN6rQPAEDZPCLfRTgqgFZfl0rhDY2kV0JJ4u3W4iOeWvPp4uPmctkR8bz1YWCwEt3kfmd5At7kuDd9yj+yOEVXggQMxgiyc9KRYQWVUmA1+9nZZ3uepKtjycQnJDlXjwHf.CDwGWbnPAEB0JuszeBDHPnRNUM7ZABDHTkG0UWMnlZr2l1pnPklCCUB4kst08tiCc3ifW+F+wgOxQw3F+Dfs1ZmTqeBwGOl1T+QDaXsMzs0OIs2yJJxKu7vnF0Hvd2ytkZcts62h1C52+RXGoESe5C0neJszRCd5oGJmA52oacu63t26AnN0Q4Dcqkj4Lm4gFHg0VshkubVItKSV2XkkuiYOk8iCqLKbp81aONyoOqXg7qLPe6W+n75n3yWr035wCd.knqsgMrgThb.EkLyLSDd3gK9O97iTphEZqs1gITdJ.lBx5V25g5pqt3Wmc1YiUupUxp8sx7uQYOULQE00u90Pu5YOnEUa5qu9nV0ReJkonm+KlXhgVYVaco+26UUnZUqZXEqbUTJKrvBCGThH1WZ6qjWypx70czQbNLTwELboKZtXoKZtJ6gzOrB+J3Ic2wl2b3hKtHy+LTEGs9UUgonIzTyLSl6COd7j6m2t3hKzNulxBltVtheNyno7ZszRKXjwTsHyV2pVSylOeyqeC7wGp1QZyZVyDesQWbgZzM+pW8JHPf.3uDQmbaaq7WLccsqcCG5PGAuwu.vQN5wv3mvDjoyEjXhIhoNkJu26AABDJaniN5fZqu9nPABPbwEeE8vg.ABDT4jZZogTSKMVWexxnf.ABkKTUY04qRELTIhN5nC5RW5J5RW5J..hN5nw8u+8vAOv9QJoPMWG9ku7YDe7wgFz.Cf0VaM3vgCk2eQFYDrtee7ieDt2coZMgieBSDMrgR+gtaSaZKl4L+CJkIPn.jP7I.udxiwsc2cwkKRjHryctC3rysjQaPqjQ.UwbU2bC25l2jRYIkbRLVud0K4mu33vgCi46p5Uu5Aas0NXqc1gVzhVfN24tH21pzht5pKV0pVME64KhHBG6e+6St6KSS9SjRwRrrwFawXG23oT16d2akqUwopgiRHGFZiM1.u75wTJK1XiAMpQMprLzTJDTPAgN1w1iSelyBGbnrkaMUVz5V2FTm5TGjbxIKtra6t6vAGZJC1QZ+jb2U5vgCGLpQMZrvEsXJBxUYCqrxJL0oMcJKzAO8zC3wCd.TScYea1LIBUrwRWrpJ2nbE43.G3Pzh51LxHCDbHAiSdhiS45agFZnXwKYQ3fGjZdk0FarF956OretzRqnnWUOVFoO7iLRZkUVDHupD8rm8Bcrichx4N2+92GZgyzs6OIwFarFwGebhecN4jCRLwDYLG316d0GZm6lM9HWC..f.PRDEDU6JW9RHqrxhVcUEncYPvPUEhJ95cUvBFd3CeTnu9pFwoXC7XXwEJhE2KfPAzqi5pU9dsivKQzvULxagAoolZgyc9KphFQxGaX35PQn.OWPd4kGknRF.vRqrhl3f0rV0BMxd6w+9gOHtL+76MzNeuyszEw++VVh+O.P.A3Od6aCjlsSKqzXfjns1ZiN24tH9d3iIlXv8u+8vgN3Anb+O.EcMlniNZXrwUf4GP4f8Mph2t1EojykwDHTdgwFaL9ZJofnhNZXRk3iyIPf.AkASY5yF.r28SHBFRf.gxEzREKX3WBtH6rwVaJa4aBteWnBwqzakJJVdYKwDSD26t2gRYMxd6gyN2RZ00XiMFSbhSBCdvCASX7iEAFXfT1t2u7kXf+1ffN5nKLv.Cnr5gCLv.QXgEFrzRKk6X5hW7BviG7.JksvEIaK4rN0oNR0lQ+sAMHXi01fctyejGpDIRDtvENOMACCMzPQ.AD.s1PRwLjFO8oOEIkTRnt0stxrdszEWv4N2EXUapJo68nGnKcoqTxmaG7.6Wt4gOaXXhsu10tFl4e7mzxyXMqYMSr0OULyZV+YEtfgPIjCCYT3TFDBPZrqcsSDaIhzHM0TSr1082xbel6bmGbxoVPorbyKWvmOebNWcEAG7WDWdlYlIlwzmFdrWOkhfXLkqHYJ2YxDBjnd73wi04VNd73gd069PIGlc6a6Nl9LlI71apQ.fjQvqhBWtboYcab3vAFYjQvVasC1Xqsn8su8z9rrxJyXFyD25l2jxhuX0qdUXoKcYxb+zSO8PcqacQRI8iE3PjQFIDIRDieuMxQMZJQYbAEjONmqtV1eCTFPYGUTsvYmYTrht2idfAMnAgdz8tQIuO9nG9PZmW2Zarghfg.EsfQF+Dl.qFCtcU2nUlsJo7TaUAV8ZVK54+q6hESK+7yGqd0qRN6UQet+rm8LJkc0q5Fl1zlNs5J42Ee6aeCm4zmpLLpULzRquKXnbrlvxBcn8xOpmn.YR2A.fYlZF7Qhq4jRJoJkZ+CjTzJ..SMq7KuTkat4B+7yOZkalbhvvJZXx4Qt1UcCyXFyjU2+vMtw0EmysKFoc9x1111QQvv27lWCs9t38EiKt7CQBqe8qOrvBKDml.xImbvwN5QoTe80WeznRjukAJxF0uyscmRY10vFQosKFiLxHLgILwhd9oILNZ2+q2d+RLjgLTFe+TYf0rR1mVD1+gNF..lwTmnpZ3PfPUJLwXiwae26PrwEKDHP.i1JMABDH7yJDKIk.ABkKnkVpVACW1JWGV1JWWYtcpLEggYjd5XMqY0T96.xwZvzSO8vDl.cKzoj4ysl6jST1lHQhvIOwwkbWnQ5omNsIwwVasC0t10Vt6qrXJScZzh.0W46qnUO2b6Jko9QffBw0u90JSsQ4MqZ0qA5niNhecAET.3yW1hdYgEVRy5phHhvwie7ija+UXgEBeeE8O6K2orqWHiQu0UY4ugxN6rw922dwUtxkE+WHLju4jD6rqgnUst0T9qicrSXLiYrv8aeGXuDSpUbwEGdhWdQorZTiZfZVyZRorTSU9SVZ94mORWBKlvDSLk0BFB.zOIhbv3hKNrksrYHPPghKqYMqYvDSLg0sIS76Ce33SeNXJ+8wO8E34CeL1+ANHlyblaUFwBAJVLYpW+I93iC6dO6Rt6qj+NMkTRAO4IdwXcW7hWBV4JWk3+9sANnR8XV4Q4mkj1fFX.FxPoNwsBDH.u4MTymUMu4TuFG.voN8IYkv695quTlPafhh3aasS5V+8+0vDSLA+4e9WTJKjfCVt6GSetelSeZJm+PZ38KeIqWXDJCJ9dRkWtLiId7SdFd7Sdlbq2eL8Ii+X5Sl8MrnJF68sxFVZE8E9WHgH+e+EUzQQ4073wClad4W9m6fG7.ThvVfhru6Jxn0jMXokVgZVqZQorvCObodcHIoj4a6hwwl2bFqqjVGZRIkDhhOewuVM0TCN5H08URaIUxEIXaZaaoceNYlYlzd9o8uu8Jy2G0nF0.SZRzOdMTFxG1UU4wd8L7Xuj+4tTTJ9YlUj62j.gJCTMcqFpUspEJrvBQ7IPrkTBDHPnjPDLj.ABpb3vgSkZKkqjT7C6HrLXEhxnwK5eYoJHMv.CnsR2Bve+okyljjBYXx4ZXIrgw4N24AMzPCJa+hW7B3V25lRtaTXC+y5QlYlIkxjVjCpHnolZhl4niTJKwDR.4kWdhes.ABv0u1UKy80UcidjiTYFiLxH7WyZ1Jz9nlZpg4O+4Sq7UsxUfPCMTYtu6bGaGIlXhJT+oJfC2hOVozebns1ZCpV0pFkx93G+HdkO9H288QO7gnvBodbTaZcaJ0iEfh9dY5yXlzJ2mW4MsxjbBSSO8zoDEZLQzQGMsE5.S4yRYgiMu4zDC7Bm+bTdce6a+Un17mEZW69Uzu9Q8yFVIxhSzEYgoIfkId9yU9S7mhhnhE4obZdBakKzulijVHZ+5W+oINeT74ikurkRKRXnTmnhBKYwKhV4+4e9WPWc0sTNhqZxDmzjkY9QlI5YO6EZZSoZynwGebXQKZQxTzvryNKr9+Q1QusxFszTK..jeItOC1x9O3wv9O3wT1CIHpBJefVYCqXPvvy45Yk4B46Mu40zNeqIlXJs60UUw8t2cwgN3AnU97WvBKW5+xBpqt5Xdyk98LtxUrbDFCVrZwHRjHrt0sV7ku7YJkagEVfgMremw8oEsvYY9cRSZRSnrH4..iomfRBS1QZ8qe8o4VCAFX.zRYCRhfBoe8A6jQJWf.ABU8wDiJxJRiJ5nkSMIPf.gp1XhwFASL1HVWehfgDHPPkiVZoYUlUcXwBUnJhvve7Y.6Z6pUspg1zFphTjQFYfoN0ofzSOcF2mjSNYbricTZk6fCNH9+alYliINQpQgXgEVHlyrmENzAO.RShnTJqrxBKaoKAW9xWhR4pqt5XnCcXr58h7vTSnZaThDIhx6wm8rmRytolzjlL9RvgHy+jz9g9xW9L9vGduRYLWdwDlvDjYNhjIF5v9cXeiaLkxhM1XwPG5fwS7xKJ1ZHPQ1A2F2v+fCcnCVlGuJETBVRpN5nKihst3EuHJqncI4ae6a3e1v5oUtxPb7V0J5sQT7ihVYVYI0ILUjHQ3bmS1VO44YX6VofBFBHa6FkKWtnW8V94AzeVYYKeEzxGSxiIO4oPKJse9yeFNHCS9bIIxHi.G9vGRgGiJcDaihkOORgIlRO5VSShqGxiGOrxUsZZ06hW7BXlyb5zN9uvBKDd68KwPGxfPDQDNksYgEVfwOA1YeawDczfO+HY0exhbxNGV2Nolprm.7RKpolZ3uW+5Un6ciCGNXUqdsz1mqcU2vTl7jY788G9v6wXF8nj44jUEnlZpA0TSMTn.AnfBJnbsukJe2deEufYphSVYmUo52w12H6osHC+zm9Dl7jlHi26a.ADv+m8NuCqIx5Bi+FR.Bnn.JMU5EEETTA60Ucwc+rfUricW6f8Bh00dug8duicwNHhM5HhfRQ5MAoD5ju+HjQBI.IPBgvd+87vyCYl6bmyLIybm47dOmi.E5uCcTvQ4V0gbyMO9r4fBJPb6acSLqYNCL24La9dtJqs1Fz299GhMaPXHyLyTnOmW1I.n8iYL7MIKhKt3vnG0HgGu907crEWbwgE4jiBL6jrl0r1JbRhxjISANIY3Rm5L+hC14NweZDsrz8t2C9VlxJqL5YO4UHwryNaLyYNc9dGGtjVZogie7iw2xqqTmoqH7x6O.u79CUcCkfTSivvXhIFDXfAR8mnRPAED019iZ4wRDEJrvB443TPoQYB09vsFkFW7wWqloCHPf.gZa18N9Wr6cvuetpHH0vPBDHHwQRW+BA.5P6EOuPWcoTRJ.vBcbQ3Ce3C7Dsce5SeD8n6cEC0N6f4l2ZnoFZhrxJK3u+9gG8nGx2LnsyctyPe8MfmkMm4NObqaeKjTh+N8avlMar8suMricrcXrwFiVYt4H93iGeMzPQN4jCe11RW1xg4kIxEqInolZx2xx7W+hZ427F7mJIG5PsSf06sxx+aPCFuuboXyadia.KrvxZf0V6Bc5Lvl92sfQMxgKz+tTN4jCqacqGidTijmkmQ5oioN0ICETPAXgkVhl0rlgXiIFDd3gKvuikdTp3C0vqCcvgIiqdkKySjU9ieDMF0nFA18d1KrwlNwiis95WCEKYwKhmqK..ZiEVf1Wtnfs5f5pqNTV4F.Vr984ZA47JqrxJ9Dn+PG7.PIlLwLl4r3woLkTRI3RW5h3hW7B70OcnBRKXUFCdHCoBS8wcpycVfWqVWfL90upRgX3h5p2D9h9TwAMsoMEKaYq.N67pD5sQEUTAKcYKGqX47FIJ6X6aCIkTRX1ydN7cN+Eu34XCaX8fEKVhE6tlPscTQUQiUTdrwlNgAO3gvWjy+T2cGO0c2gFZnArp8sGYjdFHnfBrBSMkt3x5.CFB2qKMxQNbgpc..e66QVgNW8MuwSz29zagpeF23GO13FE9W7STniczZXu8iAW4JWVn2l10t1gQLhQhabiqyyxe0qdIdUedIZRSZBZeG5.XWBaDUTQhHhHBo1yawTQEQ1EUDxKu7jHYAC2tGmZP8PG7eKbaP8rTRpGu90B8uimzjb.qccqG..Zos1XAKzQrqctCdZyKe4KfMV2QXjQFAyLyLjat4heDyOv2+12362Ppol5X4KekhmCDv44tE1iE.NO21xWgvWa4DWbkKeI9xJ.UDq140foV5jgf6jrXL1yaJeN8z+IlxTbf5YF0noZ.+Cve9dFItzu90ez69zmJc+18t2C9JuAboSch+ZztVZqMzWeC3oFAyECMzPzrlI3558BczQ7t24MO2a2Oe8E8rGcCCYn1AyM2bnoFZhryNaDP.9iG8nGhzRKMd5Cqs1Fgp9tKMYu6myyq08tx+4txyxV7BkzlS0BWbwEblybF.v48WprLAffnScpSTeOOtwMNbQobscthH4jSlmnv2EWbAqe8qWJZQD..ZjJpfFohJHyrxBojZJPKM0RZaRDHPfPcBHBFRf.AINku9zIIXkKyIwR+HQELjpuE9Mo8su8XG6XWXgKb97XSrXwBW9RUsSAzRKsv9Ovg3a4Jqrx3XG63XgKXA7EQErYyFe6aeim5dX4om8rmTNZPbfN5v+K7mZpoBSL0TjQ5oim9T24YclXhI7EAcBhANv+BqecqkmW97t26tXUq1YYlzjK.meGL1wMNbIQ3kf6XGsFaYqaCaT.BKTPAE.e8wG3qO9v21ImbxACMzvpL8kJQQLDgg.bhhj03x5vjcXh7r7TRIELwILdnnhJBKsrsPSM0DgGd3HhHhfuTmmRJoD16d2eUJNsvhlZpIOWyInHlXTi1dbsqcUDP.APsrhKtXrsssUbnCcPXVKaIzsE5hjRNIDYjQJPm20+AL.z+9O.Q19ZYKaELyrVxWZFC.XvURzGJs4rm4z3rm4zBUa2zl1LF63FmDwNFyXGKt4stA7yWeE5sYjibT3RW7hHv.CfmketydFbtydFzhVzBzt1YExLyegHiLRDacozlDUDFV6HxgpppFXxjIONAN0TSUfsccqeCH2byEO6YOku0kRJofm5t6BXq3fBJn.VwJVI5UuEdQBpOxRW1xwSep674H8JCmWiKHmbxAO5QOju0kVZogm8T9+9.fS1OH93iqVKh+XxjIxNmbPd4mGTQEUD5sav+uAJTs6BWhyj9PXELjcs70R0kYVyZVv8m7DDTP7FsQEWbQH7vCCgGdXU51uwMsIzzl1TIoIVgniN5f8efCJvZ5YcYrwlNgMukshMtg0ibyMWdVG2mYrxnm8rmXKacaU49o6cuG7IFL.GQKs1ZaD31zktzEAJXnfRGobossscXm6Z2X9yat789SBinpZngF3.G7PxLYHGgAartlOw2DDbm3P0mNWQ3+Vz7l2bjYnghXiKdhfgDHPfPoPRIoDHPPhihJV6TCQDGPWNN2VrtTJo3+MnAAmc1E9pqGUElXhI3HG8XUnSSrvBKw8t+CDozJJc5LvTm5zvgN7QDquXn4kKUHA.DVoND5t26t74.wxWqvpHZRSZBeoAxLROc7hW77pokJ8XoKc4hrCvF8nsG28dO.VZYaq5FCNhEt4srU3vjmR0wDEaPqzqCYKFpkn8rm8DqccqWfSbg7yOe7oO8Q7vG9.Dd3gIv5r0ZbYsh0YXtN5nCOeVPhcPmNcr8crKAZyYmc1vWe7At41cv671aAJVnZpoN92+cKUaabvCYH7sLFLXfANv+pZ2m+WAZzngMsoMKRBLSiFMr+CbPXkUVIv0GarwhG7f6CO8zS9DKzTSMqFYu0Xpk03fFMZ7EY6gElfEOPUUUEG8XGGaZSaFJojRB89vTSMC29N2Upeev5BnppphUsZmEosQEUTAG7PGFaa66.JqrvU6GaQKZAt3ktLLqkhVcSrlfhL4TGCyKOQqNFNoILFLoIH3ZzVMBhfgTPmNCbfCbvJUPHAQiabigKtrV7W+kPFUmhY9i+ne39O3QxbhExE6seL3t26AhTV3Pd4kGqZ0NiSelywW50VPXgEVHvT2s4l25JLx+qn5XXU86i+5u9a3xZWmPeeHtXjQFAWOxwpylQEpyQcijxScdjWd4g0VaM0eUTzwRn1mVzLN0zq3hONorkPf.ABRNBJ3PPPAGhP2dhfgDHPPhh7xKOnSmtz1LDZ35j2hKVRHXX0Opol7TlB77MuEN5nSPM0TuRaqAFXH10t2CdzicuJq8FJqrxXKacavUWOJZaaaWEJBHc5zQW5ZWw8t+8wpcdMnAMPzd46pByM2b9bv9cuqa..7kZy.DrfFUD+uAMH9VlfRwo00oQMpQv403hHucFZng3F27VvQGcBMu4BtHGyclceyacaLpQMZoeJakJBCEOc2jljCvs6dOQpVPpgFZf8r28A6sW75X3xWmfRO8eJvn2wDSLA6+.Gjp1ZHrXt4liic7iWihtBAEIg8nG8DpplZU697+RzpV0JL0oIZQfst5pKt10uAl27WfPOlo0VaCt9MtYsRT7WgHERihk+9S+3GQySz3VdF63FGt68d.5e+GPkdtRKszBy5elsHeuh56XmcCCcsqcqpaX4XjibT39O3A3Os0VvrTw4JOMrgMDNL4of6+fGAczQGXYs3XOLUjqfgBNczVqC2IHCQvP..nqd5gydtyiyb1yy23lkGlLYhYLiYhW9JOp0D5mNc5noMsovbyMGSXBSDm8bmGG63m.pppp0J6eIEFYjQ3l251XAKzwJUPC4kWdzqd0Kb66bWLsoMcgdRDRmNcAJ.nfRGobo70ibN8CCgp1ROoI4.diWuEKZQKFpqdk+9S5quAXm6bW3wO4ohkzPesA+4.9C7mCn1sVYVdHQXnvglZpI93G+H0eyZVyRZaRDJE0UWcvjISvhEKjdFoKsMGBDHPPhvF92siM7uaWnaOIkjRf.AIJLYV63HyW7JOA.vezGQa1HWdnSmy7nn3RDs5mPsAppppX9KXgX1yYtHlXhAwFarHtXiAYlYln4MuEPW8zE5oqdUKm5+m1ZK9SasEIkTRHv.B.ojRJHyrxD51BcgIlZBLxHiEpT3YO6YOw2iHJQd+qnhJhvBWvo.06d26Kx8WYwd6GSEJ5iYl0xpk8VYz8t2iprOoSmQ0Z+N3AODL3AK7hkxEFLXf4ufEh4ufEhPCMT78u8MjZpofRJgMrvRKPaZiE7DAqsqcsSredQTfJ0.KFizWtQMzA1+9vst0sPhIlf.amxJ2.LZ6sGN4zhjH04NKrjeGheW2bCSYpSkuk2+9O.zqd0abtycV3pqGFYjdE+RrMu4MGN53hfcCaXPN4pYyGLc0SOz912d3me9QsLQQjdB.KXAKDO7A2GwEmvOakoSmAbxoEgd0qdgcsqchO8wOIvndsoMsoXZSa5XpSa5fACFvbyMG96u+hSyWnoljFEeh6OqZsOW252.V252fHsMFYjQ3nG63fEKVvGe7AIkThH0TSEJpfhnoZzTXngFh1zFKDZGd9vG83pioyGVasMhs60t28ser28s+JsMia7iGia7iWj66KbQgqtnUdzWeCfqtdTjWd4Ae74SHwDRDolZJPSszBssssCFYjQ7bN+e27Vv+t4pezQKJv84SyKeIifgieriRjZ+uuVRBXLU.U2qAKOctKcQh8LC8rm8D8rm8DYmc13GQGMh9GQiXiIFnhJp.8zWenu9F.czQGgZbuoL0oJvwZKKswBKjnO+yWBsxSmpBKiZTiFiZTitpaX0.FLXfEtPGwBWni3Ke4KHhu+cjRJof7xOOzjlzDnoFZBqswlp8jG7HG4XhT60VacpQemz3F2XL24MeLq+Y1H1XiEwDSL789S5pqtU4DxrtHyXpSRna6pVyFA.vl23ZDuFgDHBCKt3hQvAGL7wGeP5omN5XG6H5ZW6ZMZBRkPBIffBJHDTPAAkTRIXokVBKszR9D4uvBKDgGd3TeVEUTA5pqt7zlXhIFjUVYA.NovbSLwDdVepolJRN4jo9rAFX.TPAE3IiHngFZ.MzPC..De7wSUSyYxjILxHiPwEWLBHf.fWd4EnQiFZcqaMr1ZqEXD5xkryNa7wO9Q7oO8Izrl0LzoN0IXpolhrxJKDSLwP0NSM0TYpRygjFZzngl2rliuGw2QrwEGTSUxDjj.ABDnwtRJTWQDYz0l1BABDpGhFMsIPEUD+Ncu7LpwNY..b8KelZT+jTxIiW95WAs0Vazmd1qZtgUFdw.ZGJJyLfAG0MvnwjGDkP8S91X3bcye99p+yP7F66OXEU3n4a8jPICLUbYZ7PHe9yHhHh.ojRJnD1k.SL1DXpYlAczQm5jyRZ1rYiTRIE7ieDM9Qz+.ojRxPaczA5quAPe80SlzQWDpbxHiLfu95CRIkTP5omNzWe8Q6ZmURzzXknd8a1QGAd6n6KnqQyfgG3JRL6h.AgAQ42ug+8uAe70WXrQFAa5n0B893bW7p..XRiW3Sm6BCYFQX3cic.ft1s.Ft2pm.sDHPP1DwwyNWUHtdW4xCqbYg6d+6CkTRILzpQstdJSYJ3LmgiMImbxgjSNYLhQLB75W+ZdZWqacqwku7kQaaKukYAkTRIpHEebiab3hkqdumVZoAGczQbgKbA912xKu7XEqXEvYmcFJn.mRnRQEUDzTSMQ5kNI8ZUqZE9xW9BOam4laNBMzPA.mI8ZFYjAOQR+jlzjv4O+4A.GA3SJojPt4lKOYMDWbwEr90ud..3fCNfyctyA.N0s9m9zmhANvAhO8oOwy9sEsnE3xW9xnG8nG7crboKcIL8oOc9pAoKaYKCcsqcECaXCiZYQFYjv.CLfu9nx3JWmSc4cLRnIpfzlDRLA7ZO8Dp13FiA9m1JsMGBDHPPrin9b.jHLj.ABRTjpoJspAbSEbkTrjHBCq9ojTBD9OEzj7Wqz51zFz51zFIV+KtgFMZPSM0DZpolvZqsQZaNDpEPUUUE+wezOosYT4PkFEktlAABhJU2TR58t+i.f3WvPoQ58k.ABDpoHNCN5RJoDzoN0IDQDQv25BIjPPm6bmQPAEDeQzWEwW+5WQu6cuQRIkj.WegEVH13F2HtyctCd6aeKZXCaHXvfAF7fGLk.dgFZnH1XikRrujRJIJwBA3TOz81auQe6aeoV1Se5So9+d0qdA0UWcgNiS7ye9Szqd0KDRH7WmohM1XwfFzfPrwFKOYAk8rm8fEsnEIv9a6ae6vZqE9IEy+UQSM0DLXv.Y7qegbXkCZfHV6SIPf.g55z0tHZ9PhTCCIPffDCZznA4kW1ZdIvUvvhjHBFRf.AgBZk93IDw0IPnNM0jTRJABRS3FMH4me9RYKoTJgTCCIPffnwUuwswUuwskxVg384.hHhHvHFwHvsu8swUu5Uw.Fv.nVWd4kGbxImDNqhMaLqYMKdDKb1yd13d26d3RW5RXvC92QCYPAEDb1Ymo9bYiFO.dE.zCO7fu80qd0q3ouRLwDqv9ppH5niFgDRHvAGb.m3Dm.aaaaiJ0kB.7qe8KdhVxTSMU3hK+tF2qnhJhMrgMfm8rmgibjifV1xVxWjJRfenKGcns1ZC.f3iWvksBBDHPPVlEsv4hEsv4JzsW1xS9DHPPlBkXxrVK09M3A8Whk9gaMLTRDgg+NnoHhfPfPkAsZgHLj.AB0bHBFRPVEtY.i7jPBFdPWOA..l2rmtP0dp3KjbsDABDDRtwMcC..1OxpVTp8umsIQrAw8ipau81iKe4KScuvgO7gi92+9SkhRu+8uOBN3fgEVXQk1OW+5WmmzZ5l1zlvpW8po97XFyXf81aOt90uN..NvAN.l0rlEL2bygs1ZKTVYkAKVr..f6t6NlxTlB.pZACKq3h..1YmcB6gNEKcoKEae6am5yVYkUvVa+cZxLnfBh5+2+92OxN6ro97YO6Yg81yIB36W+5GF9vGNZcqaMRM0TEY63+ZzLczAwFarH9DhGlJjQwJABDHTeERDFRf.AIFJxr1KcjNowauXI8PQWNNQXXwjHLj.AoGbivvRHBFRfPcZHoQQBxnnXo0qpBJn.QZ6l8rlFl8rlVU1tW6wavq83MBeGStVh.ABRPzQasfNZqkDnm4buKw0jcXUqZU7zWLXv.KaYKim1TVAypHJqvdJqrxXAKXA7rdZzngku7kS84RJoD3kWdA.N0EwANvARstm+7mSMAo3JBolZpILxHi..v6e+6opcft6t6Tam0VaMO0sPgkoN0oxym6e+6OUVPB.7DAikM5AaQKZAF8n4sFCpgFZfILgIHx1v+EoYZqC..RJ4jQQEWjT1ZHPf.AoKDACIPffDClJpfz1DDY39v3EyM0PINgJpoD+cMAB0qfxQAjKVHPnNMjn.lfLJJTFACKgsv+Le+Qe5I9i9zSwuAQhVWBDHHKhX7w.XxjIZaaaKeKuycty774u90uVk8UvAGL0+at4lCUTQE9ZS6ae6ACF+Noq84O+Yp+urIWKYZp...H.jDQAQkRzTRIE3u+9izRKMp9sO8oO3O+y+D.+tNFle94yiPkhZ5HkK5omd77Y4jSNzjlzDpOmSN4P8+k8bQqZUqDnvsUUzXRfCLYxDpqt5njRJAIkTxRayg.ABDDq7nm7L7nm7Lgt8jTRJABDjXnfB0dQXn3BJACIQXHABRMnIGm4yDaIgv8DHPP7AQjCBxnPiFMnfBJfBJn.TXAERkhRkZPpggDHPPDYpSV5G4XrEiQXXYEEqrnlZpAZznQEkewGe7UYeESLwP8+ppppBrMxImbnwMtwHszRiusYPCZPPd4kGEVXg.fSpF0LyLixF5ae6KZZSaJNxQNB.3jVRYylMUjFBT8DLjACFPYkUVfKmKk8bsv3yBkTRIQ1N9uJMSGcvO+4OQ7IDOZdyZlz1bHPf.AwFm5Lbp+s+ks8WnZOQvPBDHHQPAEjmpd.Vav4tvU..vjlvXpQ8ibkZyRDACIQMEABBGTAiK4ZEBDpKCotqQPVFEUTQTPAEf7yOewtfgKeoNJRsmqSnIWKQf.AgEg0oe..SZp+C..N2oNh30HDiOpdxImLXylMe2Gj6x4hgFZXU1WlXhIHhHh..nBqeeEWbwH8zSm5yFarwT+upppJ5Se5CUMIzc2cmmTAZe6aegFZnAjSN4PIkTBd4KeIOo35V1xVByM27pzNqNT1yEFXfAH5niF.bh1PAc96Ke4KRD6n9HMSmlgf+7mQBIjfz1THPf.AoJjTRJABDjHvrVdlZeuG7XbuG73Zb+PpggDHH8gFI88RffrAj5tFAYX3VGCyuf7E5sYKaeOXKaeOUY6rtCVAq6fUhf0PhVWBDHH4H2byC4ladh89UbFggEVXg7jRO4xye9y44yspUspJ6q1zl1P8+gDRHH4j4OES5gGdfRJS1Lo7otyxFgfd4kW3wOliuFzQGcPKaYKg5pqNZe6aO..9vG9.byM2nZuc1YWUZihCJqnjwDSL3AO3A7r9rxJKbhSbhZEao9.poppfISlfUt4hLxHCos4Pf.ABRMHBFRf.AIBJxT1KcjxEFzoC1rYKR0zFgCthfPTAg.gJCZzJ8wSHojTBDpaCIMJRPFFEJcxske9ETEs723qeA.e8K.wuwPd1PBDHHKhX9VWt3hKHu79svlomd5XKaYKTelNc5ThzUY72+8eS8+EVXgXMqYM7r9byMWrt0sNpOqjRJg9zm9vSaryN6nDBMu7xiJR85ae6KUa5e+4DkmETPAHzPCkZ4U25Wnnxblyb3Qr1wMtwgidzihO+4OC2byMzidzCdhLRBUNznQCMSGc..P7IRhxPBDHT+gQMB6vnFgvOYVHojTBDHHQn1NBCEmHGc5.EWLJt3hgbLDeyqheG0TDmBQfPkBI88RffrAjZXHAYXTrzZssnDggRJJoDtWKQlOuDHPP3XW68P..XwNN2prszoSWhXChyHLDfST+00t1ULxQNRTPAEfqd0qhu90uRs9YNyYBCLvfpre5e+6OFyXFCtxU3T1RN1wNF9129Fr0VaQ1YmMbyM2PfAFHU6W25VGzUWc4oOzQGcPW5RWf2d6MOKurBK1+92ersssMdVeyZVyPm5TmD1C4ZDVZokvd6sm53LqrxB+y+7O7zFc0UWdpOiDpbzVKsQDQFIRLwDQqakjIsxRf.AB01L5QJZQ9NQvPBDHH1QN4nwSg4t1f47OSSr0WbegpRJtj5s2kLgDR.Gw0CC..GcxInlZpKksn5u70uFJtzEuH..bYsqEzoWO8GUhS35zgRHBFRfPcYpqW20jkGq60u5U3Eu34PCMz.ya9KfZ4e5SeD26t2EJorxXEqXkTKOzPCEW9RbGqYcRLmCWeBEUjSJIs.QHBCEVVoyqG..aYSqU31.1jn0sxn13Z4.BH.b4KcQ7ieDMnImbvImVDr1ZavoO0oPTQEI5bW5B96+9+IV1We7ie.2+d2CMngMDKaYKWj29LxHCrmcuK..Lq+Y1nYMqY70lm8zmhG7f6i3hKNzfFnL17V1FzQGcvV17+h7xKOXmcCCsuCcnFerPP5w6d+GE51dkKbRIiQHFeTc8zSOznF0H3u+9C+82e9Vut5pK1zl1jP2e6cu6EgGd3vGe7A..u3Eu.u3Eufu1MrgMLrnEsHA1GCaXCiOACKaDF1idzCvjISdhJxgNzgVq9bQm+7mGMsoMEG7fGju04fCNfAO3AiQNxQVqYOx5nsVZAZzngTSKMTXQEB4YHuz1jHPf.gZcHdsj.ABhcXxjYstyC6au6oXqu3J1YQEWDTDhwHkj64DZReQPR+m+DW3BmG..Sa5SmGGu78u+c7FO8.zYv.SXBSTZYh0aH1Xik5b8pcdMf3C2pFZ0SivPYYwKpuRlYlI10N2A..l9LlI0rKujRJAqecbbz+XF633oFwPnrT2NBCkkGqKnfBDW3BmGFarw7HXX3gENtvENOTUUU4QvvXiIFpi003hPJR0+wo5Dgg+6FVSU2H.7suGonYLbuThTOPEHR5qkezidHl2bmCOKKpgEEr1Zaf6t+X7gO7AHmbxI1DLLrvBCW3BmGpol5UKACyImbnNeLhQNR9DLb26dW3PG7.7rrz+4OgN5nCtxUtLxN6rQarvBhfgDpwHNqjwpolZ3Uu5UXzidz34O+4T0WPZzngQLhQfidziB0UW3e1YszRK792+drqcsKryctSjRJovy5M1XiwV1xVvnF0npv9XXCaXXYKaYTetEsnEvDSLg5yLYxDcu6cmm5rXsU5HkKLXv.G3.G.yYNyAe3Ce.96u+PO8zCcoKcAcoKcAm4Lmgm12fFzfZU6SVCETPAnt5pizRKMjbxoflKfIjAABDHTeGhfgDHPPrirb5HEnLBFVXQRYKQ5PPAEH1vFVOTTQEqS5DUB+Gf5o0vPYYwKpuRtrXQ8chc1MLJACYylM0x6d26AQvvJBY3TrMYrNBJTZDFJJ0vPyL0XIiwPkdekLce8YDGWKyMZ8zWeCvLm0rf1ZqMzSO8EmlYsFrXwhZxIYiMcBia7iGJwTInco0kKBDDqTCSM4m9zmFm9zmlmk4t6tCVrXgO+4OirxJKzgNzAnpppJvsO2bysR6e5zoiksrkgksrkgjRJI74O+YvjISXgEVfF0nFUk1mIlXBU1Tnh3YO6YUY+z7l27JreN6YOKN6YOakt8wEWbBb4QGcz3ae6aTedjibjvAGbfm17jm7Dp+WIkTBZngFUo89eczQasQZokFRHwDIBFRf.g5EbrSxYblYNMGphVxAhfgDHPPrihLksELT9RELrvhDyBFRUCCEucKg51z912Ab1ywQ3gZ6T0qLKkdsRU8B50mfHdAAYQ980nDUNj1zgN1QpwZHoiTgCtQXXA0Apggr4lRRkiTCCqsonhJBQEUT.fyj4YLiYrR78Y+5W+f95qOjWdED68cjQDAJt3hA.vxW9JHQQX8XVqyBezol1OSG..MQc0Dq1fj5o.TVYkgM1XiXsO0RKsfVZokXsOk178u+cz+92epOOkoLEbpScJpOmbxIyifg1YmnUCq9uJ5nk1H3O+YjXhIHsMEBDHPPrvSe1KA.QvPBDHHEQQED+u7aUwl21tA.vpVtfq+.hBLjmSdpuvBKrF2WDHnt5pidzCwWJy8+BPSNtBFJkMDB+mE4jSNJwWL27VKksl5t7a8BIBFJsgLViniBJv448JPB77dGbuaWz1.pw6HWKUaSAEjOk.a5pqd0J6Ss0VGns1RlH9K279cDWoqd0NGODjNXQaD9rev+LWm..v0u7YDuFQMLBCITyn28t2Pe80GQGcz.fSDa98u+czst0Mjc1YiadyahLxHC.vYxD4ryNKMMWYFTWc0gBJn.xNmbPVYmMTogMTZaRDHPfPsJDACIPffXEEUPAHmTX1Q6m+AJ15KtQXXQh6HLDUunlxO+7CgE1WQpolJTUUUg1ZqM5d24Tf0qLJojRPDQDABJv.PhIkDzSW8P26QOpvT5xO9QzH2byEwGe7Ta+W+Zn.fS8YPe8MPjr6nhJJ3u+9gDRHAnrRJglpgFnKcoqnIMoIU41ld5+DAETv3qg9EnRiZDzUWcgM1zInf.DiNgDR.Yl4ufZpoNzTSMA.PhIl.dyadC..F4H4stTjc1Yi2+92gDRHA7qLx.pnhJv.CLDcsacCxKO+E07DSLA7qe8KzfFzPzhVzBTRIkfnhJJDbvAgTRIEXQar.VXokUX8fHmbxAwFaL..vLyZIU84KyLyDIjP7PAETDFZng..fEqbfu95K9RHg.czoYvrVZFLyrVVkmuxKu7PPAEHBJnfftsPWXsMVC0TScTbwEiu8svA.fwFahrSDNREMt0uRIoDjcfFMZDwWDF3dMpXvQgxRi0UbwEQkBvLwDS.c5L.a1rg2d+V7svCGcpycAspUshmsIiLx.e9yAiPCMTzjlzDzl1zFXjQFK1hFvryNaDWbwBfpdrlbxgyXMg9kPPyZVygYszLXpolUk6i7xKODXfAhfCNHnmt5Aqs1ZnpZpIyNVC2n6pvBD9TR5bWvR..vg1+Nqz1okVZJZFiX7ZIoMxJWKmd5+DImbxfEqeKvVrwDCUeT1qiDDQGcTHu7xCpqdSpvT7WFYjARJoDgbxIGOWiwc4zkiNLwTSE31xlMaDczQi.CL.DWbwgl0rlgdzidVgOGM2mW8GQ+Cpk8svCGokVp7b8uvPgEVHBOrvPveNXjKKVn0soMn0stMB7YcSM0TQZokJ..L0TyD36AFQDQfBKr.nrxMfJ0eWVJpnhv2+Nm6o1hVnKoFqICAIOCHcgNc53ku7kne8qeHxH4T6b8vCOfGd3AOsy.CL.W7hWDst0jIAmv.MZzf1ZoE9QLwfDSJQnRCMop2HBDHPndDxFuMGABDjYPVOcjB.vfQoQXXQh4YbNkHHBmfge5SeDqwYmQXg8U9VWiZTivLm0+fYO64Hvs0SO8DKdQNhzRKMdVthJpHl4r9GdRcIbYQKxI3mu9R84BKrP72+0.A.fkV1VbG2tqPY2IkTRXYKcIvKudCehixfACL3AODr4srUAJ9WJojBbxwEBu89s7sNM0TSLqYMaL4oLEdV9121VwcuqaXFyXlX4qXkXaacK3Tm5Tn3hKBlat4TBFVTQEgst0MiqdkqBVrxgu9WEUTAae66D+os1xyx28t2Et4MtA5Se5K1xV2FbXRSjuuSjSN4vvG9HvF13lfhkqFd9t24Ml4LlN..9RngQcb+pW8R3jiKDFarwv8m9broMsAbtydVpY4NWF7fGB13l9WnhJpvmMyhUNXIKdw34O+Y7HvMMZzvTlxTw7l+Bn9N70d7FzhVzB95i5jTGvgoxJN7TPjWd4guDRHHnfCBkTbInE51BXkUsGMsoMku1JHwDxM2bwKe4KP7wGOF23FGjWdEPDQ7c..XfAFx2uw4RL+3GfUtrfpppFOo7ou8sughKtHJm.VRIkfvBKL3qO9.EUTQzQqsFFX.uGmom9OwG+vGQjQFAzRasQG6PGEXjRjQ5oijRNIPmNCXhIbdY9DRHADbPAgnhNJXhIlf1111ITSTgxC2uGZdyaAZXoyrXAILRwEWLBIjOCe8wGvTIkfolZJrvBKE383JKkTRIH7vCC94qufg7xCarwFpuu496BszTKnpZh2zGlXkR3bOdZ0.WEJKNVW5omA013869.XwhEl0rlA9V3b9swN24tnDLL0TSEKaYKAu9Uuhu9ogMrgX8aXivN6FVUtOqJdm2diYMqY..fuF12nDs6Eu34XwKxIXholhm7jmhMrg0iKb9yw2XMCYHCEaXiaRfi0jSN4fEuXmvKewK3arloN0og4Lm4Rc9vy27VzLYj58iBxK5QXXxojpjwXpGTCCk0tV1s63F13FWOOKaMqY0T+eYuNRPrf4OeDbvAgY8OyFKaYBN0P9jm7XrpUtBnhJp.+CHHpk+fGbe3xZbFpol53S93KeamO97Irf4Oe9RGdLXv.N3vjw3mvD3aa397pkkwOdNoWUtW+WUvlMabxSdBr6csSje97lpdoQiFrytggMrwMBkU92B54iOeByY1+C..twMtEeo.07xKO72+ksnvBKDMu4MGd3oW7se85MuAScpSFznQCd812QDLTVBRDFJ0wPCMDAGbv3JW4J3JW4J3ae6aHszRCpolZPe80GCbfCDyYNyAMtwMVZapxTnklbDLLojRBlZLQvPBDHHaiSKTvOCdEAQvPBDHHVgYE3HYYIjW9RivvBE2QXnvymCNXLkIOYvhUNngMrgnG8nmPSszBo+yeBOeimHizSG6bGaGLUjIlxTmJOa6IO4IvV2xlQIkTBTTQEgkV1VXrwFiPC8KHjPBAGX+6C95iO7sO0PCMPyadyQNrXgLROcPiFMJm9wMx8pJxLyLw3G2XPjQFIXvfA5RW5JLzPCQd4kG9vG9.hN5nvsu8sPt4lKNzgckmsMnfBDybFSGImbxfFMZvHiLBsyJqPL+HF3iOeBImbxXiab8HGV4f4N24Iv8+V17+hSdxSP8YZkNKmYylMV9xVJtyctM..ZbiaLrp8sG5qm9H1XiEd40aPVYkEl27lKtycbCstMsgu9N4jSB1O5Qge7ing1ZqCr1FqQwEUL70OeQRIlHtwMtNBKrvvIO0og5pqtPc9hKa9e2DN8oNEzUO8fEswBTRIkfW9xWfBJn.bu6cWvjISr0swa5MK4jSFSaZSAg74OCZznASL0Tzt10NjRJo.+70WbpScRjYlYJR1QcEnQqzYmtTHmjJq4vyxRwEWD1911FN8oOEehAnfBJfQMpQiktrkyif.O+4OCKYwKBlYVKwid7SvSdxiwJWwxwu90u..vPGpcH6rSlxldvCeLeQNEWVwJWNdm2diwO9IfMrwMQs7INgwgjSNYbhSdJnlZpiYL8ohe9yexy1ZqsCDG5vthhJpHrjkrH7f6eedlvAzoSGi1d6wF23+xSDebu6eOrt05BZRSZBdiWdi4Ou4hm8L9cJZm6bmw9OvgDnnoB9bYwTGyt55QolHA4jSNTK+Uu1S70PCEN4ji7MIDLyrVh8tu8gV1RAetxUWOLNhqGFYmc17rbqrxJblyddrHmbD94meX8aXi0wqokk9cjbUOGEJqNVWYI0TSESYxSBol5uERh6XO94qu3e9mYRstV2l1f1z51fTSMU3me9hLxHCr3E4Dd6a8Baaa6nRilIwA+6l1HN6YNMzUO8fkVXIJt3hoFq4t20MnjRJgMuksxy1jTRIgoOsofPBID9FqwWe7Am7jmf59ExZHO2TRpHDggRJ9886jMqggxhWK2fF1.z7l2bTRIkfDRfivbMoIMoJmXPRZt10tJViyqFEUTQfACFvRKsDsrksBgEdX3yAGLN4IOABMzP4a6TSU0PyadyQ94mO08bzVac.c5xAszrpqaa4kWdX1+yLohLIM0TSz912AnbCZ.BL.+w2+92wsu8sfe94GN4oNM0D8oW8p2fISlHu7xCd3oG7IXne94KUYdHt3hCwDSL7Ekgd9FN6Sqrxp5c0XNIIKZoqB..6dGatJaq95wejcJNfDgg0MPYkUFScpSESsb2ekP0GtYJfjRNYvlMaI9ynQf.ABRR5VW5jH0dhfgDHPPrBSoTDFt4M5hXqu3NahE2QX3ui.ipVDjqe8qAVrxAZokVvs6dedR0Q4kWd3el0Lfmd5IN9INFONdI5niBaaqaEkTRIn0st03Lm877DYMwGe7XZScJvKudCe6SWc8n..3N241XwKxInfBJHvYAbkgGu90ToCkKekqhNzgNRsN1rYicuqchCe3CgG+3GgXiMVpHdiMa1XUqbEH4jSFpnhJ33m3jvFa98.Z+7m+DKxoEBO8zSr6csSLfAL.9RUm96u+vGe9DZRSZBV1xWAZW6ZGLv.NQLk+94GkXgaZSaFiYrikmG5OzPCEibDCC4latvCO8PfBFx0Yot3xZgCSl2nb7PG7.XO6Y2Hv.C.6ee6Eqa8aPnOmEQDQfHhHBrrksbLiYNKpT4TlYlIVjSNhW9xWfacqagEujkxyuCbwEmQHe9yPIkTB6cu6G8e.CfZc4jSNXlyb53F235U599m+7m3cuyajUVYg1291Wgo+zP97mE34DIFhXz3JtPVzgmbIyLyDybFSGe7iefpeaeG5.nAZvSO8.rXwBW7hW.eOhuiyblyIvzuqGu90X9yat7H1n37ki8xq2fqdkqBZz.5Uu6MzVKsgu94K9V3gim7jGicuqchOGxmwqe0qnDVI27xEu+cuCojRJ3xW5RvPCMBSaZSmu9tvBKDSapSAu8sdgF23FiN1QqQiUUU3ue9hHiLR792+dLjgLHbxSdZXt4BeM+ox30u9UXSabCnAMnAvZq6EzTSsvqd0KQpolJBKruhoOsohW7xWyy45hKtX3xZbFW4JWF.+1grJnfB3Se5ive+8GNLoIvSJxqtLrqgQVfr5XckkMsoMfTSMU7m1ZKlzjb.FarIPSM0DEWbQX4KeoTQo712wNQ+52umz.YlYlXkqX43wO9Q3l23FnG8nmXHCYnUa6np36e6a36e6aXEqXkX5yXl7jxRcxwEhW8pWhadyafEs3kviv5trFmQHgDBTRIkv91+A34XHmbxAyXFSSnFqwaueKxImbfUVYUclwZjuzLJQQEUjX2YfSbxyB..m+LGU31.Y7HLTV7Z4QMpQiQMpQCVrxAVZAme2sycsGzqd0KQ93WbQJojB1v5WGJpnhfgFZHN24uHOQrapolJl4Lll.OerxUsZrxUsZ7oO8QX+n4jcMb6t2SnmnLm7DGmRrvIMIGvJW0p4IR4uxUtL13FVOhJpHwZcYMT04WkTRIzqd2a39SdB7ziWiEtPG4oee+6eO.3L4oxO+7g2d+Vnqt1ySa7zSOA.mIOT4IwDS.e3Ce.EVPgBLiDvkZ8mUsN.wDa7Bca2411njwHHQXHg5ozvFzPzfFz.jSN4fzyHcntZh1DBl.ABDjkQ1bJLRf.g5jHmbxI0paMlZhQvTSLRrzWTNPRJFggA+4fA.mZAR4qKJLYxDKdIKEMpQMB4xhEhIlXnV29229PwEWDZPCZ.tvEuLeogul0rlgKekqRkd8jT1cCaXCQ6ZW63YcznQCyeAKDZos1nQMpQvO+9cTU83G+HDRHg..fCdnCyiXg.bJ73Nul0RUqmdp6ty299ie7CvHiMFO5wtiQNxQASM0LJG0+9OvwYEFXfgXriab74TvV0pVAqs1Z..DRHetBO9lybmGehEB.L24MepTk5UtxkoRujBCrYyFCcn1gY8Oylm59RiZTivjbXx.fSjiEw2+N05hLxHwye1y..fyNuFdDKD.nAMnA3jmrxizwG9vGf+nu8FyedyEqZkq.+0.sEibjCGO6YOkmH65Ce3CvN6FB14N1dE1Whc3ddnVtFFVVGd9rm+RbnC6JV6ZWG1691O7xKuQO6ImZZ2wOww3Y6JuCO87MuEW8ZWGadKaE251tgW7xWCyLqkUnCO8vSuvZVCmI8.WGd5gmdgic7SvW6qHNxQbkRrvku7Uf289OBWc8n3vtdD7Ie7ixAduyauwYNyo4a6YwJG3ryqB.zvbm27wMu0cP.AFrP6nQggSepSAKszB3gGuAm9zmEaYqaCO7gOB8su+A..N7gOD7zCOvt18dv8t2CvV211w912Avid7SnRGoO5gOPf8clYlId6a8Bidz1iO9IewwOwIwN24tvyd9KgqtdTvjISjThIBmW8JEaGOqastfd2m9fW7xWiSelygss8cf2586vxW9J..GGce+6waDhd8qeMJwBm1zlN75suCG10if8tu8yIBIWvBQ.AD.BO7vDa1oDEpaUT8bTnr5Xckk2+t2gkrzkAWc8nnqcsaTB8eoKcI78Ruu8111N3QnM.N2i+.G7PT0SnctisyWJ.TbBa1rgcCa3XFybV7LFXiZTivjljC.fivYQDQDTqKhHh.O+4bFqYMtrV9NF3NViZUhSzdvCtO5ae5EVv7mGV4JVN9qAZKF0nFAU+xk2+t2A6raHX26pxqMfhSnQiF0yITnPlVRO2obEm6TtVksKu7yG4IBeeVSEeWZS8gqkqKfqtdXjat4BFLXfKbwKwW58soMso3hW5JUXMSr5RpolJNxQNB..Fve9mXsqa87kVsGyXFKV7RVJ..dya7jmzrLWg9BLv.4Khi+v6eG..Uzx+Nu8lm0mXhIPkNmKeYA3hW7Bne+QegSNtPrrksDzu+nOvgIMQ95iG8nGhgLjAgyc1yHhG4DpoPhvPB0mgazYmXRIIksDBDHPn1EhfgDHPPrgRR4T3i3BFxKYhvPQIpo3JXl2d+Vb6aeK9VukV1V3m+AB+7OPpz5Ca1rwidzCA.vPsytJrNEnppphwLlwVcNBDB61F..jc1YistksvmyOUPAEvae66fe9GHF7fGB0xu0MuI..LwDSPO5QOEXeahIlfie7ShcricgNzwNJv13niNIvZU1.G3egqdsqiidziIfshSsDKlXhE..EWTwBrMJnfBvgREvSPLioOSvfACTXgEhGb+6UgsSPT95xHW5d26NUpwJwjRjZ4W+5WCkTRIPU0TCCa3iPfaKSlLg81OFAtt.BH.3jiKDYkUVfISlPas0A.bRedyZly.+8eMPr6csSr28tGLsoNY9RukRd3dsRs6dUV0gmolZpTNIapScZXly5e3Y8JpnhXtyadT0nPAI3drwFKRJojvUu50vhVzhgUVYkX2dUUM0vQN5w4ol7QmNCdDg29wLF9pmapol5XjiXj..3qeshERqW8t2XKacaTSr.t7m1ZKUZVze+8Gu3EOuFer..nkVZi8suCvy8ZoSmAl3jbfp9K80v9s8xlMabxSbb..z+AL.rpU6LOSR..N2C6u+6+mXw9pUfqn9USQNjUGqqrnqt5hYNyYx2xcys6..f12gNv2j5fKxImbXoKkSsOKt3hCe5SeTxYn.XJBXBu..zid1SJwARpLi0bsqcUvlManlZpigMrgKvsUIkTBi1d6E3572e+whbxQjc1YClLYZ5oNMF...B.IQTPTAszVa..3qO9fYNioyYrlcuKrm8raL8oOUovXMksNFJbokTkTRInjRJI9MDY6.Lrdw0x0Ef6jhwVaGH0ylUdTRIknlPYhKd1ScmJ0Zu7kWwSrlINwIAczgicw8db..+wezOpZ56ae6uixyBJn.3u+9CUUUULkoNM.vo1dWVdya3LYpZYKaEO0s4W9xWf05xZPd4kGZXCaH0yV8l23IF+3GKF9vFJN3A1O15V1LbbgKfin6xnBtKair8jcf.gJCsKMEImbxIKksDBDHPnlwZ2vVvZ2vVD51SDLj.ABhMTTJkNRE2T1TTkzhAO3g.lLYhhKtXrjEuHz6d0Crt05Bdv8uORJwDE31jTRIRIPWW6Z2pz9uacq6hcaF.nm8rWTNR3Tm5jnacsyvIGWHtxUtL0rGVPDczQIT1Uu6SevvGwHD3wWiZTiv.G3eIvsy.CL.VasMvDSME.bhXuHiLR7rm9TbvCre7WC7OQTQEYktuaUqLWfhQxEszVaXjQFC.PkVVEV3tckG5zoSI9QYqwRQDAmnVw7VYNTrRpanVYU6E3xu1UuBJpnhvfG7Pva75svq25MdxSdJrytgA5zoivB6q3PG5f3.6eefEKVnG8nmvQmVjHcLUSfazuvtVNBCkUc34idzCQt4lKjSN4pPmHRmNCbvC4J1wN1EF23Gu.ayvG9H3q1CINYnC0NznF0H9VN2TSL.Pu5YuE3117l2b.fJMBrl4LmUEttAMnAS8c1ct8sEJ6spXLiYLBrVWojRJgt1MN2ipr2u9ie7iTQu0zl1Lpv90gIOYwh8UqPMLMJJqNVWYY3CeDfNc9ytBbGGv5NZckt8cz5eudQcrCQECMRvYhA5zoSkgHJH+eOVSjk960V25VyWzFUVrpcVIvke0qbYTTQEggNT6va75s3su8c3wOwcLzgZGnSmN95WCEG5fG.G7.6GrXwB8pW8BKnboyPIMxW5wUgEHdmjXLXvPjx5FrKozw6jS170yqObsrzFVrXQ4T5Z6yGbu2iZpoN0jKRPHu7xi1111wy1.v4Yv6V24XSdVZZMEfyjFH+7yG1zoNAczQGXngFhjRJIdhjYO730..v1Axa5H8hW3BfMa1XRNLY30aeG9vG8A2ws6h9OfA.Zzng.BH.rm8rab7ieLp6yLwINoZ3YBYKNtq6CG208ITsMf.CFADXvhcaPFOaJSfPkhlZxYBjlZpoJUlTSDHPff3hP9xWQHe4qBc6I0vPBDHH1fYkHbgjl4L+k..fCefZdprhpFFJjomJgFQnrr05V2Zb268.r7ksD3me9gXiMVb9yeNb9yeN..XholhQOZ6w3F23olo6QG8On1dcpfYkLW357cwMJnfB3AO7wXcq0Eb+6eOjQFYf6dW2vcuqa..PKszB+u+2fvzmwLgVkNi83DcebhVKtQeP0gl0rlUo0eHVrXgqc0qB2c+wHf.B.4kWdTqiISlnIMoIHszRqR6+pBc0UWDVXeEQUp.nBCLXvfJZjDVhKVNQCo15T4eOqoVBtF347ZbALXv.KeEqDJqrx.fyuo10t2CbzQmvEu3Efe94GJtjhQ+5W+wLlwLqcS2vRoZX3fG7Pv4N6YPd4kGVxhWD16d1M5ae+CXiMcBVas0B72mhpCOOQoQXl3DtBtqqt5QIJlfnUspUnUspUU35G8nEbTBItP+RSqnkmxJDg15H36AvP.0bwxBc5LPm5Tmqj0SGcpycFwDSLHxHinBamnfQFKXg9A.kP9BRne.vWJatrz111NPiFMdRMv0UolZixpi0UVZQK3+ZtLxHCjQ5oC..CpDmuCvIsdpgFZfTRIEIpfgJnfBT2uWXI1X4L1bEccIWzrzwyKOtr10A4kWdrhUtJp8solZF18d1KbzImvkt3Egu95KXC1ne8q+X5SeF05o19eGggB2y7w8Z5JS.U.fKedgOkRCfxLdmroa2qObsrzlXh42mOppq4D2mO3duGCMpxueE.nDTr7ikZqsCDd75WCO872BFxMcj10tzU..zkt1UDYjQh24s2vHiLBkTRIvKu7hZ6KK6bW6F6Y26BN6ryTSJCKsrs3nG83Hrv9Jt7kuLBL.+ghJpH9q+9+gwO9IHVqCoxBnppBdRpIH1zV37NxW+xmQLaEjHLjP8WXpHSnZiaLx3W+BolVZPKQn9xSf.ABxxPDLj.ABhMTPgJ2gtRRRI0TEa8k7TojToWDFB.XrwFiabyaiX9wOvKe4Kf2uya3ym9DRKszv2BObr4+cS3l23F3JW8ZnQMpQPIk9cjtvtJxkiEIAmgbMtwMF6Yu6CqcsqCu50uBd40afOexGDczQgjRJIbpScRb8qeMb4qbMXt4lC1rKAEWLmYVO8ZvLquxDaLt3hCiZTi.IkXhfFMZvBKrDsuCc.Fnu9vXSLAssssCqYMqF2+dUbpDUXDPlqvQxQSxFg.xIGmnNjUN4TosKiL9k.WtRJoDV+F1n.Wmt5oGVwJWUMy.qoHkDLTV0gm+nTaPasErS6EVZdYhzOoEUWm8os1ZwWpHs7naoB6DUTQWs1GkGUUUUQp8bE5WM0TuRiLXETPAnpppgzS+m0H6q1kp+87jUGqiKZIfq6juLBbKLYq.tOug7Ro5.cEgbz4NVCqJsc+JiLD3xURIkvF13lD35zSO8k9i0fxDggBYJIc7NvI8yJ4b5tXtaqEQV+ZYIAhxjpnro51pZ6JtXw66nvUndgo9sy8dZLXv668MfA7mXMNuZDe7wiu+8uCiM1X792yoFh2ktxQvvt10tgKeoKg28Nuw3F+3wm+bvHizSG5om97MglTUUUqvmU0LyZIV6ZWmHcLRPx.22IgD8U0eg607kOM5+eEzRSsPF+5WH4TRlHXHABD9OC+27N9DHPPrihJpP8lGhj6K.WjXOBC45EHQSDDc0SOLIGlLb00ihO7Qevkux0Pu6Se..vW+ZnXe6au..7T2OhN5J2g3wEWrhjMTcPU0TC1Y2vvN1wtvKd4qvyd9KwDlvDAMZzPVYkEVwxWF.3DYPbiJp3hKtJsOSLwDvW9xWPTQEEeqqxls+N43BQRIlHzQGcfatcObG2tKV6ZWGbXxSA8nG8TfoIwxSrwV0myRHg3A.f9FXPU11ZBFXHm9O93iuRaWzhPjNVWBZkduDoQDVw0gmu5Udf0t10g+zVaoREsbc34HF9vPlYlI.PcBGdxsdqx0oMUGnSmAZZSaZMxNjlQDmnHnOc5Rmwp3J9Rt4V4huTRIkfrxJyZCSpFCUZTTLHxgr5XcBZrmFzfF.MK0oRkM06IHxH8zohFwJJkgJsvPC3DIQwGekO1rr5XM.kIBCKP3DLTRA65QQoir50xRBRMkTD5117l2bJg69QYlLRBhp54kEULpz68HLQfO26oYT4teUSZRSf0klhk8zCOPQEUD7yOegZpoNLyrVB.ftTZjF9t24MXylM7zSOA.fs1Zq34.gPsNMREUfbxIGxHiLvuxTvSTQBx1DSouCbEU1EpuC2zRJoNFRf.AYY181+Wr6s+uBc6qe3ceBDHH0QZlNRE2HohvveqWXk6TcVrXgibDWwQNhqHgDRfu02oN0IbzidbpZE3G+3G..mGhmqC+ep6tWo6im7jGKhVuvwkuzkvQNhqvOe8ku0YngFh0ugMRkxg9xWBArXwIB4LnTA1dya7rBEcn3hKFicLiAC5+8W3fG7.BsMkWd4A+82e..LwINIzFKrPfsKoDSpR6mvCOLAJTIWhHhHv2+NmTNXkU+WDGXhwl..ffCNnJUHS2ti3oVsU6izIBCKKxRN7zfRcpeU4.wryNa7ku7E7ku7E9hNAFLnWimzGhhiQE2jRJoTo02P.Pc+T8zW+ZCShO3det7xKO7yeVwQOXbwEmTsF5JRPowgnKxgr7XcBCbSYsd40apzHuvixj99LtRRysRCL1DNi0DXfAVoSPk6HyNVyuiFzBEhHqRTH0zRCoVIo4b9fR7cYuWOu990xUDbiHvLqDQRBMzPE59iNcFTiS39SeRk11m7Xw64Ct26IqrxB94meUX6xN6rgu94KOaSYwVa4TKw8vyWi.CL.jat4hN24NSMFQSZRSfolZFRKszP3gGFdSo2+q7oiTBBGiZrSFiZrSVnZa26VmQ26VEm51qtHu7xC80SOvlMa3wadCRHwDQIkT6VCxIHYnnhJBQFUTvW+4bOASpiMolpsPilxQvvz94OIQRKABDjYQWcaNzUWgOiWU2Ju2Pf.AYVTjozUvvyc5iH15KEjma5oRLGggBIJqrx3zm5jH0TSEzkSNLiYNK9Zi7xKOZSar.IjPBPMUUiZ4SZRNfcu6cA2c+I3yAGr.EGKpnhB26t2sJsiJ5k8XylMxM2bA.GmDW1Tnjmd5AdxSdL5e+G.N5wDbsZyJqrBO9wOBLYxjJs7MnAOX7pW8RDYjQhG8nGh+9u+e7scO9QOB+3GbDjou8suUo8ykjRJQJwQzoBpCgAETfvuRc.REIXYIkTB1+91K18d1q.W+wNJmeCxjISLzgZmPaeUGF8nsGt55gQ94mON3A1O1511Nesw8m7jJ0oO0kgaDFVaJXHKVrv4N2YA.vPGpcTN1jKcpScBsu8sG8sO8BIjPB74vyTSMU7T2cGCaXCuB2GRJGdZXoNXLlX9AhJpnnb3X4Yqacy3xW5RPCMz.d+tOHz8eYihRtQVY4gEqbvO9QkGQDRRXylMd1SeJ9eCZPBb8ETPA30u90.PxKneEgIkJ9B.m6mMtwOdA1NYIg9oteY0PvPY4w5DFlzjb.uyauw2BObb0qbEA98cd4kG14N3b+6V2l1fNzgNJR6CIM1au83HtdXTPAEfCdf8iMuksxWad7ieDBHf.jBVm3ApTwnPJRu5pqVU2H.L64sX.HBotzZv0RRapuesbEg1klJ7c+IOAqe8afpN6wkuEd3vc2qbg+JOSbRNf05xZv6e26vaeqWnacq670ljRLQbsqc0pugK.rcfCDae6aCImbxXyadS3pW85BbRDcnCcPjQ5oCZzngILgIJv9Yiab83Cu+8vy1YE.9c5HkKcsacCgGdX3YO6YvGe7AZpolvp12dw5wCA9ww4OaIVe2AqZOxHiLP5YjAdcYlDLDp+fd5pGLxv+aJXHmREfpHiLx.o8yzflZPRKoDHPn9OxdSgQBDHTmDEUP5JXnRLYBkXxrpanPf7RpzSkHTW15ZW6F..1291KdzidHeNA4ot6N7rzWHqycoKTKexSYpPM0TGrYyFie7iEu3EOmZlvURIkf2+92iQOpQToGabqKWEVXgvKudC90u9EXw52oPuDSLQXoEsFVZQqQ26VW3Ya6V243Xim8rmhCdf8yy1AvYlVewKdA..XsM1P4bE6raXn0soM..XwKxIbu6cWdh.pfCNHrqcsS.vYFM+G+Q+p3SdkCc0UOnrxJC.fydlSiLJSsVhMa13d26tXFSeZTNKLiLRuB6K2b6NXQN4HO0VrrxJKrwMtAb8qeM.vIJF0PCMDZ6q5fVZqMl3DmD..t90uFb14UguEd3.fSZa8bm8LX9yetPKspY0zNoEzjB0vPtN7bGaea392SvNljqCOA.eN7D.TN7TPHNb3IKVr.KVrnb7IWFveZKTTQEAa1rwQb8vBb6SM0Twst4MA.Pu6ceDoHBSCMzjp9.9nG9.A1licriI0ljEb4HG4vHu7xSfq65W+ZTW2Zu8io1zrnvRKaKrxJNNP8Lm4TBT703hKNbgKb9ZaSq5SMTjCY0w5DFr01ABaroS..Xcqas3HGwUdDkJ7vCCiZjCmJxfW8pbtNWpcWas0gRTfqd0q.WViyTi0jPBIfydlSiEtf4KyNVCvuELjapctp3nGZO3nGZOheCgsrcMLr970xUDcnCc...okVZX+6e+77rge3Ce.SYJNTo0qVAg81OFp5c7Lmwzw8u28nddX1rYi.BH.LxQNbjUVYIlNJ3fxJ2.3zh3Hxsu93CbXRSDIl3uiVzbyMWrgMrdpIGmcCa3BTbWczQGz111Njat4hydlSC.ft1kxIXXoe9jm33nnhJBCX.+Y0t9ESntAxKu7ne+we.KaiEnQpnB46y5IHmbxA0TSMXSGsFcsLQJ7+EQSM3lVRkdYSEBDHPn1DRDFRf.gZLLnSmJMdVe.ZznAETPATPAEfhJtHvfds+w1ZbYsHf.B.+3GQi4M24.0UWcnuAF.5xQGQGcTHkRS8eVYkUTBGAvotIcjidTL24LajZpohYL8oAkUtAvTSMAQDQDHqrxBxKu7X1ydNv0JPXASM0LPmNCTbwEgIMwI..NN59NtU0hcL1wNN75W8J7hW7brm8rabzidDXjQFiFz.kQhIlDUcNpoMsoXkqbUTaGMZzv129Nwrm8rPL+3GvwEt.rpUtBzxV1RjZpohXiMVvlManjRJg8efCIRyNb4jSNLlwLVbpScR3u+9it2stfV0pVgBJrPDYDQfbyMWXlYsDCcn1gSbhii2+92iAOn+FG+DmDZq8uixrNzwNhbxNG3la2At41cf95a.XxjIBO7vnbLV+5W+w7WvBEZaqlvhV7RP5YjNt4MtAt7ktDt7ktDTVYkobRlVZqMN5QOFranCoVwdDqPEgg0toznt10tg6cu6h8su8hVnqtvVaGHONvuxb34oO8oQ5o+SL9wOVr68rWz6d2GPmNcTRIkfO9wOh4Ou4HRN7zBKrDxKu7ThcmXhIhdzcNNYqwMtwvW+9cD8niN5fIOkohidDWw0u90PCZXCwhW7hgxJ2..vwYlqd0qD4me9Pd4kGN3vjEoyKzoSGssssE94me3t20Mzqd2azqd0Kp6SbzidTb3CcHd98mzfPBIDL9wMFr68rWpTEa94mOt0MuIV+5VK.378lfhXiZKVxRWFlv3GG992+NlrCSDqbUqFVYU6Q94mO93G+.bYMNiLxHCnpZpQUW6pSCkn9UOmHIqNVmvxN14tvBl+7PfAF.1w12F1+91KZYKaERIkjoRcixKu7X4Kek7EEN0UXwKYoH8Lx.29V2DW7hW.W7hWfmq00VacfqG4HXX1MTorkV8Pdt0sZobZ.920.WYSGxVe+ZYAwnseLvUWOLRN4jwAOv9wQb8vn0stMHlXhAom9+m8tOiuMKuZCfeosjkr7du2yr2aFAH.IzxdVJk8FJPKkMT1TnukUYUFEZKkcKzvpLaH6Dxxi338dOjjkrksFuePVJMMI1R1R9Qiq+eo8W7steNwDsdN2myoOjYlYgG5geDbK+xa1s2SYxjgW7EeYb0W8UhVasUbS2zMfa+1UhBJn.zXiMhAFX.HVrXb82vMhm6YeFu5eeNqy5rQc0UG9SuxKiMsoMhkszkfLxHSnVcXnppNfqDWtxUsJb220ceT2mSZMqA6cu6A5zoCwDSLH27x6P94KbQKx0Luy45oIGMpUKzgfKRkHEkTbwnjhKVnCkIk9GX.Tac0h46mUo+j+g3iKNbfpqFc0cW.nDgNbHhHO1kck2...d0W18FuS9WGiUhn.RBc6HE.v7Hi.ydwJBTtOoJCclDjIdkwDSL3u81+c7y9YWLBKL0nu95C65G+Qricrczc2ci3iOdbEW4Ug27s9qH7vC+Pdrye9K.e7G+uvpOgS.Z0pElLYD6YO6AFLX.okd53kekW8H1xOcJkTRAO5i9XHmbxwiaaSRjHAOyy9b3Vt0aCIjXhvjISnrx1G15V2JZrwFPXgEFNiy7Lw67tuOxKu7OjGaQEUDV+5+Lbtm64gHiJJXxjIrqcsKzbyMCQhDgS8TWK9hu7qPgEVnGES..+l63NwUdUWMTqVsqYZXEkWNjKWNtvK7hvG8O9m3JupqFZ0pE.NR7fUqGZxpzFtV7W9q+Mbtm64AEJTfFarATUU6G1rYCokd53W8quc7Ru7q.0SSe4cEJTfm3IdR73OwuCKe4q.QDQDvjISHwDSBqccqCu0a8WOjS1ty4DT.AWEX3z6LL7dt26ComdFXngFBW+0csXQKb93rNqy.m64b1XwKZA3pu5qDlMa9ndCOiM1XgACFvUb4WFl8rlINiS+mf4NmYgK37OWnWudbMWy0dTu1Nugm..W7O6hF6w49UB20dsWGV4pVE..diW+0vrm0Lw5V6ofSdMmDV9xVB9p+8+F..24cc2tplWOw0eC2H..FXfAvkeYWJV7hVHV25NUTZIEim5I+c3rOmyAqcsqyi2WuknhJZrl0bxX26d233N1iAKdQK.+zexogYMyRwce22IrZ0JJrvBwi+XGd66c5zRVxRwC+HOJjKWN1yd1CNuy8bvrlYoXtyYV3xurKEc1Ym3oelmEomV5BZb59lZUEUf5604tRKszv689e.t1q85PJojBLa1L16d2CZu81gJUpvBVvBwG7AeD9EW5k5St9dCJUpDO4S9T3QerGGKaYKereW638ZV25NM7V+k+JjOVWlPjHQHlXhQfiXOim1RRcWYlY5HyLc+mGa2limKIxOqJScWA6OW9HQoRk3C9v+gqpqzhEKXu6cOX3gGBKcoKC+0+1eCIDumW8sEWRI3e9weBN00tVDUTQigGdXrm8rGLv.CfjSNY7zOyyhy4bNWu8ecfXwhwu42bG3M9yuoqCsTiM1.pnhJfMaVQlYlEtq69dvq8ZuAhLpidq48+ddDt3Ee3GDhHiLRTXQEA.GG.pEuXuWUeFp40+SOOd8+zy6Vqc8e1Wh0+Yi+rBMTUu80G9lu6aG24KMEZy4bLru95CVsw4XHQTfG8FL.8dPGpPj8w4twUW8M5UBJhnfawDcTHhHzJnwfyA9taOqXl.e4W8uQe82OVyIdhHxHhzqrm+mSekX31ZDo8T+EnHE2+lHY1rYzZqshN6rCHUpTDWbwizRKMWsHvwic61QCMz.5omtQgEVzgcSZ7krZ0JZu81QGczNFYjQP7wEORMszfR2r0w1YGcf5puNDWrwgzyHCHWt7obLMzPCgFarQzWe8hrxJ6CaN0MxHif8su8hryNaDUTQC.fe8u91vG79uONli4Xwq9ZNZuRCO7vnxJqDiX1LJrnhPDQDwTN1lpra2NFXf9cE2..e629M3xurKEwEWbXKac6SKwQMm2JA.vIt0I+mgX2240it95OAwdM2EhbUmj2JzbKs2d63kdwW.evG7AvjIiGxOK93iG+je5oia3FtwiXhg6riNv8de2C11V25gztISK8zwu829PH1XhAqacNtome6288H8zy3Pd7ev6+93kdoW.s0VaXngF5PpPh1au8iZEF5jc61wa9meC7Zu1qhVZokC4mUbIkf69ttmCoxHA.9nO5Cwscq2BTnPApnxpF2e270e8Wg69ttSzUWccH+N4zNseB9M2wch65NuC7NuyeGW3EdQ329fOjq0rjEuPzUWcg68duO7yujewgsus1ZqXkqvQU+8O9meLlwLl4gslO4S9Xby2zMBIRjhCTcMt9yeq25Mw8ee2KhIlXvOrwMiW5EeA75u9qAc5z4ZMwEWbX0mvIf65ttmC6lI2YGcfkNVKp68e+ODyYrVLmUqVQ94kC..dgW3kvIdRN92g50qGyY1Nhu27s9KXYKa4GweWci230i0+u9WXMq4jwy+GegC6mum8rG7Ju7Kg8t28fVasUnVsZLu4MObdm+EfS5jVCV9xVBZu81wy+GeArl0bxGwqgufm972N232h8bKWBTTx7PZ2yTqMMFn9dcdBc5zgpppJDSLwfrxJK+tVPp63H8dMe8W+U3JuhKGIjPBXSadqBVrMYd+mVZsE7CaZSHkjSFq3n774+a0UeC..H6rxbRDgGcs+MeN12cbUP0bVJR41O7YEYfjPgmK++xnQin1ZqAhDIBEWbwG17Lbpn4lZBs2QGH+7y2U2HX5fEKVP0UWMFZHSnvBKzUWKf797Fe14Ih296JGrn6d5Ae+F9OvhEKPgBE3zOs.ypkm789ru7KfNc5vwerGqqDHRDQAJ7zOGPvSODjHRvnzOnBC81blbpQFwWLSt7rplRgBEH6ryFYmsmOnwEIRDxJqrPVYkkG+XmpjHQBRM0TQpol5j5wmPhIhDRLQuZLoRkpwsBEkKWNl27l+DtOJUpDyYNywaFZdjN5nc74e1mC.fy67OenToRHRjnC4F3B.7Qe3GB.bXIlxum.LCCcJojRB2+C7awcbm2kGeCOczFXekw8FdVacMbTe7m4YcV3LOqy5nFWi2iEvwy2+4Wxu.+7K4WfAGbPTUU6GxjICYkU1G0a55oe5mAN8S+LF280oi+3WMN9ie0nyN5.MzPCHk+mme+HO5igG4QO7az8l2x1F28MkTRYB+615V2og0stwu85JWtbbC23Mgq85tdTUUUg96uOjaN4NtuNRBIl3Q7ZKQhji3etVsZmvXE.3YdlmCOyy7bG0e9rl0rvy87NZudCLv.H7vC20+1ZzQG00LRwuuRCmhyvv+aApuWmmHhHh.KbgKTnCC2V6s2N9hOOH98Z.fTOrkjd6248C.u+Mce5th58kBEdt7+K0pUiYNyY4S16zROcjV5S+uWfToRQQiUIfDELpyt5Ba3G1.rL1bS0rYyvhEKtp7bh9uEWrwBc5zgt6oGlvPhnfd7cBIhlx7FU9k+lClvPuXKIU.SBBEbQilvwi8XOBFczQgTYRwEcQ+rCaMaXCa.e9m+Y..37ufKX5NDmZ7CdtRf9M7TiFMtUxumL7EIy2aRhDInX+zYnya8VuIrZwJV9xWtq45z+aEi7Ie7GCqVs.QhDIH2jXOhMmst4.y4tFM9znQCdzG8ggEKVfb4xwEbgW3gsl+y+4+fu7K+B.D.9dM3fsjzQE3YX3TcdfRDE5o0VaC..ojRxBbjD3o8N5.abSazUxBcxnIiHBsBemig7+DarwhZpsVzSO8HzgBQD4wd2+1q6QqmILjHZJQoBEPjWnxBlphI5nm3E4ANXBCM6U2Wh7FznQCV65NM7Qe3Gf6+9tWTdYkgS9jOEjbxIilZtIr0srE75u9qAqVshhKoD7S+omtPGxdDQhbNuOYx0ofKe9m+YXKady33OvU8TeB..f.PRDEDU9UiW7kd4CqkT1QGsim64bLHxO00tV++1wmymiJV3+b.j2W3gGNV6ZWG9G+iOB268d2nrx1GVyIeJH4jRBM1TiXqaYK3MdiWGVsZEkV5LvoE.1J2j4ilgg6dO6C..ydVyv8d.1GK46hB7ZSsDQBia91tS.3dU774d1tW2jHTPqs0J13l2LrYy1g8yLZzDSXHcDEWLwB.fd5sWX2tc+h6AFQD4t7zWyhILjHZJQgeR6H8Ee9euWc+blvPydwJLz4KPGL01oHgyi+3ONjJQBd+2+8v69tuCd228cNr0bpm5Zw8bu2W.3WnQ3qvPh7EN+y6BvV2xVvW+0eEtfy+7vEbgWHxO+BfAC5wd26dwq7xuD5t6tgLYxvsca+ZgNbmP1AqJpfcOwu62AIRkfO7C9.7NuyeGuy672Or0bpqcs3du26O.78Z.jJyyRX3LmQIt05d3G6o.fGz5R8hs2WhH5+0YcFieacOTQSM2L17V2xQ86iaznwi3eNQpUqFpToBCMzPPuA8LwxDQA0XBCIhlRTpv+Hggdaxk4Hggi5SlggTfjy7LNKLmYOWjRJoHzgxgPhDo3wd7m.W+Mbi3e8u9DTec0g95qOjXRIhLyLKLqYMKL+4u.gNLmbFqpqra+vO4uDEHasqacXXyCiG39uOr8suMr8se3y2w7yu.7HO5igzRKMAHB8PtxwASxQvJIRjhm3IdRbi23MiO4S9XzP80658ZxJqrwrl0r7Ys+3oCR8vJL7dtyekOINbcyq4SkHhHehFZrAr0su8w8v6xDFRim3hMVzTyMid5oGlvPhn.J50a...Z05dcvHlvPhnoDEJB9leg.9lJL7fmZbV0TARVzhWLVzhWrPGFGUolZp3pu5qQnCCuJQ9AyvPJvvhW7hwC8POBTpRoPGJtsy5rNabxm7ofO8SWO12d2K5ryNQ3gGNxJqrP14jCNgS3DckDC+c1YUQExH0TSEWy0bsBcX304oILzmgOWhHxCUXA4IzgP.iZquNr8criIbcCZhILjN5hMFGILr6d5E4jcNBc3PDQtsK6ptA.39c+j.i6FAQjeIoRk52bSMqstF..PNYmoWY+N3LLzKlvPmXNPHZ7M17PytM9jEZ7kWd4i7xKegNL7XpUqFm8YeN3rO6yQnCkolwRxAqvPJPkDwRfHQhfMa1fM61fXuzLDb4KaId1CvlymKwYXHQj64Au+6xsW6K9JuA..t5q3R7MAietjRHQLqYNSzXSMgAFXfi55XEFRim3hcr4XXOcKvQBQD4a4ebm9IhBH4O0NR+M208C.OXVwLANXBCM6U1O..oZzB..qCZvqsmD4OwpoAA.fDUgM01HVMtDEPPlFGszDqCNn.GITnNK50AfC9Ys7DRjHAVrXAVsZEhkN9Ir662vl..vpVwRG20cSW+U4QwfXUp..fsQF1idbDQA1rNjI..HVgusSI70ey2AfP2DFFVXgghJnPTTAEB850iFapITdkUbXqiILjFOQDYDPpToXPiFwvlGFJ8wOukHhDJ7HLRDMooTo+SBC81jKWF..FYTu2LLLrzcz1JFpp8401Sh7mLbcG...JRZpM60jpVC..rYhIgfnoKttokJc+a9glrb79ZVZtZXeTePE4Sjax3dbLOPCKSOuE8IQhD..X0p0IbsO2e7kwy8GeYO9ZLQBKEGuu4HMViWeuIh7eMzAJG..JSNcANRBcnUqVjd5NdMWYxjg7xMOnXrCB8HiLhv2hpI+VhEIFQGUT..n2d6SfiFhHx8kbxIgjSNI2d8LggDQSZJ7ipvPuMeQKIMgieM..P+W9gvlYdBxofO59x+I..hcIG6TZeTmd1..vb0UNkiIhH2yv0VE..Tlj6eSKUFWhPS9y.1FdHz2m+Q9pPinwksQLi99fWG..ItlS2ie7dRBC8UzlWQPdrI.a82MzusMHXwAQzzG61si9+v2D..wsp03wO9srscfsrsIdt7QGtVZoU..jVpoh4Mm4fex5VGNlUtRjUlYhgGleOc5nKlXhA..81WuBbjPDQtum9odT7zO0i51qmILjHZRQjnCVEd9Cl4LKEyblk501OExO3oLzaIgUdBHrrKD15uGz9S+fvNO8hTPDca3eCSa6agHYxPFm6OeJsWwuhiCPrHL7d1LL2QKdoHjHZ7LvW7g..HFOLg+4bE2riG+69JvXY6xqGWDMdrM7vn0m7tg0NZAJSISj9O87738vWjvvO4S+B7Ie5W31qWjHQHye10..fddkm.laoAuVrPD4+wtManqW6og4p1CjpMRj0EbYd7d7T+eOGdp+umysV6s9Kudbq+xq2iuFAqZtUGe+hTSIE.3nxwRLgDwhVvBgFMZDxPi7yESzikvvdYBCIhBdwDFRDMonPgRHx0bFS3cO2wsg64NtMu19IQhDHUpTL5niBq17N2.IQhDgY8HOGjDlZLzOtAzzcdkP+11.rZjscQJvjcqVg4VaDc9ZOM54EdX..j60cGPUBIOk1WUIjLR7jNKX2pEz9Sd2tlMUDQ9F8+UeBFZ6eODKSNx5BtTO5wlvJWMR5zt.XezQPGO5shNeymGlaoAX2JOTLjugc61wn80KF3qWOZ7194v7d2JjpQKlyS8mfXYd9gYySRX3obxmHNkS9Dmv08lu0ai27sdaOJNx3b94HpErBXyfNzxceUnm2+OCyczJrKfU9HQj2kUC5f9s78n465pgg+8GBQRjfR+sOGjGQj9zq6hW37whW378oWi.ECZzHFXfAfToRQBwmfPGNT.lXhNZ..zae8A61sKvQCQD4aHUnC.hn.SJUHWnCAeNkJTfAsXAlG1LBKrv7J6Y3YkGl+K7tXW21kiQZpFz0u+t7J6KQSmrIVDDYyNNjiLfXQHqq3VQVmumeBoORJ5VuWLvd1FFtk5PS+5KAQcl+BnYdKCRiJZ+pCq.QAprO5nX3lqGC74eHLtgOE..4cy2OTFWhd7dU5c7vPhRknk280fgO8cfgO8c71gKQGUgkQtX1OwKCMYlyj5w6IIL7WbwWvj5Z3NDIVLlyS9JXeOvsht+l0iAd+WEC79upO65QDIrjEULXFO3ygXWvRE5PIjRKiUcgImTRtd8ehbWpToBgEVXvjISPuA8HBsQHzgDQDMgpnRGiejhKp.2Z8LggDQSJJUF7N+BcRgBEXPiFwvl8dILD.HhBKEK+8+Vz369lnyu5eggZtVX0jQu19SjulgUeNvVl4.ws2LhYaeChYVKDYdgWNhnPuWaAVV3ZwBe42G65Wc4vPk6A89pOI58UeRu19SDcPhjHA4dC2Mx3rtvI2iWrXT7sdeH407SPi+82.8+iaFizWW.1r4kiThbPp1Hgl7JFIdRmNRasmIDMEtou9CyvPmjpTElyi9GQ2a8GPKe3eE5161wHCzCfMVECiG6hDASyckHrc+CPjev+cjniFIpCGpyHWD2wdxHiy5hfzvTOo2qi+3NFuVbEJokVb1NRSUfiDJPULQGMLYxD5s29XBCIhBHbe+VGyuv26seC2Z8LggDQSJxU3ekvvueCaD..qZEKyqsmJTpD..lM68G74RUpB4bwWEx4huJu9dSGzWtnL..vIt0FE3HI3wniNJ9m+qOA1sXAV0FE5q3Yizm8bQDYmsW+ZoLt3whes+AZ8y9Gns0+dXvCTArXX.u90gnPQhjJExiIAD8hVEx5htBnIio9ygirjYiHev+fWH5Bsv2qRX4KRX34ctm4T5wG2hVNhaQK2KEMA+19N2A5ut5PrW3UhUrr.ueuwWCflLt5q3Rb60dO2uiQGvCd+g1c2lgFdHzSu8BwhEijRxy6nBDA.DSLwflaoEzae8hryJKgNbHhHuNlvPhHOlLYRgT+r12wy8GeE.3cSXnxwRJ5vCa1qsmDEnSlLY3zN00hcuu8f5pqdXwpMrictCr+p1OVz7W.hKt37pWOQhEiTO0y.odpmgWceIeGdiOIhBjH0CRX3e8u+d..3BOuydbW2Y9SW2TOvH2RE6uRTac0AoRjfhKrHgNbHxuz9qpZgND7KzZqsA.fDSLQHSpmOyaIB.H5nbLGC6q+9E3HgHh7MXBCIh7XJ7yptPeEkJbTggC6CpvPhBjIWtbrv4s.LiRJE+vl1H5s29vfCNH95u6aQbwFKl8rlsqABOQDQj+LmUXnEKSbBC+G+y0CfINggzziFatIr28sO..r3EsHDSLwHvQDQj+LmyuvzRIEANRn.YQEUj..PmNcvpMqPhX+qCSOQD8+ZgKXddz5YBCIh7XJCQRXnhwlSilMyJLjniDUJUgS33VMZssVwV111vniNJ5tmdv+9q+JjTRIgYTbIHZl3PhHh7iIVrX..XyFm8cAR5o2dvV211..vbl0r37HiB479e3GC.fy5LNMANRBLLxHifN6pKHRjHjbxIKzgCE.SlTYPa3gC8FL.cCnieeWhH+d+pa4F7n0yDFRD4wTpz+Kggm5obhd88jsjThbOojbJ3zN00hst8sgVZsU..zd6si1aucjbRIgRKoTDcTQIvQIQDQzg6fILztWaOegW90..v0bkWpWaOoCxjIS3G1zlfMa1Pt4jKJH+BD5Phnocuy68g.v8RX3e3IeDec332qs1aC1saGIDe7Pgb+u6mAEXI5niF5MX.80e+LggDQAcXBCIh7HhDIBxj4+0u+uje1E302SEi0RRMyVRJQSHYxjgkuzkg5Zndryc9iNlETh.Zq81Qas2NRN4jwLJtDDESbHQDQ9QNXBCsMgq8Ju7Kws1yu4a+O.fILzWvhUKXCa7GvvCOLRH93wbm8rE5PhH+dojBqnt1Zuc.33fNRzTUTQEEZnwFQe82G.xQnCGhHxqhILjHxinToBHRjHgNLlV3pBCYKIkH2V1YlEhM5XvF2xlgNcC.QhDAQhDi1ZqMzVasgTRNYTZIkhnhLRgNTIhHhNXBCsOwIL7DN9iwGGMzDYaae6n+AF.ZznAKaIK00+8iHhNZrY2F5nyNA.PRIkj.GMTvfnixQUE1W+8KvQBQDMw9h+82..fS5DNN2Z8LggDQdDEgHyuPf+qYX3vrBCIxSnUqVbhG+pwt1ytQM0VKrayJzFQDvjQin01ZCs1VaH0TRAkVRIHxHXhCIhHR3HVj6WggjvphJqDM0byPpToXEKa4Ptb4BcHQjf4RtXueG1IXUu81GFYjQP3Zzfv0nQnCGJHPTQFIDIRDzoSGrZ0JjHQhPGRDQzQ0e50dS.vDFRD4inzOMgg+k298..vEc9msWaOcNaCXEFRjmShDIX9ycdH1XiE6XG6.50qGZ0pEwFcLnolaBszZqnkVaEokZpnzhKAQDQDBcHSDQTHHOokj5t9U2xM301KxgN5rSruxKC..KcwKFQnUq.GQDIrN0S9Dc609Kt7qC..u9e548Ugies1GqcjxpKj7VjJUJBO7vgd85gNc53bLjHJnBSXHQjGQgB+ySx6+7iWO.7tILTrXwPtb4XjQFAiN5n9kytQh72kY5YfHiHB7CaZSPud8X3gGFye9yC80W+nlZqEM2RKn4VZAomVZnjhKg2.PhHhlVIRriVsuca1mv093O4SC.fa+1towccKbAyapGXjKlLYBadqaA1saGkTbwH4j37XiHOwfFMJzgffpsNbjvvjYBCIunnhLRnWudz+.CvDFRDETgM7ehH2lLYxB4Z0BJbMGCYaIknIqHiHRbhqd0H4jSFiLxHXKacaHrvBCq6TNUjWt4BwhEilZtY7YewmiMu0s.8FzKzgLQDQgH7jJLbG6bWXG6bW95Ph9uX0lUrwMuIX1rYjXBIfRKtDgNjHhBfLzPCgAFX.HUhDDWrwIzgCEDIxHcLZM5efAD3HgHhFemwouNbFm95b60yJLjHxsoTo+Y6H0WRoBEvfACX3gMiv0DtPGNDEvRtL4XEKcYn7Jq.kUd4X26YOPud8X9ycdnnBKDUTYknt5qGM1TSnolaFYjd5njhJFgGNedGQDQ9NtRXncNCC8Gsm8tWzae8gvBKLrjEuXHRjHgNjHxuve3YeA..by2v0HvQh+MmUWX7IjPH2gel7shZrDFNfNlvPhH+am+4bldz5YBCIhba9qyuP.fq5J9E9j8UoRU..vLmigDMkIRjHGyqPsZwV211Pc0WOLL3fX4KYoik3vhPEUVApq95QCM1HZrolPlYjAJonhgFMZD5vmHhnfP9hYX3ccuOD..d3e6c601yPQs1Va3.UWMDIRDV1RVpq4KNQDvF2zVAf6kvv26seCebz3+x47KL4DY6Hk7tbVggCLv.vtc67.sPDEzfILjHxsovONggq93VkOYeUoRI.bzJSHh7NRK0zfZ0ZvF13Oft6ta7ke8WgUshU.sgqEKXdyGEWXQn7Jq.02PCn9FZ.MzXiHqLyDEWTwPiZ0Bc3SDQTPDwhb+DF9f2+c5V64AptloTLQN9r2ac6aC..yZFyDwv4CEQjGxlManiN6D..Iw4WH4koTgRnToRL7vCiAMZDgyC3JQTPBNCCIhbKhDIBxjE5cFCToxQEFNzvLggD4MEcTQgS73WMhNpnfQiFwW8MeC5o2dA.fZ0pwBm+BvodxmLxJyLA.Pc0WOV+m8oX66bGvnIiBXjSDQTvDwhcTQ.1rYeBWagEjOJrf780gTHO61siMu0sfQFYDjXhIhBxm+NmHxy0cO8.KVrfHzpEpCKLgNbnfPQ8eUkgDQj+pW8M9K3Uei+haudlvPhH2hRkJCIawBpFqkjxJLjHuOUpTgi6XOVjbRIgQFYD7ce+2gVaqMW+bMp0fEsfEhSYMmLxLiL..Ps0UGV+m8YXG+3NgISlDpPmHhnfEt97sSbBCooG6uppPWc2MTpTIV7BVXH42AgnIxceG2Ft6631bq0Nv.5v.CnyGGQ9eZer4WHqtPxWIRlvPhn..e9W7U3y+huxsWenW4BQDMonTo+a6HE.3wex+...t8a6l8p6qqJLjILjHeBoRjhkurkgcryeD0Uec3G1zFw7m67PNYmsq0DtFMXwKbQn3hJFkWQ4nwlZB0Tasnt5qG4jc1n3BKx0yUIhHh7DhfijQY2t2KggO8u+w7Z6UnlAzoC6q7x..vhVvBgRkJE3HhH+SyZlk51q8JtlaB.gdyxvN6pK..jXBIJvQBErxUBC0wDFRDE7fILjHxsnTgbgNDFW6Xm61mrutlggCOrOY+IhbL+nV37mOToRIJuhJv124NfYylQwEUzgrNsgGNVxhVLJonhQYUTNZp4lQ00TCpst5Pt4jCJpvBcUUvDQDQtkwJdM2Ieg2vu71A.vy9+83i65RNIdyomLrYyF1x11JrYyFxI6bPRIxeORDM4LxHif96ueHVrXDarwHzgCEjJRsQ...c50KvQBQD48vDFRD4VTnv+tBC8UXKIknoOynjRgJUpvN14NwdKaevpUqXFkd3mdZsZ0hkt3k3JwgM2RK3.UWMpqt5PN4jCJpfBYEIPDQjawYEF5NsjzN5nSeavDhq7Jp.CLv.PsZ0XNyZVBc3PDE.qqtcTcgwFSLPpDdqOIeivCObHRjHL3fCBKVsv+sFQjeoa75uZOZ87UxHhlPxkKChEGZNxSkISFjJUJFYjQfUqVgDIRD5PhnfZ4lcNPlToXKaaan7Jq.VsZEy9nbSCiHhHvxVxRw.CL.1WEkiVasUT0AN.ps1ZQd4lGJrfBBYOrCDQD4dbNe77hcjTZRXfAF.Ur+JA.vhW3BgTo7VUPz341t86A..O4i+fS3ZSK0j80gieGmsizDhOAANRnfYhEKFgGd3Pud8Pud8H5nhVnCIhH5vrhksXOZ87SgSDMgTF.bC2evG3t7Y6sJkJggAGDCM7PPiZM9rqCQjCYjdFPrXIXyacKX+GnJX0lUL2YOGW2T2+WQFYjXEKcYn+96G6qhxQas0Fprp8ipqsFjet4gBJHenPt++qiQDQzzOmu0hc2nBCcW+7K6ZA.ve9U+ids8LXlc61w114Nfc61Qd4lKhK13D5PhH+dM1Tyt8Z+8+tGwGFI9m5rSGUDd7wGu.GITvtHiHBnWudnSmNlvPhnfBLggDQSHEJ8+uQ6Eled9r8VkJUNRX3PCyDFRzzjzRMUHQxxvOroMhpqoF..Lu4L2w8wDUTQgUtrki95qOruxKCs2QGnh8WINPMUiBxOeTPd4C4x8umGqDQDMcy8Ghgu9q77t0NZxjooR.Exo5ZpF80WeHLUpvLmwLD5vgHJ.2PCMDzav.jJUJhIZl.Gx2JBsQ.flgNcbNFRDEbHzrGCRD4QBDpvPeIUp3bLjHgPxIkDV4xWNDKVLptlZvd12dcqGWzQGMV0JVINgi63QhIj.rXwBJuhJvm7oqGkUQ4XzQG0GG4DQDEn3fsjzINggZznFZzn1WGRgTLYxD1aYkA.f4M24AYRkIvQDQTfNmsiz3hM1P1QqBM8IhHh...CnWm.GIDQzQ1C7POAdfG5Ib60yJLjHZbIVrXHSVn8WbWkxwRX3vLggDMcKwDRDKaIKE+vl1Hpb+6GRkHEkTbwt0iMlXhAGyJWE5tmdPYkWF5rqtPYkWNNP0Np3v7yKOdiIIhnPbGktc8ThXewlFjZ26cOvhEKHsTSEojbn2bVinIqW74++b60VV4NlOnkVRQ9pvwuBmegzzoHhPK..zqiILjHx+TYkWgGsdlvPhnwkx.f1QJ.vMby+Z..7r+A2+DS3tToRI.XEFRjPIkjSFKYQKFadqaA6q7xfToRQA4mua+3iK1XwwtpiAc0c2nrxKCc0c2XekUFp5.G.EUPgHubyERkxORDQDEZx8qvPqVsB..IRjLtq6c9au9TOrBAzU2cilZtYHUhDL6YMagNbHJfRLQGkau1G3gdb..7du8a3ihF+Kc0ki4WXBIv4WH46oQsFHVrXXZngvnVFkGHUhn.dr17IhFWAJsizN5rKzQmc4S1akNqvvgF1mr+DQSrzSKMrv4Oe..rq8razTyM6w6Q7wEGNti4XwwtpiAwFarXjQFA6Ye6Eexmtdr+CTErX0h2NrIhHxOmmTLfm2EcY37tnKy2ELgPrY2F14t9Q..TTgEA0gEl.GQDQACFbvAgQSlfb4xQjQDoPGNTH.QhDgvCOb..XvfAANZHhnoNdb5IhFWJBPpvPeIWyvP1RRIRPkUlYAylGA6du6AaYaaEJUpDwGWbd79jP7wiDh+3PGc1A1WYkgd6qOr68rGr+ppBEUXgH2ryYBqdDhHhBN3FEVH4CTWc0Ac5zA0pUiBKn.gNbHhBRzU2NNDwwGWbtlQsD4qoM7vgNc5fd8FPzQEsPGNDQzg328X+VOZ8LggDQiKExkKzgffisjTh7eTXAE.ilLhpqoF7CaZiX0G6wAsZ0No1qDSHQjXBIh1ZucTV4kg95uerqcuaT492OJonhP1YmMjHlINjHhBl4rUj5Muwx82+...HpnX0sbjXwhETVENlkJydlyhGRGhlDbVsy+8+xqNgqcwKZA95vwuQ28zK..haRbnBIZxRa3iMGCMnWfiDhH5vkYFo6QqmILjH5nRtb4Pr3.iNW7a7mdde1d6pBCYBCIxuvbm8bfISlPqs0F99eXC3DO9UCESg1mbxIkDRNojPqs0F1W4kgAFX.rycsKT492OJtnhQ1YkU.yqERDQzjjajvvHiHB2Zqtxq8lAPny7BySUU0G.CO7vHlniFokZpBc3PT.ImyTU2wsdyWmOLR7uzSu8..f3hIVANRnPIgq0QKIUOaIoDQAAXBCIhNpTF.0NRUqVsOaukJQJTnPALa1LFYjQfbV0kDInDIRDVxhWL9lu66Pe80G13V1LNlUtRHVzTKodojbxHkjSFszZKXekWNzoSG1wOtST49qDEWbwHqLxjINjHhBx3pBCci09Ju3S6aClP.lMaFUt+8C.fYMyYIvQCQTvDylMCCFL.oRjfHijU3MM8wYEFZPOqvPhn.e7tdQDcTobJTwNAaBKrv..fISlD3HgHBvQh7WwRWFTpTI5pqtvd1yd8Z6cpojJVyIbhXYKYIPqVsvnISX66XGX8e9mg5andXytMu10hHhHg1XCwPNqqlVTYU6GVrXAIkXhSp4PLQjCpToz0nyfbvY0EFczQyC4GMsRa3NpvPCCNH+thDQ9cthq4lvUbM2jaudVggDQGUSkV72zMKVr...oR8MurVXgEF5u+9gQSl3oUjH+DpToBKaIKEe62+cnppO.hJ5nPlomgWYuEIRDRK0zPpojJZp4lQYUTNLXv.1512NJuxJQoEWBxH8z8py7JhHhl9Y2Y9BcqZLz8jVZrMadjXdDynlZqE..ynzYHvQCQA1dyW6Ec609YewWA.fS9jVsuJb7KzcONRXXrwx1QJM8RpToHLUpfogFBFMZBgqQiPGRDQjKCLfNOZ8LggDQGQhEKFxjE37RDm+O6xAfuaVwnlUXHQ9khK1Xwbm8bvN9wchcricfnhLRDgV2aFS4NDIRDxH8zQ5okFZroFQYUTAFbvAwV11VQ4UVAJs3RP5okFSbHQDEfx9XUXn67x3MzXy..HyLRabW2u+IdnobbEL5.UWsqpKL5nhRnCGhBY7ZuweA.A+ILrmwRXXbLggj.PS3gCSCMDFbvAYBCIhBnwZzmH5HRkR1dS9uElJlvPh7WkaN4frxLSXwpUrosrEX0pUu90PjHQHyLxDmxZVCV3BV.TqVMLXv.17V2B9ru7KPyszrq4fEQDQAPb8Z2SbFC+U+l6A+pey83aimfTiN5n3.UWM..Jo3hE3ngHJXiUqVQe82O..hIlXD3ngBE4LIgFFzf.GIDQzTSfS4CQDMsRgx.m1Q5zAmyvPiLggD4WZdyYtn6d5A5zoC6du6EyaNywmbcDKRLxNyrPlomApugFP4UVAzqWO13l2LhLhHPokTJRMkT7IWahHh79ryQX3zhZquNL5nih3iOdDaLr5eHZpp8N5D..IkXBBbj3enu96G1rYCQDQDPtL4Bc3PgfzLVBCGbvAE3HgHhNTu8a8m7n0yDFRDcDoL.Z9EB.DYjduVP3QxAaIoF8o2QB9Tq...H.jDQAQUGhnIGoRkhkt3Eiu5a9FTcMUijRLQjbRI4ytdhEKF4jc1HqLyD0UecnhJqDCnSG9gMsQDUjQhRKoTjRxI6yt9DQD4cbvVRp2Kig6srxA.vLKsDu1dFHytc6n5ZpA..Ele9BbzPTvga7Wd6.v8FIGm0Y9S7wQivqmdGa9ExCj.IPBWS3..v.SXHQjeFoR8rT.xDFRDcDIWtLgND7HuxK7z9z8OLNCCIxuWzQEMlYoy.6du6AaaGaGmxIsFHWtu8DFKVrXjaN4hrxLKT6XINr+AF.aXi+.hNpnvLJsTjTh9tDWRDQzTjGzRRKsjhbqs7Ae3eG.7cyV6.Ms1VavnQiPiFM78DIR.btm0oKzgfO2AmegrcjRBCVggDQAKXBCIhNLJTHGhEyQb5+MkJUBwhEigFdXXytMHVD+8CQ9iJH+7QKs0J5omdvt26dvBm+BlVttRjHA4madHmrxF0TWsnx8uezW+8iueCa.wDSLXFkTJRLA1xnHhH+M1r4HgghEOwIL79t6a2WGNAkNPMNlcg4madd0J4jHhbpmd6E..wFKqvPRXnQiZ..XznQdOiHh7qXznitkmZ0pcq0yW8hH5vDn0NRmNHRjHnRkJX2tcLzPCIzgCQzQgHQhvBm+7gXwhQc0WO5rqtlVu9RjHAEjW9XsmxofYOyYAEJTfd6sW7c+muGe829MS6wCQDQiOa1sA.vCKmOxfCNH5pqtfTIRPVYloPGNDEzHubyA4kaNBcX3WvnISvrYyPtb4PiZMBc3PgnjJQJToRErYyF6LUDQ9UtjK+5vkb4WmaudVggDQGFEJC7RXXCM1D..xLiz8YWivBKLXznQXxjInNL26TYPDM8Sa3ZQIEWL1WYkgsuycfS9DOIHQhjo0XPpDonvBJ.4lSN3.0TM1eUUgt6oG7se+2g3iKNTZIkh3iKto0XhHhnCmMaNRXnHuXk.rjEuPu1dEnq9FZ...okVZPlr.qQd.Q9ydjG7db609Ju1aB.fq3RuXeU3Hn5u+9..PzQEk.GITnNMZzfgFZHL3fFYxqIhBXwDFRDcXBDqvve0u4dAfucVwnNrvP2vwIXj2leh7uUTAEhlZtYnSmNr+CTEJonhEj3PpTon3BKB4kSttRbXWc2M9lu6aQBwGOlQokhXigsNIhHRn3LggRbiJL7G1zV..vxW5hG20cK2z0N0Crf.1saG02XC..HqLyRXCFhBg8k+6uA.AuILru95G..QGczBbjPg5znVM5t6tgQiCB.NNJHhBLw9tBQzgPpDIPpTdVBNRBKrv..X6kfn..hEKFyc1yA..Ut+8igFVXakvxjICkTTw3zN00hRKtDHSlLzYWcgu5a9F7ca3+fd6qWAM9HhnPUtpvP2XFF9zO6Khm9YeQecHEznqt6FlLYBZzngUUOQjOSetpvPlvPRX4b9fYzHumQDQ9ORLg3QhIDuaudlU.hnCQfX6Hc5BSXXfqubQYHzg.IPjrteFrTvLwm9f2EB+q9.gNbbQsLEvzbWAFYAqDczQGniN5.RptbnZieNj2SGBc34Uvm2QDEHvtM6.fyvPeglaoE..jdZoIvQBQAe19N1E..Vv7mi.GIBu952QEFFEaIoj.y4nqYPiFE3HgHhNnm8O7Ddz5YBCIhNDAhsiT.fRKw22tAUOVBCMxDFRT.iv9t+EFL2RvnybgXzebCPVecIzgD..DOpYnYqeErt6M.SycUXzErRXMuRvf4UBjT09PXa7Kfr95TnCShHJnmM6NpvPuYBC+zO+eC.fSYMmfWaOCzX2tczRqNRXXZolp.GMDE74IdpmF.t2H43luwf21j7fFMhQFYDnPgBWeechDJtpvPSLggDQAtXBCIhNDApUX38c2+Ze90fUXXfqSbqMJzg.If9wcuKbfpqFQbuOMV9RVpPGNGQlMaFUV09QM0TCrTvLfgBlARMkTPokTJhLhHD5viHhBZ4rkj5NIL7jNwi2s1yW+O+WAPncBC6o2dwvCOLznQChJRV0ODIjV1RVnPGB9L86pcjxWmgDdGrkjxDFRDE3hILjH5PnPtbgND7a4r8RvO7GQAVJpfBQM0VKZokVfNc5PD9gIfSgBEX1ybVnv7K.UV09Qs0VKZo0VQKs1JRK0zPokTLhPq+WbSDQA5bkvPQSbBCu7ewOyWGNAMZq81..PpImh.GIDQAy5qOGsiznilyuPR3ElJUPjHQX3gGFVsZERjHQnCIhHB6+.UC.fByOO2Z8bPMPD4hREJfHQhD5vvukToRgBEJfEKVfYylE5vgHxMoRkJjS1YC.fxqrRANZFeJUpDyYVyFm5obJHubyChEKFM2Ry3y9hu.adqaA5MnWnCQhHJnhmTggj6qiNczVsSLwDE3HgnfSG6wrBbrGyJD5vPv0GqvPxOhHQhN3nrgGzbhH+D2y88v3dtuG1sWOqvPhHWBTaGo..aXiaA..qXYK1mdcznQCLa1LFznQnH.cdORTnnhJnPTac0glZtILyRKEZznQnCowkJkpv7lybPQEV.pnx8i5puNzXSMglZtYjQ5oiRJtXDtlvE5vjHhB3Yylc..HVr26PycNm0O0qsWAhLa1L5u+9gTIRPbwFqPGNDET5ZupKysW688aeL..7.26uwWENBl95erJLLJVggj+A0pUiAMZDFMYBZ0pUnCGhHxiwDFRD4hx.3Df8LO2KBfogDFpVM5s2dgQiFQLrsmPT.ivBKLjQ5oi5anATSs0hYOqYIzgjaILUgg4O24hhJrPTQkUf5pudzPiMhFapIjYFYfRJpX+9jeRDQ9yrZ0J..D6FsMr+969g..37NmyXbW2Yelg1ILrqt6B..wFarrcrQjefJpb+BcH3SXXvAwniNJTpTIToRkPGNDA.GeuS..SCYRfiDhHZxg8cEhHWTnfyuvIhygX8fFGTfiDhHOUt4jK..pqg5ccChCTnNrvvBl27wZO4SAYmUV..n9FZ.q+y+LrscrcLHa4MDQzjhUqV..fT2HwVevG8w3C9nO1WGRA75o2dA.PbwFm.GIDQAyzoSG..hJxHE3HgnCJLUikvPSLggDQ9Gl+7lMl+7lsaudVggDQ.vw74SpT9RBSDMpcTIOCNHu47DEnIlniFQGUTnu96GM0bSHqLyRnCIOlZ0pwBm+BPwEUDJuhJPCM1Hpq95Q8Mz.xNqrPwEUDTGlZgNLIhn.FNO.IRjvOGr2RuikvvXhIFANRHJ30G8O+W..3z+IqUfiDgy.5F...QDQDBbjPzAEVXNp1USlFRfiDhHxga+1tYOZ87aEQDAf.61QJ.vZNoUOsbcbVggFYEFRT.obyMWrssucTW80GPlvPmznVCVzBVnqDG1XSMgZqqtCl3vBKxU6vgHhnitClvPuWqy7ke0+L..txK6m601y.E1rYCCLfiahezQGk.GMDE75u82ee.3dIL7odhGxWGNBBmUXHSXH4OQ0XUX3PrkjRDEfhILjHB..JTFXmvvK6RtnokqiFMNaIorBCIJPTZolJ9we7GQ28zCLMjIWsLl.UgqIbr3EtHTbQEixqnbzXSMgZpsVTW80ibxNaTbgEwY5BQDMNr3AIL7xuzK1s1y+8W8s.HzLggFLX.VrZEgqQCjKii6.h7GjdZoJzgfOw.ikvvHYBCI+HNOzlFYKIkHJ.ESXHQD.B7qvvoKgoJLHRjHXxjIXylMHVLGErDEHQlTYHwjRBszRKn4laAEje9BcH4UnM7vwRVzhQIEULJqhxQSM2LptlZPs0UGxMmbPQEVHTojINjHh9e4IUX3IcBGmuNbB3o2fd..nUqVANRHhBlY0pUL3fCBQhDAsgyWug7e3rkjNzPrkjRD4e3q9luG..q93VkasdlvPhHHRjHHWtLgNLBHHRjHnVsZL3fCBSCYx0LMjHJvQ5olFZokVPSM2TPSBCcRqVsXoKdItRbXyszBNP0Ui5pqNjSN4fhJnPnToRgNLIhH+FNSXnTuXKIMTlN8LggDMc3mcgmqPGBBJ8FzC61sivCObuZKklnoJ4xjCoRkBKVrfQFYDHWNq1dhHg0K8JuN.XBCIh7.JTHGhDIRnCioj29c+...b9myY5yuVZFKggCNnQlvPhB.kbxIAoRjfd6qOL7vCGTl.sHhHBrrkrTLftAPYkWNZo0VQUG3.n1ZqE4lStnvBK.JUD782ahHxS4Klgg2xMccds8JPiACF.fiJemHx24zV6I61q8xtpa...u5K8r9pvYZGaGoj+LUpTACFLfgFZHlvPhn.NLggDQAEsizO7i9D.L8jvP0pcLGCMx4XHQAjjJQJhM1XQGc1I5rqtPFomtPGR9LQFQjX4KcYn+AF.kUdYn01ZC6+.UgZpsFjWt4gBKn.nHH38.HhnIKOIggO4+2yA.fa6Wd8i65VxhWvTOvBP4rErEVXpE3HgHxI85MHzgfWmtwRXXDLggjeHUJU5HggCOL+2nDQAbXBCIhfRk7lE6IbVUgCZbPANRHhlrRHgDFKggcFTmvPmhJxHwJV1xQe82OJq7xPas2Nprp8ipqsFjWt4hBymINjHJzjMOHggaca6vWGNA7blvPUpXUrSD46niUXH4GSkpwligCy4XHQjv6mbZmpGsdlvPhHdSh8PrBCIJvWhwm.1C.5niNfN85gISlfISFgQSlP3gGNxJiLE5PzmH5nhBqb4q.80WeXeUTNZu81Qk6e+n5ZpA4mWdnv7KfsMGhnPJV7AsjzPYCM7v.vwLbxrYyvpUqvhUqPD.BmsoTh7Zdlm+kA.vMdcWo.GIBiAXEFR9wTozQBCGdngE3HgHh.tny+r8n0yDFRTHNYxjFTbCRt7K8hm1tVZz3HggCNHqvPhBTzZasA8FbjXPilLASlLA..SCMD9ru3yOj0thksbgHDmVEczQiUs7Ufd6qWTV4ki16nCTQkUhCTc0nf7xGEje9LwgDQA8rXwB..jJQhWcddeuOvi..fe68cmds8zezt2ydPGc0IrZ0JrZwBrX0pqem9O9jO9PVawEUDlYoyPHBShBJsgeXS.v8RX367WeMec3LsZjQFACMzPPpDIt59OD4OQ4XUYOqvPhn.QLggDEhKXo5BOoS33l1tVNqvvAYEFRT.CiFGD6Yu6cBWmb4xQRIl3zPD4eHlniAqZEqD8zaunrxKCczYmn7Jq.GnlpQ94kGJHO2Kwgc0cWHpHiBxjIaZHpIhHuiQsLJ..jH089Zw2+87abq0U49OvjNlBjjZpof8efplv0IVrXjet4MMDQDQGIhEKVnCAuJ8FbLSFCWqVu5g8fHuEUJGKggrBCIhB.Eb8oFHh7XJCRRX3zIExU.YxjgQFYDL5niJzgCQjaHubyCwFSLS35ROszC5toJtiXiIFbLqbUX0G2wgDSHAL5nihxqnB7Ie55QYkWNFYzQNpOV61sic7i+H19N24zXDSDQScVF0Q0v4tG1gRJtPTRwE5KCo.JwFSrH0TRYBWWlYjATpjyzPhHuCCNSXnF1liI+SJc1RRYEFRD4G3Mdq+Fdi25u41qOz6NhQDcHTpjILbxPiFGs9D1VRIJvfHQhvBWvBlvjAlUFYLMEQ9mhMlXwwrxUgi+XONjP7wiQGcTTVEkiOY8qGkUQ4GwCIQSszLzqWOZp4lPM0Uq.D0DQzjynNaIotYEFRGtYMiYNgU3SA4WvzTzPTni631uEbG29s3Vq0fgAgACAOeuUCCNVBCCmsiTx+jJWsjTVggDQBu0+oeIV+m9kt8542LhnPXhDIJno8w8698OK..9U2xMLsb8BWS3n+96G5Gz.hJpnlVtlDQSMZCWKJsjRvd229Nh+bMZzfXbipPLTPbwFKN1UcLnqt6FkUQ4nqt5BkUd4npCb.TX9Ef7yKOHSlLX2tcTdEU35w8i6ZWH1niAQFYjBXzSDQtGKi0RRk4kSX3u+28vd08yeV3gGNxMmbP00TyQ7mmTRIgHzpcZNpHJ32bm8Lc60doW40C.f26seCeTzL8xUEFFNqvPx+jyppeXlvPhn.PLggDEBSoREAM87+ss8o2VgmySy3fAQmTShBETXAEflaoEze+8eX+rLCwqtvij3iKNbbNSbX4kgt5taruxKCUU8APA4mOToTEzqWuq0aylMrwsrYbhqd0PlzfiCjBQTvqQGqkjJ0MO.c27sdG..3O7TO53ttzRchaSmASJo3hQ8Mz.rLVEa9eqPVcgDQdYrkjR96jKSNDKVLrXwBrZ0JjHQhPGRDQjaisjThBgofyuvIsvGqkj5rcnPDEXPrHwXQKXAGwCKQFoyDFdzDebwgi6XNVbbGywf3hKNLxHif8UVYXa6X6G1ZMXv.1AmmgDQA.7zJLr01ZGs1V69xPJfjREJQQEd3y1wnhJJjP7wK.QDQTvJ61s6ZrfvVRJ4Oy48aaXylE3HgHJT20esWAt9q8Jb60yDFRTHLkLggSZNOMiF3LLjn.NQFQjnjhJ9P9yhMlXbcP.nit3iKdb7GywhicUGCzNNsApFapITa80MMFYDQjm6fyvPVQzSUEje9PkJUGxeFqtPh7ct8679wsem2uas1jSJQjbRI5aCnoICMzPvhUqPgBEPtL4Bc3PzQkyDFZlILjHRfspUrLrpUrL2d8rkjRTHLEJBd9.1Ov8dGSqWOmyKAmsCEhn.KEWTQn4VaA5zoC..Yv1QpGI93haBWyt10tPLQGChLhHlFhHhHxyYYrVRpLYd2uVry4E1q8xOmWce8mIUhTLiRJ0UkmGVXggzRKUANpHJ3Uc02fau1m92+X9t.YZlAWUWHaGoj+MktRXHmigDQAVXEFRTHJYxjET0G0KtnBPwEM8cJlkKWNjKWNFYjQvHiLxz10kHx6PrXwXQy2QqIUrXwH8zRSnCo.JM0bSP+DbfIrX0J13l2zQblVQDQ9CFcrVRpT2rkj9mdomA+oW5Ylv0YvvfvPH3btNqLyDQL1gDof7xGhEwa2.Qj2EmegTfB1RRIhBTwOAOQgnTpjsizoJNGCIJvVzQGMJL+BPRIlHTHmuln6xtc6nrJpvsVqACFvN9QNOCIh7O47.MHyMaIoQnUKhPqVeYHEPSjHQX1yblPlLYH6ryRnCGhnfPN+t2b9ER96b0RRGlILjHRX8fO5ShG7QeR2d8rkjRTHJN+Bm5BO7vQu80GLXv.hI5XD5vgHZRnzRJACLv.BcXDPoqt6FRDK1UUjbHra+f+eG6+su96GczYmHwDRX5I.IhH2zni5nBCkIiyvPukjRLIrjEsH2NIrDQSN+wmw8uweUr+p..PwEF3OWQYEFRAJTpPI.3LLjHR3s28VlGsdlvPhBQoHHKgg2zs5XFF9zO0iNscM03pBCC8Z4TTvK61siZqqNTa80AC50CKVsJzgDcTnPgBDWrwhBxOeDWrS7LEbxngFaD0TWsXfAFXJ0ZQ+t+y26EiJxeiToRQzQEExMmbY68kBn3rsxKWt2ctd+du8aLkd7dqW6k7eDVXggTSIETZwk30+2aTno3hKV2ds22C336HOUesI+ASGyvP61si5anATac0Bc5zwuOTPNYxjgniJJjWt4gTSIEu19pPgiWq27HLggDQAVXBCIJDjXQhfLYAWO8us1ZeZ+Z57KoDJNiZnfS1raCabSaBs1VaBcnPtAylMiVZsUzRqshRJtXLiRJ0qs21saGaYaaEM1TSds8jBdYwhEzU2cit5tazdGcfEN+4CQhDIzgEQSnClvP2qZ3N6y+R.fu6lt630d2FZroF8I6OIbLYxDNP0UiN5nCbBG+pYUsRzjzPlLA..0pCymr+1saGaZKaFM2RK9j8m7+L5nihN6pKzYWcgbxNGrf4MOux9JerQdgyOqAQDEnH3JiADQtEEJUxajmWfy1fBmggTvhpqtZzZasA4xki4N64fTSIEHUJ+nB9ira2NLMjITSM0h8efpP4UTAzpUKxHsz8J6eM0VKZrolfLYxvrlwLQ5omFjKiUDAcjMxHifFZrQr2x1Gpug5QLwDMxM6bD5vhnIzHi0RR8Wd8MGu1ai70dCxXylMzW+8iss8sA8FLfJprRLqYNSgNrHJfyvCOLrX0JjKWtOqsGWcM0flaoEHSlLLmYMajVpoxD7GjyrYyn9FZ.kUdYn15pEQGcTHmrxdJuuNOLRLggDQBsG6gueOZ8h8MgAQj+LkJCtZGoBkvc1RRMvDFRAGps95A.vBl27QlYjASVneLQhDA0goFyZlyDyaNyE..6upp7Z6eM0UK..V37W.xMmb3MrlFWxkKG4mWdXAye9..nlZpQfiHhbONuIdx7xsHRc50Cc506wON9ZuAmDKVLhMlXv7mmiWir4VYkKQScW3EeE3Bu3qvsV6BWvbwBWvb8wQjumQSFA.f5v7MUWH.Psi85vKXdyGYmUVLYgg.TnPAJrfBv7G6ywVsW5yw5r8SyDFRDIzxI6LQNYmoauddm.IJDjREAe27gW8kd1o8qoLYxfBEJfYylwvCOLTpT4zdLPj2jyjembxIIvQB4IxJyLwN9wcBc5z401SW+agj3+Vfbeolri49hddPZn.Di5rBCcyVRZ3gqwsV2keU2H.77VWJes2faQGcT..vnQiBbjPACbVgztie0sbi9vHY5iQiNZGogoVsO6Z3bFIlRxI6ytFj+ozRIUrErUneRbfeNRXBCIhBTwDFRTHHEJB9pvPsZ8cC87wS3gGN9+Yu66vapx1+.3eSZZZ5NooCVsT1T.YSAQlxTQkgfCD4UTV9BHBNAdUbOYnhuhJfBn7SFh.JuBHhrk8PFEJPYCEJso6l1zzje+QZNzP5HojjSFe+bc4kbRdRN2sDN4bN2O22OEUTQH27xkILj7nYznQXznQ..3mT+D4ngrG94mo+9xfACNr2SyuWRkxlQAY6bFeVjHmECFMHjvPas018ce6W5LCIdrWubx7yzsew74aQDYebEUXHONruKG84wxDFRD4oheCHQ9XjK2edxuNP2tsjlmHGIDQDQDQ1JgjE5u+tcqs2FASnDQTkStb4BIjvWQAEXpBCC1IVggD4n3uLSmeg9RJAkXnDwNbHh7gM9ILUL9ILUad7rBCIxGiBuvpKD31yTWW8M7IzPMUYi4lGa+ZDQDQD4oPmNysiTG+Mbu1UyV6sDIRX0mQDYSV1R9Vadr+wetU..z2d2SmU33RXtc9FbPLggjmA4xkihJpHnSmNDnh.E6vgHxGUFZzXWimILjHeLdisiT.fGa3iB.1+ZEycqvLmvPtdMQD4Ew7Ms1HLBIv8pxaHhHGghKsEgYOIL7JW8Z..H15T6Jcbe1r+vpefA.XDfG5kHxQYAKZI.vKHgglqvPmXKIkHGI496OJpnhPwEWLSXHQjGClvPh7wnPg2YBCEKgFZX..NrEFahHxsBuo0DQdozUboILzeaa8KD.XpuxL.fqeBpQDQzsqvvfB14kvPNo4HGIYkdNFEWrdQNRHhHaGSXHQ9PjJUJ72NtoHTUKzPBARjHA4lWdvfACb8gjHhHhHO.EUTQ..PtbNY5Hh77j1stE..hNpnD4Hw0PmNcPud8PlLYH.dbaxCgbgDFVrHGIDQ9x9Q6nMlCvDFRjOEu4pKzbqA0USpToHjPBA4latHu7yCgUZEGRDQDQD49pnhLUggNi10+IS5z..n4Mqo10qqrU1BQDUYlvK7J.v1p34AOnG1IGMNelaGoAw1QJ4AQFSXHQjaf.ry0rclvPh7gnvKc8KD.XQe67Ds8cXgFJxM2bQN4jKSXHQDQDQd.LWgg1y4GmPSarMMt25c+H.vVWJQj6gg+3OpXGB20JfqegjGH+kUZBC0yDFRD44fILjHeHNiYPMADVXggqc8qaZcLr10VrCGhH5tFqxEhHucEVZBCsmyO9cl4zcVgik3gdIhHKTXgEB..EJBz0rC453M4.3u+lts65YEFRDIhzV52gFnBE1z3YBCIxGR.AXekfLYaBKLSUUXN4liHGIDQjCFuo0DQdoJpHSW3LmPcDQdhZP8iWrCAWJsEpE.19M6jH2A9WZKIUGSXHQjHZjiZ7.v169ILggD4iPtb4PpTohcX3zbkqbM..Dart9J7ybaHMmbXBCIhHhHxSPQ5bdqggcLw16veOIhnx5id+2xlG62sjkA.fm8e8TNonw4SnBCCjILj7bXNgg5KVuHGIDQjsiILjHeDJT3cO6om5qNC.HNqULgEZn..Hmby0kuuIhHhHhreEUMZIo6YuG...2am5PkNtWdJSrZESRkHAF.X6flHxgZCaby.vyNgg2tcp4hZIoD4.HSloa6dw5YBCIh7bvDFRjOBErcK4z3u+9i.CLPnUqVTPAEff3BwNQNDW4JWAYlYlBa2xV1Ra90ZvfAbhSbBgsiLxHQspUsr4WuFMZvUu5UE1tgMrg9j+aadSqcbJnfBv4N24D1tN0oNHhHhvldsFMZDG+3GWXa0pUiZy0LWhtqXNgg1y4HOmO++B.fU0oE6LBI2FZ0pEW5RWBxjIC0nF0.gDRHH0TSE25V2RXLMu4MG94me..33G+3vnQSeegRkJQbwEG.p7uK8Lm4LBULTfAFHZTiZjK4mMhHOSEp0TKIUgWdKIMojRB5KM4RgFZnnd0qd17q8hW7hBc8H+7yOz7l2bmRLZuN1wNlveVkJUH1XiUDiFWKY9Y51tWRILggDQhmnhLR6Z7LggD4ifqOKNWgEZnPqVsHmby0mLoBD4L7Vu0agu669NgsMeyHsE4latnUspUBaO0oNUL6YOaa90u5UuZL1wNVgs26d2K5XG6nM+58zYtJW7EciabCTboqyHADP.H5ni1g799O+y+fN24NKr8BW3Bwy8bOmM8Z0qWuEedd7ie7X9ye9Nj3hHeQFMZD5JskjJWta3Z7sHMWM1291GlzjlDN3AOnv249du26gYLiYfO+y+b7we7GKL1zRKMDUTQA.fDSLQgj+M7gObrrkYp8GVYeW5i9nOpvD6IwDSD6ae6y4+CHQdQN7Q9G..z11zppXjdGtcEF5cmvv9zm9fqe8qC.f92+9iMrgMXyu1IO4Iiu45bQG...B.IQTPTc8W+U.XZxRV1I4gXprmC6y9rOKVzhVjHFMtVlqvP8rBCIhDQe07lkcMdlvPh7A3mTove+8t+m6MKglHp6+vBKLbyzRC4jSNnFwDinFKDQjCiOXAF1idzCjbxIC.fN24Nicu6cKxQDQjilNc5fQiFcZqw2aZy+E..5WeteG96syRJojB5YO6IzVZU7PD4d6C+j4B.aaI43El33bxQiymvZXnWdBCIuKlqDe8kThHGIDQjsy6NCBDQ.v23jpe62bZh59OrPCC..4jaNhZbPD4XDYjQh1291KrcvAGrHFMjuNIRjXwmGqacqqHFMD44q5r9EB.zmd2SaZbK76VJ.7rRX3m7IehEIKrKcoKnssssnMsoM.vTaTtrGGxbUSTc07l2bgqQIgDR3t58hHpx0066dE6P3thNc5fACFfLYxtqO1i2rF1vFJbbZkJUJxQysU1u6H93iW7BDQf4OuVBqvPhHOH7aZIxGP.JX6H0YKrvJMgg4vDFRj2fAO3AiAO3AK1gAQ.vzMa3.G3.hcXPjWCys1N6cM9drO2+xYDN2lDI.PbV+XK6ZLkZ0pw1291sn5Km3DmHl3DmnCa+s7kubG16EQj2MskY8N0YShDIvnQidjqi21yxufqju74vJSFqvPhHw2YO24A.PiZX8sowyDFRjO.68lgP1uvBKT..jSt4JxQBQtFW+5WGYkUV.vTULW+5a5DONxQNB1wN1ABJnfvXFyXvku7kQd4kG.LkziF23Fa060oN0oDVqjTpTIpUspUEteKojRvIO4IwAO3AQlYlIZW6ZG5Tm5jMWI0YlYl3fG7f3nG8nHlXhA268dunQMpQk63RM0TE1td0qdB2jhjSNYTRoWzWTQEEhJpnPd4kG1291GN3AOHhIlXPyadyQ6ZW6pzVcWpolJ1yd1CN6YOKZQKZA5XG6HhLxHQpolJxLyLAfopeoAMnA1zOaNT1wMs1fACXG6XG3zm9zHszRCAGbvnV0pVnW8pWU45+md85woO8owQO5QwktzkPrwFKRHgDPG5PGrZr4jSN3pW8pBa23F2XHSlLbiabCr90udjVZogILgIfvCObgwTTQEg+5u9KbwKdQjVZogfBJHDczQidzidXQU5YznQbpScJ..g00L.fBJn.jTRIA.fZVyZBUpTY0O6m8rmEG8nGEm6bmC0rl0DMtwMF228cePRo+NrpjQFYfcricfjSNYznF0Hz5V2Zq967xFe..pToB0rl0D..27l2DYjQF..ve+8GMpQMBFLX.m7jmD6d26FEVXgn4Mu4n8su8VE+kkVsZwAO3AwANvAfZ0pQhIlHZZSaJzpUKt3Eunv3pe8quOQmKf7tUXglpjNEJb9274pEW38o17w3J6ZcUsqcswoO8oAfoJZN3fCFokVZH8zSWXLMoIMQnUqUcjRJoHTomAFXfnd0qd..H6ryFW6ZWyp8yEtvEvt10tPpolJRHgDPaaaaQsqcsqv2e850iicrig8t28B.fN1wNhV1xVBYxjYwwSKuisSjmft00NW0CxKwsOls6y4eb9yedg1jJ.PyZVyr34yJqrDVKBA.ZPCZfEU0dQEUDRIkTD1VsZ0HlJXoMQmNcX+6e+3u+6+FQEUTnYMqYn8su8VcL3qbkqfbK89Q3me9glzDSKaKZ0pEW3BWPXblutlSe5Si8t28BMZzfDSLQzt10txMorW8pWUXhQa9304me93.G3.3fG7fnl0rlnScpSU30rX96Y.r7Z8J62qX95DMZznv4vpUqVgeViHhHJ22a.Ssq1CcnCg8su8gHhHBjXhIhDRHATXgEVt+b6J4mebMLjHR7M823c.fs0FyAXBCIxmfb4xE6Pvo6u269A.Pm6Thhx9OPEAB+82eTXgEBc5z4S76bx21LlwLvhW7hAfoEx98rm8fm4YdFrxUtR.Xpk3LlwLFLtwMNrwMtQ..TqZUKKtIfl0xV1RgKh5oe5mFKcoKsb2mZznACcnCEacqa0hGOgDR.+zO8SnUspUUZLut0sNLhQLBgDXBXZVD+hu3KhO7C+PKtH9e9m+YL1wNVgs26d2K5XG6H.Lst1oQiF..7Fuwaf90u9gG5gdHgDnZVu5UuvxV1xr5h+Kt3hwK7Bu.95u9qs3wUnPAV25VGV0pVEV3BWH.L0x1NwINQk9ykXZUqZUXJSYJk6euJSlLLrgMLrvEtPDTPAY0yuoMsILpQMJKRLqYcnCc.evG7An28t2VL9G6wdLgsu10tFV4JWIl1zllvMrYXCaXH7vCGFLX.uwa7FX9ye9BIe8N0st0Mr7kubTyZVSTTQEgl27la0XN5QOpvi+ke4WhILgIH7b6ae6CiXDi.m6bmypWWBIj.d629swvF1vJ28sYqd0qFCe3C2hjTJQhD75u9qi28ce2autmnWuEw23G+3w7m+7Afo1H3blyb..PrwFKRJojvi7HOhU+6jHiLR7C+vOf92+9aUbr90ud7TO0SYUUxO5QOZLxQNRzst0MgG6.G3.VzZoHxSzsqVEmyMe9QG7i3TdecFJui8cricLgGeSaZSnu8suXNyYN3i+3OVXLokVZHpnhpZueGzfFjv2ukXhIh8su8A.SGOZDiXDBi6l27l3sdq2R3XdlIWtbL6YO6xspGO9wONF3.GnE2nX.SsY0Uu5UawOyey27MV788D4oXR+aa+ysu86+I..Xly3UcVgiSkVskdLa2nDF9Vu0age3G9AgsO8oOsPB5..93O9iwG8Qejv1qYMqACZPCRX6+2+6+gG8QeTgsW5RWJd5m9osZ+b4KeYzqd0KqNeyt0stge5m9IKlnkSbhSD+5u9q.vz48YdhfbzidTz4Ne6DLu6cuarfEr.gqkyL4xki4Mu4Y0wDeoW5kDtFu68duW7Mey2f90u9Y04v2pV0Jrt0sNqZc9k8XtO6y9rXQKZQ..XtyctB+NJlXhAojRJXHCYH3O9i+vhWeDQDAVxRVBdnG5gr52OaZSaBOwS7DVccXibjiDO+y+73du2a2Nd28t2sE+dvUvbEFxVRJQjmDG+J7NQjak.BPNjJ01pxAOYy8y+JL2O+qD0XHrPMWkgrsjR9dF0nFkvER5rjXhIZURP.LUghcpScBm8rmsBesqYMqACdvC1hjEBXpxsl6bmqE2bR6wN1wNPe6aes5hTA.1xV1BF23FmU6uG7AePqRVHfoYG6.G3.EpFB2BURUtr90ud7jO4SJjrPIRjfHiLRgmWud83m9oeBO3C9fBUPpYu0a8V3AdfGnbSVHfojR8fO3CZ0MLnrV5RWJlxTlhEytayF4HGI9fO3CrHYgpToxh08lcricft10tZUrYK9lu4aPW5RWJ2jEBX5yjO1i8XUXxuA.VwJVAd7G+wsHYg.l9LxG9geH99u+6s63pfBJ.8pW8pb+2Iomd5XPCZP3l27lV73KcoKECbfCrbao1KbgKDScpS0tiChb2Y93F1a0prpUuVrpUu1pbbOwiMD7DO1PpVwFYom4YdFqRVHfoJtYRSZR3u9q+xhGe+6e+nyctyVkrP.fcsqcgALfA3zhUhbWchSjDNwIRppGnapauty59jvv6boKXyadyVr81291sX667byJ643JSlrxMYXW9xWFcsqcsbOeycricfm8YeV6NtA.F6XGqUIKDvzwUG23FGl9zmdE9ZuzktD5d26d4dN7+y+7OHwDSDG+3G2tioBKrPz2912x8b+0nQCFxPFhUSPQyWmQ4ccXKcoKESZRSxtiCGMyS9uRLXPjiDhHx1wDFRjWN1NRcc35XH4q5Lm4LXEqXE.vTRipacq6cUUGTQLOqSWyZVCVwJVA5ae6qvyUXgEhW7EewJ70dgKbADZnghO4S9D7m+4ehYMqYAkJUJ77+7O+yXKaYK1cLs8suc3me9g+y+4+fEu3EiW3EdAKZCo+1u8a3xW9xBa+K+xuf+7O+Sgsqe8qOVvBV.17l2Ld228cgDIRbqqnvxZIKYIBsl05V25hqd0qhacqagacqaYQEer8sucr+8uegsOxQNBd228cERTWcqacwm+4eN98e+2wjm7jENVZwEWLF5PGJzpUa4t+em24cD9yQGczH1XiERkJEIkTRXYKaYBOWu6cuQxImLznQCznQiEyl6TRIEbricLHWtbr0stUr0stUDarwJ77Mu4MW3wMOqvu5UuJl5TmpPUwpVsZ7IexmfMtwMhW+0ecKZCqO2y8bVzFUKqMu4Mil1zlhYO6YiErfEXwmmALUQi1qLxHCr+8ueLrgML7se62hYO6YawOOEUTQXAKXABame94iW8UeUXnzahge94Gl1zlF17l2LVzhVDZSaZCN3AOncGGD4tq5VsJq7mWKV4OW0ILzSh4iwU1JBIgDRP3wKuVDsqzF1vFPW5RWvW7EeA9pu5qrJdtyiU9JuxqXwjCZjibjX8qe8X4Ke4X.CX.7XZD4Ax7jqJ.WYW7oJlOY8qe8yh1aYYSXXAETfUGqYaaaaVrcYGe26d2K2VibRIkDxHiLvzm9zwhW7hwTlxTrnMj9G+weToSXxJxIO4IQ8qe8w7l27DtFjx1MP93O9iQxImb49Zu90uNxLyLwS8TOkv0jU1IhQZokFd8W+0s6XJ6ryF+8e+2XHCYH3a+1uEycty0huWp3hKFey27MBaWXgEhW9keYgygUpTo3Ue0WE+we7G369tuCsu8s2s3389IszDFx0vPhHQTaZcKQaZcKs4wyVRJQd4BPASXnqh40MqrYBCIeLZ0pERkJEuy67N3EdgW.gVZ015nMrgMLrhUrBg0FtgLjgf9129JLic+8e+2wwN1wPKaY4ehPaXCaPnMzzqd0Kz0t1UzoN0IgDW8ge3Ghd0qdY2w05W+5EZYi+q+0+BFMZDyadyC.PXsjKt3hC..u+6+9ButPCMTr6cuaTiZTC.XJwVspUsBOxi3YzJ6L293..BN3fE94HxHiDe3G9gHszRSHoZkcFAO0oNUgKtOrvBCaYKaQXMO4AdfG.0nF0.SaZSC..4latX6ae6kaazTqVsX.CX.3q+5uF0oN0Q3wWvBVfEII68e+2WXsyLzPCEiZTiBqd0qV34O7gOLZUqZE5QO5A.fE2vjvCObgG2roMsogBJn..XJAaabiaTnEc1u90Oz7l2bgVJkd85wF23FwnG8nsJ9qQMpA1+92uv96Ye1mEMoIMQXVjexSdRXznQadsPzrQMpQgu669Ngs6QO5AZW6Zmv1kcVeunEsHKp3vO+y+bKZ6pCcnCEst0stbqTGh7j4ttFFJwNV+XcTLeLtfCNXgGq7N1mXocsqcXaaaaB2j7QLhQfZUqZIjTvxdLscsqcgcricHrcYa8c.lNOhG7AeProMsIWTzSjyy5V+F..v.enGPjiDmuhJMggtSK6GAETPne8qeXsq0zjHYqacqPud8PlLYXO6YOn3hK1hwe7iebjQFY.0pUiTRIEb9yedgm6NqVwx5W9kewhIUlLYxvm9oeJ.L0UJNwINQ4tdrWYTqVM1wN1gv5.au6cuw8du2qvRAfACFvG7Ae.VxRVR495G23FmEcKkgNzghAO3AKzNT+8e+2wQNxQPaZSarq35odpmB+3O9iBa26d2abO2y8HrcYOd+hW7hsXMhbVyZVXJSYJBaOrgMLz1111pUBUcjLOQRMvJLjHRDM8Wy95ZPrBCIxKmuREF1md2Szmd2SQMFBOrRSXX1YKpwAQhgm+4edLiYLCmVxBA.l9zmtEIOQlLY3UeUKWKVpnVfSO6YOsZMqHwDSzh0HupS6yoAMnAVr9tA.qRt0MtwM.foYG8wN1wDd7gO7gKjjMyd3G9gs6K52YvVto0kcV+lTRIgV0pVgYO6YiCcnCAEJTfUrhUfUu5UiUu5UigLDSslOsZ0ZQKZ5IexmTHYglMwINQ7QezGI7elq3v6TCaXCwu9q+pEIKD.XLiYL3xW9xB+WhId6011LxHCqt4G16EvadM4DvzeWemqmeO4S9j3S+zOUH9KaxKKqG+webKRNoToRQe5SeD1Vud8H8zS2thM.XU6opssssVTwul+7H.rXlWGVXgYUhMCKrvvy8bOmcGCD4tyYuFFtvu+GvB+9enpGXEw0kuP2dibjizhJpIzPCE228ceBaWQGSCvz5tUYIUpTL4IOYmTjRjq0OtrUfebYqvlF6m7guM9jO7scxQjyi4JLTd.tOILD.BmeKfoI4l4kUfxdttlWC8LZznviW1pKThDIXfCbfk66esqcsspCTTQWmg8XDiXDBIKzrd0qdYw58WY6HJkkDIRvq8ZulEOlToRwLlwLr3wpnWek4NOG1VzhVXQbVQGuOnfBBie7i2hWaHgDBFyXFicGCNZLggDQdhXEFRjWLY94mEqWSdyF6y8uD6P.JKsBCyhILj7AUdUPkiT.AD.ZUqZkUOdG6XGsX6Jp84bmiqrOt4KZOszRCYkUVVzpRqJlqbvx5NaGq4me9.vT6urrsilDRHgx88r4Mu4h9rg0V75u9qiAMnAITEgm3Dm.u7K+x.vzEt28t2c7XO1igQLhQH7cQm4Lmwh0Lvt10tZ06aHgDhU2HhxynF0nrn8udmt90uN13F2HNzgNDRIkTv4N24vEtvEtqtf8LxHCKRhW4E+94meB+dnxXqe1wdauuUz66st0sDdOMqr+6k5W+5i.JmIYTKZQKrq8OQdBLuFFFncVggi5e8T1z31zeXpEWO5Q8z1WfQVopNVYEcLM+7yOgpKur3wzHeQ0K95V0CxMlNcktFF5FUgg..OzC8PPlLYBmK7l27lQW5RWDRLXvAGLl1zllP2CYaaaaXHCYHVjvv1291a0jeyL645LrGkcxzUVctycF6YO6A..olZpnvBKzp052HiLRTu5UOqdscnCc.96u+BUVYYqfRaUE8yq4NUREc793iOdKZOrl4Nb7dIRj.oRkBCFLfRLThPKJkHhbmwJLjHuXrcj5ZEXfAB+82eTXgEJLKHIxWwcVkX1ixl.oJRDQDQ41ZFUpToEIMprsllxRsZ01ziWQu9Jh4VQbYcmSTCywsst1UTdWvqnoR9qlALfAfctychG5gdHqZQTETPAXCaXCXTiZTnMsoMHiLx..VeyCpn+dwVTQelynQiXxSdxH93iGO2y8b3q9puBaZSaBojRJ..UXKq0V3Hie64yNNx22x9dZKelzs5yiD4.ThgRfNc5fDIRr61a2C1+9fGr+8opGH4vTcOlVEctE7XZD44wcrkjB.nRkJKZeyadyaFEUTQBss+tzktfd0qdID2aaaaCkTRI3u9q+R30TYsiTm04JVdqWh.VddsFMZrbutnJ50JQhDKdtxtbDXq7VOGVgpLrDVkgDQhist8chst8cZyimILjHuX9JsiT2IgypLj7AIUpTapUjVdIROmbxwltfuacqaUtUF1c93k2LdEnhaWOk8wkHQBhO93qxXwdY9lVdmu2m5TmpbGeE83ti5Tm5D9se62fFMZvF1vFvzm9zQaaaasXLksxCuyYNr4pd6NoUqVTPAEfBJnfJbBXTQUB5G8QeD9hu3KDlgy228ceXAKXAXe6aeHyLyDye9y2t9Yrrr03uvBKTH9MWISUG1RxzuadOK6mIO+4Oe496ZOoOORjsv7+lTgBEUqazpqfqbMLzSWEcLMCFLfyblyX034wzHuEC+IGFF9SNLwNLbIz4llvP.KS3292+9wl1zlPQEYphH6YO6IBJnfDZ0mm3Dm.+9u+6HqrxR30LnAMn6p8e04bESKszJ2G27D7yr6boSnxdsFMZDYlYlBaWyZVS6NtpJUzw6uzktDzpUqUi2c438laq1kXv1l7nDQji1W80KBe0WunpdfkhILjHuX9RUX3J+40hU9yqUrCiauNFlCSXHQ.vh0etLxHCgKf1Las0apWudKVOPLqryPW.fl1zlVtu9srksTtOdYe8wFarVrlx4nERHgXQKGZUqZUPiFMVLlst0shidzi5zhAGkryNaroMsIg+Sud8n+8u+38e+2GG5PGB6e+62hD5sycZZ1r0rl0LKVKp15V2pUu2W5RWBgEVXH3fCFAGbvXtyct1Ur8K+xuH7maQKZA1912NF8nGMRLwDQXgElcsNydmIoNlXhAQGczUZ7mSN4fXhIFg3+UdkWwtheWox1VbyImbv+2+2+mEOeQEUD9pu5qb0gEQNUZ0Ztcj5bV+BA.l7jFOl7jFeUOv6f6ZBL8Tbms56u9q+ZqFyblybbUgCQNUC9QF.F7iL.aZri8e+hXr+6WzIGQNOlSXX.xc+t+FCZPCxhtIxa8Vukvy0yd1S..g0LciFMh23MdCgmuIMoIU3RTfyz1111J2GeG6XGB+4ZUqZUtWWTVYkE9m+4er5w2yd1ivj0CvzZMtyTY+8V94mO9gevx0MXc5zgu7K+RmZLXqXEFRD4ogILjHuXta83emoUs50hUsZwOggJC2TxQrmaHMQdyJ6rK0nQiXkqbkVrs8bi6l4LmoEydzrxJK79u+6KrsToRsp51L6nG8nVkLjUspUgCbfCHrc6ae6s4Xo5ZhSbhB+YMZzfd26di0t10hSbhSf4O+4iANvA5ziAag4a7QEUkKFMZDCX.C.8u+8G8u+8G+7O+yV77cnCc.MqYMSXayeNHv.CDcu6cW3wW4JWoUIHcNyYNBqEL.lVeXrGkMIz0u902hDTB.r90uda985Tm5TVUAr8u+8W3OuksrEqRF827MeCxImbD11dieWowN1wB+82egsG+3GO9rO6yvwO9wwu+6+N5YO6Y4VgND4ISq1B.P0qUkMmO+qvb97pNI5coycBcoycxte+EvBLrZ4gdnGB0st2dsZadyad3UdkWAG3.G.ae6aGO4S9jXsqU7udAhb0xLyrPlYlUUOP2PFLZPHQTk8bVbWTqZUKKVS.OxQNB..BMzPQ6ZW6.vsSXH.rHYaUV6H0YZEqXE3PG5PV7X+xu7KVbcQOvC7.U3qeFyXFVjbvhJpHLyYNSgskHQB5W+5mCLhs1nG8nsXs2dRSZRX1yd13XG6XXCaXCn28t2HojRxoFC1JgDFZjILjHxyfrpdHDQdhTDP.bVJKBL2RRYBCIxjN1wNZw1idziF+4e9mHxHiD6ZW6B6e+62leu14N2It268dwvF1vPwEWLV9xWtEK38iYLioBaIo..ibjiD+we7Gnssss3nG8nVLSTkISFd228csiexpdd9m+4wW7EegvZBxQNxQr3lEHQhDTm5TGb0qdUmdrXSpfaZsRkJQhIlH1yd1C..doW5kfToRQu5UuPIkTBV1xVF16d2qv36V25lve9+9e+un0st0nnhJB4me9nW8pW3odpmB0nF0.qXEq.G6XGSXr8pW8BMu4M2tB4l0rlIDWadyaFKaYKC2+8e+3ZW6ZXsqcsVUwb2Ya3rV0pVBetJ6ryFwEWb3dtm6AicriECYHCAe5m9oX8qe8PiFMvfACXfCbfX3Ce3nQMpQ3W9kewhetum64dDlc4tihM1Xw3F23DlA1EUTQXJSYJVMlqbkqHFgGQNEETfoDFVcpn78r2R+NqI+ucjgD4f3u+9iYNyYhm8YeVgGaVyZVXVyZVBayioQjmkh0YJwTxkK2kb+MjJQBL.6q0POjgLDg0sPy5ZW6pvjVqCcnCH7vC2p6QfXkvPsZ0h6+9ueL7gObjPBIfCcnCYwDqTlLYXFyXFU3q++8+9enyctyXfCbfvnQiXsqcs3vG9vBO+fG7fuqVyvsE0rl0DSXBSPXxmpSmNgk.AybWNduvDwz.mMPDQhiGd.8upGTYvDFRjWJeo1Qp6ja2RRyoJFIQ9FF5PGJdsW60DtXMc5zgktzkJ778u+8GW3BWvhD+UdhM1XgRkJw+7O+S41FbpScpiEUa3cpe8qeXKaYKXIKYIXIKYIV87u5q9pVTQbNKgEVX3.G3.k6MVPlLY36+9uGae6aGKbgKzoGK2s91u8aQO6YOQ5omNxN6rs3FzVVspUsxhKfuoMso3K+xuDSZRSBEVXgPiFMXdyadV85pacqKV9xWtcGWicriUHggZ0pEiXDivhmWoRkVr1wT10aE.f6+9ueKZ0nW+5WGW+5WGO7C+v..H5niFe+2+83oe5mF4jSNH+7yGKXAKvp3HhHh.qcsq0sb81or9hu3KfJUpv68dumUqCNCbfCDSZRSxhYFOQd5JnzJU2Y1BpIwynF0nP.AD.F8nGsUqoUsrksDqYMqAMnAMPjhNhbb9uesoyUbBiezhbj3bUja75WnYCdvCFu1q8ZV7XkcBi4me9gdzidf0st0I7X0t10FcnCcvkEikU26d2wt10tJ211rToRwrl0rpvIgY.AD.Ze6aO18t2MN3AOnUOeCaXCsXRZ3LMqYMKnToRLyYNSqNG1ALfAfW4UdEzidzCWRrTYDRXnSXsImHhrEibDOgcMd1RRIxKkh.7sRX3y9Li.O6yLhpdfNYADP.PgBEPmNck6BuMQtqLOKZczybW+82erqcsKbe228Y0iOxQNR7q+5uZS2zVkJUhctych9129JzVWLGuO5i9n3e9m+ApUqtBe8OwS7DXMqYMVMFkJUhktzkVoIazQqV0pVXm6bmX26d23y9rOCu3K9h36+9uGm9zmFiXDivh00vfCNXWVbYuZQKZA14N2IFwHFQ41Z+TpTIlvDl.17l2LToRkEO2nG8nwQNxQPO6YOsp8RoPgB7xu7KiibjifHiLR6Ntdlm4Yvrm8rQDQDgEOtToRwXG6Xw4N24DpFb.HjbQyl1zlFdoW5kpzOO8HOxifSdxShANvABE2w5fle94GFyXFCN9wONpe8qucG+tZRjHAuy67N3Lm4L3G+weDScpSEexm7IXG6XGX0qd0BUikYtyeljHagPEFVMZIo1p2989X71u2Ga2utppcPS1lgO7giye9yie4W9EL8oOcLyYNSrgMrA72+8eaQKrCfGSi7bsssuKrssuKaZr+e+vBw+2O39OYzJO57.RXXiZTirpiXbmcXh6bxWMvANPQqiP8zO8Si0t10hXhIFK3wjMO...f.PRDEDUd7FzfFf0st0gIO4IWguV+82e7m+4ehm9oeZKNGdEJTfAMnAg8su8Uoc7EGIIRjf23MdCb1ydVrrksL7RuzKgO9i+Xr8sucr10tVTXgEZw3Eqi2Ksz+d1.SXHQjGBIFqjo3v4uvkbkwBQjCTbwVaHSFKhXwvV291vMSKMzit0MTiXpgXGN9z9iNZZcrou6ieeVUwfQCXk+7OCIRjfGenCyorOxHiLvoN0o.fo0Kv6LQK1pBJn.bxSdRjat4h1111BkJUZWu9qd0qhjRJITyZVSzrl0LqVi6blN7gOrPEsoPgBqRjpd85QjQFoPKKZnCcnXUqZUU466xWko0FxmXXOlCIN+k0sVnSmNL3GYfVcyUKO4kWdHkTRAW+5WG94menl0rlnQMpQ1zeGqSmNbpScJb8qecTu5UOT+5WeGxMEpfBJ.m5TmB23F2.wFarnQMpQ10ZVlQiFQVYkExM2bQfAFHTqVsEIq1L850iyblyfKdwKh3hKNzfFzfp0ZilXH0TS0h02k1111ZUxcm3DmH9u+2+qv14kWdU5MbwQ+YQhbz17V9SjgFMnW8rmHpHixtdsG6DmD..srEUdqRdXO4y..fU8SK1td+WyutNTTQEgA8HOBTDP066H8kkWd4YQ062nF0HDWbwYwX9tu66vy8bOmv16XG6.csqc0kEik2wH44qRUGU2iy3oI0abCr8ctCTiXhA8nacupeA2k94eY0PeIkfgNjg.Y94cb+T1yd1C5bm6rv1KbgKT33fm+7mGojRJnUspUH5nitbe8O9i+3BqC8gDRHH2byE..EVXg3PG5PPtb4n0st0tz0XxabiafSdxSJrcaZSarZxBN0oNUL24NWgs0nQiUmm6cxYbdraby+AxJqrP+5SefJkU99mHhbG3c7seDQVPlLYLYghnvCObbyzRCYmc1LggDUFpUqFcoKc4t98InfB5tpE9Tm5TGTm5Tm653n53G+wezhKbc0qd0XHCYHBa+a+1uYw5ahXs1lXuU4RHgDBZUqZEZUqZkcuujKWd090VYBJnfP6ZW6p1udIRj.UpTUk2XAYxjgl0rl4RZosNZ25V2xhY79C+vOL90e8WE1N6ryF+1u8aBa2m9zGVMNjGOgVRZf1eKIspRTnCCKBgpEYxjgAMnAg7xKO..z3F2XbjibDgNYfd85wO8S+jv3qcsqMRLwDEkXkHx1nWud..W+82vG43v0u90uZ2QLJuI+nqRVYkkEmCa+6e+wF1vFD1N2by0hV.a26d2qxyo2YgsjThHw1RW1J..vHepG2lFOyn.Qdg70ZGotaLuNFlU1bcLjHxRCe3CGewW7EnjRJA..ibjiD+3O9i3dtm6Am+7mGqXEqPXrMsoMEOwSXe8ZdGNdcsd0ZYKaIZUqZkv5B5u8a+F5Tm5D5V25FzoSGV25VGt7kuL.LcyNdy27MEyvkn6ZFLZPnEk4oTIvjsSgBEXXCaX36+9uG..m4LmAssssE8pW8BgFZnXyady3vG9vBi+0e8W2lphdhbG8ZubE21HuS4WZqXNXOv0tUQKggjasl1zlhNzgNfCbfC..fMtwMhDSLQz8t2cnWud7q+5uhye9yKL9YNyYJVg5sSXnAdgUDQhiea8llPELggD4CK.E9dW36b9bSsKsoN4IHxQBDVarxNmrqhQRD4qo8su8Xkqbk3IexmD5zoC4me9XMqYMXMqYMVLt92+9ikrjkTts.Shbj13F2H5Se5CNwINA..1291mEszO.fZTiZfkrjk3PpPXhDSZ0VHLZzHTnPgS83qe5G8tNs2apxM+4Oejd5oKTczImbxH4jS1hwDXfAh4Lm4fwO9wKFgHQNDsucswlG6y7b+a.3Y19RYBCoJx5W+5Qe6aeEl3aG3.GPHAhlEczQiEu3Ea0ZJoqDWCCIh7zvuwkHuP9hUX3d1aomXnsOQKcZBOrv..PNYmMLZznnsXlSD4dZHCYHHkTRAKXAK.aZSaBW5RWB5zoCpUqFsnEs.O5i9nX3Ce37XGjKQMpQMvgNzgvO+y+L9we7GwYO6YQZokFTpTIpScpC5ae6K92+6+MhJJ6asdiH2QZ0ZpJaBpZVkMS8U+O..XNex6UoiK95Fa0582daGzj0BHf.v5V25ve9m+IVzhVDN9wONt10tFBN3fQLwDC5QO5AFyXFCRHgDD6PkHxFvDFd2K5niFidziVX6lzjlXWu96+9ueDVo2iC2opxN5niF6e+6GqYMqA+vO7C3Lm4L3l27lH7vCG0oN0A8oO8AO+y+7nF0PbWlXXKIkHxSC+FWh7xHQhDHWtqawllrl+96OBJnfPAET.xuf7QHAGhXGRDQtYpScpCd629swa+1usXGJUJdSq8MHWtbL7gObL7gObwNTHxopfBLu9EV8ZGoW4JW0QFNjShDIRPe5SePe5SeD6PgH5tDSX3cuFzfFfErfETse8iabiCiabiyAFQNNxkKGO9i+33webaqM6QDQ9hd9w8b103423RjWl.BPNqJE2.gGd3nfBJ.YmcNLggDQdb32iPD4MJ+BxG.U+JLzkgyUChnpvzei2A..ev6V0quvwDsmaWBvbBC8mILjHhHpZ496QWsqwyuwkHuL9hsiT.f2bFupXGBVPYXgiTSMUjU1YgZWqZI1gCQDU8vaZMQjWj7y2TKIM3fC1oteFy3M0i7WvW+4N08CQjuqydtyayi8K+7O0IFINWEyJLjHhHxkheiKQdYTnv2Lgg2SKZlXGBVPoxvA.P1YmsHGIDQDQDQ..4med..HjpYBC+1u5yrowkEO+OhHxgPu9hA.SXHQDQjqB+FWh7x3NsHT6KSoRk..HyrxRjiDhHhHhH.f7y2TKIM3fpdILTkJkNxvwJlaGzb8ikHhL41qgg96Z1g73vDQD4k4C+j4B.fo8pSwlFOSXHQdQ72eYvO+7SrCCB.gFZnPpToHu7xC5KQOj4GObKQjmCdSqIh7FUPAtlVR5cMdnWhnpv79rOwlGaxm4b..nIMtgNqvwoQOaIoDQDQ2UN7Q9G6Z77abIxKhub0EN0WYF..XNe56KxQhIRkHEgGd3HyLyDYmc1PcDpE6PhnJkTIRgLYxfd85QgEUHTDfBwNjHaTd4YpE64H+N.4xkCsZ0hB0VHBJvfbXuuj2MyIiQtb4hbjPj0JrvBg9RJAxkKG96uysRUV9Otnp0qy7wd0VXgHnf3wd81nUqV.vDePNF0Hlns4w9el46A.fU8SK1IEMNOt50vP4xkC850CsZKD9GpKppFI2B4WfotP.OOVhHecRE6.fHxwQgObBCuxUuFtxUulXGFVPY3lZaUYw1RJ4gHpnhB..mKkTD4HgrGG6Dm...0rF0vg8dFUjQB.fyxOKP1gSeljA.PzQa62DShbUxyb6H8tn5Be7gOJ73CeTU437yO+pVc8inhz72CeN690Rt+t10uN..ToRkHGID44vPIk..3x5jRlOG3T34.6y4Tm1z4wFSzw3PeeYSCfHxSCmZaD4EQgBe2DF5NRkxvwE.PlYksXGJDYSRnIMEolZp3jIkD7yO+PCpe8gb+4LrzcjQiFQN4lCN9INAt50tFjISFZdyZtC68uIMpw37W3B3BW7BH.4xQSaRSfBErpSoxmVsZwoOSx3Lm8rPhDIn4MMAwNjHxJ4muopwNj6hDFZvny8190jF0Hb9KbdbgKdQDf7.3wd8RXvnAbyalFN1INN..ZP8pmHGQD44vfAC..PpTWS8NzzF2Db4qbEj7YOCj4uLz3F1He5N4jufBJn.bpjOMNWJmCRkJEMOAG64wZrzycPpTINz2WhHxV89uyaXWimILjHuDRjHwo2dkH6iRkkVggYyJLj7LDcTQgVcOsD+ywOF9miY5+H2exjICcoy2GBMjPbXumgFZnHw12AruCreb5yjrPkiQTkQhDIHw12dV8LjaIGQEFZy6q7LsuBID6aeEZnghD6PGv91OO1q2pZW6Zi5FWcE6vf7B7ziZ7..3G99utJGa6Zaqc1giSiqNggpToBsqMsAG7vGFmLojvISJIWx9kDeRjHAcrCcP3933nXNgglWi3IhHWsF2nFXWimILjHuDJTDfO8If7sy+yD6PvJkskjZznQe5+9g7bjPSaJTpTIN0oOEznQCzWZa.hb+DXfAhZUyZhlkPBH3fb72.73qacQngDBNwoRBomd5n3hK1guOHuC96u+H5nhBMOglgHhHBwNbHpbke9lViMuaRXnsttBNpwLA.T8VuvhONSG68jIkDtEO1qWAIRjffCNXT+5UOzzF2DdMAjCQgEVnMO1W+UdQmXj3bURoILzOWTBCA.ZXCZHBKrvQRmJIjdFY.8ktNJ58yHLZTB70NDkb4xQzQGMZdBMCpbvIKDfILjHxyCSXHQdI70aSFNiSr6tkb4xQPAEDJnfBP94mOBwAV8OD4LUyZTCG55gm6ribziBoRkhV0xVJ1ghaI0pUit2ktJ1ggSWIFJAG7PGBcrCIJ1gBQjShinkjtjE8UNpvoRoNB0na9.G6kHhpJt5JLzrniJJDcTc2ktOEam4rmAm67mGOPe6GStkCDSXHQjmFW623RD4znvGOggtqXaIkH2a27VogSk7owktxkE6PgDIEWbwXG6bm3BW7hrRdHxK1saIobBbQD44yO+7C94mehcX3zIVILzWSw5KFm7TmB4jSN3ZW+5hc33UwXoeFlILjHRrLgW3kwDdgW1lGOqvPh7RDP.xE6PfJGpBWIt90uNxLqrPcpccD6vgHpLJRWQHqrLkL+CbfCfvBML2xpUlbdJrvBw124NPlk94.sEVHWOfIxKTIFJAETPAPhDI2UUXnspF0HFm99fHx21x+wEYyicKac6..nW8zyqh4XBCcMR9LmAEUTQ..HoSeJTmZWaQNh7db6JLjeFlHRbj1sR2tFOSXHQdA72e+8IlcgUlGa3iB..q7+66E4HwRBUXXVrBCIxcSZocKg+r9RJA6Z26B8s28wmuEO6qH27xCaeGaWnpi.Lk.wvBMTQLpHhbFxOu7gQiFQvAG7c0Mc95odC..TqZV4ss64M2OtZuOHhHGsu9aMcMxLggT4onhJBmN4jE1ViFM3locSDSzbxu3HvVRJQjmF9MtD4EfsiTSmDl4SDychRkgC.frxNaQNRHhtSocqzrX67Kn.r68tGgaLA48JyLyD+4esEKRVHfoDFRD48I27Ls9EF5c45I8jm5qiIO0W2QDRDQDUELX71sxQlrEmmSc5SC850awikzoNkHEMdeLT58oRJ+LLQjGBVggD4EPgBlvP2UgDbHPlLYH+7yGEWbwrU2QjajalVZV8XokVZ3nG6ePaacaDgHhbEtwMuI10euaqtwH..EVDSXHQdixKubA.PnrBhIh7RjQFZ..fZ0QHxQhyi4Iwmer5BcZJPaA3Lm6rV832LszfFMZPDQ3894KWEgpj0O94XhHwwR+t4aWimILjHu.r84ADbvAI1gP4RhDIH7vCGYjQFHyrxBQGUThcHQDASURVN4jS49bm4rmEpTpB0K93csAE4zc4qbEr28uuJrJRYEFRj2IGUEFZqNcxmA..MsIM1kr+Hh78L9INU..rpeZwU4XG3C+fN4nw4P370XkY4zbxjRpBOu3jN8oPW5784hiHuO2Nw291KiPDQhm.CLP6Z7LggD4gSpTIve+4+TdwK7qD6PnBoLbkHiLx.YkMSXHQtKR6V2pRe9CbnChvCKLNqZ8hblydVb3idjJcLLggD4cJ2bMUgggDxcWEF13F0PaZbuwa8A.v1tQ9DQjy1HF9iI1gP0BW+BctxM2bw4uvEpvm+pW6ZHmbxAgEVXtvnx6SIkTB.3miIh7bvrLPjGt.BPA6m+t4TYdcLLqrD4HgHxrxqcjVVFLX.67u2M5Wu6CTnPgKJpHmkjO6YvQN5QqxwwDFRj2IgJLLz6tJL78em+iiHbHhHxFXz7Z+FSzhSwwO4ID9cbE4TIeZzwNjnKJh7NwDeSDI1zoSG..jKWtMMddzJh7voH.a6erShGkJUB.lvPhbmj1sp7DFBXJ4Qm7TmxEDMjyViZXCQWuutfZWqZUoSxFsLggD40ojRJAETPAPhDIH3fBVrCGhHxgH95FGhutwI1gA4gJyrxDW9JWoJG2EuzkP9ETfKHh7dwDFRDI1dp+0XwS8uFqMOdVggD4gSgBt9EB.bsqmJ..pcspoHGIVSY3lRXXN4jCLXz.jJgmnHQhIsZ0Jzd5tS0o10FpUqFpiPMhPkJHSFOUIuARkHE0tV0B0tV0BZKTKR47mGm3jmzpwUDSXHQdcxKeSUWXvAGrK6l00910FWx9gHx20m9QuiMO1E+C+D..dlm9IcVgiyQkW7azcgTN+EPPAEDLXvfv+oWudqFmQiFQxmIYz1VyuWq5vbxBkHQB6LXDQdL3cAiHObAD.SXH.vK9RSC.tmqULxjICgEZnHmbyE4jSNBIPjHRbbyakFj4mePoRkPsZ0HR0pw9NvAfd85Q6ZSas6EDZxyRfJBDApvzeGqL7vgRkJwUu5Ug9RJAEVTQhbzQD4nkatk1NRC4tqcjB.r+CbH..jXGZWkNtW6km7c89hHhbT9e+9l.fGXBCIml1211Bf1JrsQiFwJ94UA.fGanCEFLX.FMXzz+mYtsZqDClV+B8iUWHQjGDlvPh7fIWt+rsF3gPkJUHmbyEYlYlLggDIxpYL0.CYPC1hielx4OOtwMuIROiLPr0oNhXzQtBW3hW...MowMA0K93gtV2FboKeYjxENOzoSmM2a+Ihb+kSt4..fvBMr652qOcNyC.tmSPMhHhnpKCFucayTpDoPpeRA7SjCJu.FJozeu5G+kIQj3IhHTYWimILjHOXJX0E5wPkJU3RW9xPSlYg5EuXGMD4aq7pLa0pUWZBCSmILzKWt4lKROiLfLYxD96Z4xkiF0vFhF0vFJxQGQjiVN4XpETGVXgJxQBQD43bzicB..z5V1BQNRHuAFMXpJBkx1loCk9RJsBCYBCIhDQey+ct103YBCIxCFaGo2VSZbiD6PnRoRooYyQlYkoHGIDQkmHUGI..xHiLD4Hgb1NeoUWXr0IVtFURjO.gJLLr69JLzVs4srM..zmd0CW19jHx2x6+gyB.1VEOOgmeLN4ng7zIrV6wNXkCUIkXZcgTFSXHQjGDdWRHxClBELggl8du8LD6PnRoRko1PZVYkELZzHWvqIxMiZ0Q...MYlIJwPIvOo7h57FYznQbwKcI..T+5EunFKDQtF4jiiqkjd+8ra1z391EtX.vDFRD4dnGc69D6PfbyYNggbIuwwpD8kVggbRJRD4AgGwhHOTRkJE96u+hcXP1H49KGgDRHHu7xC4lattzY4NQTUSt+xQXgEFxImbPlYlEhTsZwNjHmfabyaBsZ0hPBIDDUjQI1gCQjSVAZK.50qGADP.NjNywyO1m0ADUDQDQtWXBCcNL2RRYEFRDIlN+EtH.r8IMMSXHQdnX0E54QkRUHu7xCZxJSlvPhbCEo5HQN4jCROizYBC8RcgRaGo0K93E2.gHxkPX8KLTt9ERD4c495bmD6Pf7hvDF5bXtkjx0vPhHwzqM82B.1VaLGfILjHOVJ35WnE129OD..5XhsSjijJlJUJwUt5UPlYlIhOt5J1gCQzcHR0pw4uv4Q5bcLzqjNc5vUu10..P70MdwMXHhbIDZGot3Ip0fF3.bo6OhHeOu3jFuMO12+ilM..lwq+RNqvg7vwDF5bnmsjThHOP7HVD4gxQzVk7lLq4NO.X6yVBwPDpTA.fLyLSQNRHhJOQFoopJLClvPuRW5JWFFLX.0HlXPvAEjXGNDQt.4jqiMggqds+F..dzA8vU53dpmXXNj8GQD4Hbz+43hcHPt4XBCcNLWggrkjRD4IgILjHOTADfbwNDH6jJkklvvrxBFMZDRjHQjiHhnxJzPBExkKGZ0pE4WP9H3fBVrCIxA5BW7h.fsiTh7kHTggg5XRX3xWwpAPUmvPhHhb.3kK6xXvHSXnyfvZXHqvPhHQTKumlaWimGwhHOPxkKmmHmGn.BH.DTPAgBJn.jW94iPCIDwNjHXpMEd7SdRb0qcUnUqVwNb7I3u+9iHiLRzzF2XDSzwH1gi.IRj.0pUiTSMUjd5YffiiILzaQ14jMznQC72e+QcpccD6vgHxEIaQpkjRDQNaq+22D..dnGrehbj37HUho64g4peibdXEF5bnu3RqvPlvPhHQzaL8WwtFOOhEQdfTnfsiz6Tut+tK1gfMQkRknfBJ.YlYlLggtAJt3hwet0+RnBDHWihKtXjZpohTSMUzrDR.srE2iXGRBhzbBCyHcT23hSrCGxAwb0EFWrwB+XKAhHeBEUTQnnhJBxjICAEXftz882uz+O..LpQNbW59kHx2wR9geB.1VBC+v2alN6vwovbxqXBCc9XBCcNJVew..veY9KxQBQDY6XBCIxCjBt9EZkwOlQI1gfMQkJU3ZW+5HyLyDwEarhc33y6TIeZjSN4fPCMTzoNjHToREuHIW.sEpEmKkTvoN8oQRm5TPY3Jca92CQpNR..jd5oKxQB4nXznQboKeY..DeciWbCFhHWlrxNa.Xp5BcTsA9Q9zOoMMteeC+A.XBCIhbOzvFTOwNDpVXBCccLXvH..jxkMEGJgJLzed62Ih7bviXQjGn.XBC8XEgpH..PlYkoHGID.vUt5UA.P6aaagZ0pE4nw2QfJBD2SyaATnPANzgOLN8YR1sIggpiHBHQhDjU1Yih0WLmMndAtYZoAsZ0hPBNXDUjQJ1gCQjKR1klvPkgGtC687g8ha8eDQj6FlvPWGVggNGrBCIhbGr8c92..n6csy1z3YBCIxCie9IE9yYmjGKUpTB..MYxDF5NHu7xC..pifIKTLTu5FONzgOLxJqrD6PQfLYxfJUpfFMZPFYnA0HF2m0XQp54hW5R.fUWHQ9ZxRHggJE4HgHhb7dhGaHhcH3zIQhDHQhDXznQXvnAg0zPxwiILz4nXVggDQtA9xu5aA.SXHQdsTDfBwNDbKs507q..3QG7iHxQRkKPEABEJTfBKrPjeA4ifCJXwNj7YYvnAXznQHQhDtHjKRL+6c2sYMbTpiDZznAomd5Lggd3zqWOt50LUIw0st0UjiFhHWory1zjQIbGXEFZql3+drt78IQjuE645de9INU..L+ubNNqvwowOoRg9RJAFLX.R8iIyxY41ILjq02NR5YEFRD4Ah2gTh7vDfB1NRKOKek+B.b+SXHfo0wvTSMUjYlYxDFJhLZzz5zfiZcMh7dDYjQhjO6YP5Yv0wPOcW8ZWC50qGQpVMBMjPD6vgHxEwnQiH6bxA.N1VR5m+keC..l7DGWkNNac16RDQtBomgFwNDp9J8Z0LZvH.ykkSysSXHu1XGoh0apBCYWBiHxSBmdND4gQQ.xE6PftKEgRU.fskTwl4DFxE1c5NYdctK8Lx.FL5dU8ij84hW5h..HdVcgD4SI+7yG50qGJTnvgt1euqcuGrqcuGG16GQDQUNtNF5ZvVRpyQwEapBCkwJLjHRD8fOPewC9.80lGOmhCD4gQtbVggd5hHhRSXnFO3Y5oW.yILDLggzcPgBEHjfCF4ke9H6rxFpToRrCIpZPqVs3lokFjJUJhK13D6vgHxE51qegt91QJQD4J70K36A.v3GynD4Hw4hILz0fILz4vbBC82elvPhHwynF4vsqwyDFRjGj.BPNaQDUf+0S+jhcHXyhPUD.fUXnXisjTpxDYjQg7xOebqLRmILzC0kt7kgQiFQsqUsfb4r57IxWR1BILTonr+e2O3SA.vaL8WQT1+DQd+1xesc.XaIL7GW723rCGmF+JMAVkvDF5TYtqpvDF5XoSmN..HWNSXHQjmClvPh7fnvA1Rk717POX+D6PvlEXfAh.CLPnUqVjWd4gP35pknfILjpLQEoZbwKcQjd5oiF2vFI1gCUMb61QZ7hZbPD45YtBCC2AWggy30eIaZbG63mzgteIhn6FNxVyrqljRSfkQlvPmJVggNdFMZjUXHQjGIlvPh7fDfBO2SzmrTDpTgqoUKxHSMLgghDlvPpxDYoqig2J8zE4HgpNxJqrPVYmMjKWNpYMqgXGNDQtXYkcV..PoRGaBCacqtGG56GQDQUN1RRcMXBCc7JaxBkJg+dkHR7rrkuJ..7TOwvrowyDFRjGDVggdOhHhHv0t90gFMZPc4ZqknfILjpLgEZXPtb4PqVsH+BxGAGTvhcHQ1gKd4KA.f3hMV3mT+D4ngHxURud8H2byERjHAgEZXhc3PDQNEu7TljMO1BKrH..nvCbBH6melNON8kThHGId2DRXHSrkCiNVcgDQtIV659e.fILjHuNx7yOHSF+mrUjOadeM..dwIMdQNRrMpiPM..znQiHGI9tXBCoJiDIRPjpUiqmZp3V25VH35xDF5ovnQi3xW9x..ntwUWQNZHhb0LWcggGVXB2nYWsO9CdKQY+RD46niI1NadrO8nFG..V0OsXmTz37X9dfnWudQNR7twJLzwqXg0uPtVpSD4YgeS.QdHX6Hsxs6+duX2+8dE6vvlEgJU..HyrxRHwUjqESXHUUhJpn..aKodZtU5oiBzpEAGTPHR0pE6vgHxEKyLMkvPUkdtVNRuxzdS7JS6MqxwU+5EOpe8h2gu+IhHeMxJcheTRILggNSLggNd5JtzDFxJLjHxCCKWIh7Pv1Qp2E4xkiPBIDjWd4gbxIGDd3N10XGppwDFRUknhrzDFdqaIxQBYOtj41QZbww+8MQ9fxLqLA.fJkN9DFdwKdYG96IQDQULYxLkrkhYEF5TYzfoqMVpTdtyNJ5zUZKIkUXHQjHari9YrqwyDFRjGBVggdeTGQDHu7xCYnQCSXnHfILjpJQnREj4meHmbyEEUTQH.NwMb6YvfAbkqdU..T2335CKQ9hxLyRSXnJkhbjPDQNO+mY99..38d6YTkiMxH8b63BxjUZEFxDF5TUBqvPGNc5Ls1gF.SXHG5Cml...H.jDQAQEQjHqO8pG103YBCIxCfDI7jLpJyXZurXGB1sHTEAtzkuLzjoFT+5UOwNb74TcRX3UtxUDtQj..srkszlesYjQF3ZW6ZBa2nF0HDXfAZyudawIO4IQIkTB..BKrvP7wGuC882WiToRQDpUizRKMbqzSG0o10VrCIpJbiadCnSmNDdXgAkgyjEPjuFCFLfryIG..nTo3cLfwMgo..fu4+NWQKFHh7tk7YNqMO14OuY6DiDmqauFFVhHGId2XKI0wqnhL0RRCPNmzoDQdVXBCIxCP.xCfUAUUn0srEhcHX2hHhH..PFZzHxQhuopSBCey27MwhW7hAfoKlxbx4rEKe4KGSbhSTX6Ce3Ci1zl1Hr8Uu5UEhofCNXgOeTVW4JWQ3OGRHgX05yTO5QOP5ktd68HOxif0st0YywGU9hJxHMkvvacKlvPO.W5xlZWf0Mt5JxQBQjXH6bxFFLX.gFRHveYN90Ln4+k11McWilLq5AQDQTU51ILjUXnyDSXniWQkVggxCfS9ehHOK7aBHxC.aGodmToTIjHQBxN6rQIF3LlzUycqkjFe7wi3hKNDWbwgoLkoX0yqSmNgmOt3hCSe5SWDhReOlWGCSKctNF5tSud8BUwabrcjRjOoa2NRc7qeg..QpVMhTsmaq8iHh7zHyuRSXXILggNSlSXnDlvPGlhJpzVRJWVKHhDYe7r9b7wy5ys4wyJLjHO.J3IX3URlLYHrvBCYmc1HqrxFpKmJJibdb0ILL5niFsu8sWX6fBJHG99n0st0HqrxB..MrgMzg+96KJR0pgDIRPVYkEJVewNkJVgbLt10uFzWRIHR0pQHAGrXGNDQhfLK86.Uoz4jvPhHxcwmM6OzlG64R47..ngMn9NqvwogUXnqgAilRXneLggNLBILjsjThHQ1AOzQrqwyDFRjG.NijpZuxq+l..3S+n2QjiD6i5Hh.Ymc1PiFMLggtXt5DFNrgMLLrgMLm59XyadyN02eeQxjICpToBZznAYjQFnFwTCwNjnJvsaGor5BIxWkytBCsUKaIeqnt+Ih79U6ZUSadrS6+X5ZjW0OsXmTz37HSle.fILzYisjTGuhzU5ZXHuedDQdXXBCIxMmLYxDNIYphcwKcYwNDpVhPUD37W3BPSlbcLzUyQkvPiFMhjRJIrsssMXvfAz7l2bz912dDVXgYw3xLyLQpolpv10u90GRjHAojRJV8dlUVYgjRJI..DSLwfadyahhKtXqd+LOl3iOdDTPAgjSNYg0UwPCMTDarwB.fLxHCbyadSgedSHgD..PxImL18t2MxLyLQyZVyP6ZW6PzQGcE9ypNc5vQNxQvd26dQPAED5XG6HZQKZAJojRvYO6YEFWrwFKBMzPsseA5AH5H++Yu663jyxx0G3WSa2Y2otSaaY2jPJjBQ5kbNTDQHQEAOpvQADkxAQPPIgNBV3fbPJJHUAET7PnXCN5OLdNeTDASnHEARuu0o2mcm56u+XJIKIYyL6Ny779Ny02+hYyS14hjMyLuu2O22ONQf.AfWu9XACkoRlJIFYzQgJUpJ8y8DQMWxIkqTW12gUq0jmiu3W5hA.vpdxGaRWWKsvyqHhHpZPSoNLjGgG0RREGIopXACqV18HIkel.hHkEVvPhj433HswlsBcUn+.rfg0aUiBFlJUJ7E+heQ7a9M+lI706s2dwpV0pvIbBmPou1S8TOE95e8udoG+Vu0aAc5zgkrjkrWeeegW3EvK7Bu...tu669vUdkW4dslm4YdF7LOyy..fW9keYbBmvIfi+3Od3ymO..bFmwYfm+4ed..7DOwSfq9puZ..nQiFjHQBbdm24gm64dtI78znQi3QdjGAmy4bN60y2q9puJ9betOWoBOVzYbFmAti63NvhW7hK80d9m+4wYbFmwd88PoxoSGXCaZi7bLTFavAGDRRRnqt5B5aUuniCQj.DIbDjIaVXvfgZ1t4mc3BQDUeoqTACSe.VIMcvNLr5iijThH4ha86biUz5YACIRlqU87CWzHypEKPsZ0HRjH77QqNa5VvPIIIbFmwYfUu5UuW+ZCMzP3zO8SGCN3fxtNsaxxcrXwv4dtmKNzC8PmPA.ewW7Ewm4y7YPpBiUk8zK7Bu.Fd3gqoYVzb3vA.x2olYylEZzvt9VtYWCL...5mcWHQMs7WXZMHGFw6iM1X..ns1ZSvIgHpQ0W4huL..7DO1Cd.W6gcn68FTTofmgg0GrfgUWYykEYxjApToB5zw6wCQjXsfCd9Uz5YACIRlicXX44gu+6QzQXJQsZ0vpUqHPf.HXvfvky8+3fjptpFELb0qd037O+yGm3Idhvue+3ttq6Bd8luKzhDIBdxm7IwkcYW1986wrm8rwe4u7W..vobJmRoKT6zNsSC2vMbC.H+nKcIKYIHc5z3zNsSqzu2y3LNCbUW0UA.fOxG4iT14NWtbX0qd0XYKaY3y7Y9LHc5z3gdnGBqe8quzZdfG3AvC9f4u4CYylEqbkqbBEK7q+0+53zO8SGd85EO5i9n3ke4Wtre9UhZskVgEKVP3vgg+.AfKmNEcjn8v3IGGd75EpUqFynmdEcbHhDj.ElVC1pgELrb+b4m+E90.fx77BiHRYHd7Dk8Zuoqek0vjTaoSW9w4XpzrCCqkxV35P0vBFVUjb77cWnd85m1GAJDQT8FKXHQxXpToBszB2MRkC61E+tIepxtMaHPf.EJDAKXX8R0XjjtxUtRbW20cU5wGwQbD3TO0Sszieu268lze+FLX.ezO5GcuxQWc0UouN.P+82+d0ce8zSOSXMUhku7kiW7EewRO9y9Y+rXlyblkN+C2yb+a+s+1ITLwa7FuQba21sU5wm0YcV33O9iGu4a9lSornT3xoSDNbX3wqGVvPYlhiizt6pKdtgQTSrhi28ZYGF9jOwiTy9dSDQzdq38CI89XRmPUOkNCCYACqJFe7wA.a..hHkI9NADIi0ZqsvciTS.67bLTHJVvP0Si+M1EdgW3Dd7G6i8wlvHGYzQGcJ+8tV5BtfKXBOt2d6EGxgbHkd7dl68rPfpToBqXEqXB+das0VmztnrQQwh4WrCRI4ihiiz933HknlVYxlAgCGFpToBcXsCQGGhHplSkJUME2qfVXGFVWvQRZ003IKTvP87rUmHR7thq55vUbUWWYud1ggDIiwciTyA61sCf7mOZT8SwBFhowEZ2e+8OgGqVsZX2t8REbKd73S4u20Re3bC.3bO5Zt8L2abiarz+sKWtJ8yq6o8rXiMpJ1Ug986G4xkiWLsLw3iywQJQDPvfgfjjDrZwRoy6JQxkSGhNBDQM3d1m5wK609W9quB..N4S53qUwolo3lwLc5zPRRponHohvtKXH+y2pgRcXHKXHQjLvni5thVu3uZJhn8K85YACKWegy6h..vS+K+oBNIUNSFMgVZoEL1XigDik.s2V6hNRMEltijT0pUCiFMtWe887FUJWufVKVrrWes8WtKNlRA1ihr9gzVasUESm7Tqs1JLa1LhDIB7GH.b5f2LX4fAFLe2E1cWcMgt6kHp4xtO+B26M0R0ja2d..PmcN4iP9G39tqI8WmHhpmdvG9w.fxrfgpToB5zoCoSmFoSmlie9ZjbEm9NbSQVULFKXHQjBFem.hjwZkcXXYKa1rSnvFJM6tKC4XIsdoZbFFVtOGJM6Ytm0rlUo+aud8tO6D187LNrQVwtLziWOBNITQbbjRDArmmeg01wQ5W+ads3q+Mu1Z5yAQDQSTwhD9gOS2opGNRRqtFe7j..PeqrfgDQJO7cBHRlRmVsPiFMhNFTchCabrjVuUOJX3TUwKXa5tlpgEtvEV5+VRRBOxi7HS3WOa1r3du26stjEQimigxKiM1XvqOePsZ0n2t6QzwgHRfBDH+mepV2ggDQjbQvPgPvPgDcLpKZovTjHUZVvvZkRELTEuMwUCIKcFFxl.fHR7d7G8Avi+nOPYudNRRIRlpU9AKpHJ8Q8fc61..fu.rfg0Kx4BF9du26UUVS0v4dtmKtwa7FQnB2Pha9luYjMaV7o+zeZ3ymObO2y8fW8Ue05RVDshcXnOdNFJKTZbj1c2bbjRTSrjIShXwiCsZz.KVLK53..fMs4sB.f4Ou4H3jPD0n5R9ZeS..7bq5INfq8z+TKuFmlZqc2ggoEbRZbwNLr5hijThH4DiFMTQqmuS.QxT543Hsh7jO9Cim7weXQGioLa1xWvvPACV25brlckNmFjIELrmd1cGR8tu66h4Lm4fku7kiW60dM.j+BkKN5ZA.VyZVCl+7mOV9xWNdm24cpY4xrYy3Zu1cO90xkKGtka4Vvge3GNN0S8TwK9huXSy3fTud8vjISHSlLHXvfhNNM8JNNR6uI4m+Hh127UX5LzgMa07NiXtyY1XtyY1Gv0cS2xsha5Vt0ZZVHhnx0W979B3KedeAQGioLcbjjVyIwBFVUM9XiA.f1z2lfSBQDU436DPjLEGcAMWZQWKvrYyHS1rHT3liQKinI25vvO1G6iMgGusssMr5Uu5Rc129ZMadyaFqd0qFQiFsllsa3FtAbe228AsZ26ASvIbBm.d9m+4qoO+xIE6xP27bLTnRLVB3yuenUiFNNRIpImO+9..fC609wQ5s+e9sws+e9sq4OODQDsasnqPAC4HIslIKKXXU0XEKXXarfgDQhW1rYQ1rYK60yQRJQxPpTohiWslP1sYGQhDA98G.15vlniSCO4VACefG3AfjjD9M+leChEK19bMO1i8XPqVs34e9mGIRjntluq3JtBblm4Yh0t10h+w+3e.ylMii63NNb7G+wi2+8e+IrVCFprwcfRhKmtvV211fGOdvhVvBOv+FnZhAGZH..zUWcsOKjMQTyihcXnC6NDbRHhn5m9lQuhNB0MszRgyvP1gg0DRRRkt1XVvvouzoSiLYyBsZ0x6qGQjrvW37tH.Tdiwb.VvPhjkz2ZqxlhXnTLp67c6SWc5RvIYpygcaX66X6ve.+XdXthNNM7lJEL7we7GGO9i+3S5ZFnvXR7C6xu7KGW9ke462eeFLX.+7e9OG+re1OCACFDIRj.FLXnz3pEH+3A8odpmBYylEABD.iM1XvnQikViWud2meuW4JWIV4JW4jl6W7Eew84W2ue+SXjmdRmzIgy9rO6IrlUu5UOgG2e+8OoOWJYc5J+qw3ymOdNFJPCN3f..XF8NCAmDhHQJWtbHXf..n9zggkqi3vOTQGAhnFb2ycdak8Zexm5YA.vW5bN6CvJkmJdFFllmgg0D4jX2EVMkfcWHQjBGKXHQxPsxwQZE6J9l4Oi0J2cKgbTwymth6Tdp1Rt0ggEoQiF3vwj2kDZznANKLZLq0xjICNsS6zJc1ZdrG6whW4UdkRc003iON9U+peUo0ujkrDL2413Vva850CylMmuafCD.NO.+cEU8kLYR30mOnVsZzSOcK53PDIPgBEBYxlElLYBsVGN+uey2J+Fn4nNhCaRW2MbsWUMOKDQT45E9e9+A.EbACKLRRSxNLrln304oVlccwJUkFGo50K3jPDQSMrfgDICouNbCOH4GKls.sZ0hXwhgjISVWtwWMyjqELTtoyN6DKaYKqTGH9Zu1qgi5nNJbxm7ICsZ0h+ve3Of0u90WZ82xsbKM7+YpKmtPjHQfGudXACEfAGdHHIIgt5ryR2.IhnlS0yyuP.f63N+Q.PYuA0HhHkF8EJ7RxjiK3jzXRJWgqKlcXXUwtO+BaWvIgHhxypEKUz5YACIRFhEJp4jJUpfMa1fGOdf+.APOcyNmoVhELr78zO8SiO0m5SgW4UdE..7tu66h28ce2IrFKVrfG4QdD74+7edQDw5pNc4BaYqaAd73AKdgKRzwooSowQ5L33Hknlcd8wyuPhnlSu26uN..rjCow+yhV79iLdxjBNIMlJ0ggrfgUE6tfgrCCIhjGdzG9dqn0yBFRjLiNc5fFM7CpUol2bOHQGgpB6EKXne+rfg0XrfgkOylMiW5kdI76+8+d7DOwSf0u90iQFYDX1rYzc2ciS4TNEboW5khYNyYJ5nVW3pv3f0ue+Ha1rPiFMBNQMORkNEb6wCToRElQO8J53PDIXk5vPGxmyuP.f+7K82..vG6idBBNIDQMp9d21O..kWGOeoWxEViSSsk9BGYKiON6vvZgrrfgUUiMd9BF1NOCCIhTnXACIRlgiizolu+sdKhNBUEEGoV9CvywvZMVvvJiFMZvYdlmINyy7LEcTDtVasUXwhEDNbX3Ofe3xoKQGolFCO7HHWtbvkSmra7IpIW7DIvXiMFzoSGLaxbc447jNwiurV2C8H+T.vBFRDIObJm7IJ5HLsnu0hijT1gg0BRrfgUUIRj..bjjRDobwBFRjLSwcOG0bxtshELL.jjjXwrpgXACooiNc4BgCGFt83gELrNZfgxONR6iiiThZ5smmeg0q2K+q+0t35xyCQDQ6lNc5fZ0pQlLYPlLYfVs7VYVMwQRZ0UwBF1d6rfgDQxC6XmC..fYMy9Jq0y2MfHYF1wDM2zqWOLXv.RmNMhDMhniSCMVvPZ5nSW4KRnGOdDbRZdjISF3dzQA.vL5kELjnlcd8VbbjxyuPhnlOK83NZrzi6nEcLpazqOeWFxywvpOVvvpq3EJXnAVvPhHYhq45uYbMW+MW1qmaKGhjQTqVMzoi+yxoh27e71..3nNxCWvIY5ytM6Hd73vue+vhYKhNNMrXACooCmNJbNFFH.xjMCzpgu1cs1HiNJxjMKra2NZimIHD0zyq27aXC4XWd+oO8Ogni.QTCtU7Mt7xds29O3GB.fa3ZupZUbp4Zs0VQhDIPxjiCiFLH53zPImDKXX0RlrYPpTofZ0pYy.PDoXw6tEQxHs1Zqr3ESQ2wccu.n7Nz2k6bX2F10.6B97G.GzrOHQGmFVrfgzzQKszB5niNPvfAgOe9QWc1oniTCuAGZH..Lid6UvIgHRzRlLIBGIBzpQCrYqi51y6u6E9C..3ybFepIccm+49uWOhCQDUVdq29cEcDl1J0ggiyNLrZicXX0ShDiA.f1aqMdeFHhTrXACIRFQeqsH5HPx.1sW3bLrvYyCUavBFRSWc5xEBFLHb6wMKXXMVtb4vviLL..lQOrfgD0ryqu7eFIa1rAMp0T2dd+uW0yAfCbACIhHp5Regt0Z7jiK3jz3oTAC40EOswyuPhH4nCYwKrhVOKXHQxH50yQV.Azg0NfVMZP3HQPpzoPK5XgjqEzoUG.x2kBjXL1X42Al5zoSvIYpoSWchMrwMhQc6FG5RDcZZr40mOjNcZX1jIXxjIQGGhHAySgwQpSmNEbRHhHw3EW8+G..9DK6iK3jTenu07cXXR1ggUc4xkeizxNLb5KQh3..n814XykHR93a+sttJZ8rfgDIivYb9T2G8jNdQGgpF0pUiN5nC30mO32uezcWcK5H0PxQgN4bfAGDejkrDVXVAXCabi..vkB8F95zoCnVsZDLXPjJUJzRK7mgpUFZ37iizdY2ERDA.ud8B.444WH.vu3W9z..37OuuffSBQTipe1S7KAP4Uvva668sp0wolq3lqlcXX0GGIoUOwK0gg77VmHR4hELjHYhVZQG+.ZSCW9kdwhNBUUNb3.d84Cd84iELrFwtc6vYg+b9kd4WFG0QbjnCqV4HJsNHdh3XCabiXyaYKPkJUXwKZwhNRSIZ0nENraGd75Ed75Ayn2YH5H0vZngyONR6s2dDbRHhDsToSgfgBA0pUC61sUWetOuy4rKq08+7G9i.fELjHRdX9yathNBSas1JOCCqUXACqdJNRRMvQRJQjBFKXHQxD5Y2ER6AmNbf0C.e98K5nzP63N1iE+4W5kPf.Ave5+6+UzwooiJUpvwdzGMr0QGhNJSYc5pS3wqWLpa2rfg0HgBGBwiGGs1ZqvtM6hNNDQBlOe4+rQ15nCnUS88xYOyO8mrt97QDQTd50WrfgiI3jz3gELr5Id77ijTCFLJ3jPDQ61q72WK..N9+kiqrVOKXHQxDbbjR6I6EFWlA76G4jxA0p3GduVvP6Fvo8w+3Xcqe8XfAGrzNBT1RB.M.M.YKszB5zUmXwKbgvpUqhNNSKc1oK7de.faOdDcTZXUp6B6oG1AvDQkN+BkqiiThHpd3r9beFQGg5p1aK+HdLwXrfgUarfgUO6tfg7LLjHR93d+wOL.XACIRwo3L4mlZ9suve...+amwmRvIo5n0VZElMYBQhFEgBEB15n9NxsZlzZKshC+POLb3G5gI5nLoRkNEV8+6+KNti4XgSGNDcbnBr0gMnUqVDMZTjXrDn8133moZang34WHQztU77KzoL97u8xtzKRzQfHpA2Y+4K+BFd4eiqA..Ov8dm0p3Ty0VgBFNNKXXUWNIVvvpgb4xUpf1bjjRDojw2MfHY.0pUCc5zI5Xnn8Tq54vSspmSzwnpxQghBUbzaQM2d827MQ73wwHiLhniBsGTqVMbU3lV61saAmlFOiM1XHPvfPqFMnyNY2DQTytzoSi.ACBUpTAGNp+in36+gdTb+Ozid.W2IeRm.N4S5DpCIhHhNv73wK73wqniwzhNc5fVsZQlrYQpToDcbZnvNLr5HwXIfjjDZu814eVRDonwWAiHY.1cgz9hC6EJXneeBNIjns4srEL3fCB.fgGYXAmF5CqyN6D.brjVKTbbj1YmcV2OqxHhje75yKjjjfca1fNs0+Ma2e8keU7We4Wst+7RDQzdNVRk4GiDJLEKXnJdLnLsTZbjxtKjHRlYYm1ofkcZmRYuddmWHRFPOO+Bo8gh6bde9XACalELXP71u66T5wgBGFIRj.syKDQ1nKW4KX3nrCCq5FZ3Biizd43HkHBvs67aLiNK75tDQTypexO8mC.fK4h9xBNI0Os2d6HRznXrwFCVsnrOGzkSjJTvPMrq3lVhU57KznfSBQDMQW7E7kpn0yBFRjLPqrfgSam249uK5HT0Y1jYzRKsfDiMFhmHA2oZMgRmNMd00tlR65yhFdjQvbmybDTpnOLKVr.850iwGebDNbXXwhEQGoFBYxloTWa1SWcK3zPDIGLpm7aLC49HJ96eG2C..twqaEBNIDQMp9e++9K.n7JX3O+m9P053TWT7bLLQBdNFVMkkijzphhcXnQCFDbRHhnoGVvPhjAZs0VDcDT7NyS+SH5HTS3vgCL7vCCe97AC82uniCUm8F+i2DwhEau95COxvrfgxLc0YmXG6bmXT2tYACqRb61CxkKGrYyFzqWuniCQjfUbSYnUiFX2d8+7KD.35uluYYst29c9m03jPDQku1auMQGgph13HIslnzHIUsJAmDksXwJ1ggrfgDQJab6iPjf0RKsvcxEse4nvMDimigMe1x11J10.CrO+073wCxlMacNQzjo34X3ntGUvIowwHiNB..5oa1cgDQ.t8luiic3vAznViPxvQdDGFNxi3vDxyMQD0rq81xOwcFaL1ggUSR4j..6vvoqXwyuQeMZjijThH4km9Y+M3oe1eSYud1ggDIX50ywQJs+4zgC.vywvlMgBEBu0a+162e8LYyB2d7vBoHizUgBF50qWjMWVgcyrajL7HEJXHGGoDQfmegDQzd5p9FWVYu1zoSC..c5zUqhScQwNkLAKXXUUNNRRqJJNYfLwBFRDIy7q+su...9Bm8msrVOKXHQBldd9EVU7ieveB..thK6RDbRptr0gMnVsZDJbXjISFnUKeY6FcoyruO2B+vFdjQXACkQZSeavhEKHb3vvmO+nSWx6yWK4tPgCiDIR.850iN5nCQGGhHY.2JjyuP.fu+sdKhNBDQM39WNtiorW64b9+G..34V0STiRS8QwQRJ6vvpKVvvouToRgToRAsZ0xiRAhHEO9tADIXsxBFVU7x+s+Nd4+1eWzwnpSiFMnCqVgjjD7GvuniCUG7Vu8ainQid.W2HiLbcHMTknKNVRqZFoP2E1cWcAUp34oBQM6hEOFhGONzoSG5vp31DAW+M8cw0eSe2C35l2bOHLu4dP0gDQDQMOJNRRSjfmggUS4jXACmthFiiiThnFGrUUHRfznQCzoi+yPZx4vgC3OP.30mONFtZBbTGwQh4Ou4gPgBiPgCgcMv.6ycQa7DIP3vggEKVDPJo8kt5rKrwMsILpa23PWhnSix1vEJHdOc2ifSBQjbvtGGotD5lHXqaa6B64lHhZ10ZqsB0pUizoSyouSUD6vvouXwxugeYACIhjit3K77qn0y2ckHAp0VaQzQfT.bX2A1H1D74mcXXyf7cUZGnCqcfzYRiMtoMAUpTgO1I8QQ1b4P3vgPnvgQnPgfaOtYACkQb5zATqVMBFLHRlLI6f7onToRAe98CUpTUpqMIhZtMp6BiiTtwoHhH..7s+d2N..9t2xMb.WqsNrVqiScS6s0FhEONRLVBX1jYQGmFBkJXnJVvvopn77KjHRFaYm5GqhVOKXHQBDms4UO2v0dUhNB0LNbXG..986GRRRb770DIb3H..vhEKvoSm..r.JxXZ0nENc3.t83At83A82WehNRJRi51MjjjfKmNgNc5DcbHhDLIIoRmegc0UWBNMkmK6JtZ..7f+36RvIgHpQ05V+FK609HO3OpFlj5KCFLfXwii3wYACqVXGFN8EiijThnFHrfgDIP5YGFV0bDG9gJ5HTyzl91fACFP73wQ3HggUKMN6PTZxEJbH..XkcQnhQWc1Eb6wCF08nrfgSQbbjRDsm7GH.RkJELZvfv2492+8dmk0575yWMNIDQTyICFL..f3wiI3jz3fELb5KF6vPhnFHSZACOnYOy5UNHpojjjjni.oP3zgCDOdb3ymOVvvlHgBEF.f+ctBRWc0Id22CXzQGUzQQQRRRBiT3O65takQmDQDUaU70S6pqtEbR.5zkSQGAhHpoVwBFFKdbAmjFGrfgSe6djjZRvIgHh1a20O79A.vUeUe8xZ8rCCIRf3nkjJWNc3.6Xm6Dd75CycNyLh6ZC...B.IQTPTwUzwgpSBWrCCsxNLTovpEqn0VaEIFaLDNRXXwL+6tJQnvgPxjIQas0F+yNhH..Lxni..ftUHiiThHpd3d9A2VYu1ss8cBfFilBvXoNLjELrZgELb5IUpTHYxjPqVsns1ZSzwgHh1Ku1q+lUz5YACIhZHb82z2A..+W212Qn4nVo34WmWedEbRn5oPgYGFpznRkJzcWcgcrychQFcTVzqJznil+bJiEFfHBH+MgKPvfPsZ0nSWtDcbJa+hG+gEcDHhZv0We8V1q85twuM..dtU8D0nzT+XvP9Q9H6vvpmcWvPtg1mJhDMB..LYhcWHQTiAt8QHhZHr0ssCr0ssCQGiZFylLiVasUL1XiwKNpIQ7DwQ5zoQqs1JzqWuniCUA5pPwt3XIsxMh6BidvNYACIh.F0saHIIAGNb.sZE+dc879JWBNuuxkb.WWa50i136cSDQUcFLzN.XGFVMkqvQkC6vvolHQiB..yrfgDQMHD+UcQDQTYwoCGXvgFBd84sznXgZbs6yuP1gZJMcWnXWd75EYxlAZ0vOtU4HSlLvmOe..nyNUNcRDQTsSoyzTYxlHHYxThNBDQTSs1z2FzpQCRkJERmIMzoUmnijhGGIoSOQKTvP1ggDQxUema95qn0y2MfHhTHb5nvXI0KGKoMCBywQphUqs1Jr0QGHWtbviG9uWKWd75E4xkC1rYCs1RqhNNDQx.iVnqiUZio3joRgjoXwEIhpctnK4JvEcIWQYs1krjEikrjEWiST8S6sytLrZpTACUwaQ7TQjH4GIolMYVvIgHh12V7hV.V7hVPYudtk2IhZH7.22cJ5HTy4zoC..3sPG3PM1BEND..rXkcXnRT2c0MBDLHFYzQQOc2sniihPoBCHS5jHhHwJT3PXrwFC50qGVsJO17L5zUdcxx48kyO1RaDNuvHhjmJNFDKG2xMdM0vjT+YvfADIZTDOdbt4JqBXGFN8vNLjHpQCKXHQTCAWNcJ5HTyY0pUnUqVDMZTL93iyy0tFbgXGFpn0UWcgOX8qqTQvnCrhidvtTXcRDQTswHiH+5tvm5W7nhNBDQTSOCENdNhwNLrpfELbpKmTtR+bnISFEbZHhnpC9tADQjBgZUpgC61A.6xvFcYylEQiFEpToBVLyQahRjc61fNc5PznQ4MynLDOQbDMZTnSmNX2lMQGGhHYfgGYX..1k1DQDMAEKXHGIoUGREJXnJVvvJV7XwQtb4P6s2NO25Ihjs9lq7Fv2bk2PYud9pYDQjBhSmNwntcCu97h9lwLDcbnZjHQh.IIIX1jInQiFQGGZJPsJ0nyN6DCN3fXzQGAycNyUzQRVazQcC..Wtbwc2LQDRkJE742OToRE5RANlh4FefHpV6YepGurW6K+J+c..bhG++RsJN0UFMjuStXACqNXGFN0EIZwyuPNNRIhjuFZ3Qpn0yBFRD0P3bKbVw7e+y+IBNI0VNcjezq50qWAmDpVp33H0BGGoJZc2UWXvAGDiL5nrfgG.t8jufgc2YmBNIDQxACO5HPRRBc5xUYetAVO30me..3zg8IccO7CbO0i3PD0DSkJUk8Z+wOP9qQtQofgbjjVcksPAC0vBFVwBGIeACsX1hfSBQDU8vBFRD0PHUpThNB0E1sYCpUqFgBGFoSmVVcSznpmPgCA..qV4Ednj0SW4Gidt83AYykEZTytEceQRRBt83A..tbwBFRDALbgcAaO8zifSxDcYWwJA.vyspmPrAgHhZhYxXgNLLVLHIIUQEOk1aRRR..PkZ9miUpvgKzggV3wHBQTiCVvPhHRAQiFMvlMavmOevme+n6tTdioK5.KbgNLzJ6vPEs1ZqMX0pUDJTH30qWE4X0qdHbjvHYxjns1ZiiyGhHjKWNLxnEJXX2xqBFRDQxEQhDE..lM278YmzoSGZs0VQxjIQhwFCFZucQGIEMNRRm5hDovjAxLKXHQj70i8H2WEsd9tADQMDZQmNzRSR214zgC.vwRZircORRYGFpzUrKCGdjJalw2LoX2E1oKWBNIDQxA976CoSmFlLYpTWjnzr0ssCr0ssCQGChnFXWzW8JvE8UuhxZsehkep3Sr7SsFmn5qhaxrnQiJ3jn7Upfgp3sHtRHIIU5m+LyBFRDIiYwr4JZiMvNLjHpgv+8u3QEcDpab5vIVO1.75iELrQz3IGGiO93PqVsvXgymCR4p6t6FqaCqGiLxH.G1gK53HKwBFRDsmJNNR6UF1cgyZVyrrV20eSeG.vQWJQj7vE9kOWQGgpNSlLAu97gnwhht3Yf8zB6vvol3wiiLYyh1ZqMzhtVDcbHhnpFVvPhHRgwgC6..vef.Ha1rPiFdtn0HITnhiiT1cgMBra2FzoSGhFKFhFKlhsaYpUxIkqT2RyyuPhH.fgFYX..zSOcK3jr2tya+6J5HPDQD.LYjcXX0PwhEpRkJdVPVgBGI+4WHGGoDQMZ31GgHhTXZQWKvpUqHWtbHPv.hNNTUV3vg..fEd9E1PPsJ0kNqQGgikz8RvfAQ5zogQiF44OCQT9MWQznPmNcvgcGhNNDQjrUO8zsrbiUTuXhijzphhELTC6tvJV3BmegbbjRDI2cVewuBNqu3WorWO6vPhnFBd85C..Nc1bbykb5vABEJD730Kb5voniCUEU77KzpU1ggMJ5t6twtFX.L7nif4Ou4I53HqvwQJQzdZ3gGB..c2U2J5Qi1G4ibHhNBDQM3t2691K609TO8uB..myW3yWqhScmIS4mZGQiESvIQYKmTgNLTA+dthRjRcXHutchnFKrfgDQMDtrq7pAPyyYEiKmNwl2xVfWe9DcTnprRELjcXXCihcXnGOdPlrYfVM7ieUjmRELjiiThHfAGJeAC6sW424WH.va+N+S..b3G1GYRW2MeCWc8HNDQTY4297+d.zXUvPiFxWvv3wiib4xon2jIhDO+Bm5180syBFRD0Xgui.QDo.4vQ9NozmOek1UfjxWNobHZgcpHuviFG5aUOrYyFxkKWoBjQ.YykE9JroGb4hcJMQM6FO43vqOePsZ0nmtjmiYuu+cbO36eG2iniAQD0zSiFMvfACPRRBwhGWzwQwRJmD..O+BqP4xkqTGFZ1BGIoDQxalLYrTm4WN3VbmHhTfZSeavnQiHVrXHTnvvVGcH5HQUAwhECYxlEs2d6PmNchNNTUTOc0MBDH.FdjQPOcKO6bl5s.ABfLYyBKVr.8spWzwgHRvFZ3gAP9QTLeOPhHZxst0uQ..rnEdvBNIhiIiFQ73wQznQg4BmogTkIKOCCmRhFKJxkKGLZv.zokelEhH4se1O49qn0yBFRD0P3fl8rDcDp6b4zEhEKF730CKXXChPg3XMoQUO8zMd+08AX3gGF3HNRQGGYAOd8B.vygUhH.r6wQ5L5sWAmjou+5e6UA.vIcB+qBNIDQMp91eu7mggkyQxwkbwekZaXDDSlLgQc6FQiEUzQQwhijzolhW2tEdc6DQMfXACIhZHbGe+uiniPcmKWNw1191fGOdvBley6NKsQRnvg..O+BaD0g0Nfd85QhwFCACEBcXk+cbwyfUmNcH3jPDIZoyjFtc6F..81i7sfgmvwuzxZc2+C9n.fELjHRd3TOkOpniPMgIi46pvnQYACmpjJTvPUrfgUjvEO+B40zQD0.hELjHhTnb4LeW430mOHIIwycfF.EuvCKV4NUrQiJUpPOc2C1112FFd3ga5KXXNob697KjcXHQM8FYjQQtb4fCGNfd8x2QT7Ud4eUQGAhHhJvjIVvvoK1ggSM6di9xqamHR9afAyOIW5aFk2Fyjui.QDoP0dasCiFMhzoSiPgBI53PUAgJtSEYGF1Pp2dxe1ENzHCK3jHdgBEBYxjAFMZDs0VahNNDQBViz3HkHhpGNli9HwwbzM2i49hmaggiDQvIQ4hELbpo30sagW2NQjBvJtlaBq3Ztoxd8rCCIhZH7Vuy+D..Gwg8QDbRpub4zYoywvN34XnhV5LoQ73wgZ0pgIiFEcbnZfNc4BpUqFABD.iO93x5tnoVyKO+BIhJHatrX3BajhFkBF9o9jmlni.QTCtqYEWQYu1evcee..3ZW4UVqhiPzd6sCsZ0hjIShjoRhVaoUQGIEmbRrfgUpToSgDIR.sZzvqamHpgDKXHQTCga+NtG.TdG56MRb4zE1112Nb60KNXdNFpnUbbjZ1rYdAaMnzpUK5ryNwHiLBFdjQvAM6YK5HILdJTvPW77Kjnldd73AYxjAVsXAFMHuuwa+O+g+H..9zepkOoq6q7kNm5QbHhnxxa7lukniPMgJUpfYylQf.AP3vQJcjcPkO1ggUtPgxec6lLalGKLDQMj36HPDQJXkNGC85ERRRBNMzzwtGGo7bPnQVuc2M.ZtGKoRRRvagyuPm7F6PTSuAFbP..LidmgfSxA1u3W9z3W7KeZQGChHhJvhYy..HRjvBNIJS4xk+dHnlE9prEJTP..zgUNgmHhTFV3BlOV3BleYud1ggDQjBV6s2NLZv.hEONBEND+PqJXE2oh77KrwVOc2C.dK31sajMaVnQiFQGo5tHQifToRg1ZqMYe2DQDUakKWtRmeg8MC4eACIhH4hU++9mA.vxN0OlfShXYwb9MaIOGCmZXGFV4BFJD..5vJutchHkgu229Fqn0yBFRD0P3DN9+EQGAgwkKWH112N73wKKXnBV3v4uvCKrCCan0d6sCqVshPgBAOd8ht6pKQGo5NukFGor6BIpYmaOdPpTofYSlZnd+ue4pdN..bdewyRvIgHpQ0i8y9E.n7JXXkdiBURLWnCCKd7NPUFVvvJWoBF1AKXHQTiIVvPhnFBW4keIhNBBiSmNw1191gGudvAO+xuEyI4kRijTqMN2vTZeq2t6AgBEBCM7PMkELzme+..vgcd9ERTytAFb...zWe8I3jTd9h+6e9xZcO+K7G..KXHQj7PkLFxTZrXoPACYGFNkvBFVYxlKaohSyICDQTiJ9NBDQjBmKmt..fWe934XnBUhDIP5zoQKszBZSeahNNTMVu81C..FZ3lyywvcWvP6BNIDQhzdNNR6WgTvvO6m4zwm8yb5hNFDQDUfg1M.sZ0hjIShjISJ53n3vBFVYhDNBjjjfISlfVsrGbHhTFVyZeCrl09Fk854qtQDQJbFZucXvfADOdbDJbXNK8Uf1c2Ex+tqYfsNrg1ZqML1Xig.AC.acXSzQptIYxjHVrXPqFMvB6lVhZpUZbjZ1boyfJhHhJOe1+sOsnifrgYylQf.AP3HQ3HuuBwBFVY34WHQjRz8buO...dti6IJq0yBFRD0P3E98uH..NiS+SH3jHFtb5DaOdb3wqG9gWUfBU37KzZCz42DM45smdvV15VwPCMbSUACK1cg1rYCpUwaLAQMyJNNR6eFJitKrR7U+Ot.QGAhnFbewy9yU1q8JupqC..22O7NpUwQnrX1RgBFFlELrBkShELrRDLTP..zg0NDbRHhnZmIsfgaa66rdkChZ5nWudzS2cJ5Xzv3I+ueF.zLWvPWX66XGviGO3fmWi6YTQipceNHvBF1rn2d5EaYqaECN7PXIGxgH53T23yuO.vyuPhZ1smiiz95aFBNMkuG7Q9Y..3x9pW3jttO9G6jpGwgHhJKiLpaQGgZJKlKbNFFlmigUJ1ggUlhcXHmLPDQMxXGFRjfL93iiwSlD5asUQGEpAfKW42IkEOGCUoRkfSDUIJNRRsvCN8lFc5xEzpUKBGNLhEOFLZvnniTcg+BcXncd9ERTSMk53H8u7RuL.NvELjHhn5GKVxWvvHQBK3jn7Tpfgbxeb.IIIgPEJXnsNXGFRDobbpe7SthVOeGAhDn.ABI5HPMHLztAXvfAjJUpRcqFoLjKWNDIR9cCawcGK03SsZ0nmt6F..CM7vBNM0G4xkCABD...NXACIpoVi73HkHhpG9oOwuD+zm3WJ5XHKXtvFOIbD1ggUJ1ggkuHQihLYxf1auczJ23+DQJHWxE8kwkbQe4xd8rCCIRfFe7ww3iONzqWunihh247E97hNBB2ddNFxQjgxQjnQfjjDLZzHzpkusbyjd6oWrqAF.CMzPMEiR3PgCiLYyBiFMxKxlnlXYykECL3f..nu9ZLKX3cbW+H..bcW82TvIgHpQ0eb0+e..3h9Jm2Abs+rG89q0wQnLzd6PqVsHYxjX7jiC8sx6uR4hELr7EHX9M9H6tPhnFc7NSRjfEHXXzS27CzNc8uclmtnifv4xoSr8crC31qWL+lfhOznHTHd9E1rp6t6BpToBd84CISkDs1RicQz7W57KjcWHQMyFczQQ5zogUKVTbcV+0rxqrrV2a9OdmZbRHhnxmIiM9i9dqVsBe97gPgBgt5rKQGGEihELTkZdjlbfDHPP..XylMAmDhHp1hagDhDrwGebjXrwDcLnF.tb5B..d85ERRRBNMT4p3Hj0JO+Ba5zhtVPmtbAIIIL7HiH53Ty4miiThH.rictK..Ly9mofSRk6XNpi.GyQcDhNFDQD8gzQgIrSvP7XeoRHkK+8MfcX3AVP1ggDQJTO2u92gm6W+6J60yNLjHYfPACi1aqMQGCRgyfACn81aGIRj.giDlEfRgHT37WTqE1ggMk5smdwntciAGbPL6YNKQGmZphELj6JWhZdkNcZLxH4O2V6u+9EbZHhHkqq7qeok8ZyVnKxzz.WTnhW6aHVvvJRVNRRKK4jxU5ms5fELjHRg4Y+U4KV3Y849Lk05YACIRFX7jIQhDig1amEMbp5AejeJ..tru5EI3jHVc5xU9wRpGOrfgJDgJ1ggVYACaFMid6E+i29sfa2tQlLYZXOGKSmNMhFMJTqVMKNNQMwFb3gPlrYgSGNfg1aWzwol4V+t2jni.QTCtS3e83J609EN2KD..O2pdhZTZDO1ggSMRRrfgkiHQhhLYyBCFLzveLRPDQ7cDHRlfev1om+xK82ve4k9ahNFBmKW4GKot83QvIgJGoRkBiM1XPqFMvngF+yVDZu0VasA61siLYyhQFcTQGmZlfgxeleXwhEnQsFAmFhHQYm6bm..XlyT4MNRA.toa4VwMcK25AbcKX9yCKX9yqNjHhHh.x+YLUoREhFMJxlMqniihQN1ggkk.bbjRD0DowbarSjBTxjoP73IfACMt61Zp1qSW69bLLmTNnVE+f+xYE6tPylMCUp3AMeypYzauvue+XvgFD8MiYH53TSTbbjZmiiThZZM93iC2d7.UpToXestMs4sJ5HPDQz9fFMZfISlPjHQP3HggsN3m4rbTpfg79FLoBDH+lej+bEQjRzE7kO2JZ87cDHRFIXnvhNBjBW6s0NLYxDRmNMBFjcspbW3BmegVsxwGayrYza9ab9viLRoKZuQSvfEuHatqbIpY0tFX.HIIgt6pKNNuHhnoou6+4O.e2+yePYsVKVLCKVLWiSj3wwRZkicXX4we.+..vtcVvPhHkmO4xOU7IW9oV1qmcXHQxHoRkBwhGGFMXPzQQw4ZW42PzQP1nSWtPznQgaOtY27HyUrCC4Y5VyMSFMBKVrfvgCC2d7ft6pKQGopt.AJNFeldulTzXwv5V+5vHiNJFe7wqFQiZ.oUiFX0pUrfC9fKUPdR714tT1iizJwU7MuV..7i+Qk2MyuRr8crcroMuYDNRjF1MYRiH850it6pKrnEtPXxnIQGGpAv6+AqqrW6i8v2WMLIxGVsZE6bW6BgXACKarfgGXYylszOS0A27iJFt83Fqa8qG9CD.YxjQzwgpSzpUKrYyFVzBV.5pyFu6qR8BKXHQxLgBEFFZucNdBqPG8Qc3hNBxFc5xE1xV2J73wCVzBVnniCMIBWnfgVsvNLrY2L5sWDNbXL3PC1vUvvhaFFsZz.ySic29viLL96qYMHCOWZnCfLYyBe98iW4u+2whWzhvRV7gH5H0zKVrXvef.PqVsn2t6QzwYJ69tm+qxZci5t1bVR+Od62FadKatl78lpsFe7ww12wNv.CL.V5wsTzaOJ2+c.QxUE6vPVvvxGKX3AVvPgfjjDrXwBzoUmniCUF13l2Dd624cDcLHAHSlLviGOviGO3v9HGJVvAevhNRJRrfgDIyjJUZDOdBXzH6xPZpwky7mig974CYykEZTqQvIh1WjjjJ0ggVYGF1zqudmA9f0sNL3PCgi5HNxFpMMRff46tPqVsNkOeThDMRohENy96GGxhVLLZzXC0eNQUOoyjFaeG6.u867N3CV25fKmNQmt5Tzwpo1N1Y9tKbF81KzpU4dInc2s31PGCOxvXyaYyPqFM3HOhiD82WePiF9Y7TBjjjPrXwv6ut0gctqch0r10fS6TOUX1Ti+Hhjn5ohaByhE3geNwCLVvvCrRiiTN8lTD742WohEtjEeHXtycNbT32DIUpTXKaaq3e9duGdm+46B61sCmNbH5XIb2y89f..XEeiKqrVOeGAhjgBFJLjjjDcLHEpVasUX0hEjIaV32e.QGGZ+HdhDHSlLPud8n0V4GfsYmUqVgQCFPxjIgO+9DcbppBDnv4W3z3hr+f0sNjIaVL6YMKrzi83fISl3MAh1uzoUGl+bmGVzBy2k8aXSaRvIp4ljjD19N2A..l0LmkPyhR1l1b9NKbQKZQX1yZVrXgJHpToBlLYBK8XOVL6YMKjIaV7Aqq7GmjDsubm+WeObm+WeuxZs6bWCfctqApwIR7zqWOzqWOxjIChGOtniih.KX3AVw6oBKXnxv52vF..vhV3BwhWzhXwBaxzRKsfEsf7+cO.v523FDbhjGVyZecrl095k8546HPjLT5zoQrX7C3VItwa9VwMdy2pnigrQwNovsG2BNIz9SX1cgzGxLlQ9yZsAFbPAmjpqfEFKTVsN0G8tiL5n..3PVzhqJYhZNLu4LW.jui6IwwqOeHd73ns1ZCc5xkniScwS7XO.dhG6AppeO8W3rf8fl8rqpeeo5qEW38wJ99ZDMUMqY1Ol0L6urV6Uec2Lt5q6lqwIRdn3XIMHGKokkcWvPtQ71eBTpCCsK3jPkCuE9b+EuN.p4zbOn4..dcfSUrfgDISEhcYXEYyaYqXyaYqhNFxFtJbC473o1bF5PSegBm+hXsvBFREz2dTvvFoW+u3Oq2wznfgoSmF..s0daUkLQMGzqWO.18O+PhwNJ0cgyTw2Yvm+E90v4egesC35LXv.LXn5c7BHIIU5mi02p9p12Wp9yXgetHUpTBNID0Xp3FTq3m+jlb4JbMGrCC22RlLYU4rXmpeJ99qEuN.p4Task+9FvOu0Tix8.jfnFboyjAQiEClMYRzQgTfb4zIToRE7GH.xjIih97BpQE6vP5CytM6n81aGIRj.9C3GNrq7m09YxjAQiFEpToBlMWEtHaI.nrq2.QMUxjMC10.4GCdydVyRrgoJXrwFSzQfHhnIQGV6...ABFTvIQYfijzIWwt6uCa1lxmE6DQjncy2z0TQqmuZGQxXgBEogpKSn5Gc5zAaczAxkKWoQx.IuDpPACsXYp20UTimRcY3.MFikzvQx+y4lMaFZTO0OusJ1UR78DIRYYvAGBYxjA1sYClM07ry7yjICxjISU66mDx+ZeJ8NzjHp54+3q8Mv+wW6aTVqcwKZAXwKZA03DIOXqiBELrPgdnIWoBFxhgsOU7rkmmegDQJYejCYw3ibHk+w6Ba4Dhjwx2YFwfYyrKCOPtue3cH5HH6zoqNg+.AfaOtQ2c0kniCsGxlMaottxR0nqqnFF8Mi9vF2zlv.CMHN7C6vDcbl1BEZ5ONRA.TqRExgceSyIhTFJNNRaD5tPfxuCL9heoKF..O2pdhpySLeoOhnOjPgBW1q86byWeMLIxKFMZDszRKHYxjHdhDvP6sK5HIqwNLbx42e9yuvFgI+BQDUtXACIRlKT3vvjIibGEe.zcWcJ5HH63xkKrtMrd3lmigxNQhlu6gMYxDznYp20UTiG61rg1ZqsRikT61rK5HMsDrPACsNc6jV1ggDo3jHQBLpa2PsZ0n+95Wzwop3Y9u+YB44kcXHQDU9r0QGXT2tQvfAXACO.XAC2+xIkqzHI0gck80jQDQUB9NBDIykISVDIRTQGCRAxgC6PsZ0HXvf7f9UlIDO+Bo8CUpT0PMVRK1ggVmlcXXIrdgDoXricsS..zaO8hVZoEAmFEN9ZeDQTYyVgwGoeNVROfXAC2+BGNLxjICLZv.zqWuniCQDMkshq8agUbseqxd87cDHRAHTXdVFRUNsZzVZmv4wqWAmFZOENTwBFxyuPZu02L5C..CLjxtfgRRR6t33VmdEGmmggDo7r8crC.z3LNRqDVsZYZ+5dDQzjYUO4igU8jOVYs1WcMuFd007Z03DIeXqi7ELLXvfBNIxerfg6e9JNNRcvwQJQjx1.CLXEsgz4HIkHEfrYyhvQhBqV3Yc19y4egWJ..9E+rGVvIQdwkKWviWuvsG2XF81qniCUPnv465JKrCCo8AG1sC850i3wii.ABTZWRqzDOdbjISFnWudnu0o2txsTACYa1PjhfWe9PznQgd85QWMPiM9.AxeymsYqiIccO5CcuU0m2haVB0bjjRDUfVsk+sy6GceOD..9WW5wVqhirRwWilcX3AVw2eQkZ99KeX97U77KjiiThnlKbKjPjBQ3vgKs6un81XiMNFarwEcLjc5zU9aRGOGCkW3HIklL64XIcWCNffSyTW3HQ.P04myYGFRjxx1191.P9tKTspFmK47qd4WE9pW9UI5XPDQzjn81ZG50qGoSmFQiESzwQVShcX39kO+9..fc6rCCIhZtv2QfHEhrYywyxPphY2lMnUqVDIRDL93rfpxAISlDiO93PqVsvfAChNNjLU+80O..10.CnXKRV3H4KLtYyUwtiWY9GED0TIc5zXfAxuYGNnYePBNMMFJ0c0rCCIhJHd73Hd73hNFxV15HeWFFHH6xvIS1hELrAZy8TML93ii3wiCsZ0xM4KQjh2O4A+Q3m7f+nxd87Dnot8...f.PRDEDUcDHRAIT3HrKC2OznQCznQinigriZ0pgyBybe1kgxCE6tPKlMWpqoH5Cygc6n81ZCIRj.9C3WzwYJIRgNLzRUnfgrCCIR4Xm6ZWHS1rvkSmvjQihNNBwN14tvN14tpdeC4K8QD8g7Ut3KGekK9xKq0trS6TvxNsSoFmH4khiz+.brjteIIIs6QdM6vvInT2EZyFulcEFdTVPzdqiNrhN5vZYuddFFRjBRtb4P3vQpn+Qdyhm9W9SEcDjsb4xEFYzQgaOdvL6ueQGmldgKVvPK7eGS6epToB80WeXiaZSXWCL.bn.GENEGIolMWEGIo7B+HR1aqEFGoGzA030cgyr+YTVq6Zt9aA..O2pdhpxyawW6i2zRhnohK9B9RhNB0c15nPACCFTvIQ9JGGGo6Wd8kufgNbn7tFLhHZ5hELjHElvQhBKVLyOTGU15xUm3cAfaOtEcTHvyuPp70ee8WpfgG9gdXJpaTrjjDhxNLjnlNACEBACFD5zoC80a4UbMkj65N9OEySLeoOhHphXyV9QRZvfAgjjjh5yQWuvBFt+40qW..3zgSAmDhHp9iELjHElb4xgPgi.arKCoxjUqVQKszBhGONhFKVS63AStHT3P..vpUVvPZxY2lMXvfADOdb30mO3xox4BVSjHAxjMKzqWOZokVl1e+JdKdX8Bqd1111FhEKF..zoSGV3BWXY86Kb3vXm6bmkd7rm8rgISlpIYjTd151x2cgyZlyhiJ9pnpYGF52ueLzPCU5wyadyCs0Vak8u+b4xg2+8e+RO1gCGnmd5YZmqoqfACV5ryD.XNyYN7rhlZn0UmtDcDj0z2pdzd6siDIRfHQiVU1.aMZxIwBFtujISFDLTHnRkJ3vtcQGGRl68e+2uTw2sXwBl4LmofST0yN24NKMgrTqVMNjC4PDbhnop+8y4B..vy7TOdYsdVvPhTfhDNBrX1Lzngevth7GH+nFwdgcRHsapToBc0YmXWCL.b6dTXx3bEcjZZIIIs6y0M1ggTYn+95CqeCa.6ZfconJX3tGGoUoaNSwaRNqXXUyW6q80ve5O8m..Pu81KFbvAKqee+o+zeBm8Ye1kd7e7O9GwxV1xpIYjTVxlMK14txWL44bPyVvoQrNjEunp62vp3K88q9U+JboW5kV5wu9q+53nO5itr+8GMZTbnG5gV5wqXEq.28ce2Uu.NE86+8+db9m+4W5wuzK8R3jNoSRfIhnZqe7O5GT1q8oeteK..9Bm0+VsJNxR15nCjHQBDHP.Vvv8A1gg6a976GRRRvVGc.sZ4sMmlbKcoKszlv7rO6yFOyy7LBNQkOOd7fjISB..sZ0ht6t6I7qesW60hm8YeV..XznQDMZz5dFopibU38Qguq.QJP4jjJsKOn7tzK+pvkd4WknigrUmt5D..i5likTQJd73HSlLPud8n0VZUzwgT.5uu7m6nCL3fk1EvJAQphiiT.dFFRjRv.CN.RmNMrYyFr1fdN89OeuO.+y26CNfq6a+stV7s+VWacHQDQzA1u92773W+addQGi5N61x2cX9C3WvIQdJWt7etZ0bbsNAd8UXbjpf1rlz9.urwCnO+m+yi96ueze+8iS7DOQQGGRFgaUBhTnJdVFxw8DUN5py7ELzsGO7LbPf34WHUo5vpUXxjIDMZT3wi2R+aY4tv0pBFxNLT35niNvQcTGUoGW05hTRwq33HcNytws6Bu0u+cB.fmaUOQc84s3q8IG97aZznYBuFvLlg73rpztc6SHWbTISD4vQ9BF5yOKX39B6vv8Mu97A.d9ERzAcPGToOaUkL95I4m1au8JZ8rfgDoPIIIgPgBC61sI5nPJ.FLX.FMZDwhECABFD1swetQD184WXiYmWP0F82We3CV25vN20NULELLZr7iqjp0MrkmggxGe7O9GGe7O9GWzwfjYBGIL75yGzpUK5u+9EcbnZHiFMh23MdCQGi8xm7S9Iwm7S9IEcLHptYCaZy..XAyedBNIxWczQGPkJUHb3vHSlLb7R9gvBFt2xkKGBTn.yEK3LQMqt8a+1wse62tniAUE7y+oOXEsd9tkDofEIZLX0pE1kg.Xl82mnifrWWc1I1RrXXT2ixBFJHEGkv77KjpDyr+YhOXcqCCNzP3nNhrJhWyu343fQiUoN7XJbFFlKWN7xu7KiMrgM.Od7.CFLfd5oGbJmxo.WtbMo+dGYjQvZVyZvl27lwhW7hwwbLGCb4xEb61M7W3lHnSmNLu4k+lzEJTHL7vCW52+rm8r2qcg4PCMzDNz3WvBVv9741ue+3sdq2Bu669tvkKWXoKcokddlL986G+4+7eFCO7vHXvfvhEKnu95CmxobJniNp7y22gGdXDJTnRO1hEKn2d6EQhDYBm2g82e+vnQi..XKaYKHUpT..vlManqt5BiM1X30dsWCu9q+5vgCGXQKZQ3nNpiZRuocd73AqcsqEqe8qGKbgKDG6wdrnyN6bB+4uVsZw7m+7q3++hpM1xV2J..l0LmIzoUmfSi382d00B.fS3e83pJe+JNNlqjNLLZzn30e8WG+i+w+.yd1yFKcoKcR6FvrYyhMtwMV5w81auvhEKX7wGGuvK7BXyady3LNiy.KdwKFaXCanz5ra2N5rvlYYjQFAACl+bEukVZAyctyEiM1X3Mey2Duwa7Fvtc633NtiCye9yeu9+EIIIr90u9ROt6t6FczQGXfAF.qcsqEaaaaCG1gcX3XO1icetwqBGNLFZngJ83YMqYUZ2TuoMsIjISlIj2DIRfW60dM7Fuwa.mNcV50llr2iczQGEqcsqEabiabBu2vniNJBDHvD9+ahp0t4u8sAfxqimunK3KUiSi7jVMZQGVsh.ACB+ABfNO.e9ulMREJXnJVvvRBFJHxjMKLYxDz2pdQGGR.lNWCYQiO93Xsqcs30dsWCc0UWXwKdw3HOxibR+bbYylEaZSaBu268dXKaYKXVyZVXIKYIXAKXAPmtC7msNb3v3e9O+m38du2CiM1XXIKYIXIKYI604RH.vF1vFPtb4PhDIJ80RkJEV25VG.xONdc5zIFbvAKcTirmW+53iON1VgIKBvt+LWiN5n3Ue0WEaZSaByadyCG5gdnS50wJIIgMtwMh0rl0fPgBgi9nOZbjG4Qh1ZqMr4MuYjNcZ.r6qqjpeXACIRASRRBACEFNXWFh65NtUQGAYuNc0I1xV2Jb61MV7BWjniSSINRRooBylLgN5nCDLXPL7Hif9jIi+s8mzYRiwGebnVsZzdUZzkTomggO2y8b3ptpqZB273hzpUKNqy5rvi8XO1dMZNhGON9ReouD9s+1e6D95szRKXUqZU3UdkWA+ve3OD.4KT1N24NA.vu9W+qwEewWbo0+2+6+crzktzI783pu5qFO8S+z.H+HcYOu.Mf7EYcEqXE3QezGcuxbO8zCd5m9owIbBmvd8qELXPboW5khe2u62UpXc6IMZzfK7BuPb+2+8iVZok85Wee4UdkWAKe4KGwiGG.4Kbve9O+mA.vpW8pwYe1mco09G+i+QrrksL..rrksrRW73UbEWAtfK3BvxW9xgGOdlv2+ktzkhm4YdFzWeSby9jKWNb8W+0i67NuyI700oSGd5m9owZVyZvccW2UoLsmEtjDmLYxfsuic..f4Nm4H1vTi8urzisrV28c+OL.pdELrROGdt669tw0ccWGxlM6D9521scav19YSiEIRDr3Eu3RO9m+y+4X1yd13rO6yFiN5n.H+Mro+96eBqaEqXE3tu66F..euu22CO7Cm++2O3C9fwe3O7GvodpmJ19129Ddtl+7mOd9m+4mvFmHUpTS366C8PODhGONtlq4Zlv3nVkJU3JuxqD28ce2Sn3duvK7B37O+yuzieoW5kvIcRmD..N4S9jKsoNtlq4ZvYcVmEV9xWdoh7UzIdhmHV0pVE5omdlvWOSlLXkqbk39tu6aBe8VZoE7q+0+Zr5UuZb+2+8C.f4Lm4fsrksrO9SXhDmkeZmhnifvX2tCDHXP3yuOVvvOD1gg6MOdKb9ExwQZSoo50Ptm17l2LNkS4Tv.CLvD95KaYKCO4S9j6yyFy0rl0fK7BuvIrgrJp+96GOxi7HX4Ke46ymuzoSia61tM78+9e+REXaOcNmy4f68duW3vgiResi4XNFDMZzIrtcsqcU5ygcK2xsfu6286hUtxUhm8YeV.jeBST72y5W+5wQbDGQoeu+0+5eEu0a8VXEqXE60QHxJW4Jwse629dUzyQFYD7Y+reVr10t1I70myblC9K+k+BNsS6zvNJb8Eeiuw2.+nezOZe9++TsAeWAhT3hFMVocLKQSlNc4BpToB976m+Li.jMaVDKVr++r2cd3MUY1e.7uYoIceMsIoEn6EJ6nUVDAW.wEvEDAGWQTQ+w.NhJNLi5nii6ifJChafJiJnBBpCiCJKhHnfruTnz8UZRSWxRSay982ejlKMMszz1jdyx4yyiO1j9ljCEZx8dOumyA73wCQGEMyuH8No0dK9qxppjiijd1EptvH8XyaqdyLL7+9e+u3Nuy6j8D83wimSmfjEKVvW7EeAtwa7Fc54SmNcXpScptjrP.6WH64Mu4gsu8s2e+iRWpxJqDiYLioKSVHf8p8a5Se53y+7O2o6WsZ03pu5qFaZSahMYg73wCIjPBr+LypUqXsqcs3QdjGwshkCe3CiYNyYxlrvgLjgf8t281qqluidzihq9puZWRVHf8SJ9duWWq1g4Mu44RxBArehv2wcbGXW6ZW8pXfLvnxppDVrXARjHAwFSfcK29w+SKBO9eZQC3ut8lJL7QezGEKaYKykjEB.7LOyyf+4+7e5VulkTRI35ttqiMYg8VMzPC3JthqvkjEBXuh+lzjljKWjnN5cdm2AKaYKyk22mggAqZUqB2zMcSrWr6diCbfCfq4ZtFWRVH.vu7K+BdfG3Ab49u0a8VcIYg.1+rg4Lm4fe4W9kdcbPHjAFRRvdakrQZNF5BqTBCcQ8smvvjRTROrRRfl954P1QEWbwXJSYJtjrP.6a5xEu3E6x8+Nuy6fq3JthtLYg.1Sj2MbC2.d5m9oc460ZqshwO9wiW3EdgtLYg..abiaDCe3Cms5A8FdsW60vi+3OdW9ykUtxUhO3C9.mtuye9yi7xKut73.KszRwUcUWEakMR7LpUgRTqB2+X5oOUfP7y4nJCIjdhHQhPbwEGrYyF6f7lLvQqNcfggAQEUT9EsTRhukgLX6ILrVEJfIytVEY9RbjvvnZuMU5Izalgg+6+8+l8BkmZpohZpoFTe80i5qudrjkrD10s28tWbnCcH1a+u9W+KbricL1aO1wNV7ge3Ghe7G+Q7TO0SA.zsmHW+0hW7hYqLuniNZ7Zu1qgctychW3EdAjY6UrkISlvC8POjSW79u5q9JbxSdR1a+jO4SBkJUhFZnATQEU3TR99tu665xDHzQm7jmDW20ccrmfV5omN9ke4WXigdie629MXxjIr7kubr90ud7TO0S4TaHcu6cuH+7ym816d26FaYKag81ojRJ38du2C6ZW6Bu9q+5H7vCGm3DmnWGGDuuhaucjFnWcgbJ2rBCO9wONaktAX+8Sd0W8Uwt10tvZVyZPVYkUWl.utxJVwJPas0F.ruAPxHiLfXwhc6PtwFaDJUpDyd1yFaZSaBaYKaAyctyk86qQiF73O9i2sO9yblyfniNZ7JuxqfctychUspU4z7wb6ae6Xyadytc73v92+9ACCCd5m9ow5W+5wi+3OtSGW1N1wNPwEWL6s+9u+6w2+8eO6scrS+20t1EdkW4UPHgDBN0oNUuNNHj9q7tzwh7tzwx0ggOOGILrAJggtfggRXXGwvvvdcRRJQpZTC1zWOGxN53G+3vfAC34dtmCqe8qGKdwK1oM60V25VcZLVTRIkfm5odJ1M.URIkDdi23Mvt10tvpV0pP5omN6ZesW60bIAaO+y+7Nc9QyZVyBabiaDaaaaC+w+3ej89qu95wBW3BYSn22+8eO1yd1CF8nGM6ZRIkTvd1ydvd1ydvBVvBb+evA6GS1vF1vva7FuAV25VmKyT5Ndro..uzK8RN8ygYLiYfMu4Miu669N7fO3ChxJqrtbicQ56drm3ufG6I9Kt85oVRJgD.n4l0i3hMlf5g38IOk8K53XF8H43Hw2lLoRQSM0DTVmRHm5A3Cnzp09r.iZGoj9hvBKLjTRIAUpTgZp47HiNbxC9ZZtYGILzCM+BA5Uyvve+2+c1uNhHhfcdGHQhD7pu5qBUpTwVk0N1AoszRKN0lSF5PGJ94e9mYm2nyXFy.olZpNcxhdJ+m+y+g8hQyiGOricrCLgIXusGN8oOcrvEtPjZpoBylMCiFMh29sea7Zu1qA.fibjiv1VOiLxHwK7Bu.hHhH.f8Kp8sdq2Ja0DoVsZTQEUzsI+qfBJ.W60dsryerryNa7S+zOcQm4Y8ju7K+Rby27Myd6PCMT7hu3EZg3m9zmFibj1+b6W9keY16WjHQ3W9keAYjQF..XZSaZXRSZRXpScp84Xg3czPiMBMZz.whE6y2tjGHc8W2z8nOeNdmudp9B63ue042OYZSaZX1yd1XTiZTtUk1zVasgLyLSrwMtQjWd4wdAkcLKVcGyadyCe4W9krWrra61tML+4Oe7oe5mB.fCdvChcu6cioMsttcI9+9e+OL4IOY.X+8Cuoa5lv3F23XigW9keYbG2wc31wiCacqaEyXFyf81BEJjs5lYXXP94mO6L2oiu2TXgEF1+92O666NsoMMjWd44zyEgLPY4Kaot8ZW4aa+h09jK0yebL95hHhHPngFJLXv.Zt4lQTQ4AO9T+bNRRg.Jgg..PsFMvrYyHxHh3h1xIIAl5KmCYW4G9ge.Sbh1aI8ye9yGVrXgsB6rZ0JJnfBXa84KaYKCFLX...hEKF+7O+yH2byE.1OFi4Lm4fwN1whFZnAvvvfkrjkfibji..6UyXGO+0a8VuUrksrE1iWaVyZVH0TSEKe4KG.12LmaXCa.2y8bOri4hX5v0lJrvBCW0UcU8kezgDRHAbnCcH12e8AdfG.iZTiBm4LmA.16rDlLYBhDIBJUpDezG8QrO1q3JtB78e+2yd8ru4a9lQDQDQW1YGHCbnOUfPBPnVcvcUF9Ru5JvK8pqfqCCedRSRJ..pqt533HI3ii4WXLTBCI8Q9Kskzl6PKI0So2LCCSM0TY+5yd1yhwLlwfUtxUhidzihPCMT7Ue0Wgsrksfsrksfa61tM..bricLmt.5O5i9nt76pKbgKzo1RimxO7C+.6WmWd4wdw8cPtb4NUUNc7DrV25VGppppPUUUEN6YOKaxBA.JrvBcppX.P2199Zt4lwzm9zYaCSwEWbXu6cu8qjEJQhDbS2zM4z804YuQGqVRGm7K.vrm8rYSVnCSYJSA4kWd843g3cTRo1mUaYjV5P.+.+pm+629Nv2u8cziq6Au+6AO38eOdtWXGaVhdnkj1wVi40bMWSW99IcU6.tqvmOe7C+vOfwO9w2mq9jku7k6RaT8Ye1m0oa2csZ3oLkovlrPGRO8zw8bOW3mqm9zmtWeLsojRJtjfut68lrYylSUd97l27bY1qdsW60xtwGHDeUG72OBN3uejddgAnnpLrqYyl62tqCFnpd6sQ+jnYcYPo9x4P1Y4latrIKzgK14+zwia6Vu0akMYgNjRJo3z7Y9XG6XriMhCbfC3znFZ4Ke4tb7ZKYIKwoMIg2pEpe629s6zqCOd7b5XsXXXXOdsScpS4T6S8wdrGykhe4IdhmvqDmD2GkvPBI.Qy50Cylo4RG4hShjDfPABfFsZY2ISjAFN1M7TEFR5qFTJCB74yG0oREZyPabc3zszq29vPOpn7BILzMpvv+xe4u3zIcje94iksrkg7xKODSLwfa7FuQr90udmNAqRaukJ5PmOQO.6U81kcYWVe8OBcqSe5Sy90G9vGF73wyk+aiabirqogFZvk2+9zm9zXUqZUXAKXA3ptpqBxkKGCaXCicWc1SzoSmSsEF0pU6ztrsuXvCdvtbAnRLwDc51NNgWEJTflatY16uymrrCzEk22hQSFQUsOiVxLyL5gUGXX8e5Fw5+zM1yKzCycpvP0pU6zFeX7ie7c45tjK4RbqWyq7JuRjUVY4lQnqDJTHF23FmK2e1YmsSuWfi1wbm0cw+ke4WtS2t6d7cmN1VScn6duoJqrRXznQ16mduIBw+TBrILjFKGcjMZFF5DGyc6N+YBjfC8kygry5MGiQs0VKamcAn6OtmNd+LLLryhvNNZG3wiWWtwJCO7vwHFwHXus6dtg8V8l+bWXgE5z82UGaUpolpGcyGS.xI6rPNY69GWO8oBDR.D0Zzv0g.wGm.9Bfj1+f65TQUY3.IpBCI8WhDIBxkKG..UUkqCRceEdkJLr8+u6LCCm4LmI1291Gl0rlEDIRjSeuVasUr8sucrfEr.LtwMN1KttBEJbZcwGe7c4yc+oBC6tjcVUUU0qetbbAMTqVMlwLlAF8nGMV5RWJV+5WO16d2KTpTIBKrvvvF1v5yw6hVzh5WyNht58557tG0QBE6oYqnCgEVX843g34Ud4U.a1rA4xjgHifNoduqdtBCanSym53hKttbct6wgzWlcocTrwFa2V0JNt38.cea8p6h+N9XuXO9tC8dSj.E65m1K10OsWtNL7KHIA6G+FUggNiRX3EPyuPRe4bH6rdywXTc0Ne97wFarc4yYmOdHGOtN93iLxH61QTUGe7c90zSgN1Jeeu7+3YwK+Od1ddgsK3cfmQHAfzquEDWrwfPBIDtNTFvM4KeB87hH.v9bLToRkPYc0gTGRp87CfzuYznQXvfAHTnPDQ3QzyO.Boaj1PREm+7mGUTYEXn4jCWGNtvpUqvfACfGOddzCxu2Tgg.1qPvssssgVZoEru8sOru8sO7C+vO3TqkywtF8S9jOAokVZN83angFbZHy2w62czwJRwgtK4aYlYlrIMbjibjrymvKFGm32ccW2E14N2I68eW20cga4VtEjat4hgNzgh27MeS7W+q+U2JlGyXFClwLlA6b7RoRk3wdrGCe1m8Yt0iuuvweelbxIiPBID11SSAETPWt9t69IC7XXXXaGoYkYeuJzBT8EaZK..3Nm2b7HOercjzKxZFxPFB3ymO6E.tiUMbG4n0C2S5tKbk6polZBVrXoKu.Vc7Bs4XivzYN1XDWrG6E6w2e338l57OSo2ah3K4CV6m..foeMWYOt1m+usbuc33SK93hC74yGZ0pElMaNn75kzUnDFdAZZe9EFQDQfHn4WneMd73AFFF2ZTVzY81ygruvwwXz4t3P2cdlc931brgt53iu4laFFMZDhEK9h936uaFr9CG+4tym2cAETfSUAIf8i0ycOdUh2A8oBDR.llTGbVkgK8QWDV5itHtNL7KHiligC35X0ERyHBR+QxxkiPBIDnViF11bqujVaqU..DdXgA977fGlI6u2bwOwOsZ0he7G+Q1+yhEK35u9qGu7K+x3nG8n3PG5PNcQv2291G.fKmjxd1ydb441nQi3PG5Pc4qazQGsS2tyUrH.PIkTRW9X63qcCMz.l4LmoK+20ccWGl3DmHl3DmHlzjlDhJpnfd85wN1wElkZO7C+vXCaXCXdyadXTiZTPjHQt8+FI1XiE6YO6Au7K+xX3Ce3r2+m+4eN1111la8bzevmOeLzgNT1a+e9O+GWR1wQO5Qwd2KUIE9JpUgBnukVPDQDAR1KjvFeUyatyFyatytGW2V+lsgs9Mdxe2omqvPwhE6z70a6ae6c4lrXf52irYyF66w1QETPANcQf5t1d5O+y+bWd+cd96zeZap8DQhD4z7TcqacqtjHye629MbvCdPuVLPHdBib34hQN7ttk5FLPf.ArG+Wi8itmPfFJggW.67KjZGoAk5qmCY+QBIj.jJUJ6s6py+Dv4iGRf.ArcPlNe9qc0wM0XiM5z3u3h0B06tYcumVm6.NevG7Atb7pu4a9lCHwBo6Qep.gDfokVZElLYtmWHInULwDCDKVLZss1ftl0w0gSPAsZsmHeZ9ER5uDHP.FR6WP3JprRNNZbUqs1dBCivyVIstaEFxvvfYNyYhq+5udb8W+0iu9q+Zm99W1kcYNkPLGUlxPG5PcZGY9Nuy63Rat6Mdi2naa+LctBW9pu5qb51aYKaAkWd4c4icVyZVresRkJwG9genSeea1rg4Lm4.IRj.IRjfG7AeP.Xetc0wSrKmNUwoVsZEae6auKeM6rHhHBDWbwgPBID7du264z26QdjGwo4qg2xRVxRX+51ZqMLsoMM70e8WiyblyfO9i+XLiYLC2tBSIdeEUbQ..HmrxJnZivL2a6VvbusaYf+E1M+m929se6recgEVHd228cc56e7iebrksrEOYjcQ87O+yi1Z6BybWqVsh+1e6u4zZtga3F5xG6oN0ovm+4etS22oO8ocZltNtwMNmtXadCc78lZt4lwzl1zvV25VwYNyYvG9geHl4LmoW80mPHdFRZucF2cGKWvHJggWPcpbjvPpcjFLpudNj8W23Mdire8N1wNvO8S+jSe+ie7iiu3K9B1aOsoMM1yYcpScpHhNbN2+i+w+f8bwc34e9m2oNeSGe85rJqrRmlo7dKCaXCCSe5Sm816ZW6B28ce23W9keAG5PGBKaYKCuxq7Jd83HXygN7QwgN7Qc60SsjTBI.jZ0ZfTozNihz03wiGjIUJprppPc0UGhNpn64GDoeglegDOozRMMTZYkgJppRL5QMJepKVeKsX+jT7zsxG2cFFFarwhwO9wiCbfC..fm7IeRvmOeLsoMMX0pUrgMrAmpDjoN0oB.6Ulyy9rOK6Ext5pqFSZRSB2wcbGH4jSF+xu7K3a+1usaecG4HGIhHhHXGl6e228c3pu5qFW1kcYn7xKGey27Mc6i85ttqCyd1ylcMOxi7HXkqbkXdyadvjIie7nkS...H.jDQAQU3+9e+urC2d.v1hQyImbfPgBgEKV..v69tuKtrK6xPN4jCJnfBvZVyZvIO4Ic50xjISW7e.19OSl+7mO92+6+M.rWsjKcoKk81dK2+8e+XEqXErUh44N24vbm6bcZMCdvC1qM6MHtOs5zh5ToBBEHnKacuDOOGsUqd586W1xVFVyZVCLXv...dzG8Qwd26dwjm7jQwEWL13F2nKWLIuo8su8gILgIfa61tMHVrXrsssM12eF.3ptpqh88g6Jye9yG+vO7CX7ie7nnhJBabiazoKl0y+7OuWM9A.V3BWHdq25sPksuIcxO+7wbliysZV58lHbga4lojU2ajnDInnhKF02.0l6bvFCkvP.6+bPU6U9tzjnDFFLpudNj8Wu9q+53+7e9OnwFaD1rYCyZVyB20ccWXLiYL3rm8r3K+xuj87KCMzPw67NuC6iM4jSFu3K9h3Idhm..163ASbhSD25sdqHxHiD6XG6.6d26lc8yYNywkMoUxImL6Wa0pUjYlYhwMtwg4Mu4wtIU8Fd9m+4wd26dYGGEewW7ENkXzXiMVXwhEnWuduVLDr4MdyUC.fM+Eq2sVOkvPBI.TKs1JLYxjKCp2.Ye+1s2V1l4MLCNNR7OHs8DFprt5P1YkMWGNA7bjvPpBCIdBIJQBhLhHf9VZA0oREj4kqthdiVZ09IzDtmNgg8hYX3G9geHt5q9pQCMz.zpUKdfG3A5x0MlwLFrrksL1au7kub70e8WyljspqtZrhUrB1ue5omNDIRDJrvBc44J1XiEKXAKvoSh6m+4els0vHSlLbkW4U5RkG5vpW8pQYkUF6qcQEUDdoW5kbYcu4a9lX7ie7.v9IMdu268xN+LJqrxvUdkNOGihM1XgFMWnUk6tUJ3a7FuA1111F6bW7S+zOEyadyyqVIMhEKFG3.G.ycty0kVpCe97wpW8pQ4kWtS+cBgaTTwEC.6yfDQgD7brl8FOzCbed1mP2rBCkISFdu268vC+vOLLa1LXXXvl27lwl27lYWyMbC2faW8w8WWy0bM3m9oexo1gkCCZPCxo2yryxKu7PQEUD1vF1.1vF1fKe+ErfEfa4V79U6Y3gGN98e+2wblybvu9q+pSeOABDfO3C9.bhSbhK5eVHDug64NmaOun183K6oA.vashf2p1HQI12P0MzXivFiMOaqy2OEUgg1otI0vhEKHpHizieNLD+G80ygr+HwDSDexm7I3du26EZ0pEs0Va3i9nOxk0EVXgg0rl0fry14qc2e5O8mvANvAXONuSe5S2kGy0XG6XwpW8pc49ulq4Zb57Squ95wN1wNvDm3D6u+Q6h5Jthq.6d26F29se6tzp2kKWN9we7GwMey2LkvPNTv8mJPHAvB1lkgq+S2HV+mtwddgD.bg4Xnp5qmcmER7NXXXfNpBCIdXolZp.v2qsj5nxUhHbOaKI0cmgg.1q1u8su8g64dtGDVXg4x2O1XiEKdwKF6bm6DwEWbr2eHgDB90e8WwRW5Rc5BmviGObkW4UhCdvC5z7Aqydy27MY2MpcznG8nw92+9wnG8n61GaJojBN7gOLd9m+4QBs2xr5nK4RtD70e8WiG+webmt+0rl0fEtvEhPBIDmt+HiLRrhUrBryctSmt+NVYOWLIlXh30dsWyo66ge3G1ojO5MHQhDryctSbvCdPr5UuZ7XO1ig0t10hyblyf+3e7Oxl.S.3TK3gLvwjISrUZUNAga3nOXcqGev5VeOttq6ZuFbcW603wdcc7NetS8je+2+8icricfgO7g6TEIFd3giUtxUhm8YeVOVb0S1111FVzhVjSs7YQhDgYLiYfCe3C6x72oiF+3GO90e8WQt457bWSpToXkqbk3i+3O1qE2clToRwO+y+L9se62v+5e8uvi8XOF9nO5iPAET.dvG7Ao2ah3yqlyWKp4701yKL.VngFJhJxHgEKVflfrqUR2gMggA4IOUop5..75s3Zx.rd4jLnudNj8W2zMcS3rm8r31tsaCgFZnN88bbLSm5TmBKXAKvkGq.ABvl1zlvW+0eMxLyLc46mXhIhW8UeUb3Ce3trMp9vO7CiW3EdAOVKVs2XJSYJnvBKDae6aG+i+w+.Ke4KGacqaEm9zmFiXDivoy6jN1pAd7XtHaU6xJ225hPQHjdmTRVNDKN3XmeO2679Af6Wd0Dfu+G1NZt4lwzulqARRPBWGNdE6XB1SpxL9ct6yyZVud78a++gvBKLbKy5l3r3fDXww+tRnPg3VuoaFBE5azzH9o89yPkJU3pl5TgLox7XOu6c+6CJTn.S8JtBjr7j64GP6zqWOJszRQs0VKDHP.jKWNxN6rc4jw5rlatYb5SeZXwhEL1wNVDcz1acyW60dsXW6ZW..XHCYHrINoiLXv.JpnhfBEJv3F23PR8gVajBEJP94mODKVLRKszvPFxPtnqugFZ.EVXgn4laFYlYlH8zS2m4eS3tN0oNEpu81AkPgBcoZIAr21+polZ..vzm9zcIgnckubyaB..+g4NOOXzF7pfBOGN4oNEjIUJtpo55eGEniqNdSsZ0hsuieDQGcz3Futq2sebpUqFG6XGCRkJE4latPf.AdwnDXQKZQ38e+2m81lLYBgDRHvjIS33G+3vlMa3RtjKwoDH5fQiFc58l+i+w+HVyZVC..pqt5vIO4IQN4jCRKsz7p+YnyNwINA6LOSjHQXJSYJN88sYyFjISF66eMqYMKrssssK5yYmeeIegiWkDXiNWY6NzQNLJq7xwXGyXvvxYnbc3v4x+rmA4elyfQj6vwnF4H45vgyrm89ynNUpvjmzjvfGT2u4.I9G1zV9ZXylML2aaN84i6oudNj8WVsZEkVZonzRKEolZprifB2kNc5P94mOLXv.FwHFgamDbFFFnUqVnSmNHVrXHQhDu1wLxvvf8rm8v14fRN4jcYygcvCdPLoIMI1a+9u+6iG4Qdjd8qEcdfWv68g12ncK5g65Jmsy7utRBDBoWoI0ZfbYTOXmz0jIUJZt4lgRk0EvlvPeAZopKj3EDUjQBIIj.ZnwFQMm+7Hs1q3PtVqs3nkj5Y2Eft6LLryhLxHwXFyXvXFyX5UOtnhJJb4W9k26dwZWngFJF8nG8EshB6IxkKuWsSOkHQBjHw+98w+1u8acZdj8QezG4Tq.ZO6YOrIKD.X1yd1CnwGw9I36XFSlS1AeUWHWp2TggcTbwEGl1zllmNb50DIRDlvDlPe9wKUpTLiYvMicfMsoMgW8UeU1augMrAbW20cwd6e7G+Q1jEBPu2DYfy5+L6cWm6+duqdXkDGRTRhnrxKG0We8TBCwEpvPd78clG5CzrZ0JpugF..PRIRW6Lhc80ygr+Rf.AHmbxA4jSN8oGezQGce5bX4wiGhM1XQrwFae50s29ZszktT1VmZLwDCN0oNkSaP1O+y+b1uVjHQd0whQvB2MQgNPILjPBf0VasACFMhP6hcwafl6Xt2FWGB9cjIUFJtjRfh5ThQdQZITj9GMZs2JEn4WHwSKsTSEMzXinhJqv2Iggs0F..BuKZiK8G8lYXHw+zcbG2Ad4W9kgISl..vhW7hw29seKF23FGppppvW9keI6ZGzfFDdvG7A4pPMn04qsVzRqshHiLRHW1.eqKxexa7l1mSLO0S7ndnmw1euOdAuWTWtxcdm2IVwJVALa1L..V3BWH1zl1DFyXFCpnhJb58lxHiLv8ced34WIgzM99+2N.f6kvv089+Kuc33WHwDsOGCqugF.CCiSss4fQL1r+YKAyyvvFZrAXylMDarw1kU+NgP77tu669vS8TOE.ruA6u7K+xw0dsWKFzfFDNvAN.18t2M6ZevG7AwfFzf3pPMnEkvPBI.m5lz.4xC76E629scybcH32QZRIA974ilZpIXxjIHRTvQ6qcfliJLjRXHwSaHCdH3Xm3DPYc0gVZsUDQ3gyowiISlfMa1fPgB87sCydwLLj3eZnCcnXaaaaX1yd1n0VaEFLX.aaaaykV62UdkWI97O+yoKpCGnnhKB..4jUVAsWj0mboK1sV2gN7Q8ruvza8wYF0nFE15V2Jl6bmKLXv.Zs0Vw28ceG9tu66bZcSaZSCe1m8Y9csCZRvgXhIZtND7IDYDQfvCKLzZasAc5zEz2AXbTggBBhSXXcpTA.6WaDBgLv3IexmDm+7mGu8a+1..37m+7X8qe8NsF974i+7e9OiW7EeQNHBIzQyRHA3ZyfAXvfAudu1l3+QnPgPRBI.U0WOpSkJLXZW63Ungskj58auCjfKhDIBCJkTPUUWMpnxJvHxc3bZ7zlA6UWXWMj36u7Upvva3FtA14mU7wGOmFKAhlwLlAJqrxv5V25v+6+8+PEUTAZqs1PBIj.xM2bwsdq2Jt+6+9Cp2I7bklTqFppudHTnPjdZoy0gCmYhS3x3jWWl1yXnudhZm7jmLrXwB6s6M+tp.ABvC8POD6s6qsEZugYMqYgRKsTrt0sN7C+vOfJpnBXvfAjPBIfQLhQfYO6Yi669tOe9+9gPH1qxvJqpJnpg5oDFx3nkjF7dbU0UWc..PZRA9axdBwWAOd7va8VuEt669twG7Ae.N7gOLppppfHQhfDIRvke4WNl+7mOl7jmLWGpAL1x2ZeS3Nma8lbq0SILjPBBzjZsHY4TBCItRlLYPU80CEJURILzKvpUqPud8fGOdH5nhhqCGR.nzSKcTU0UixqvGHggsY...g4E1fJ7fiDF5wep6Udhm3I31.HHfToRwy7LOCdlm4Y35PgzAEVTg..HyLx.gDRHbbzDDxOoBCum64dv8bO2Se5wJTnPr10tVObD44jbxIim64dN7bO2yw0gBg..fk7GWHWGB9kRTh8DFVe8MfryLKtNb3TNpvvf0MhkIylPSpUCd73gDSz+dVfSH9ixKu7Pd4kGWGFAE9xuZK.fRXHgP5.CFLf1ZqMuRUe3q38W65A.v+2BueNMN72HWpLbpSeZnrNkbcnDPRqNcfggAQGczPf.Abc3PB.ISpTDVXgA850i5andjnjD4rXwfA6ILLzP8FUXn8+OWWggDRvnVZsUTU0UCd73gbxNGtNb7K7BO2e0i9743c9n5WiPHNbkSw8q7h4dm2O..17WrduSv3G4Bywv543Hg6ErmvPUpTAFFFjnDIHDgzlghPHDGBN+TABIHjZMZ45PvqZ2+zOic+S+LWGF9cbLbuas0VgNc535vIfiVsZ..M+BIdO73wComZZ..nrxqfSikKzRR8BUXniVRp+RY1PHAPJp3h.CCCFxfGLmOqT4Z+s+9qf+1e+U5w0M7bGJFdtC0y8B6XyRPs7RBgP5WhNpnfHQhPas0FzqWOWGNbJ1DFxK37RCqr81QpLYx33HgPHDeKAmep.gDDxfAin0VaiqCChOFd73AYRse.xTUF54cg4WHkvPh2S5sOS8ptlpcZ1QMP6BUXnWLggTEFRHCnLa1LJsrx..vPywCl.L+Tmqvhv4JrnA7WWpBCIDBwyvd6mjpxP.pBCUpz90+PlTZ9ERHj.a228dm39t26zsWev4mJPHAoTqQCWGBDePxjY+.jUnjRXnml11SXXrwDKGGIj.YQEUTPRBI.KVrfpqoFNKNbjvPuwLLj8xjSILjPFPUZ4kAKVrfjRLQDebww0gSPLpBCIDhydwWcE3Ee0U3VqMxHi.QFYDd4Hx+QRRrOu5TUeCbbjvsBlSXn9VzC8szBDIRDhOt345vgPHDupa5FuNbS23041qmlggDRPDiFMgVZs0.x1I0S93KgqCA+VxauBCqu95gUaVg.9zr1ySgpvPx.kzSOczPiMhxqnb1JNbfVadwYXn.A1uPFVsZyi+bSBbY0lU.bgJTkz6XylMTTwEC.fgMTp5B6Mdrmz9LLbUq7U8HOeNZWbNt3tD+WVsZ+8kBFu.8DOqScp7c609IqcMdwHw+CUgg1ELmvPkJs2NRSJojniSL.Ce97gMa1ressDPWaqfUNNOvfw2eySf9oFgDjQs5.yYY3DGedXhiOOtNL7KEZnghXiMVXwpUTeP9trzSxnQivfACPnPgAjIom3aYHCZvPn.APU80il02LmDCFMZD..hEKxi+bGUTQA.fyW6483O2j.WNZ0TN92OjdmpqoZzZqshnhJJHWlbtNb7I7Vq3UvashddFFVasJPs0pvi85FQjQ.d73Ac5zEzOys72UQUUB.ZyjQHboXiMVDRHg.850iVasUtNb3LA0ILr8wwhbpcjFvIZ1yarVNNRHboZa+u+iJxH43Hw+Tv2mJPHA4LYxDZokf2CJlz0jSywPOtNVcgztVj3sERHgfAO3g..fxJubNIFLYxD..DIxymvvTG7PfPABfBkJwgO5QPKAwWbGROypUqn5ZpAG5HGA.fyp5V+cmqH6ypugkSNzmi0tAkRxXPoj7.9qqnPDgAOnAAa1rg8t+8g5TUGUsg9YZqs1voOS93nG6X..XnYmCGGQDRvK973iDausjVmJUbbzvctPBCCt9LdaL1X+6cosecPHANxHiL..vQO1wPYkWFLawLGGQjARVrXAkWYErmGni+8PvtU8Ne.V067At85oVRJgDDRsFMH7vCit3ODVxjIEET34rWMFidLbc3DPPqV6yLzXocPNY.RlYjNJuhxQ4UTAF0HF4.9tE1b6ILTrHwd7m6vBKLL9Ka73.+9AQokUFJsrx73uFj.SxjJktv78A0opNnVsZHVrXjVpow0gCA.W53tDnQqVnSmNrm8tWtNbH8C4NzggzRMUtNLH94dsW9u61qslyauRK3hM7fuJoRkhZUn.0optf1MVjs1mM3AaUXXSMoFlMaFQFYjHxHnY6YflLSOCnRU8nppqBG5HGgMwQjfOCJkTP1YkEWGF9D1+ud...7XK4Qbq0SILjPBBYxjYzRKsFPM3y+a+8WF..u3e+Y33Hw+jDIRfPABfFsZQaFZCg4ElAYAabTggTBCICTjjfDDczQCc5zgZUn.CJkTFvdssZ0JrX0J3ymODJz6b3kCYvCFQEYj3Lmq.nRkJ1JZjP5L974iniJJjdZoiryJqftKDlmPAm6b..Hmryll+K8AezGrZO9yoXwhw0NsogyUXgnppqF50qGLsewdI99DIRDjHQBFZ1YCoIQs.OR+WlYjlau1GeYOM..17WrduSv3GRZRIA..UTEFFzcbRJTZukgKWFUcgAh3wiGlzDl.jISJJszRgVsZgk1mevj.eBEH.QGczHyLx.YjdFTgxzGQILjPBRoViVDQDgGv7lmmqvh45Pvul.9BPhIkDTnPATpL3cWV5IcgVRZrbbjPBljY5oiiexShxJurAzDF5MaGocTbwEGthIc4d0WCOol0qGkTZInwlZBS+puFtNbHD2RSpaBJqqNHTnPjclztxsiVvBWL..9j0tlK55hNZuybyLDggfQMhQhQMhQ5Ud94J0pPAjKSV.y4kPHDeewDcLPrXwn01ZCM2byAky6X1DFxKXKggsO+BoDFFvhGOdHizRGYjV5bcnvYz0by.3ByzQBo2fRXHgDjxrYyPeKsPC.VBK4RkYOgg0ojRXX+DCCCzQUXHgCjVpogSd5SCEJUhVaqUDdXgOf75Zb.Jgg9CXXXfx5ThhJtX1KHQVTRWH9QNa6UWXVYlI86zchd8sv0gP.Ga1rgCezifQOpQgzo1eKgPFfviGOjThIgpqoZTmJUA2ILLHpBCMZzHZpol.e97QRIlDWGNDhWyYN6YA.vjlvD33Hg3K3Y9KOYuZ8TBCIjfXZznEQFQDzt4k..6ywP..k0UGXXXn+cQ+f9VZAVrZEgEVXzEakLfRrXwHkjSAUWS0n7Jp.iH2gOf75ZxjQ6u9Aw+6cSlLgxqnBTbok.8506z2KoDSjihJBo2QWyMiZpoFvmOeZ1O1O3nUgRGKUOqxppDs0VaH+7yGCYvCFB3Ss.WBwc7+s3m...u+ZdydbsCanz6m2UjlzERXXVYlIWGNC3BFSXnx5ruY9RJwD8ZiQABgqoq4lQUUWE..FwvGNUkgDL1wLpd05o2cjPBhY1rEnWeKHpn7+qxv2dEuBWGB98hNpnQ3gGNZs0VgZMZP7wEGWGR9szx1NRopKjLvKyLRGUWS0nrxKGCeX4NfbAqGnZIo9hznUCJtjRPkUVY2NeLnDFR7W3X1EldZogvBilmw8Uy6tV..n4EVOgggAETXg..nkVaEkTRoXn4PI1fPbGM1TSt8Zew+9S6EiD+Wrywv5UETtgYcjvPdAQILzQ2+PF0NRIAvNyYOK6lW6Lm8rTUFR50nDFRHA4TqQKhLR++pLLkTRlqCg.BxkICkVVYPoRkTBC6GznUC.n1QJgaHMIoHhvCGszRKPYc0MfLeNLa1L..BIjP75uV9BXXXPMmuFTTIkf5qu9K5ZiN5nQngF5.TjQH8cs1VqnxppD73wCCanCiqCGeRTB.8rpUgBnSmN1aelBNKxH8zCZ9rDBgvshJpnPXgEFZqs1fVcZQrAYyddGILTPPRBCYXX5v7KTNGGMDh2QGqtP.fpptJpJCI8ZAGep.gP5VVrXAM2r9ddgjfBxjZOwBNZUGj9FMz7Kjvg3wiGxLC6sUoRJqzAjWSKVr..DzzZe3wiGZs015wjEBPUWHw+QgEVDrYyFF7fFDMiqICHJnvy4zsMYxjK2GgPHdSNpxv5TohiijAdWnBC8u273tK0Zz.iFMhvCObDSzQy0gCg3UzwpKDvdhxcLOCIAudp+5ygm5u9bt85oDFRHDnQqVm9.ERvKoRSB73wC02PCvrEybc3325BsjzfqcoJw2QFomN3wiGps1ZQas0lW+0ybPVBCA.FZN4foL4ICgBt3yaqjRLoAnHhP56LZxHJs8MXPtCiptv9qniJJZmb2CZnwFPCMzfK2eQEUDZyf2+ysHD+ce9+9Cwm+u+P2ZsG72OLN3ueXubD4eRZRRA.Pc0UGGGIC7bbMfBVlggJTp..X.o6qPHbgNWcgNTU0UAcM2LGDQDeEUTQUnhJb8eazcBN9TABgbQYwhU+9O7XAOzhwBdnEy0ggeOQgHBIDe7fggApT0yUNCwUVsZE50qG73wCQGMcwBIbiPCMTLnTRALLLnzxKyq+5Y0h8Y2WvTBCA.RI4Tv0b0WyEskiRUXHwePQEWLrX0JjKSFhKVpkj2czpUGzpUWOttO5CWM9nOb0C.Qj+KGyKyNyhUqzNgmPbChEIBhcyYG8Je60fU91qwKGQ9mbTgg02PCvFiMNNZFX4nBCCdRXH0NRIA15b0E5.UkgjdqfiOUfPH8HMZz4WWkg5aoEnukV35vHffiA.ticfGo2QqN6+tTTQEEDv+hW4QDh2TVYZusjVVYk40u.HNZIogDjkvP.6sd3HhHht76EUTQQyuPhOOylMihJtX..j6vxkiiFeaOz+2eBOz+2ehqCC+d5zoCmu1Z61ueokUFZ1OeyLRHD+CgGd3HxHiDlMaFpUqlqCmATrILjWf+kF1nIinwFaD74ymMIwDRfjtq5BcfpxPRuQf+mJPHD2hUqVgNczGdP.Rt8cbmicfGo2QqVM.flegDtWRIlDhLxHQqs0FTnv696yAisjTGN5wOFZrwFQngFpKW.BpcjR7GTTIECylMijRLQphXICHJnvBuneeFFFbp7O8.TzPH9mZyfAzlACbcXDPHXbNFxN+B4wC73E3OCCUnTIXXXPhRjfPBIDtNbHDOttq5Bcfpxvfau26rR7duyJc60SILjPHrznUG6ANRBdEWbwAwhEiVZoEnSWO21sHNSC67KjRXHgawiGOjUF1qxvRZe1j4s3nBCEDjkvvhKoDTZYkAgBDfodEWAtxoNUjcVYw98SJIJ4KDealsXFEVTQ..XDCeDbbzD3n5pOOpt5yy0ggOo1ZqMTYUU1iqq5ZpAM0TSC.QDg3e59Vv+GtuE7+4Vqc5S6pvzm1U4cCH+XNligJChligNttOBBVZGoJr28jRVdxbbjPHdd8T0E5.UkgAujjPBPRBI31qO35p5PHjKJGUYXrw5+kniM+EqmqCg.F73wCxkICUTYkPgREH5nilqCI+JZaOggwFSrbbjPH.omVZ3T4eZnPgBzRKszssNy9KKVC9ZIoppWEN1INN..xKu7P7wEO..tzwcIHpHiBG+jmfpVKhOuRJoTXxjIHQhDpEc4FFTJt2EZ7I9yOC.niOsqTXwE0saPwPBIDvmOeHPf.HfOeTQUUh3iO9A3HjPB77HOz8y0gfOMoRs+4eMzPCvhEKAEcLCGiq.dAAILzFiM1tmTxxo4WHIvSAmq...mpVXGUaXmqf3BNWAXBW13G3BNheo.+OEjPH8JZzpCQGcTAMC9ZRW6BILTIFZNCkqCG+JTEFR7kHVrXL3AMXTYUUhRJqTLlQMZuxqiMqVA..+fj41o9VZA6+29MvvvfbG5vPZCIUm994jc1H93iCgEZXbTDRH8LKVrfyUj8VC4HG9v43nw+vashWgqCA+dYmU1H6rxFBDvGB3K.7EvGey29svhUq3lm0rPHBoVEGgPFXIVjXDe7wilZpInp95CJRpD67KLH359zXiMBSlLgnhLRDUTQw0gCg3wMgKa7tjDvubyaB..2wsOWtHjH94nDFRHDmXylMnUWyHN+vpLj34HSpL..np95CZ1kkdBFMZDFLX.BEJDQDd385GeyM2LNSAmEJTpDFMZzKDgDOEgBEhDhOdj6vxExjJkqCmKpryJKTYUUhRKqLLxgOBHPfmOod1ZeGLxmef+LPwhEKXe+59gISlfbYxvnG0n5x0IIAIreMCCCJozRQwkVBZt4lunyWBh+Md73gHiLRjUFYfryNavmmu6EhqjxJEFMZDwGe7retOg3s0UGejHwhgkVaEFMZhRXHg3lRThjddQD2lboxPSM0DTVmRJggAXpkZGoDBIH2cduOD..9hOact05oq.LgPbgVs5PL9YUYnFMs2FHoDc5QHVrXjP7wiFapITmJUHkjoCt1cngscjFSud3we9ZqEG3fG.VZuRsHpLW4vM...B.IQTPT81rXwBpSkJTmJUXbicrXnYmCWGRcKIIj.hK1XgZMZPUUWMROsz73uFLseQG34CmbDOAFFFbvC86PqVsHpnhBW9Dmja865G5HGAkWQ4C.QHgqwvvflatYb7SdRzjZ0XRSXhbcH0krZ0JNWgNptPZ1E5oM7botyPugXwhQqs1JLYzHfWp0YSHAZd2UuB2dsadqeG..l6scKdqvwumLYxX23lACrYq8M6Wu7bV8GwlvvjC7SDLgPHcEKVrzqVOkvPBg3Ba1rAMZ0g3iy+YFrsvE8X.flULdRxkIGM1TSPgRETBCcSZzpA.891QptlalMYgokZpXDCeDHpHizaDhDODSlLghKsDb57yGG+Dm.IDeuaHROPK6rxFG5HGFEWZIdkDFFrrKkO64J.0b9yiPBIDL0IeEHjP54JgolyWCJuhxgPgBwDtrKCojbJA7+bJXlMa1mSNG7P+NprppPJImBFxfGLWGVtnzxJEFLX.wEWbAEURgmR9m09LhYjCO2K55dgm6uNPDNALDKVL..LPcWABwqXSa9a..kvvKlDhOdHTnPzbyMiVZs09T2hweRvxwt2Rqs.sZ0BgBEhDkPyVbBgPbGA1ex.gP5yzoSGrZ0FWGFDNjb41aOYAK6xROAscnBC6MNyYOa6IKLMLwwOAJYg9ADIRDFQtCG4NrgA.fBJ7bbbDcwk5PFBDIRDZpolPSM0jG+4OXnkjpPoRb57yG..W9DmnaOCTJozRA.vHGwHvfGzfC3uvLA63ymORI4jwnFg8p1qzxJkiiHWY0pUTPgzrKru3EdwWGuvK95bcXDvQrH6ILznIJggDBgavmOeHs8wLfxffy+0QBC4EfeboNptPYRkRGCNInAM9KHcVnhEiPaeC54Nn2sjPHcIa1XXS9AI3T7wEODIRDZokVftlalqCG+BNZIowDSuq5bUVm8SJcjiftvs9axNqr..P80WOGGIWbBDH.Yjd5..nnRJwi+7ytKkCPaIoszRK3.+9AAf8D+IWl6WQVM1dBZSK0T8JwFw2TpCw9ee2jZ0bbj3pRKqLzVasgXiMVjRxov0gCgfvBKT..zVaswwQBg3+n3RJCEWRYbcXDPQtiDFVWfeBCYBRpvvyWas..TGShPHA09r0+A3yV+G31qmZIoDBoaoUWyHlXhFBDHfqCkdzfGDc.fdZ73wCxkICUVUUPgREHZ2rZZBVwvv.c8wJLzX6sfqHBmlaO9aBOL6sqHSlLwwQROKqLyDmqvBQUUWEF2XFCaKfySfI.dWJa0pUr+C7avjISHY4xwHx08SrOCCCLa1L..BUbndqPj3Cxwue43u+8UXwpEb1yYusZ5nJHIdd+1AOD..t7INdNNR7ODVXgA.JggDRuwS+29G.v8FIG2+8cWd4nIvfLY16vNJqqNvvvzqmI89SBFZIolsXFpToB..IKmtdQDBg3tnDFRHjtECCCznUGRH9335PoG8luwqv0gP.I4xjaOggJTfglcNbc33SSeKs.KVshvBKLHRjnd0ikGOdfggALfA7Pf6IlR3VQFQjHY4xQsJTfRKuLL7gcwmAW8Frsjz.vKrxQO9wfZ0pQjQDAl33mPu5hGw.6+bIP9BNQ7uTRIWX1ERUWXu2DmPdt05dqU8t.fRXn6xwluoUJggDhWwLugYv0gfegHiHRDYjQB850ilZpIjfO77Iu+xZPPBCUprNXylMHQhDO5FkjPHj.cAtex.gP7HzoqYX0pUtNLHbD4suKKUUe8vhUKbbz3aSqVM.n2WcgNgZ07DurryJa..TRIkvtyh8DbjNr.s+IbokUJJq7xgPABvUb4StWuY.B39ABwulYKlYm2pidjijiiF+SO4RWBdxktDtNLB3PUXHgP7UHSp8y+UQ.daIkgIvOggmu1yC.pcjRB9PaZURmUWcpPc0oxsWef6mLPHDOBFFFnVCMKCCVIVrXDe7wCa1rAUp7smQabsKL+B68ILzwAxQCmZh2lLoRQTQEEZss1PMm+7dtm3.v+MbSM0DN5wON..x6RuTDar8tYSJvE94AcxZDeAEUbwvnQiPRBIzqlCmDh2V3smvvVasUNNRHD+GiariFiarilqCi.Nxk09bLTYfcBCCzaIo1XrgZUn..TBCIDBYIK8Oikrz+raudpkjRHjdTyMqGwFSLPnPe2YYX9mw973Yjivy0h8H1IWlLzTSMAEJUfjkSWfwtil937KDvdabzFtvNAiP7V3wiGFZ1YiibrighJtHLjAOXO1yK..BPRXnIylvudvC.a1rgrxLKjVpo0mddb76zAhspUh+ESlMgyUXg..XTT0E50csS+p45PvuRngEJ3wiGLXv.rZ0pew7SmP3ZO8xeB2dsu0+58..vi+mVj2JbBXjThIAd73gFapIXxrIHJjdY2kvOgMaA1GiZCMzHLYxDhJpnPzQEMWGNDx.q.iSImvgBL2JIDBwihggAZ7wqxvW3kdc7Buzqy0gQ.ojauJDTz9Nziz0zxVgg89pPhEcfcjA.okZZHjPBAMzXinolZxi7bxVkrAH+i3CcjifVZoEDWbwgwM1wz2ehBL9wAI.PgEUDLa1LRJwDgzjjx0gieqeXG6F+vN1cOttG9AmOd3Gb9C.QTfA973iHhHB..zRKsvwQCgD342Nvuie6.+NWGF9EBIjPfjDR.LLLPkJ2u8s4uIPuBCo1QJgPH8cAlex.gP73z0byvhEZF1ELJ93iGhDIB5aoEzbyMy0giOIKVs.850Cd73gniNpd+SP.X6bj36RnPgHyLx...EVbQdjmyKzVc8HOcbphKoXTSM0fPBIDL4INIHfeeuRWX+c5.zcuMw+fQSFQgEY+20G0HGEGGM929nO4yvG8IeFWGFAjhr8DFpuE8bbjPHjfcxj09bLL.tsjZylU..vuebbt9xNes0B.JggjfSzLLjzYYkY5HqLS2sWOkvPBg31nYYXvId73A4rmzDUkgcEc5zAFFFDUTQ0mRtPfV0YQ78kcVYAd73gpptZzVas0ue9XOUD+7LFpVsZb7SdR..L97xCQFYj8qmO5j0H9BNWgEBKVr.YRkhDkHgqCGBoK438a0qmpvPBwcrm8tOrm8tOtNLBH4XLbTa.bG1gskjxOv6XT0pSGzqWODIRDjj.cbOjfP92mRNwK3UeomGu5K87t85oYXHgPbaNlkggDhu2acLwIbYbcHDPStLYnxppB0pTIxI6b35vwmS+Y9E5D5.6HCPhH7HPJojBpolZPIkVZ+ellE.TkrlMa1o4V3fGjGX9N5+9iCR.BCFLfhKtX.PytvARa5q+V..Lua+V43Hw+QjQzdBCoJLjPbKu66+Q..3puxoziq8u8zOk2NbBnDWrwgPCMTzVasA0Zzf3hseLxI7QEH2RRq470..6UWHso8HDBo2y26p9SHDeZp0nAIknu2tz5IW5h45PHfli1xhJUpfEqVfPAzGezQWX9E12RXHu.fjsP7+Lzry1dBCKqTjatCqe860NtXC1Xr4oBuAbG9nGA50qGwFarXbioeL2B6.G+NMcwJHbk7O6YgEqVQJImLRH9D35vwu2btsawsV2l2BkvvdqnhxdKcWG096IDOtQOpQv0gfemjkmLJq7xfBEJnDF5molyae9ENnTFDGGIDB2vw4fxmNGTReTf2mLPHDuJ85aAlMalqCCx.rPEGJhOt3fMa1fJU0y0giOGMZz..fXioucxjTKIkvERTRhH93hCFMZDUTQk8qmKABr2JdsXwpmHzFvUV4kgpptZHTnPL4IMI1+7zeQsjTBWRud8nzxJE73wCidTzrKzS3OL2Yi+vbmMWGFAjbLCn0oSGGGIDBgzw1RZsbbj3c3XS9EnkvvVZsUnVsZHTf.HSpTtNbHDBwmvQN1IvQN1Ib60GX8ICDBY.gZ0zrLLXj71OoIZNF5JpkjR7WMrgNL..TXQE1upvUgsmfMqV8+RXXy50iicB6G7bdWxkhnhLJO2SN86zDNzoOS9fggAokZpHln6me9Dg3kEQDQ.974iVasUXwhEtNbHDed2zLudbSy7545vHfkToIA974iFapIXzjQtNb73BTqvvy2d0EJStbO1F.jP72vtQzoMsJocu9a7130ei21sWO0S4HDRul9VZAwZJFHRTHbcnvZ6+3t..vMbcSmiij.WxkIGm4rmEJTn.Xbbcz36vfQCvnQiPnPgHhHhnO8bPsjTBWYPCJEDQ3gil0qG0pnVjRxozmddDzd6L0hU+qKxqMa1vA98CBKVrfgL3gfzRMUO5yO0RRIbE0ZTiJqpJvmOeLxQPytvAZOv8eObcH32gOO9HpnhBZ0pE5ZtYDebww0gDg3S69tm+fau1ks7mE..q30eIuU3DvIDggfjRLQnrt5fBkJQZCwydLhbM1DFxKvJggNlegCJk914zPHADnKqDoehRXHgP5STqQCjlThbcXv5iW+mC.JggdSIDe7PjHQPeKs.c5zgniNZtNj7In0CTcg81VRZ0UWMTqVM6sG8nGce90lDbiOO9HmbxAG+Dm.mqvB6yILTnv1qvP+rVR5YN6YQSM0DBO7vQdW5k3we9oVRpyN0oNE6WGWbwgAO3A6VOtZpoFzTSMwda5875Ym7zmF..YmUVHhvCmiil.Gq6S9L..7PK3dunqiNdz9lniJZ6ILTmVJggDhGTkUUCWGB9kjKWt8DFpPQfaBCCfpvPiFMh5anAviGO1VJKgDLhNGTR+EkvPBgzmzRKsBSlLAQhDw0gBY.hiC7thJqD0pPAkvv1oQi8DFFSeb9EB.33v3b2BL74dtmCqe8qG.1OIuA51.Y0UWM6WGYjQh35hKpm6rFhugLROcj+YNCpugFPiM0DRH9360OGB7CaIo02PC3rmq...LwwOAHJDO+mm432ooSUytwLlwv90KXAK.e7G+wt0i6EdgW.qacqi811rYiNA3KBU0qBJUpDBEJDCeX4x0gS.kebG6F.8bBCI8MwDSzn5ZtPqdmPHDtTxxjiiiS.EJUBaL1BnpFu.wDFddE0BFFFHSpTuxw0SH9MnJLjzIW4Tuhd05Cb9jABgLfqI0Z35PfL.Sd.9veuuviL+Bcbgu8SZIoCYHCg8+V1xVlKeeCFL3zZd1m8Y4fnj3tBQXHHqLxD.1mkg8EB8yZIolMaFG72OHXXXvvGVtHoD8RULOCM+HHC7NY6UxYtCcXPrXwbbzPHtu3h09luRiF5bLHjdxmtguBe5F9JtNLBnEUTQgHiLRXxjIzXiM0yO.+HNRXHO9ANGiZMsO+BGTJChiiDBgaQiECRmsjE8PXIK5gb60SUXHgP5yZs01fQilfXwb+t251mysv0gPPA4RkAd73g5anAX1rYDRH9NywRthVs1unVwL.1RRIDOsbxNabthJDUWSMPeKsfH6kyiSA9YsjzichiiVZsUDWbwgQNhQ30dcn1AimQpolJxKu735vvuPMmuFzXSMAwhEiglSNbc3Dz5MW0Z..vS7XKliiD+Kw1dBCUSILjP5Qa6+tc..be28cziq8CVya4sCm.VIKWNJp3hgBEJPhRjv0giGiMa1OFUAAHUXnEKVfRkJA.PJojLGGMDBg3eiRXHgP5WTqVCjIKItNLvcb6ylqCgfBhDIBRjHA0We8PYcJwfGj6M+oBTwvv.c5zAf94LLj84yCDTDRePXgEFRcHohJprBbtBKD4cI8t44mn127.lLaxaDddT0pnVTdEU.gBDfIMgI5UaESTKI0y3Ye1mkpTY2fMFa3TsO6BG4vGADJjNUOOsk9mVjastCbvCa+KdLuXvD.Jhvi.gDRHvnQinMCsgvBMLtNjHj.BwGOMZ.5qRVdxnnhKF0pnVL5QMJtNb7XBzZIo0pPArYyFjHQB8YGjfdTEFR5unyhjPH8Ks1VavnQiTKuJHRxxki5qudTqBEA8ILTud8vhUqH7vBq+MOO8.sjTqVsh7yOebzidTnVsZboW5khIMoI4xuaZ0pUTXgWnsSlPBI.oRk5zZzoSGpolZXu8PFxPfPgBQYkUlKutZznAm8rmE..RkJE0UWcvnQiNsllZpI10jd5oivBy4ShynQi3rm8r3Tm5Tn1ZqECcnCEiZTiBYlYlc4Iw1PCM.UpTA.6mj6vF1v.CCCJrvBw92+9gVsZwHFwHvkdoWJR7hzpIyO+7wgNzgPc0UG.r2xcG+3GOF9vGd29XBjk6vFJpnxJPEUTNF4HFNBUbnt8i0w+92jIe6DFZxjIbnibD..LpQNRDcTQ4ceA8PsjzZpoFbhSbBje94iXhIFjQFYfoN0o5xuKA.1eWC.PlLYH93iGlMaF+2+6+EETPAXFyXFtTsdUTQE3XG6XnnhJBCe3CGSbhSDIkTOuYfJrvBwgNzgfBEJfACFP7wGOxM2bwTlxT5SumXQEUDrX4Bs01TRIEDSLw.EJT.0pUyd+N9cTSlLgRJoD16eHCYHHxHiD0We83W+0eEETPAHiLx.idziF4l6EeV9UbwEiCbfCf5qudjWd4g7xKODQDQfxJqLXvfA.Xu5mRNYe2csdYkUFz0byHxHiDYlQFbc3DPZxSZBbcHDvKtXiEppudnQiFDlL5h9RHDtUhIJABEJDZzpEs1VqH7vBmqCIOBFFGsjz.iDFVcMUC.fASsiTBg5xMDW7s+muG..25MOS2Z8TBCIDR+VSp0.4xj1yKjDPHY4xwIO0oPsJT.FFlf5CBww7Kr+zNRA5+sjzFarQLm4LGr28tWmt+gO7giu3K9BL5QOZ16SmNcXDcnELtrksL7Fuwa3zi6G+weDyadyi81ae6aGxjICiabiykW6st0shst0sB.fUu5UiG8QeTWVyW9keI9xu7KA.v92+9wjm7jY+daZSaBKYIKA0We8t73xKu7vG8QejSwO.vZW6ZwS+zOM.rWYbpUqF+g+ve.e629sNstniNZr10tVm9yBf8Dpb228ciSbhS3xqI.vDm3Dwm8YeFxJqr5xuefpXhNFjbxIiZqsVTTwEiQOR2eWTKRj8DSazGOggG6DGGFLX.RRHAjS1d+10X+8j0polZv7m+7wO8S+jKeujRJI7DOwSfm5odJ1Dqyvv3zueupUsJL4IOYba21sgpppJ1XwQBCKt3hw7m+7wANvAb44exSdxXyadyryt1N5XG6XXwKdw3fG7fcYbGUTQg27MeS7POj6OmD9m+y+IV9xWN6sm9zmN9tu66..vy8bOGV25VG62ylMafGOdn5pq1o+7tsssMTWc0gG9geX1cNuCKZQKBu0a8VtrIJZngFvbm6bwO+y+rS2+fFzfvd1ydvblybvoZel.tfEr.7we7G61+YZfjYylwoOyY..vXF0nCXpX.Rvm3hMNnp95QSpUC4xb88eHDhcK5QdPtNDBJHfu.HMojv4qsVnPgBjY6y8a+cARUXnEqVfBEJ.f8ieiPB5QctJRmrguXy.v8SXn++mLPHDNWasY.FLXrmWnWzZ+3OEq8i+TNMFBVDSzwfHBObXznQzTGp3ifQZaOggwFSr8qmm9SKI0lMaX7ie7tjrP.6IFaBSXBNUAN9Rd3G9gwcbG2QWlrP.fibjif7xKOrgMrgt84vpUqXlybltjrP.6IG8O7G9CnnhJh89ppppvUe0WsSIKL93i2oV22AO3AwUdkWoSUYYvhgOrgA.fhKoDX1rY29w4OTggmu1ZQEUVIDJP.lv3G+.xlcn+zRR2+92OF8nGcWlrP..UpTg+xe4uzkIo2gZqsVLsoMM1jE1QaaaaCicrisKSVH.vu9q+JlvDl.Nc6s3RG98e+2wUe0WsSIKTrXwH5nil81M2byXgKbgXiabiWz+L5vpW8pcJYg2vMbCXaaaaH7v6c6h+0rl0fG5gdHWRVH.v68duGV4JWoS2WiM1HtrK6xbIYg.1SV6UcUWU299S9ZJ3bmCFMZDRRHALX5hkw4dtm4Oim6Y9ybcX3WJ93iG..M1TSbbjPH91tlqZJ3Ztpo3Vq8Nt6G.2wc+.d4HJvUxxs2cAps8jREHHPJggJTnDVrZEwGe7Hhd4wNRHAhnVRJo+x++SFHDhOglTqgSe82wN+Iric10WTUhmmb1SZpVNNR3VZzZ+e2GSr8uJLr+1RRKqrxvblybv27MeC9pu5qv0dsWK62yfAC3we7Gu+Ee.HqrxB6YO6A6YO6wo6+Ftgaf89u4a9lwd1ydvO9i+nSq4VtkagcMibjiD..e+2+8XsqcsrqYjibj38du2C6bm6DuzK8RrIevrYyXIKYIrsMzNyjISX26d23FuwaDu+6+9XUqZUHmbtPkiwvvf28ceW1ausssM11YJu+e169Lv1p7pO.9eIY4o7TduGI1NdkXmEozBIjDHkQBiPABqxLgUBqjWJPgBz.k.kUo.EBPXDFMsTVsLByDlYGuGwaKYK4gF1R1Vy2OHKgk0U1ZekrN+9j08d0UGuz3ddNmCGNX+6e+XvAGDJTn.u9q+KK5.whEOsIpb1pDElHRJwDgVsZQqLzBZsmv7ySXnFMZvAO7DshzxKGQKvK2JRMyEaIo5zoCabiazRa3jGOdXaaaa3S+zOEO5i9nV01betm64rTIdS0y7LOikE1PjQFIJnfBrTUtW60dsPsZ0..nzRKE6bm6De5m9oXSaZSHt3LsHH5t6twUe0VeAFezG8QsL6V4vgC1yd1CjISFTnPA16d2qUshz+y+4+LieutyctSrks7KC5s0t10h2+8eeDd3NdKw0rO8S+TjWd4gG8QeT7xu7Kiy+7Oeq1+e+u+2s516XG6.czQGVt8obJmBdm24cvG+weLtoa5lfHQhrrh08moVsZzbKlVXDUN+EvxQyra+oG5uf+zC8Wlwiq7xJAkWVvY6s1cIbhDFNDkvPBwiwfACLtXZHNlzmnaKHQhDnSutY3nCLXIggbB7urv8Hxzh7jVvTDhIlupRT5BItJpkjRHDOhwFaLL5nigHhv4u.ej.OomVZ3DsdBHt2dQ4kVFaGNrF4VpvP1skjdQWzEg29seaKmmy+7OerpUsJKUc3G+weLps1ZsjrNWg.ABvxW9xsY6okVZVs8ryNaKy6KyxHiLr5XLZzHt4a9lsb6byMW7se62ZopBV0pVEV4JWI9U+peELZzHjKWNtm64drpkDNYqcsq0pDlr10tVTPAEX4CBO4Jj5m+4e1xWyiGOjat4B.SIS4xu7KG0TSMn0VaE.vlYwXvh4U77P+e29QiM2Dl6bmC3wk2Lde72qvvibrigwFaLjThIhBmyb8YOttZKI8e7O9GVMKBe1m8Ywl1zl..vYbFmAV25VGJojRr723ezG8QXcqac1bdFczQQlYlI18t2MN4S9jAOdl9c4Mey2rkDmmYlYhe5m9IHPf.Km+S4TNErgMrA.XpRe+pu5qvocZmFzoSGZrwFQVYYZ90dpm5oh0u90a4waUqZUnjRJwRE7djibjo86y27MeSrwMtQKqB1K3Bt.71u8aC9746T+7xLABDfCbfCfDSLQ..b0W8UiksrkYoZHEKVLFbvAgPgBgRkJwy9rOqk6akUVoUI77rNqyBwGe73O+m+ytTr3KUcs0.c50iryJKHTnP1NblUqt5ajsCgY8DHP.BMzPwXiMFToVEhJxnX6PhPHA4hHhHPBIj.FZngfDIRQF9wyyXG0rkJLTud8PjXSKhYJggDxDbwEsJY1qKaC+tY9flDJggDBwiQlb4HhHRksCChOPJImLBgGOHSlLL5XihHBOB1Nj74zoSGFYjQ.GNbPLQGyLeGlFtSKIE.3tu661pDRDRHgfssssYUaJslZpwsRXnmT2c2sUU0yF23FsjrPyNoS5jvJVwJrzNF2291mcOeW0UcUVc6byMWTTQEgFZnA..zWe8YYe4jSNV9Zc5zgpppJbcW20gUtxUhktzkhcric3xeeMaQ5okFhK1XgbEJPGc1IJHu7mw6i+bBCkHUB5nyN.WtbwRV7h8oslEWskj9oe5mZ4qSIkTrYV.VTQEgcsqcAwSbARRN4js645C9fO.UUUU187ekW4UZIYgls90udbm24cZ47uyctSbZm1ogPBIDqRj4T8Ye1mg5lXN5AfosZF1+92Od8W+0sbLqXEq.uy67NV0dfcVmy4bNVRVnYmwYbFV09T6qu9fPgBQ80WukJrDvTRTmb0QB.rksrE7HOxi.8506xwj2lLYxPGc1I3xkKpnbGetiRH9yDlPBn295CCMzPTBCID63Q1wSB.f+v1l4NIRDQD78Y07zxH8zwPCMDDIVDkvP+H8IQBzoSGhO93gfnDLy2ABIHfqtnUIydsty4LcpimRXHgP7XFarwg5QGEQxBefjacy2nO+wLXFOd7PxImLD2aun2d6C4mWdrcH4yYtk7ESzQ69ePK2nkjFd3giJpnBa19RW5Rs51M0TStTn4MTas0Z0sWxRVBiG2RVxRrjvvVasUL1XiwXaJL6ry1lskTRIYIggpToxx1ulq4Zvq7JuhkDgze+8iG9geX7vO7CCd73gEsnEg0t10ha3FtADe7w6ZeCNKv7JtX7i+7OiFZrQjWt4NisqHtb4B974CsZ0hwGebDVXg4ihzomd85wAO7gA.PYkTpuqUjZlKt5NarweoJlV1xVFiIQ6xu7KeFOOUVYk1jrPUpTg1aucK2d6ae6X6ae6S64YpyySCFLfu5q9J7C+vOf5qudzd6siFarQKOuniXpyV0idziBoRkhzciKBm8dtfIy7yGL0mSbdyad1beSLwDQJojhkmuvezQq93..XtyYNzEJyOxsu06A..OwiM8+uEgYBSPH5su9v.CNHxJyrX6vgP7KcjidbG9Xe8W448hQRvgLSOCTSs0BQhECiFMFveg3msjvvt6oa..jUFT0ERHl4pKZUBwr.6WYfPH9cjISAq73dxKaI3jWFyIcf3cXdVNDrNGCMO+BMOqubGtSKI0dset3iOdq9frNyE71nqVpiNnt6taqts89Y3jSXmACFr62CwxPKgcxIXYx+bH2byE+3O9iXSaZS1b+zqWO94e9mw8bO2CxKu7vANvAl4uYlkO7Il2B..f.PRDEDUJqrxBBDH.iLxHnqt5dluC3WV85iN5ndyPyoTWC0iQFYDDaLwfhKpHe9iuqr5NMZznUUfq6zhIKnfBrYa8zSON8bLxb6KE.3.G3.nnhJBqd0qF2+8e+3ce22EG3.G.JUpDokVZH0TcsNMfb4xwF23Fco6qYyzyE.7K+tvQqZP+4pxPbuhgToRQngFJJcdz7xyW3wezGBO9i9Py3w0cOhP28HxGDQyNYtRg6efAX4HgPHDShM1XgfnhBiO93XfAGjsCG21rgDFp2.0NRIDFQsjThahpvPBg3QM93iC0pGEQFo+6EXi3YjVZoCfif9jHAFLXHf9Ca3JLO+BY5BT6rbmVRpToRYbUtZd6lkmcpBTlZgjCMzPNef3DlybliU2d.6bAA6u+9s7074y2xbSyYM0Dflc1Yim+4ed7rO6yhCdvCh8su8gu7K+R70e8WCsZ0B..EJTfK5htHqpDqfIb4vEkT77vANzAQ8MTOxI6rmwjdEYDQ.kJUB0iNpGIQ5tKEJUfFlnR8V7hVDq7bTtxp6jCGNHyLyzRRCm7+GLYZ0p0xeuBXZNbNUL86gbxIGviGOKIL6Jthq.+te2zOSCLWwnCN3f3rO6y1RLEczQia3FtAr7kubTTQEg7xKOrxUtRqZCvSmq4ZtFzVasgu9q+Z.XZdq9Fuwa3PUOoqx7yGXd9kZViM1HV1xVlUaSsZ0nqt5xqEKtCCFLficbSUWRokThMsSUh2QNYSU6lufPgI.Nb3.YxjAc5z4VspXBgP7TxHiLPSM2LDIVDRZJs.8.MyFRXXe8IAZ0pEwEarH5n8wcQDBwOF0RRIS0y97uD..t4a35bnimdm2DBwiSlL4TBCCBDUjQhXiMVnPgBHs+9QpojBaGR9TJlHggw4ARXn6zRR0pUK1291GN0S8TsZ6e4W9kVc6hKtX..HPf.vgCGKWzblpZuVZoEG9w2QpToodLkVZoVc6u9q+Zb5m9oay86a9luwxWWTQEA9746vwk8r28tWKwSQEUDNoS5jvIcRmD1111FDKVLV25VGNzgND..5niNPO8zCxLHcEqlaN4f5puNnb3gQOh5YFaKbVpvvwX+JLznQi3fG5PvnQiXNET.RTHKcQcbwU2YEUTgkDF98e+2CMZzXSBgNkS4TrLa9VzhVDN3AOnCctCO7vQAET.Zt4lmHDMhy5rNKaNN0pUaoZQMmvvu669NqRf4q9puJtfK3Br59Y94FmIqd0qFuzK8Rn4laFUTQEVV7BaYKaAqZUqBoMQUr6sTTQEY0yE9RuzKgq3JtBviGOKGye6u82rJor9SNQqsBkCOLDHP.laAyYluCDR.D9gvGwEWbPlLYXvgFBoLMyoUBIX01ev+nCer81qoExSZo4ZcA.hIYjt4DFJFKnh4y1gia4WRXXfaBE5ZhtVS1YYaKomPBlQsjTxT8s666Afimvv.2kRBgP7aMtFMPkJ09zGy6+A+K39ev+hO8wj7Kskzd6sWVNR789kJLjcaIo..228ceXrwFyxskISFdjG4Qrbad73gJqrR.XpR8RbRqH1O+y+bqpnPIRjf23MdCG9wtlZpwoOlTSMUKwC.vN24NsYdlsm8rGKItC.3LOSmaHMaO+g+ve.qYMqAqYMqA+w+n0WnkzSOcqRbYngFpa0NHCzwkKWLuIRzbc0W+Ld79Ssjz15ncLvfCZZFeVd4rVb3pqty0rl0X4qGbvAwe8u9WsZ+6e+62RxBA.N6y9rcpy+jO98rm8XYdeZlDIRPwEWLRLwDQhIlnkmSXpKlfBKrPqtcO8zCN9wcrYpTlYlI3vgCJpnhv1111rrcYxjgMsoM4Te+3JxHiLv4cdmmka+i+3Oh0u90iu5q9Jb3CeXbu268h69tuaudb3JFe7wQM0YZVvV47WP.c0ALa0K97OEdwm+oX6vHfVRVZKoLWk0DRvtBmaAnv4ZaqGmIa91uKr4a+t7xQzreIlnPDZnghgGdXnbXGetM6OxvDYTHP88PnWudHRroV+sq1EZHjYsnVRJwMEX9JCDBwumL4x85yAsIq9FZD02Pi9rGOhIAqywvwFaLL93iC974inXnM.5rbmVRJ.v9129vxV1xv1291w8e+2OV1xVFpqt5rr+q+5udqZ+dKcoK0xWqToRrnEsHbq25shq65tNL+4Oe61BDMaxU9ygO7gwblybvZVyZrjfuvCObjPBIX4X99u+6QgEVHVyZVCpt5pA.vK9hunkJ4YfAF.+5e8uFaYKaAOyy7L3xu7KGWxkbIVt+Ymc139tu6yE9IislbBAey27Mw8bO2CZpolPu81Kd629swK7Bufk8unEsH+54WluPd4lGhHhHfbEJrLiPrmHB2+HggZzpAUOQRpqb9K.gxm8ZUit5p6biabiXIK4WlKu28ce23BuvKDOwS7D3bNmyAqbkqzx9hKt3vUdkWoSc9u+6+9s7+wiM1XnrxJCm5odp3wdrGCWy0bMnhJpvxrFM0TSEW0UcU..njRrdN4cu268h5pqNzc2ci2+8eeb5m9oa0rAjoVdLSt669tQ94muka+ge3Ghcu6c6TeO4Jt268dQ3gGtka+9u+6iUtxUhEsnEgsu8siHiLRqlkp9KpotZgVsZQpojBxH8zY6vInx0toMiqcSadFOt3iKNDuePqYNPVRIlD.reaKmPHDeMtb3hzSyzq6JRTf8m+MPukj1ae8Ac5zg3iOdDs.Arc3PH9UnVRJwcEX9JCDBwumFMZgJ091pLj36IT3DqxxQFACOxvrc33y3Imeg.SpBCcgLFlc1YixJqLbricLbu268hG7AePzTSMYY+YkUV3O+m+yVcetsa61r51s2d63oe5mF6bm6DRkJE2xsbKS6i4ocZmlU2t0VaEe1m8YV0JBWwJVgUGSKszB9rO6yvvCa5uSVzhVD1wN1gk1LpDIRvy7LOC1xV1Bdy27MsjzgjSNY75u9qinhJJG4GGyn65ttKqRX5C+vOLJt3hQ5omN1vF1fkpsL1XiE+s+1eyi7XFHiGOdn3hJB..00vzWkg9KUXXs0UGFe7wQRIlHxIa1sEEY9+oc1OrFWtbwq9pupUIQ6e8u9W3Nti6.e7G+wVZSlb4xE6d261l4w2LIlXhAu1q8ZVpfVCFLf8su8gssssgW4UdEHUpTKG268dumkjpcpm5ohhl3uG.LkXuxJqLjc1Yiy67NOzPCMX0bSTtb4NT7DQDQfm8YeVq11l27lc3YgnqpxJqD6ae6CYjQF1rOgBEhu5q9J+tUstbEJPqs0F3vgCpbAKfsCmfNJTnDJTDXWUIAJRNoeIgg5MneFNZBgP7MxLiIRX3DU2VfJKILjSf4kE9WZGo9WuOMBwe.0RRIS0cs0aE20VuUG93CLekABgDPPlLE9zpLj36wkCWjZJllEFhChZKoxUX5hf6Qleg.SpUQ37++R7wGO1+92OV8pWsUqPTNb3f0u90iicriYU09AXJge+m+y+wl1sYBIj.18t2Mtwa7Fm1GyW3EdAbYW1kMsIw6ke4WFW7EewHxooBLu8a+1wAO3AwIexmLBIDqGqxQEUT3JuxqD0We81LeFcGwDSL3y9rOCaaaaCovvb2jOe937O+yGe8W+0npppxi83FHqf7yGgEVXXngFZZ++byUaqJUp7UglMTnTIZ4Dm.b3vAUUo+vu+b81ASIkTBpt5pwl27lYbwIbFmwYfCe3C6xsq2Uu5Ui5pqNbgW3EZSkzxkKWbdm24g8u+8iksrkYY6QEUT3C+vOzlEM..PAET.9jO4SrpMdpVsZGtEk9a+s+Vr90udK2dngFB2vMbCN62VNsEu3EiFZnA7Ye1mgsu8sist0sh8rm8f5qudr3EuXqZYydpEtf63nG6nVlMmwFiG50fHD+PgEVXH1XiE5zqGCN3frc3PH9ctoMem3l17c5PGqyz9RISuTSIUvkKWLvfCZ0HgHPSfbEFpSuNKc3nrmgYrNgDThZIojoXgUs.rvpb7EaJGiSyUyus16ziDTDBI3UxIkHDHv6eA15p6d..P1YkoW+whXsN5rS7SG3mQpojBV9o34Rrimvmuzb..vo+yd1WO6mO3AP6czAVTUUg4Tvbb6y2W8MeMj1e+XEm5xQJImrKedTqVMpqt5vvCOLpppprpReXhACFPmc1IZt4lQN4jCJpnhbpJgRud8PlLYPsZ0Hpnhhw48md85wPCMDFczQg.ABrI4klM93iiFarQzau8hBKrPjWd440agFZ0pEs1ZqPrXwXzQGEolZpH+7y2oaAguyd9m..3huvem2HL8KzTyMgid7ii3iOdbFqZ0LdLZ0pE+62++fP3wCWv4c9rRKP4a122h9jHAyofBvhpZg97G+oRhTo3q+1uAImTR3zV9Jl46vzniN5.MzPCHojRBycty0iUgy.ldtfSbhSfSbhSfDSLQTPAELiyuy1auczZqshPBIDTXgEhzC.aMley27MVpl4TRIETVYkY09qu95QokVpkauicrCr0stUG976oetgdDIBe2O78HzPCEm8u8LQngxdsa2fUW3k76A.vdd6cMsG2uaClZiu+y25U8xQzraG8XGCM0RynzRJAkWZYy7cH.k258qRlcyQe9Hhm299t8Cw81KV7hVDJHu7m46fen26CdenQiFbdqccHrvBisCGmR28zM99e7GQBIj.N8UtJ1NbHD+NCIaH74ewWLse1cBY5DxLeHDBg35jIWNhJpH85W3XJQgrmzRMUvgCGHs+9gVcZA+P3y1gjWm41rWrw5YlOQtSKIcxhLxHwhW7hc3imKWtHu7xC4kWdtziGOd7PhIl3LdLIMQaEa5DVXgg4O+4i4O+46RwhqfOe9n3hKFEWbw9rGy.UETPAnglZBxjIChDKlw4lFe97QXgEFFe7wwXiMlOe9O1iHQnOIRPngFJJuL+iKrrq1RRYRt4lqS25QcTb4xEEVXgnvBKzguOtyyc3u3du26Ee+2+8.vzyedjibDqZ4puwa7FV9Ztb4h0st04yiQyzqWON1wOF..JuzRojExRdmc+JNzwQcXCOijSNYzTKMCIRjLqNggDBIvRFomAD2auPjHQArILLPtBCM2NRygZGoDBir7YPY43fD3Jv6UFHDR.EsZ0gQFg8ZOcDuuvBKLHLgDfACFfDIRX6vwqyfQCPgRSyuHOUKIkiazRRIDegP3EBl2DIVs15p0tGmfIZYiCOxH9j3xLCFLfiUsoVeY4kUFBKT+kUJMMv48mcEWwUX4qUqVMV9xWNthq3Jv8ce2GNyy7Lwe4u7Wrr+K4RtDmJgpdZM0RyXDUpPrwDCJn.psxwV3wkK3E.dwUCTkbRIANb3fAGZHnUmV1NbHDBA.vxBmqOIRfNc5X4nw0DnlvPc5zgdmXDIjE0NRIDF8KcjT5yfRL4ttmG.2087.N7wSUXHgP75jIWADHHJ5EqlEK8zSGCL3fPjXwHyLlcWsmiLxHvfACHxHiD746YqlRpfDH9ylS9EfFZrQHStbziHQHyLxvliQffnwfCMDFQ0HHYGnxR8TZssVwHiLBhN5nQA46+rRuo+m1+10e8WO5omdvC8POD..5qu9rppBMayadyXG6XG95vyhQGcTTeCM..fJWPkfKm.qKtWvnnhx9yuWhiiOe9HgDR.CN3fPpz9Yr51IjfUu9q77N7wdfCcD..rjE4OLemC7Ed3gCgIj.FbngPeR5Kf7y+FnlvvdDKB5zqGIlXhHxHoWqkPXhmrK2Plcn01Z2oN9.qWYfPHAjzoSmWuZStlMdK3Z13s3UeLH1WFoY5B3Ht2dm02FtjKWA.7bUWHfmqkjRHdS73wCkLu4A.fZquNF+6Uyyr1Q7gUXnVcZQs0WO..le4U3WkLE5Cq4+6AevGDG6XGC2vMbCnxJqDIjPBH4jSFkTRI3ptpqBe0W8U3oe5mlUmuOGq5iCc5zgLROcjZJovZwAwT0S6Hum1csymC6ZmOmOHhl8KsTSE..81WurbjPH9WhHhHb31+9i8WeF7X+0mwKGQAWxLSSIIr6d5gkiDm2jeO7AZuG0N6pK..jS1YyxQBg3OyRIFxtgAIfEUggDBwmPtbEHZAB7ZugTkJG1qbdINlXiMVDUTQAUpTgAGZHjnPgrcH40nPg4DF5Yleg.XRuQNJggD+aEjW9ngFaDxmnJCyJSqWQ0QKP..7sILrwlZBiO93HQgBYrpGYWzGVKPv7m+7wy8b9mI2QZ+8iN6pKDBOdnxETIaGNA8t5q6lA.vdd6cwtARPjzRMMTac0gd6qO1NTHDBwhrxHSb7pqFhDKF5MnG73xisCIGVfZ0ENtlwQe80G3vgCxlZGoDhcYokjxtgAI.Vf0qNPHj.V5zoGCOruclVQ7sL2lnDKVLKGIdWxUHG.lRRpmhkzER4Kj3maxUYXM0UqMUYXLQGC.9kDq6sM1XiglZtY..L+JluO4wzYPeXMh6vfAC3vG0Tajq3hK1xLBkPBljP7wiPCMTnRkJnbXZABRHloQiFnQiF1NLBZIPf.DWbwAc5zAIRjv1giSIPMggc2cOvnQiH0TRgU67CDh+NpK2Plpm8oeL7rO8i4vGef0qNPHj.ZxjqfZ4hyhk9DskTQhEwxQh2kbyUXXbTKIkDbpf7xGQEUTPoRkniN6vp8ESLlRXnxgG1xEivap15q2RqZLoDSzq+34rnOrFwczxINATnPADDUTXdEULaGNDmfHw8BQhoVnom.GNbrzVR6iZKoDhEW5Ud83Ruxq2gN1Ur7SAqX4mhWNhB9jUFAlskz.0DF1Y2lZGoYSsiTBYFPc4Fh0RI4jPJImjCe7AVu5.gPBnoWuduVqC8c28qf2c2uhW4bSbLImTRHjPBAJTpDinREaGNdEZ0oEpToBb4xEQKHZO2IlZIoj.Hb4xEkWZo..n15pC5Mn2x9BIjPf.ABfQiF85UBhZ0pQas2F..pn7J7pOVtN5CqQbMiN1nnl5pE..UUYUfGu.mVc1rYokZJHsTm44H4sdG+Abq2wevGDQAGLmvPw8RILjPbE23FuZbia7pY6vXVGyywPQhE6SVnbdJAhILT8npQ+82OBgGOjY59aif.Bw+B0kaHtq.mWcfPHyJHWgRuxallKWtATug2Yi3xkKRK0z.vr21RpBEJAfopnxS92aTKIkDnImryAwFSLPkZ0n01Zyp8Ytc8pXh12q2R8M1HLXv.xNqrQrSTYi9anOrFwUcriWMzoSGRO8zQ5okFaGNjI7LO4ihm4IeT1NLB5jVpoANb3.o82OzpUKaGNDBg..fXiIFDSLw.MZz.o82OaGNNr.wDF1UWcC.fzRKMvmOeVNZHD+aTWtg3tBgsC.eklatITe80CI80GjHUJzpUCxImbQd4kGxO+BPVYkEBIjflebPHrF850CkCOBhKV+yKtKw8jQ5ogt6oaHtWwnv4NW1Nb73Lm.j37fyuP.XoxQlbkZQBLX9CbGr8lw4vgCJurxw28CeOpugFP94lmk2GUbwFKDIRDjqPAxwK83O5niZo5BKsj44kdTbeT6FN3kd8ld9bW44Fj1e+nyt5Db4xEUsfE3oCMBIfSXgEFRTnPz+.Cf9jzGxJyrX6PhPXcIjP7rcHPfo1RZcJqGc2SOH0Tl4JP2ePfXBCM2NRygZGoDxLhRXHYptreuoVX9atqWzgNdedFxdu+8+F28ceW1r8RJoD7d+mOvi9XIQhDrm+46hO5i+HbhVZYZOVd7BAUUUU3tum6AUTw7mwyc2c0EV8pWICmGdnt5abZuu50qCq7zVA5qu9rYeu2689njIZyW1yMbCaDe8W8U1r868Ode3xtrKeFhbGyy+7OGd5m5IsY6KeEq.uvK3X+wESzoSGppx46wGN263wdbr10tNb+22eDu669N1r+q8ZuNbmacaN7463G+33h9cq2lsyiGO7Ae3Gi4Lm4flZpQrt0dNtUbyjO7i9XTXgEY41iLxHXIKdgLVUde9d+Bjc1dqKGq2ib4JPLQKvi9FTGd3Q..PzQKvicNINuzRy5U.9rsU+m44WXrd3DFJPfo+ts2d6E4F.9+zAyL2dzhNZOXKpM.QlYjARHgDvPCMDZtkVPIyyTh6hyREFpvq8Xat5ByJyrPrw3Y++QOIyulz.CNHznQCBMzPY4Hh3qL3PCA.fnhLRm59YvnAb3idD..Tx7lGDDE89ZBDUTgy9VzTrszSOcz+.C.QhESILjP.v+3ua60qwddu2+iA.v4etms2JbBZkYlYh5Zndzindvhppp.hKPuAiAVILT4vCCYxjA974aoiFQHjoCMVLHVa7wct7v3ySX3QO1QXrMhLuRl9jj4LzqWOdsWaW3odxm.pbv4nkd85vAO3Av4edmKV+5uPbmacaHwDSztGeLwFKieenUqVXvfgo8Ed+rO6yP2c2Mi6azwFcZiyd5oG7E6cu1j7n3iOAbAWfsI3xUcridTF+9qj4UhacdarwFb3em3LJYh+9I4jSlw3VhTIN046oe5mjwyyYeNqEyYNyA.lRpnmtk3DQDQfBJXNVssZqoFL93iaywFarwhrxJvb0UYvfAnT4vHt37bWj2q95uY..rm2dWdryIw4EVnytWA3lSXXbwFmG87laN4f5anAzYWcgvCObTbgEgHhHBO5iAwyRmNcnGQhvQN1QA.P94lGKGQri4Wd43q+1uEMzTinfBxGgEZXVRntb4dmVR5niMJZssVA.Pok3duuDusXiIVKIUcee29QUKnRDW7wAtbBLt.MDmmdC5wPCICG7vGB.voecvVZ4DPgBEHpnhByqnh8FgHwMzPiMC.f4UbgS6w8mef6wWDNAUxL8LvwqtZHt2dgAiFnmGkPbBu869u..kvPug3iKNHHpnvHpTg9GX.jbRIw1gzLJPqBC6ryNA.PlYjIMSmIDG.MVLHtKedBCq93Uy31m+7m4p5yQHQhDbsW6Ui5qqNW59aznQrm87Owm7I+O7LOyyhSc4KmwiK5niFb4xkwp9RmNcS6JHeWu5qZ28M1XiMsw2a+V6lwGyq7JuRO5EWt5pONiae9y28ZKR162+tinhJJje94C.Sq7TlL3fC5vmuidjifu8a9Fa1dngFJtsa61sba68yH2w7JoDadCP16wohJpHfX0qYOxUnDwDSzALuIUhia17J.WgkDF5YqnonEDMVTUKDG7vGBM0bynola1id9IdWomVZyJaAuNhTRNEjZJof9jHA02PCnx4u.DsfnAe97g5QGEiN5nd7je2TyMCCFLfLyLSO9+K5MrrkrT7keyWiAFbP74e4Wv1gCwGJlXhwRk25HTOpZTSc0B.fEVYkzEEyOz88.OL.nEnFaH5niFQGczX3gGFCLv.H4jRlsCIBgP.fopLrwlZB8Hpm.jDFZJaBbCPtdRczkoDFlaNTm3gPbDTKIkLUNa2eymdk50nQCZrwFXbeNRa.clzSO8fK5htPWNYgS1HiLB111tS6t534xkqca+X5zY+pNq1ZqAGdhUbLSltDFpQiF7tu66Zy1iLxnvkeEWocueNKI80GjJUJi6qh4Wgact8FIYqrxJyRRmRKM6jvvAb7DF9zOMys1iMboWFxHiLrb6pq1ym7Sl9+.6833I9eF1jACFfBEJY6vf3EjwDItWbu8NqZtcodT0VZofdip+qf7yGq5zNMjQ5oSssv..gviGhO93whpZg32bx+5f5E+v7qvz6MnkSbBLhJUfCGNHg3MMWcL2VF8TzpSKZsMSytvRJNvn5qhN5nwZV8oiBm6bQTQEE8A2lkiCGNHxHiDEUXgXUq3zbpOb1QN5QgNc5PlYjAR2NumVBIXVloa5yh0cOhX4HgPXes0dGns16fsCCB.xJyLAfoqIYfvm+MPpBC6efAfJUpPDQDQ.QxXID+CTKIkXs250eI7Vu9K4vGuOsBCqu95gNc5rY6QFYjXtt4Jyu+96GWzu6BQe80qcOlvCObL+Er.jYlYhvBKLTec0gFZnAFa2i..CLv.3Aef+Ddhm7oXb+wDarLNedzoSucigcsqcMseeLcIL7+9weDjIy1K71EewWLhKNOW6w63Gm4j5kUVYg3iOAux41cTd4+RRLSKcl6m4CLv.Nz45vG9PX+6e+1r8nhJJbS2zMa41iO93noFm9YUoqn7xK2lsc7ieLFO1J7PUkKaRgRkH1Xiwi7FUSOsT8.QDwSHlniABDH.iLxHXfAG.Ik3ri2Xub4dmpKbxRTXh32bx+Zu142WangFBIjf685FD+ewGW7H2bxAczYmnlZqAKaomDDJTHjHUJFbnAQlSZw13tZu81gVsZQRIlHRvMeOI9RgGd3npETIpZAUx1ghOk3dESI9xAIRrXziHQHjPBAUUYv0emLazOefCC.fktjExxQxrKYkYlnglZD8HpGT0BV.s.LHA09+t6+D.brJd9JtrK16FLA4DlfPDYDQ.0iNJFZngfPgBY6PZZEHkvvNmn5ByI6romymPbPTKIk3t7oILzdUWVIkTpa2xc9+9+1pcSVXngFJ1xsda3hu3KwlDqoWuN7tuy6hG3AteFSl4G7AuONyy5rvpV0psYewEabnazkMamoyCfojV8e+3OZZ+9X7wXN4k..uwa751rM974iq4Zu1o8b5rreKvz8RPkZ0pPqsdBF22Ne4WwkaqLoMo1PZpolF3vgiMqpqAGzwRX3S8jLWcgW60dcVcQusWxuEHP.dq25cbnGKljW9VOCrFXfAfXwhY7XCzqvP.SsBC4JThDh28S38S+D+EOPDQ7TxH8zQSM2LDIV7rlDFZdAhDqGd9ENajQiFQCM0HpugFv5OuymsCGhOP4kUF5p6tQmc0EJpvhfvDLcgR7jUXnQiFQSszB..Jpvh7XmWh2gbEJv28C+.Nq07aQTQEEaGN90zoSGN7QOB..pnrxPjQDIKGQD6YwKpJG53d7m7uA.p0k5okPBIfHiLRnVsZL3PChDElHaGRDR.gy4rVCaGBy5kYlYhlaoEzsndnDF5gXvfAzU2cC.pcjRHNCpkjRbW93DF5clegu0t2MiybN.Sqn620eQGI...H.jDQAQk+EdQbJmxov394wKDrgK8RwbKbt3pupqBpUqxli4wdrcvXBCi0NUYhVsL2RRe62Z2PiFM146BSrW0NVSMUyX04st0ctH0TYtp5bU1sEX5l+dpt5pC50aa0WFWbwgUrhSysN2lEVXggDRHAalYgZ0pEJUpDwDSL189dfCb.7C+v2ay1EJTHt1q65rZa0XmjpVV4kiRKqLWHxYVM0v7uKRM0zPxIO6XtcnPgRDaLQSyomYYROMSILTrXwXAyBRtMfoK9Mf2sBCmMXzQGE+3A9YHUpTDRH97QkLgkDUjQgBm6bQiM0DNd0GGKaomD.LUkoFMZzi7gU5QjHnRkJHPf.Ks9Xh+qic7iACFLfVNwIvBlEzUD7lpst5fZ0pQ7wGOlyblCaGNjow1tiMy1gPPurxLSzTyMit6oGJggDBwuQVlSXXO832+4eCTRXn3d6EZznAwFarHNZQ6RHNLifRXHwZ8OwnZKoDcrEzhO8UGp1NsVw4O+E3xmyQGcT7W+qOFi6KxHiD67keE6lrvIawKdI3RuzKkw8chVZA81qsUuXrww7EMloJOSqVsX269Mmw3vdsjTlptPtb4hqeiaZFOmNCiFMZ2jT4tI10dsizJpv8lKhSU5oybqOapIQbpdpm5IXb62zMcyHxHsdkwauuWbm+VlI1+ww+9Mf5LLZzTUFRlcIoDSD74yGJGdXL7Hiv1giGgbElloswYmm6m.HRrH7Ie9mYYN3RuA0fKkT77PngFJjHUJFRlLDYjQBc5zAkJ8LOGeSszL..JZtyk9aK+bh6sWzmDI..n01aytceCBfb4xs721KdgKDb43eew6HD1l4YEV28zCKGIDB6phxKEUTdorcXPlPhBSDgGd3PkJUPlLYrc3LsBTRXXGSzNRopKjPbRV55dzmYlXxMdK2Atwa4Nb3i2m8pCiLxHns1Ziw84NIL5e+u+WPtb4Ltum4u8rXYK6W4vmqq5puFvmOeF22O9C+fMaydqvEc5rsBC+e+u+K5u+9sZaLU0hiMtsILTtLY3i+HaakoqZ0qFETPALFCtpN5nCFuvd73wCkVp6U4b1qUmVtGd0WY+4XX+Ltc.fe5G+Q7y+zOYy1yJqrvFtzKylsa+11pmM4m18wYVTBCA.TpbXFq9TmQ8M1Dpuwl7PQDwcwkKWj1DU+r8ZqtARLXv.Fd3gA.PrwPILbpzqWONzQNB1+2+8VUI896eHThmUngFJJYdyC..Gq5iaosjJse6+5uNJEJTfAFX.DRHgf7xMuY9NPXMFLX.GaRKRPsZ0h16ncVLh7eYznQbvCeHXznQL24L2.p4xIY5sxS6TwJOsSksCiYkDlfPDQDQXosjRHAq9i28Vwe7t2pCcrOye+efm4u+O7xQTvMNb3XYAMzY21N5h7mDHjvPMZ0X45HjS1YyxQCgDXwxLLjxWHwE4yd0gZpoZalqb..wGeBHKW7I+MZzHdkW9kYbekTRINcatLkTRAkTRILtud601K3s8aIo1tJp20q9pVc6niNZboW1kaywwTEFtm87OYrUktoMciL936NNtcpBz4Lm4hHiz8lmJU6ipVtzRi41T1zUggO8Sy7rK7Vusa2ljHqToRzd6Legu7zUXX0G26Tsm9aLZzHjKWgacNt+G3Qv8+.OhGJhHdBYLQx6EwvyeFnQ4vCCCFL.ABDPsYyoPtBE3y+h8hSvvLpkpBrfOycNyABDH.JUpDbm32+R5WpaedascSK5rbyIG5+A8ych1ZEJmXAVXVyszBieNffcs1VqXvgFBQDQDnBOXKsm38r2u7avd+xuYFOtMccWE1z0cUd+.JHDGNbP1YlE..5rK+6KJOg3uX+e2Oh8+c+HaGFy5kcVldtotmXt64uxfQ++DF1cO8.CFLfTRNYZ1NSHNIpkjRbW9rWcvdIKph465UjUSM0D5ryNXbeW0UcMtz4zdsyxgXnkBDab1qBCsNggG8nG0lJE6BuveGDlfsqh3wmRBCMXv.isxzSZYKyqjzHu0blTlrgr6aZpBObEFltclqQ1Kgg+vO783.G3.1r8hKtXr10tNa1ds0VCiWzqDSLQjVZdt4IY2c2MjIaHa1NGNbP4k6YqjQ+AJGdDnSm6UkgD+KokZZfCGNn+96GZzN8yuU+cVZGoz7KzJsbhSfO+K1KTXmVNo+7GBk3cviKOKysEw8YpctKUpT2JYQ50qGczooVRTA4ku6GjDuFMZzfZqqNa19viLB5sOaau+AyFcrQwwqoF..T0Bpztc4Dh+kWbm6Bu3N2EaGFA8xdhEbbWc2MsXDHDheiDElHhHhHfJ0pmwQhCaJPnBC6niN..0NRIDWB0RRISQt4lCxMWG+4S8YKQa6kHJ2IYQ+7Ow7JjJwDSDm84bNtz4zdI7QECyfK6UggSskjtqc8JVcatb4hq3J+8LV0fSsBC+1u8aXLQadipKDX5Z0ltWR8po5ZXb6b3vAW8U+6c5yWzBDf25seWF2m89c3.CL.ia+odRlqtv6bqaiw2.k89aYUpTgy4bNKF22zohJlO191eXFdbX92E4me9Pf.AN8ii+NSyxPEHQgT63Z1hPCMTjThIBo82O5su9PNYE31JQTnvTEvZum2OXy3iONNvgNHDMCsaVZEsEbJyLx.ImTRPZ+8iPBIDnQiFnPgBDmcVnUyjdDIBZznAwGWbH93i2CGsDOo5pudqZKwSVyszBR2NcAhfQG9HGAZ0pEomVZVZgYDBwwHLgDf.ABvHiLBj1uTjRxov1gDg3y8s62zXy4T+MN9X3g3cYtBnapklQWc2MDJTHaGRLxbBC43mN2jGYjQP+CL.BgGOjI8djHDmF0RRIS0i8HOfSc79rDFZuVco6T4Z+ncRX3pV8oiPCMTW5bxz76Cf4KRr8mgg+RURIou9vm9IehU6ekqZUHqrxB8vvfZepIQ7MdiW2liozxJC+leyugwGa2gNc5P8LrpvAb+JLzd+92nQi18wb57q9Umrc2m8tXTCxPBC2+92ON7gOjMaewKdI1sk1ZuuWFczQcsuWryb1z9Ukqmssm5OQoxgQbwFiK0t4VxhqxKDQD2UFomNj1e+PrXwAzILz7rx0dOuevFUpUCMZscd8NU9yqZUh2UkKnR7Y68ysz0EjzuTWNggsMQ6Hsf7opKze1vCOLZ9DsX282mDIPgBEzBu..8HpGziHQHjPBAKrpEx1gCwK3e+e9P..bAm2ZY4HY1qbxJaTWC0iN6pKJggjfRO6y8h.vwRX3c++c6d6vgLgryZhDF1S2XAye99kKfRi94UXX6SzI4xLyLA+PnNv.g37nJLj3d7Iu5P+82O5sWlaCQtSkq05IrcdIA3dkrdWc0IiaOdFZenw3.UX3t28aZSKJ0b6RM7vC2l66jqvvt5pSruu8as4X1zltAFebcWM2TSLV0igEVXnnhKxsN21qp7bUSWBLsWKIkoJL7oepmfwicqaaa187au4JnqpB678h8q1yYesizISlKNKC25suYr0aeyd3ng3tL++ih6sWKyJg.QxmnBCoVRpIIDe7XkKeE3T+MmxzVwWb8C+.xDei3iKNjed4aY0MJQpqMGCUqVMjHUJBgGOjS1TKIxe1wp93yXqAroVreBECVnQiFbnibD..L+xq.Q4lyHbhu04styFm25N6Y73dm+46g24e9d9fHJ3k41RZ28zCzafFqADxzoxETApbAytuNB9KDJTHhJxHwniNJFXPl6xUrM8SjvPd9gILznQiVFEA4katravPHAnnJLj3t7IUXXM0vbBVxHiLbqRzmo4JH.PVY65UwRmcxbBCSfgDFFWb1IggZMkfvwGeb71u8aY09JojRvRW5RAfcRX33+RBC28a9l1bgWxM27vZVyukwG2gFZHGdFNDRHgXyJ71dInpjRKE734d+oh8N2tpErfJs69RLoj.Odg.85sNQsSsGxuuu8awQO5Qs49uxUtJrvEtHFO2RkJE84gmAOL88hd85Qs0Zup8b1aEFB.L7vif3hMVvmuOq.nIdQQKHZDczQigGdXze+CfTRNY1NjbZZznAiN5nHDd7lU1NfcGokZpH5niF+uO8SrzZalLN9geHThuSEkUF5pqNgN85gTIRfdC5AOt7bpyQ2SzMFRMsznY7leLIRkNisnX.SKFt4Wd4HrvByGDU9mNV0GGiM1XHQgBwbJn.1NbHNoMbwqmsCAxDhMlXPbwEGjKWN5s2dQlYPssNBg3eH6rxFMzTinyt5FIkXRrc3XCKsjTt9eYSn+AF.pToBQFQDH4jB7t1ADh+.iSTgg9iU3LgcbziYJ2bN5hGxmbE4OtcZshtShOzqWOTpf4JQJaWbEnqVsZH0Nq.9xJsLa1l8ZoRZmnhB+nO5CwPCMjU66J+8Wkkud5pvvwFaLrm87OsY+W20e8L11.5u+9wIszEyX7vjUtxUgW7k1oUaya76I..whEa24Gnq15XsWU4A.viGOjZpo.QhDY01mZL7TLTcgb4xE24V2pcO21Kwmb3vwktPlIjfPjQFYXy1as0S.0pUYy14ymOl27lmS+3DnQtbEHoj7O62+DmWlYjAZnwFgHwhBHSXn4pKLlXikdCWL3vG8HvfACHiLx.YjVZntFZ.pTY54unJLL3V3gGNJqzxvwp9XPmd8PhTIH8TctYXWWc2E..xNyr7FgHwCQhTIHojRB5zpEZ0oC5zoyl4xM.fN85wIZqUT57JgEhR1mDoRQas2N3xkKVxhVL8ZJDhaJubxAGUtbzdGcPILjDz4L+smNaGBD6H6rxBMzTin6d5FKrxJ86d8diFLkLA+wVRZGSzNRyMmb8694FgDvvH0RRIV6geTS4.YOu8tbni2mjvPuQqUb7wGmwpY..HlXhwkNmex+6+wXE5IPf.TLCIoIV6NCCM0RResc8pVscgBEh0t10Y41gDRHfGOdPu9eoEpL9DWbkO5i9PnXJIDM4jSFm+4eAL9Xd7iw7b0ydXpkd5sZAl167VbwEi+6+6Scqys8jVZoaSBCGbRsChu9q+JFSP55N2yCEVn8a+p1q0pdtm24iG+w+qtXz53ONEW77b4jrFHY3QFAwEWLNURX+7u3qA.voupU3sBKhKJizMmvPwnpoo5f8WoPg44WH0NRmpt6oGzau8B974iEW0BQ3gGNxMmbQqs2Fpq95oJLjfBm6bQ8M1.znQCpq95cpDFpRsJL3PCgP3wComVZdwnj3tpnrxs5150qG64892fKWt3bW6ZgNs5lHQhZAGNAmOufN85vAmXtYWZIk3xedERfgq7xuD1NDBJjS14fiUc0Pbu8hwGe7f5pWlD74pthM3vG6V+C2O..drG4A7VgCYRhO93g.ABvHiLBj1uT+t4rpA+zYXnN85PWc2M..xkZGoDhKyR5Bo7ERbQ9jWcvdI+nB2nx0hLxHQHgvb9NEMQ6qxYsyc9RLt8pV3BY7ERiHhHXL4M5zpCG3.G.0We8Vs8KYCWpMGeXgYcUFZdFB9Fuwqay48pu5qwtIK53G2ISX3Br9m8pUqFsXm4Ji6VggdqJWb5jFCWXwgGdXnQiF..7TO4SZy9CMzPwscaS+v.uZ67y4oalJ5Jr2uO8zON9yb1YY3K8xuFdoW907RQCwcHLgDP3gGNToREjKWNaGNNMZ9ExLsZ0hibLSs044WdEVpZdtb4h4VvbvYelmIJo3Y+UDMY5wkKWTVIkB.fAGbHndT0N7807ELH8zS2tumOh+IsZMs343ymOBkenHxHiDwFSLPXBBQBSybOc1rZqqNLxHifXiMVLuhJlsCGhK5UdsciW4018Ldbm8YdF3rOyyvGDQA2BO7vQZolJLZzH5rqtX6vgP7a0QGchN5f4wuCw6H6rL0cLL+9Y8m3ulvvdDIB5zoCBSHADSzQy1gCgD3hpvPhaxq+pCc2UWPNCyZPtb4hxK2117oyHt3XtB+L29pbF6ae6CM2bSLtuy4rWqcueL0VR0pSK10q9JVsM974iK8RuLaN1vC25UA4XiMFN5QOJpq1ZsZ6wDSLXCLb+M6XNQEFxgCGTQEVm3o5quNqpzQyhM1XQN43Zs3UyrakK5ES9U5LzlOALMGC+huXun1Zqwl8coW1kwX6AcxpoFaue.d9D4U8wYNI6y1megS1HinBZl3BNRBrwgCGjdZlppndDKZFNZ+OlSxo8pp7fUUWasXzQGEBSHATP94ay9CgWHHizct1OIY1o4Nm4X4BRbvCdHG99YtSAX9BtPBbL4DFR.FR1PnolaFb3vAKYQK1u6BzQbbexmtW7Ie5dY6vfLI4lSt..n8IZicDBg3OHmrxF.l5HK1q6nwVLXz+LggczQG..HOp5BID2BUggjo527qWF9M+5k4vGuWe4ZaupKrfBlChLxnbqycN4jKiyFuuXu6EW3E96b3yid85wK77+cF2W7wm.N6y4br68M13hC82e+VssN6rS7Eeg0ePxy5rNajLCytqoNGCGarwwaxP0EdYW1kinhx9+7JkTRAqZUq1t6exDJTnMsAI686oxKuB2pugavfATqcSxlusBCA.5ueo3oe5mxlsGUTQga5lt4o8b1UWcxX0QYZtB54lEOZznAM1XCLtO2s8vFnQlL4Hkj8+FR3DmWlYjNZq81fHwhsTsQABLZzHTnTI.nJLbxFZngPKmnEvgCGr3EtHZ9RPlVb3vAYjd5lZgsR5ERjJcFmmoZznACNzPfKWtHkT7uZiSjYlFsl5nCgRILDFLX.G3fGDFMZDEUXgPXBIv1gDgLqRFomN3ymOjISFjqPA890HAM186rG..boW7ExxQBgIwFarHlXhAJUpDRjJAokp+S602erBCUqVM5ShDvkKWj8DIakPHtHpBCISwluoM5TGuWOggdyVq3RW5RwgOrsqT8u3K1Kpu95QIkLyIwQud83Nt8aC+7O+yLt+K9hu3oclwEaL19ARdiW+0roZ898W0Uw38epILr+9kh+6+8is4X98W0Ua2X..3w+qOwzt+Yh252Ss0VaXjQFwlsGQDQfBKrP25bOcrWBCem29sQ80UmMa+5ttqGwG+zeAbrWqUsjRJwitB5qu95gNc5rY6QEUTH+BJvi83DHPkJ0PiFMNzba77NW6mXeB6KkjSAgviGjISFTqVMhLxHY6PxgnRkJnSmNDd3gSyEmInWud7SG7...nnBKztU6OgLY4jcNn6d5AvHvgO5QvZV8oOsWjh9jHAFMZDIkXhfeHTRmBzXtEvGLL2kmI02PCPtBEPPTQgxK085tJj.GO0e6E..vsdKahkijY+3wiGxI6rwIZsUzV6sEPNurIDWw6+A+W.3XIL749a+Uuc3PXP1YkEpst5PWc2MkvvYf4pDOyLxfd+iDhahpvPh6xq+pC1e9E59IL7jO4esc2288GuGFaEpSld85vscqaAezG8gLt+TRMUrwMcCS64foKTpDIRr51KbgKBkWNyUF1TSXnJUprzFmLa8q+BgPgBm13vcYuVf4TacoNqZrS6HszRKC73wysN2SmzSm4VK569tuiMaSnPg3Zt1qcFOmU6ilEi1qEtVV4k6W8F57UjIywlkga3ht.rgK5B7xQCwUwiGOjZpoB..QhEyxQiiyx7KjRJlE0VWcPoRkH5nilt32DGVZolpo4PHGNPoRknwlXtMvaVu802D2O+mKtBwwM93lRXXv9BsPlb4ntFLMSyWxhWBMKNmE3VtoqG2xMc8y3w88+vOgu+G9IePDQ..xOOSsF8N5rSn2fsiYCBIXWRIJDIkn28ZJQrk4JkqGQh7qdtIKILji+w0WxnQin81aG..4kadrbzPHyBLQEFxgpvPhKxq9oV0qWOpqtZYbeQGcznkVZ1oNewDcLHkItfy..mzxVFl27lGZnAaaeiG8nGEm64tV72+6OOJsLaufl0WWc3wd7cf88seqce7d3G9QPzyvf1MFGnkmXupKD.HrojvvohGuPv0dcy7GJ0cHWlLzUWLO.riHxHb5eOEe7IfDSLQ.X+DFmQFY3zmWy3wKDjOCyKqIKc6TggL4lu4awgZOt166EgBE5xeuDYjQYybSzdONomty+yLNfClybmqKEa9KToVMFebMHrvnUYVftLxHCziHQPjXQXtyYNrc33PjqvTaHlZuUlLvfChFatIvgCGbRKdId0E9AY1Ed73gLyHCzQmcB.in9FpGYmcVPPTBX736Sh4DFlJi6m3eSilwAPvcEFZvfA7yG3mgQiFwbmybQxIQsX8YCNke8uhsCABCRH93QbwEGjKWN5QjHKyNLBgPXSwDczVdtod6sOjYFLuv18072pvv9GneLhJUHxHh.oRih.BwsYtBCo7ERL6i9ueJ..NmyZMNzw6USX3INQKPsZ0Ltua6V2hSe9tkMuEbq25sYy1twaf4V8R2c2MV6ZMM6.Ku7JP94mOjJUJZs0VQs0x7b0yrq3JtRr7kuhYLlhKto+hHmd5oiy3LNC6t+vCa5SX3YcVmExJqrlw3vcTsclwf..WwkeYN846O+meXbIaXC.v9s5zO3Cde7Aev66zma.fJqpJ7u9Wu2zdLwEe7HhHh.iN5nS6wkUVYgKYCW5L9XpWuN6l76m7IeB7jOoq0RXuzK8xvC9P+Yq1V014mY+m26ei+y68ucpyeAET.9789ktTr4OQlb4H0Tl94cEw+W5olF3vgCj1e+PqVsdzV4q2hkJLjRXHzoWmkK987JtXudkuSl8I6rxFczYmfO+PgVsZwgOxQvo9aNEaNNkJUhQGcTDd3gSU2a.JpBCApqg5szJRme4ky1gCgLqWA4kON7QOBZqs1nDFRBJb8W6umsCAhCHmryFxkKGc1UmTBCsi1ZuC..jat4BNTOTjPbeFm4CgDb40eSScbQ+hDFZuJkxUwz7z6LNi0fK9R1.dm29sr68SpTo3K+xu.eoCl2jKYCa.228+mbniMtXm9Kj0ke4WA3wy9+XdpsjzoZlZIpdB1qsg5pL+6IsZ0xX0e59meGqEflVZog1Zqso8Xt0a61cnjVzRKmXFS9nqXpeuLxHiLiwrynBOb6RksnV8nX7wGeZuviuxqsa..b0W4Lm.XB6HrvBCIkXhPZ+8Cw81KxIa++KliB4lqvPJoEUWSMX3QFAwFSLnrRKksCGR.nTSIEDZngBMZz.9gvC81Wen6d5FYko0KLpAFZP..Kcq.RfmwF2TEFFVnAmILTlbYn9IdOvTqHM3z87GtS1NDB5jSNYiiW8wgDoRwHpFwtUvNgLawpW4xc3icCWw0A.f250eIuTzPrmbxNab7pqFhDK1uYQy5OkvPsZ0hd5oa..jO0NRIDOBifZIoD2iW8UGrW0k4prWhh9S+oG.qcsqysO+b3vAW20c83gdns6vqpkoqkjFQDQfK5hujo89OcILb4KeEn3hK1ghC2wwsyr4yUDd3gihJtH..zXiM.MZz3wN2lwThiYRZok9zt+hKtXG9ua7z+srYS86kZpoZXznmaofrfEL6Hgg..CIS9zt+O4S2K9jOcu9nng3pxXh4KpHwhX4HYloSuNL7Hi.Nb3fniY5aO0y1IQpTzbKs.Nb3fktjkBdboVQJw4wkKWKIGLwDM0dFO7QOpMyt4AGbhDFl.UEqApFehVRZvXEFZpUjd.pUjNK0C9vOFdvG9wlwiaAUTFVPEzb90WJT9ghLyLS..z1DyBKBgXhVsZs48aQ7MhLhHQxIkDLXv.5tmdX6vA.9WILrqt6F5zqGIkTRPf.ZgdPHdDlurxT9BItHu5qN3IqvvrxJKjPBIv393ymOdxm5owq+Fu4LNa6rmBKrHrm87uwc8GtampD3mtVk04ddmGhcFZicSWBC2zM38qtP.fp8fUXXokVlkJpzSWgol4nIAK8zm9DFdmacaN7aPxa78h.ABP9ETf0ONdvj2B33IWMPvniNFFarwY6vf3lxXh+ur295yxGTwekBEJAfoYOQvbBxFWy33mNvOC.fRKoDjP7wyxQDIPl4JKVgBEPnPgXrwFCGuFqeM1AlHggTauMv03iG7lvPKshTABnVQ5rP0TScnlZpisCChcTvDWKf1Zuc+92mIgPBdjSN4..fN6pSVNRLweJggs2goE3AUcgDBg38bIWz5wkbQq2gOdu1qNL93iilZrQO14qBGHwGm7I+qw+6S9Lb62wchTbfAkaHgDBV9xWAd7+5SfO5i+unxppxoiqXig4DBxgCG76+8W8Ld+CyNILbgKbQXwKdINc73r5qudQ+82uG67M4DT4oS9EfoYSX1YmiCcroMMILbwKdIXEq3zb3GWOYRUMq7xqvl2flmLwjgFZnXdyqDO14yefrYnJCI9+DHP.hM1XgVsZgz9kx1gyzRghIZGoA4yPsCdnCgQGcTjnPgnj4MO1NbHA3RJwDg.ABf5QGE4lc1fKWt3Ds1JjNw6EQqNsPoRkfCGNTxoCf8KILLTVNR7sjIaRshzEsXpUjRH9XIkXRH1XhAiM1XnGQ9+cyBBwc7nO9SiG8weZG5XCKrPC5dMY+IYkYlfKWtPhTodkQciyxeIggJGVIFXvAQHgDBxZhJDmPHtOpkjRlpy+bOab9m6Y6vGuW6SwFVXgglZ9DdqSucwmOebS2zMia5ltYnVsJzdasi1ZuMzdasAo8KEIjfPjRJofTRIErnEsX29BAepKe4n015vku+ae6OL191eX2JFbGolZZtU7Ocdzc7X3Q2wL2xd7V1xVtUrksbqdjy0G8Q+WOx4Yl72etm2m73DnZzwFCiN1XHBFRz9lu4MxBQDwUjQ5oCEJTfdDIFolRprc3XWxUn..XFqT7YyNQashdDIBgDRH3jV5IAtbX+UgJIvFGNbPA4kONdMUi9jHAyq3hQc0WON3gNHVyoeFPtbEvnQiH93iG73E7VYuA5BFqvP8Fzie5flZEoENWpUjFraq208A.fG6u7frbjD7YNELGb3idDbhVOAxNqrl46.gDf5PG9nN7w9l65E8hQBYlDJ+PQ5okF5QjHzY2cghKrHVMdLLwXvgKW1MYBlaezYmU1zhrhP7Fn7ERbQypeFwtbSKC...B.IQTPT4HiLJTZYkgRKileDDxrExjIGQjlsIY52bxKiEhFhqHyzy.02PCPrXQ.tPkc6qHW9DUXXrAmUXnbExwwNlo425hW3hffnhhkiHxrE4katn5ZqAh6sWT4BV.5tmdfRkJQs0WmkYWRrwDCKGkDWkQiFsLCqCKzfmDFVSs0BEJTfnEH.UTF0JRms5Qe3GvgNtN5rKubjPrmbyIGb7ZpFR6uenPoR50SHDhegbyIGSILryNY+DF5GTggFLX.s2QG..nf7n1QJg3QYblODBY5PkJ.gPBnL1Xi6WzFOHtt3iOdDQDQ.0iNJFRlL1NbrKyUXXbwE7Ugg5zoC+vO9iPmd8H+7xyxbmiP7DBO7vQlYjALZzH5rqtvRWzhA.PiM0D5WpoVSZzQGMaFhD2fVsZgQiFAe97Y8Vckuhz96GM1TSfCGN3jVxRoUI+rX4mWNH+7brwi.gcvmOejyDivhSzZqrbzPHDhIokZZfOe9Plb4PoRkrZr3OjvPQhEiwGebDarwRysbBgP7xdt+wqfm6e7JN7wGb7o3IDxrJCISAaGBD2.GNbPFSLiQEI1+b9xL5niBMZzfPCMTDYDQx1giO2gNxggxgGFwFSLnpJqjsCGxrPEje9..ns1ZCIjPBnv4NWXznQziXQvnQiHlnoJBIPkk1QZnAGyJIsZ0he9fG...kT77nK5Eg3GXtET...5nyNfVcZY4ngP7Ndn+zciG5Oc2NzwJQZ+PxDKJKB6fGOdVlSeczUmrZr3OjvvVauM.PUWHg3MPyvPxT80ey9vW+M6ygOdJggDBIfy3iONTq15pL7A19NvCr8cvRQDwYkQ5Y...Qh7OSXnbElZGoAiyuvSzZqniN6DgviG9UK6WgP3QUJCwyKkjSABDH.pTqF8HRDpnrxQTQEEzoSG3.NHlXnJLLPk41QZnAIyuvid7iAUpTg3iOdTZIkv1gCwOwK7rOAdgm8IX6vHnUbwEGRJwDgVsZQGcvtWXdBwao3hJDEWTgNzwdyaYq3l2xV8xQDYlXt5m6rK1ssUaIggrz7oWkZUnu95Cb4xE4jCU09DBg3ugRXHgPBHISlbqtcs0VOps15Yong3rRN4jPHgDBjqPAToREaGN1vR6HMHKggCIaHbjicT..r3EsHZt+P7Z3vgCJZtyE..M1bSHjPBAKcwlZMoFgQnUKUQHApF2x7Kb1eEFJRrHzV6sCtb4hSZIKMnoErFLai23shMdi25LdbBEl.DJLAePDQrmBm30XZ9Ds.iFog4CgPXeImTRHhHh.pToB8Ov.rVbv1UXX6s2A..xJyLCpl20DhOGUfgDWD8oZIDR.ow0nApTqlsCChKhGWdHsTSC.9mskT4xMmvv3X4Hw2Y7wGGe2O7CvfACXNETfkU.Kg3sjWt4gPCMTL3fChAFb.DWbl9+MNb3fCd3CC8FzyxQHwUXoBCmkmvvwFeLbfCcH..L+JpfVfEAIFRlbLzTVzZD+SYjQFHxHh.CO7vnOIRX6vgPHDvgCGKyF9NYw1RJalvPiFMh15nc..jed46ye7IDBIXzVuiMisdGa1gOdJggDBIfkLYxoULb.rLxvzbLrGwhY4HwVlaIowEWvQEFZvng+e167NrlJoKL9an2QPAATQ.ATQEQPEQcsr1UZ16sU8yxtVW6Mr26s0dWwF1EKXEUTQvJpfhnhHMQ5Dokju+.A4l68lbSHP.c9873ytYtycl4RRlLybNm2CB5gO.74yGFarwnQN4jxdHQ32.TSM0fs1TPdlJ7Hh.YmcN.PDTgGOjVZogvd0qTtCPBxE4kWAFLTc0UWIORJc4wgDBxImbfolZJr2V6T1CGBDHHFpvSEXqs1B.f29t2pjGMDHn3Y7SdFX7SdFbpt0xFqQsrgjq3JOPgNkYze9yEY3txZTlFLL9DhG74yG5oqtvTSLoLu+IPf.geGooM1YzzF6LmqOIwDQf.gJrjat4A97+NzUWcvpV9BU1CGBxHVXl4fGOd3qe8qH2bysbSznHTnPjQFY...CM32CCF9hW9RjPhIBM0TSzxl2bnpJpprGRD9MA6ryVD9ai.w7ku.KqQM..OnuA5izRKcDdDQfpWspgJabkU1CSBx.49C4j8WYCFF0G+.9RrwB0UWc3ZSZJ3win2ODnR+FzH..vwN7dTxijeuoVVaCd8qeMhK93QFYjAzWeR9wkvuNDe7bOxYWwR8oTbjPPVvnJUIXnAFfzROcDeBwCKL2hx7wfxzfguOpn.PAQWHY8SDHPfP4SHFLj.ABUnI8zy.5pqNvZqHxmXEMzPCMPsrwFnoFZVtJRQEHP.ps81ibxIGnlZ+d7yjlZhoHpO7AzB2ZNzQacT1CGB+Fg1ZoMr1pB73cM0TSXasrE5qud36e+6HkTRAZok1J4QHAYEipjQv1ZUKTkJWEk8PoTiJYfgPe80G0qt0E5pCYNyem3nGbWbpdBDPjT4xCnolZBqs1FHTn.nhpDmgh.ABkOnV1XCRNkTUZ66x1ZUKHPf.khACsvbKv2+92g0VYUYdeSfvuKXrQEreLhi2RPd42iSBk.AB+xhd5oqBs8ROxvwmNwAQJO9dH2jhGByMGEZ6SfYhqTt8ulqxmAkulBdbTdFcTSM7r7yWYOLXEUzTKnooV.iaRKQM66PgdVYqxdHQPNIqu7I7oie.j7iBDYGeLPX1eG..o7iqmL.DohJ.BEh6qzFkDJojL.9UVTYUSEUvaEJD+JIzg7TWCnYULEUpQtAK68PPkbvQk8PpbGkWhb1DCJP7kydTj1KCA4l52.TRxZWEIpH76Ix65UIT9A0zy.ncMrFUo4+IrrWCBZZbEammIkvdJh9DGBo9rGhb+VhPT94orGR+RQvJ49O.kXeeWkXe+q.ppsNPSyqAprqsF0ruCE5Xd0KQsWFe3c3SG+.HkGeOjyWiCByIaEzHkfxje02O1uCnhFZBMLwbXTSZApYeFJLnV0VtZm4L+EC.fktn4wo5ySjDBqin9fxKI7Rf.ABRC0TSMTipagBQJKDITHBeSKGe12cp.FYDHPnTEd.VN3+F0dbSiHkMUv3c6dS3i6c8Pj.xgaSfP4crn6CF0apK.79MIZ6UjL3gOF..bn8scEZ6l+24iWL+IijB7JJz1k.ABJdTQSsfcSxGTydLfRk1OyLyB.byAZC8IOC..t3L2xS4ByKO7pUMeD24Op7O.IPfPYB7TUUX8+apv1gMNY9dEIRDhXqqBQe3sAT9QzmHPf.KTiALZTmwOSvSFiP7d2+gA.fS5694T8I69i.ABUXwXipTQFK3+MtIA.fctsMHWs0qV07Prm4vfmpp.caqmvv1zEnYMrFpnoVJrwKABDjeDl82Q1QGER6l9C9AdID8A2JD98rfCSkj+RqnP3aZ4H5irc.d.5zhNACam6PKqsCpRjAWBDJWfvbyA4DazH8.uFx7ZmFwdlCAg4jMbzm0nrGZkafO+BhHZczQxxkrh1PgExymy3w2t+0AOs0AF54ff9t0FngIlAdpR1VOABJaDIRDDlY5f+aeMR8pmF47hGgHV4rP9YlNp0PFiBu+jEk1YEqtf8Hy0CJ7kKZ5HgqcZvSc0g9cp2vf+nCPSKpA3od4ibNOAB+ti.9Ygri5sHsabAv+gWGQ8eqD4mUlnN+8zko14MqYAHlSsevSEUfts0cXXa6JzrF1.UzhbNXDHTd.gYmMxIlOfztk+HqaeA74itCH367Q8m4RJU6WxNKHPfPERTWM0ft59yCYNkTRUtaqjdbPEXrP00.lM8UBcafKJhgHABDTfnhVZCcrudPG6qGxnYsAItlYhXN49QU+ytgJ6bSU1COBRgjeVHH5ircvSU0foSZwP+lzBk8Ph.ABhgJZnIz1J6f1VYGzy0Vg3W5TP79eRXdm7FlzrVprGdkKXniXr.f6G5thj3t0Uw2t+0gJ5nGp1h+OnY0HxWIABkmfGOdPU8MD56haPeWbCob8Khj26Zv6+uUfpzzVBCqS8U1CQNQhAEXAFKTSsfEycCPa6bPYOjHPffXnpN5Bcqeift0uQHcWaM95lW.h9faEl9GsCF6H2NOquE5CKvXgpqNp5TWAzqgMoTdTSf.AYEUzRKnss0EZaacQVt1ZD+pmAh8LGBl29tgJ2X2J852RsVl.ABDJEwHiqjBSJBi9DG...F39.HFKj.gJ.nuSMAFzs9C.fnO1dUxiFBbgO8i2mzuK8gXrPBDp.ft0tAvPuFL..h9jGPIOZH..7ky5K..pTOFFwXgDHTA.iZu6Pu14MfPQ3CGVwm1KDHP.DHPfBuc+reGD..F50fIFKj.gJ.XPyZMzqy8A..ex28v46K5iu+Bt+t0ehwBIPnB.55XigAtOP..7oe78WtxlV2JvlV2J3b8IFLj.ABU3Pc0UG5pihSB6R6kOF..F11NqvZSBDHT5hg+YW..PpuHXk7Hg.WH0m8H..XX68PIORHPf.Wwf+nC..H8vBQIORp3Q7IjHhOgDUnsY5utfbPl9t0ZEZ6Rf.gROpTm6A..RMzfT3sc+FzHP+FzH3TcacqZAZcq3lCakdXgB..CZY6k6wFABDJaoRcnf8Xk5SeDmumB2GsgssKkJiIBDHn3wv1zI.7yywlqXt4lAyM2LNWehjjRf.gJbT7bWXgbzCsa4t8xO8BjyT0M1zRz3h.ABkcntIlC.f7R8aJ4QBAtP9YTv7rZTYx7rDHTQA0qRUA.PdokrRdjT9ASM0DNUuwOoBxgPJJoKUj.AH+LRA7TQEnlQbaLPf.AkOZXV0..Pto7Uk533eF6n3T8DIRDxKsjAOd7J52.HPfP4ezvTK..PdolDmum7yHM.PNGLBDpHQY04fQLXHABDpPgFpqNzQGsoUt5pI+SmIRjnB9eTLJbJABDJCfmJ+PjDDobGGD3JENAK4MLBDpn.YdV5r0MtZkR+JRnP.Q.h3Ur2WHPfP4d3oppE7+TQYdTQh9wbMhHy0PfPEHju0rQN.LBDpnQY09yHFLj.ABUnvXiMRgk6BIPf.ABDHPf.gx6TjysQf.AB+fJYngJ6g.ABD9k.xZLHP3WcFxeMV..bv89ebp9DCFRf.gJLngFZvXzEB.jEe9..JzbaHABDHPPwhHQhH9xJABD9kG6r0lRmFl3zbDHP3GrqsuQNW2ycA+A.fWdzUIWwhTdGxbMDHPf.AB+pv2+92ko5SLXnD38u+8HrvdIRLgDP7Ij.xImrQMqoUvZqsFVasMvRKsDpqt5J6g4u0jat4h27l2fu7kXvW9xWPre4KPjHQvBKr.UqZUGVTspAGbvAnolZprGpDT.XrwUh0qMrQLN.He4JFd73UfOUQbrJBDHPnzAxAOQf.geA3suKR..Xuc1Jw5srEO+xhgCABDHvIN7QOA.3fACIPf.ABDH7aOk4FLze+uDlxjmjDqyV151P6aeG3balQFYf12t1hzRKMVqiqt1LbfCdHo1Ve6aeCm3DGGW7BmGgGd3RrtppppvQGcDyZ1yAt3Ri473E.3pW8JXhSX7bptUtxUA0rlVBKsrlvxZVSTSKqIZdKZNLxHiko97xW1eL4IMQY5djFpolZHzm7LJFjKrvdI5UO6As5polZhm7zmAUUsj+wtDSLQbzidDbzibX7suI4D8YUpRUve8Wi.CbPCF5omdk39lfxAM0TCni1LGcgDHPf.ABDHPfPoMyY9KA.xmCpUxfD0ODHPf.ABDHPf.AYGUjw7RbYtACe1SeJxKu7jXchKt3jo1bW6bGHojRRh0wg5UOIdcgBEBe88nXMqdUH8zSmS8q.ABvSe5SQe5cufWd4MlwLlIppYlwo68YO6YR8uCER7wGGhO93vidziJpLCLv.LgILIL3gLDnlZb6swmKC8IWoV0pVzhdum+7myX+T+5W+RrwBEJTHVzBW.702ih7yOeNcOIkTRXUqZkX6a++vrl8bPe5SeKQiABJGLxH1itPBDHPfP4a3gebb2j7vEABDHPf.ABkX93m9L..rpl0PIORHPf.ABDHTdliej8JS0W1LunBfm+7mK05jP7wy416qe8qXe6S5OzMrgMj0qkbxIi9z6dh4Ou4xYiEJNm6bmEsu8+It5UuBmp+ye9yjq9oPRO8zwRVxhPW5bGQf24Nb5ddwKj9e6kUZPCbjd+vx6wN1PmJQ8kHQhvbl8rvgNzA4rwBKNomd5XtyY13d26tknwAgxdzRKsjZzEVUSMAU0TSJiFQDHPf.ABDHPf.yDRnOEgD5SU1CCBDH7KLSalyCSalyiS0cf8u2Xf8u2kxiHBDHTghenZAhHNzIABDDixzHLTf.A3UuJLoVu3SHAN2lacKaF74yWp0qgrXrpDhOdL3AOP792+dN2mrAe97wrl4LfyN6BLwD1MbgPgBQXu7kk39C.HpnhBibj+E76zmgQi2U797kuT5+sWVwQGoaH1W7hWvRcYe7wEVxRVLNwINdIpMDHP.lv3+Gb1ycdXok0rD0VDJ6vnJYnTqyV13pKCFIDHPf.ABDHP32UbtQr6DpEmUtlMB.EnzkRNLOBDHTBvaO6lxdHPf.ABDHPnBBkoFL7cu6c36e+6RsdwyQII8yQGM702iJ05YpolByM2bZkmZpoh91u9fOGczrduZngFnQMpQvhpUcni1ZiW+lWi275WiryNaFqeZokFl6bmM1wN1EqsYTu+8HqrxRpiath.ABvLmwzw4N+EYUdRe+6iD74q35yBoAN1.JulO+rPjQ9NFqKaFskKbu6cWreVhjTarwFzyd0a3TCcBUtJUFomd5HlXhA9cpSg6e+6Qq9okVZXVyZl3HGwW4d7PnrCs0VKns1ZorGF+Rx0t5UQ5YPMpp8vCOoHyvO8IOAuOJlcnBWbowvZqsVp8S3gGNBKLlcRBGpqCTjL5zSOcbsqcUtL7golXJru11CyLi976RhW9xWfHhHBJkUiZXIb0UWko1o3jRJIiabiaf.uycPrw9E70u9Unqt5AarwFXiM1fF5jS3O+y1Adrj6gBN3fQzQ+I4t+KDKrvBz7l2hRb6PffBmB+reEzy7lo4K4JZqk1nat6N.JPYLtyctMmuWdfGpV0pFpccpsTyc0gDxiwG+3GoTVKaYK4zbje3Ce.AbsqhfCNXjPhIfTRNYT0pVUXsM0B1XiMn0sp0nd0u9rd+W5hWDeOaouFeogSN0HXqs1B.fScpSR4ZZpolvCO7TpsQ94mOdzidHtd.AfHdaDHou9UvmOeT4JWEXpolhl4lanicninFVZoTaqni9SH3fClRYVZYMQSaZSk38kat4hye9yQor5Tm5f5W+FvxcPnhByZ5SVYOD9kGtNeKOvCUxnJASM0TXgEUCUtxUVh0+xW1eZ6A2au6tTSuG2+92iVJS4O+y1AiM9myI+hW7b7129VoNlA.zUWcgolZJL0DSk57Pu4MugSNbM.fN5nCLwDSfolZJpQMrTh4pl2+92im9zmPoLwWSNWIfqcMjV5oIy2WgnklZA28vC499IPnPtwMtNRIkTnTFW2uJS+du81aOEGjmO+rf+96uLMlL0zph5Tm5.SM0TIVuW+5WiW+5WISscwoMsosnJUoJ..3hW3BH6bnddk8rm8h08gJq74niFWKfqgG8vGhDRHA7sukDzUWcQkqRUf81YO5PG6Hb00lIw4VO6YOCEUCSUUUEcu68f05+3GGL9zmntWYu7xant5pyX8iHhvwKEKHMb00lgZTC5x26W9xWvoN0Iw6eejH5OEM912RBUspUElatEn50nFvSO8B0st0k0wFA4iRxdq.949qX66k1Ym8RToAA.BLv.QhIRMfkJ957YZuULgFZnArwFaPspksPaonLZ28t2EIj.UUUr8sq8nRFYjT6GtPxImLtwMtdQmKURIkDTUU0fIlXBrrlVh+7OaGZcqaMzQGcko1UjHQ3N2413125VH5OGMh9Geezbys.VXgEvAGb.8rW8F5omdr1Fe3Ce.gFZHTJqt0otRbOlERRIkDtwMtNtafAh3hKV70u9Unt5ZfpTkpfZZUMQ6ZW6we7GsB5niNRsst8suEszZWwmCkMX5bM6RW5JzUWY6ukJKRN4B98QiMlaeVqL0fgLICmZngFH2bykRYh+kG1X8qeczjlRlZOGYYRh4M24vpwBUUU0v3G+3w.GzforY.fBLP2YOyYv7l2bPN4jCs685AD.tvENOqGpAaxxp81Warl0rVJkkad4gODUTHhHBG29N2FQ9NlMFW3gGN19+sM7OieBLd8W7bli5uZW65fUu50v303B0ot0gxqCKrWAgBERqdFXfAvJqrRt6GeOJyFFtScpyXiaZyzVnfKtzX3kWdiSdxSfYNioS69B9QOBIlXhRcgaDT9vknKjf7wZW6pQjQFIkx9y+rcTLXnem9Tr98ut2idRaNKF6m0rZbyadCFu1+L9IP4vIRLgDvLl9z3xvuHzWe8QiabSv78wGNE4vyYNyFuJLpG9RUqZUwcuWPPUUUUl5a.fCdf8iku7kQ62d.JXyJER8pe8wT+2ogV05VSqdG+X9hyd1yHy8s3zt10dhACIPnT.llujqT0pV0hLXXTu+8x7bbEhM1XCVvBWDZQKZIiW+3G+X3z94Gkx18d1qDMXHe97wBWfOzLNGPA4T7m8rBV695V6ZPW5RWwjmx+BarwFZ0cwKdg3qe8qxxiCiL+46SQFLT7+NYjQFKUCF95W8JLwINdDUTQQ6ZEdf+27l2.KaoKACdvCAyZ1ygVt3t3DZHgPabniN5hqEv0YzYDKD9YkEs6aziYrDCFRPt42I4BSdlukGOdn4MuEXvCdHnCcriLVmUthkiO+4OSortzktJUCFt+8sOZqi8T9cFJmQvkt3Ewt2M6NLLaXiM1fALfAg91u9w3gbcyabcrt0I80ZKN0nF0.8u+C.CXfCB5qu9zt9CdPPvm4SUJKG+DlnbYvv0t10f28NtYrTlnJUoJDCFJmT+5QLhQgjbxIiwM1wP67A8vCOwF13lj58yzu2OhQLRJFLL4jSQtWCWUMyLLqYMaVWGyMtd.XCaX8xUaC.briehhNr6Eu3ER6vv6d26gbsO2hSN4jCV9xVJNzgNHiWOxHiDO5gODG5PGD1XiMXiabyrNmxQOxQnY3flzjlhpW8pyX8WzBW.d8qeMkxpYMqIZRSX1At10N2INyYNMkxt50tNkW+oO8QrwMrAbwKdQHP.0O2Darwhm9zBjU7ctisC2bq43u+m+At4VyYr+HH6TR1aEPAAFT2b2cniN5h.uycvktzEobciM1XDv0uIpTkpDi2+qe0qvHGwvg.ABJpLUUUMblyb1hdMS6sRRnhJpfpW8ZfALfAfQLxQwni6r28rKDXfARoryc9KThMXnHQhv9229vJW4xQd4kGsq+oO8QDRHOFm1O+PkLxHrxUrJz9NzAN01W5hWDacqagxYaUHe3Cenn++0t10fd2m9hwMt+lQm35QO7AXNyY1TJabi6uknACEIRD10N2AV6ZWCiolrO9wOfPB4wvuScJXrwFi0rl0gV2l1Hwmmss0sRa9mtzkthsr0sIw66V25lXMqdUTJy0l5ZEFCFN5+t.mdjqpeRYZNLjobaWSZRSos33D3fjj9l27FZdtqSN4DLv.CnUWlhrsyd1y.+8+RL11pqt5XqacaX7SXhzLVHPAd+RO6UufuG6DL1e..qZkqf0wNa4uvlzjlf5U+5S4eMpQMB8nm8DyZ1yAW3BWBCYnCi01cKaYyrFEgrk+BabiaLs9TV9mpppFm5mFz.GKQdzzSdRnzJSEUTAKeEqjUuJB.n28tOLNInPgBQHg7X4d7PnrAczVankVbK5Bi3sQhHdq7ufCBxNAbsqxnQxJNYkUVk54MzLxHCbqacSzst1Eb3CeHIV2vCObZFKDnfe2492idDIKIRIkjwnF4HvBW3Bj5eG..dUXgggO7ghoO8oJS8CAB+ZwuOG5shlnhJJLjAOHrzkrXER68pvBCd5Q2XzXghiHQhf+9eIz4N0AYZiykUHRjHr28tGzid3MiFKjINzgNH5t2dwpy3wF74mEVvBlu7LLI7aDso0sDso0Lab+RD7JS29dEFDIRDt+8uGFyX9eXe6kYUoo7HQEUTXIKYQ3e9mwQ4PKKo74O+YrpUsRLxQ7WbZMpDpXhOycFvm4NCNU2s7e6Fa4+1co7HR4w4N6YY7vjCHfqgLxHCkvHhJIDe7XRSbB3e96wUgzAPd26dK5t2dwpwBEmnhJJzid3MqyG2hVR+2GE+.7KjTSIE7l27FZkG7idDq8+ieL0nEsplYVQNjF.PLwDC5e+5KN24NKMiExDO3AAggNjgf6b6aK05RnrmEsnESK5vRN4jwpW0JYr9BDH.yZVyj1u6N1wMNNEsargPgBQzQ+IrhUrbzm9zKEhBRwE9129FF4H9KrjkrHFMVn3jZJofQO5QgE3y7YLHnJNG7fG.SXB+CiFKTbxJqrv922dwPGxfPlYlImG+rwW+5WwvF5PvJW4JXb9cwI4jSFiXDCGKcIKlS+cn3b4K6Ot8suk7NT+kjxVCFxfwjbnd0CVTspQorrxJKo9gq0r5UQ6GZ6a+5OMOoA.zBC47xKOVMnmFZnA19N1Iqdln3s6vG9ew30hM1XY0aIXKG+IMI6TCMz.93yBP+Gv.X754kWdrlKFYKpFKIxDJSvjQgKne3V99fIxO+7Y78UqrxJXngRO5ybxoFwX4eMwDk6wDgxFpjQbO5BmqOKAy0mkHecTQRkWEuEuqLIyLyDAdm6Hw5bqadyxrCpfOe9vm4OOINl7SBGL9o7S5GZdgD46dG5ZW5LqQNojvuScJrkMKcOck.geoPAICRD.16d2Ctd.AThZiye9ygd1ytSwqP4BBDH.yd1yDORBGRSYMBEJDi9+MJ4ZygQDQ3vKu7PlmK+5ADPI98.BUL4F2JPbiaEnTq2eOlQh+dLirLXDQPbV1xVBqG7b4UtysuM1zl1nBucCIjGiku7kovaWBU73NAdObm.kMmirhD9wx93xN6rwkt3EJiGMrykur+3.6e+L3wQp...f.PRDEDUJ6ggLw0CH.3sWdxICFTbxKu7vRVxhvXFy+i1Y21hVPWQbXyg9eTvOhQir9vG9PFqe7wGGhIlXXs+RMkTvvF5fYLPUTWc0YMZgDHHe7O+y3vKeIymmaEQJZ2YUvOGrJYjQXoKc4zJ+3G+X3oO4IzJee6auzjVx5V25hwyhh8IO7zm7D72iarLp.eJRd6ai.cqqcVtL1UgNOY5oyrzv5u+WBKdQKjwqomd5wpBM7l27FL1wLZYdeYEmW+pWgt1kNIyAePgNQZO6Y2k4TAmOyedbJM586BkYRR52+92QDQPWpJbvAGvaeaDz7t23iOdJd.Rw4wONXZeY3O9i+fwHMiGOdnAMvQJkcwKbdVihw0rl0g1zl1JwmkhyPF5vvt10NAe97ocsG7ffn8Ljat4hvCmt2w..zPm3lw696+d73Tm7jL9kuHiLRZOuRpOcrgNxX4xKrEggEWJGjU3wCPM0TilQG9vG9.d+6eOpUspkDue26l6nplVUZkWWGbPtGSDJ8QGczFZIAYBiP4Ct3EufDkxfqd0qTh6iZXokXHCYnE8ZgBEhzSOcD46dGt8suEMuhZQKZA3JWM.ZKfI+7yWhx940CH.jd5oyZjiWbVvB7AIxfSGznF0H3hKMFN6hKPjHQ30u5U3HG4vH0TSkR81vFVOryd6Qm5TmAPARREaRpxSdxSn44irUW6ryNoN1IPffhgF0nFA0TicUNnPLRJ4If5Tm5fd1qdSq7LyHC7t28Nb0qdUZyALeelGmkQFwI0TRAKvm4SacjZpolv0l0LzXWZLZPCbDe6aIgfCNX3me9Qo+yKu7v3F6nw4uvkP09gS+4TiZDRMEpyyA.jE+rvqeE0bxigFZHr29Zy3XqplYlL+73memB23FWmV4lat4nYt0b3hyt.yL2L7hW7BDZHgffC9QTd1yN6rwbmyrw0uws3TdunPVvBlOZdKZtLmCPHTwlsuyBhVh101VU11wUvOLuRJSdxSA5TrCwUjHQHszRCgDxiQvOh5gIKTnPbm6bG3hKMVYLTKBO7vSZoFE9YkEdWjuC235Wm1gRcqacSL4IOEo1tcnicDMsoTy61e+6eGeHpnvUu5Uoo3P25V2D93yBjuGB4Dt96i..FRR+DDJg75W8JFi.sBwuS6G5W+Y1o6KoXt4li+ZDzcNjuymO9vG+Htr+WBYmM07I3ZVypPu5sjy0W.EjK0pZUoeNVLg95K88uJOjUVYg4N2YS6YPc0UGt5Zyfyt3BZXCaHhK13PngFBdvCd.hOdp470.t10vYOyoQ26QOKpLmbpQPGczkx7UgFBcUEC.3gO3ALV9Se5SP94mOs87+3GS2visrk+QQ++m+BmmlCy4niMDy2mE.mbxIviGOvmOeb6aeKr90sVJJWAe97wFV+5wd169XbLQnjgr7aGhu+p12gNft2idhyb5epDJhDIByadyAm67WrHI4MlXhAaX8qix8plZpgUs50JUIJG.nu8sev1hclK4jSN3aeKIb26dWZ1030u90vWeOJF3.GDmdljG7Y9yiwzBQib1YzXWZLb1YW.+uyGOIzPwiB9QzFiQDQ3XiabCXdyit5orkMuYZF7bLiYrX3+0HPUpRUfHQhPrwFKN4IOA11V2BkH1LnftOtysusbse0BeeK4jSl10bwkFCWZbigyMxYjYlYfPeRn3QO7gzTXlWEVXXqacKX5SmaQgOPAe1XSaZiXFyXlx7Xth.0zRlk7Y1nLyfgu90uhwP81g55.svEGnf7XHaFLbUhEVw73wCSaZy.G639RqtVas0zN728rGlkhAqrxZz0t0MVeFXhJUoJgF1PmvCdPPztl3IGcfBlvfIC8ou95KUCeUHlat4nks7Ovst0Mocs2yPTM9l27FF6SczQWTqZw7eikGRN4jokWHJD1xijbAUUUMTm5TWZFirvIQV6ZWuDyiL0vRKkZBkmP4OLhEsFmP4KtwMtAxN6rYT5XyImbTHg0u4lYF9q+ZDLdsXiMVz29zKDarwVTYe3Ce.24N2FsqcsmRcu0MuIiK5n3i2KcwKxZTbWHW6pWk1b9pnhJvmErPLnAMXJk24N2ELxQ8+vjlzDnHgIEnw76sHCF92+y3we+Oimw9y4F0PjVZoQouN1wOgDGiDHTtihBj6ecNz6ctq8vnz0KqXs01v5bb.E3gp8su8lxlvRH93wW9xWJxfcxBqe8qixbJ.Erd18r28CmDy405dO5IFwHGEF1PGLk00lZpohybZ+JJ2Yu8suSF6qWEVXvSOcmRYN5niX+GPxxGMWIqrxhVtj.n.GIba+2NnX.v111+D.ErA1wL5+GEuNMgDR.a++1Flx+xcIiNt3hCqecqCyYtyS5Ul.ABkHFv.GDqy2tqcsSrBwhhNlje9xZZUqZM5QO6IiW6UgEF5cu6IEmd6sQDAxKu7jX51..nYt5FF1vGNiWaLiMRzyd3ME0Z5yQGMmcHNEEaeG6hl7vQPwy8BpfHrpkMuYJ4QhxkSJEoU+IgFJ9vG9.r1ZqU38cUphIRbMbSXBS.t2stRYMGe+6eGu5UuBt5pqrde..Ce3CWhojnxB11V2BMiQnmd5gctycCWaF0O20+AL.vmeVXLidz392mZzrtpUsRzoN24hbxJ0TSMzzl1TJmUvaeaDLNWUPLbVq.E72wm+7mQy4PdbvTOeYd73QI+eKtTlpgFZfCbvCQoe0QGcPW6Z2fKN6B5V25JRIkedFBO6YOkwwCgRNkz8VM+46CBJn6iDhO9hJ6Mu4M3.GX+E88z4M2YSygc9m+Y7vANFPIcnicrn8THN6Zm6.qXETizwCr+8UpYvP+8+RHXw97tJpnBVzhVBsyzxau6NDJTHV7hVHN3AO.kqcnCdPz+9O.J1fI0TRAu8sQPqMlVwL.GOd7P0pV0vjlzjgwFYDV3BW.k5+jm9D4xfgm8rmAO6YTSkappppX4Keknm8pWTJu68nmPf.AX9yat3XGipMg16d1M5W+5GrzxZx49dO6d2vau8F0t10QlG2k2YMqT1TjuxLIIkIIwTKszBVaiMnZUitUNiOt3oUF.vMtw0wSBkpmmz0t0MTu5WeF8HEwkbyOGczr58QCa3CWtxydVTMKXr7TX3foeAK4uPYMG+UiZTCFKOx2S2fgrmWAqOiIgU4kWxhTqVUyLiydFEaT+FvrNR+nG9PzwNzNr90uNZSlQnhK5pqNPSM0PltGWb1I3hyJVI1kfzgO+rXz4E..tafAxXzWqHwBKr.SYJ+KsxYx4IDOOcYs0VSywTXSNaJjbyMWrrkQ+GZW4JWMMiEVHFXfAXKaYaz5qPCMTjZJoHw9i.ABDZjyNyXtd4Mu40xbaEQDgCe88nTJSO8zCG+DmhlwBKDas0Vru8e.Zdca.kCjjysrkMSS15aSaZK18d1GqQKXyadKvQNpuPCMntNicu6cQSBqjFG3.6mVDTRf..vYN+kvYN+kT1CieKXfCbfEE4.ER14jMK0t7A0q90GN0HpoMCgBEg7xqjIi+1Zqsvsl2bZkKsbTDgJlrwMucrwMucNU2YLsIgYLsIUJOhJ6Iu7xCm+7miRYsu8cf14bcZ+NUY4vpHrzxZBu71aZkGtbrFtxZhN5Og8t28PoLM0TS3quGmlwBKDczQWrm8tOzpVQMJ7SLwDw115VoTl3qsUjHQzjOxjRJIIlqoYRh7EOBCqcsqMEGXH3fodOVasMr5PEU0LyPqacqoTVpolJmyW1DJaw.CL.qX4zyagqecqCIDe73bm6rHv.oJq70q90Gi6u+aER+Op+2ngc1YOkx93G+Dmx+dxJYmc1zbVJ.f0r10wpCvWnStOxQNJJkKPP9XoKYQTJKjPBgli9JIUQrm8p2PUUotWwm9DliZXIAe9YwXtmbSadKzLVXgnppphktrkiAO3gPo77xKOrzkJaFISff7wbm6b9kxImkWJyLXHS41tZW6ZCUUUUF8N53SftACEJTHVypWMkxTUU0vTlxTQFYjAd26nK4ohGYaO7QLqy0FXfAnm8j4O7IML2blMXXV7oqWtrm+BksHvS779XgvTtBiMCFFQDQ.O7nax7+9u+aaL1drKGokbYOsu8sezNXmBgOe9XKadSnKctSnsso0X5Sep3Tm5jjChuBLFIGRSyLm1jvL+EbSPkGQbGV3RW7hLVuqHlbjVm5T53kNhKCy.f1h3SJojvstE0nczKu7Fd3gmTJ6oO8oRbC.W9x9SKRps29ZypGjWH5niNXfhYPQABDfadSlM1JABDHTbpd0o6bcpyQI6o3rm8raJQpH.Pu5ceXUUOJD6rydzl1RUx9CKrWRS1oJKIu7xC6ee6kV4+6TmlTkTnFz.GQ2b2CJkkSN4fCreYShoDHP.lyblcod9IgP4G7zitBO8nqRsdG02Shi5K2yMxRExAWvJpqtFnXYhI..JQSR4UzTr815jSNoPj3Xw2yrc1YOLwDSJwsKgJ1zXmcBM9WPmq8F235zN2mQ8+9enIMkZ5a3Lm4zJseqt5LDfDpIkHIt7.6e+6m14K5gGdBGpW8j38ot5pi+cpSiV46cu6ghpywk7X3iDKOEJ97aAK146lVZoQ6bgKtbjB.nqtTkB1nh5838u+8zFKExDmzjvt18dn7OCMjHkxkWoUst0ne8q+TJiO+rvLm0LvRVLUihot5piUu50PyPWkDZfiMfxqEHHeDczQqvZ+Bw+KcI7ku7EJkU25VW3kWzcPAwY7SXhzVuQfAFHBO7elmR0UO5qG4129VrlWB0UWcwAN3Ao78j+QNxIjm6rmiVJjyImbBctycQp26jlzjoo7YWOf.nIAwRimDZn33GitBV96FkYRRJSQXXccnfengICFV7PHtPN24NKsnHqO8sOvJqrBAFXfLt..wivP1z+51zl1JS4sjhCaIHTl7RkmyRDF5jSMhwxYC19RpQUhddxgIi0BTfmwHdd0hKvVTzvz6w.zeOPdn90uAXNycdvm4KYYeJ5n+DhN5OA+N0ofpppFbyM2PO6UufGd3obE8nDJ6QOc0kUiCSn7Ad5oWXqacKE85acqaB97yhxhNxO+7wMtd.ztuhuHDEEojJcmCPe80mxqO24NKMYw1Ku8FBDHDqWLMr+z9cJL0oMcF6qHhfdjLW77qnjnu8sez7PwxR4gh.AkKEoIoJ2gQETRLA54LU4Qt0iHbpygwiGOLjgLDVpMUV0pVCRUr4aMzPkm7g+gODEsCxpwMtIbVRgF5PGJk7bB.vaeKcmOTb716tSIe39hW7bb3CeHN+aADpXyfGPeT1CABhwktzEosFu+3O9CVpc4ChIlXvSDKRZTDi4jRJI7ffnJeek2+aAABkDN0Io5XFUqZUCt3Rig6cyCJFaJt3hCO3AAoTblfDXHu2WiZT9Ok4DQDz229P4nDoV+52.zHmclRDClSN4fO9wOUTpXxd6KHx+JtRQDZngPocDWNR6W+5OE4TLzPCEBDjeQF7IzPoGUTh+dtyN6LhN5OUzqyKu7f2d4I5a+5K5VWcGN0nFQ4rCszxZJSRZXEJ9E8LRm8blKt6cCjhA0B7N2gV8F+DlnBW5IYJmtK9YSoHfouexUILVO8zC8rm8DG5PGjR4u8sQTjS92vF1PnpppRwQSuysuM71KOPe6a+Pm6RWgolZJk62M2nqvAxJkjmqJYjQvSO8Bm3DGmR4u8sQHQIotvTYWwsowJW4JP66PG+kRd0ewKKPUbbrAR1oOJjxDCFlZJoPYB4BovMzWMKXvfghYQ47xKOZIlTszRKL9wOQ.P+GV.JvaAD+PChjAYpC.nlVYE6O.Rgn+D8mM..iMhp1Kmd5oypkskTn8xDrEALFJVdeKyLyTgGt7rY.vRyHLDn.CUlc1YiMr90QSyoYBABxG26d2E26d2E9dzifEujkIUOnmfxmJQR78k6wCO8jhACyN6rw0u90gmd5UQk8fG7.JNSglZpI5PG6DsbPqh.wibP.fZI120EeyjN4jSEsveGpW8nHobm4LmAS4emJiR1LSRcp3QcCanolZhZVSq3TcIPfP4eRO8zkpztqs1ZCM0TyRT+DSLwffB59TJqN0oNvFarQlZGQhDgnhhpGTakUVw44kLzPCKW4Q0LsldtNeLPAQYnQFYLk7Ry6hjcYupP5a+5Oh9yQSIEIr10rZzoN04RrD7Sf.q7atuVbqadSnm9TiJjXhIFb6acKJxKmJpnBl9LlIipOQYMu7kuflG5mQFYf6d2.wcCLPJ4YvNzwNhQLxQxo1M7veCtpXp3A+rxB2+92G2912lxbZsrk+gb4g+kTN5QNLzUO8jZ8zPCMnIgXD3NcpisSYODTpjXhIh.CjpQ.7zSu.Od7PW5ZWvBVfOTbl.+N0oJyMXXFYjAtxk8mRYFarwvM2bSp262+92kpC9qlZpA83v20jGDeeulXhIRM5BKNso0sglDiFYjuqHCFxiGO3laMGW3Bmunq+7m+bje94WjRQHd.e3c26At0suE97OhXK974iW7hWhF8CIdVb4HUCMzfVzl1t12dJN9UAsSVXe6cuXe6cuvXiMFMqYtA2bq4n4snEvpRvYEWggxIqw3HG9PPGckdj1qolZxZfr.TPztspUsFLnAM.VkVxFz.GwXFyXj6wJSjZpohm7Tpel2.CLnTIJ+YbePsg66Cp0soMzLXXwk+WczQWzrl4Fs7QZ3gGNV3BW.VzhVHpcsqMbq4MGt4Vygqt1LExbQJhmKwMXXju6cnScpyrdOpnhJXIKc4vau7nHCjld5oiktjEi0ugMx49t7NKdYEnXmmz28yo5WlXvP1jgSGpaAFyyDSMEpqt5ThZt3EKBC88nGgVdEYnCa3Eswbwyqg.EXPRwSZ3EeAzEGKKAd3ym9zGYrbiMtxTd8Ke4KXbxJyM2bYdBjnXHWEB.ZV3+UgElBU5EzQGcfc1YGsxiM1Xw2912nUNOd7fiNJaxspjXjibTnyctKXUqZE3ZW8prFokhSvAGL7xS2w4N+EIFMrbL5omtPCMjO443F2pfMKzt11ZoTSBkTrwlZQyHaW5hWjhACuxUtLk6oss8OU3alIojRBGy2ihctCp4tCd73UzlF.JXtWwiN8hKUCd3tGTdVhO93v8u+8YzirEeALppppzl2k.ABRhxI6HUAP69y1H05LyYMaLpQ8+jXc912RhQEvHyLyDQ71HvAOv9ojOXUQEUnjv44JwEWbzxqrrIq9UDfIG3vbyMWlZCKplET1aPBwGOxLyLk3uWwiGvRVxRgmd3dQ4jjLyLSrjEuHr4srUVuOB+dwfFXeKUZ2eWULkoO8oJ05nt5picricgV2l1T5Of3.G7fGfRjvvFiZT+OLiYNKN+d6IO4IvIO4IjZ85W+G.VzhVLs76XYAabiafS0y.CLfXvvR.ib3ref4hyrl6BA.vxWhORthEcdUk+mq4rm4zzjY8ByWfFYjwnEsn4TxWYW6ZWUp+FurRVYkIiqgi+24iO9wOhCdvCPKXHlxTlJsyojIV0pVoTc115W+Ffyc9KHaCZNPZokF95W+Jkxj00LZACAFRjQFI5Tm94qaQKaIECFlc1YivBKL3jSNg3iON7wO9y.tPGczE0u90Ct1TWKxfg..O5QOrXFLLXJ8myt3BzVasoTVW6Z2vS9qPw91KcYsG.H4jSF96+kf+9WPdH1byMGcsqcCiXDiDU0Ly33SOA4gMrg0yo5UoJUIIZvP.fl4laXvCdHL96vZngFXMqYsJLoHUjHQHjPdLV1RWJMIRtQN6rBoODm2KlMATSM0jongyBKn+8YwOqqMrwMgt6smLli2EIRDBO7vQ3gGN12d2KTUUUgiN5HF3.GD7zKuj6+1J9ykN5niL4vpb44hIbvAGvvF1vwd1ytKprye9ygd1qdQSVi+cgxHCFROxyTQEUPs+QntphJp.yL2bJS5W7bhBe9YgsrkMS49Mv.CvnGcAdCf.ABvydFco9joHgKEVxqcVVS4yfgBDjOs7YUgTu5S06aXyvoxpbjBvdDF1HwZK1j.UUTQEoleWXBmbpQLtoC15Gqs1ZEd3WW8pWcroMsEjVZogKcwKhqbkKifC9QR03gYmc1XxSdh3zm9rbZAZDJ6QdxcgEx12YA4cH4yfgEtgnecNH6Ra7zSunXjs.C7NHiLx.5qu9PnPg35AbMJ02cO7P7lfy7hW7Bz918SuJRjnB1DSZokJiNDg2cuGTjVB+NE0jbupppJkbWU2b2CrpUsRJNzwo86TzLXXt4lK97mop+7lXhoJkChg.gJZ765gbyEBN3fw.GX+kdEQARZiO9r.YxSKKDl1rDSapphBQxfyywzgSIIL2bywqBKLJk892+dolawqcsqCFwHGE1w1+uhJye+uD54s6kb8dCgJNbfCeL..LzA0OIVOubW54ZEBJVxKu7vxV1RP5YjNsbTc4YNwINNzPCMv+L9InPSKCW7BmG5oqtXhSZxxcpWgvuND46ksb3TEA7yOp6wqt0stvN6runW6t6dRwfge+6eG96+kPe5ihygNhJpn37Z3zTSMwDm3jP+Gv.TX8eoEQwPN8SVcJKysfd8E2YuXJhOCIjGCmbxI7.wLDqKt3LTUU0PyZVyvoN0OUOnG8nGhwLlwhryNa7RwNyU1Nn+YO64BCz2.rqcsSZNSm3DWbwg8rmciCdvCfwL1wgIMoIKw5Sn7CctKckQCF5fCN.aYHPX3ByYNyF5TLiPmat4hjSNYFUAOUUUUL8oOS4pejDYmc1zLhm4latTU9Fp0m9d.E2XcFarw3fG5vXA9LeJykxDBDH.O8oOEO8oOEaXCqGaYqaSlU6gzSOcjnXR3rLOuCCOWLsmQlXRSdxve+uDhKteZOp4Ou4gKekqVhULnJhv8OMUBfobamUVYEkEtJdh.N4jStHu1cO6d2zhdsQOlwVjUliH7vAe9YQqObTrM6KRjHVkxR4MORcsqcshFmEGMzPCZFrjMipIsCkPbdxSBEYjQFzJWM0TilzlxlQJmx+NU7lveqL+uCc3ivX6wV+nHitPwwPCMDCXfCDG7PGFO4oOC+2+sCzktzUItQqW+pWQS9AHT9.80WOhgbq.g6t6AEC.jat4h.tVAFILzPCgRtHPWc0Esss+ob2WYmc13Ce3CE8uO9wOfTRIYFMVnQFYLlwL94hxxM2bw4O+4nTmVzhVfJW4eFA3UqZUCN0HpNaQgdfZwQUUUklwAyKOp4OKBDHPnzB0UWcrkstMz8dzS459YZiNhmC.qHAyOO4HSsASNaFW2P33G+DP0qN08u3y7mGmjMeBUb4hW5J3hW5JRuhJb9gSMQb9BIRjQFIlzDm.10N2gxdnvYRKszvV25VvnG8nTnyImYlYhcu6cg+Z3CiwyJg.gJx7rm8LZNBUwU6F.fN1oNQ6rgD2QRKqfGOdXIKYYXziYrJk9WVgo0BwU08pn5mqzWikEVXArxJp4VrBS2ThG4lM00lQ4+VT8CIDHPP934O6YzNa1V1RlkfVUTQELgINIbyacGL5wLVZiAFedxKOr4MsQr5RgTrBAEO4latX9yetLdsm8rmQS1J4JIDe7TNapu7kuv5Z+G5PGVQ4DPEIpolZzNWJYc8CL88YMX3680rlVg8s+ChCdnCit0M2gtbPxXiIlXvPGxfo4TlRC0UWcZF8LWYcdmRvd6zQGcgO9rPJk8oO8QJoioJxzb2bEM2MW4b8KShvPlLTVcEK2BVspQ0ifEJTHRLwDg1ZqE18t2EkqYpolRIY6FBC4uP.5QXHOd7fAFX.RKsznU2XhIFXu80VhOGLwdDarUHN5XCos3jWvfgSA.ZnLFggqX4Km49rgMDZokVTJSQYjRoQYU+vF5nitnicpSnicpSHszRCKaoKghWGUbd8qecYxXhfrQkLT9LZOAkClat4nwMtITj8iKdoKfdzydhqbEpGjVG5PGgVZoEkbZXoAsuCc.KcoKmhTLDP.Wi1b9dVL4HsP7vcOnjiExN6rwEu3EP+52O8XTUUUUXiM1fvC+mIh4u8sugbxImeK83HBDjIJ7Pt+EJPtajyNCMjhitXgBTxOyKu7vvF5Pve+OiGSdxSQlue1jT9JpXmsk7mmu7kuP40ENOOWPas0FKXgKBibD+UQkESLwfMu4Mg+mTjgVBDHHabu6+.XrwFSoruymOB5AAgae6agyc1yR4fhW4JWAZ6e1NkZpnXYKeEvau6NkxDHP.d4KdAt8ctMN2YOCEoJLv6bGb3CeH7W+0HjX6NyYMaLjgLTJkIRjHDVXuD2412Fm6bmkxbaO9wAictycVlFULyad9vIUFRc4LUTPn.N1INM..5We5gRdjT1yoNEUY4kGOdvCwLXn95qOZUqaMtd.ATTYgDxiQzQ+ohxk8kUHRjHLso8uHnGDDVyZVKmtmZVSqfYlI4bir0VKa4yZthM0pVPEUTghC5FareQB2AcDeMV.fwn5p4sn4TjdzPC4GFL7gTMXnqtVvAcWspUMT8pW8hhvprxJKDVXuhlbjVoJUITu5UeINFMwDSvzm9Lvzm9LPjQFIt2cuKdvCBBO3AAgrxhYGsX6a++PCanSniEWaUInPvGeV.zUWNj+a0T5Qi+F2v5ojS9DmktjEi+3OZkLGAabA80WeL24Mezqd0aEdaCTfACsxZqo7780u9UJ4+SowW9BcYFko8VUHsnEsDsnEsD4lat3gO7gHnftOBJn6iW+pWwXpWKszRC+0eML7fGFLmi7Qs0VaTspWcppOYbwAQhDwY0JRVetDmNzwNh12gNP42M14N1NkTZTEUl7DjMGVoT2fge4KegwbamCNPUtNE2fg.EX4d+8+RzhxiwO9IRQGpYJ+EZfAF.qsltWhXngUhQCFV7OPxUBMzPvSe5SY7ZhK+dIDe7zztbfBNXh5WeI+iXEm.t10JxiaDmd269P40IkTRLdvI73wSglH3EJTHB6kujwq4HCxBKWHmbxgQsf2HiMRpQsngFZHV4pVMLybywV17lnc8HhHbFtKBJSLPe8KwQWnWdzUEzng.WwSO8hxBye.gGgV...H.jDQAQk+8tGRMkTv0tJUCF5gmkLYghGOdLtvGSM0TXmc1C6qcsQiabiQ6ZW6oUGlbbfqb4Ki6b6aSorzRidBk+z94GECFBTvlbJtACA.hN5OQQ9aXirxJKrnEt.JkUu5WeZG5CABDpXvN24toc.1xCMsoMESbhTOHWABEfDhOAb26FHtvENeQaDSjHQXKadSnIMoIxb9TvXiMFFYjwTxYeQG8m378+rm8L36QopzDd28tC2bq4xz3PQASG5zm93G478KPP9HVwNLqZTCKkIIArss8OQW5RWwkur+EU1t20tPqaEIeJ+6Nada6D..iebDiGqHPSM0jlyYoolZht10tgt10tAaqksXkqbEEcMQhDgCbf8gEu3kVTYLkOcXRsJDGABEPqL0UW5Gih5poNiNTlqMqYv0l0L3omdAu7zcJ4fs8s28HUCFxV613F2Dz3F2Dzyd0az0tzIjSN+LhqOzAO.F+3mPYlL56tGdHS4RIBxG9clBx8abwfgaYCqpzd3TlQ1YmMt3Enl29zVaswJWAcGqW7emG.vO+7Stb7JlvFargx7L..hfHjXhIhPCIDbricLHPvOclgybZ+PiabiosGSlXXCaXXHEKPIJKQKszh1A2GSLw.ABDv44Q9DCqwjoCtuEsnk3nG4mqu7ae6a3t28tTjbQszRKJmCnqMqYHlhEsnA+nGhG+3GSoccyslKSRzns1ZKr0VawvF9vKvnHO3A3HG8vTLbPgbm6b6eMLXHuxWolG28vSExdqdwKdN10t1oDqSlYlIl8rlA129OnL01pppZPEUnZ7J0UWCXiM1.6qs8vd6rGt6gmkJFhr3Xms1QwfgBEJDQGczb1wGi9SzsABWjoUMzPCzpV0JzpV0J..jPBIfqe8.v1+usQy9CIkTR3UuJLYx9C1YqcTl2Iu7xCwFarLZyHlPdetJNKXAKBAc+fJRcFxKu7v7l6rQK+iVISsSEcJ0MXHS4uP..Gpq3QXX0oUmPeRn3vG9PTJql0zJz29QUywYx.ZMnANxnEnsxpZx3giDP.AfgNrgy3XkIDIRDqgkpt5pK5gXxEEaR1oc1YGmyo.okVZXUqZELdMiLxXZV79kuj49zFarQglWAiJpnXz6aTSM0fChEIobEUUUULpQMRJKtB.nN0oN3R9yMY.Z.8e.XaacKz1H3WXHgsRP4RkpTIO5BGz.5izqDAEJcoqcAKXA9Tz2SyO+7wpWyporPgJYjQk3jDbSZRSfuG6DRuhhQBwGOt+8tGsxu90ounelHzPCAe7ieDVYkUEUFSaxwO+7CyblyRpsWvA+HZFvzJFbrEBDH76EUtxUAMyM2X7Z8nm8D0tN0gl7GcLe8Utla0N6rEAG7OcziDSLQb26dWZ4rUl3hW77zlCafCZPx7XPQgsLLe74N2YwT92+kQCCHNW4xWgVdqwN6k87Yx7luO3t2MvhbvQABxGy2m4IysCgJFLtwLRNUu.uaP.PwYvve581DIIkI5RW5JECFB.7l27FJu1xZZIknXA.HkTRVp6KNQFb5WEQzIU25VWTyZVSDUTQUTYwFarH8zSWtSWJ.Ej5WpacqKd1y9oB.kZpoh3hKNZxnLgeenpU0Tk8PPgQ.AbMZonG974iKbgyyo6+Lm1OLoIMYER90VWc0i00v4kWdil1TWwDm33oT9w70WNYvPkMhev8YlYl3ZW6pnKcQ5Npc94mOszBB.fc1S2IaaVybiVzLt4MsQJ0woF0HJNXdyb0MJxK68u+8vSJlZAAvrbjFv0tFhKNpF0n+CXfzbdcMzPCzpV2ZzpV2Zb1ydF7uSgpi8ETPAQqsIT9fbyMWL8oMMJNiC.P2b2cbY+8mxmyBLv.wwO9wPe6qjyK0EmcrycVhR2NJJr0N6.tL0xNsemBScZSmS2uemlt7La+ObB9LyLSbZwxQrVYk0nUsltCQV0pVULvANHz8t2C72+8XQf24NTt9CBJHYxfg1Zmc3l27FTJ6z9cJL9ILQNc+L8bwEm6u3Xt4liIM4IikszkTTYO5QOBeK4jkvc8qGk54vPlxeg.RWRRA.13F1.Mc3cJSg5g.De7wwXTzwlTXJtdWWHO3AAwZj6INBEJDydVyjVDpTH8rW8llt9xljc5DGkizvB6kvSO5FkMTTbF7PFBMOMjs+1KuQ8GavlTqVm5TW4NwsqlZpAqrh9FwhVFhDTUUSMFCMZh2NV9BCLPeNG17DJegQFYLsCY9X9dTJutyctKJs2eOyYOCsEJJqH9Bkb1EWnUmieLekZxRGnfHaTbTVQlCABk8TnjjV9vCVqHwHFwHgN5PcckO5QOTtZKmcl9bX6ae6Qp2W94mOtw0ot4M80WeoJ0SklT8pWcT0pRUpthKt3nIK1rASO2N2Hmk4wQUqZUw+9uSkRYRRBjHTwl115Vh11ZlyIRDTdnm9zkvrukDUUNpV0pVzpy6jx2UEJTHMY0yDSLoDYPuhid5Q2XkLoNSkWZWBDJOvoNIyodFtxW9xWnI2kkV3tGdPS4yd4KeAm16nxFl126916d4z85u+WBIDe7TJyLyLmwnthIoCU7yl00lRMua0TWo956d26RKWs1BFbrtyd1yfEtvEP4egG9anUuhi2d2cZQs0m+bzUnyC3+Jyl13Fv6d2aoTl81Wart0sALXFT1okszkf3hKtxpgmBCl1SmuGyWjc1YK06MxHiD2Mv.oTlZpoFZPCZ..JXeeh+8jUuFIGk55niNXLiYbz6q2GIC0lcbggmqibjCyobn5qe8qwidH08HqolZh5Uu5wxcvNCaXCiV.PUQe+cW5xWCW5xWiy0uT2fgufACkYhIl.SLwDJkwjACEeBeGpW8P2b2cJkEJCxQJ.PCchYih0hVzBVGqKXA9fjRJIVuNPAaZXlyb5rlfTM1Xiw3G+DnUN6FuS543OeO5QQu6UOoDR9Em5Tm5fwNV5ewjsn6TQmWAYqebrgkLYOsVLjyI3ymOmiNnadyavnACYJZVInbfGORtKrhNRStQ8vcOj30KMwOVxioxBm4LmlhWn07l2hhjegBI8zSGSYJShhzOINgFZHvOwL9nt5pKZPCTdG1NABDpXf5pqNbwEpFxJ4jSl0bqhj3+M5w.iLhpT+bmaearqctCIdea++1FME5noM00xL4siI3wiGl9LlIsxWxhWjTke90tlUSKsBXgEVH2R+0fF7PTnx8OABzf3rERjPdLcG+s10o1Tdcsrg9dKOxQNrDaW+uzknkCtYZOpxCYlYlzlqRas0FVZYMJQsa1YmMBKLpoKDUUUUXmcJu74HgRGF4eMDLx+ZHJ6gQYJwFarHnfteItc7yO+T.iFtgqMidDH94OK6oDoxZF5PGFLyLpF3KzPCAaXCqWh22adyanDYNExLmE6JxSykv4zBTvZNKNUu5UWhRTnkVVSTiZPetTlhx5abiaPqLwIu7op7Y1XiMxcvQPnziW9xWfcJ1dZTQEUvxWwJgZpoFl5TmJMiVmYlYhYMStEUdkmnUspUn4Mm52aRMkTv+NkIKQiYmTRIgIO4IR6rxG9v+KTUyLC.EjluzSOpNhUDgGAi4kzhi3JDHPAARjrP66PGfKtzXJk80u9ULso9uTxU0hSBIj.sHAF.Xji5+gJW4JKSiAfBjd1EujkISxZb4c1+AOJ1+AOpzq3OnTMrODJTHd4KCiV4hGcg..lYt4zBCcwYZSc5zjM.VMXHKQQmiN1P3hKMlwnI70u5UvSOcGacKaCMxY5dX7aeaDXsqcMLpg0ExBV3hno4xhDIhU4AUe80mh2OHRjHjd5oiDSLQDVXggK6u+RL+xnolZhMrwMw3OV8hmybeZfAFPyiK3JUpRFQyXurYvvpTESj49QSM0rHIdw1ZYKtFtJs5L0+cJ33m3jn10tNr1NAEz8whWzBY7ZcpScVlFSDJ8v.CLPgE8Y6+P9B.fgM3x+x6wuRzgNzQnkVZwnmLYpolRy6+Jq3IOITZQjce5SewRV5RY4NJfwM1wRwoDhM1XwCe3CnrXr4NOePW6Rmnrfk.t10vvF5fwRV5xo4A6W5RWDye9yi1hx5e+G.mjMOBD9kBxgdKWTCKsjVYolZpzTzBoggFZHl5TmJlyblMkxWwJVNRHwDvnG8XorNu7xKOroMtAricrcZs0.GnxSNRKDu7xabjibXJ4y7DSLQz29zarl0rN7GspUTTfi3iONrwMrAFc7uYM64.szRK4ZbnhJpfkrzkhdzcuKwQ1NgeMXVSm9gVnPfnHoTPjHQ3tAFHlybnePzh6k5MrgMD73wix5wtysuMl1z9Wr3EuTZe+Ov6bGrrkQ+PuYx62kUhLxHw7m2bn4rYN1vFVhVa3m9zGwhV3BQpoRM2bW6ZWaZQpt3jVZow47ZqwFWYZGlXwIlXhglyeKIrvhpQTbF4fN0AtKKdCdXiF..GZ+R1AgJuyYNsezNyv0s9M.2EKvBJN4mu.zb2bkx2Kt5UtLVzhVjT+dgh.KYvvUolZZk58awI5niFpppzO3aUTQ0hLplN5nCl0rlMMIUcyaZi3qIlHlvDlXQFX.n.mU3tAFHl5TmRQxzdgzjlzT3gGr6nwsnEs.6X6+GiWSc0UGN0H5JylqMqY3zrX32V9GLqD.crScB6d26hRYaaqaA1au8nqcsaLdO9dziRQZVA.k7oHAEGwDymQlYlgzq3On3+1Qd4kGl1TmJs0gOzgML3zOBnHczQWrfEtHL5+2nnTm6d26hicLkmTAGebwyYkKnZUq5E4vly2GeP25ZWoXntqbkKiTFVJXIKYYThLVABDfW7hWfoL4IQ625MwDSnH4m73wCcnicBm4z9Ur6OeLxQ7W3fG5vzrI..PFYjAiosMGcT1cnxErfEBu7xCJy0egKbdjZpofErvESIkAIPP93oO8oXJSdRzLno4laNiAWEWwImbBCX.CjVpx62EJUWU16eejLtPQwyeg.E7i.lXpozBa8Bw0l0LF0K2mvfACM2byY7CvEx+L9IfgOLl8DqDhOdzqd0CTkpTEzfF3HpUspE9129FhJp2yZTBVH8rW8BcqazWnxG9vGnow5Ex3+m+VhsojPSM0DaZSagQ838ye9yHkTXVecmxjmjb2mye99PIWOlWd4QK+PTHaZia.aZiaPlZ+NzwNhsu8BRNscoqcC6bm6flWDjQFY.26VWQaZSag6d3AL2bKfolZJRO8zvG+3GwYO6YPf24NLFcgU0Ly90H4D+K.73wSgFcgWx+BLtrbYvve3HBhDIhbNLxH5pqtncsq83RW5hztVW6l6JMOxo34zfBwKu7VpGBi6d3AsnX1uScJJFLrV0pVXXCa3z1rQvAGL5XGZGpjQFAmajyPjHQ3sukYOwxAGbfy5KOAB+RfBHOw76LlZB8bOTZokFmS.7Em9z29gi56QwqBipS8su8tWru8tWTiZTC3niMDI8sjPDgGNsCdF.XHCcXn0soMxbeqngGOdXA9rP3s2dRYSkYjQFXzidTPc0UG0qd0ClYl43Eu34LlFC..Zlatw5AEwUpe8a.F7PFJ1+93lbcQnhIKcEqE..yYl+qDqmyMhbXhJR5e+5Cs0vkWd4hDRHAFi1ZM0TSZ4XHGpW8v.Fv.oEUgm1O+vEuvEfs1ZKpUsrEokdZ3yQGM9vGnluCA.pYMsBigiG9zZW6ZnsVQgBEhjS9arJOnctycQps6N1w+QyoGDJTHRM0TPRIkDi6AlKs6AOv9wAOv9kZ8..VzhWhDcZjd1Cu4T6THWKfavnjwRPwQ1RPITpnfHQhnEYf5niNnicrSRbOdpppZnScpy33G+XEUFe97g+96O5Uu5co13sPL0T5qgK8zJaMXX6aWa4T8LxHiQHg9ybAn6d3ANxQNDk7eM.vwNlu3XGyWXgEVfF1PmPbwEKBKrvXLBfTQEUfOKfYm4uPZbiaBzTSMYTwdbzwFxnCc4pqravvVzBlMXnyN6BZeG5.kf.Qf.AX7+yeic43NQG6TmP0qdAFj4Ke4K3V27F3QO5QzddJK9bSYBEkwHJe3Pmc2aujo5e8abqhj7WljhzpW8pioLEpoMf129NfN24tfqbEpoKlkurkhV0pVCKrvB4XjWxXzidTRuR+ffB5gEYnd6rydL3gLDZ683QO7gnCs+OgQFYLb1YmAe97wye9yY0QdlwLlIMmPcricb3FWO.JprvaeaDnU+QKf6d3AZPCbDlUUyPV7yBu5UggK6+kQ7wSUZWqScpibYbcGpW8Pe6W+fuGkZzvc26dWzt+rMvXiMFN6rKHiLy.u34OGe+6emw1YVydNPas0Vl6+hyTm1zwUu5UvW+5WKQsSEQJUMXHaFXyAGXV+XqV0pFqFLbZSaFzJiOe930u90zJmsnKrPZUqZEFwHFI1yd1Mq0IojRB25V2D25V2ThsUgz8t2CrhUvrl9xV9KrjfgFZH14t1MZbiaBiWmsn9qjh34+vvC+MJTs6t3u24fCNfIOk+EqdUqjV8DJTHt4MuAsjgpjvPCMD6ae6mVBMlfxACMPekpTlQPwgGd3IiFLTRdQXoIe+6eGW7hWfRYU0Ly3TzN1t10NZQL4Uu5UvhxZITVD0jl7TPJolBiFlL0TRQhyMos1ZiMrwMSlKh.ABbFyYXyqRSF8YCUTQErksrULwILAFWu3m+7mwm+7mY89qcsqCl4LYWVoJqod0u9XMqccXdycNzLbPd4kGd1ydF.Xes3MsoMEq6+yd2mADUGaAvw+urzQpJBp.JBXAqwdOlhQiZJFicMwduqwRLFSr260Xr20jnFMZLuDMwdu2QAAQDPDrtzg2GVYk0cAVzkpmee4k2dm6bmcw6r2cNyblYk9oWKC0PG5vXu6cOo4umQj224uvkx3BkUHkAy6szIewstkguG3nPgBl0rmCd6iO5brQM5QyAO3+oSebwEWbb0qdU8N1BovDSLgYLyYh0VasA0NBMz6qyfmkdZSaZKekd1ekdUgGd3Dd3gav0aSaZynu8q+Fb4EhbqN8oOEAF3cz509vOrQFz.B2rl2bsBXHndupO6HvOEoHFumgKmvrmy7XHCdPbpScRcNVHgDRZNYr.n.En.LwIMYJaYS+zRnEVXAUspUSuoa1ZlF+F9ZVyZo2W2DSLgZW65n2ioPgBlyblGssssVmIN2Eu3ELnwQcHCcXTqZqaZlUjy4RW5hrrko6pmdhSZJ586r+9w8CbjibXsVXOpSMoij0r17VqlrgMrgyieziX6a+2z4XQEUj7O+yemlmqRkJo+8e.74s3Kz4Xd4kWrnEuD5Rm+ZslH.wEWb7a+5ullAqOE1Zqsr3krzW6T26nG8X3oO8or6csKcNVjQFY5tUkYpolxfGxP06B5JyxVaskwN1ww.GXd+mip0spEYpxmktzORq.kouTRJ.Eqn5eVR+gMpQ7N5YIneoKdQ8libMj8nuQNpQSqZUqyvxYH5XG6DSeFyLMWIMWLCVYhYVMtwMgctycklAKLq3ZBpuo6U2rPynUcYlUkek8dxd1ydQ0qdMdiqWqs1ZVwJVU5lFSEYeTnPA1K6cg4a7tMrg5jBEb2c20494rK6ae+oNoAkOo4ehAsZGs1ZazYFoGczQyd1yen0qYkUVwzm9LYAKbQXu81avssJUoJwV1x1jYQs3sNuLkxm6XFrlWi9xNGutoWdP8d6x19kek9129koVI3snEeAqa8aPqz7YtAe1m847G64OoJU0vSUfJUZJCa3eCaXiaVqTp0aBarwFF239AiRcIDhLOWcsHLiYLS93Oto583VasMrjk9SY5mQ0EWbgYM64ny9piwfkVZIecm6BSXh5l9SeSXlYlQaaa6XlyZ15rstHxeXlyYgLy4naJfSeL0TSyym1W+kso69S+m84F1pYsV0p15r0AcxSdxzcBRYrnuw+7luAOCW1shTjhvF2zlYnCa3YpTlbUpZU4O1yeZvSh3zZeLrFoQfAc2c206pAqBUnBo6uO2Zqslku7Ujo26oM0TSoKcsquQo3PgwW7wGOi3a9FchMPK9hVR8qe80643hKtv2LBcWTRG9vpSMo4kXs0VyLm0rY9yegFbZMETe+yV1x1XfCZvo4yHTm5TWl1zmQlpdA0qryEs3kPwKdIxTmWpYiM1v7l2BXlyZ1oaJP+UU7hWB11u7qF06SaVyaNMnAMvnUe4TZ0W7YzpuvvWEuYwALT2fIYs0VqU9lM0zWZUxDSLguY35OsscZ8rODBY7JLDTGI8oNsoyl2xVoTkpzYX40mRVxRxF23l4GG+DR2AawXrBCUpzTpacqGaYqaiEujkp28xlTKqXEFV1x5qNyN.i40QgBE57k1lXhIrfEtHZSaZ6q8C35omdxx9okq28kRQNC6s2Ni9pKre8oGzu9X3Kkegwi4latN6MnMu4eRNTqQ++XxO8SM7uXrY5YOvPeqjPP8r1dO68Oo4exmjt6AFt3pqLoIMY9kec6TtxWdCtsHDBA.kpzkVmUk7uuyc9FUmlZ5KCXVMqYMSyuW1DSLgxW9Jvl2xVYlyZ1uVab7YGb2c2YyadqL7uYDo6yIqTooTm5T2Wq.lZHZbiaBu+6+AF05Tj2ynFyOvnFyOjS2Lx2yN6rCe80W9nF2Xl4LmE+2AODs3KZY5dNksrkke821AKXgKhRTBOS2xZqs1xPG5v3e1++lodVxziEVXAkrjkjF7tuKCYHCkCejix2+8i6Mdes1LyLiRTBOo90u9zu9O.N3gNBSZxSIW2D7PX7bhSdZNwI0+Xh8p1z59Y1z5R6LrUtcojBQSMGczozLf.uJkJUpyDIH4jSle62R+UIiwf81aOt+J6ig+4d2CwGe7Y4WaiESLwD5W+5Oa6W9UpacqW5N1bt6t6L7uYDr4MuUM6GhFh5pm.FpTooT0pl1iim9Vkg0qdY7+lvEWbgcryem0s9Mjgk2TSMkV251v9Ov+w28ceuLALxkYAyedbyadCsdsBVvBx28ciMcOu129Nn2IZ3jmzDS2UMatUMq4Mm+XO+IMq4MOcGWJmbxI5Tm9J18erWCZLx+7OuEb3ibLF82NlLbBV5pqEgILgIw+r++MMSKvYVsnEeA69O1KMoIeb5tZxKXAKHctKckc+G+QVxdL5ON9I7ZuW2mWkhjSmjUr+AXXa505SrwFKUrBkSmbX86Tkpvu7K5tTYAXiaXCL1wNFsdsV9keISe5yTukuacsK7u+6Az50LwDS3BW7RYpMu3DSLAV0pVEqdUqjPCMzzM+MqdPFpMM+S9T9zO8yxvkWa7wGOUrBkyfSamJTn.GbvQJXAchBVvBhat6NuaCZH0uAMvfipehIlHUtRULSsQiaH5XG6D+33mfVuVSZ7G8FMC2SMu81a12ek1KW56cu6wRVxh3W111xvGtRgBET+5We5bm6JM3ceW4K0yEwDEJvc2KVtpzQ5+qd9PxwGGkbs+OLwb4GUKd8DWbwwYOyYHjPBgHh3AXqs1g293M93sO3fiNlS27xW5VsU8L85iNwq+yqHxdr+OnBjvydBdt7cgRaM7UkqH6yidzi3rm8LDd3gyidzivUWcEe71GJoWd8Fu+OjSvO+tI27l2jHdvCPUzQiSN4DEtvElpV0pkomoruMS5mUa2519C.d6UIS2x0p10Y.XaaZ0FkqabO9Q7ueTkPgU1fWqZuY7IHLXO5QOhfBJPBJvfHjPtGN5jS3gGEmRT7hSgcwE42QJdikU0OpwteF.RNgD3+UWu.SLAu23+ZzpWQ9KO4IOgyd1yPXgEFQFYjXsUVQgb1Y7wGedsWPF4jhLxH4t28tD7cuKgDx8n.EvVbyc2wCObmhUL2xyr5byr8072uaoIoXhAOW0ehRqLrzssH2u3hKNNyYNM2Oj6SDQ7.TZpoTnBUH7vihSkpTkdsmrjIlXBbu6cOBN3fI3fClnhLRJRQKJt6tG3gGdjkOoRiM1X058kYlatl2WUrhUznOIPyMK632mkk0qmEVXA23lF9dM..suCcf12gNXvkeEqbUY1lkdoTooz8t2C5d26ApToh6bm6P.96OADf+DZXghSN5DE1EWvkB6BUq5UCGczoLtReAyLyLt10ydS2.JUpjKc4qjsbs9y88WYKWGP8JPchSbxLlwLVt28tG2+92mPB4dDRHgvCeXDTnB4LEqXEihUrhgmdVRJRQJR1VaSX3r2A6yUErPgvXwbyMW1OCDhzxKFv0zYNYIxg4fCNjuZkw4iOkBe7oT4zMCQ9LYTfBE483fCNfCN3PVxLRWHDh7iryN6ngM78xoaFFMN4jS3jSNYPauU4uHSHl7iL2bySy8wy2DJUZJd3QwwCOJtQutMDVXgETm5n+TWrHisred0.Pu5dmMnxm2XZRjMxZqsFe80W7MM1mEE47rxJqvau8Fu816b5lhHSxDSLA6sy1b5lgPHDBgPHD4YjdY.GgP71oeXrixfKaDO7g.PgxklVwEBQNH4YLDh7896+4eAj.FJDhbgbvd6xxVl3SZpyB.FynFVVR8KDBgvHP9AoBg3s.KZ9yHKplkUCfPHTqb9VFCtr8o+p+MxYT5KUlbBBgPHDBIfgBgHagIlXB1kEt5BO+Etzq84p.HYPFHagPHxxHCxsPHx6qOCP8ftujELqzsbE1YmyNZNBgPHDBgPHDFUR.CEBQ1BGcv92p1DZEBgPHDBQ9KQDwCyYtvoLo1j4dgPHDBgPHDhLggM39koJuDvPgPjkSoIlfs1Vfb5lgPHDhbJZFjaYkbKDBgPHDuoF7vFM.L2YMkLrrknDdjU2bDBgPHD4RUqZV8LU4k.FJDhrbN3XV+pKbJSbbYo0uPHDBgPHDFhN708D.1vZ9ob3VhPHxu5dgbeCtryXJiOKrkHDh7hTnHkYzoLgNEBg1j.FJDhrTJUpDaKPV2dWXJ71KOyxuFBgPHDBg3sWqaUKyfJWbwEmQ9JmRJIUxIoBgPHDBgPHx5HALTHDYoTu2EJCtgPHDuc6EeOPxxLXUHD4cYokVjS2DDBgPHDBgPHLXi8GlL.Lge3aMnxKALTHDYYLUoRYuKTHDBgPHDuApCx4C...B.IQTPTUwbyLy3VgxjsPHDuhedYy2fK64uvk.fJWoJjU0bDBgPHD4Rc8abyLU4k.FJDhrLN5nCoJunm0pO8en.vRV3ryVtdBgPHx7RVFzagPjGVrwFK.XgEo+JMbCqc4YQs.IqcHDB0r2N6L3xNooNK.XaaZ0YQsFgPHDBQ9ER.CEBQVBSM0TJPArIa65EwCi70+jSInlx3Xmtt+8uOKcIKF.F7PFBN5nSFs5dNyY17nnhhOpwMl5V25Yzp2bRIjPBLgw+i.PG6TmvGeJ0abcFbvAyx+I06eRCcXCG6s29235THxNHa6VFFoe1LGoeVQ1sN14dAHC5dtMYk8cN0oNEhVkJ9jO8SoZUq5Fs50PbpScR18t1E1TfBvHFwHyzmejQFIyatyA.5ae6Gt3pqY55XQKbADd3gy689uOMrguWl97EhbyxJ66vXSkpmyzl5TAft1stQwKdIxVu9+091GG4HGF2byM5QO6kNG+IO4IrpUsRt7ktDQEUjTm5VOF5PGFW3BWfe6W+EL0LyXri86yVayhLP93wAKuz81YG15V2BW4xWlxWgJPqZUqyQaKOJpnXNyQ8B8n28ouTjhTjbz1iP+j.FJDhrDN5n8YaqtPQ1inhLRV+5WG.zst2csdnqae6aygOzAQoolRG6Xmxz08N19uQvAGLt4la4oFH6st0sPzpTQMpYsnrksrZcrDRHAMed0v268LJCjcDQDgl5r28oux.YKD4yH8ypKoeVgfWlRRkGsVuxJ66baacK7nG8HJSYJa1d.Cu4MuIqe8qCGczoWq.F9jm7DMetz1109Wq.F966524V94GErfETBXnHemrx9NL1hIlX0zVaZyZd1d.CO6YOCqe8qiJUoJoS.Ce1ydFMuYeL26d2SyqovDS.FF96+sY8qecXgEVHALTjsIuz81YGN3+8er28tGZVyZdNd.Ce5ydll+1zpV2ZIfgYSlyLmblp7R.CEBgQmYlZJEvlruUWnHm2ktzEY7i+GwBKr3slG5Bf4L6YQ3gGNiab+fNCjsPHRk7wyf0rKR+rR+rh7NdvCh..b14BkC2RDus12oH+uV0tNCXXq345U2Zm01XxGR56vvs4MuIMAKre8q+TkpVULwDk4vsJgP+j6sEuMxshUzLU4k.FJDBitry8tvTr9Uurr0qmv3ZVydNDSLwfmdVxb5lhQi4laNqYspm4TkqbkKGt0HDh21I8yJDu4JTAMrTZUeG3vAjTWpPHxcXP8W2THoHuE6ryNMOySYJSYxgaMZyuadS.nbku7LzgM7b3ViPHxMyYmcVSeY4m9co42HALTHDFUlYlYXiMVmsecsvBKx1ulBimr6T7T1ASLwDpW8peNcyPHDB.oeVgvXXIKb14HWWMYjTIc+KDBwakL0TSy09LOQGSz.fGt6QNbKQHD41YokVlqsuLwKIALTHDFUNkCr5BE55bm6bbyadChHhHvAGb.Wc0UpacqGVZoko64kTRIg+96OW5hWfPCKL7vcOnt0qd3fCNn2xGTPARzQGMgDRHZN+abiqCn9AALz8Vgae6aSBIDON6bgwImd4r2+V94GIlTh3t6ti0VaCImbxbqa4Gm9TmlDSJQ7waen7UnBXSFjBbSN4jIf.BfKcoKxiezinZUq5TlxVVLwDSzaYu4MuAf5Y7j4laN.bpScRt90uN93sO3nSNB.wGeB.PngEll22t6tGXs0VqU83latq21XxImLm4Lml.uSfDV3gg4laNEpPEh5Uu5SgJjjFyD4in46Ex+jSRk9Y0lzOqPHLD40567UESLwv0u904JW4xnzDSnhUpxT5RWJTpT+CsxcCJHTEsJbvAGwEWbQuk4oO8oDRHpSmektzo+JG592+9bkKeYB3NAfWd4EUpRUlBVvBZvs+m7jmvUtxk4ZW6ZTnBUHpTkpza7dgVBIj.235WmKcoKhIJURspUsvCOJ9aTcJxX1ZaAxoaBYqxqz2gJUOm6d26B.EqXtQAJft+cJzPuOO9wOFEJTPoJUo0a8jxys4jSEDmc1YRLwD4V2xOfW9bPf56+t8suE.3s29fRkJIgDRfKe4Ky4N6YwV6rEu81GpPEJeZ1OUJhN5n4pW8JboKdIRJ4jnb9VNpV0qldOujRJI7yO0qrvm9jmn9+8oOUymUtTXWvAGcLcudoVTQEIW9xWgabiqSgKbgwWeKGkrjkTuOGYJO6pc1Yud2+yd9yeNAGb5+2fG7fGPjQ9PL0TyvKu7xfam4uj6Xb6xqbus9DSLwv0t5U4RW5hXuCNPspYsz69Ebp+d9z5e2BP3gGNQEUj.ZeedJsyhVzhgs1ZKpTohqe8qwku7kwJqrhJVwJp49+WWImbxb26FDW9xWl6Ebv3sO9P4JW4ovEtvY34FTPAx4N24HjPBAqrzJb1YmoF0rl3ryNqSYiO93we+uM.T7hWhz7uyo7d7JW4JXlolhukqbT5RWlzbwh7nnhhvBOLrxJqz7LHO4IOgyd1yfe27l3l6tSoKcYnjk7syU0XW5Q+.fUs7EYPkWBXnPHLZL2LyvZqsJG4ZGSLwB.VZ4a2qzvSe5SwX+tuSy.nlZ1Ymczyd0a5Se5qdO2CcnCwvF5f4gO7gZ85VXgEzyd0a9vO7C04bF5PGBm6rmUy++3iOdZ5G2D.nBUnhric96FT6tqc4qI3fClQMpQq0lnd6ZWaHxHijUs50hiN5.cuackHhHBsNWWb0Ul0rlM0t10Qu08EtvEXvCZfDTPAp0qamc1QaZSaYjiZzZEj6DSLQMuG9y88WXqs1Ru6Uu3RW5h.PqacaXqacKZUWKaoKgkszk..aXCahZU6ZSrwFql54mWwJ48du2WqyYu6cOLqYNCBHf.zoMahIlPqZUqYBSbRuQOzmPHL9j9Y0kzOqPnsR5YILtUXx48mrE4U667UaG8o28jniNZsdcqs1ZF2O7i7keYqz4bF0nGIG+XGiNzgNx3mvD0a8dvC9eLvAzeTnPA25151eE.wEWbLvA1e9e+0eoywpQMpAyeAKRuCLWps7k+SLsoNER9U92St5ZQXAKbgTkpT0z870mcuqcw28ceKO8oOUm5bvCYHzpV05LccJLLq7mVnAW1csm8A.eRSabVUyIKSds9NToJZZdyZJIkTRLhQLR5Uu6iNkY.Cn+b1ybF0swCeTJZQ0duk5oO8o7wMowjXhIv7m+BoYMu473G+XMsiMtosPMqYMAfPCMTMu9YO2E3.GX+LluczDSLwnUcVwJVIlybmGknDkPm1ShIlHyXFSmUthelDSLQsNlGdTbl3jljNmSLwDilqaJN7gOjlWa7SXhzgNzwz7yoTDVXgwvG1P4nG8H5bL6s2dl3jlLMsoMSqW+G+wefidzifu95K6Z26Qmy6W+kswO9i+..LxQNJ5Yu5sNk4aG8nX+6+enQezGwRW5Okgsy70xgdFi7Z2amZImbxrpUsRlwzmFwEWbZcrhW7Rv3F2Ov61vFp40LwDSnO8t2DXf2A6ryN16etOb0UsCZ3idzi3y+7OkvBMTpTkpDaca+plikReJye9KDSMyTFz.G.wGe7Zc91ZqsL4oLUctewPbzidDF9vGFgEZn5brxU9xy7l2BvSO8TmiEQDQvHFwv4f+2+oyyVnToo7wM8iYZSaFZETvT2m0N+8cQ4KeEz57hM1XYxSZhrwMtARJojz5XlZpozm91OFv.FnN+9sctycv3G+OR0pV0YSadKLxQ9Mrisuccpi1091yXFyXwJqxYF65bJO6YOOSUdIfgBgvnwQmx4VcgcpKpG7y2l2qXtxkuLcoycFUpdNEn.Ef5Uu5SgcwEhJxH4PG9P7nnhhYNioikVXIcoqcUqycEq3mYpSYxjTRIgEVXAUnBUDu7xKt90uFW8pWkEL+4o4G0jZN6ryTrhULdtJU7nnhBEJTn4G7XHyDIC00u1UYYKaoDWbwQMqUsn3dTbN1wNJ28t2kvBMT5d25J+2AOrNqVjMuoMx3F22SBIj.EoHEgpTkph4VXAW37mC+82eV9x+Id5ydFSbhSRu+a2m9zmR26VWI3fCVyqYt4lSwJVw.T+vNIlXhXu81qYlKZHoG2+4e9aFz.G.IlXhnTooTtxUNJeEJOQGcLbzidDBKzPYKaYy3niNx2LhQ9l7QmPj6Rd7A8V5mU5mU71sTBli2do6fljZSax+P1PqIui7C8cdfCreN3A+ORLwDoLkoLTwJVIBN3f47m+7nR0yYji3a3pW8p78e+3d89PJcjPBwSO5d23vG9PXu81SUpRUwAGcjKb9yQ.AD.m7jmjO6SaN+7JVE95qu5sNVzBW.6cu6AyM2bpPEpHd6s2Zl49gF58o8sqsL4IOU9hV1RCtcM1wNF13F1..3iOkhJTwJPzphlyd1yPngdeF8nFIIlPBz110dixmChWeqccaBHiCXXxuL+GmU2jLH4E66nPEpPT0pVMN0oNIG7PGTm.FFczQyEuvEz7++3G6X5be2wN5QIwDS.yM2bZ368dF7mW64O9CF23FK1au8TqZUabpfNw92+94QQEEW7hWfd0qdvd269zZU6oRkJ5QO5FG+XGC.JXAKHUsZUCKsvRN24OGAETfzit2MpPEpnVWKEJTn4Y0hLxHI5niFqrxJMYwhTVYTomSbhSP+5aeHpnhDEJTP4JW4wWe8kvBOLN2YOKO9wOlAz+9ww6vwzZBWz3lzDN5QOBW6ZWiHhHBcd1zSbhS7xOKO9wzIfgIjPBb7ieb00Ui0NnmhrG4Eu2NEIjPBz6d0SNvA1Of5fM5qu9RDQDg5rZRf2gd26dxRV5xngMT88u1XiML+Er.9xV9E7jm7DF4HFAqdMqUqeaz2N5QQXgFJ1YmcL+ErHL0TcCYyt18uy9+m+APcf7Je4JO24NAvEu3E4oO8oLf92Otw.tACYHC0fe+rf4OOl+7mGIkTRXs0VSkq76fGd3A23FWmKdwKwUt7k4S+jlwLm0r059km+7mSG5P63V94GJUZJ0rl0Du7xKhIlX3Lm4z3u+9yt20tP0yUwx+4UXPsk6e+6S25ZWzrhJKdwKAUtxUl3iOdN6YOKgF58YAyedb7icLV9OuBr0Va0oNRN4jYTiZD7a+5uRIKYIw2xUNhVUz7e+2+RBIj.aZiaDas0NF4HGkA+Yzaij.FJDBiByM2brw.dnvbkxmjp71111JpT8bbwEWXm+9t0ZVFGSLwPu6UO3PG5Pr7e9mz5gtBLv6vzl5TIojRBe80WV8ZVmVo1nPBID5VW6BG4HGVmq4RVxx.fcrisyvF5PvbyMmCdHcmcfuol9zmFUpRUh4ufEo4GljbxIy912eR+5aeHlXhg0tlUq0lr9cCJH9we7GHgDRft28dvv+lQfYlYlliuoMpdPt27l1Hkrjkjt0stqy0clybFDbvAS8pW8oG8rm3s2diqtVD9Ql..T6ZUCBO7vYvCdH7UecmM32Oi+G+ARLwDoAu66xhVzRz5GTEarwRm+5NwIO4I4.G3.YpAx9oO8obridTd3CeHUnhUPmYqUJt5UtB9VtxYv0qP7lK2w.O8lR5mU5mU5m8sai969Qf2tmfZuNxOz24+7O+MN4jSrpUuFstu+oO8oz+90WN7gODqY0qh268depe8Mt6MOO8oOkCe3CwW9kshIOkonU5A7+8W+ECYHChvBKLFy2NZ19N1odqi8t28fukqbrpUsFsFb8.BH.5VW6BAF3cXricLT+FzfLbkJlx0ciaXCXpolxDmzj0ZkDFarwxTm5TXsqY07ce2XvKu8lpW8Zn04GSLwvwN1QIjPBgxV1xRkpTk06p89F2353s2dmgoRQQ9S4U66nwMtIbpScRNyoOMpToRqmA4bm6rjPBIfEVXAwFarbzicTcBX3gN7AAf5Uu5mgoD9TaricL7oe5mwDl3jzbdwGe7rf4OOVzhVH2xO+X+6+e3C+vFo4bVyZVslfE1idzSF0n+Vspy8rm+fgOrgxoO8oz50sxJqz74x.GX+4O18togM78XgKZwFTaMt3hiQNhgSTQEIErfEjYM64pUemOJpnXDi3a3e9m+lMrg0S8qeCnQezGA.MpQeD+v39dRN4j4PG5fzhV7EZNujSNYN4IOgl9LN8oNMIjPBZE7kyblyfJUOGSM0T9fOP2Uh1YNyo4FW+FTrhULpV0qtd+aP3gGNJTnvf5uTnq7p2aCpum4.GX+Xmc1wrmyb0JCm73G+XFy2NZ16d2C8tW8j+2eueb2c2AfxW9JvHG4nYhSb7b3CeH1vFVOcricB.15V2B6ae+I.L8oOSbyM2z609+8W+Et5ZQXMqYs3sO9n40iJpHom8rGb1ybFV3BlOu2689T4JW4L78x4O+4YdyatjbxIS0pV0Ydye9ZsxGO+4OOCZf8mfCNXF8nFI0pV0F6s2d.3nG4HbK+TmljWyZWqNYhlEL+4wbm6bX+6+e31291FTp+cxSZhbiabcL0TSYjiZzz0t1MMGKwDSfYOqYwxV1R4Tm5jrvELeF82NFcpiyd1yvEtv40YUNGUTQRu6Uu3zm9Tr90sVFv.FnNSrAUpTwwN1QIrPCix5quToJUI8lVju10tFktzkVuGK+h7uuyDBQ1JmbT+4IbQ1mKekKCndF99pO3pkVZICa3eC1YmcDsJUZ1WE.X9yadjXhIfM1XCqeCaRm8AkhVzhxl17Vzat+O6hEVXAKZwKQyfXCpmUiMoIerlG73FuRprXBSX7DWbww61vFxn+1wn0fXCpSEA8t2pmsgaX8qWmTn..m33GmdzydwpWyZod0q95j1HdcDRHgnYkzLzgNLcdHEKrvBZUqZC.3me2jDSLACpdOxQNLev62P5Se5Ee228s7Ye5mPya1Gyt10uqUpk4F235z5V+kLpQNh232KBwaaj9Yk9Yk9YE4LR4dm7lS9h7K8cthUtJclj.1ZqsrxUsJM6INyY1yLK4Z2fFz.l1zmgNANqQezGwTl5z.fKdwKve+2+O8d91au8rwMtYcVINd5omrwMsIL2byIlXhgEu3LdusI1XikINwwC.8ou8SmzNpEVXAiab+.0u90mjSNY1v5WuVG+pW4JzjF2H5d25Je+X+NZ0W1R9vO38YiaXCZkZ2BKzPoScrCzydzCcR8ZB3tAeOtav2KmtYjkJuZeGeTiUuRNiO934Dm33ZcrTV8aoDnfieripy4enCcH.0qjtLCO8zSlwLmoVA3xLyLit10to4Yzt4Muoli8zm9TV9OoNHJMsoMSmfElxqOoIOkLU6vPrlUuJM+Ma1yYt5LQKbvQGYIKco3s2dC.SaZSgDRP8yq4hKtPkem2A.N7K9rJE29V2hHiLRpXkpHUrRUDUpdNW7hWPqxb3CoNfr0t10F6ryNMu9yd1y3q5TGo0s5KYricLz0t1YpSsqISaZSUqz0ehIlHCeXCkurksf6FTPFiONdqSd06sevCd.yatyA.F6XGmNaGB1au8L64LW71GeH93ims8JawBcoqck2+8+..XpSYxDXf2g6bm6vDFu5IjVm6RW0DXb8wDSLg0tt0qUvBAvQGch0stMnY+SbNydVFz6mIOoIRxImLEpPEhUs5UqyuCqxUtxrre5mwDSLgG+3GyBVv7zbrT9ankVZIUspUSm5tu8qe3latgc1YGm6bmUmi+pN2YOK6YO+Af5msH0AKDTmhS+lQLRMSvh0rlUq0+1HEImbxzou5qzIkH6niNQ66PG.TGXvT1mSSw4O+44iZzGPO6Q2YricL7ksrEz3O5CYqacKZ56AffCNX5XGZG8qe8QmT3btYaaSqNSMgGk.FJDh2XVXg44X6cgonPEpfTnBUvLtf4ikxL28XG6nr8s+a5b7JTgJx4N+E4bm+hZlkSImbxr28pNu++Ye9mqY1B8pbvAGnssscYQs7LViabSRyAQ98ewrBLrPCSyqoRkJ1+9UmpF5RW5ldOO.5ZW6FJTnf.C7NbhiebcNtSN4DCZPC1nlpcKPAJ.aYqaisr0sgu9p+UeRfuXe.KojRhjRJiW4qAF3cn28pW7vG9PL0TS0Lizt10tFCdPCjF8ge.ScpSgEu3EQ6ae6zYu2QHxpo4dn73ojToeVoeVoeVgg3rm+hb1yewb5lQtF4G56rl0rlTwJVI8dLkJMUydC6EtvEve+82ne86dO5YZdrl1zlgGdTb.XGae65sLsscsWuotKP89MXJqPmcnm+97pN+4NGAGbvnPgB5bm6RZVtt1sd..6ae+IOJpn.Tupg5ZW6L28t2ESLwDb2CO.ffBJPF6XGCM7cqOie7+HK+mVFspUsjG9vGR7wGuNSHEALzuYLLzuQ2UWg9z11zRZaaL7zMatE4U66nXEqXZlbAG7fGTqicxWD.wunkeIt6gGb+6ees1CnCJn.4tAEDJUpjOTOq9szSG6Xmz6pw0AGcjpTkp.fV6QYG8nGgG+3GC.e0W+0oY89oe5mpy9r3apctyc..0oN0k5UO8uprUpzTMY1h.BH.sB7WJoFwCcnCp0DR6DmTc.YqUMqE0tV0F.N1KVAkoHk.x9Qej1AjcvCZfZVYZEqXECyLyLd1ydF+zxVJuaCpGCcHClUtxUPm5X64HG4v7rm+brIGbx9kWVd06s+2+8.77m+bbvAGnEewWn2xXt4lyW8UpueZaaaq5DToYLiYhKt5JQGczLrgMTF7fFHpTohJTgJxnF0nS2q+6+AePZtR8rzRK0DjsCe3CoydR+qJ3fClyblSC.8q+C.qsV+ql4xTlxvm8YeN.rycrCMud0qd0ATuhPm7jlnN+1GkJMk+6fGlyc9Kp2834WUJ8I3fCNPOewyToOCaXeCJUpj3iOd16KBv3qpyctq580S8JJNzT86ZevCd.cuack6e+6iRkJ07rI96u+L5QMRduF1.l3DGO+zxVJstUsjG8nGQRIljdyLB4WH40AgP7FK2vpKbIKvvlAM4m8IexmxZWypIlXhggOrgxbmyr48du2mpW8ZP0pV0zLaiRsvBKThM1XAPmTHvqpN0ot7y+7xyRZ6YjzK8EjxdYUpmQx2912RyOb3rm8L5cizNE1Zqs7jm7DtvENO0p10Vqi8Ie5mYz2LjsyN6nZUq5Z8ZO3AO.+u8s4F235bzicT96+m9mc3oke629MTo54zf28cYJSYp3pqEg6d26xO8SKkss0sRfAdGMydTP8Cf+8iy3uG6HD42I8yJ8yJ8y91sJWI8mBZeUSYZyFPRcooH+Pem0st0KcOdpaiADf+ZVwgFCJUpjZUqZktGul0rlDTPAR.An+fUV25V2z8ZT65TG1xV1LO4IOgHiLRM6CY5ie2RcJHyVaske8W+kzrbO6YOCP82cb8qecpUsqM66u1GO3AOfJVwJwrmybwSO8jG7fGvpV0JYcqcsDVXgwZV8pzTGt6t6L64L2zssKxXs7y+jb5lvqk7x8czjO9i4xW9RbnC9eZdsXiMVN+4OON5nST5RWZpSsqCaInf3nG8nZB5eJAXr50nF3fiNlotlkzKuSyioumkKv6bG.0qBwW84lRMkJMkZTiZxN1g9mPBYVImbxbmWbsqZ0zckIkZodkKEf+APUpRUAflz3lvTmxj4gO7gbsqdUMoA9TVQm0p10FSLwDV7hWDG6nGk90u9CnNsDdkqbYLwDSzZkbc2fBhCdv+iBTfBvhV7Rnd0q9DSLwvN1w1YIKdQDbvAyN24NzDTCyLyLV3BWT51WYtd4fSny7p2amRJ3zV6riUtxzde4K3Wrx2BO7vIzPCUqL3hCN5HyYNyiN0w1y4Nq5Udms1ZKKXgKJCmbLYzyhTmW4YQd0rJPpEP.An4+tZ5YEBlZUspUisu8eiHiLRdxSdB1YmcT6ZWab2CO3tAEDqacqkctycPCd22kZUyZSUqVUoTkpzoaclVsmxVVeS28.UWbwEbyM2Iv.uiVuGRgkVZoVedmZozOH.wEWrZ9u2yerahJpHopUsZLqYMab2COHrPCkUrhelMtwMPHgDBqZkqTS4KYIKISaZSOS89KuFIfgBg3MhkVXgQef9Dud70We4220evHGwv4buXl+tt0sVV25VK.3sO9Pqacan8suCZ9aVfA9xTnQQxfz.WZ8ktYGr2gLWPoS4A4.X9yyvFjgG9vGpyqkV4NdigCcnCwV2xl4Tm5j7fG7.sNVwJVw3d2yvSwPCbfCjm8rmQe6a+zjVNb2c2YBSXRz+9OP1vFVOm4LmFUOWE0u90m9z29I22JDuFj9YeIoeVoe12FMlQMrbnq7KFLOi3JwM6T9g9NynUWSQKZQQoRkjXhIRfAFX5V1LqBW3Bmg6georBLBJMROdEsno+mQt4l6Z9uC7N2IcGD7T5++IO4IL4IMwzsdSQJ8+2l1zVt+8uOMu4eBd5om.fyN6LiXDijd1ydwl1zF4jm33DwCeHUu50fANvAgCYxueRj+Qd49NZbiaBybFSm.BH.BN3fwM2biye9ySbwEGu+6WSTnPA0p10lsrkMywO1wzrhnNzKRWlorB5xLbvA8uhqRKA9h9KbwEWxvL8fw7ypvBKTMqFoT5GHsTnBUHr0Va4oO8oZMgHb2COvWe8kqd0qxAOzA0DvvSdhSfolZJUspUCEJTf4laNm6bmk3hKNL2by4HG9HjTRIQUqZ0zJUX5tGdvx9okSjOLRMq3QKszRZaaaGspUshcsqcw+72+M96+sojkzK5W+G.koLkwn8YxaaxqducJSXl6FTPYhu+KBcZO0rl0jOtoMkcuqcA.e3G1HMeOd5IidVD2RUcDXfApy9Gbpk56mJQFbeXpuOMf.BfJUoJgRklxt10ev3G+OvN2wN3IO4Ir6csKMumb1Ym4iaZynW8pWFzVNQJsGOKY52VRo8jVALzN6rKSm4Z9putyDd3gSaaa6zr5BcwUW4aGy2Qe5aeYiaXCbxSdRdzidD0rl0jALvAklYsgbqd7ieB.Xu81kAkTMIfgBg3Mhi4BVcghWxKu7he4W2N2Mnf3.GX+brieLNyoOMO7gOja4meL4IMQ90e4WXyaYqXmc1gUVYolyMYR+YVGG.qAA..f.PRDEDUVB4gxO2VX4Kee0hunkXloY7W2UpRq6LfxEWbwn1t.0ynxAMnAver6cq9Z3pqzhV7ETRu7BO8zSJW4JG94mezydzcCtNUpzTF6X+d8dLWbwEF5PyoFfSg3ER4g1Uj2NkjBR+roP5m8kj9YEhLVd89NiKC1C8hO930j1wLQQlbmeIC9pQCY+6KkUcQZMHYwGeb580SQbw9xYZuBSR+1ukun+eas0V93OtoYXaCPqU4vfG7PzaYbvAGnO8ouzm9zWCpNeaWYKSoxoaBYKxq12QIKYIwae7ga4meb3CcPZa6ZulzQZJYagZ8hTl4wOt5TlYhIl.G+XGCEJTvGkN6iYFKo7Yk91ioeUFyOqL0zWtJpRH9zeejN4jSVy9GlouxpupwMtIb0qdUNzgNH8t28g.BH.dvCd.UqZUWSPldm24c3Dm3DbtycNpYMqol.xlx9LYp8p6GcoPoRS4y+7Vvm+4svveSJxP4Eu21RKT2Fb00hPCZPCLnyQeSfvqcsqwesu8o4++N1w1oEewWjgqfvL54AhMUeWdF8rHlk56CSH8uOL9Tc7T+a9r0VaYFyXVLlwLVNzgNHG9PGhyblSq4dw0tlUyursswF2zlnBUnho60Hk9Exn9DRc60TC32eZHTnPAeyHFodOliN5D8q+Cf9YTtR4b5duGHfgm8Sj.FJDhWaVYokZ8k14jt0sUOaT71KiW5+IuL28vC9puty7UecmAfSdxSxRW5h4+92+kabiqy7l2bYri86o3EuDZNm.CLPMo3C84d2K3r3VswSJaN5.LfAL.sdelYXg4VjwEJSZCaX8ZFD6wN1wQm6ht68K9kpUtiPHxcR5mU5mUHRK0udoepxJyJYCXe1Luh7p8cdufS+qQnoZeAq3kn3Yp59UWAzupHhHBhIlXzDnN8Ij6ee0W6hq+qcvAGb5ldvB49gn4+tDoQcjBudQ++lXhILkoNszsrhrNiebeqAW1k7SpSkZ8om5eecJuf7h8cz3F2Dtke9wAOn5.FdhS7h8WuWjhgKbgKLd4kWb6aeat0stEO5QQwyd1ynRUpRFzJx4MUJeVc+6e+LbuB0X9YUpW0f96+sS2xFZnub0H9po54F2jlvblyr4Lm9znRkJMoizZlpT3bspUs4Dm3DbricT0AL7vp2+BecVAmhrF4kt21au8l8sO0+a3W2u+KlXhgAO3ARbwEG0st0i3hKNN0oNICeXCk8r2+DGcLsWg+AmAOKx8S02kmQOKRpuexe+8mJW4JmlkMfTcep9VMhN3fC7Iexmxm7IeJf58h0Uu5Uy5V6ZPkpmy2L7gyetu+JCaOAF3cLn8A5T52vXl92EZKSN02DBg3kbzwLWJuHqzn+twyn+twmS2LxwnRkJV5RWBKcoKg6+hALH0pQMpAKaYKmhTD0+viScpSB.1au8Zlwu+u+J8+B78su+zH2py53omkTSpa5hW7hoY4hO93YQKbAL+4MW7yualsz1N9K1z0KSYJidGDa.BKUa.yBQ9J4gGyaoeVsI8yJdaz+dviv+dvijgkaf8qmLv90SieCHOXJIM+Rem+0e8Wo6pv4+8+dYazSOe4.XYkkpWYAO4IOIMO2qe8qkgW+TW+up3iOd9u+8.5bsSsTuRFzmT1WWcvAGxv8MMu81G.3wO9wDTPoc5WMjPBg4Ou4x7m2bS22+hrd6+.Gj8efClS2LxTxOz2QSdQPoN5QOBQGczbtycVJXAKH93yKWcnodUFdnCk8FLqTl7WIkTR7O+yemlkK5nilCcPi6+9Ik8N6Ce3Cmt8sdvTsGP5UI0d+11GeJEd5omDe7wywO9w3juHfr0NU6W105E6oaG+XGia4meDVnghu95qAk9GEYMxKeus29n96+72e+0rO8pOW6ZWi4Ou4xhV3BHojRRqiMkIOItke9QAJPAXZSeFL8YLCrxJqH7vCmQMR8uJ2Rwe8WF12kCPIJQ5mZOKYp1+5S8dsp9jxdqZQJRQzr+Bt0stEV5RWhl+9jZd3Qw46+9woI.h25V9widziR2qQJ8Ib0qdE8tMVjha4meZ92Md4kWoY4DuYj.FJDhWKVYkUo6rbMOEM60y4cGIaqs1ZV0JWAyX5SicuqeWukwLyLixUtxC.N5vKGHfu5q9Z.0O7wUt7k064dm6bG10uq+5M0d0GFJEImbxnRkJToRklYHXVIyLyL9xu7KAfEL+4kloXge9mWNyd1yhEtvEhSNUvW6qWRYhY9eJ6YVEoH5O+yGe7wyl17F07+Ou7+tTHzHO3fb+pj9Y0lzOq3sQKZIKmEsjkmS2LxSI+Rem942MYO+wen2i8rm8L1vFVOf5A5rDknDZNlqEwU.X+6+eHlXhQmyM3fClctycjgs+ktjEq2yGfeYaaiHiLR.n0soM5sL6XGam6bm6n2ic6aea9euXPFacaZaF1VpbkqL95qu.vrl0LSyxM9w+CLu4MW1wN1A1Ymgsm4HDoH+PeG9Vtxg6t6NO8oOk0s10PLwDil.DlhZWmWFPqTFz9OJaJfg0rl0RSvKWzhVnVoyvTaMqY073G+Xi50tSu3uQW9xWhcr8eSuk44O+4L24La.3cpRUnbku75TllzjOF.NzAOHm3Dm.yM2bsV4Yuy67NXokVx4O+4XeuHXKezGoa5H8sQuLEVm89bv4ku29C+vFgyN6LpT8bV1RWRZVuiXDCm4Mu4xIO4IwjTklu2+9+GV+5WG.LluarTjhTD7vihyHF4n.f+9u+eZddB84rm4LZBd2q5QQEEacqaQS6Lk8b8zhyN6rl6e9oe5mHrvz+jo7HG4vbfCrefW94O.G6nGkYL8owhV3BRyqQJqZQyM2bMAZLsz110dL0TSQkJUL6YOqzrbSZxSjjSNYryN63y9rOOcqSwK4VwJJtUrzeOvL0j.FJDhWKNlI2PsEY8p8Kl8byadyk8t28nyC.8+9q+RSN6O0ooiN2kthiN5DImbxzgNzN1+9+GM6AKIkTRbhSbBZcqZIwEWZu2m3fCp2KKiO934HG4v73G+XToRkliGZngREJuuTgx6K0sN0JspFipAMnAikVZI2912lV2pVxsu8KSiBpT8b9q8sOV7hVH.znFkwOPk9Xu8peee5SeJBO7v4YO6YZ9rKsT5WrGdcricTN4I0d1XcK+7iN24uhqdkqn40hJpnxzsKgPj0P5mUaR+rBQ1kTFLu7lS9h7K8cNzgNX1zF2nVCp9cCJH5XGZO2MnfTWlgMbsNmp7NpG35m+7myrm0LIhHhPywN+4OOeUm5nAsG7b8qecZe6ZiVA8Kt3hiMuoMx3F2XATGrx5Uu5q2yO93imurkeAG4HGVymgImbxblybZZe6ZCIlXBXiM1Pu5Yuxv1h585G0Ct4t20tXPCZ.DUTQp43QDQDrxUtBMq.j111LNHjhLuic7SwwN9oxoaFYoxOz2QJqVvk9hfK7pALrV0pVnPgBN7gODW5RWRyplK6fIlXBCYnCE.t5UtBcrisWqTdnJUpXIKYwLioa7S8ve1m84Z1SyF8nGEqbkqfDS7kS9rqd0qxW7EeNgGd3.vXFyX0a8z3ln9y2ctycPngdedm24cvBKdY5t2LyLipV0pQ7wGOqbE+rVmiHmSd06ss1ZqY.CbP.vhW7hXRSbBnR0y0b76cu6wzm1T076LZa6Zmli8fG7.F4H9F.3caXCo0s9kSvmN0ouRyda5jmzD4VoyVmPu6UOXG6X6ZseFdqacKZaaaCO3AO.EJTvPLv8V8QNpQgYlYFpT8b9xV1Bs9cSIkTR7a+5uRu6k5mKvM2biN2kWlVqqScqK.bnCcHl8rloVeN.p+MWqYMqAPc.+M2byS21hmd5IcnicB.17l1HiZjiPqUw4Ce3Com8n6bv+S8Dqne8e.YXFQP7RyYlSl4LyIavkW1CCEBQll0VaEVZoweOG5MQkqTExoaB43F62ONtvEt.AETfz+90WbxImn3knDnzDkDXf2Qy9iRkqbkoSc5qzbd1XiMrzksL5We6CQDQDzit2Mr1ZavGe7F+82ed5SeJlYlYzm9zWVxRVrdu193SoPoRSIwDSfupScD.pPEpH6XmY7L6JqhKt5JybVylQMxQvEtvE3iZzGPgJTgnnEsXbsqcUMOfkO9TJl5zl9q00vWe8E+76lr28tG16d2C.rgMrIMOrm9z51zF1wN1NwDSLzt11Z71Gevd6rm.C7NDQDQfUVYEicriiIO4IQhIl.eYKaA8e.Cj1X.y3agH2K0Cxcd8UxkzOq1j9YEB86228dAfOs4ebNbKI2g7C8c1hunkr287G7ce22xO7CeOktLkgHhHBB6E6cgJUpju4aFAUu50Pqy6y97OiErf4SPAEHqXE+Lqd0qhxUtxy8tWv7vG9PJRQJBSeFyj92u9llWaGbvApScpK6YO+Aev62Pb1YmwUWKBW+5WSS+rktzkgoM8Yjl0Q6Ze6YSabi7UcpiXs01PoJkO3u+9qIUgZmc1wbl67L3AeqAMnALnAMXV3BW.6dW6hcuqcg6t6NEn.Efqe8qq466+3OtozCCHHjhLuYOuEA.aqVqNCK62LzAjE2ZxZjenuiF2jlvO+yKWyJzK0A+..GczIJUoJM23FWWS4yN03F2DFzfFLye9yiydlyv61f5QQJRQvQmbhab8aPhIl.d4kWTlxVVM6OzFCJTnf4Nu4S+6We3ZW6ZLoINAl0LmAktzklPCKLM8sZgEVv28ceOuy67N5sdpPEpHEsnEkPBQ8d2VMqktOeXspcs4HG4v7nG8HJQI7Lc2OWEYOxKeucaaaa4pW8pr4MsQV4JWAqd0qhRThRfBEJzZxS1idzS93Oto.p+MviXDCmHiLRryN6XJSdpZUmJTnfoMsYvG2jFiJUOmAMnAv12wuqSP1ZUqZMae6+FCanCgQOpQRoKcYHzPuulOuLyLy36+9efxTlxXPuW7vihyrmyb4aG8nHjPBg101VSAKXAwc2cG+7yOd9yUGDP28vCV3BWjVsmV1xuj+8.Gf+7O2KKZQKjUtxUPI8xKJfM1P3gGNADP..p6iKsB3+qZXCa3DdXgwd26dXaaaq7a+1uh2d6CwGebDP.An4YKZeG5.cty5eamPXbHqvPgPjokab0ENlQMLFynLrYQS9UErfEjMtoMSm5zWg0VaCQFYjbtydVN8oOEO3AOfBW3BSO5YuXsqaCXqs1p04VspUc98ee27gMpQXmc1gJUOmKbgKvSe5SwcO7feZ4qfl1zlklW6hUrhwTlxTwKu7Bqrxpr52pFrO9iaJ6d26gFzfFfM1XCQDQDbwKdAhO93wZqsld069vl27Vz4yCC0HF4H4C+vFgCN5nVoZhzSUpRUYgKZwZ1yHtke9wYNyo4wO9wT0pVM1wN9c5bW5BMpQMBP89+RJoYJgPjyR5mUWR+rh2lzrl1XZVSy3TY151vVXcaXKYCsn7FxOz2YUqRUYSadKTiZTCRLwD4JW9xDVngholZJku7Uf0t10q2.ioToor0s8KzvF9dnPgBRLwD4hW7B7rm8LpQMpAabSaNC2KsTnvDl0rmCCYHCEGbvAdvCd.W5RWj3iOdJTgJDsscsme821Nd3QwSy5nCcnSrfEtH7zSOQkpmy4O+44IO4IXs01P8qe842+8cSCa36ko9LYfCZvrt0uQpPEpHlYlYb26dWt10tFImbx3hKtv3F2Ovbl67RUZuSjSoFUupTipW0Ltf4xjenui24cpBEtvEF.JbgKrd2ysRIsjBPiyARWlCbPCleZ4+Lkq7kGSM0Tt+8uOW8JWAkJMg5Tm5xl2x1nnoQZd+MQIJQI3219NoG8nmTjhTDhIlX3BW3BDVngh0VaM0rV0hsuicR66PGR25I0ov0WcEbBub0rotrR5HM2f7x2aqTooLoIMYVvBWD93SoPgBE3u+9qIXgd5omLqYOGF4nFslyYMqd0ZVYbe+2ONbwUW0odcyM23a+1w.nNqBL8oOUcJS8qeCXcqeiToJUIhKt33RW5h7fG7.L2by4cdm2gMukskg2u7pZZSaF69O1Ku+6+AXqs1xCe3C47m+777m+bb1YmoMsosr6cuGJe40dQZXhIlvrmybYDiXjTzhVThN5n4JW9xbhSbBBHf.vJqrhO+yaAadKaUSZLOiXiM1vBWzhYxSYpZ9cb23FWG+82eTpTIkoLkgkrjkwDlvjLnryf30mhjSmo5s+Aj1af0Bg3sS1Xs03hKNmS2LLp962szjTLwfmq5OQoUoed0NuhXiMVt28tGgEl5AxvYmKLt6t6nToxL7bSN4j4N24NDQDOfxTlx9ZOHu41jbxIycuaPDbvASQKZwvM2bKG8gLRo8Dx8BAGbzQ71au0o8b8qecL2bywSO8TFrE83VssA.vGcB44Uxs6eaVMItHBEOVvVwbm08GHkWjzOqtj9Yy+Q5m80SqZWmAfssoUaTpOUgdON7mUGLwgBRIW51MJ0YNk7C8cFQDQvsu0svJqshxTlxlgoYqTnRkJ72+aSBIjHkqbkCyLyrL80NwDSjabiaPTQEId4kW3pqEISWGAETfb26dWbwEWojkrjF7jwH8jPBIvst0s3wO5Q3tGdfqt5pQodyOHqpeTic+L.jXbww+Tee.kJw6Mb.iV8ZLjenui7BhM1X4pW8pXkUVo2maJqzidzi3l27l3ryNSwKdwk9Pxjxr80r+OnBjvydBdt7cgRay4VT.40u2N1XikadyaPrwFKd3Qw0LAALl7w6RRRIkDye9Kjl07lC.gEVXDf+9is1ZKktLkwncu5cu6cIj6cO7xauoPEpPFz4jTRIw8u+8IzPuOwFar3ryNiat49a7jbM5nilabiafYlZJ9TpRYvOuU9cuNOWwku50.fx6aYMnxKgiUHDYJN5XtuUWnPWVXgETxRVRJYIKYl9bUnPAd5omYa6cBYWTnPAd3QwS2Yec1ICo8XnoRBgHWuTBDSd7TRZpI8ypKoeVgPjQxOz2YgJTgL3AQK0r1Zq0YF5mYoToRCdl5mVxJ5m1TSMU5OMaVi9vL2JBMut7C8cjWfEVXQZl9Oyp4fCNPMpQMx3BJLNxkLQ4xqeusEVXgl8iyrSt3hK3hKtXzqW2c28LLyG7pLwDSnXEqXTrhULiZawJqrhJW4JaTqy2V8iSP8dQqgNIij.FJDBClM1Xct1YzwA9uCC.u26Vub3VhPHDBgPHdaV6a6WZbqv7QS1BgPXbzyt80FbYGy2OQ.XRi+6xpZNBgHOJ4QLDBwqRBXnPHLXN5fC4zMgzzhW5OCHALTHDhb2jeQpPHx6Z8abq.PGaeqS2x0hOq4YMMfbIqF.gPj2xM86VFXIewyoI80HDBgP7VKIfgBgvfTfBXCladlee1Hug7eoJOgPHxMQAx.OIDh7914t1CPFGvPgPHDBgPHDhbCpUMqVlp7R.CEBgAwQGj8tPgPHDBgPHx1oYRsIS9BgPn1190c..spkedNbKQHDBQVoILgIRxICUnhuY6Cxh2dMrA2+LU4k.FJDhLjsEn.XlY4tWcgMuYMImtIHDBgHsnPVI2Bg3sGKdYq..5au5VNbKQHD4Ws0ewvCX37l8TypaNBgPHxhz1109b5lf3sLR.CEBQFxAGrKmtIjg95N11b5lfPHDBgPHxGq28rKFT4Nv+dH.IfgBgH2ghVDWyoaBBgHWGYBcJDB8SBXnPHRW1Zat+UWnPHDBgPHDY09f26cyQttIijRREBgPHDBgPj48m+0+..M4i9.Cp7R.CEBQ5R16BEBgP7FSl.qBgPHDBgQSW95NjS2DDBgPHD4ArhUsN.IfgBgvHvN6rESMMuQ2DqaiaE.5T6acNbKQHDBgPHDuMaDCaPF2JTlsEBg3UzzlzHCtrec25K.rlUr3rpliPHDBgHeh7FQBPHDY6Tn.bv9b+6cgo3220d.j.FJDBQtaxfdKDh7tl5LlK.LpuYvoa4pd0dmrlFfBIkjJDhLOUpTkS2DDBgPHD4QHALTHD5kc1l2Y0E9lRglAeQFHa8492+9rzknd1nN3gLDbzQmLZ08blyr4QQEEeTiaL0st0ynUuBgHWFYPtSWYk8ylhKbgKvl13FHnfBDElXBCYHCkpUspaPm6N1w14bm8rTpRWZ5PG5nQusoOO3AOfEtf4C.8q+CfBW3BmsbcEhzyYN64yoaBBgPHx.YGOWkwhJUOmoM0oB.csacihW7Rjsd8+q8sONxQNLt4lazid1qr0qswx0u90YSabC.v2Ote.kJUlC2hxiPyOOSFGLgH+tV9EeVlp7ucDM.gPjonPgBrW16BEuPTQFIqe8py20cq6cWqev0su8s4vG5fnzTSoicrSY55dGa+2H3fCF2byMIfgFfst0sPzpTQMpYsnrksr4zMGgPXjjU1OK.6cu6g92u9p0qcmVbGCNfgG8nGge8W9EZXCeOiV.CSLwDY8qas.vG7gMB2byMsN9ie7i07YRG6Tmj.FJd61KFKOYtWHDhTL64oNfXCcP8MCJIXxaYcdjU+bUFSwDSrZZqMsYMOaOfgm8rmg0u90QkpTkxyFvvfu6c07Y3X+9wo0wtxkuLm9zmhBT.aoke4WlSz7DBgHGWaaUKxTkWBXnPHzg81YKllGaVY06d10b5lvaktzktHie7+HVXgE4J9AW42MmYOKBO7vYbi6Gj.FJxS4kKjaYFrlYYL5mcNydV.PwKdInm8pW3pqthGdTbiYyLSKgDRfwO9eD.7n3EWm.FJD4k8sicB.vjmvXygaIBgH+pic7Sp9+v.BX3V13pxhaM4cH+902tbzicTl5TlLt4laR.CEBgv.IALTHDZQgBEXedn8tvT7AuWCxoaBhWCyZ1ygXhIF7zyRlS2TDBgHeoDRHAtyctCf5YYeaaa6xz0QO5QO4S+zOCmxFSoWEsnEk0rV0yV7hULIXhhbGl3O9cFT476V2NKtkHDBgH+.6ryNMOuSYJSYxgaM4MUkpVUMeFJoiTgPHdyIALTHDZwd6sSdHKQ1FCMc3IDBg30SbwEKIlXh.f6t6wqUc3iOkBe7oTFylUFxZqsl5Uu5msdMEhLRoKk24LWXMqN62tRqfBgPjemolZp77NugbxImjOCEBgHc7yqR8jpn6cwvVY8R.CEBgFJTn.6sy1b5lg3Mv4N243l27FDQDQfCN3.t5pqT25VOrzRKS2yKojRB+82etzEu.gFVX3g6dPcqW8vAGbPukOnfBjniNZBIjPzb923FWG.rzRKM38dgae6aSBIDON6bgwImd4JW4V94GIlTh3t6ti0VayKp+avYO6YvJKshpVsppy0HxHijScpSxcBH.bsHEgpTkph6t6tNWynhJRBO7vwTSMCu7xK.HjPBgKeoKQfAEH93iOTwJVIsZOok3iOdN9wON26dAyCiHBr1ZanHEsHT+52.rwFaxvyO3fClKcoKRfAFH+e169Lfn3nM.N9eZhBHMEPEAkpEDKwdKQMFwXKZr2awZRrqI1MQMI1RrjXu2KIu10XMFQATTvBpnhHEU.oK5gHbbue37V47NZFPDX98kn2N6tysXVlcel44wFqslJ6fiTm5TG0Zyye9y4wO9Qu97kF.DYTQIc81N6rGiLxnr8bIHTfRUNIsHPJIsvx8YUcuNYxRV5ydT3gKcLb00pfN5nC26d2EEJTf81WIJUoJkxui94G2512hpV0pR8pW8IxHifDSLQL1XSxzTGpBEJ3gO7gbyadChLhHnB1ZKt3hqZLa4U0uRIkTj9rvyP+xImbF80Wed0qdEO7gAC.N3fiThRTBsddkI6Eb6aeat8stEFVxRhat4Ft5ZUxz1GWbwQzQ+TLxHik9cDIlXhb0qdEdPPAgc1aOUqZU68dMDRPPPPPH2XlSex431Fe7I..VXg1GyQAoBKiqRlrWP3gGNfxLefIlXhFsQ03kzQGcvUWqhVONpd9WKsrLXkUVgb4xInftOf5OWWZokFO3AAA.N6rKnmd5QZokFADP.3ue9QoMsz3rytf6tWCzSur9U6lbxIysu8s3l23ljthzwsp6F0q90Ka2OUTnPAgFZnDvMuIO9wOhxU9xiyN4LtUiZjs6afAFH28tARTQFI.XtEVPCaXC035cLwDCwFaLu96qyYZeKiWuJW4JOlYlYp87xpFeavAGLol5qH5m9T.kO2tpedarwlPYJSYHrvBE.rwlxko+6F.hM1XIlXhNK+4ZgShIgjfPwEm3jmAPDvPAAg2AlWHd0E9yK72.foNkwW.2SJXbkq3KybFyf6cu6pw1L0TSY3iXjLpQo85agmd5ISbBiiXiMV09bCMzPF9HFIst0sVi8YBSX73ue9I82SM0TocedaA.2culbfCdnbT+dHCdf7nG8H99ueppUj06cu6IwEWbroMuULwDiY3CaXDe7wo191t10dVwu+G7pW8Jl3DFOG+3GCEYHXD5om9zm9zGl8b9AzQm2LX38u+8y7m2bobkq7bly9O70idTbty8OZz2ZRSZJKa4qHSCb35W+5XcqcMDSLwnw1JQIJASXBSLSKb723FWmwLlukvCKLM1V0pV0XJS464i+jOA.71KuXjib3p0l0r5UwZV8p.fcricQiZbi054QPPHuSgs6ydvCbPl6b+A09rYNyoK8mu68BB80We5TG6.olZp7W+uCPEqXEYTiZD32Uu5q6CSj5Uu5yu9qKg+5O+SZQKZIaXiZVGjN249Gl7jlHwEWbZrsF1vFx2O0oQMqYs.f+2+6+wOM+4oVa9g4Lao+7487hXqs1RXgElz22+9DmTiU3XxImL+3OLG9y+bejd5oq11Lv.CXLicbLxQNJzUWcUaa6cu6gEsvEPyadyYCabSL9wONN1QOpZ+9CczQGFv.GDe+2O0LMviBBYkk+aKHO83onHvjsPPPHuUMqga431N7QON.Xe6Zy4S8lbuBaiqRlrjoCsucjd5oyTlx2wHF4nznMe629MRigxyK3EUnBUPssmTRIwm2VOPt7zX4K+2o8cnCjXhIJ0O14t1CMrgMD.hLxHk9b+7+57O+yYY5Sap7xW9Rrx3Li...H.jDQAQU0Nl0rl0heaoKiJW4JqQ+Qtb4rnEsP13FVuT1lPE6suRLu4O+r76L.d6sWLgwONd5qC7VFUmO5iXpScZT25VOM110t10Xdy6GU6ZdF0jlzTV4pVMktzJmv52Jf.XHCYP.v5V+FnUs5S05946kuL8suJSu9m7TmAyLyL7wauYDiXX.uY7sCYvCTJ.u.DUTQIc8rUs5SYYKeEzit2Md9yeNcqacmErvEkoWCl9zmJm5jmjFzfFvt18dyz1UnkXLFBBBuEQ.CEDD..c0U2Bk0tPU7y+qWP2EJvbq.BfAOnAgLYu.SLwDZVyZNVaiMDebwgmWvSRH93YwKZgTRCKICdHCQs8cCaX87K+7OQ5omNFZng3t60DmbxIBLv6vsu8sYEKeYROzSFYkUVgs1ZKuPlLRH93QGczQ5Ahr1Zqyy9tcAOOO6bm6.8zSO9jVzBrwZavO+tJAETPbricTb3Wcjab8qgmd5I0nFtS0pV0PVxx3R93CwDSLrsssUbvAGXfCZvZbrSIkTXHCdfboKcIL2BKnteTcwTSME+82eBIjGhWdcQ9hN0A13l1rFun5Uu5UwhVnxWFXoJUonl0rl3pqUg3hKN7zyyyyd1y3W9kelxU9xSG6XmTae+q+7OY5SepjZpoh95quzpgwe+8ifBJHtyctCCaXCkMs4sPSZRSojkpTXqs1Bn7AGkKWNlYlYRypUCMzv7rq2BB46Jj97nEFuOqwlXL1Zqsjd5oSDQDA.TlxTlLcF6+xjSl9z6dxCdvap8Z57VAaSa98UrbV5R+MTnPAkrjkD2culToJUI71au3wO9wboKcIFP+6G66O+KbwEWwDSLAas0VTnPgzr7Oi8K8yASbovCKLF5PGrTe0AGbfZW65PxImL96ueDUTQwRV7hvau7h0r10o0Ugsb4oy3G+33nG4H3ryNS0qtaj3yRjK34EPt7zXKadSXtYlwXF63x19iPwGeyXUthd98kk4uXQ.Je4rI+oCniX0.HHHjO58TfCJLNtpxV1xRcqa8vWeuLm2yyqQ.CSN4j4FW+MuSBe71a9xt1U0Zi2d4ExkmFknDkfVzxVliudcridTl8rmIlYlYznF0XrrLVxYO6YIg3imabiqyHFwv33G+DpMIojISFCaXCEe71a.ki0pt0qdTRCKI9eM+IrvBkg8UCE2culY54cCaX8rfe4mQtb4XngFRMpg63niNxktzkHrvBE+8yOFz.G.6Z26gZTC2k1u6e+6wPF7.kVskN4ryTmZWGzUWc4pW8JDTPAgWdcQFyX9F1zl1B.zrl2br1Zq4oO8obridzLMfgG+3GCPYfRUksfzFarobjd5oyye9yIwDSD8zSOJW4Jmz0BiLxH9hunyricrc96+937iycdZ84pe9yeN+64NG.zidzyL87IHHHTThHfgBBB.JWcgu8rvuXCoTkWAa23c0912dQlrWfM1XCG7PGAqrxJos8xW9RF4HFFd5omrt0uV0dfqPCMDVvu7Kjd5oS0qd0YyaYaTlxTFos+jm7DF5PFLW7hWPiy4pV0Z.fCbf8yDmv3oDknDbdOuXd92sMrg0SiZbiYkqb0XlYlAnL8rLruZHb9yed9ieeEnqt5xxV1JnCcriR6WrwFKcoychG+3GywN1wzZ.CiO933RW5Rzm91W9geXtp8u+O5QOBSdRSjm7jmvLmwLX264MyjvjRJIVxhU9hBG7PFBScpSSsTlRzQGMcqqcgG8nGw+b1ypV.CiN5nY1ydljZpohKt3JaYKaEad8Ct.PvAGL8sO8hm9zmxXGy2hOWxWZdyatz01F2nFvSe5SYbia7LfANHsdMK4jSFu81KhHhHn5Uq5TqZWas9+aGXfAhKt3Rg1UUrPgMEt+8KEFuOa26dOn6cuGHS1Kv8WuJDV7R9M93O9i0Z6W9JVFO3AOfFzfFvnF0Wiyt3Bku7kOKOG29V2RJXgMrQMh0t10qVJ5xe+8m902dSRIkDSZhSjCdnCSO6Yunm8rWjRJoP0qlxz5zBV3hnksrU43ua+vOLGdvCd.knDkfYLyYQe6a+j1VpolJKbA+Babia.u75hrl0rZF+3mfFGCu81KJQIJAKXgKht0stK84wDSL7UCcHbyadC1zl1HiZzeMFXfApsuu3Eu.u8xKd5SeJtUiZPMqYMUakrKc8412lpUspo0sIT3TTOM5B5tffffPgdEFGWE.d3QawWeuLW8JWAYxjo1DRxe+8izRKMLzPCIkTRAu71KMBXnmW37.PyZVyyQkuBUl4LmNcpSeAycdyWZ+RM0TYEKeY7G+wuSP2+9b1ydFZcq+Lo8YKaYyRAKbXCa378ScZpcLO1wNJSZhSfqbEe054L3fCVJXg0oN0g0ugMoVZ67125Vz6d2Sd9yeNiebikSc5yJsskrjEShIlHN4jSrssuSrwF0mDMyXFSicsych2d4EojRJXngFhd5oGewWzYV25VKm9zmhW8pWoQVdH8zSmSbh+F.5RW5RVdMaO6ce.v5V2Z4W94ehxW9xy+dd0+2E8p28gcrisyye9y4Lm4zzt10dMNNm5jmfW8pWgIlXBs8yamZaStb43iOdyCe3CwImbh5V25o0LSQHgDBVasUXjQ47elKHHHjWZbiQyUEeVov8auQPPHOgt5pKlJpcgEZEvsB..bwEWU6gs.k0igINoIiolZJIKSlZokikurkgb4ogwFaLaeG6RsG1BfJTgJvt18dzZ8Y38EKszRVyZVmTvBAkEF9LF.v9129oVvBAkyZvurqcCP4LbLyz5V+YL24NeMBnV6aeG3GmqxTlmu9dY7zSOk1lu9dYRO8zQO8zmILgIoQ8UvJqrBO7PY5N41291pssUtx+fjSNYLxHiX26dOpErP.bzQGY7SXh.JqyVWUKyN1rR.AbS7nMslg8UCkYMyYP251WRq+zVwt20NI0TSUpcQDQDzu91GF0HGAokVZ4pygfPwQEkuOqJWxGene8q+ricta93O4SnBUnBYaft90ecInPgBryN6XyadqZ78nN0oNLjgLT.k2eJxHi3+b+zKutH+y+n7kRMtwMd0BVHnLcjN8YLSZe66..rg0uNo5lSFoPgBF5P+J0BVHnbEDzqdqLUW8rm8LhLB06yW4J9xm05VwHFwvXlyb57kc4KnsssM7+9q+B4xey8SCIjPn28pGLtwMFMRYpBB4ZpV0OhfOKHH7ZSXJyfILkYjiZqc1UQryNsWChKHTXcbUswCO.TFrtKcIeTaaW5RWB.5W+TVen7wauzX+U8Lkdz11lqNuN3fCrnEuX0BxnAFX.CYHCUZRMcu68lm4MojRh0sVkAHscsq8ZDrPUe97+oeNSOmKco+JxkKGqrxJ1112oF03up6laLxWmxXCN3fkx5CJTn.e8UYPHG5WMLMBVH.8suJuFkZpoRP2+9Retp.rlTRIw4O++pw9c0qdEhN5nQe80mN1oNow1yspd0qtTJy+fG7.ZsMG9HGF.5PG5nTs9FT97zctychAz+9wrm0Loe8sOz7l0DV0pVIO+4OWpcxjIiQNhgSu5UOIgDR3+beVPPP3cQSabCooMtg431KBXnff.latYE5Wcgy+GmAy+GyYOvTQM0u9M.P4pkX+6++ow1c28Zh+W6F3+0tA1Ymc.JGHupz4wWz4NqV.4xHyM2b5Uu5c9TOO60kt7kZ8A9pnsu4AdadlrZYTkFOe657PFMrgO7LcactycQZ00bfLbc0sp6F6Yu6i+7u9Ksll6.HzWW.0y3KOFf8++9K.nSeQmwbKrPq6aW6Z2XwK4WYQKZIXgEYdwW+sEWbwwPF7f3wO9wnqt5hc1aux9Rngvzm9znEexGybm6Ox5V6Zn6c6KI93iiTSSYZQUP38mBmKk6hx2mUkRW5RyDmzjywiGHg3iWJvc8t28ISq0eibTilEsnkvhVzRH8z+u+y+Cd.kuPGqs1ZF7qCFo1L4o7c.JW00m3jmPqsYPCdHZ8y+zO8M09nHi5MAaLhHhfgOruhnhJJzSO8k9YcP2+9L4IOQZUKaA+z7mGqd0qhd1Ck0EGEoqnP+XrDx8FvPFICXHirftaHHHTDV3g+HBO7GkiZ6utv4wutv4k8M78jBqiqxVasUJ0ad9yed011kec.D+xt1Mryd6IhHhfvd8yDBPXgEJgGVXnmd5Qq+TMqwhYk90u9qwjTE.ysvB9nO5i.PsIGkWdcQRLwDAfALvAloG2N0oNoQcVDT97yG+XJuV2id1K0BTVFM3AODow3UhWG3R4xkyZVyZYO6ceRSdq2VFutjVFpsht5ZUjt9dridTM1u+9uUt5B+jOoEXgEVloeuxMTMIw92ycNMBnWBwGOWvSkqJwt08dH84xkmFe0PGL29V2B.ryd6QO8ziXhIFV7hVHMuYMgoOsoxF1v5oGcuqb+6eOR9sVQpBBBBeHS7VBEDJlSOc0ESKcA+Ja3+JWcw4B5tPAlN1wNwV2xl4ku7kLoINAV5u8qzxV1Jpe8a.0qd0SiUwF.QEUjjRJo..MtwMIKO9MoIMk0u90kuz2yN1WoJo0OuDF9lWLc4Km1SYdYWfvLzPC0ZAZOi6e8qeC3PG5f7vGFrzmaS4JmZWSUUGtdPPAwcuafb5SeZslZWhKt3HojRB.ZZSaZldd0SO8nKc4Kyx9t172G+3DarwRsqcs4W+skRkpTk4oO8orwMtA1w12FQFYDr4MsQo1WoJUYVxR9sb84QPn3nhx2mUk111OGSMMmWKiCIz27xdZZyZVl1NiM1XMRIW+W7vG9P.nF0v8LMHk.Xmc1gM1XCQEUTR6SFYlYlowJSPkLVCad0qdkze9vG5fjXhIRCaTiXQKZIXqs1RDQDAqacqkcuqcxidziXCaX8Rs2UWqBya9+Tt96nvGt17FVYNpcImblOYkDDDDJtqv73pZ6m+4DP.2DOyvJfKkTRgqcsqgEVXIUoJUglz3lvdBKL7xKuvd6U97rpBvX8aPCxzINZlwQmx720gpwrjwwqDZHg.nbUHVu5U+Lce0SO8oAMngbfCre097vCOLoriPSaZlOFuRVxRpwX7zWe803b9rm8LdPPAw8t+8ve+7KSWMe.z0t1UBHfaxoO8ojRWofxm49uO9wAft7k49mUNyzwN1Il+7lKu3EufieriQu6Sej11eeh+F4xSCmcwEpScpizm66k8k.CLPr0Va4OV4pvc2qIIkTRrqctCV25VKwEWbr6cuKo1alYlwJW0pyxwsVPPpx77dp1kJHHT3gHfgBBEyUTX0EVbW0qd04PG9n7cSYR3u+9yidziXaaaqrsssU.vYWbgdzidRe5SeklcfgFZXR6elEvMUTsR89f06X54p7kO6S2dplQqglgWLNnbVEdjibDN3AO.96me7rm8LosorfpWdMR8dY7XTNs7Pv+W069zGhLxHnKeYWoRUpx.JWANe+2OUF4HFI6bW6jKeIeHt3im5W+FvXFyXyzYlqfff5JNbe1JVwbWpJKiyNbarIu+dZYFUSfCGbvgrssU1AGHpnhhPxvj9PEyLKmuBtU4qF1vIt3hiANnAKsBzKe4KOyZVylu9q+F1w12F95qujTRIQiZbi4a+1wjqpQQBe3y3BpUGfTJIsf4zKHHHjWpv73p7vi1xhWzB4gO7g7nG8HpXEqHW6ZWiW8pWQqZUCQGczgF03Fyd1ytwGu8VZ0N5ommWZ+ysL27b2yrEZXJuVYiM1jsOuq1tVo9yspYJEMm31291rsstE7wGeTaLifxwb9nGo8UGaG6TmX9yed7hW7BN++9u7YsoM.v0t10HxHi.SM0T0xDD+WYjQFwWz4NyN2wN3fG7.pEvvibXkoiztmgUWH.MpwMl4+S+LUrhUD2cul.JyTGCeDijALvAw912d4Bd5IO9wOhp6laL1wN9OHFquffPwWyYt+hx+6L+9bT6EALTPnXL8zSOJcoE0tvhBbxIm3O+q8S3gEF+y+bV71Gu4pW4JDarwRP2+97Syed7W+4ext2ydwTSMkRUpRJsuJxlTDXFSSHEkjZpuJaaipYwpN57lfpKS1KnO8t2byadC.k0cv109NPkqbkwImbhZTC2Ye6au7qKYwpcrRKs2TCA0UW8xK9JnFczQGlvDmjV2l4VXAidzeMidzecd94UPHG4MSg0B19w+AE0uOq1lM+YkzR8MobY8zKu+dZYFU0pmTyA0eUU8Q802f7jyst5pqVqCPfxZm6XF63xSNOBE9897+mPPPn3o0txklia6MBPYpSrl0vs7qtStVg0wU4niNhyt3BAc+6yE777zqd2GozQZiZbiU9eajx+qO93MfxIapOd6M5niNzlWG.r7SptVkSV4XZ6ZUFqw8uKO25JW4evRV7h.Tt557vi1hqUoJT4JWYpRUpJlYlYz7lo8UIpEVXIsrUshScxSxQO5QjBX3I9akqtv109NjmuR85UO6M6bG6fqbEe4wO9wXqs1RzQGMW5R9f95quVy9OYVZusjkrjz+9O.5e+GPdZeTPPP3+hac6.yUsWrrhDDJFyByMCc0snwTU9qG6j4qG6jKn6FE3ryd6Y.CbPrpUsFtruWkcs68xmzhV..28tAxxVlxGrT0JPCzb0y81d7iyY0FiBahLxH0nFC91hHBkqRvJW42jZT+oeZ9byadCLxHiYsqa8bpSeVl+7+IF1vFNspUeJVas0Z8XU4J+lUCS1cMM3fCl6bm6PTQEUN8qiffv6IEUuOat8kuTYGprzeN65+28tAxctycH93i6cnmoNGbzQ.3gA+frssAGrxUVniudeDD9uJ0zRKGEr5cu8Mvt29FxCOyEdmrEBBB4OrvByyw0674N+Ewbm+hxm6QuaJLNtJUqRPUoYzKcoKA.MpQMBPYVdwImbhniNZBJnfve+8mm+7mSMqYMobYypiLufpqUQDQDjZpolksUaWqx3ys9jG+3rb+u+8uG24N2gXiMV.3pW8JRAKr28oOboKeEV4pVMiabimN24tP0pV0x1U8XW+xtA.m4LmgW9Rko36+90ALrKcoKY499tvsZTCb28ZhBEJ3PG5f.vwO1QI8zSmV1pVkoovdAAAghpDALTPnXJ80SOJcQfZWnJO8oQySeZzEzci26jISFqd0qhUu5UIEbqLpAMnArl0rNoTmlu9dY.kyzuxV1xB.m5jmLKOGm3D+cdbu9CCxkKmyb5yjoa+ku7kbgK3I.TYGdyKa1GuUNSQaSaZSllNTxXQmWEqrxJoTSmmu9gK0lvCObZqGeFcn8eN+6+dtr86gfPgIEFqQFh6ypcY7kIc9r3dZWxGencedaoCs+y4tAd2+ymWmbzI.35W+5jXhIlos6VADfT.JczIm9OedED.nO8+qnO8+qJ.6AEMlneBBBEeUTXbUs80ALzKutHImbx3u+9QYJSYvEWbUpMYbUF5omJelx2kzQ56BmcVYMOL8zSmyblSmosK4jSVqOWZkpTkjBp24yPsZ7scyadCZqGsgNz9OmqcM+A.e7Q4pszPCMjYLiYIkYHxnH0xyJmQsrUsBKrvRjI6E7u+64Hf.tIgGd3Xm81mk0jw+K5UuUthAO3ATVeEOxQNB.zidzy7kymfffvGxDALTPnXJysvrrclcU7Qg2TkmQFYDaZiafEsvEvQN7gzZaLv.CvM2pA.Xg4uo.qOfALP.3jm7Dbq.BPq6aHgDBG9PZ+3lQpJJ5uMEJTfLYxPlLYjbxImsGm22V4J+C0JP7Yzt20tjdYz8rmu4AEd7qmkkpdH121Se5S43G+X.ZFbjNzgNB.G5PGT5371V+5VKxkKGczQGZQKZoVaS5oW36eqJT7Vg4eei39rZmkVZIMtwJSmT6X6aijRJIs1tUulUA.lXhITu5q8WxSl8cSa5a+5G5pqt7rm8LVwJVlVaiBEJX9yetR8y129NjiO9BBBBBBB4eJJLtpp6laXmc1QRIkDaaqagW9xWJEfPUZbSTNFIe71a770AcqMumBXXCaXijBd4e7G+tTY13ssksrYsN4qJUoJkzDic26dWjP7wq08eMqd0.JCNXSZRSAdyJRzbKrfRVxRp08aqaYyR+YsMYB0We8oicpS.vQO5Q3uOtpUWnloFzbprarlcpScBiLxXt+8uGm9zmB+76pXs0Vym7Iex6747CdRkLhB1tgffP9uEuf4xhWvbywsWDvPAghgzWe8ozlTzY0EVbmpWX6xV1R43G+XZLX3ScxSJUj0a3qSSJ.LnAODrvBKQgBEz291aN6YOCxecMLH8zSmKcoKQO5dWyz.pAf4lqLM3jZpoxEu3EHwDSDYxjIs8HiLRbuFUG2qQ0ooMoQY1go.yMu4Mne8sOD9qKL7fx5V3V25VjdYyMu4Mm5W+FHs8pTkpB.6e+6WiB39k7wG5e+6KwEmxU0RhIlnZODz3F+DvHiLhTRIE5YO5lTcPTkicrix912dAfN0ouPizapYlo758Uthu7zm9Td9yetzOyDDDx+HtOq1M0oNMzQGcHpnhhd2qdPngFhz1jKWNacqagy+uJeIYCZvCA80+MkOcCMzPJUoJE.3s2dQrwFKO+4OOaWEpUoJUkt28d..aZiajYOqYp10inhJJFxfGnT5AabieBXhXLOBumEabwSrwo8Wv56Bo++hBuy8BAAg7X8rOCld1mAmiZaiaTCnwMpAYeCeOonv3pTsZAW8pUNwnd6.F1nF0HzQGc3BWvSt4MuIt3hq3fCNnwwI+ft5pKieBS..t8stE8qe8gG8n2j5QkISFqZUqjEsvEjoGio7ceO5om9jPBIPO5Q2HnfBRZaJTnf8t28HsRN6ae6mzX5pRUpBfxLtyd1ytU6XFSLwvjm7DkR6m.jPBZ+2U10t1U.3eN6Y4vuNvxuKoiTU+7NlXhgqe8qyyd1yzZffMxHioSewW..S86+NTnPAc4K6J5om9ZzVAAAgBapj81Qkr2tbb6E24SPnXHKLun2pKbKaXUEzcgBLybVylqe8qSXgEJeyWOZrzRKoRUtxnmt5QngFBQGsxT0ZsqcsUq3aarwFypWyZ3qG8nHlXhgg8UCEiLxXbwEmI3fCljRJILv.CXTiZzrpUsRsdtcwEWQO8zG4xSiAz+9A.t6dM4.GL6mUmEzr1Zqol0rVb5SeJZQK9XrwFavZqsg.C7NR05gp6laL+e5WTa+5a+5Ge+2MEhLxHn0eZqnpUqZXf95SvAGLO6YOCqrxJlzjmBKdQKj3hKN7nMsl4N24SCaTivZqsle9mW.ScpeOQDQDz4unSTlxTFruRUhvCKLhIlX.TVusl67luF84pW8py8u+833G+XRqhwcricQiZbi0nsBBePQ524T3bJrJtOq14VMpAScZSmEtfeg6bm6PqZYKn7ku7XiM1PHgDBIjPB.PCaXCYLiYrZr+UsZUC+8yO1zF2HaZiaD.NumWDas01r779ce+TIlXhgyblSy1291XW6ZW3pqtPxI+RBMzPjBtxfGxPnW8p24weqEJNKmVuvF4WOd.Xe6Zy4i8FAAghyROWjcblvXGc9XOI2qnv3p7nssk0u90IsB8xXfMAvBKrDWcsJb26FnT6eexCOZKicriiku7kgeW8p7Iebyn7ku7XgkVxcC7tHWdZ3jSNQUqV03nuN8alQN4jSLm47CL249C7fG7.7nMsFarwFpPEp.gDRnRo88ZUqZwT9tuWsy6e7G+NwDSLLso987G+9JnBUvVd7ieDQDQDniN5vnG8WyQNxQHrvBkINwIPO6YuXJS46T67WiZ3Nt3hqb+6eOjISFeTcqK1aekx0WGpV0pF.7pW8J9xtnLffspUeJqa8ZVmg6cu6M6dW6TZx+pZBpIHHHTbiXEFJHTLi95qOlXhwEzci7bFYTovHiJUAc2n.QYJSYXm6Z2z+9O.LxHiIt3hC+8yOtxU7kniNZr1ZqYXCeDr0ssCJcoKsZ6a8pW84PG5Hz5O6yvTSMEYxdAW+5WmjRJIryd6YsqaCzt109L8baqs1xO+y+BN4jSRypvBKzUW8X4q324a91wfolZJQEUTbyadCRM0TwZqsl92+Ave9m+OMdw0cu68fYOme.qs1ZjKWN2Jf.3ZW6ZjVZowm0l1vQO1eyHG4nvQGUV2CevCd.xR9MyZ0NzwNxQN5QoYMq4TpRUJhM1Xwe+7iXhIFJYIKIiZTilCdnCKUuCyno7ceGst0eFlagEnqtheEtfv6Kh6yl4F5P+J9y+5+QcpScv.CLfHhHBt10tFIjPBXlYlwzl9LXqaaGnmd5ow9N+4+SznF2XLyrb2DYxLyLi0tt0yb9geDGczQTnHctyctCgDxCQO8zip6largMtIlwLlkVOuBBuqV6JWJqckKsftaHHHHTnVQgwUUm57QRYCFqs1ZbRK0KYUokT.7nMd7NetdWMlwNNV65VOtUiZf95qOQDQDb6acKzSOcoIMoor68rOpP4qPlt+8ou8k8efCQ8pW8wPCMjnhJJ72e+I93iCSLwDlzjmB6dO6Ss5TnMkqbrwMtYoLzyie7iwWeuLQFYj3jyNyl17VXhSZxRqfvDhOddT3gq0yup1.PW576V5HsF0vcl9LlI1Yu8XngFlsss5t4Ffx+c16qUDpfffvGZzQQVj2eB9gglYaRPPnPJqsprEICX3+EmoktgbYOGGV+QQOSJc1uCe.KkTRgG+3GSTQEI5qu9XkUVic1YWN5ElpPgBBIjPHlXhlpV0powCmUTwF23FX9yatTtxUdtnWdCnL04c2.Cj3SHdb1YWvFarIaONokVZDRHgvSeZTTgJXK1au8pEDuzSOctwMtA1XiMYZ8NL8zSmPCMThLxHnhUzNpPEpf3kamKDTu9X.nMWRLdkOz4Y2ZIIGdvTwEsYJocNVP2c9OQbe1Lmb4owCdvCH93hmJU4JgM1Tt2KYz.YxjwcCLPLrjkDWbwE0dwUB+2HtO66lt26AAj2sBCeVv2Ce58mgdkqh3vR2YdxwTPP38i7q6iNvgpbUCtkMn8UR26B4o7RNyGWEPe8w4se17riaVQLtp2ORIkT31291TpRURXo07L...B.IQTPTIb1YmUKMwmSHWtbdXvASLwDC1WoJQ4Ke4y1w3EYjQvidziv.CJAt5pqZDf1vCObR5YOipT0p7AQp+TgBEzpV1BBKrPYAKbQzst08B5tTtRt8dM+iG0gTSHNpzJ2OFXYYxO6ZBBB4gdWFWwWMxw..qe0KOG09B96HKHH7diAFnOFarQEzci7EpRgjE2eIgFZng3niNJs51xMzQGcvAGbnX4LoS0JRI2Pe80Gmc1Yb1Ym0510UWco10t1Y4wPWc0sX60bghYT8BEJblQRUi39rYN8zSeb00p7d+7ZjQFQc9nO5894UPHyjapQHBBBBuKxMAJ7X+8o.f101OK+p67NSLtp2OLzPCoN0oNuy6ud5oGN6hK3rKtji2mxUtxS4Jm1m3r.XmceX86Ju3Eu.gEVnXjQFS6ZW6Jn6N4+JhUlhDDDxbIl3yxUsWDvPAghQrvByKxU6BUoOCXX.hZEiffffffffP9iGFhxYxqCUNqqiRKdAyMu8DmKpUYBBBBusMskc.7gY.CED9PP5omNqbk+A.zid1SLxnhSYkKwXLDDDTmHfgBBESTBCL.iMpn4pKTPPPPnPBwK8VPPnProL0YCTPNA0JZNw+DDD9vfTEKRGQsRWn3gksrkhYlZF+64OGWxGevPCMjgLjgVP2sDDDDJPIBXnfPwDEkWcg+mIkp7DuHaAAAg7Ehe+ifffffffPdlmDQj.PEJe4Jf6IBBEdsu8tGhHhH.Tlha+gebtXqs1V.2qDDDDxas6crwbU6EALTPnXfRThRTjs1EphkVXdAcWPnPhl1zlx7l2OgQEw++IDDDDDDDJXb8aD..TqZVi7lCnXRsIHH7VF6D9dfb1JdtGcqy4y8FAgBm5a+5OAF3cvJqrh12tNHpI1BBBEIomt4tLGfHfgBBECTbHXZqYkKsftKHTHQUpRUoJUopEzcCAghUTs9BUHdo2BBBEhUiZT8bT6l2OuX.Qs0VPP3CCcuqh.FJHnMiZTitftKHHHH7AGQ.CEDJhyvRTBLxnRUP2MDDDDDDDDDDJTa1SeJEzcAAAAAAAAg7.hRyifPwEI87mC.k1DSxQsWDvPAgh3rvxh9qtPAAAAAAAAAghrT8x7D0CVAAgWyUWbtftKHHHHHHHTHvPF12.jyy9Ih.FJHTDlgFZHFUphGqtvfeXn.fiNToB3dhfffffFjdI2hYvpffPQeMsIMrftKHHHTD27+wYjia6Z2vV.fgOzAle0cDDDDDDDJhPDvPAghvJNT6BU46l1rAD0JFAAAAAAAAg7GddQuAfl2zFmksabe6nxSOuhoZgffv+Em5z+CfHfgBBBBBBBYOQ.CEDJhpjkrjTpRUxB5tgPQPQDQDr5UsR.Xbie7XgEVV.2i9vxoO0ovSOOOUnBUfQLx7lWX3V17lH3fCl5W+FPG5XGySNlBBEHD0HibDw8YyZh6yJTPY4+9Z.x9.FleQGQJIUPPnXrBSiORlrWvB9keA.FxPGJUpRU9854+jm3DbwKdApXEqHCa3iP5yO+4OOm4zmhxV1xx2Nlw9dsOIHHHHTvn7kylbU60MepeHHHT.yRKLqftKTngNhTkWtR7wEGae6aisu8sQRIkjZa6AO3ArkMuI1912VATuqfm+96Gae6aiidrilmcLO0oNEae6aiKcYexyNlBBuWIdI24Jh6yl0D2mUPPPPn3tK66U4x9d0B5tw6UElFezKeYJR80HiLp26me+76pr8suMN9wOlZe9Mu4MX6aeabvCdf268IgOrH8dvDSnSAgh7V9us.V9usfbb6EqvPAghfJUoJIkrjEuVcgt6taEzcAAT9.H+3O9CXngFR+5W+Kn6NBBBBE4HtOqfvG9N5wOI.z9OuM4MGPoWlmXxWHHHnzh90U.jyJIGSXrec9buofmX7QBBBBBB4MDALTPnHHKLu3SsKTkYMsIWP2EDDDDDxLRyf0B1tgfffv+Eeda+rbT617V2IPdX.CEDDD9OnwMp9EzcghcL0TSYKaU4pcrpUspEv8FAAAAAgbNQ.CEDJhwnRUJJYIMrftaHHHHHHHHHHTjxPFXeKn6BBBBBBEBnu95SyZVyKn6FBBBBBBbm.uG.Tsp5ZNp8h.FJHTDiEhZWnPF3u+9y8t2cIlXhAyM2bJW4JGMsoMKaSYsomd5DbvAyMuw0IxnhB6sydZZyZFlmIqd0vBKTRN4j4IO4IR6+cuaf.PIKYIywE4cU6SkqrCXngFhb4owsu8swe+7CysvBpacqG1ZqspsOQEUT36kuLO4IOlJTAao9MnAXiMYeA88IO4Ibq.BfPB4gT4J6.U2M2z3XmYRN4j4129VbyabSjmtbbq5tQ8pe8Qe8yY+Z0m9zmhe9cUhJxH44u3EXt4lSUpRU3i9n5ht5JJuvBBElHtOalSbeVAg7HpRIoh5Aqffvq0pV9wEzcgrTgkwGIS1KH7vCG.r01JhIlXhFsIxHifDSLQzQGcvUWqhVONO3AOfzRKUrzxxfUVYExkKmfB59.fc1YOFYjQ.PZokFO3AAA.N6rKnmd5QZokFADP.3ue9QoMsz3rytf6tWCzSurdLOYbrRoqH8WOVo5ks6W1Q00T.Je4q.lZpopscYxdA93iODYDQR7wGGktzkF6r2dZRSZJFZnlSd8vCKLjkrLr1ZqwBKrT5b3s2diIFaBsuCcfniNZhKtXozk1TpPEp..DczQyUu5U3IO4ITqZUKb28ZRIJQIjNtokVZbiabc7yO+vXiLFGczQZPCa3apMeZQ5omN95quDd3gwSe5SwPCMDqrxJZdyatTeKiRHgDHpnhTs+szye9ywuqdUt6cCjJXqsTkpTUb1YmycWjEDDDdOZV+vOAjyRi4fHfgBBEoXjQkRqCPq3fyeAu.fOtYMo.tm7ggqbEeYlyXFbu6cWM1lolZJCeDijQMpQq080SO8jINgwQrwFqZetgFZHCeDijV25Vqw9LgILd72O+j96olZpztOus.f6tWSNvAOT11mSO8zk1mibziSTQEIi4a+FdwKdgZsa.CbPL6YOGdwKdAiZjifKdwKn11KQIJAiXjihwMtwq0yysBH.F23FCAGbvZrsJWYG32V5Rol0rVZcekKWN+5RVLqacqE4xkq11ryN6Xty6mxxuiIjPBLmYOKN9wOFokVZZr8xUtxyZW65vsZTir73HHT3ipGbunSNIUbeVw8YEDxL8r6eYAcWPPPnHtQM7gjiaqpWT3ON6oke0cjTXa7QxjkLcn8sizSOclxT9NFwHGkFs4a+1uA+t5UU1GufWRAzRkjRJI9715AxkmFKe4+NsuCcfDSLQo9wN20dngMrg.PjQFozm6m+Wm+4eNKSeZSkW9xWp1wrl0rV7aKcYT4JWYM5OxkKmEsnExF2v50XrR1aekXdye9Y424rxt28tXlyX5jd5oiGdzVV5xVtZm2krjEyN2w1IojRRi80XiMl4Nu4yW7EcVsOepS86wau8hoNsoyfFzfYFSeZ7W+0eR5omNe7G+wz9NzA1xl2DqZUqjO+yaGKbQKlu4aFM+64NmZGGysvBNv9OH1Yu8bzibD9tuaxRA1TkpV0pxJW0p0ZfhOvA1OKco+FgGVXZrM8zSO5a+5OyZVyVs.N92G+XL8oOMb28Zx9OvAYFyX5r28raRO8zUa+6V25NydNyAiLx3L8Z6GbDSBIAAgLgHfgBBEgXgEE+pcgprh+Xs.h.FBJeQsCdPCBYxdAlXhIzrl0br1FaH93hCOufmjP7wyhWzBojFVRF7PT+AM2vFVO+xO+Sjd5oigFZHt6dMwImbh.C7Nb6aeaVwxWlzCKkQVYkUXqs1xKjIiDhOdzQGcjdPJqs15b82gCe3CwFV+5vDSLgV25OCyL2Lt7kuLgGVXr0srYpXEqHG8HGlqe8qyGU25hqt3JIjPB3s2dQhIlHqX4KCWbwEZe66fZG2cuqcxblyrI0TSkRThRPsqcswQmblfePPb8qecBIjGR26VWY1y9GnO8U8zNVxImLiX3CS5EmaokVRcqW8vnRYD96u+DVXgxvG1PoV0p1Z86zKe4K4q9pgH8.sVas07QeTcorksrDzCBBeu7kIxHif90u9v49WOwLyDqVXAgOTItOq39rBEOsy87W.Pe5YWyx10surS4smXEEclrEBBBu+oJUjkeqv33iJaYKK0st0Ce88xbdOOuFALL4jSlab8qK828wau4K6p5+N.u8xKjKOMJQIJAsnksLGe85XG8nL6YOSLyLynQMpwXYYrjyd1yRBwGO23FWmQLhgwwO9ITKyHHSlLF1vFJ93s2.PYJSYnt0qdTRCKI9eMkiUZXe0Pwc2qYNtenxl2zlXty8G.fd0qdyON24gd5omz1myblE6bG6..JcoKM0t10FGbvQdRDOgKdgKvKdwKXRSbBTwJVQpacqmVOGSdRSjCcnCJ8204sx5CIlXhLfAzOt90tFU2M2nltWSdRDOgK3ox+8yHFwvoW8t2L2e7GvRKsjO4SZAlagEDvMuIADvMIv.Cju4qGMG7PGQsqaG8HGgIMwIfBEJv.CL.2byMbysZvKdwK3hW7BDczQyV2xlorksr70e82nQ+VgBELyYNc18t1IUtxNfat4Fo7pT3eO24H0TSk+7O2GFahILqYM6b808Bb5HFigfff5DALTPnHBiM1HLLComAghu1291Kxj8BrwFa3fG5HXkUVIssW9xWxHGwvvSO8j0s90p1CpEZngvB9kegzSOcpd0qNadKaixTlxHs8m7jmvPGxf0Xkl.vpV0Z.TNq8l3DFOknDkfy64Eem+NrlUuJ7vi1xR90eiRUpRAn7g05Su6E23FWmeZ9yiRVxRxl17V4i+32jNddzidDcpismDSLQN9wNlZuH6vCOb9geXNjZpoRUpRUY4q32UK0g7fG7.Fy290DXfAxO9iygl27lic1auz12911pz28gLjgxzl9LTa1GdhS72LgwON702Kq0uSG3.6G+8yOLzPCYcqeCzzl1L019oO0oXDiXX7rm8Lt5UuBspUeZN950Mu4MHfaF.VYsUT+52.s9RvSJojHg3iWsuSBBu2UD4kdKtOq39rh6yV7z9OvgAx9.FluQrX.DDDxO8ebbZEVGejGdzV702KyUuxUPlLYRoOT.72e+HszRCCMzPRIkTvKu8Ri.F54ENO.zrl0bL13b9JLalyb5zoN8EL24Meo8K0TSkUr7kwe7G+NAc+6yYO6Yn0s9yj1msrkMKErvgMrgy2OU0W0nG6XGkIMwIvUthu4pqAqbk+AKYwKB.F0nFMSZxSQsse26FnTvBm1zmACdvCQs.xEbvASW+xNyyd1y3eO24zZ.CO6YOCWxGevVaskoLkumpU8pSkqbkTqMd40EwTSMkMuksp133N7gODiarig6d2.4Glyross8yYAKbQpkBY+we7GXKadSb6aeaBIjPvQGcTZayYNyBEJTfGdzV9sktL0xLWxjIi902dy0utxU7o1BX3stU.bm6bal0rlMCXfCRZ7oIjPB7Me8nwau8hcuqcx3F230HEt9xW9R71au3IO4ITspUMpUspsZAhMiWic1Ym+OmRYEDDDda0udeTtp8hB3gfPQDVXtXVx+N60C1qHx6wl.tU..fKt3pZOjFnrNNLwIMYL0TSIYYxjpWC.r7ksLjKOML1XiY66XWp8PZ.TgJTA10t2iVqqC40pTkpLKeE+tzKwFfRUpRo1pQYzi9qU6kXCPEqXE4yaW6APizfyhV3B3Uu5UTpRUJ1zl1rF0Y.mbxI13l1BFYjQjZpoxBVvuHssW7hWvpWypAf13gGL8YLSMpMBd3Qa4WVvByzuSW9RWB.9jVzBMdI1.z5O6yjpIX2412NSONYzqd0q3qG8nnyeQmXFyXZLhgOLZZSZD+vblsTc7PkYLioQW6ZW3N24N4nisfPdorpVhTXj39rh6yJtOqffffPAo+5.Gl+50ShgOTTXc7QswCO.TFrtKcIeTaaW50isne8q+.fOd6kF6umd5I.3Qaaat575fCNvhV7hUKHiFXfALjgLTLv.C.f6cu2r5PSJojXcqUY.RaW6ZuFAKT0mO+e5myU8ikr3EwRV7hPGczgYLiYoQvBg2bcvZqslgNzuRi5AsiN5HMtwJy1S2NSFi0k7wG9n5VWN1wOAcnicDmbxIsFbrYM64nw335PG5nzX3rzRK0HXgfx.npx8u+attEz8uOwEWb.vDmzj0nL9XjQFQW9RkAANyFenBEJnm8pWLvAMX0Fep4laN8q+J+2FojRJDZngn19c6acKZqGeFe0PGByZlyft2stRq+zVwN2wN3Uu5URsKpHij92u9xvG1vH0TSUq8AAAAg2USYhigoLwwjiauHfgBBEAXhwFqVwet3nOuseFeda+rrugECT+52..vau8h8u++mFa2c2qI9esaf+W6FXmc1Anb.vG+3GC.9hN24LMMsYt4lSu5Uuym54uQu6cuQe807gGpXEqnzet4u0KwVEas0V.kCXWkW8pWI88a.CbPXS4JmV2WarwFF3.GDfxUxhpig2d6EIDe7.v.Gvfxz9c6ZW6ktl919pgMb1yd2GSe5yTqaOwDSjDRHA.Hs2pVTjYl4LlN+8eeb.k0kKCMzPRN4jYqacKzxV7w7Me8nYCaX87UCcHbjCeXjISFljKl0qBBBZm39rh6yJtOqPVY0qayr50s47tCnzrZqn0juPPP3c2t2yewtecZRN67qKZ97qK5cut1kSUXc7Q1ZqsTiZ3N.b9yed011kec.D+xt1Mryd6IhHhfvBKTosGVXgR3gEF5omdz5OUyZrXVoe8q+ZMfYlagE7QejxUCRTQFozm6kWWjDSLQ.X.CbfY5wsScpSZTmEyLyad+Hqbk+A5om9rnEuDMRUrpzxVzR1yd2GadKaUqaWgBEDd3JqMfxkqYMjVku6699rLvulZpoz4N2EM9bczQGpvqG+4G8Q0UqGixUtxIsx8xXMgrrksrrm8tO1yd2GN4jSZ87FVnJ+Yp1p+0pLnAo8qMeZF94dTQFkzeNg3imgLjAQ3gGN5pqtRYfhvBKTl4LmNs3SZN+3O9Crt0tF5d26JwFarjZpoJErXAAAgBJh04rfPQ.lagX0ENjA12ruQESzwN1I15V1Lu7kujIMwIvR+sekV1xVQ8qeCnd0qdZ8k3FUTQJ8RaUMy.yLMoIMk0u90kuz2Uw9JUIs94YLv3kqbkWqsw.s7BvCKzPkJL40st0MKO20sdJSeJomd5DZngfqtVEB80O.gd5oGM30ErdsQ01y3LlUkpW8pq1e+Uu5U7vGFLAc+f3129V7+9e+kZu78rSBIj.G4HGFCLv.V1xWAsoMdPZokFG+3GieeEKmG7fGvwO9wjd.bc0UWVzhWhHU4ITvP0LwsHxR4VbeVw8YE2ms3ogMzL+EzlQm4rmC.F4vFT9WmQPPPHGxtJZ66kySg4wG01O+yIf.tIdd9+U5yRIkT3ZW6ZXgEVRUpRUnIMtIrmvBCu7xKr2dkiiRU.FqeCZ.lagE4pyoiN4bltMUqBtLtJzBMjP.TtJDqW8peltu5om9zfFzPNvA1el1lzSWASe5SicuqcJ8YUw0pjos2N6sWsw2HWtbdziBmfBJHBLv.4XG8HDXfAlo6OnbEUlU8a.pnc1koYlDUiQsbYxjRSGczAc0UWj+VSJLysvBMNuQEUTDbvOf6F3c4BWvS9m+4rYY+RO8zWizmpJFXfAniN5fBEJHkW8lwYdhSdBhN5nol0rV7q+1RwAGbfniNZ1zl1HaaqaknhJJ1xl2jT6syN63W+sklk8CAAAg2GDALTPnPNSLwXJgXFHIjAUu5UmCc3ix2MkIg+96OO5QOhssssx11lxYCnyt3B8nG8j9zm9JkJ5BMzvj1+xmIufXUTsxRJnkaRwgO7gOT5O6fCNlEsT8s+vG9Pb00pHMiCsxJq0H8q71r01JloaK1Xikst0sv4+2+kacqao1ruzbKr.iLxXjI6EY4wWp8laNaYqai.tY.3gGJS+MFXfAzoN8EzgNzQN4IOA+8wON2+92C6r2dF9vGAezGk0uDeAAgbFw8Y0j39rh6yVbPaZcKKn6BBBBBevpv73i7vi1xhWzB4gO7g7nG8HpXEqHW6ZWiW8pWQqZUCQGczgF03Fyd1ytwGu8VZ0N5ommWZ+ysLOWVVYBMLkWqrwFax1wnkcWqBMzPHzPCAyM2bTnPAIlXhL4IOQNvAObltB2RIkTXe6au72G+3b8qeMjISlz1JQIJAVYkUDczQmomyLlEK9u3csTG7O+yYYe6cubkq3KwFarpsMas0Vd7iebltulXhw45ZKXO6YuHhHhfNzgNhCN3..XkUVwTlx2wvG9HXW6Zmb4K4CwDarT+52.FyXFKlat449uXuqjlPmu+NkBBBELN0YNG.7YeZKxQsWDvPAgB4D0tPAswImbh+7u1OgGVX7O+yYwae7lqdkqPrwFKAc+6yOM+4we8m+I6dO6ESM0TJUoJoz9pHaFwXNMMt8gD8M3M+5tzRKqqI.okgZFfpz0mpGnM6t1.f7LIMlb0qdEF3.5OImbxnu95S8pe8nltWSpTkpLN4ryTqZUK57WzIMpIXYk5Uu5q0Yoot5pKssseNsssedN9XIHHj6HtOq5D2mUPH+ihWu5rKpUOXEDDd2Mf9m+m9xeWTXc7QN5ni3rKtPP2+9bAOOO8p28QJcj1nF2Xk+2Fo7+5iOdCnL0a5i2diN5nCsoMsIequohpqUJxAYribx0JarwFkSLp.BfIMwIPfAFHqXEKmILgIpQae5SeJ8n6ckvCObzQGcnZUqZT25VOpbkc.GcxIpYMqIKbA+B6YO6NKNeZekAleStb4LpQNBNyYNMfxZh4W10thiN5DN5ni3la0.+82OF2Xy402qbpwMtwq0O2byMmQMpQynF0nyyOmBBBBus0t9MCHBXnfPwBktzlHxu4u1N28eB.8oWcq.tm7gE6r2dFv.GDC300KpKe4KypW8J4eO243t2MPV1xVJyblyhJUoJKsOgFZnY4Jj3wO9Q4y857dN53aVMKAGbv3ZVjtUBN3fyv9orFGn55ySiJJRIkTznPomQZalIlVZowHF9vI4jSlZTC2Y0qYsT9xm0yfVAghVJ5NCVE2mUIw8YEDdiIN9uoftKHHHTDWGamG431Njgq7dRabs+d9U2QCEFGejGdzVB592myedkAL7RW5R.PiZTi..qs1ZbxIm3AO3ADTPAQBIDOO+4OmZUqZkoow87RptVEQDQjs05tr6ZkYlYF6ce+EUrhUDWbwUNxgOLm6b+CqdUqBOZiG3VMpgZs+6lxjH7vCGqrxJV0pVC0400XwbiRXXIx9FkOXCqecblybZzSO83G+w4Ru5ceznM96ueE.8LAAAgOLk046GAAgOnIVcguw9O3QX+G7HEzciBbxjIiUu5UwpW8pHhHhPis2fFz.VyZVmzKQ0WeuLfxGXnrksr.voN4IyxywINwemG2qy+UwJZmTMOvy2pP1+1NumJqaEFXfAXu81A.N4rx5KgBEJ3zm5TY599xW9RN2+dNM976c26R7wGG.LtwOds9RrUnPAOM5ml8eYDDDJPItOq1ItOqPwAK5WWNK5WWd11tF0f5QiZP8xCOyEAmsEBBBu2jTROmjR544qmihBiOpsuNsh5kWWjjSNY72e+nLkoL3hKtJ0lLtJC8zSOAd2RGouKb90iUJ8zSWZ0xoMImbxY6XwrzRKUKEgN+e5mvDSLA4xSiIO4IQpYHaPHWtb70WeAfdzydkoAKLxnhLG+c48Iue8JBsV0t1ZMXg.DYjeX12EDDDJHHBXnfPgTlV5RKkFuDDTwHiLhMswMvhV3B3HG9PZsMFXfA3laJmwfVX9aJL6CX.CD.N4IOA2Jf.z59FRHgvgOj1OtYT5omtV+bEJTfLYxPlLYjbxImsGm7J5omdzm91O.Xe6aub26p8Bx98u+8Xu6YO.Pu6SekpSA0u90mpV0pB.qbk+Nu7kuTq6+111VIg3iWiOOiqFlxW9Jn088PG5fR6aNIMyHHT3Tg++ss39rZm39rBEGbYe8iK6aA3pPPjRREDD9.UQgwGUc2bC6ryNRJojXaacK7xW9Ro.DpRiaRS..e71a777Jm.Ts48T.CaXCajTvK+i+32IkTRQqsaKaYyjXhIlqN1kqbkmoNsoC.28tAxJV9xj1VrwFqz0rJjIYug6cu6hOdqLvbenMFqG+Hkq1xLKySjbxIy91qxwl9AVWWPPPHOQW9hNPW9hNjiauHfgBBEBoiNf4laZAc2nHDUoJuhFiNrwMV4CwrrksTN9wOlFOzzoN4IkJN6M70oWE.FzfGBVXgknPgB5ae6Mm8rmA4ut1Gjd5oyktzknGcuq7pW8pL8bqpHcmZpoxEu3EHwDSTshgdjQFItWipi60n5zzlznL6vju3a+1wfYlYFxkKm91m9voO8ojdXFEJTvYNyooO8tWHWtbL0TSYriYrR6qN5nCi+00xg.CLP5ae5Eg+5hNOnbF0t10rZVvu7yZ8bWkp9lTy2pW0JU6g6RM0TY8qecL8oMUoOSauLbAgB0Jh8RtE2mU6D2mUPPPPP38ik86qgk86qoftanlhBiOR0pEb0qdU.nQ.CaTiZD5niNbgK3I27l2DWbwUbvAGx5KL4QzUWcY7SXB.vsu0sne8qO7nG8lTOpLYxXUqZkrnEtf2oieO6Yuj9Y3pW8pIf.tIfxTwpEVXI.r8suMhM1Xk1GEJTvIOwIXvCZPRi8J93S3c57meopUsZ.v+dtyw0u90Uaa24N2gANf9yCdvC.TVWJe9yyeWMte3P4ym8gV.dEDDx60md0sbUI7Rr7jDDJDpzhUWnFF9WMnB5tvGLl4rlMW+5WmvBKT9ludzXokVRkpbkQOc0iPCMDhN5nAfZW6ZS+6+.j1OiM1XV8ZVCe8nGEwDSLLruZnXjQFiKt3LAGbvjTRIgAFX.iZTilUspUp0ysKt3J5om9HWdZLf9qbkl3t60jCbvyXDG+...f.PRDEDUre1fleybyMm+XkqhwOtwRzQGMiX3CCyLyLbzQGI3fCVZVXV1xVV9sktLL2BKTa+acq+LlvDmDK829Ut10tFsnEeLkqbkmxT1xPf2IPjKOMbvAGnF0vcN7aMqZs29JQyadywSO8jCe3Cw4O++hyN6BI9rDIzPBgTSMUZVyZNVZokbnCcP14N2A24N2g8r288d65iffPNm39rZm39rBBJMy4Le.XtyY54MGPwKySPP3sbgKpb0bM1uYDYaa22t1b9buQohBiOxi11VV+5WmzXVxXfMAvBKrDWcsJRYRAOZ66mUWnT+yi1xXG63X4KeY32+m8tuCKJtZaCfeuzQjlE.UDvNHnhfMPiI1h8drWiciMLpwdKZrWQMZrf8X2XuGSLwXufMDrCBJhMP5046O708SbmYYVXwEVu+ccw066LyyYNO6tlocly4b0qhutt0AEqXEC1VnBgPBNDjd5ogxTlx.WcyMb3CoYSYKJTn.ydNyEMqoMFIjPBXLidz3.G7PvXiMFcq6cGKeY9i6d26h5Taefat4FRO8LvidzCQBIj.JUoJkxeet8suEZdyZBV9JV4msFSUc5bW5BN1wNJhKt3P6ZaqQ4KeEPAsrf3IO9w3Mu4MvBKr.SdxSEybl+LDDDPKZdSwH+wQgV251nqSchHRmf8vPhxmQgBEvFN2EphF0fuAMpAeitNMxSnvEtv32211QO5QOQAJfE3Mu4M35W6Z3JW4x3ku7kvN6rC8e.CDaZyaEVZokYprUqZUGG3.GBMrQMBVYkUHgDhG23F2.wFarnjN4DV8ZVGZVyZtj0cIJQIvrm8bPYJSYf4ladt8GUMlO93KNxQONZQKaIr01BgXhIFb8qecDSLw.ar0Vz7l2Bb3ibL3qu0VzxOjgLTrl0tN3gGUBFYjQHxHeNtysuMLzPCPs7wGrictaThRTBQKq+KaEncsu8vHiLBwDSL3pW8J3A2+9vVasEiZziAqeCaD8nm8DlZpoH8zSGAETP4leUPzmUJTne8FrxiyJMdbVRe1zm53wzm53yx3BNj6ifC49eFxHhHJuC8gqOppU0KXmc1Af22y5JSYJiJw7ggkT.fF+sMNaWWYWCeD9gUul0B28vCXjQFgm+7miftycfgFZ.702ZisuicghKwvydVojkrjXzidL.38CynKcIKF..942HwPG1vgUVYERIkTvMtwMvsu8sfQFYD5PG5HNvAODFzf+Ak8DwfCNXjVZoJY874ju9Varjk5Ob1YW.v6+bcsqdUDWbwgZVqZgCdnCid+8eO9pu5q..vSe5SQLQm2pWRRDQeNoPPMO4lG83P+blKDQxf0VaEJbgrMqCjjsS2vpfzhMZ3xuc.Xj01nqSGspjSNYDQDQfW7hHgQFYDJZQsCkrjkDFZngYYYEDDvSdxSvqd0Kgqt5lJ2Tm9fHi743IO9IvYWbQx4z.ojbxIi6d26BSM0TTtxUNY2qee26dGBKrPQ7wEOJW4KOJTgJTl1dbwEGBIjfgqt5FrvBKznb5KMOny0E..e6E40qjW245QKPb26Vn3+7JQAJu655zQqhGmU83wYyeiGmM6oCco2.P60qdh9NAhK0mVCicprv44EfVYeRD84Qt0wQ01GmA.HsDS.m9abCvXSPY27oxQ6Kd8QedjbxIifBJHXt4lixV1xlqORTkTRIgPC8I30u90vYmcQkWhqzRKMbiaDHb1YWPQJRQxUyEMUFYjABKrvvye9yPQJRQPoKcoUNWZ+AAcm6.KJnEJabw7Szzi072MulHkWEIbZY6DlTTGxMSMhHsnry0UDvF2J..5Su5lrhmiogDkOhBEJfMVy4tPR9L0TSQoKcoQoKco03xpPgBTpRUp7DCiH4VbvghAGbPyd.1efolZJ7zSO03xYkUVAO7nRRt8BVvBBu8tZYqbhH5yOdbV0iGmknbt++2wW8q4CVhnruINtQI6Xi4cuC..Va0mumk.u9nOOL0TSQUqZU+rUelYlYnBUvUI2tQFYTd1qwx.CL.t3hKvEWbQxXpn65WuXiDQD.vQO1IA.avPhzKYsUVJq2HuuDMuE5O..9oQMbcblPDQjJ9eCIobd3hH5KAKYAyRWmBDQ547rJR+hw7o52.e+8H+4ZtLjHJe.E7kPhHRbrACIJeBEJT.qYuKTRW9JWSWmBDQDQDQ5wFwONN..rzEMG0FWIJQ1atiRJ7csfHhHhxUvKxfH5SvFLjn7Ir1ZqXuKjHhn70D.ugThn7ud1yiT2l.r2.PDkahMb.QDQjdmgMjAnQwyFLjn7ALv.C3bWXtIkO6EdCRDQTtB9LtIhHhHRqYLieJ..X9y9myxXKQwydykvDQDQT9e0sN9pQwyFLjn7Ar1ZqfAFXftNMxS6mm5Dz0o.QDQDQDguueCA..qesqP6rCEx38+urGFRD8+7jmDlricIKb14hYBQDQDoOgMXHQ4wYfAF.qsxRccZjmmatVdccJPDQjDT7gGxM6H2DQ4iEvpWtrhKt3iOWNSHhHhHhHhz9XCFRTdb1vdWXttO7frExHCcblPDIWJ+uWYmsHeAEJ9emGiGmkn7M3wYUkkVVPcR8pv.dLThxOJe2wQ4ycfn7kxNGq4CWaAeNXDk+Q185J94YMe..LkILFYEOavPhxCy.CL.VwdWXtNirovH0XdKR60QAissv55zgHRFR8Uu...FacgzwYBIGe3Xqo85WpiyDhH4J0WGE..L1Ja0wYBYRgd+wPSO5WoiyDhHMQJuHB..XrMEQquuW4xWnri8NAEL..buhtp13LxLygAlYFxHojP5wFCLzRqyQ4HQzmGo9xmC..isQ9OOKisovH4WDAR6UQAScnD4VoFQjVT184fcqacGMJd95CQTdX1Zi0r2EJSCejiECejiMaUVqqj2..3cm8TZyThHJWTL+8w..fUdTMcblPxg0U98GmMtywiyRT9Ee35hrzcuzwYRdGYjQFHCY7l3uqssArqssAsV8VfhURXrsEAY7t2h3uy00Z6WhnbWQe78A..aqZsz566hT3BihTX403.SaFyASaFyQVwZUEqJ..h4e40rQT9Ew7mGF..1T4ZH6xXSkd+02E6+w+achxuHlybb..XkGdmqVOrkHHJOJCMzPXokr2EJWOOxWfmG4KxVk0o12M..D2I+CDafWValVDQ4Bh+VWEu6faE..N24uWGmMjb3XyaOLvTyPhW+b3sm5f55zgHJKj38CBwruMA..m9tdpiyl7N5T25C5T25ym85UgBEn3stq..HpeatH0295O64.QjlI5+9XHtSrG.E.tziAnqSGYyw1+9i4G8tWKR7I2WGmMDQYkXu7+g2c3sC..m6Zekc4brscAv.EH9+4vH1K+e4VoGQjVR72453cGXK..voN16b05xvoMsoMMo13aiNlb0JmHRZEpP1.yMyLccZjuwt1y6e6M6320FMtrlUTGPJwEGh4VWAIb9SgTd6afgVaKLzhBBEFwQtYhxKHijRBI836gWu2Mg2tkkAgzRCEuscGtzodqqSMRFLxhBBCszV75ycZj30NGR5ogBCr1FXXAsBFXrw55ziHB.BolBR5oOFu4f6.uNfEBgTRA1+ssEkoWCRWmZ4YjStdybJa7vSD0+dZjb3OFw9OGGBFXHLzZafAlWf++43PhHcFAAAjQbuCwem.wq1zxw6NzuCHHfROfQih23VoSyMM4XWVV5xgXtWvH9GbWD2YNFROoje+8FW.KfBCML2NUIhjgzSHdj38tCd0NVGhdmqFHiLPI6x.fSsoyxdeXZgJBRK0zQzW+BHgK9WHkWF0+64fYIeNXDkGQFImDR5I2Gu4O1Jdyl7GBokFJVK6BJUW0rWfwp4cUQiZP8fs1ZirhWgffffTa7QONTMpxIhzNLzPCgSkrDPgh7KyN55dcnK8F.HaO7OIHHfPV1bQXackZujhHJ2gB.m55fPEF5X4CIMelmryMg66+OCgTSUWmJDQYgh0ptB2+oelMp+GQtWuYz+uW7VarQ6N+ek7adEBb7+.hIvKpU2uDQZeFXhonrCexvkNzibk8eW5Q+..v117ZyxXWvhWN..F8HGpr12omRx31yb73EGeOY+DjH5yBEFZ.boOiDkqeCOaU96u5kfGu9k.jgjMO.QTdDN1o9B2FwDy0eAdXCFRTdPEovEBVYEGNR0DwFWb..vxBVvbz94cOLDD5N1Hd6kOKR4UQhLRIYsQ5QDkCYfolASKZwfsUu1voN1KXUoKutNknroDhLBD51WOd84+ajTjgiLRJQccJQDA.EFaBLov1AaqpOvoNzcXi6dpqSo7b56.GF..V2usL0FWN8EYScDDDvKNyIQDGbWH1ftNRI5WCHi4UQhnbeFZgkv7RVJTTeqOb565NLsvEMWqtxMONyG7l.uBd5d1BhNvKgTdSTPHM9BeQTdAFZdAfoN3HJbMqKbpS8BVTbmxQ6u3dxCwS195wau7YQxu74HijSRKkoDQ4DFXhovjh3.rsZ0FN2wdBqJmaeVpW1fgDkGiQFYDJoiEm8tPhHhHhHJenOGOHehnurwiyPDQDQ4F3fRLQ4wXqMVyFKjHhHhHhHhHRTlYpo55TfHhHhxGXf+fe..3290kHq3YCFRTdHFYjQnfEzBccZjuT5+ughIC47YFQDQDQjNTIcr355TfHRO2l2vuI6XO9IOM..ZbipetU5PDQDQ4Q8l2FsFEOavPhxCwVaYuKL6pycqO.fCIKDQDQDQ4NB6ogC..mJoipMtEM+Y84HcHhHYYsArI.vFLjHhHhxZrACIJOBiM1HTPKXuKjHhHhHhxKZT+zj..eA0HhHhHhHR+DavPhxivVarg8tPhHhHhHhHhH05EuHJ..Xu81oiyDhHhHJureeSqQihmMXHQ4AXhwFCKrn.55zHeMqs1JccJPDQDQDQ3124t..vC2cSGmIDQ5qFpe+D.jWOdt8ssU4xYCQDQDkWkwFarFEOavPhxCvVaYuKLmZsqxeccJPDQDQDoGqht4prha5ybt.fCcoDQ4Mz4N1NccJPDQDQ4SvFLjHcLSLwXTfBXttNMHhHhHhHRMl9TFmtNEHhHhHhHhjsDRHQ..Y29CrACIRGi8tPhHhHhHhHhH4prkoT55TfHhHhxGnW8cv.P9i9IrACIRGxTSLAVT.N2EpMDZXOE..N6TI0wYBQDQDQzWxpUMqttNEHhzyM6YNUYG6ZW+lA.P+99djakNDQDQjdB1fgDoCYqs1nqSA8FidrSF.bthgHhHhHJ2w+c9KA.fZ6SMTabixug74HcHhHY43m3OA.avPhHhHJqwFLjHcDN2ERDQDQDQ4erD++U.j0MXHQDQDQDQTdA1YWQ0n3UaCFV5R4bNJYHhHhHhHhHhHhHsmqbs.A.P07xScblPDQDQ4kshkNeMJd1CCIhzK3dEcUWmBDQDQDQDN5wOE..ZZianNNSHhzWM24uD.HuojiQLrAkKmMDQDQj9B1fgDQ5El1jGmtNEHhHhHhzi8sMp9xJt.1vV..avPhn7Fpiu0RWmBDQDQT9DrACIhHhHhHhHJKz+9zSccJPDQDQDQDIa269O...kubkUVwyFLjHhHhHhHhHhHJehutt0QWmBDQDQT9.SbJyD.xaXLGfMXHQjdh+67WD..01mZpiyDhHhHhnuj8csu055TfHRO2PGb+jcrSelyE..ScRiM2JcHhHhH8DrACIhzKrD+WI.XCFRDQDQDk6XG69O..Pm9t1p13xpsSDQeNc66bWccJPDQDQ4SvFLjHhHhHhHhnrvt2y9A.aPPhHhHhHhxevqpVEMJd1fgDQDQDQDQDQDQ4SruCbX..zlV0bcblPDQDQ4kM9eZjZT7rACIhzKz3usA55TfHhHhHhvZBXS..n+8om53LgHRe0V21t.f7Zvv4OmYjamNDQDQjdB1fgDQ5E5222CccJPDQDQDoGqO8t6xJtSbxSC.1fgDQ4M3hykTWmBDQDQT9DrACIhHhHhHhHJKzzF2PccJPDQDQDQDIa+4e8O..nA0qtxJd1fgDQDQDQDQDQDQ4Sz8t1QccJPDQDQ4CrpUG..XCFRD8Elsuq+...ctCsUGmIDQDQDQeIyug+C55TfHROWqaYyjcr8ePi...qYUKM2JcHhHhH8DrACIhzKrm8te.vFLjHhHhHJ2wBWxJ..vn7aHpMtZ6SM9bjNDQjrDcLwnqSAhHhHJeB1fgDQDQDQDQDkEtvEurtNEHhHhHhHhjsVoAiJA.rACIhHhHsnPBID7fG7.DZnghPCMT7l27FThRTB3ryNCmc1Y3t6tC6s2dsV8c0qdUb6aea7rm8L7rm8LHHHfxUtxgxW9xixW9xCWbwEXngFp0puujEbvAiG9vGhm7jmfPCMT7129V3niNp721JVwJpU+skHhHJuhjSNYblybF73G+X7rm8L77m+bXqs1p75MJe4KOOG3mAQDQD3t28tJuNym+7mihTjhn7ZQJW4JGJaYKqtNM+rX4qbM..XnCt+53LgnOuRHgDve8W+EBKrvvyd1yPjQFIr0VagKt3BJUoJEbwEWPoKcogolZptNU0HwGe73l27lJO9VngFJL1XigyN6LbxImfyN6LpZUqJLxnb1ixOnfBBO5QORYcDczQCGczQk0g6t6NryN6zRepxc8t28tL8cVXgEFL2byUdNAWbwETkpTEXfAFnqSUhzo5gFNuGyFLjHRuPe+9dnqSAh9hUJojB1wN1A72e+wUtxUTarFarwnacqaXricrvUWcMaUeO7gODqacqC6XG6.O5QORswZhIlfFzfFfEtvEB2byMMpdl1zlFl8rmsJqussssX6ae6Zz95ikVZogBW3BijRJIU114N24f2d6clV25W+5wfFzfxx8qBEJf81aOJSYJSl96a+1uEVas0YqbM4jSFae6aG96u+3ZW6ZpMViM1XzidzCL1wNVT9xW9rU8QDQ5Cl5OOG..L8oLNcblj+vF23Fw.Fv.TY8d5om3hW7h4n8cEqXEwCe3CUY8aaaaCsqcsKKK+oO8owl1zlv9129PLYwv5nUVYE5W+5Gl5TmJrxJqjcNFSLw.6s2dHHHnx1BKrvjcCQdnCcHz912dUVeEpPEvMu4MUY8MpQMB+y+7Opr9ErfEfgMrgko0c+6ee3gGdHq7vZqsNSWGRYKaYQcpScPoJUojU4EyoN0of+96ON7gOLxHiLTarMrgMDSXBS.0qd0KaWe4Gbl+4+.f7Zvvsuk0kamNDkq6PG5PXKaYK3PG5PH93iWswZqs1hgO7gigO7giBUnBoUp+nhJJ3t6ti28t2ox15RW5B1vF1P1Z+93G+XrhUrBrt0sNDczQq1Xc1YmwXFyXPe6aegYlYlrqijRJIrsssM3u+9i.CLP0FqIlXB5YO6IF6XGqrdALhO93QQKZQQ5omtryG4X6ae6nssU7obn6d26hksrkgMsoMkk+agJTgJfwMtwgt0stAiM1XsZNRjdKAhHhHhxl14N2of81au..zn+Lv.CD5V25lPJojhrqqDSLQgoLkoHXpolpw0mQFYjvHG4HEhN5nkc88se62J59ZNyYNYmupT5ZW6ZhteM0TSERN4jUI9ALfAnwed+3+JZQKpvpV0pDRKszzn7baaaaB1YmcYqea6YO6oPpolZN56IhHJulac6fDt0sCJKi665buD9tN2qb+DROwfFzfD87ICX.CHGsee8qesjmq5IO4IpsrgFZnBsoMsIacdW6ryNg0st0IjQFYHq77Tm5ThtebzQG0nOuSbhSTz8S26d2UI1zSOcAKszRQi+rm8rpD+V1xVxQWKhIlXhvnG8nEhIlXznOS23F2PnhUrhYq5rV0pVBQDQDZT8keBONC8khfCNXgFzfFjsNNPAKXAyVG6QLe+2+8RVOUspUUi2eIlXhBcoKcQv.CLPi+bYu81Kr28tWYUOadyaVnHEoHZbcXngFJzm9zmr7dH+m+4exQmePSNOcLwDiPyadyETnPgFu+bxImDN8oOsF+6DQeIh8IWhHhHJa4.G3.nqcsq3Eu3EZbYyHiLvV25VwHFwHjU7gDRHnRUpR3m+4eFImbxZb8kVZogEu3EixW9xK6dqfT8VxZTiZnw0+G6RW5Rht9pTkp.SLwDYGub8xW9RLnAMH3kWdgyblyHqx7G+weft28tinhJJMt9xHiLvl1zlvO9i+nFWVhHJuLOb2M3g6ZVuUmxZW9xhO2PlSOeqT6W6s2d3ryNKY498e+2QEqXEw9129xV0aTQEE5ae6K7wGePbwEWVFuTmmWS+7qIeOd26dWDarwpx5MxHifWd4kryQ4JkTRAKXAK.kqbkCqYMqQVk4d26d3a+1uEAETPYq57BW3BncsqcYqqajHJugUrhUfJW4Ji+7O+yrU4iKt3vBVvBPG6XGyQ8.tKcoKo1dPXvAGbV16m+XolZpnicriXaaaaZT49fW7hWft0stkki.L6bm6D8pW8Bu5UuRiqizSOcDP.AfwN1wp13j5bO4DEsnEUkySmPBIfl27liCe3CKZOxOqDVXgg1291iG7fGnsRShx2XiaY6XiaQ9iRVrACIhHhHM1oN0oPG6XGQZokVNZ+rxUtRr5UuZ0FyMu4MQcqac0JWbeTQEE5Uu5knCGnerG9vGh27l2nx5Mv.CTYHCUSI0MUUyZVSUVWhIlHt8sucNp99fadyahF23FifCNX0F2wO9wQm6bmywCqLKaYKCADP.4n8AQDQ52RN4jEc3xD.n5Uu54n8c1ogHW8pWM5QO5QVNDmIGW7hWLKePq.ZmFLTPPPi97JUrUpRUBlat4xNdMUTQEEFv.F.1zl1jZiKzPCEMrgMLa8Ro8wt3EuHF3.GXNZejW03FieXbiwOYEabwEOhKtb9+llnOml0rlEF5PGJRIkTxw6qie7iiQMpQksJqff.F5PGpZajpDSLQ73G+XYs+xHiLPO6YOwAO3AyV4yGWmssssUxWvyCe3Cit28tmsZPxO1BW3BwV1xVjb64FMXX0pV0xzxojRJnssss3rm8r4n86ae6aQqacqE8ElgH8YG5vGCG5vGS1wy4vPhH8BKbIKG..ixugpiyDhz+kRJoft10tJ5ars0VaM5RW5BZdyaNbzQGgff.BO7vwwN1wvF1vFPBIjfJkYnCcnnUspUvAGbPksEbvAiu4a9F7129VIyGqrxJTiZTC3ryNCEJTfqd0qhae6aiTSMUQiOjPBASYJSAyadySx8oTO7tJTgJnQyKQZx9VrGn20u90ywMJ6GK4jSF8qe8C+y+7OhN4umTRIgt10tJ5MlaiM1ft10thl0rlgRThRfLxHCDQDQfibjifMtwMhDSLQUJyfG7fQKaYKQQKZQ0ZeFHhn75V37lotNEx2Hv.CTzyWagEV.2c28bz9VSaHt0st0kkMtjyN6LpbkqLbxImvKe4KwUtxUT67o7JW4JQG5PGv27MeiVKOEyCdvCD8ZkL1Xigmd5YNpNSM0Tw0u90kctHGibjiDMtwMVx4mwAMnAgm9zmpx5MxHiPqacqQG5PGPoJUoPAJPAPDQDAtzktD90e8WQjQFoJkYiabi369tuCsnEsPq9YPWyauT82Uo788eH..XWaaC4RYCQZWyYNyASbhSTswT1xVV3gGdfRVxRh3iOdDVXggKe4KK47M6RW5RQkqbkQe5SeznbIf.BPVMJ1ctycPYJSYxx317l2L191Eum93omdhd26dCO8zSTzhVT75W+Z7fG7.rl0rFb9yedUhOrvBC+3O9ipzfdwGe7nacqahd9Uas0Vzst0Mzzl1TThRTBjVZogHhHBbnCcHr4MuYQewZ6e+6OZdyaNr0VaUYa4zdftX9zFLboKco3Dm3DhFqO93C5QO5ApTkpDJTgJDhJpnPHgDBV4JWItwMtgJwGTPAgoN0ohEsnEo0yahzanSGPTIhHsDNGNPzmOaaaaSx4Ef6cu6IY4dzidjPgKbgEsrKe4KWk3SIkTDpV0pljyCAVYkUBKe4KWH1XiUkxlTRIILiYLCImeCLzPCEtvEtfj45HG4HEsb8rm8L68k1+SbwEmfgFZnn66PBIDUhewKdwhFqO93ivUu5Uyzem6bmSXcqacB94meBksrkUsygC96u+hleadyaVz3cwEWDdvCdfjett+8uuPgJTgDsrqZUqJG8cFQDkWwHG83EF4nGutNMzqrrksLQO2QcpScxw6aolikO9wOtJwFbvAKTfBT.IOuYUpRUDNzgNjnyKgu3EuPnIMoIRV1RW5RKDe7wKZNFd3gKZYLv.CDd26dmr+rJ0bLn2d6snw6s2dKZ7qacqSkXu5UupnwZt4lKbkqbkLcsHW5RWRX6ae6BSbhSTn10t1p8ZQ9tu66DM2d7iernyoWlYlYBG9vGVxuCRHgDDpd0qtn0UW6ZWk82k5i38JS4mbgKbAAiLxHIO1gu95qjyEcu6cuSXtyctRd+VN5nixd9kUPPP3su8sBEsnEUsGK6C+MqYMKYsO8wGeDs7CZPCRs41LlwLDsbVXgEBIjPBYJ10st0IZrkoLkQ3wO9wRVGAGbvBVas0hV1.BH.Uh+Uu5UR98woN0oT49Uk6eu5UuJS0iT2a6jlzjT620Ce3CWzxU7hWbgzSOc0VVhzmnoWG.avPhH8B7lfH5ymgMrgI6GxzmRpFjpicripD6jm7jk7FPr0VaEtzktTVVe6ae6SxaXrgMrgRVt5Tm5HZYDqgM0Dm4LmQz8qM1Xin2fXW5RWDM9wOd0+.qiKt3D5Se5ije+YokVJ5MIM3AOXQieiabiY4ms0u90yGRGQjdMd8lZe8rm8Tzyc7i+3Oli1ugFZnhteUnPgvadyaxTrolZpR1PS.Pnl0rlBQGczps9RO8zEFxPFhj6ikrjkHZ416d2qnwWwJVQM5yqTOTzAO3AqRrIlXhBFarwhF+st0sTI9UtxUJZr0t10Vs4TFYjgvhW7hELwDSj76kqbkqnR4j5ESqu8suY42CO7gOTzx5niNlkkUeFO1EkeQ7wGuP4JW4j7XFMtwMiW4ae...H.jDQAQEVkFGSLye9yWx8w+9u+qryGwN1ZQKZQEZZSapJqu6cu6Y49KszRSz6M0ZqsVHszRSskMiLxPnF0nFh9Y5rm8rYJ19129JZbaaaaKKywe629MQKau6cuUI1icriIZrknDkHKqG45Eu3EhVGkpTkJKKapolpPYJSYDs7p6EclH8Mm9u+WgS+2x+XebNLjHhHhzHhMDQAHugNKwlm9..d9yedlVNxHiDyctyUzXKbgKLN8oOsrlaiZcqaM5Tm5jna6e+2+UzgH0zRKMIm.40jgGLwH0vYS0qd0gBEJjc7YUdXgEVf0st0I4m8XiMVQGB09b7aKQDQzGnMFNNEiTm+rrksrpLjp86+9uKY70oN0Am7jmDVas0ps9Lv.CvBVvBjbH17XGS74Mlr644k69QrqU5F23FhNL0UvBVPTwJVQsVNpPgB3me9gEu3EKYLhMbwkStVjRW5RK5vf9KdwKT67OV9QiahSGiahSWVw5fC1CGbP7+sIQ4k7q+5uh6e+6K51ZQKZA1+92unyypepQO5QihTjhH51j6Pr7su8swu9q+pJqexSdxnxUtxpr96bm6jk6ym8rmI57DuWd4ELzPCUaYUnPgjGG7SueqOW2SWt04v+X4jOKFYjQvau8Vzsw6Qk9RR8955f5800Q1wy4vPhH8BScxiUWmBD8ECSM0TQW+92+9gGd3gZKaYJSYvF23FU4g17oO7tku7kK57nmBEJvwO9wEc93QJicriE+9u+6pr9jSNY7e+2+gF0nFko0GTPAIZCIZhIlfpTkpH65ULZxMU8l27F7fG7.QiWpaj6SM0oNUrqcsKQmr6u6cuKJaYKalVm59s0UWcUs0U4JW4vF1vFTY8EtvEVV4JQDounuCbX..Xc+1xzwYRdau6cuCgDRHhtM47RAoNZx4akZdLpbkqb3XG6XvBKrPV0oYlYFFwHFAlvDlfJa6Lm4LH8zSWkGHr13gspt4XPw1ORUmd6s2hN+FKU7x8ZQ5W+5GlyblinOz26d26px5T20hLfALfrr9BHf.vqe8qUY8omd5vHizedDXO7QOV1wtrEK9KgGQ4kjVZoA+82eQ2VMpQMvd26dgwFarr2eUu5UGG8nGUk0K2FJZ3Ce3pLWxW5RWZLnAMHr10tVUhO3fCFYjQFhdbzOvDSLQz0e9yed7xW9xrbdeePCZPpL+9A.UtGU0cbzQNxQp15vM2bSz6oSrbSSdYUxtj5yxoN0oPBIj.JPAJfZK+O8S+DZVyZlJquTkpTZk7iH8Q5OWsDQzWz7nhtoqSAh9hgWd4E1wN1gJqeIKYInF0nFpz.beLCLv.zyd1S0t+SLwDwpV0pDcaMoIMQx2RPoT4JWY3niNhvCObU1lXO7JodvXUoJUQxaxStzjGLnT2.liN5HJVwJlrpO2byM3iO9f+6+9OU11cu6cQKaYKyz57xKuvd1ydTI1EsnEgpUspgFzfFHYcYjQFgd0qdIq7hHhxOZMqboxJt28tXykyD8CW4JWQzd8UQJRQPoKcoyQ6a4d91Se5SKZubC.vO+7S1MV3Gzrl0LQavvDSLQ75W+ZXmc1obcBBB3JW4JhtezjG15st0sPRIkjJqufErfvM2T8djzjqEIt3hCAETPxNdwXhIlft28tiYO6Yqx1DqAC8xKuDc+bzidT7q+5uhAMnAo1GHeKZQKjUdQDk2xt28tkr2jMlwLFMpwBAd+8uHVii4niNlkkcW6ZW3u9q+Rk0+K+xu.iM1X3hKtnx1RLwDwie7iQYJSYjb+Zu81iRThRfHhHhLs9jRJILvANPr5UuZI6Yj..t6t6vc2cOKyeu7xKbvCdPUV+7l27fWd4E95u9qkrrlXhIx9d5zV8Rd0wM2bClat4HwDSLSq+0u90XHCYHXoKcovJqrRxx6s2dqwO+.h9RGGRRIhHhHMhTWv8qd0qv29seK5XG6HNwINgnC2UxwYNyYD8MCG.Y4aDoTbxImDc8u5UuRk0kaciOu7kuDO4IOQ166b5az+GH0aOoXOjNo9sMpnhBMrgMDctycFm7jmLa+aKQDkelM1XMrwF0OzTRxWtUOSHiLx.W8pWUzs8omucu6cuhFms1Za15kfQpq2.P0q4HjPBAwDSLpDmolZpFMhFns5wfhcsHW8pWUzQo.6ryNMp2YnIWKRUqZUEMuEDDvPFxPfO93C1111Fd26dmrqehn79j53wN6rynssssZ79yUWcEMpQMRk+D6Eo3ikPBIfQMpQox581auUNcO3ryNKZYkyvRpT2u0e7G+Ab0UWwblybvCe3Cyx8S1oNhLxHw27MeC5V25F9y+7OUoGTpId5SeJhLxHUY8JTnPzdAY1kgFZnjmSbCaXCvM2bCKcoKUxFalHB3WlyBwuLmEJ63YOLjHhHhzH0oN0AUoJUQx2H+csqcgcsqcAarwF7Ue0WAe80WzxV1RY81PB.72+8eK55c2c2UauWTcJYIKonqOt3hSk0ka8.LkZ+5jSNAGbvAYGul1vkRcCsImbxprt5V25BO7vCb6aeaQKyN1wNvN1wNfM1XCpacqK70WeQqZUqxxa7lHhH5Skac91fCNXDarp1KOM1XiQUqZUyz5j5ZN5e+6uF26BAdeCMZgEVf3iOdU11mdMGR0vcd5omZTOoQSZ.vniNZImevD6ERRa8ajlbsHVXgEnW8pWX8qe8hVlKcoKgt10tBSLwD3qu9Be80Wz3F2XTm5TG01yC02r7kNeYGavgbO..3ZEJetU5PTN1YNyYDc8CaXCKKme+zll8rmsnM9z7l27TNmyK0wzBJnfPqZUqT69+G9ge.G7fGTzdX+qe8qw3G+3w3G+3QEqXEQcpScvW+0eMZQKZgZ6Ecep5W+5CWc0UDbvAK51+8e+2wu+6+NJTgJTltmtJTgJH65PpyOXfAFf5Uu5I68yGXmc1I4786PFxPvEtvEDcaO6YOC94mevO+7Cd5omn10t1nd0qdnoMsoY4vUJQeoHvabKMJd1fgDQ5EF4ne+P+yhWvrzwYBQ5+L0TSwt28tg2d6sZe6tiN5nwAO3AwAO3Aw3G+3gat4F5Tm5D7yO+f0VKcOzPrg+E.fNzgNjsy4niNZQWuM1XSlVNwDSD25VhewT4zdXnlNOEos5gghMWPBH9bKn4laN18t2MpV0plnMl5GDczQiCbfCfCbfCfwMtwA2c2czoN0ILhQLBM5lYIhH8Q6XqAnqSg7EzFyeeZx9sJUoJYZtPJpnhRxdCRG6XGyV0cBIjfnyCx.PkgYNs0meMoQ8jZXf0AGbPzWtJcw0h..rhUrBbkqbEIulrOrO+6+9uwe+2+Ml0rlEbvAGP6ae6wHG4HU6PBn9B6sS8y0YerIOs2eOx6ZaaHWJaHJm4N24NHpnhRzskUGO94O+4RdLFwTxRVRIe4BdzidDl+7Usw3aRSZBpe8quxksvBKPQJRQTomiKmdXXiabiwDlvDvu7K+hZiKnfBBAETPX0qd0vTSMEMtwMF8u+8WVC6xVXgEX26d2nF0nFRdNI.f27l2f8su8g8su8ge5m9IToJUIk2SWAKXAUacH04GRO8zkbd0Uc9zoJiOV26d2w+7O+CVyZViZ2GAFXfHv.CDqXEq.En.E.Mu4MGCdvCNa0.lD8krubd8qHhzqEdDOCgGwyz0oAQewnrksr3HG4Hn7kW9uox28t2ESaZSCt5pqhNGH9wwIUclcI0v5xm9v6BLv.EcnYwJqrRidiKEil7fACKrvvKdwKTY8FZngZ7P7RHgDhnquPEpPht9JTgJfibjifxUtxI653N24NXJSYJvM2bC6ZW6RixOhHJ+hNzkdiNzkdmkwYfAF7EUOcJ6HxHiTxgOrbZOLTtmuUpddAP1+ZNBIjPDsA4.Pll+BAzNMXnlNGCpqd4kzzqEwbyMGG5PGBMrgMT10QjQFIVwJVA7vCOvu7K+hF0.BDQ5VRc+elYlYY4bNnmd5IbwEWj0ed3gGpceMxQNRU54yFXfAXNyYNpDqXyigxoACA.l9zmNl3Dmnr6M4Imbx3.G3.nksrknUspUHrvBKKKi6t6NNzgNjFMm.eqacKLoIMI3latg+3O9C0FqTurJYWY04972e+wvF1vj80WkPBIfcsqcg5W+5it28tK58VSDINdWLDQDQT1RsqcswMu4Mwzm9zg81aurKWjQFI5bm6LV3BUcLTOkTRQzgQL.nQ2ryGKszRSx4NvhVzL+1YK0M9H07.jlPSFhQk5AzUwJVQMdHRSpGHZwJVwjrLe0W8U3l27lXpScpp7.NUmm8rmgN1wNhktzkpQ4HQDQeY4JW4Jhtdmc1YM57NhQtMJlXyiw.uuQrT2Hgf5H0C81byMOS8VijSNYIGZ20jFLTcywfhMj4oIMXXTQEEBMzPUY8JTnPiaT2ry0h3jSNgSdxShMu4MCWc0UYWWIkTRXRSZRnKcoKZTNRDo6H0wicwEWTNLfJlm7jmHYOSTLUqZUSx6o6XG6X3.G3.pr9t0stI5bnmXGiM3fCVziI+oLzPCwLm4Lw0u90Qyady0ngb0CdvCBu7xK77m+7rL15Uu5gae6aiIMoIoxKJq5Dd3gi10t1gUtxUJ51EDDj773YWY0KhhYlYF72e+wEtvEP8pW8T6+t3Ss0stUTyZVSQm2fI5KAydlSAydlSQ1wyFLjHhHhx1L0TSwTlxTP3gGNNxQNB5QO5gruYjILgInxCKSpaVD.Y6gWpm7jmH4D5tWd4UlVN2Z3Q6wO9wh9Yy.CLPzIkdoZbQM8M5O0TSEO5QORzsUqZUK0VVyLyLLsoMMDQDQfCcnCgt28tK6eaG6XGqjyChDQj9tXiMNDarROrNS4dmuM4jSF27l2TV6aotlibxvYoTMX3mtOu4Muon8.NarwFMpG9K02iR0fdZxKujTwVtxUNXqs1JyL78jpGFlUWKBv6GJ5t6cuKt7kuL7yO+j8uO6cu6EADf96vCb268.P268.jUrUy6php4cUy5.IRGI6d73KdwKpQ0iT2KUJojBFwHFgJq2TSMEyblyTzxHVOLLwDSDO9wOV14yG5EfgGd3XQKZQnN0oNxpwCe8qeM5cu6sj8n8Ol4laNlwLlAd1ydFNvAN.5ZW6pj8t6O0nF0nD8E9HjPBQxolDSM0TM9OyLyLY+hnT8pWcb5SeZ7jm7DLqYMKTiZTCY8h8FZnghgLjgHq5fH8MksLkFksLx+EvmMXHQjdg0tJ+wZWk+55zfnuXYjQFgl1zlhMsoMgW7hWfKbgKfe7G+Q09limRJofwO9wmo0Ee7wKY7e57MnbsyctSQWe4JW4TomQpIyCPZB00iAEa9gPa8fTO4IOojCwpUtxUVV6CiLxHz7l2br4MuY7hW7Bb9yedLxQNR3fCNHYYRN4jwDlvDznbkHhxqqfVXAJnL5k28Y.CE8Y.C8yPFk+Ut04aCLv.QpolpJq2JqrRkdolTWyQ185M.j9yUiZTijUb0nF0Pi50DR8vxqScpiJqKhHh.O6YpNENHUOFTacsHu3Eu.W8pWU14oTpV0pFV7hWLdvCd.BIjPvrm8rQEqXEUaYF0nFkrdf54GkbxofjSVdC6piczi.iczp1XHDkWQ183wRcbJoH0wuVxRVBt28tmJqenCcnvImbRzxHVOLDP9CKoeLGbvALxQNR7u+6+hW9xWhst0shl0rlAiLxHIKyINwIvwO9wkccXrwFiV1xVhst0shnhJJ7e+2+ggO7gq1d0ehIlHlzjljJqWpygUqZUKjTRIow+kXhIpwm60ImbBie7iGW7hWDQFYjHf.B.0u90WsMd3V25Vw0t10zn5gnuDwFLjHRuf0VaEr1Zqz0oAQDdeulql0rlXgKbg3oO8oX0qd0vRKsTzXCLv.yzxp6MVWpgUT0IkTRAKaYKSzs8Ue0WkokiN5nw8u+8EM1bZOdPSdnaYjQFR9f0zjdXXFYjAF23FmnaqN0oNYqgXUCLv.TqZUKrnEsHDd3giUspUI4Pj5m9aKQDke25W6Jv5W6Jz0ogdAMomtoIj57sUqZUSkFhSpq4PtWuQ5omdlV97m+7R9va+1u8ayzxW+5WWz3zjO+YjQF3u+6+Vzs07l2bUVmTe2TtxUNQePsZq4uvoMsogDRHAUVu0VasnCyexQ4Ke4w3F23vctycve9m+on8zGf2eschMrpRDk2R183w95quXdyadp7W6ZW6DMdwNF6yd1yvLlwLDM98u+8CO8zSQ+aAKXAhVFolWYkKas0Vz0t1Ub3CeXDVXgg1zl1HYrY262xPCMD95quXoKcoHhHh.Ke4KGEn.EP10Qt0nDP1UQKZQw2+8eO9y+7Ow8u+8Q8qe8kLVdOpDk0j9UUfHhHhn+mye9yiniNZUVeiZTiT6a9ngFZH5e+6OpYMqonOTnm+7miW+5WiBW3BCf2eCRJTnPz2F7G8nGgxW9xqQ48V25VQjQFonaqyctyYZ4qbkqHZ85fCNfRVxRpQ06mRStop6d26J573nEVXAb2c2kcctoMsIbqacKQ2Ve5SeT9++bm6bhNeNz3F2X01nhFZngXfCbfn5Uu5hNrp9zm9TDSLwjsmGnHhHR+zidzivqe8qUY8RMLcqIzjy2J0PxVngFJxHiLT64.+q+5uv.Fv.v92+9U1K2F8nGsnwZpolhu9q+5LsNodfxZRCnEXfAJ52iN6rynRUpRprdM8A7pMZT2PBIDr10tVQ2Vu5UuTNz6EbvAK5v3W0qd0yxgC85W+5iadyahJTgJH5b50st0sjrAEyOyXiMVWmBDo0H0wikZpU3CZe6aunquIMoIprthW7hCGczQUV+O8S+DhKNwGFwevCdfZqew7o8vvXhIFbtycNUhyQGcTziU+wJVwJF9i+3OP+6e+E8Xoe785c1ydVQuGxlzjln1dttQFYDFxPFB71augO93iJa+QO5QHgDRHSMnXt0K8yG7xW9RQmiDKcoKMpPEpfZKaoKcowoN0oPaaaaw92+9UY6Rc+wDoOavCaT..XkKagxJd1fgDQDQTVZAKXAXu6cupr96cu6Iq4ZmJW4JiZW6Zi+6+9OU11SdxST1fgFZngvEWbQzGZz92+9E8l+jRRIkjju4mUnBU.MrgMLSqK2Z3QK8zSWxg9DwdK8kJO71auk0bZAv6G9ul7jmrnayYmcNSuopyctyEG3.GPk3dzidDJUoJUVVWd4kWnl0rlhNrn8jm7jrcuGfHhxup3ES5grYR5yy4latI5vzs1XeK14aKaYKqnwlRJofidziJZuzC.3W+0eEiXDi.okVZnoMso37m+737m+7h9.gAdeCiYt4lmo0IVCaA79GnsbI14tA.ZQKZgnqWS9tQpF00TSMEd5omxJ+RM0TwHG4HEcnQ2.CL.CaXCS4xG9vGVzFbcCaXCnW8pWYYcYokVht28ti4O+4qx1xNiPE4G76aZMxN1S9m+M..ZTC9lbmjgnbHoNd7ye9ywku7k0n6G6QO5Q3Dm3DprdwZLqyd1yhst0sJ+DUF9zWHj3hKNzrl0LUhqIMoI3nG8nxZeN3AOXQavvO93a+xu7K3XG6XpDS3gGNJQIJQVVG0pV0BUspUUkd.uff.BMzPgat4F.d+w1kpW5osZvvvCObQ+Nqm8rmXiabiYY4UnPAFzfFjnMXn954DHRcd0qT8Z5TGNjjRDoWnCco2nCco255zfH8VRMGwnIu0kR8l5+oyife5ag+GDP.AfvCObYUWIlXhnksrkR9F7OzgNTUdSKysFZUtyctinCEWlat4vCO7Pk0mSGBvN6YOK7xKuj76J+7yuL0vieN+skHhxOKhHdFhHBUmC39TKcQyAKcQy4yPFk+Tt04aiN5nEcNnRp8sat4FJZQKpnw+y+7OK55W7hWLFxPFhxFAKrvBCMsoMUxg.bSM0TQm+mDqWf7g8mbDczQiktzkJ51DqACEDDDs2Z.H92MR8ajmd5ILwDSxx76oO8ont0stR9vvacqaclZf.dsH4tV8Z2.V8Z2ftNMHRR0pV0BlZpohtMoNdrXRKszPe5SeDcTi4SuWpLxHiL8hKnsDbvAiLxHCkKWhRTBXkUpN84nsO91mqiidyadSjbxIqRL1ZqsR1vuZJWc0UQ6Uj7bBD84AavPhHhHJK8g2nvO01111jU4e0qdEtvEtfJq2XiMFEqXEKSq6S64eePJojBF3.GHhO93UackPBIfVzhVfScpSI518vCOv.Fv.TY84V8vPodnad4kWhNbtlcePpBBBXgKbgnd0qd3YOS7Gnsu95qJ2XbN821nhJJQyYyLyLdCYDQ5U7azS.9M5InqSi78xsNeqTCs3knDkPzdtmBEJPCZPCDcecoKcIQGkB5YO6oJCO527l2TxGhY+6e+EcXM+Su1mOXQKZQpL2HJlIO4IK5PEegJTgP8pW8TY8gDRHhN7iahIlH5HAPNoQcOwINA7xKuD859..JbgKLVwJx7bApTWKx92+9QhIlXVVmYjQF3HG4HhtMmc14rr7DQ5VlYlYn10t1htsCcnCIqdUlff.FwHFANyYNina+SO90u8a+ln8TtBUnBAe80WY8mkVZoJkOgDRPkQKGwNF2ie7iEcDZQLG7fGTz0+wGeKmdOcQDQDhN+5VvBVvLMjwptygqtg9TMg4latnCkzAFXfH3fCVV6C47cFQj33PRJQDQDkkj5FP17l2LpZUqJF4HGojk8Uu5UnQMpQH0TSUks05V2ZUFlM6PG5.F6XGKhHhHTI9ibji.e80Wr6cuaQGJTO6YOK9oe5mv4O+4EMWLzPCw5W+5U4si+YO6YhVe.u+FV9z4hhrhc1Ymxdsfl7P2RJojvMu4MEM9BVvBlo7PPP.u8suEO+4OGW7hWD6YO6AgFZnRlSVZokXKaYKp78sT+1t90udT0pVU09l2FUTQgF0nFI5C2rMsoMZsaZjHhH8CpaX51ZqsViOeqM1XixgZsrSib4me9gsu8sK51FyXFCtyctCV9xWNrvBK.v6arqicriAe7wG7hW7B0laN6ryXJSYJhtsJTgJH57nzku7kQaZSavxV1xD8gk9xW9Rz6d2aIabrEsnEIZuzQpuapRUphFEu81auJ+FEWbwgm+7mifBJHrm8rGI+88CVyZViJMXpyN6LJPAJfJiHC25V2B8qe8CADP.R16iRKszPu5UuD86yRVxRhpUspo17I+pW9+FdwJZQJrNNSHR6Xjibj3zm9zhtsd26diadyahYMqYI5wBNyYNC9we7Gk73OFXfAY5XAu4MuQzd+M.vpV0pPG5PGjUN2111Vru8sOUVePAEDJSYJixkcyM2TowASO8zQ6ae6w+8e+mZaDqctycJYurrcsqcYpNDyu8a+FpZUqJF3.Gnj0QjQFIZbiabl5YjhUG.R2fgkrjkTiOG9GXhIlnx816latoRCulPBIf1111hybly.6ryNI2eqbkqTkWLkOnssssYqbjn7y175+MMq.BDQjdfd2uePn286Gz0oAQ5sRIkTDpbkqr..D8O2byMgEu3EKb7iebgacqaIb6aeagCcnCILzgNTAqrxJQKiBEJD9q+5uDs9V1xVlj00G9yImbRncsqcBidziVnyctyBd3gGYYYl0rlkn029129xxxpI+sgMrAk6aO8zSQiYaaaapjGW3BWPqlGe3OKszRgSdxSJ5m8jSNYA2c2cIKq6t6tvRW5REN9wOtvsu8sU9a6O7C+ffkVZoj+19u+6+p4+CMhHJOruqy8R365buxx3tycCV3N2M3b+DJenadyapUO+1TlxTTtuaSaZinwL6YOa0lSMtwMVs0ggFZnPkqbkE5Se5ivfG7fEpcsqsfEVXgZKi0Vasvsu8skrNO3AOnZKuolZpf2d6sPW6ZWEF8nGsP6ae6EpXEqnfwFarjkoIMoIRVeCcnCUzxLjgLDUhM0TSUn.En.Z8qEQgBEByadySxbru8suRVV6ryNgIMoIIbvCdPgqd0qJDRHgHbpScJgYLiYHTxRVRIKWV8ae9Yx83QBBBBaYa6TXKaam4tIDQ4PYjQFBd4kWp83HFarwBd4kWBCX.CPXvCdvBMnAMPsGC3C+UwJVwLUWCdvCVz3pcsqsFkyiYLiQVG643G+3BJTnPzXMxHiD5Tm5jvN1wNDN6YOqv8u+8EN+4OuP.ADfPcqack7yTUpRUxTcjXhIJTgJTAIiuRUpRB96u+Bm3DmP31291B25V2R3fG7fBCbfCTnfErfhVFCLv.gKbgKjo5QN2ysl9WCZPCT461st0sJY7lYlYBe+2+8B6d26V3bm6bB2+92W3rm8rBqZUqRn5Uu5RVtF1vFpQ+9RzWpXCFRDQDQxxst0sDL0TS0Z2XvhW7hkrtxHiLDZUqZkV8FQl1zllj02Dm3D0p0UPAEjffffP7wGufQFYjnw7vG9PUxC+82es9MfYu81Kb0qdU09aafAFnfIlXhVqN82e+k4+phHhx+XRSclBSZpyLKiSSdP9eoYcqacZ0ywcnCcHk66hW7hKZL+4e9mpMmd1ydljkM67mQFYjjujNeP5omdV1PkZxeVZokBgEVXRVe0nF0PzxswMtQUhMv.CTqesHFarwBaZSaRsem7t28NgRW5Rq0pyN0oNIjd5oq15L+LdbFRez8t28DrwFaz5GCp28t2Jqiqe8qKXfAFnRLJTnP3RW5RZT9t5UuZQqut28tqRrCaXCSq84wQGcT3IO4IpTGW9xWVsuXIZ5eqZUqJS6+XiMVACMzPs9uOie7iWzue6Tm5jVqNb0UWEhJpnzneeI5KUbNLjHhHhjEO7vCL6YOasx9ZxSdxvO+7SxsqPgBr4MuYzjlzjbbcYrwFi4Mu4goN0oJYLRMzakcXs0VCWc0U..b8qecjVZooRLEoHEAktzkNWMOTnPA5V25FtxUtB7xKuTarUoJUAyblyTqTuSe5SWsCioDQT9UyXZSDyXZSTWmF4qoMOOGv++vMZDQDgnyeue5vPmXJVwJF1+92unmWN6PPPHKm28Lv.Cv9129jbdaVSXkUVg.BH.QmqDAd+b.8Y9YgQK..PQWIQTPTMtwMDcahMbsps+MxGe7A+6+9unG8nGpMNKszRr4MuYUF5zyNZZSaJ17l2LLv.9HuHJ+jxUtxg8rm8H57NqbMnAMHUV2GertgMrgI5PuY25V2z34RWwlhL.d+PR5mZtyctRNrgpIJRQJBN4IOonCioUqZUSs2yqlX1yd1pLLldsqcMYMO6pojZnCekqbkvQGcLGu+cxImvINwITNkgPzWZRN4jQxImrrimW8DQDQDIa94meXQKZQvAGbHaUdqrxJL8oOcImGF9zXO5QOJ18t2c19FE7wGev0t10vXFyXjLFAAAbkqbkr09WLUqZUS4b2mTOzMotYTswCoyDSLAMqYMCW5RWBaYKaQ1e2MpQMJrfEr.Xu81mspWqs1ZLyYNSImulHhHhjZtOJ6nTkpTY47EbEpPEfUVYUVtupV0pFtyctClxTlhjyUdxU5omN5Tm5jjymxefYlYFNvAN.ZZSaZ1tt5RW5BBIjPv28cemjwbiabCQeHQVas0nBUnBprdsUCF5s2dictychyctygZVyZJqx3qu9h8t28hJUoJkspSiLxHzst0Mr6cuaXrwFms1G4W3hKNCWbQ0FLfn76pe8qOBN3fge94mF+BDzidzCQm659vwf15V2JN6YOqJau.En.YqWLVoZvvfCNXUZTRyM2bbnCcHzoN0or8Kyfmd5IN1wNlxWNUwLtwMNLm4LmrciiYiM1f4N24hwMtwox1zlmC+iI04Hr0VawQO5QQKZQKx16ae7wGbxSdRIeoZH5KAcu2CDcu2ROOlpBccWbjHhzFdZ3QH7zviPWmFD8EiDRHAgkrjkH6gvqxV1xJrzktTg28t2kspuXiMVgQO5QKXmc1kk0k4latP6ae6E1yd1iPFYjQVtuu+8uet1PpRW5RWDMFwFdTe6aeqjysEh8mAFXfPQKZQEb2c2EpW8pmP+5W+D1yd1S1963OHgDRPXQKZQBEqXESV4Q4Ke4EV1xVlPrwFaNpdIhH8EyagKUXdKbo55zHOmDSLQs5PkVm5TmTtuG+3Gunw7wCCcx08t28DZQKZQVNOEB.ghUrhILzgNTgN1wNpx1JbgKrPvAKu4xxqcsqIL3AOXAqs1ZY8Y2SO8T3Tm5TxZeuhUrBQ2GRMWNUkpTEM52AarwFgxW9xKT6ZWagN0oNIrl0rFgHhHmceYYjQFB6YO6Qx4AZw9tdbiabBO8oOMGUu5qBXiaUHfMtUccZPjF6F23FB0u90WvbyMWsGCvEWbQXm67+ed57i2lYlYlPJojhPrwFqj265GOe3pIxHiLjbNeUroehOHnfBRnqcsqxZ38zPCMTncsqcBm4LmQixs3hKNg4O+4KXu81Kqii5pqtJ7q+5uJDWbwI49TaNDg9g+bzQGk0mmqd0qJz5V2ZYc+xlXhIBcu6cW3xW9xZz2YDouRSGFyUHHHH.hHJetNzkdC.fcssMnSyCh9RS5omNBO7vQXgEFd5Sepx+2BTfB.mc1Y3ryNCWbwE3gGdnrW2kSEczQi6cu6g6cu6gPBID7pW8JXu81ihW7hCGczQT25VWTvBVPsRc8krzRKMDQDQfvBKLk+Ed3gmq9aKQDkW1Etz66M50pFpeHtjzeDQDQn75Mt28tGRM0TgCN3.bvAGfqt5J7wGefAFX.RM0TQKZQKvINwIxT4+ke4WvDlvDjc8kPBIfqbkqfvCObDQDQfHhHBjTRIAas0VXqs1hxV1xh5Tm5.6ryNs8G07rhLxHUdcHe3ZMSO8zUdsHN6ryvCO7.lat455TMOKduxT9cBBB3oO8oJOV78t28fAFX.JQIJApacqKpd0qd9x6GI1XiEgFZnJO1VXgEFd8qeMJdwKtxiu4pqtlsGce.d+8z8g6W+CGG8oO8onfErfY5d5b2c2yW7cXzQGclt+zvBKLDSLw.GczQkedpXEqHJbgKrtNUIJOCM85.XCFRDoWf2DDQDQDQTtId8lj5Darwh5V25h.CLPXrwFiku7kiALfAnqSKh3wtHhHh9B1fG5OB.fUt7EIq3MJ2LYHhHhHhHhHhH8cVZok3HG4HnEsnEXAKXAnd0qd55Thzic8.uI..ppmUVGmIDQDQTdYxsgB+.1fgDQ5EbsBkWWmBDQDQDQDNwo9K..7sMjMXzWZJVwJFt5UuptNMnu.Lq499G9mb50fC8GXOckHhHhjG1fgDQ5Elwzj+bCBQDQDQDooZP8+FYE2ZV2FA.avPhn7F95uxWccJPDQDQ4SvFLjHhHhHhHhnrvf5eu00o.QDQDQDQjr8fG9X..T1xTJYEOavPhHhHhHhHhHhn7I9p53itNEHhHhn7AF+jlN.j2vXN.avPhH8DW3hWF..0plUWGmIDQDQDQeIqssok55TfHRO2vGx.kcryXVyG..SdBiI2JcHhHhH8DrACIhzKrvkrB.H+2VBhHhHhHRSr68d...7csqUpMtt1o1+4HcHhHY4l25N55TfHhHhxmfMXHQDQDQDQDQYgcrq8BfrtACIhHhHhHhxKvypTIMJd1fgDQDQDQDQDQDQ4SbvCeL..zxl2DcblPDQDQ4kMwwMJMJd1fgDQ5EZXC9FccJPDQDQDQHfMtU..zmd0McblPDouZSaY6.PdMX3bm0zxkyFhHhHReAavPhH8BCre8V4++cs28ictq+P4x8tmcEMuoeqxkWr+qDm67WT4xSdBiAUtRtqb4QO1IgPCKbkK+aqXwnPExVkK2ot0GjQFY...yM2bro.Voxs87mGIF9ONNkKW9xUF7K+7jUt7ktx0v7Wn+JWtdeScwOLv9nb48tuCgssicqb4d18NmoaBz+U7a3eO64Ut7DF6Ohp5YkUt7XF+TwSdRnJW9WW1BQQKRgUtbW6Y+QpolJ..L0TSvV1vpUtsWD0KwPGwXTtbYJcovb9kopb4qds.wbl+RTt7WW2ZigN39qb48evifs766T4xcqKc.soUMW4xKekqEm4eNqxkG6X7CUyKOUt73mzzwCd3i++ieIyC1aucJWtG8dfHojSF..FYjQXaadsJ21qd8qwfG5++aLiKt3Dl+r+YkKG3MtE9k4rPkKWmZ6CFwPGnxkO3QNN1zl2lxk6bmZOZeaZoxkW4pC.m9u9GkKOlebXnFU2akKOwoLSbu6+.kKuzEMGT7h4fxk6Ue+AjPBI...CTn.632Wuxs812FMFvO3mxkKYIcDKZdyT4x2712Ay3Wluxk8oV0.+3H9AkKejicRr9+2ClD.nieWaPGZeaTt7pW2FwIO0eob4ebDCA9Tqpqb4oL8Yg6F78Tt7hl+ufR5XITtbeFvPQrwFmxk+34IzXd26P+F3vUtbIJdwvRV3rUt7cBJXLsYLGkKWyZTML5QNTkKe7SdZr1.1jxkaeaaE5bGamxkW652LN9I9SkKOhgMHTGeqkxkm9LmKt8ctqxkm+blAbw4Rpb49OnQfniIFkKu8srNXngFB.f3hKd788eHJ2lCNXOV1hmqxkCNj6gIOsYob4p4cUwXG8HTt7I+y+Fqds++eWzlV2bzsN2AkKu9M863HG8DJWdn+v.vW+U9pb4YLq4mo4Sl4NqogRWJWTt7.GxHwadyaUt7V23pgIlXB..RLwDQO6yfUtM6JZQvJ7eAJW9d2+gXhSYFJW1qpVEL9eZjJW9z+8+hU9aqS4xsrEME8racR4xaZKaW4asN.vOLn9h580ekxkm0bWDtdf27+e4YLETtxV5++3G1nwKe0q9+2eqeUvbyLC.3+q8tOCppt1iBfurWPwB16UTQrqHJhnhHJAEQADH.RSpBRQ.ADQTriHHEQQIX2nwXhIFewTLFiFqo87kxKQeZrkno8R0Xhg7Al7ee4NYeRdex4IqeeQWyZzYect2q6yY++Lfe992GAL2HjNqZcqQYkjuju7UtJVTlKUxCdv1hrRegR9Dm7Tn3RKWxOlaSAAGn+RdW68.3YO7QjbjyKDL4I4jjWSdEfKbw2QxKOmLQ+stuRNtDREe1meGIW4VKAVXgE..3W+0eE9EX3RWKaYKP4apPIe0q8oHkEsDIa6.sAYu3Tk7IO0YvFKtLIOUWmLBK3.j7d2+AwSenmSxgGZPvUWljjWW9Egyc9KJ4bVR5vlAzOIufjSG25V2VxaayEAKsr4..npppB93eHRmkMu4XaaoHIe8qeSjTpYJYaFP+PNKIcIe5ybNrgBKUxtL4IhHBatRd+O0yfCbvmQxgFb.XZtNYImegkf27LmWxKIyTwfr0FImTJYhqeiaJ4sroBPqZYKkrO9GBpppp..fEVzTT4VUqkadqaiDRVsV6m08E4li50xYO2EQdaP8Z04I4DhZdp+s3fG5vXe6+ok7bCzO3tatJ4BJpLbpSeFImY5KDCcv1J4TVzRvUu1mJ4xJNeXkUsVx9FPX3AO3A..nwMtwXmOg58.e1meGDWBp2iz29zKrxkqdOzEt3ai0jm58XSvowgXiR8dvCc3if8r2CH4.d74.ObeZRtnR2Bd8SdZImdpIhgOrgH4Ek4RwkuxUkbIabcncsssR9wmaD392+9..ngMnAX26P8Yu6d2u.wDu5yl8pm8nF2P525cdOrp0n9rsiiarH9XUe1+vO+QwN28SJY+80K3oGtK4R271vwesSJ4TSdAXTibXRNirVN93O4xRdiaXMnicn8RNnPiB+zOcO..Tu5UOruco9Nuu7q9ZDUrpuSr6cqqHu0n9Ny288tDxcUpuS0gwNZjPbU+ctAGj56aLxQ+Guj7qwO+HgiNLFoKmUrVboK89RdsqJGzydzcIGQLIfu9q+FIumctUzf5W8ks+C+3OhfCSsGf12t1hhKTsGgO5e+IXwYq1CwHF9PwhRQsGiW43m.ksE0dP7X5tg.72GIW4N2KNxK7hRN1nmGlv3cPxqX0qGuy69Ok7pxMazmd2SIG87SBewW9URdWUtYznF0H..bu68yHvPT68pMswJrohT6M6St7UP5KVs2sgNjAUiog93m3MPoko16m6O1TwbCvWIuy8reb3m6EjbTQDJbdhiWsVW6Fva81uq50xxVLrtu8Q8ZcAof6bm6J4susMgl1zl..fe4W9E3ePp8715V0Rr4RU6I9J+mqgzxPsm4AMnAhkjgZO0u9abZTTIp8bOso5RMNL48rumBG5YedIGQ3ACWLYXHW652HN+EdKIurry.Cn+VK43SLMb6O6ykbEkWLZdyZF..dvu8av2GWcsFsnEVhsVl5ZQt1mdcrvzTWqx.so+XoYotVlS8lmEErQ00535TbFgGRfRdeG3P3fO8yJ4vBIPL0o3rjWeAEiyb1KH4ryJMXqMCPxItvLvMt4sj7VKainEsvRI6seAK+9l0LKvSTdIR9F27VHwElgj6e+rFKeop7YN64keN2CT8.l9nz0L9+BS2iIQDQDQFgGXHQDQDQDQDQ+EL8vDHhn+eCGHspwARiCjF.GHs+.GHsG9CjF.vQN5wPk6XORdNdOqZ7yL6xJuR7Ju5qI4jSb9vd6FojyZoq.e3G8wRtf7VI5bm6jjCI7Xw2+C+fjMcPv+lu4+h4EsZ3n6ZW5Dxecpgm9R+qO.4jqZ3pseziBImfZ3qO5K9xnhJ2kj8Z1df43kmRt7J1AN1K8pRNg3iANLF6jb1Ka038+fOTxqes4ht00tH4vhLN7se62I4mb2Uf5V25B.fu669dDZDpgRuScrCnv7UCs96+geDxNG0Psa2nFNRII0PuerW93n7sscI64LmN7eNyVxUr8cKCBH.djZP.MBOvPhnG438r7.dOKOz1mX7QiDiOZs84slb01AT8+4jNcricnF+GulytQNbC6m0LcGyZltqsO9XiDwGajZ6W2pxQaG.vdLYyXlq8sqsFt1FwvGpg8dLc2fGS2Ms8yO5vw7iNbs8qJ2r01A.ryJ2r1t1XkUFt1F5PFjg8S2MWwzMYC7lK5HBEQGQnZ6WwxVr1N.fsusR010pV0RCWaC11AZXuaS0E31TcQaeDgM2ZbgWlaYYmg1N.fJ1RwZ6ZgkVZ3Zaf1zeC6c0kIUiKX0bgGRf0XJ1MW1KNMsc..kWVgZ6ZVyrvv0V+6m0F16hySnFS+u4BIH+QHF7jnjkIO4A+Y1bIaPaWSZRSLbsYce6sg8SZBNhIMAG01GT.9hfL4o1vbYjVRZ6..Jsn7z10nF1PCWa8tW8vvdmbzA3ji52ja.94MBvOu01m1BSPaG.PQErVsc0u902v0VO5d2Lr2QGrGN5f8Z68ymYC+7Y1Z6SIo3z1A.TnIOculqN0oNFt15ZW6rg8i0d6vXs2Ns8930LgOdMSs8IsfXAVf1Zj+5Vg9R.reSdprMWm6TGMbsOZ6Fgg8y1yYfY64Lz1mPbQgDhKJs8qa0KSaG.pwMRvbcn8syv01HGwvLr2yY7XvSSdR9MWbwDAhKlHz1u5UrTsc.Ueij0osssMFt1F9PGrg8yv8ogYXxMexbwDYXHlHCSa+JWdVZ6..1QEkosypV2JCWaCYv1ZX+eGF8mO6LSUaG.vVL4IWybVzzlZ3e28y59XXuySzI37DcRaevA5GBNP+z1+W8y+jMUb9Z6Zbiajgqs9z6dYX+DcZbXhNMNs8A5uOHPStIIlyzC13OSIlbCZLWCZPCLbs0qd1cC6G+3FKF+3Fq1d+80K3uudosO0jiWaGP02PScpWcqqgqst2stZXuCiYzvgwLZs895smvWu8TaexILesc..aHuUZXuQqstz4NYXu8idTF1+n70LRDQDQjoJYSk+29.CqSU+w3TPDQDQDQDQDQDQDQDQDUqSceXu.HhHhHhHhHhHhHhHhHhd3gGXHQDQDQDQDQDQDQDQDQ0hwCLjHhHhHhHhHhHhHhHhnZw3AFRDQDQDQDQDQDQDQDQTsX7.CIhHhHhHhHhHhHhHhHpVLdfgDQDQDQDQDQDQDQDQDUKFOvPhHhHhHhHhHhHhHhHhpEiGXHQDQDQDQDQDQDQDQDQ0hwCLjHhHhHhHhHhHhHhHhnZw3AFRDQDQDQDQDQDQDQDQTsX+NPNH8Zz3y+NfA....PRE4DQtJDXBB" ],
									"embed" : 1,
									"forceaspect" : 1,
									"id" : "obj-10",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 20.0, 164.0, 640.0, 437.073170731707364 ],
									"pic" : "sdttaxonomy.png"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontface" : 3,
									"fontname" : "Lato",
									"fontsize" : 40.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 15.0, 256.0, 54.0 ],
									"text" : "SDT examples"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"boxgroups" : [ 							{
								"boxes" : [ "obj-10", "obj-28", "obj-22", "obj-11", "obj-20", "obj-12", "obj-15", "obj-14", "obj-16", "obj-19", "obj-23", "obj-13", "obj-17", "obj-18" ]
							}
, 							{
								"boxes" : [ "obj-50", "obj-49", "obj-44", "obj-45", "obj-52", "obj-51", "obj-36", "obj-54", "obj-53", "obj-56", "obj-55", "obj-58", "obj-57", "obj-37", "obj-5", "obj-38", "obj-60", "obj-59", "obj-62", "obj-61", "obj-3" ]
							}
 ],
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
					"patching_rect" : [ 177.0, 155.0, 67.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontname" : "Lato",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"style" : "SDT_package",
						"tags" : ""
					}
,
					"style" : "SDTpackage",
					"text" : "p examples"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
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
						"rect" : [ 0.0, 26.0, 950.0, 714.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
						"style" : "",
						"subpatcher_template" : "",
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
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
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 42.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 124.0, 115.0, 22.0 ],
													"style" : "SDT_package",
													"text" : "prepend loadunique"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-81",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 151.0, 55.0, 22.0 ],
													"style" : "SDT_package",
													"text" : "pcontrol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-80",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 111.0, 22.0 ],
													"style" : "SDT_package",
													"text" : "sprintf %s.maxhelp"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-81", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-80", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 651.125, 650.0, 90.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p load.maxhelp"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 30.0,
									"id" : "obj-53",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 323.3125, 361.0, 428.0, 42.0 ],
									"style" : "SDTpackage",
									"text" : "sdt.demix~",
									"textcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 11,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 320.0, 87.0, 1086.0, 741.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 11,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 184.0, 72.0, 23.0 ],
																	"style" : "SDTpackage",
																	"text" : "append 150"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-9",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "stop" ],
																	"patching_rect" : [ 50.0, 130.0, 48.0, 23.0 ],
																	"style" : "SDTpackage",
																	"text" : "t i stop"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 159.0, 55.0, 23.0 ],
																	"style" : "SDTpackage",
																	"text" : "pipe 100"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-7",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 246.0, 117.0, 23.0 ],
																	"style" : "SDTpackage",
																	"text" : "textcolor 0. 0. 0. $1."
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "bang" ],
																	"patching_rect" : [ 50.0, 215.0, 48.0, 23.0 ],
																	"style" : "SDTpackage",
																	"text" : "line 0."
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 50.0, 100.0, 36.0, 23.0 ],
																	"style" : "SDTpackage",
																	"text" : "!= -1"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-50",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-51",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 329.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-50", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-51", 0 ],
																	"source" : [ "obj-7", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"source" : [ "obj-9", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"source" : [ "obj-9", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 512.166677333333382, 85.0, 42.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p fade"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-46",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 94.666666666666686, 442.0, 71.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-47",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 94.666666666666686, 524.0, 30.0, 30.0 ],
													"style" : "SDTpackage"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-38",
													"index" : 6,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 361.00001066666664, 17.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-37",
													"index" : 5,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 320.000010666666697, 17.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-36",
													"index" : 4,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 273.499967999999853, 17.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-35",
													"index" : 3,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 162.666645333333236, 17.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-34",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 110.833322666666618, 17.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-33",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 72.0, 17.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 72.0, 204.0, 77.0, 22.0 ],
													"text" : "route symbol"
												}

											}
, 											{
												"box" : 												{
													"coll_data" : 													{
														"count" : 4,
														"data" : [ 															{
																"key" : 0,
																"value" : [ "sdt.windflow~" ]
															}
, 															{
																"key" : 1,
																"value" : [ "sdt.windcavity~" ]
															}
, 															{
																"key" : 2,
																"value" : [ "sdt.windkarman~" ]
															}
, 															{
																"key" : 3,
																"value" : [ "sdt.explosion~" ]
															}
 ]
													}
,
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 162.666645333333236, 146.0, 99.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"precision" : 6
													}
,
													"text" : "coll SDT_gasses"
												}

											}
, 											{
												"box" : 												{
													"coll_data" : 													{
														"count" : 4,
														"data" : [ 															{
																"key" : 0,
																"value" : [ "sdt.envelope~" ]
															}
, 															{
																"key" : 1,
																"value" : [ "sdt.pitch~" ]
															}
, 															{
																"key" : 2,
																"value" : [ "sdt.spectralfeats~" ]
															}
, 															{
																"key" : 3,
																"value" : [ "sdt.myo~" ]
															}
 ]
													}
,
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 320.000010666666697, 116.0, 104.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"precision" : 6
													}
,
													"text" : "coll SDT_analysis"
												}

											}
, 											{
												"box" : 												{
													"coll_data" : 													{
														"count" : 3,
														"data" : [ 															{
																"key" : 0,
																"value" : [ "sdt.demix~" ]
															}
, 															{
																"key" : 1,
																"value" : [ "sdt.reverb~" ]
															}
, 															{
																"key" : 2,
																"value" : [ "sdt.pitchshift~" ]
															}
 ]
													}
,
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 357.0, 146.0, 119.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"precision" : 6
													}
,
													"text" : "coll SDT_processors"
												}

											}
, 											{
												"box" : 												{
													"coll_data" : 													{
														"count" : 2,
														"data" : [ 															{
																"key" : 0,
																"value" : [ "sdt.motor~" ]
															}
, 															{
																"key" : 1,
																"value" : [ "sdt.dcmotor~" ]
															}
 ]
													}
,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 273.499967999999853, 85.0, 112.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"precision" : 6
													}
,
													"text" : "coll SDT_machines"
												}

											}
, 											{
												"box" : 												{
													"coll_data" : 													{
														"count" : 2,
														"data" : [ 															{
																"key" : 0,
																"value" : [ "sdt.bubble~" ]
															}
, 															{
																"key" : 1,
																"value" : [ "sdt.fluidflow~" ]
															}
 ]
													}
,
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 110.833322666666618, 116.0, 95.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"precision" : 6
													}
,
													"text" : "coll SDT_liquids"
												}

											}
, 											{
												"box" : 												{
													"coll_data" : 													{
														"count" : 9,
														"data" : [ 															{
																"key" : 0,
																"value" : [ "sdt.inertial" ]
															}
, 															{
																"key" : 1,
																"value" : [ "sdt.modal" ]
															}
, 															{
																"key" : 2,
																"value" : [ "sdt.friction~" ]
															}
, 															{
																"key" : 3,
																"value" : [ "sdt.impact~" ]
															}
, 															{
																"key" : 4,
																"value" : [ "sdt.rolling~" ]
															}
, 															{
																"key" : 5,
																"value" : [ "sdt.scraping~" ]
															}
, 															{
																"key" : 6,
																"value" : [ "sdt.crumpling~" ]
															}
, 															{
																"key" : 7,
																"value" : [ "sdt.bouncing~" ]
															}
, 															{
																"key" : 8,
																"value" : [ "sdt.breaking~" ]
															}
 ]
													}
,
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 72.0, 85.0, 91.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"precision" : 6
													}
,
													"text" : "coll SDT_solids"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 320.000010666666697, 442.0, 71.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 168.000010666666697, 442.0, 71.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 168.000010666666697, 335.0, 171.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "dict.unpack description: digest:"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 94.666666666666686, 291.0, 92.333344000000011, 23.0 ],
													"style" : "SDTpackage",
													"text" : "zl.slice 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 72.0, 232.0, 72.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "prepend get"
												}

											}
, 											{
												"box" : 												{
													"data" : 													{
														"sdt.inertial" : 														{
															"digest" : "Physical model of an inertial mass",
															"description" : "Simulates a simple inertial point mass. Mostly used as exciter for modal resonators.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Solids interaction" ],
															"seealso" : [ "sdt.modal", "sdt.impact~", "sdt.friction~" ]
														}
,
														"sdt.modal" : 														{
															"digest" : "Physical model of a modal resonator",
															"description" : "Physical model of a set of parallel mass–spring–damper mechanical oscillators, with each oscillator representing a resonant frequency of the object.",
															"module" : "SDT",
															"category" : [ "SDT Objects", "SDT", "SDT Solids interaction" ],
															"seealso" : [ "sdt.inertial", "sdt.impact~", "sdt.friction~" ]
														}
,
														"sdt.impact~" : 														{
															"digest" : "Non-linear impact between one inertial and one modal object",
															"description" : "The sdt.impact~ simulates a non-linear impact, by computing the impact force from the total compression, that is the displacement between the contact points of the interacting resonators.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Solids interaction" ],
															"seealso" : [ "sdt.inertial", "sdt.modal", "sdt.rolling~", "sdt.crumpling~", "sdt.breaking~", "sdt.bouncing~", "sdt.scraping~", "sdt.friction~" ]
														}
,
														"sdt.rolling~" : 														{
															"digest" : "Impact model controller for rolling sound",
															"description" : "Compound model that simulates a rounded object rolling on a surface. The sdt.rolling~ acts as control layer for the impact model.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Solids interaction" ],
															"seealso" : [ "sdt.inertial", "sdt.modal", "sdt.impact~", "sdt.crumpling~", "sdt.breaking~", "sdt.bouncing~", "sdt.scraping~", "sdt.friction~" ]
														}
,
														"sdt.crumpling~" : 														{
															"digest" : "Impact model controller for crumpling sounds",
															"description" : "The sdt.crumpling~ generates a stochastic sequence of impacts to model curshing sound textures. It acts as control layer for the impact model",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Solids interaction" ],
															"seealso" : [ "sdt.inertial", "sdt.modal", "sdt.impact~", "sdt.rolling~", "sdt.breaking~", "sdt.bouncing~", "sdt.scraping~", "sdt.friction~" ]
														}
,
														"sdt.scraping~" : 														{
															"digest" : "Friction/impact model controller for scraping sounds",
															"description" : "Control layer for a probe sliding on a surface. The sdt.scraping~ generates a stochastice sequence of impacts to model scraping to sliding sound textures",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Solids interaction" ],
															"seealso" : [ "sdt.inertial", "sdt.modal", "sdt.impact~", "sdt.rolling~", "sdt.crumpling~", "sdt.breaking~", "sdt.bouncing~", "sdt.friction~" ]
														}
,
														"sdt.breaking~" : 														{
															"digest" : "Impact model controller for braking sounds",
															"description" : "The sdt.breaking~ acts as control layer for the impact model, by means of a stochastic sequence of impacts to model breaking events.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Solids interaction" ],
															"seealso" : [ "sdt.inertial", "sdt.modal", "sdt.impact~", "sdt.rolling~", "sdt.crumpling~", "sdt.bouncing~", "sdt.scraping~", "sdt.friction~" ]
														}
,
														"sdt.bouncing~" : 														{
															"digest" : "Impact model controller for bouncing sounds",
															"description" : "The sdt.bouncing~ acts as control layer for the impact model, and generates a stochastic sequence of impacts to model bouncing events.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Solids interaction" ],
															"seealso" : [ "sdt.inertial", "sdt.modal", "sdt.rolling~", "sdt.crumpling~", "sdt.breaking~", "sdt.bouncing~", "sdt.scraping~", "sdt.friction~" ]
														}
,
														"sdt.friction~" : 														{
															"digest" : "Non-linear friction between two resonators",
															"description" : "The sdt.friction~ simulates a non-linear friction, by computing the friction force from the relative velocity between the contact points of one inertial and one modal object.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Solids interaction" ],
															"seealso" : [ "sdt.inertial", "sdt.modal", "sdt.impact~", "sdt.rolling~", "sdt.crumpling~", "sdt.breaking~", "sdt.bouncing~", "sdt.scraping~" ]
														}
,
														"sdt.bubble~" : 														{
															"digest" : "Single, spherical bubble model",
															"description" : "Simulates the excitation of the gas trapped in the bubble, by means of an exponentially decaying sinusoidal oscillator.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Liquids" ],
															"seealso" : [ "sdt.fluidflow~" ]
														}
,
														"sdt.fluidflow~" : 														{
															"digest" : "Stochastic population of bubbles",
															"description" : "Simulates the acoustic behavior of a population of bubbles to render water dripping, waterfalls, burbling streams and other liquid phenomena.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Liquids" ],
															"seealso" : [ "sdt.bubble~" ]
														}
,
														"sdt.windflow~" : 														{
															"digest" : "Turbulence model of gases impacting against a surface",
															"description" : "The sdt.windflow~ simulates the turbulence caused by the impact of the air molecules on a large solid surface.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Gases" ],
															"seealso" : [ "sdt.windcavity~", "sdt.windkarman~", "sdt.explosion~" ]
														}
,
														"sdt.windcavity~" : 														{
															"digest" : "Turbulence model of gases passing through cylindrical cavities",
															"description" : "The sdt.wincavity~ simulates the resonant behavior of air motion in hollow objects, such as tunnels, pipes, valves.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Gases" ],
															"seealso" : [ "sdt.windflow~", "sdt.windkarman~", "sdt.explosion~" ]
														}
,
														"sdt.windkarman~" : 														{
															"digest" : "Turbulence model of gases flowing across thin objects, such as branches or wires",
															"description" : "The sdt.windkarman~ simulates the singing or howling sound produced by the repeating pattern of swirling vortices caused by the unsteady separation of flow of a fluid around the object.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Gases" ],
															"seealso" : [ "sdt.windflow~", "sdt.windcavity~", "sdt.explosion~" ]
														}
,
														"sdt.explosion~" : 														{
															"digest" : "Blast wave model for explosion sounds",
															"description" : "The sdt.explosion~ simulates the shock wave produced by an object travelling in the air at supersonic speed.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Gases" ],
															"seealso" : [ "sdt.windflow~", "sdt.windcavity~", "sdt.windkarman~" ]
														}
,
														"sdt.dcmotor~" : 														{
															"digest" : "Model of DC brushed electric motor",
															"description" : "The sdt.dcmotor~ simulates the acoustic contribution of rotor, gears and brushes in a DC motor.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Machines" ],
															"seealso" : [ "sdt.motor~" ]
														}
,
														"sdt.motor~" : 														{
															"digest" : "Model of a combustion engine",
															"description" : "The sdt.motor~ models the behavior of the engine block (four-stroke cycle) and simulates the acoustic interactions in the exhaust system, by means of a series of interconnected digital waveguides.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Machines" ],
															"seealso" : [ "sdt.dcmotor~" ]
														}
,
														"sdt.demix~" : 														{
															"digest" : "Transient / tonal / residual component separator",
															"description" : "The sdt.demix~ separates an audio signal in its three main components, percussive, harmonic, and noisy.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Processors" ],
															"seealso" : [ "sdt.reverb~", "sdt.pitchshift~" ]
														}
,
														"sdt.reverb~" : 														{
															"digest" : " A computationally efficient yet maximally diffusive matrix reverb",
															"description" : "The sdt.reverb~ implements a Feedback Delay Network (FDN) reverberator. Useful to enhance the texturization of acoustic elements, such as turbulence and scattering.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Processors" ],
															"seealso" : [ "sdt.demix~", "sdt.pitchshift~" ]
														}
,
														"sdt.pitchshift~" : 														{
															"digest" : "Frequency domain pitch shifter",
															"description" : "Frequency domain pitch shifter",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Processors" ],
															"seealso" : [ "sdt.reverb~", "sdt.pitchshift~" ]
														}
,
														"sdt.envelope~" : 														{
															"digest" : "Envelope follower",
															"description" : "Envelope follower based on a one-pole lowpass filter with different attack and release time.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Analysis" ],
															"seealso" : [ "sdt.pitch~", "sdt.spectralfeats~", "sdt.zerox~", "sdt.myo~" ]
														}
,
														"sdt.pitch~" : 														{
															"digest" : "Fundamental frequency estimator",
															"description" : "Pitch detector based on the Normalized Square Difference Function. It returns the pitch in Hz and the pitch clarity. ",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Analysis" ],
															"seealso" : [ "sdt.envelope~", "sdt.spectralfeats~", "sdt.zerox~", "sdt.myo~" ]
														}
,
														"sdt.spectralfeats~" : 														{
															"digest" : "Spectral analyzer, extracting several audio descriptors",
															"description" : "The sdt.spectralfeats~ provides statistical moments of the spectrum and other spectral information, including the magnitude, centroid, spread, skewness, kurtosis, flatness, and flux.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Analysis" ],
															"seealso" : [ "sdt.envelope~", "sdt.pitch~", "sdt.zerox~", "sdt.myo~" ]
														}
,
														"sdt.zerox~" : 														{
															"digest" : "Zero crossing detector.",
															"description" : "Returns the normalized zero crossing rate of an input signal. Reports how often an audio signal changes from positive to negative and vice versa, for a rough estimation of noisiness.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Analysis" ],
															"seealso" : [ "sdt.envelope~", "sdt.spectralfeats~", "sdt.pitch~", "sdt.myo~" ]
														}
,
														"sdt.myo~" : 														{
															"digest" : "Myoelastic vocal activity detector",
															"description" : "The sdt.myo~ is an analysis tool suitable to detect myoelastic vocal phenomena, that is non-voiced sounds such as vocal fry, palate grind and bilabial trills.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Analysis" ],
															"seealso" : [ "sdt.envelope~", "sdt.spectralfeats~", "sdt.pitch~", "sdt.zerox~" ]
														}

													}
,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 4,
													"outlettype" : [ "dictionary", "", "", "" ],
													"patching_rect" : [ 72.0, 262.0, 87.0, 23.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"parameter_enable" : 0,
														"parameter_mappable" : 0
													}
,
													"style" : "SDTpackage",
													"text" : "dict @embed 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-48",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 168.000010666666697, 524.0, 30.0, 30.0 ],
													"style" : "SDTpackage"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-49",
													"index" : 3,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 320.000010666666697, 524.0, 30.0, 30.0 ],
													"style" : "SDTpackage"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-11", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-46", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-12", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-48", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"midpoints" : [ 81.5, 155.0, 81.5, 155.0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"midpoints" : [ 120.333322666666618, 197.5, 81.5, 197.5 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"midpoints" : [ 282.999967999999853, 197.0, 81.5, 197.0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"midpoints" : [ 366.5, 196.5, 81.5, 196.5 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"midpoints" : [ 329.500010666666697, 196.5, 81.5, 196.5 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"midpoints" : [ 172.166645333333236, 196.5, 81.5, 196.5 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"order" : 1,
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"midpoints" : [ 81.5, 65.5, 521.666677333333382, 65.5 ],
													"order" : 0,
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"order" : 1,
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"midpoints" : [ 120.333322666666618, 65.5, 521.666677333333382, 65.5 ],
													"order" : 0,
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"order" : 1,
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"midpoints" : [ 172.166645333333236, 65.5, 521.666677333333382, 65.5 ],
													"order" : 0,
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"order" : 1,
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"midpoints" : [ 282.999967999999853, 65.5, 521.666677333333382, 65.5 ],
													"order" : 0,
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"order" : 1,
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"midpoints" : [ 329.500010666666697, 65.5, 521.666677333333382, 65.5 ],
													"order" : 0,
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"order" : 1,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"midpoints" : [ 370.50001066666664, 65.5, 521.666677333333382, 65.5 ],
													"order" : 0,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"source" : [ "obj-46", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"midpoints" : [ 521.666677333333382, 497.5, 104.166666666666686, 497.5 ],
													"order" : 2,
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-48", 0 ],
													"midpoints" : [ 521.666677333333382, 498.5, 177.500010666666697, 498.5 ],
													"order" : 1,
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"midpoints" : [ 521.666677333333382, 498.5, 329.500010666666697, 498.5 ],
													"order" : 0,
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "SDTpackage",
												"default" : 												{
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
									"patching_rect" : [ 5.0, 698.0, 93.0, 23.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"style" : "SDT_package",
									"text" : "p display_model"
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"data" : [ 27060, "png", "IBkSG0fBZn....PCIgDQRA..APO..D.8HX....vxV+sh....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6ceGbbbde+3+80an2ANhdkDDfDr.BBBRSPBVDEknrhs7jwwNyHWxHGmYxDYIaGqQV1dribFKm3zriawR1I1IRIxRhRTjDr.VAI.HDIZjD8NNzO.bEb0e+A+A7kjh31m6vd6s2hOulAST78b69.v6126yy9Tjcz+uE7Bd1ysNSHaC146CKgPHDBYEHOTWAHDBgPHqdTfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.JM5Zbd+fN8XC.YJrx6GWBgPHDtXwsJLsGc75wTkLOHEkKvqGS9lRaG+U38C5o48iHgPHDBaLmzVQ+47375wTm0oP925WwqGS9F0k6DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.JC0UfvEJUpDwGe7Ht3hCZ0pEpUqd4e..rZ0JrXwxG6GOd7Dhq4DBgPVKfBzeDhHhHP94mOxO+7Qd4kGRN4jQzQGMjISlecb73wCFZngPO8zC5t6tQO8zCFd3ggWudCR0bBgPHqUQA5++Sud8X6ae6npppB4me99c38ihb4xQFYjAxHiLvd26dA.fc61Qmc1It7kuLZrwFgSmNW0mGBgr1U+82OFbvAWwWOwDSDEVXgBXMhDprlOP2fAC3odpmB6cu6c4tOOXRqVsnjRJAkTRIvhEK3pW8pnt5pCCLv.A8yMgPjdlYlYPO8zyJ95d73gBzWiXMaftRkJwANvAvS7DOALXvPHoNXvfATSM0fZpoFzWe8g+6+6+azd6sGRpKDBgPBuslLPu7xKGOyy7LHwDSLTWUVVVYkE95e8uNt7kuL98+9eOle94C0UIBgPHgQVSEnqToR7k+xeYricriPcUYEsqcsKroMsI7G9C+AbwKdwPc0gPHDRXh0LyCcCFLfW7EeQQcX9RhHhHvW7K9EwW6q80DjmqOgPHjveqIZgdBIj.d9m+4QZokV.89c61MLYxDFZngvvCOLFarwfUqVgMa1fc61gWudgACFV9mXiMVjat4hbyMWDYjQFv06RJoD7BuvKfW60dMX2t8.93PHDBQ5SxGnmTRIgW5kdIDczQ6WuOKVrflatYzTSMgVZok.d5kkbxIiBJn.TUUUghJpH+98WPAEfW7EeQ7i9Q+HX0p0.pNPHDBQ5SRGnqPgB7bO2y4Wg4iN5n3+8+8+E23F2.tc6dUWGLYxDLYxDt3EuHRIkTP0UWMppppPDQDAyGibyMW7M9FeC7C+g+PXwhkUcchPHDhzij9Yn+zO8SibxIGlJ6ryNK90+5eM9leyuIZngF3kv7G1XiMF98+9eOd9m+4wYNyY7qULtLyLS7U+peUduNQHDBQZPxFnugMrA73O9iyTY6pqtvK8RuDpqt5DjkkU61si23MdC789deOLzPCw76aCaXCn5pqNHVyHDBgDtRRFnqPgB7E+heQlV9VangFvq9puZHYde2c2ciW9keYbsqcMleOelOymAwEWbAwZEgPHjvQRx.8st0sh3iOdNKWSM0D9W9W9WBoqm5tc6F+ze5OEW5RWhoxqSmN7rO6yFjqUDBgPB2HICzqolZ3rLyLyL3W8q9UBPsgad85E+hewu.m8rmkoxWRIkfJqrxfbshPHDR3DIWfd5omNmaDAd85E+7e9OWzMhwei23MPmc1ISkkkaZgPHDxZGRt.88rm8vYYZrwFEkaBJK0R8EWbQNKat4lKRJojDfZEgPHjvARt.cV1l.EyqQ5lLYB+O+O+OLUVpa2IDBgrDIUftVsZQ5omtOKiYylQKszh.UiBL0VasLMc1n.cBgPHKQREnmSN4.4x88uR0We8viGOBTMJvUWc0wYYRN4jQt4lq.TaHDBgH1IoBzyJqr3rLCN3fA+JBO3xW9xLMc5JnfBDfZCgPHDwNIUfNKqY6yLyLBPMY0yhEK3F23FbVtXiMVAn1PHDBQraMWf9ryNq.TS3GrDnGSLwH.0DBgPHhcRpcasnhJJNKiYylEfZB+XzQGkyxHVZgtGOdfMa1fMa1Vduheo+aEJT.Od7.850Cc5zAc5zs7+sVsZ4bbOPBes3hKholZJLyLy.61sCGNb.mNcBud8B4xkCEJT.850CCFLr7OQDQDPgBEg5pd.yoSmeruKrz+Wud8BUpTA0pUC0pUinhJJDarwhHiLRlVppIDeQREnyxFqR3T3gISl3rLgx.cmNchAGbPze+8igGd3.ZvFpToRjd5oirxJKjVZoEVegbx8LyLyfd5oGLv.CDP6QBJTn.ojRJHszRCokVZ901ebnhMa1Pe80G5s2dwjSNoe+9UpTIRJojPVYkERO8zgFMZBB0RhTmjJPmkKdDUTQE1zJc61siYmcVe1s5BcWt6xkKLzPCg95qOL7vCup2lYc4xE5s2dQu81KToR0CDtKT270jSNIt3Eu3JdCIImbxnpppRPpKbo81aGczQGq3qWZokh7yOe+93dhSbBX0p0U70OvAN.m8.1.CL.t0stEld5o86y+8ysa2X3gGFCO7v..HwDSDkUVYHkTRYUcb4aKt3hXfAF.81auXrwFaUcrb4xEFYjQvHiLBjISFRO8zQokVJsQLQ7KRp.84laNNKSRIkTXyHcG.nkVZAYjQFq3qO1XiAYxjIHa6q8zSOnwFaD1saOnb7c5zI5omdPO8zChLxHwN1wNPZokVP4bc+lXhI74MCZylsfdcfUiLxH9bIK1gCGAzwchIlvmutu58ESlLgFarQL0TSEPmatLwDSfScpSgjSNYTVYkExWgD850K5ryNQSM0TPYicxqWuXfAF.CLv.HiLx.kUVYgE8RAIzSREnyRKu27l2LZpolDfZC+3W9K+kg5p.La1Lpu95Y5Q.vWle94Qs0VKxLyLw1291gd85EryMgMd73AM2byns1ZSPNelLYBe3G9gn3hKFaYKaIj7Lmmat4vUu5UEruKLv.CfQGcTrm8rGXznQA4bRBeE97.kY.KsPeKaYKzyokQtb4BM2by38du2SPCyue82e+3cdm2AczQGgEKHPqUX0pUbhSbBAKL+90VasgKcoKspebO9COd7f1ZqsPx2Eb5zIN6YOqnb+mfHtHoBz6omd3rLQDQD3y7Y9LBPsI7lc61wINwIPKszRHOH0oSmngFZ.m8rmEtb4JjVWH2aMR3jm7jAstXmE81aun1ZqMnzk2OL2tciye9yilZpIA8lHted85EM1Xi3pW8pg7uORDujTc49vCOLLYxDRN4j8Y4NzgND5niNPyM2r.UyBuX0pUb5Se5.ZvCpQiFDczQu7TQRud8PiFMvtc6vhEKvpUqvhEKvrYy98EiGYjQvYNyYv9129fJUp765FY0ypUq3Tm5TLO50UqVMRN4jefornRkJwhKtHra2Nra2NLa1LFe7w86wAhISlvMtwMvN1wNBjeUXhGOdvEtvEXZuU3gYvfADYjQ9.SIOYxjs7zXaoelat4X96Bc1YmXt4lC6cu6kFI7jOFIUfN.PSM0DNxQNBmk6K8k9R3kdoWZUOhbkZVXgEvoO8o8qoajLYxfQiFQ94mOLZzHSiNcWtbgAFX.zYmc5WcgoISlPs0VK1+92OTqVMyuOxpmWudwktzk37yFZ0pEYjQFHiLx.ojRJL84A61sigFZnkmBjr5N24NHyLyLnLB383wCtzktjeMHZkKWNxLyLQgEVHyCdO2tcigFZHzUWcgQFYDNuwFSlLgyd1yhCcnCEVMMbIAeRt.8FarQlBzMXv.9pe0uJ9I+jeRXyzXKXa94mGm5Tmxmih56mRkJwF23FQd4kmeOn0TpTIxImbPN4jClat4vcu6cQGczASsRaoQ8bM0TCzpUqecdIAt1ZqMeN8rTnPA13F2HJt3hgRk92kVzpUKxKu7Pd4kGFYjQP80WOVXgEX58dkqbE7jO4S52mSewqWu3JW4Jnu95ioxqToRTRIkf7xKOnSmN+5boPgBjYlYhLyLSX0pUzc2ci1ZqMeNiElXhIvst0svl27l8qyEQZSxc6cc2c2n0Vakoxlat4hW8UeUTSM0rleUZxkKWn1Zqk4v73iOdbzidTTZoktpGA5QEUTXaaaa3vG9vHxHijo2yzSOMpqt5DjoqG4dc09G8QezJ95omd53XG6XXSaZSq5f0zRKMbricLlmO8KrvB31291qpy4Cq0VakowjCv8VxoOxQNBJojR76v7Gld85QIkTBdhm3I3rE9szRKX7wGeUc9HRKRt.c.fe2u62w7fWQud83y849b367c9NHmbxIHWyDuZpolXpa1kISFJojRvi8XOFSK0t9iDSLQbzidTjWd4wT4MYxDuegbxiVas01JNXrJszRQ0UWMhHhH3symBEJPEUTAyaOvrF9xh4medbqacKlJaVYkENxQNBuu.OYvfAbnCcHr4Mu4UrwFd85kFGPjGfjLPezQGE0Vas906IyLyDu7K+x3a9M+l3fG7fHgDRHHU6DeFczQwctyc3rbxjIC6ae6CkUVYAsmcmJUpPkUVIpnhJXp723F2fdjIBfUZeEX6ae6Ast8UlLYXm6bmXcqacbV1YmcVdamT7ZW6ZL0ffRKsTrm8rmf1.zTlLYnzRKEG7fGbEmpslLYJfVpYIRSRx.c.f25sdKzc2c6WuGYxjghJpH7Y+reV7Zu1qgu6286hm5odJjat4JYG7INb3.W4JWgoxVUUUIXKtEETPALET31sab4KeYZp7DBTd4ki0u90GTOGxkKGUTQELs1QvGsRu2d6EiLxHbVtryNaA64WmbxIi8rm8rhsTmk5KYsAoYJEtWP0O9G+iWUqwxYlYl3S9I+j3ke4WF+re1OCesu1WCOwS7DH+7yWxr3zzXiMxzyMeaaaaH6ryV.pQ++TZokhBKrPNK2jSNYHYANYsrzSOcTTQEIHmK850ihKtXNK2pcIc1gCGngFZfyxEe7wiJqrxU04xekd5oisu8sKnmSR3GI2nb+9svBKfezO5Ggu427ah3iO9U0wRiFMnjRJAkTRI.3de4uyN6D2912F24N2Ac2c2gcK5IyO+7nqt5hyxs90udrgMrAAnF8wUd4kCKVrv47.t0VaEEUTQz7SW.nSmNryctSA8bVbwEiN5nCeNesme94ga2tC3a19t28tbtOEnUqVTc0UGRtg9hJpHrvBKPqXbjUjjNPG3dSuiW9keY7W7W7WfRKsTd63pVsZTbwEubKGb3vA5t6tWNfuqt5RPVEqVMXY.kYvfATVYkI.0lGMYxjgJpnB7G+i+QedCSNc5Dc2c2BVqFWKaG6XGB9zETkJUvnQi9bZj40qWL6ryFv27NK2b6l27lCo6q.kUVYn+96m4YiBYsEIefNv8Zo9q8ZuFN5QOJ9jexOIuNeUWhZ0pw5W+5W9YJ5xkqkC3u8suM5pqtB3cBqfAmNcxzEv1912dP4uW9C850iRKsTbiabCeVt6bm6PA5AYQGcz9b2+KXJ8zSmy4EdfFnO93iy4dAQTQEEyy.ifEEJTfxJqLboKcoPZ8fHNslHPeIG+3GG0We83IexmDUUUUA0tMSoRknvBKDEVXg3XG6XKuueuT.+su8sCocQeO8zCm8fPZokVH6h2OrMrgMft5pKedQWylMiQFYDAYKWcsJVdV1AKrLfLmc1YCniMK2bavb1c3OxN6rQGczQHcszmHNE5+zo.axImD+5e8uFe8u9WGm4LmgocnM9fRkJQ94mOdhm3IvK7Bu.9m+m+mwW5K8kPIkTRH4hDrzc6hoAgib4xYp9PyK8fGc5zI3CLx6mZ0p4rq9sZ0peebc4xEms7Ot3hCYlYl98wNXPlLYXqacqg5pAQDZMUKzueSLwD3Mdi2.+1e6uEEVXgn7xKGacqak2WfHVI50qGUUUUnpppBKrvBngFZ.W6ZWC2912Nnu5mM93iy4b2NkTRAQGczA05g+JszRCQDQD9bIAcngFBVsZk1+zCBxN6rC4ytCc5z4yAtVfLtUFXfA3r2xXcAtQnjRJov42EHq8rlMPeId85c4t.+29a+snfBJ.ae6aGaaaaCwFarBRcHhHh.UWc0n5pqFyN6r35W+53xW9xLuNR6uXYp7EpeVgOJxjIC4lat3l27l9rblLYJj1RRopfwFfh+RmNc9bAjIPBzmXhI3rLhkVme+xLyLooqI4ArlOP+940qWbm6bGbm6bG769c+NjZpohBKrPTTQEgBKrPDWbwEzqCwDSL3fG7f3fG7fn4laF+e+e+eXfAFfWOGbs9OqRkJQyyN+gwRf93iONEnyyjISFmaKwBAt54k.IPmqUZsDSLQQYO9jUVYQA5jG.En6CiN5nXzQGEm+7mG..IkTROP.ehIlXP87WVYkgMu4MiFZnA7lu4axKaDCd85kyVjjc1YGxGY6qjHhHBjZpothKEo.beCKD+WBIjfnXN9y0leh+NPSc61MmKYrhwVmCbuE3Fpa2I2Ow4UsEoFe7ww3iONt3EuH.t2.konhJZ4.9fQWRJSlLTd4kiRKsT7FuwafKe4KupNdyLyLb1JlzSO8U04HXacqac9LPelYlANb3f1uz4Qq1ElI9BeGnOyLyv4xFrXdVSjVZog6d26FpqFDQBJPeUX5omFW4JWY40B8niN5GHfOszRi21VV0pUK9xe4uLJszRwu427afMa1BniCKsdUrbw6UBK8LxDSLgfstyuVfXoKmWsaOoOLtl5WxkKm22UA4SBwiAjD9fBz4QlMaFW6ZWCW6ZWC..QFYjK2E8aZSahy82XVTQEUfLxHC7C9A+.l1tSeXb0c6QFYjB9p.l+J1XiExkK2msrhBz4W7cPZfhu61etBziN5nEEy87UhPMqbHgGn.8fn4medzXiMhFarQ769c+NXznQTVYkgxJqLjSN4DvWnHszRCuvK7B3Ue0W0um2sb0x9vgsMVEJTf3hKNeNXlBzdvf7nIVBz4ab84DgZltDnD60OhvhBzEPCO7vX3gGFG+3GGQEUTnrxJCG5PGJfZIYlYlId9m+4we+e+eOVbwEY98wUYC1CzO9RBIjfOCz8m+lP3lTMPmqkiYwdfoJUpnAFGYYh29RRhat4lC0UWc3a8s9V3e+e+eGlLYxuOF4kWd3YdlmwudObEzYvfA+tdDJvU8jBz4W70XAQrgq.cwxXGvWBGpiDgAEnGh40qWbkqbE7M9FeC7q+0+Z+d8Yde6ae90bFmqftvkQFtFMZ74qSA5DVvUfd3v2GBGpiDgAEnKR3wiGTWc0gW3EdA7lu4ax4ToYIxkKG+4+4+4LUV2tcC2tc6yxvUPoXAEnS3CRg.cwv5C.QbfBzEYb61MN9wON9m9m9mXNTJu7xioMtDVNdTfNYsBVtA2vgvxvga5fHLn.cQplatY7C9A+.lClJu7x4rLrrnaDp27MXEW0SOd7Dz2jaHg23JLG.gEeFJb46rjfOJPWDqu95C+leyugoxVZokxYqIXo0FAxZgcn.W0SkJUJYGHWD9gXc4M1e4uqNdDoqv9OQavfADQDQrhutCGN3bsZVL6JW4JnvBKD6cu60mkSqVsn3hKFezG8QqXYXo6zc3vQXwHcmqdtHb4QG3unKdyejKWNTpToO+aJWOicwfvg5HQXD1GnevCdP7TO0SshutKWtv29a+swPCMj.Vq3Wu0a8VXW6ZWb1B6RKsTeFnKWtbnRkJe151vkm8LWWDSpFnSW7leoVsZeFnGNziUzmIHKIruK24J.RoRkH0TSUfpMAGyO+735W+5bVNVVC1kJClr0psPObHfIbBWCnrvgvR5yDjkD1Gna2tcNKiXdyUfUm4LmgyxDczQyYY3Jnat4li45TnDW0SoZfd3P.S3DtBzCj8KAgV3PcjHLB6CzYoEkrDzI10e+8y4HtkkabgqKf4qkSUwDtpmRw.c2tcSsFimw0mSD6i+Fa1rwTiZHqMD1GnuVoE5tb4BlMa1mkgkeO80.HDf6ciMw.mNchYmcVeVlvgA1m+hqemI9Ot9bhX+u4h8a3fHrB6CzWqzBc.t+xqJUp3rE3bsEtZ2tcQ+F8.K8h.erU0J1PW7l+w03NYt4lSTOyBnOSPteg8A5rzBcox9hMK6S4bsXYvRPmXuU5bU+jKWNSCPPVIVVbQD6sVLbDKaWvh4PSwbciH7VSDnmbxIizSOcAn1Dbw0Eeb4xEmA5QFYjbtUX1e+8620MgTe80mOe8DRHA+Z0yhqxJVdFkSO8zg5pfjSTQEEmSGTw5Td0iGOX3gGNTWMHhHg8A5iN5nvlMabVtssssI.0lfmXiMVNuvCWOi8kvUqzGbvAEMgXOrolZJNaop+1c6b82UwveKb5zonumSBGISlLDWbw4yxHVuA2wFarvloYJQXD1Gn61sazd6syY4XYyKQLikPJV69MtNVd85E8zSOLcrDZc0UWbVF+MPmqwcvhKtXHua2Gd3gYZsGm3+3pmulat4DkcsMW8TEYsmv9.c.fVZoENKiQiFCqWfY14N2Imkg0tFLszRiyxvRvoPysa2n2d60mkQgBE7dKz850aHuU5CLv.gzyuTVJojBmkQr0JcOd7fAGbvPc0fHxHIBzu0stESk6S8o9TA4ZRvQzQGMpppp3rbbE1c+GOttH1ryNKFczQY53IT5t6t4bgUImbxwu2NIYo7gx4mua2tEsOGWofTSMUNGWIc2c2hpdHo2d6k5tcxGijHPepolBiLxHbVtssssEV9rzOzgNDS6TZ24N2g4iYQEUDmk45W+5viGOLeLClVbwEQyM2LmkikeudX50qmyxDJe90c2c2h5oNU3N4xkibyMWeVFKVr3We+JXxkKWL8cAxZORh.c.1ak9m6y84X5B3hEwEWbXe6aebVt96ue+pE0qacqiyEUCylMiN5nClOlASM2byb1hjjSNYDarw52Ga0pUy4Bty3iOteeb4Ctb4B27l2LjbtWKIu7xiyxzRKsHJV5cau81gUqVC0UChHjjIP+rm8rL0JlXhIF7m9m9mJ.0nUOsZ0h+l+l+FN6NP.fqd0q5WGa4xkiBKrPNK2Mu4MC4W7XpolB28t2kyxEHsNeIbMRmmXhIfEKVB3ief51291LMKNHqNQEUTbN1KVbwEQas0l.UidzrYyFZs0VCo0Ah3kjIP2jIS3Tm5TLU18rm8fO8m9SGjqQqNxjICekuxWgo4OuUqVQc0UmeeNxO+74bNX6xkKbkqbkPVWu6vgCb4KeYNKmACFVUq0.bsPz30qWzYmcFvG+.gCGNnKdKfXoU5s0VagrwSgGOdvku7koG+BYEIYBzA.dm24cXdtXezidT7rO6yBYxjEjqU9OEJTfuvW3KfMsoMwT4O4IOY.0JZMZzvz4XjQFAW4JWQvm5Vtc6Fm6bmioUHsssssA4xC7ONyUKzA.5ryNErAFkWudwEu3EEEcw6ZE4jSNb9Ha73wCN24NWHoWqpu95YZrBQV6RREna2tc7lu4axb4+DehOA9q9q9qXZ.mIThKt3v25a8svt28tYp7yO+73jm7jA74q3hKFIlXhbVtd5oGzTSMEvmG+0RAZlLYhyxlc1YiLyLyU04KkTRgycdKa1rw7X0X0polZhVEvDXxkKmooGpMa1X9Q7wWt4Mu4JNUREiMJgDZHoBzA.t3Eunesnnr0stU78+9eeQwBOSokVJ9deuuGmi3162q+5u9p5YrJSlLrqcsKlVpTau81wMu4MC5sT2sa23pW8pLM2q0oSGJu7xW0mSEJTfbxIGNKWqs1JlZpoV0mOeo6t6dEWrjjBKgwhYIjPBLM1Rld5owEtvEDjsy1k9d2JImbxgo84AhzmjKPG.3m+y+4Xt4li4xmbxIiu5W8qhW9keYje94GDqYOZYmc13q809Z34e9mmyQa886ZW6ZngFZXUe9iJpnvV25VYpr27l2D0VasAstbb1YmEevG7ALuv1TYkUxa684r7LT850Kpqt57qOewJud8hVasUbkqbkG4qGQDQfsrksv6mWxCprxJioAh5PCMD9fO3CX9w74ura2NN6YOKZrwFWwxHWtblezbDoOIYf9niNJd0W8Uw7yOue89xM2bwK8RuDdwW7EQ0UWcPcaWUlLYnfBJ.+0+0+03UdkWAkTRI906erwFCu9q+57V8ovBKj4URuQGcT7du26w6qdV2912Fu+6+9LuLaVPAEvq6jdwFarLs6asvBKfSbhSvqSkMGNbfyctygabiarh8.xt10tfRkJ4syI4QSsZ0XG6XGLUVylMi2+8eedeYXc3gGFu669tbtfBUd4k6WMBfHsoXSaZSuRntRDLL+7yiVZoETd4k62qbXIkTRXyady3vG9vnjRJAQDQDvoSmvpUqqpAEkBEJPQEUDNxQNBd1m8YwAO3ACnki1olZJ728282wqsRTlLYHiLx.SN4jLsen61saze+8iImbRnRkJDYjQFPOKOWtbg95qOTe80iN6rSl6N+bxIGTQEUv6O+vXiMVl5c.2tcid5oGXwhEDczQGv8RvRKmsW7hWzmid5hJpHTXgEBmNc5y0FfzRKs.Zufmq45dgEVnnnacme9484iTSkJUXCaXCq5yyR+aJKiiAOd7f96ueL0TSA0pUGveWXoky0lZpIbyadSNeF84latnrxJC.2az2uRkOlXhYUOFSB2rngzf4XKfWOlpbZCwaZ02inASR5a2evAGD+ve3ODeiuw2fyEQkGEYxjg7xKuk6JVud8holZJL5nihQFYDL1XiAKVr.61su7OKt3hPgBEvfACvfACH93iGYjQFHSWjVXJ...H.jDQAQ0LyDFMZbUO.7lc1Ywq9puZPYqzTkJUX+6e+37m+7LOfrFd3gwvCOLzpUKxM2bQd4kGhJpn74Ez73wCld5oQ2c2M5omd76mCYAET.1wN1QPYv.kPBIfMtwMxz9CfGOdPmc1I5pqtP5omNLZzHRJoj372ef60xtkdubMR1otZOznnhJBtc6l4AC5PCMDFZngPDQDAJrvBQ1YmMmKhUd73AlMad4uKv5dFPpolJpnhJXprj0NjzA5.2aSs36+8+93K9E+hLMnm7EYxjgDRHAjPBI32cQNe3N24N3m8y9YA08EaEJTfpqtZbgKbA+ZCAwtc6ns1ZCs0VaPlLYPud8vfACPud8PiFMvtc6vhEKvpUqvlMaA7.qaCaXCA8ku2RKsTL3fCxzzkC3d2n2.CLvx+8RiFMH5niFpUqFZznApToBtb4BVsZEVrXAVrXg4QHcrwFKpt5potZODo3hKFd73wuVpUWXgEPSM0DZpoldfat2fACPlLYvlMavpUqvpUqAzl9SwEWL1xV1BM51IeLqItJwvCOL9te2uK1+92O9TepOESC3EwDOd7f29sea7du26IHyEb4xki8rm8f5qu9.ZWWyqWuKGbwm1zl1jfL.fV5lZps1Z86wgAv8VQw3imudVYkEprxJov7Prkt48.Y8S2sa2Xt4liWd7XJUpDUVYkHqrxZUerHRSqYtRgWudQs0VKZrwFwm8y9Y4ko5jPn81aGu4a9lB99Stb4xW9hGW+5WOnLptYUBIj.1wN1Amqla7oHiLR7XO1igyblyDzmlZOJaYKaAabiaTvOujGsRJoDjRJofqd0qxbO2vmhHhHP0UWc.sWEPV6XMSf9Rlc1Yw+5+5+Jpqt5PM0TCJszRYZNXKzZs0Vwe7O9GE7kazGVZokFdhm3IPas0FZokVDzsPR0pUisrksf7yO+PR2KpUqVbvCdPboKcIAaumVsZ0XO6YOLsm0SDVIlXh3nG8nn0VaE25V2RvVNjyLyLQEUTAuM8LIRWq4BzWRqs1JZs0VQjQFIpnhJvt10tP1YmcHsNM6ryhlZpIboKcIAuE49hBEJPokVJxImbPiM1HFbvACpc8+RKxKkUVYg7QVsJUpP0UWMFarwvMtwMBZqi2JUpDETPAn3hKNr6QBsVhb4xQokVJxLyLw0u908qc3P+gZ0pQ94mOJnfBPjQFYP4bPjdVyFnuj4medb5SeZb5SeZjVZogctychBJn.jQFYHHaypiO93nolZBM1Xin6t6VvWuz8GQDQDXu6cuXwEWDCN3fKuksxGsTQoRkvnQiHyLyDqacqSz8biSIkTvQNxQvfCNHZqs1vDSLAu7uUQEUTHqrxBEUTQLcyK5zoC4kWdqXOkjRJoDP0CecyrxjISzLWm0oSmOqqAy0NhG97bfCb.X0pUzWe8g95qOd4l8hKt3PQEUDxN6r8qdNrvBKbEerXzpK3ZGx97e9Ou3MAIDKojRBYlYlHyLyDYkUVvnQivfACOxt9xgCG9b9taylML7vCigFZHL3fChgGdXL3fCxzb9VLygCGXvAGDCMzPvhEKvlMavlMaOPHuBEJdf.HEJT.c5zAc5zgHiLxkmxWhsPbewgCGXrwFa4ounUqVYZjqqSmNDe7wu7zYjdlnRGKrvBnu95CiM1XK+8f6eTr+veO.3dsDeoYNiQiFYZeUfvMyIsUzeNONudL0YcJj+s9W40iIeiBzC.KEHoWu9k++t3hKB850COd7fEWbwGXtoa2tcA8YOKFr3hKt7zyQmNcXwEWb4Pb+cg9IbgSmNgc61W9B4d85EJTn.pUqFpUqFZ0pMj+HDHBKOd7.61sCqVsBOd7r7M5pQiFnQiFAoW.WKZsZfd3SShDQb61MVXgEB6accvzRWvJlXhITWUDLpToZ4UMOBA3dOyc850SA2DAgjbsbmPHDBYsFJPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.j84++F2KeePOZzCfTUYkuOrDBgPHbZQOxgEOp30iobudQLpbvqGS9lxogdd+fZHxXQ7Fzw6GWBgPHDxiF0k6DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhDfRitFi2OnSMZ+vqbZ+PmPHDhvyhG0XZO76VCtRYdPpJliWOl7Mk1N92k2On0x6GQBgPHD1XNosh9y4w40ioNqSg7u0uhWOl7MpK2IDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBPYntBv2hO93wm9S+oCIm6EWbQX1rYL6ryBylM+.+3vgiPRchPdXSM0Tn81aeEecc5zgssssIf0HBgvGjbA5FLX.6bm6LTWM9XrYyFLa1LFarwP6s2NZqs1vPCMTntZQVCxpUqn2d6cEe8HiLRJPmPBCI4BzEqzoSGzoSGRIkTvl27lA.fYylQas0FZqs1P6s2Nld5oCw0RBgPHgqn.8PnniNZTYkUhJqrR..L5nihqcsqgSdxSBqVsFhqcDBgPBmPCJNQjTSMU7TO0Sge7O9Gim9oeZnWu9PcUhPHDRXBJPWDRmNc3XG6XKGravfgPcUhPHDhHGEnKhsTv9q8ZuF9S9S9SfJUpB0UIBgPHhTqIeF5Nb3.1saeUcLjKWNzpUKTpL3+mPc5zgm7IeRTRIkfexO4mfYlYlf94jPHDR3k0jA5m+7mG+m+m+m7xwRkJUKOB10qW+C7emTRIgryNajUVYgHiLxU84J6ryFuxq7J3e7e7ezmS6HBgPHq8rlLPmO4zoS3zoSL2by4yxkPBIrb3d1YmMxM2bgVsZ86yWLwDC9a+a+awu3W7Kv0u90CzpMgPHDIFJPWfL4jShImbRzPCM...MZzfcsqcgZpoFXznQ+5XoVsZ7W9W9WBiFMh29se6fQ0kPHDRXFJPODYwEWDm8rmEm8rmEqe8qG0TSMXKaYKPtb1GmhO0S8THlXhA+G+G+GAwZJgPHjvATftHPGczA5niNPbwEGdhm3Iv9129X98t28tWbm6bGbkqbkfXMjHknWudHWtb3wimPcUgPH7HJPWDY5omFu9q+5niN5.O6y9rPmNcL8997e9OO5pqtv3iOdPtFRjBhO93wm4y7YVw.cYxjIv0HBgvGn4gtHz0u90w29a+swfCNHSkWmNc3q7U9JPgBEA4ZFQpPkJUPiFMOxeTqVcnt5QHj..EnKRYxjI7c9NeGbwKdQlJe1YmMdlm4YBx0JBgPHhUTftHlSmNwu7W9KwwO9wYp7G5PGBkVZoA4ZEgPHDwHJPOLva8VuE5niN3rbxjICeguvWPPV85HDBgHtPA5gA750K9o+zeJLa1LmkMlXhAkWd4BPshPHDhXBEnGlvrYy3m9S+oLMUiNvANf.TiHDBgHlPA5gQ5niNXZkgKmbxA4jSNBPMhPHDhXAEnGl48du2CiN5nbVtZpoFAn1PHDBQrfF8TgY750KNyYNC9y9y9y7Y41wN1A9C+g+.maZLAa1saG1rYCVsZc4erYyFra2NTpTIzqW+x+XvfAnWudnUq1vxE2DGNbfYlYFX1rYXylM3zoS3vgC3zoS30qWnVs5G3mniNZDe7wSy66Ggk9LiMa19X+HSlLnVsZnQiFnUqVDe7wiDRHg0DqCCtc6FSO8zXpolBVsZENb3.Nb3.tc6FxkKGJTn.pUqFFLX.FLX.QDQDHhHhHf1HnHgen.8vPW7hWDepO0mxmeIUoRkXu6cu3ce22U.qY2y3iON5omdP+82OVbwE862ub4xQpolJxKu7P5omtes91Kjra2NFbvAwPCMzxWfMPDczQiDRHArt0sNQ8uuAayN6rn+96G82e+X1Ym0uduxjICIjPBnvBKDYkUVRp+FZ2tczWe8gd6sWL4jSBud852GiniNZXznQjVZogjSN40D27yZQTfdXH61siqbkqv4Z9d0UWsfEnO2bygd5oGzSO8fEVXgU0wxiGOX3gGFCO7vPiFMH2byE4kWdHlXhgmpsAN2tcit5pKzau8xaK0tlMaFlMaFc2c2PqVsHu7xCETPAHhHhfWN9OrQFYDet1+GQDQfCe3CGTN2Or4medzc2ci96uellEGqDud8hIlXBLwDSfO5i9HrwMtQjat4xYv0XiMFt7ku7JFRlVZogJqrR+t9zZqshae6auhudgEVHJojR74wvrYy3l27ln+96OfBwe3ikYylQ6s2NznQCJt3hQQEUDMEWkXn+0LLUs0VKmA5wEWbHojRJntFuaylMTe80y7xTq+ZwEWDs2d6n81aGIkTRnhJpHjDr61sab26dWzZqsBa1rEzNO1saGs1Zqn0VaEqe8qGkUVY79Ecc61sO6MAgn0atb4B25V2Bs2d679lDyBKr.pu95wst0sPwEWLJnfBVwemlXhIfEKVVwiUfzCS.2K.0W+M1gCGq3qYylMzbyMit6t6UcP9ixhKtHtwMtAZu81QIkThO+6CI7BEnGlZ3gGF2912FEUTQ9rb4jSNAs.8d6sWbsqcMedwI9z3iONd+2+8w1111PgEVnfbNAtWKZu7kubPMH+QoiN5.CMzPnxJqDImbxB54NXZvAGDW+5W2mAo7AqVshFZnAzUWcg8u+8C850GTOe7ggFZHb4Ke4.9FI7G1saGMzPCnyN6D0TSMgE+8g3aRmGzzZPrrNumat4x6mW61siye9yiKdwKJXg4Kwsa23ZW6Z3bm6bA8K540qWbqacKTas0J3g4KY94mGm7jmDs0VagjyOexpUq3rm8r3bm6bA8v762LyLCNwINwppK8C1750KZrwFwYO6YEjv762ryNK9fO3C76ws.Q7gBzCi0c2cyYY36.8wGeb7Nuy6fAFX.d835uFbvAw68duWPq2Gb4xEN24NG9nO5iBJGe+USM0DSK+uhUKrvB3C+vODCMzPgjyuEKVvINwIDkawvd85EW8pWEs2d6gr5fUqVwINwIfISlBY0AxpG0k6gwFarwfMa1749ldFYjATnPAb618p97MyLyfyd1yFPsJO93iGQEUTKOE0zpUKb4x0xSkMKVr.SlL4W0SqVshZqsVb3CeXDWbw420Ieo95q2uCejISFhKt3Vd52oWudnSmN30qWXwhErvBKr7OVsZ0ue9nMzPCPgBEnfBJvudegZyM2b3zm9zATqxW5um2+eS83wCrXwxxetY94mGyO+7bdrb3vAN8oOM18t2MxHiLBjeUBJpu95QWc0ESkUlLYHojRBQEUTPmNcPmNcPiFMvsa2vtc6vtc6vhEKXzQG0uaouSmNwEtvEvwN1wnoRYXJJPOLlWudQ+82uOeN5pToBYlYlnmd5YUctle94Qs0VqeElGYjQt7pVWjQFImk2oSmn+96Gc2c2L2RAWtbgyblyfibji.CFLvbcyW5niN7q+dEUTQgbyMWjat4x7ygziGOXjQFAc2c2XvAGj4AFV80WOhM1XQhIlHy0uPoYmcVb5SeZ+5QVXvfAjWd4g7xKOl+2zImbRbm6bGzWe84yaJzsa2nt5pCG5PGBIkTRLWmBV5ryNQmc1oOKib4xQZokFxHiLP5omNznQCmGWOd7fIlXBLv.Cft5pK3zoSlpO1rYCMzPCXW6ZWLUdh3BEnGlq2d6koAF2pIP2lMa90EkMXv.1wN1AV25VmecdToR0xWHet4lCW6ZWioUEOa1rgyd1yhCe3CCUpT4WmyG13iONZrwFYprYkUVnnhJJfBFjKWNV25VGV25VGrYyFtwMtASOBE.fqd0qhidziJ5mq0K87+YskhwEWbnrxJCokVZ98BKTBIj.RHgDv1291QWc0E9nO5ifKWtdjk0qWu3BW3B3IdhmvuNG7s4laNzPCM3yxrt0sNr8sucltg36mb4xQxImLRN4jwF23FQCMz.5qu9X581c2cirxJKXznQ+5bRB8D2WQfvod6sWNKyp44n61saTas0x7bKuvBKDO4S9j9cX9CKpnhBG3.G.6bm6joP5YlYFTWc0spmBT25V2hytBWoRknpppB6YO6gWZkmNc5vt10tvgNzg74iOYIyN6rh9mmtWud8qQqcQEUDdrG6wfQiFWUqRfpUqFaXCa.O9i+39b5MZ0pUbsqcs.97vGt90u9JdSGQDQDX+6e+Xe6ae9cX9CSmNcXO6YOXe6aeLO8zX8lZIhKTfdXNVBzWM2ocqs1JlYlY3rbJUpDG3.G.6XG6XU2J46W94mON1wNFhM1X4rriLxHn0VaMfOWlMaFiLxH9rLxkKGG3.GHnr42jbxIiCe3CyT2LeyadSX2tcduNvWZu81YZ.noQiFTc0UixKubdctPGczQiibjifryN6UrL80WeXpolh2Nm9iolZpU7yZwGe73we7Gm2ag75V25P0UWMS8riYylCY+sgD3n.8vbiO93bNXiBz4W5BKr.SAjJUpD0TSMH0TSMfNObQud83fG7fLMv2Zs0VC3ft6bm6vYYprxJCpO+5HiLRb3CeXNeNotb4B82e+As5wpgYylQyM2LmkSiFM3wdrGComd5Ak5gRkJwt28tQwEW7JVlP0r0XrwF6Q9+dpolJN3AOHSOm7.QZokF18t2MSkkkFKPDWn.cI.tZAcfFn2PCMv4nNWkJUnlZpInO.iznQCNvAN.mg5tb4B27l2LfNGb8LrSJojDjskVCFLfxKubNKmX7Btd73AW5RWhyG8gb4xQ0UWMhJpnB50osrksrpeDPBgjSNYru8sOdsGtdTxLyLY5ln5s2dCJqTcjfGJPWBfqMEDVdtrOrQFYDlVNWqpppDrQKrFMZv92+94r0K28t2koowz8ytc6bNRfW+5WuecLWMxN6r4LDhkdmQn0SO8vTW0t6cuaA6yMxjICUUUUH5niVPNeAB0pUipppJAaIXcqacqbNVErYyF0s6gYn.cI.tF84xkK2u19D850Kmi9Vf6MX6BVcW5JQmNcnhJpvmkwqWu3F23F90wkqfQYxjI3+t5qtJdIg5E3mGlu1PRVRIkTBxLyLEfZy+OpUqFUWc0h10r7JpnBdaZWxhklpkbgkwOCQ7fBzk.XY5j4Oc693iONmKSlFLX.ae6am4iIeJyLyzmC1I.32aAmbMJ9MXvffOMwRJoj37h7hokqywGebL8zS6yxnSmNN2kwBVhJpn3bJdFJjQFYfrxJKA+7xxMUQA5gWn.cI.V1Gt8m69mk4C8N1wNBoqlTkWd4b9rFYcd2BDbdrEqVxjIiyKzuZ2pZ4Srz57fwtGm+XiabiA8mQs+JTcCNojRJb92BwzMLR3FEnKAvxn5l0.IVF8zwFarg7AYjFMZPd4kmOKi+zczbMHtD5MLikv0VEq+NVABVrZ0JmetIt3hKnrYA4OVZu.WrHkTRAwGe7gjysBEJ3bloPA5gWn.cI.VZgNqc49fCNHmCNrMtwMxzwJXa8qe89bf8L6ryh4laNlNVbcCOKrvB7x5gu+JhHhvmutEKV388S7.QWc0EmiH5RJojU0hFCeY8qe8hlVoGpu4BtVzZra2tn3yWD1PA5R.74yPmqtaOhHhPvGPSqjHhHBN2jMXsU5bMnA83wCyafF7oHiLRjbxIiniN5G4OQEUTLuNcGLw0RzqRkJC48pyRToRkfO.GeTzpUKRKszBo0AV54tUZ0riH9Pqk6R.rrgovxBUga2t47By4kWdhp0P7byMWe1UuCLv.L0iBrbgsVasUjc1YKnic.850iCcnCIXmu.gGOdvjSNoOKS5omtnZDlmQFYrp2vhVsRIkTB48XAKet2oSmztuVXBwyUlIALV9xFKOC3omdZN61TwPKateImbx97hhSN4jLMFChN5n4raXsXwB9vO7C8qcNr0BlZpo37wQDJFE29hQiFCoCNO.DzVYE8GrFnSBOPA5R.r7kRVdN6bsHRDQDQvzZptPRkJUHgDRvmkgqofGv8lq9rbyJyN6r3Dm3DhlAilX.WqY6JUpLj20xOLEJTDx2MwRIkTBome.JPWpgBzk.X44iyRfNKcapXDWszgk.c.1lWt.2a.x8ge3GhgGdXlJuTGW6c8wFarhptaeIgx8Cc0pUup2E03CrbsiPwfAkDXn.cI.gpE5hgtH7Qgqo8CqA5FMZjoM.Ff6MPDOyYNCN9wON5u+9WSulWy0maDa8pyRBk0qPw5ZvihJUpB4O5AB+gBzk.3i.cmNcxYvmX8Byb0JCVCzkKWN14N2oeMPkld5oQc0UGdm24cPGczgnZgdQnv03yf0aRRnw0b7OXJP2vjBFn.coC5eIk.3i.ctBhToRkftVS6O352eVCzAtWq8KszR86crs4laNzPCMfFZnADSLwfzSOcXznQjPBIHplU.7MmNcx47TVrdifZ0pE5zoKjLHGEKsPmHsPA5R.bcwAOd7v4H8lqo9lVsZWw8v4PMt5taKVr.WtbwbKQ1zl1Db61MS6E7OJyN6rX1YmEszRKPtb4HgDR.IlXhK+iT5h4rL6IDCOq3URTQEUHIP2e1rjHDVQA5R.b08crbAKttv77yOON0oNkeUuDSb5zoe00haYKaApToB27l2bUsRY4wiGL93i+.iD7HiLRjXhIhjRJIjXhIhXhIlP97QNPwRftXdNLyx5yPvP35+dSD2n.cI.tdFkrLf3XYwoIbVfLRcKojRP1YmMZrwF40soz4medL+7yu7BahJUpPJojBRM0TQZokFhJpn3syUvFWA5JUpTT+HGDKKArDBefBzCykbxIyYKzo.8.ep2DQDQf8t28BSlLgFZnAN2dPCDNc5DCN3fXvAGD.2amwKszRCokVZhhE.Eegq.cwdfoXt2CHD+k38JEDlv09BN.vPCMDmkQpGnuZ2fIRN4jwi+3ON5t6tQ6s2dPcWnxhEKnyN6Dc1YmvfACXaaaahl0O+GFWs9VrGnKluYIBweQeZNLGKA5rrlUK02.F3iEGCYxjg7xKOjWd4AylMiAFX.ze+8GTZ09RrXwBpqt5PxImLJu7xEciXbtBrE6KJIh85Gg3On.8vbrrFYy0NnFf3ukTqV78EtiN5nQIkTBJojRvBKr.5u+9w.CL.lbxICJKxLlLYBG+3GGEVXgXSaZSgrAy0CiqtrNTsOxyJwd8iP7GTfdXLYxjwYftSmNYZ.cwxyRTrsdbyJ0pUGTaYaDQDAJt3hQwEWLb4xElbxIwDSLAlXhIXdyggEd85E2912F82e+3fG7fH5nilWNtqFb84FWtbAOd7HZGXbR8G0DYsEJPOLVJojBmym096uelZcJWWX1nQiX+6e+9U8asHkJUhTRIkGXi2X94me4.9IlXBLyLyrpZEuMa1voN0ovgO7gC4ywaV5YGGNbHZm20TKzIRITfdXr7xKONKCKc2N.2A5TKYBbQFYjHxHiD4jSN.3d8ZxniNJFd3gwvCOLSyBgG1Rg5G8nGMj186rzyNKrvBh1.cZWyiHkPA5gwpppp3rLrLf3.B+eVngSToRExHiLPFYjA..lYlYv.CL.tyctie087VrXAM1XiXW6ZWAqpJmTnPATpToOGTkSM0TbtE2FJX0pUZusmHoHNevVDNst0sNTTQEwY43qVnayls0z6nXASwFarXSaZS3oe5mFkWd490F2Q2c2MFYjQBh0Ntw03SfqcisPEt1tfIjvMTfdXJVdd1SM0TXhIlfoiGWgHNc5j5dxfLkJUhhJpH7zO8Sictycx7bjtolZJHWy7MtVoBo.cBQXPA5ggzoSGScy54N24X9XpQiFDQDQ3yxHVuvrTib4xQ94mO1+92OSg5yLyLXlYlQ.pYOZbEnO6ryJJGCF2+5qOgHEPA5gg18t2MmCDJmNchye9y6WG23iOde95AyEPExGWxImL1291GTnPAmkk0wJQv.WetwqWun+96WfpMrYgEVfBzIRNzfhKLiLYxXp61u90ute2E4wGe797Buh0tnztc6X3gG1mkImbx4QtCWwx3BHTtyXkRJofpqtZTas05yxM3fChst0sJP0pGTLwDCjKWtOWdc6omdP94mu.Vq7MVGaIDR3DJPOLywN1wdf437J4zm9z98wlqtNc7wGG1rYSzsede26dW7QezGshutFMZPt4l6i70t5UuJ5pqtVw2ad4kGprxJW00wUik1nV70feagEVP.qQOH4xki3hKNedCelLYBKrvBb9XcDBd85kBzIRRTWtGFYCaXC3XG6XbVtt6tazau852GeV55z.43FL40qWeFHC36U3NtBXlat4Bn5EeqfBJvmutGOd3sUjt.AK6o.hkPzwFarP5M.QHAKTfdXhXhIF7bO2ywzRnIWcO6JQiFMHlXhwmkIT9rZeTX4hyqacqaEeMtV9TEKirettYK.DRmS0Ymc1b9nIZu81C4y6aud8FxmU.DRvBEnGFPlLY34dtmCQEUTbV1YlYFbsqcs.9bsRcM8Rld5oCpacn9qN6rSe95xjIymsPmq.ca1rIJVTcX4wbDJqmZ0p0m23Dv8Fnlg5vz6d26RCtShjEEnGF3YdlmgoEQFud8he4u7Wtp1YwXokVM2byA7wmOs3hKx4FOuoa6iK...B.IQTPTQBIjfOmQ.QFYjb966fCNX.U+3SrL38B0Kupbcyf.2qGdLYxj.Ta93ra2tn4ytDRv.EnKhoVsZ7k+xeYbjibDlJ+INwIPqs15p5bpWudjZpo5yxL3fCx4nJWHzSO83yQVM.2aurJTnfyM3Dwv3Ffkm4qACFDfZxJynQiLstxWe80K3yKcud8FRNuDhPhBzEoRM0Twq7JuByqS28zSO3sdq2hWN2rzRqFZnANCSClra2NZqs17YYToRESafMbcCLiN5nAzFnBehqAmmZ0pC46o8JTn.kTRIbVNylMiybly3y0+c910u90YZaDlPBmQA5hPUTQE367c9NvnQiLUda1rg+s+s+sUUWse+RO8z4LbXt4lC25V2hWNe9KOd7f5pqNNCYKnfBXJjikQnciM1Hy0ufg6d265yWWLLcv..Jpnh3b5OB.LwDSf5pqNA4lBu4MuItyctSP+7PHgZTftHRBIj.d1m8Ywy8bOmeskX9a9M+FlWy1YgRkJQokVJmk6V25VbNkwBFtwMtAmOGVYxjwz3N..HwDSjytqtu95CCMzPLWG4SSM0Tb9HN3Zv8ITjKWN14N2ISKFOCO7v3BW3BAstA2qWunkVZA27l27Q95JUpjyoCHgDNgVXYDAJt3hQM0TC17l2LSSKs62YO6YQ80WOuWmV+5WO5t6t4bDse0qdUnSmNl6MgUq95qOzd6syY4xN6rY9YJKSlLjUVYwYW3We80iG6wdLA8YU6zoSl92WwTvT7wGOV+5WOS+6z.CL.lZpovt10tXZAShUVsZEW5RWBiM1XqXY17l2Lu0qVDhX.0B8PDsZ0hZpoF7pu5qhW7EeQrksrE+NL+se62Fu9q+5Ak5mb4xQ4kWNmkyqWunt5pSPF4xyN6r3JW4JbVN0pU62KCp4latb1pRqVshO7C+PAatouziVfqMEm3hKNjbxIKH0IVsoMsINGrgKwhEK3Tm5TnwFaDNc5bUet6qu9v69tuqOCyiKt3XtGbHjvETKzEHIkTRH6ry9A9we5V86mCGNvu5W8qBJsL+9kRJofryNaNGk2tb4Bm5TmBadyaFabiaLnr1mO93iiKbgKvz.oZ6ae698xSaLwDCJpnhPGczgOKmEKVvIO4IQ0UWMSK1KAJa1rgKe4KyzdctXLXRkJU3fG7f3jm7jLupr0d6si6d26hLyLSjWd4gjRJIl+rjMa1P2c2M5pqt3b.DJSlLryctS+9FnIDwNJPeURiFMPud8PmNcK+yR++uTHdVYkEu0MslMaF+jexOQvVFM2111FFYjQ3bQKwqWun4laFiM1Xnppph2Vu2850KZqs1PyM2LSyE6zRKMlFk9OJadyaF80WebtZlY0pU7AevGf0u90iMsoMw6it7AGbPb0qdUlVJWiJpnXZP8EJXvfAbnCcHbpScJl6UCWtbgt6tazc2ciHhHBjd5oCCFL.850C850CMZz.ud8Ba1rAKVr.KVrfomdZLzPCwzmO..JqrxBp2LFgDprlLP+fG7fq5MbC4xkCsZ0Jn2k+fCNH9G9G9GDz8kbc5zgZpoFbpScJl5NzQGcT7tu66hBJn.je94Gvi9Z2tcid6sWzd6sy7JSmNc5vN24NCnyGv8ZU41291wEtvE3rrd85Es2d6n+96Gqe8qG4latAbOtrzwavAGDs0VaLO.GUoREpt5pYZ6UMTYoP8SdxS52OphEVXAN6wD+0N1wNPgEVHudLIDwh0jA5.hmo4CKrXwBd+2+8woO8oCIKLFwGe7X+6e+n1Zqkot7dwEWDszRKnkVZAFMZDETPAH0TSEJU56OtY2tcLwDS.SlLgd6sW+Zc+VsZ0nlZpYU2SHYkUVvjISLOMmrXwBZrwFwMtwMPlYlILZzHRLwD474G60qWX2tcL4jShgGdXL7vCCKVr3W00cu6cKZFc69hd85wgNzgv4O+4CYaAuxkKG6YO6AYjQFgjyOgHDVyFnGNvlMa3Tm5T3Dm3Dg7M0hjRJIru8sOblybF+ZjAuTXEv8BcMXv.LXvvxcI+hKtHb3vArZ0Z.uyloToRr+8ueDarwFPu+G1N1wNfLYxvsu8sY983wiGzau8t73MPqVsH5niFpUqFZznAJTn.1saGVsZc4eXsKheT15V2Jmqc5hI50qGO1i8XnyN6DM2byB55NuJUpv9129djCbPt9rrXaqBlP7EJPWDxgCG3Lm4L33G+3hps4wTRIEr28tWbgKbg.ZzH6vgC3vgCLyLyva0I0pUiOwm3SfDSLQd6XB.Td4kC4xkyzTu5Qwtc6AksyTkJUhcsqcgLyLSd+XGrISlLTPAEfLxHCbiabCAYMLH93iGUVYkq3M6w0miExUyNBY0hBzEIVpEdezG8Q3BW3Bhpczr6mQiFwwN1wDEKklImbxnpppJnMuv2111FhN5nQSM0jnXM.OpnhB6cu6kys3VwNsZ0hJqrRje94iae6aigFZHdY5pc+zoSGJqrx3b5Hx04MTub5RH9CJPODxhEKKuRV0RKsHZ16s4hd85wd26dw.CL.t90utfuNmKSlLTVYkghKt3fxTj69ke94izSOczXiMFx1K3UoREV+5WOJt3hkTALIlXhHwDSDtc6FiM1XXfAF.CN3fAbOarzVkad4kGV25VGSCVPJPmHkPA5B.Od7fYmcVL0TSgImbRXxjIzZqsht5pqU0yQMTKiLx.olZpn4laFc0UWA8tmTkJUH2byEEUTQLs2vyWzpUKppppP94mOZqs1vvCOrf7uaJUpDqe8qGaXCaXUMB5E6TnPALZzHLZzHpnhJvjSNIlat4fMa1V9QWrz+sFMZvBKr.TnPAznQCznQChKt3PBIj.maUtOJbEnqVs5UyuZDhfRxEnO1XigKbgKDRVzH73wCVbwEwBKr.lbxIWN.e5omVxtDSpRkJTd4kist0shgGdXze+8iAGbPdMbOlXhAETPAH2byMj1hojSNYjbxICqVst7hXBe2qJpToBFMZDomd5vnQiAk.k3iOdjSN4rhuNeM3BCDxjIa4VtKD3ZvlFn+8OwDSzm2zmPsTIyhrxJKe9HkBkedf3ej84+7e9v2lHRDkb61MFYjQv.CL.le94WtEVr7bRUoREhKt3V9h5IlXhPqVsBPsNvL2bygolZpG3l2X8lYTpTIhN5nQLwDChN5nQBIj.RJojnUvLAhGOdv+0+0+kO2w218t2sncg6grxLmzVQ+47375wTm0oP925ekWOl7MIWKzIgdJTn.omd5H8zS+A9e2kKWvlMavlMaXwEWDxkKGpUqd4eznQSXWXVTQE0Ga0ZyoSmvoSmKOp9c3vA750KToR0x+nVsZQ8MprVfYyl4b6aUud8BTsgPV8n.chfQoRkHxHij4MsivUKEZSgAhaSO8zbVFV1a2IDwhvqlCQHDBOgq.8nhJJZTtSBqPsPmPH7BmNc5ywOfVsZC5SyP+wRqfgqDp04jvMTfNgPV073wCd629s84bH+fG7fHkTRQ.qUqrklZb9BEnSB2Pc4NgPV0jKWNmCnQV1a2EJrr8CSA5jvMTfNgP3EbE.JVBz83wC5qu97YYToRERJojDlJDgvSn.cBgvK3ZAHY5omFSM0TBTsYk0QGcv4t8VVYkEma2uDhXCEnSHDdAKcQciM1n.TSVYVrXA27l2jyxkWd4I.0FBgeQA5DBgWjRJovYqZMYxTHcW5qgFZfyUxunhJJAaomkP3STfNgP3EZznAETPAbVtKe4Kyzh5Be6t28tLcyDTqyIgqn.cBgva1vF1.mi1cmNchyblyHnaWv2912F0We8bVNc5zwzMkPHhQTfNgP3M50qG4latbVNa1rg2+8eeAo62aqs1v0u90YprUTQEzVlJIrEMLNIDBuprxJCiN5nXgEVvmkygCG37m+7H+7yGaXCa.QGcz7Z8XxImDM0TSvjISLU9ryN6O1FJDgDNgBzIDBuRqVsn5pqFm3DmfosR1N6rSzYmchDSLQjWd4grxJqU0Zn9zSOMZokVP+82ueUmKu7xC3yIgHFPA5DBg2EarwhpppJb9yedleOSLwDXhIl.MzPCHqrxBolZpPud8vfACPmNcPgBEer2ia2tgMa1fISlvniNJFczQgMa17q5pRkJwt28tgFMZ7q2GgH1PA5DBInHiLx.UVYkn95qmy8c76mKWtPWc0E5pqtdf+20pUKzoSGjISFVbwEwhKtHS8.funQiFru8sOZZpQjDn.cBgDzjWd4gXhIFbtycN+tkyOL61s6yM+E+kACFPM0TCu+r6IjPEZTtSHjfpDRHAbzidTjbxIGpqJKK93iGO1i8XTXNQRgZgNg7+W6cm8USkkv1.+IIjDRfv7fLFPFzxgpPTFrPnTQTKs5gK6ZsdW86+B8eCe22W9ca+ceu5ap1tqRWMn0BQPvADhHxLQDYR.ABIjDRNuWTu3WMHr2gLcNGd9sVtJW0YmyYmfjmyYORwc1rYC23F2.u4MuACN3fXiM1HoTOb3vApqt5PEUTgpZuYmnXAFnSDkvTd4kixJqLL8zSiW9xWlvB1sa2N97O+yQ0UWsvE9FhzpXfNQTBkACFPUUUEppppv5quNb61Mb61cLObOiLx.EUTQ3XG6XnzRK8SNJ4IROgA5DQIMYmc1H6ryF0UWcXqs1Bqt5pX80W+i+Y6s29.e8FLX.VrXAVsZEVsZENb3.G6XGCEUTQHszRKA8tfH0AFnSDoJ3vgC3vgCTQEU7w+eJJJX2c2EABD.ACFDACFDFLX3iA3lMal8ENQ+uXfNQjpkACFfYylipUNNhNpfiNDhHhHc.C+W+ikTh0mz+PNyihs3MVeZIhHhDZmPFfuvw1V0IEC.NRIPL8bFqkxGLF6G3H1SOSjcZbcQlHhH8D08.sjM4NQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzARorfKFyOoqL+rHjwsi4mWhHhHQ1NrUrZX6wzyYJHDJNkMiomyXsT19e++IleRueL+LRDQDImMJ37v8wucL8bZy6pnlg++ESOmwZrI2IhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjNPJI6JPjHmbxA+o+zeJYWMTM762O9a+s+FTTTR1UEJA6Uu5UXkUVYeOdEUTAb5zYDedmat4vzSO89d7RJoDTc0UGwmW0p27l2fYlYl8834kWd3zm9zIvZDQGdZp.cmNchlZpojc0PU4u+2+6Xqs1JYWMnDrUVYE31s6883YkUVGp.84me9C77ZylsH9bplswFabfueCGNLCzIMC1j6DQDQ5.LPmHhHRGfA5DQDQ5.Zp9PmHhzpb4xEBEJz9d7ZqsVX2t8DXMhzaXfNQDk.3xkKr6t6tuGuzRKkA5TTQSEnGLXPr95qmvut1saGVsZ8.KyVas0A9KqwKbJqQDQDfFKP+ku7k3u7W9KI7q629seKt4Mu4AVl+5e8udfymUhHhn3INn3HhHhzAXfNQDQjN.CzIhHhzAXfNQzQVYjQFI6p.QwLZpAEGQDEK4zoS7se62tuyVDiF4y7PZGLPmH5HMylMmrqBDESva+jHhHRGfA5DQDQ5.LPmHhHRGfA5DQDQ5.LPmHhHRGfA5DQDQ5.LPmHhHRGfyC8iXBDH.750K74y2G+u68GylMCEEEX2tcXylMXylseweWOsHannnfc1YmewmA682CEJDBGNLrXwxu4y.61siTSM0jc0mHh9MXf9Q.d73Atc6FyN6rX0UW8PcNrZ0JJu7xgSmNwwN1wzrg6u+8uGyN6rvsa2X6s29PcNxHiLfSmNQEUTAxN6riw0PhH5vgA55Td858iAWqrxJQ84yue+XhIl.SLwDvpUqeLPqvBKDFLXHFTiieVc0U+3Mz3wimn97s4laBWtbAWtbgLyLSTQEUfJpnBjYlYFCpsjHKt3hn2d6E6t6tBKapolJ98+9e+9d7QGcT3xkq883kTRInkVZYeO9O9i+HVd4kEVO.fv5aWc0UD86REUTQn0VaU5xS5eLPWmY2c2Etb4BiLxHHb3vwkqge+9w3iONFe7wQt4lKZt4lQt4lab4ZEM1d6sw.CL.lat4haWiM1XCLzPCggFZHTUUUgye9yyljONZlYlAO5QORp+scZokFZqs1Nvxr6t6hc1Ym883ABD3.e8986+.e8QB+98GQk+Ce3CwjqKoev.ccj4medze+8GSdJTYs5pqhu+6+dbhSbBTWc0AKVrjvt16mvgCiQGcTLzPCI0SwEqL0TSg4laNTe80iZpoFUeKWn03xkKL3fCJUYyM2bwUu5UgMa1hy0JhTOXftNfWudw.CL.dyadSR45qnnfW+5WC2tciFZnATQEUjTpG..Ku7x3wO9wIsmdIPf.3wO9wXpolBM0TSHmbxIoTOzSBGNLFXfAv3iOtTkuzRKEs0VaHkT3WuQGsv+EuF26e+6Qmc1ovlFLQvmOen6t6FKszRnwFaLg+DpiM1Xn+96OgdM2OqrxJ3e+u+2n0VaModCNZcACFDc2c2X94mWpxexSdRzPCMvVGgNRhA5ZXKu7xnqt5BACFLhesYjQFvgCGvtc6HszRC1saGojRJvmOeX6s2Fd85Eau81Xs0VCgBEJhN2iM1XHTnP3hW7hIruXcjQFAO6YOKhecFLX.4jSNe7yf89uJJJe7y.ud8BOd7f0We8H5bqnnfG9vGhPgBgppppHttcTmOe9PWc0EVas0jp7W3BW.e1m8YLLmNxhA5ZTKrvB3AO3AQTeDa1rYTYkUhZpoFoGDaABD.yLyLXhIlP5uXE.XxImD6t6t3RW5Rw8o31vCOLdwKdQD8ZRO8zQM0TCppppfc61k50r0VagImbRL4jSBe97I0qQQQAO5QOBgBEB0VasQTc7nrO7gOft5pKolZglLYBs1Zqn7xKOATyHR8hA5ZPyO+73AO3AROJ1SO8zQc0UGJu7xi39UzhEK3Dm3D3Dm3DXs0VCu5UuBSO8zR8Zmc1YQnPgPas0FLYxTDcck0ye9ywKe4Kkt7EUTQ3rm8rGpoamCGNv4N24vW7EeAd26dGFd3gw6e+6k5093G+Xr6t6hScpSEQWyihVbwEwCdvCjpkmRM0TwUtxUP94meBnl8a0d6sK8uG9O9G+iC7Fvu10tFxKu7j9ZyVhf90XftFyFarA9we7Gk9KQN9wONZpolfYyli5qcN4jCtzktDJu7xQe80mTSyl4laN7zm9TzTSME0W+eswGeboCyMZzHpu95iIMIqQiFQokVJJt3hwvCOLb4xETTTD95d5SeJb3vAJqrxhpqud1zSOM5s2dk5eemQFYf1auc3vgiDPM6SKVNv6rXwhpXVhPZWLPWCIb3vnmd5Qp9z1hEKn4laNtLfrJu7xQ94mOdzidDd26dmvxO1XigxKubTTQEEypCd73AO8oOUpxlUVYgVas0X9p5lQiFQc0UGJt3hQO8ziTSWv95qOje94y4p9mPjLszJnfBvUtxUfUqViy0JhzNzlqemGQMxHiH0R2pMa1vsu8siqitZa1rg1aucbxSdRoJeu81aLaj3uW+RKy3GnnhJB2912NttDsVPAEfu4a9FoFWB6ryNXfAFHtUWzhBGNL5qu9jNLuxJqDczQGLLmneEFnqQr95qigFZHgkyrYy3ZW6ZIjlgzfACROuy2d6sk9IpE40u90XokVRX4xM2bwku7kia8e+OmEKVP6s2NxHiLDV1YmcVL6ryF2qSZAACFDO3AO.SLwDRU9yblyfVas0DxOSIRqgA5Z.60T6h5WQiFMhqd0qlP2vPLXv.ZokVjp4zmbxIwae6aipq2latId9yetvxsW+qFKF6.xJ0TSEW6ZWSpUmr96ueoGo75Ud85E26d2Sp4XtACFvEu3EQ80WeBnlQj1DCz0.b61sTyA5KcoKgBKrvDPM5WxjIS3xW9xRs4jDoSureMWtbIbLDXwhEbsqcsjR+Tmd5oi1aucgSUO+98iQGczDTsR84Ce3C3G9gePpoBoYylQ6s2NpolZR.0LhztXftFvqe8qEVlRKszj5JRlYylQyM2rvxs1ZqI8tS0u1N6rClYlYDVt5pqNjd5oentFwB4jSN3zm9zBK2DSLQDun8nGr3hKhe3G9Aoli41saG27l2DEWbwIfZFQZaLPWka0UWU31epQiFQCMzPBpFs+JrvBQkUVovxIyMn7oLwDSHraGxN6rUEKfKm8rmEokVZGXY762uT2fhdxzSOM5ryNkZNlmc1Yiacqaw8bdhjDCzU4jI76Lm4LI04h6O24O+4EN2bc61M750aDcdCGNLFarwDVtlZpo39JSmLRIkTvEtvEDVtC6M2nEM7vCK0XAA.n3hKF27l2T5UwOhHFnqpISSLaylMb1yd1DTMRL61sKr9nnnH8Nm0dlat4DdS.UTQEnfBJHhNuwSNc5T3XZHZ5BBsh8lVZxN9IpolZvUu5USnCnQhzCXftJ1zSOsvmlopppR0MEdpt5pEtZrI6zTJRJuZno1+0NwINgvxDoeVnkDLXPb+6eeoeOVe80iKdwKpJZkEhzZ3u0nhs3hKJrLUWc0IfZRjwlManzRK8.KiOe9vlatoTmuvgCK7oXSO8zSJiveQJqrxDtbdJyOm0h1aZoIypInQiFQqs1JNyYNSBnlQj9DCzUoTTTDNX3JnfBjZgLIYPlazP1lZd80WW3pBmLsJPxfISlDNPA2aKZUOY80WW5oklUqVQGczgTCnRhn8GCzUo1XiMDt4mnFe578TRIkHbdfKaftLkSMueiKyOmjYkuSqXgEV.28t2UpoklCGNvW+0espr0UHRqgA5pTxDhIpYsSlLZzHJojRNvxHaftnvtbxIGgSQrjobyMWgqdb5kAF2TSME5pqtjZZoke94iu9q+ZUaqLQjVCCzUojoOiU66XWh1am2byMkZ4OUzmEQxdHcxhn5ndHPe3gGFO5QOR5s12Ke4Kq5+2vDokv.cUp2+92efGO+7yOAUSN7jInUz6SOd7fc1Ymn95jrI5mWxLNATqBGNL5s2di3k02X0l0CQzOgA5pThdxUsPHV1YmsvoTmn2mx7D75katQzMtnFs2zRaxImLhesyLyLXpolJNTqH5nIFnqBENbXg8AoVHP2nQiB2ivEMv+DcbylMqI5CVY1qzE8dUswqWu3t28tRMsz1O82e+Xqs1JFVqH5nKFnqBIyWrqlGDX+bxrdlGMGOszRSUNc090La1LrZ05AVFsTf95quN99u+6kZW.7fr6t6ht6tao62chn8GCzUgj4K1EENnVHZQUIZCzEc9USzKA56MszhUyc9UWcUL3fCFSNWDcTFCzUgD8E6lLYR0sbuteh1PLQGWqbiM.Q+M2nFL0TSI8tklc61woN0oj57NxHifEVXgns5QzQZLPWEROEhEsA5ABDHpN+pI5gmPOXvfPQQQX4xM2bwst0svEtvEjdQ+omd5QSNv.IRsfA5pPgBE5.OtV4oyADWWE8dUzT45nzmEZEUTQE+hs9zFarQo1de84yG5s2di2UOhzsXftJjnsMRYZtS0BQ0UQuW4mEZK0UWcns1Z6WbyKlMaFs0VaRsCp8129VL5niFOqhDoaw.cUH8PSytmns6C3mEZClLYBe0W8U3y+7O+Sd7byMWbtycNoNWO6YOKpG87DcTDCzUgD8E6JJJZlmLMdGnKpO1USzSiGfeN61siadyaBmNcdfk6Tm5Tn3hKV34Kb3vn6t6Vytx4QTxBCzUgj4K10JOYZzFhwmPWcK2byE2912VpENGCFLfVZoEoV+12XiMvSdxShEUQhNxfA5pPxL2p2byMS.0jn2FarwAd7nMP2iGOZhASlOe9D1pJZs.88F7ah1I494rYyFZokVjprSLwD3Mu4MG1pGQG4v.cUHCFLH7K2WYkURP0lCufAChO7gObfkIZCzCGNLVas0h35VhlL+7RKEn+oF7axpjRJQ54mdu81qT6q5DQLPW0J8zS+.OtncoL0fUWcUgkQz6SQGGPa7Ygn5nISlzDaknhF7ax5bm6bR0L8ABD.8zSORM22I5nNFnqRIZGDSKDhI5oRMXvfvMYFqVshLyLyn55nFHpNlWd4I0z5JYqlZpQ3feSFlLYBs1ZqHkTRQXYWZokfKWth5qIQ5cp+uA4HpBKrvC73986W02O5hBwxM2bk5KzKnfBhpqSxV3vgE1ZEh94sdTFYjAZpoljprCMzPX4kWNNWiHRaiA5pThBw..lc1Yi+UjCo.ABHba0Tl2ixTts2daUcKVL+7yKbJXI6mE5MUUUUnxJqTX4TTTPO8zilZZJRThFCzUorYylv9OdxImT012hyLyLB2RLiUA5.+zmEpUhpaFLXPXWrnm0TSMI0XkviGO3wO9wIfZDQZSLPWESTyv5wiGrzRKkfpMQFYBXkMP2gCGBmZTyLyLpxEhDe97g2912dfkI6ryVWrrudXYwhEzVasI09Z+ryNqp9l2HJYhA5pXxrpZoF+xs0Wecg8YbN4jSDMptE8YQvfAUkyY4omdZgshhL+bVuKu7xS5kF1AFX.U+3GgnjAFnqhUd4kKLzysa2pt4o6qd0qDVlSbhSDQmSYJ+qd0qTUcAQnPgvXiM1AVFCFLfZqs1DTMRc6zm9znnhJRX41c2cQ2c2slXAEhnDIFnqhYxjIgeYenPgTUKQlKu7xXpol5.KiUqVwwO9winyad4kmv9Yds0VCSLwDQz4Md5ku7kviGOGXYJszRkp+iOJXukFVYVfcVas0vfCNXBQk.g2C..IbTRDEDUnVQj1ACzU4ps1ZE12hu4MuQ3HJOQPQQACLv.BKW0UW8gZEF6jm7jBKyfCNnpX8c2iGO3ku7kBKmLumNJwtc6Ruzv9pW8JUw+tmH0BFnqxY2tcoVHOFXfADNpxi2Fe7wEtLrZvfgHt412iSmNE1ED986WU7jaO4IOQXSBmYlYJUSLeTSokVJ9rO6yjpr8zSOvmOew4ZThA6BAJZw.cM.YdJtM2bS7zm9zDPs4Sa80WGO+4OWX4JqrxNzMwrQiFk5lAFe7wwbyM2g5ZDKLwDSH00W1Pqihpu95QN4jivxsyN6fd6sWU0XmX+Hpk1TCsrDosw.cMfBJn.oV7Md8qesTMyarlGOdPmc1ovcSrTRIEb9ye9n5ZcpScJotgft6t6jxJK1byMmTyU5bxIGTc0Um.pQZSQxRC67yOOFczQS.0pnintYhA5TzhA5ZDM1XiRsMU97m+7D5TYamc1Ac1YmR0rm0We8vgCGQ00yrYyR0GqgBEB2+92W3t8VrzxKuL5t6tE9zhFMZDszRKZh0t8joLyLSzPCMHUYe9yetpeW2STftWudSP0DRuheihFgUqVwW9keoTksu95CyLyLw4ZzOsnozUWcI0bB9XG6XG59N+WqvBKTplqNPf.nyN6LgDpuxJqf6e+6KU+fVWc0gryN63dcROnlZpAUTQEBKW3vgQ2c2spbwEZOhZsgEVXgDTMgzqXftFRIkThTMSqhhBd3CeHdzidjvlA+vZt4lC+y+4+TpsHUylMiu7K+RoVIvj04N24PFYjgvx40qW7u9W+KL5niFW5m0vgCigFZHb26dWoVmwyO+7kdu.m9IM2byHszRSX41byMkZVVjrHpE1VYkUvN6rSBp1P5QLPWiogFZP5lsdpolB24N2Il1Wx6t6tnu95CO3AOP597qwFaLlOWqSIkTvktzkjpYqCGNLdxSdB5pqthoiH5s1ZKbu6cOLzPCI0MKrW2EvlZOxXwhEzZqsJ0MDN4jSB2tcm.pUQtrxJqC73JJJn2d6UU2JCj5F+lEMFylMiabiaH0SmB7SCXs6cu6gG9vGhEVXgC8So50qW3xkK7ce22EQKdKM1Xinppp5PcMEIu7xCW8pWU54z96d26v28ceGd1ydF1XiMNzW20VaMze+8i6bm6H8V2pEKVPGczgz+bi9kJnfBvW7EegTksu95S3B5SxfLcyxae6aQmc1IVd4k4zXihXhGBojpic61wMtwMv+4+7ejp+gUTTvLyLClYlYP5omNpt5pQkUVIRKszNvmVLPf.XokVBSLwDX94mOhtY.CFLfKdwKF2GI2EWbw3ZW6Z392+9R08BABD.iLxHXjQFA4me9nlZpAkVZoG37aWQQA974CyM2bXhIlHhG7UolZpniN5f8adT5rm8rXgEVP3FRTf.APO8zCt90utpp0PN1wNlTka4kWF28t2EFLX.Ymc1H8zSG6t6tHXvfHPf.HXvfHXvfvoSmROtZniFXftFkMa1vMtwMPmc1oT8i8d73wCdwKdAdwKdALXv.rYyFRKszPZokFLYxD74yG1d6sgWudOz8+tACFPqs1pTCloXgBKrPzQGcfN6ryHZ+xdkUV4iOgsISlfc61QZokFra2NTTTfWud+3mEG1EsGa1rgqe8qiLyLyC0qm9+au+c0ctycD1cOKu7xvkKWR+T8IBNb3.EVXgRuCIpnnf0Vas88FHijeumNZP8b6qTDypUqniN53PuZisWn0JqrBlc1YwTSMEd26dG1XiMNzg4lMaFW9xWNgElum7xKObiabCoF7TeJgBEBas0VXwEWDSO8zXlYlAKszRviGOG5v7LyLSbyadSFlGCY2tcoepzgGdXU21KLWpeo3IFnqwsWeydoKcoHZ6HMdnxJqD+w+3eDkUVYIkqe1YmM9C+g+.NyYNSRsoVMYxDN24NG9lu4ah54cO8aUVYkI0TfTQQA8zSOQTq1Du4zoSoVjnH5vfM4tNwwO9wQokVJdwKdAFarwRnKElYlYln4laFEVXgIrq49IkTRA0We8npppB82e+XwEWLgd8KqrxPCMz.2A0hytvEt.VZokDNFR1d6sQe80G9pu5qRP0LwZt4lghhBlc1YS1UERmgOgtNhEKVPiM1Ht0stUBYS+vlMa37m+732869cphv7etLyLSb8qeczZqslPFY44jSN3pW8p3JW4JLLOAvjISns1ZSpY3fa2tUUaqtlMaFs0Va3xW9xvtc6I6pCoivmPWBCN3fB+Eus1ZqDTsQrbyMWzQGc.e97A2tcC2tcikWd4XxSsa2tcTd4kCmNchBJnfX5hES7PkUVIprxJw5qu9G+rHZlxZ+b4jSNvoSmvoSmI7oiVEUTALa179d7RJojC04M+7y+.Gy.IqtS4SIqrxBszRKX94m+PeNJt3hOve2s3hK9PetEo7xKGkUVYX0UWEyO+7X94mGd73A986WpeWUs+6dThmg+7e9Oq92lhnn1dS6p28t2Ae978w+bPy00TSMUjZpoB61sirxJKTd4ki7yOeM+Wj7gO7A31sar5pqBud8Be97gc1Ym88KQ2a1.r2eJnfBfSmNY+iSwEJJJHXvfvue+vue+vfACvjISvjISHkTR4i+cYW+ENJZiBNObe7aGSOm17tJpY3+uwzyYrFeB8iHrYyFps1ZQs0V6u3+ef.A9Eg6VsZE1saGolZppp4varTVYk0uYU6RQQA6ryNeLbG.eL.2pUqZ9ahgzNLXv.rXwBrXwBuoQJhv.8i316KNNpO0p94OENQDoEoOeDLhHhniXXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjNfga82+fRr9j9emmaTVpaGqOsDQDQB4OrA3KTJwzyoIDFNLGJldNi0RwXJw12z..omd5Hqzh8mWhHhH5SiM4NQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzA9e.nchKW208k9o.....jTQNQjqBAlf" ],
									"embed" : 1,
									"forceaspect" : 1,
									"id" : "obj-41",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 842.0, 23.0, 100.0, 100.0 ],
									"pic" : "Macintosh HD:/Users/stefanodemo/Documents/GitHub/SDT/MaxPackage/icon.png"
								}

							}
, 							{
								"box" : 								{
									"button" : 1,
									"fontsize" : 13.0,
									"htabcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"id" : "obj-37",
									"maxclass" : "tab",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 345.0, 150.0, 138.0, 100.0 ],
									"spacing_y" : 8.0,
									"style" : "SDTpackage",
									"tabs" : [ "sdt.envelope~", "sdt.pitch~", "sdt.spectralfeats~", "sdt.myo~" ]
								}

							}
, 							{
								"box" : 								{
									"button" : 1,
									"fontsize" : 13.0,
									"htabcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"id" : "obj-36",
									"maxclass" : "tab",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 591.625, 150.0, 138.0, 75.0 ],
									"spacing_y" : 8.0,
									"style" : "SDTpackage",
									"tabs" : [ "sdt.demix~", "sdt.reverb~", "sdt.pitchshift~" ]
								}

							}
, 							{
								"box" : 								{
									"button" : 1,
									"fontsize" : 13.0,
									"htabcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"id" : "obj-35",
									"maxclass" : "tab",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 102.0, 636.0, 138.0, 50.0 ],
									"spacing_y" : 8.0,
									"style" : "SDTpackage",
									"tabs" : [ "sdt.motor~", "sdt.dcmotor~" ]
								}

							}
, 							{
								"box" : 								{
									"button" : 1,
									"fontsize" : 13.0,
									"htabcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"id" : "obj-34",
									"maxclass" : "tab",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 100.0, 495.0, 138.0, 100.0 ],
									"spacing_y" : 8.0,
									"style" : "SDTpackage",
									"tabs" : [ "sdt.windflow~", "sdt.windcavity~", "sdt.windkarman~", "sdt.explosion~" ]
								}

							}
, 							{
								"box" : 								{
									"button" : 1,
									"fontsize" : 13.0,
									"htabcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"id" : "obj-33",
									"maxclass" : "tab",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 100.0, 408.0, 138.0, 50.0 ],
									"spacing_y" : 8.0,
									"style" : "SDTpackage",
									"tabs" : [ "sdt.bubble~", "sdt.fluidflow~" ]
								}

							}
, 							{
								"box" : 								{
									"button" : 1,
									"fontsize" : 13.0,
									"htabcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"id" : "obj-23",
									"maxclass" : "tab",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 100.0, 150.0, 140.0, 225.0 ],
									"spacing_y" : 8.0,
									"style" : "SDTpackage",
									"tabs" : [ "sdt.inertial", "sdt.modal", "sdt.friction~", "sdt.impact~", "sdt.rolling~", "sdt.scraping~", "sdt.crumpling~", "sdt.bouncing~", "sdt.breaking~" ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 20.0,
									"id" : "obj-17",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 323.3125, 408.0, 428.0, 54.0 ],
									"style" : "SDT_package",
									"text" : "Transient / tonal / residual component separator",
									"textcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-16",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 323.3125, 470.0, 440.0, 45.0 ],
									"style" : "SDT_package",
									"text" : "The sdt.demix~ separates an audio signal in its three main components, percussive, harmonic, and noisy.",
									"textcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"id" : "obj-54",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 303.375, 346.4375, 467.875, 248.5625 ],
									"proportion" : 0.39
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"id" : "obj-52",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 550.0, 78.875, 221.25, 196.125 ],
									"proportion" : 0.39
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"id" : "obj-51",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 303.375, 78.875, 221.25, 196.125 ],
									"proportion" : 0.39
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 16.0,
									"id" : "obj-47",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 100.0, 90.0, 138.0, 26.0 ],
									"text" : "SYNTHESIS",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 16.0,
									"id" : "obj-46",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 591.625, 90.0, 138.0, 26.0 ],
									"text" : "PROCESSING",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 16.0,
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 90.0, 138.0, 26.0 ],
									"text" : "ANALYSIS",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 14.0,
									"id" : "obj-44",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 102.0, 611.0, 138.0, 23.0 ],
									"text" : "MACHINES",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 14.0,
									"id" : "obj-43",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 100.0, 470.0, 138.0, 23.0 ],
									"text" : "GASES",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 14.0,
									"id" : "obj-42",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 100.0, 385.0, 138.0, 23.0 ],
									"text" : "LIQUIDS",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 14.0,
									"id" : "obj-40",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 100.0, 125.0, 138.0, 23.0 ],
									"text" : "SOLIDS",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontface" : 3,
									"fontname" : "Lato",
									"fontsize" : 40.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 15.0, 256.0, 54.0 ],
									"text" : "SDT Objects"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"id" : "obj-9",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 58.375, 78.875, 221.625, 627.1875 ],
									"proportion" : 0.39
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1,
									"midpoints" : [ 230.5, 381.5, 14.5, 381.5 ],
									"source" : [ "obj-23", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"hidden" : 1,
									"source" : [ "obj-23", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 1 ],
									"hidden" : 1,
									"midpoints" : [ 228.5, 465.0, 29.300000000000001, 465.0 ],
									"source" : [ "obj-33", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"hidden" : 1,
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 2 ],
									"hidden" : 1,
									"midpoints" : [ 228.5, 608.0, 44.100000000000001, 608.0 ],
									"source" : [ "obj-34", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"hidden" : 1,
									"source" : [ "obj-34", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 3 ],
									"hidden" : 1,
									"midpoints" : [ 230.5, 697.0, 58.899999999999999, 697.0 ],
									"source" : [ "obj-35", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"hidden" : 1,
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 5 ],
									"hidden" : 1,
									"midpoints" : [ 720.125, 276.0, 88.5, 276.0 ],
									"source" : [ "obj-36", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"hidden" : 1,
									"source" : [ "obj-36", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 4 ],
									"hidden" : 1,
									"midpoints" : [ 473.5, 259.0, 73.700000000000003, 259.0 ],
									"source" : [ "obj-37", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"hidden" : 1,
									"source" : [ "obj-37", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [ 51.5, 731.0, 829.3125, 731.0, 829.3125, 378.0, 332.8125, 378.0 ],
									"source" : [ "obj-50", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [ 88.5, 731.0, 871.0, 731.0, 871.0, 333.0, 332.8125, 333.0 ],
									"source" : [ "obj-50", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [ 14.5, 732.0, 899.1875, 732.0, 899.1875, 293.5, 332.8125, 293.5 ],
									"source" : [ "obj-50", 0 ]
								}

							}
 ],
						"boxgroups" : [ 							{
								"boxes" : [ "obj-33", "obj-42" ]
							}
, 							{
								"boxes" : [ "obj-44", "obj-35" ]
							}
, 							{
								"boxes" : [ "obj-34", "obj-43" ]
							}
 ],
						"styles" : [ 							{
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
					"patching_rect" : [ 88.0, 115.0, 69.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"style" : "SDTpackage",
					"text" : "p externals"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
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
						"rect" : [ 112.0, 269.0, 950.0, 714.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-13",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 630.0, 609.0, 306.0, 74.0 ],
									"text" : "See the \"externals\" tab for a complete list of the available algorithms, and the \"examples\" tab for a taxonomy of sound-producing phenomena referencing the respective externals."
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 152.5, 134.0, 72.0, 24.0 ],
									"text" : "loadmess 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 289.5, 58.0, 35.0 ],
									"style" : "SDTpackage",
									"text" : "Rubbing force"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"margins" : [ 1.0, 0.0, 1.0, 0.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 401,
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.505431999999928, 281.0, 112.0, 52.0 ],
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.2,
											"point_style" : "none",
											"line_style" : "lines",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 1.0,
											"domain_style" : "linear",
											"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
											"domain_labels" : [  ],
											"range_start" : -3.0,
											"range_end" : 3.0,
											"range_style" : "linear",
											"range_markers" : [ -0.5, 0.0, 0.5 ],
											"range_labels" : [  ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 516.5, 44.0, 21.0 ],
									"style" : "SDTpackage",
									"text" : "RPM"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"margins" : [ 1.0, 0.0, 1.0, 0.0 ],
									"maxclass" : "plot~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"numpoints" : 401,
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.505431999999928, 501.0, 111.0, 52.0 ],
									"subplots" : [ 										{
											"color" : [ 0.4, 0.4, 0.75, 1.0 ],
											"thickness" : 1.2,
											"point_style" : "none",
											"line_style" : "lines",
											"number_style" : "none",
											"filter" : "none",
											"domain_start" : 0.0,
											"domain_end" : 1.0,
											"domain_style" : "linear",
											"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
											"domain_labels" : [  ],
											"range_start" : 0.0,
											"range_end" : 1000.0,
											"range_style" : "linear",
											"range_markers" : [ -0.5, 0.0, 0.5 ],
											"range_labels" : [  ],
											"origin_x" : 0.0,
											"origin_y" : 0.0
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-71",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 11,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 845.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 51.0, 113.0, 77.0, 22.0 ],
													"text" : "route symbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 51.0, 52.0, 29.5, 22.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"coll_data" : 													{
														"count" : 4,
														"data" : [ 															{
																"key" : 1,
																"value" : [ "https://www.sciencedirect.com/science/article/pii/S2352711017300195" ]
															}
, 															{
																"key" : 2,
																"value" : [ "http://www.academia.edu/download/60373799/Delle-monache-2018-Embodied-sound-design.pdf" ]
															}
, 															{
																"key" : 3,
																"value" : [ "http://www.academia.edu/download/27648519/vmain.pdf" ]
															}
, 															{
																"key" : 4,
																"value" : [ "https://github.com/SkAT-VG/SDT" ]
															}
 ]
													}
,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 51.0, 84.0, 78.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"precision" : 6
													}
,
													"text" : "coll openUrls"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 51.0, 220.0, 20.0, 20.0 ],
													"style" : "SDTpackage"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-35",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 51.0, 250.0, 217.0, 66.0 ],
													"style" : "SDTpackage",
													"text" : ";\rmax launchbrowser https://github.com/SkAT-VG/SDT"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-33",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 51.0, 159.0, 172.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "sprintf \\; max launchbrowser %s"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 51.0, 18.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 1 ],
													"order" : 0,
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"order" : 1,
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "SDTpackage",
												"default" : 												{
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
									"patching_rect" : [ 402.0, 664.9375, 60.0, 40.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p openUrl"
								}

							}
, 							{
								"box" : 								{
									"button" : 1,
									"fontsize" : 13.0,
									"id" : "obj-70",
									"maxclass" : "tab",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 402.0, 614.9375, 162.0, 89.0 ],
									"spacing_y" : 5.0,
									"tabs" : [ "The Sound Design Toolkit", "Embodied Sound Design ", "The Sounding Object", "SDT Github" ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 14.0,
									"id" : "obj-66",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 448.0, 589.9375, 70.0, 23.0 ],
									"text" : "Resources"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontsize" : 13.0,
									"id" : "obj-54",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 630.0, 340.0, 284.0, 42.0 ],
									"text" : "Sound is output as result of the interaction, and according to the objects' characteristics."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontsize" : 13.0,
									"id" : "obj-53",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 660.0, 457.46875, 276.0, 42.0 ],
									"text" : "The DC motor model belongs to the family of machine sounds."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 14.0,
									"id" : "obj-52",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.505431999999928, 449.0, 83.0, 23.0 ],
									"text" : "DC motor"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 14.0,
									"id" : "obj-51",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.505431999999928, 176.0, 83.0, 23.0 ],
									"text" : "Friction"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.3,
									"bubbleside" : 2,
									"fontsize" : 13.0,
									"id" : "obj-49",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 281.0, 245.0, 175.0, 41.0 ],
									"text" : "communication extablished"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.3,
									"bubbleside" : 2,
									"fontsize" : 13.0,
									"id" : "obj-48",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 310.25, 340.0, 167.0, 41.0 ],
									"text" : "object's name is windshield"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.3,
									"bubbleside" : 2,
									"fontsize" : 13.0,
									"id" : "obj-47",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 390.0, 180.0, 142.0, 41.0 ],
									"text" : "object's name is wiper"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontface" : 0,
									"fontsize" : 13.0,
									"id" : "obj-46",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 137.0, 374.0, 135.5, 26.0 ],
									"text" : "2. modal resonator",
									"textcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.8,
									"bubbleside" : 2,
									"fontface" : 0,
									"fontsize" : 13.0,
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 144.0, 238.0, 119.0, 41.0 ],
									"text" : "3. interactor",
									"textcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontface" : 0,
									"fontsize" : 13.0,
									"id" : "obj-44",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 523.5, 215.0, 119.0, 26.0 ],
									"text" : "1. inertial mass",
									"textcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontsize" : 13.0,
									"id" : "obj-43",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 660.0, 176.0, 278.0, 135.0 ],
									"text" : "The friction model references two solid objects, an inertial point-mass [sdt.inertial] and a modal resonator [sdt.modal], that communicate by means a third entity, the interactor [sdt.friction~].\n\nThis architecture is shared with all the other sound models of solids interactions."
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"data" : [ 27060, "png", "IBkSG0fBZn....PCIgDQRA..APO..D.8HX....vxV+sh....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6ceGbbbde+3+80an2ANhdkDDfDr.BBBRSPBVDEknrhs7jwwNyHWxHGmYxDYIaGqQV1dribFKm3zriawR1I1IRIxRhRTjDr.VAI.HDIZjD8NNzO.bEb0e+A+A7kjh31m6vd6s2hOulAST78b69.v6126yy9Tjcz+uE7Bd1ysNSHaC146CKgPHDBYEHOTWAHDBgPHqdTfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.JM5Zbd+fN8XC.YJrx6GWBgPHDtXwsJLsGc75wTkLOHEkKvqGS9lRaG+U38C5o48iHgPHDBaLmzVQ+47375wTm0oP925WwqGS9F0k6DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.JC0UfvEJUpDwGe7Ht3hCZ0pEpUqd4e..rZ0JrXwxG6GOd7Dhq4DBgPVKfBzeDhHhHP94mOxO+7Qd4kGRN4jQzQGMjISlecb73wCFZngPO8zC5t6tQO8zCFd3ggWudCR0bBgPHqUQA5++Sud8X6ae6npppB4me99c38ihb4xQFYjAxHiLvd26dA.fc61Qmc1It7kuLZrwFgSmNW0mGBgr1U+82OFbvAWwWOwDSDEVXgBXMhDprlOP2fAC3odpmB6cu6c4tOOXRqVsnjRJAkTRIvhEK3pW8pnt5pCCLv.A8yMgPjdlYlYPO8zyJ95d73gBzWiXMaftRkJwANvAvS7DOALXvPHoNXvfATSM0fZpoFzWe8g+6+6+azd6sGRpKDBgPBuslLPu7xKGOyy7LHwDSLTWUVVVYkE95e8uNt7kuL98+9eOle94C0UIBgPHgQVSEnqToR7k+xeYricriPcUYEsqcsKroMsI7G9C+AbwKdwPc0gPHDRXh0LyCcCFLfW7EeQQcX9RhHhHvW7K9EwW6q80DjmqOgPHjveqIZgdBIj.d9m+4QZokV.89c61MLYxDFZngvvCOLFarwfUqVgMa1fc61gWudgACFV9mXiMVjat4hbyMWDYjQFv06RJoD7BuvKfW60dMX2t8.93PHDBQ5SxGnmTRIgW5kdIDczQ6WuOKVrflatYzTSMgVZok.d5kkbxIiBJn.TUUUghJpH+98WPAEfW7EeQ7i9Q+HX0p0.pNPHDBQ5SRGnqPgB7bO2y4Wg4iN5n3+8+8+E23F2.tc6dUWGLYxDLYxDt3EuHRIkTP0UWMppppPDQDAyGibyMW7M9FeC7C+g+PXwhkUcchPHDhzij9Yn+zO8SibxIGlJ6ryNK90+5eM9leyuIZngF3kv7G1XiMF98+9eOd9m+4wYNyY7qULtLyLS7U+peUduNQHDBQZPxFnugMrA73O9iyTY6pqtvK8RuDpqt5DjkkU61si23MdC789deOLzPCw76aCaXCn5pqNHVyHDBgDtRRFnqPgB7E+heQlV9VangFvq9puZHYde2c2ciW9keYbsqcMleOelOymAwEWbAwZEgPHjvQRx.8st0sh3iOdNKWSM0D9W9W9WBoqm5tc6F+ze5OEW5RWhoxqSmN7rO6yFjqUDBgPB2HICzqolZ3rLyLyL3W8q9UBPsgad85E+hewu.m8rmkoxWRIkfJqrxfbshPHDR3DIWfd5omNmaDAd85E+7e9OWzMhwei23MPmc1ISkkkaZgPHDxZGRt.88rm8vYYZrwFEkaBJK0R8EWbQNKat4lKRJojDfZEgPHjvARt.cV1l.EyqQ5lLYB+O+O+OLUVpa2IDBgrDIUftVsZQ5omtOKiYylQKszh.UiBL0VasLMc1n.cBgPHKQREnmSN4.4x88uR0We8viGOBTMJvUWc0wYYRN4jQt4lq.TaHDBgH1IoBzyJqr3rLCN3fA+JBO3xW9xLMc5JnfBDfZCgPHDwNIUfNKqY6yLyLBPMY0yhEK3F23FbVtXiMVAn1PHDBQraMWf9ryNq.TS3GrDnGSLwH.0DBgPHhcRpcasnhJJNKiYylEfZB+XzQGkyxHVZgtGOdfMa1fMa1Vduheo+aEJT.Od7.850Cc5zAc5zs7+sVsZ4bbOPBes3hKholZJLyLy.61sCGNb.mNcBud8B4xkCEJT.850CCFLr7OQDQDPgBEg5pd.yoSmeruKrz+Wud8BUpTA0pUC0pUinhJJDarwhHiLRlVppIDeQREnyxFqR3T3gISl3rLgx.cmNchAGbPze+8igGd3.ZvFpToRjd5oirxJKjVZoEVegbx8LyLyfd5oGLv.CDP6QBJTn.ojRJHszRCokVZ901ebnhMa1Pe80G5s2dwjSNoe+9UpTIRJojPVYkERO8zgFMZBB0RhTmjJPmkKdDUTQE1zJc61siYmcVe1s5BcWt6xkKLzPCg95qOL7vCup2lYc4xE5s2dQu81KToR0CDtKT270jSNIt3Eu3JdCIImbxnpppRPpKbo81aGczQGq3qWZokh7yOe+93dhSbBX0p0U70OvAN.m8.1.CL.t0stEld5o86y+8ysa2X3gGFCO7v..HwDSDkUVYHkTRYUcb4aKt3hXfAF.81auXrwFaUcrb4xEFYjQvHiLBjISFRO8zQokVJsQLQ7KRp.84laNNKSRIkTXyHcG.nkVZAYjQFq3qO1XiAYxjIHa6q8zSOnwFaD1saOnb7c5zI5omdPO8zChLxHwN1wNPZokVP4bc+lXhI74MCZylsfdcfUiLxH9bIK1gCGAzwchIlvmutu58ESlLgFarQL0TSEPmatLwDSfScpSgjSNYTVYkExWgD850K5ryNQSM0TPYicxqWuXfAF.CLv.HiLx.kUVYgE8RAIzSREnyRKu27l2LZpolDfZC+3W9K+kg5p.La1Lpu95Y5Q.vWle94Qs0VKxLyLw1291gd85EryMgMd73AM2byns1ZSPNelLYBe3G9gn3hKFaYKaIj7Lmmat4vUu5UEruKLv.CfQGcTrm8rGXznQA4bRBeE97.kY.KsPeKaYKzyokQtb4BM2by38du2SPCyue82e+3cdm2AczQGgEKHPqUX0pUbhSbBAKL+90VasgKcoKspebO9COd7f1ZqsPx2Eb5zIN6YOqnb+mfHtHoBz6omd3rLQDQD3y7Y9LBPsI7lc61wINwIPKszRHOH0oSmngFZ.m8rmEtb4JjVWH2aMR3jm7jAstXmE81aun1ZqMnzk2OL2tciye9yilZpIA8lHted85EM1Xi3pW8pg7uORDujTc49vCOLLYxDRN4j8Y4NzgND5niNPyM2r.UyBuX0pUb5Se5.ZvCpQiFDczQu7TQRud8PiFMvtc6vhEKvpUqvhEKvrYy98EiGYjQvYNyYv9129fJUp765FY0ypUq3Tm5TLO50UqVMRN4jefornRkJwhKtHra2Nra2NLa1LFe7w86wAhISlvMtwMvN1wNBjeUXhGOdvEtvEXZuU3gYvfADYjQ9.SIOYxjs7zXaoelat4X96Bc1YmXt4lC6cu6kFI7jOFIUfN.PSM0DNxQNBmk6K8k9R3kdoWZUOhbkZVXgEvoO8o8qoajLYxfQiFQ94mOLZzHSiNcWtbgAFX.zYmc5WcgoISlPs0VK1+92OTqVMyuOxpmWudwktzk37yFZ0pEYjQFHiLx.ojRJL84A61sigFZnkmBjr5N24NHyLyLnLB383wCtzktjeMHZkKWNxLyLQgEVHyCdO2tcigFZHzUWcgQFYDNuwFSlLgyd1yhCcnCEVMMbIAeRt.8FarQlBzMXv.9pe0uJ9I+jeRXyzXKXa94mGm5Tmxmih56mRkJwF23FQd4kmeOn0TpTIxImbPN4jClat4vcu6cQGczASsRaoQ8bM0TCzpUqecdIAt1ZqMeN8rTnPA13F2HJt3hgRk92kVzpUKxKu7Pd4kGFYjQP80WOVXgEX58dkqbE7jO4S52mSewqWu3JW4Jnu95ioxqToRTRIkf7xKOnSmN+5boPgBjYlYhLyLSX0pUzc2ci1ZqMeNiElXhIvst0svl27l8qyEQZSxc6cc2c2n0Vakoxlat4hW8UeUTSM0rleUZxkKWn1Zqk4v73iOdbzidTTZoktpGA5QEUTXaaaa3vG9vHxHijo2yzSOMpqt5DjoqG4dc09G8QezJ95omd53XG6XXSaZSq5f0zRKMbricLlmO8KrvB31291qpy4Cq0VakowjCv8VxoOxQNBJojR76v7Gld85QIkTBdhm3I3rE9szRKX7wGeUc9HRKRt.c.fe2u62w7fWQud83y849b367c9NHmbxIHWyDuZpolXpa1kISFJojRvi8XOFSK0t9iDSLQbzidTjWd4wT4MYxDuegbxiVas01JNXrJszRQ0UWMhHhH3symBEJPEUTAyaOvrF9xh4medbqacKlJaVYkENxQNBuu.OYvfAbnCcHr4Mu4UrwFd85kFGPjGfjLPezQGE0Vas906IyLyDu7K+x3a9M+l3fG7fHgDRHHU6DeFczQwctyc3rbxjIC6ae6CkUVYAsmcmJUpPkUVIpnhJXp723F2fdjIBfUZeEX6ae6Ast8UlLYXm6bmXcqacbV1YmcVdamT7ZW6ZL0ffRKsTrm8rmf1.zTlLYnzRKEG7fGbEmpslLYJfVpYIRSRx.c.f25sdKzc2c6WuGYxjghJpH7Y+reV7Zu1qgu6286hm5odJjat4JYG7INb3.W4JWgoxVUUUIXKtEETPALET31sab4KeYZp7DBTd4ki0u90GTOGxkKGUTQELs1QvGsRu2d6EiLxHbVtryNaA64WmbxIi8rm8rhsTmk5KYsAoYJEtWP0O9G+iWUqwxYlYl3S9I+j3ke4WF+re1OCesu1WCOwS7DH+7yWxr3zzXiMxzyMeaaaaH6ryV.pQ++TZokhBKrPNK2jSNYHYANYsrzSOcTTQEIHmK850ihKtXNK2pcIc1gCGngFZfyxEe7wiJqrxU04xekd5oisu8sKnmSR3GI2nb+9svBKfezO5Ggu427ah3iO9U0wRiFMnjRJAkTRI.3de4uyN6D2912F24N2Ac2c2gcK5IyO+7nqt5hyxs90udrgMrAAnF8wUd4kCKVrv47.t0VaEEUTQz7SW.nSmNryctSA8bVbwEiN5nCeNesme94ga2tC3a19t28tbtOEnUqVTc0UGRtg9hJpHrvBKPqXbjUjjNPG3dSuiW9keY7W7W7WfRKsTd63pVsZTbwEubKGb3vA5t6tWNfuqt5RPVEqVMXY.kYvfATVYkI.0lGMYxjgJpnB7G+i+QedCSNc5Dc2c2BVqFWKaG6XGB9zETkJUvnQi9bZj40qWL6ryFv27NK2b6l27lCo6q.kUVYn+96m4YiBYsEIefNv8Zo9q8ZuFN5QOJ9jexOIuNeUWhZ0pw5W+5W9YJ5xkqkC3u8suM5pqtB3cBqfAmNcxzEv1912dP4uW9C850iRKsTbiabCeVt6bm6PA5AYQGcz9b2+KXJ8zSmy4EdfFnO93iy4dAQTQEEyy.ifEEJTfxJqLboKcoPZ8fHNslHPeIG+3GG0We83IexmDUUUUA0tMSoRknvBKDEVXg3XG6XKuueuT.+su8sCocQeO8zCm8fPZokVH6h2OrMrgMft5pKedQWylMiQFYDAYKWcsJVdV1AKrLfLmc1YCniMK2bavb1c3OxN6rQGczQHcszmHNE5+zo.axImD+5e8uFe8u9WGm4LmgocnM9fRkJQ94mOdhm3IvK7Bu.9m+m+mwW5K8kPIkTRH4hDrzc6hoAgib4xYp9PyK8fGc5zI3CLx6mZ0p4rq9sZ0peebc4xEms7Ot3hCYlYl98wNXPlLYXqacqg5pAQDZMUKzueSLwD3Mdi2.+1e6uEEVXgn7xKGacqak2WfHVI50qGUUUUnpppBKrvBngFZ.W6ZWC2912Nnu5mM93iy4b2NkTRAQGczA05g+JszRCQDQD9bIAcngFBVsZk1+zCBxN6rC4ytCc5z4yAtVfLtUFXfA3r2xXcAtQnjRJov42EHq8rlMPeId85c4t.+29a+snfBJ.ae6aGaaaaCwFarBRcHhHh.UWc0n5pqFyN6r35W+53xW9xLuNR6uXYp7EpeVgOJxjIC4lat3l27l9rblLYJj1RRopfwFfh+RmNc9bAjIPBzmXhI3rLhkVme+xLyLooqI4ArlOP+940qWbm6bGbm6bG769c+NjZpohBKrPTTQEgBKrPDWbwEzqCwDSL3fG7f3fG7fn4laF+e+e+eXfAFfWOGbs9OqRkJQyyN+gwRf93iONEnyyjISFmaKwBAt54k.IPmqUZsDSLQQYO9jUVYQA5jG.En6CiN5nXzQGEm+7mG..IkTROP.ehIlXP87WVYkgMu4MiFZnA7lu4axKaDCd85kyVjjc1YGxGY6qjHhHBjZpothKEo.beCKD+WBIjfnXN9y0leh+NPSc61MmKYrhwVmCbuE3Fpa2I2Ow4UsEoFe7ww3iONt3EuH.t2.konhJZ4.9fQWRJSlLTd4kiRKsT7FuwafKe4KupNdyLyLb1JlzSO8U04HXacqac9LPelYlANb3f1uz4Qq1ElI9BeGnOyLyv4xFrXdVSjVZog6d26FpqFDQBJPeUX5omFW4JWY40B8niN5GHfOszRi21VV0pUK9xe4uLJszRwu427afMa1BniCKsdUrbw6UBK8LxDSLgfstyuVfXoKmWsaOoOLtl5WxkKm22UA4SBwiAjD9fBz4QlMaFW6ZWCW6ZWC..QFYjK2E8aZSahy82XVTQEUfLxHC7C9A+.l1tSeXb0c6QFYjB9p.l+J1XiExkK2msrhBz4W7cPZfhu61etBziN5nEEy87UhPMqbHgGn.8fn4medzXiMhFarQ769c+NXznQTVYkgxJqLjSN4DvWnHszRCuvK7B3Ue0W0um2sb0x9vgsMVEJTf3hKNeNXlBzdvf7nIVBz4ab84DgZltDnD60OhvhBzEPCO7vX3gGFG+3GGQEUTnrxJCG5PGJfZIYlYlId9m+4we+e+eOVbwEY98wUYC1CzO9RBIjfOCz8m+lP3lTMPmqkiYwdfoJUpnAFGYYh29RRhat4lC0UWc3a8s9V3e+e+eGlLYxuOF4kWd3YdlmwudObEzYvfA+tdDJvU8jBz4W70XAQrgq.cwxXGvWBGpiDgAEnGh40qWbkqbE7M9FeC7q+0+Z+d8Yde6ae90bFmqftvkQFtFMZ74qSA5DVvUfd3v2GBGpiDgAEnKR3wiGTWc0gW3EdA7lu4ax4ToYIxkKG+4+4+4LUV2tcC2tc6yxvUPoXAEnS3CRg.cwv5C.QbfBzEYb61MN9wON9m9m9mXNTJu7xioMtDVNdTfNYsBVtA2vgvxvga5fHLn.cQplatY7C9A+.lClJu7x4rLrrnaDp27MXEW0SOd7Dz2jaHg23JLG.gEeFJb46rjfOJPWDqu95C+leyugoxVZokxYqIXo0FAxZgcn.W0SkJUJYGHWD9gXc4M1e4uqNdDoqv9OQavfADQDQrhutCGN3bsZVL6JW4JnvBKD6cu60mkSqVsn3hKFezG8QqXYXo6zc3vQXwHcmqdtHb4QG3unKdyejKWNTpToO+aJWOicwfvg5HQXD1GnevCdP7TO0SshutKWtv29a+swPCMj.Vq3Wu0a8VXW6ZWb1B6RKsTeFnKWtbnRkJe151vkm8LWWDSpFnSW7leoVsZeFnGNziUzmIHKIruK24J.RoRkH0TSUfpMAGyO+735W+5bVNVVC1kJClr0psPObHfIbBWCnrvgvR5yDjkD1Gna2tcNKiXdyUfUm4LmgyxDczQyYY3Jnat4li45TnDW0SoZfd3P.S3DtBzCj8KAgV3PcjHLB6CzYoEkrDzI10e+8y4HtkkabgqKf4qkSUwDtpmRw.c2tcSsFimw0mSD6i+Fa1rwTiZHqMD1GnuVoE5tb4BlMa1mkgkeO80.HDf6ciMw.mNchYmcVeVlvgA1m+hqemI9Ot9bhX+u4h8a3fHrB6CzWqzBc.t+xqJUp3rE3bsEtZ2tcQ+F8.K8h.erU0J1PW7l+w03NYt4lSTOyBnOSPteg8A5rzBcox9hMK6S4bsXYvRPmXuU5bU+jKWNSCPPVIVVbQD6sVLbDKaWvh4PSwbciH7VSDnmbxIizSOcAn1Dbw0Eeb4xEmA5QFYjbtUX1e+8620MgTe80mOe8DRHA+Z0yhqxJVdFkSO8zg5pfjSTQEEmSGTw5Td0iGOX3gGNTWMHhHg8A5iN5nvlMabVtssssI.0lfmXiMVNuvCWOi8kvUqzGbvAEMgXOrolZJNaop+1c6b82UwveKb5zonumSBGISlLDWbw4yxHVuA2wFarvloYJQXD1Gn61sazd6syY4XYyKQLikPJV69MtNVd85E8zSOLcrDZc0UWbVF+MPmqwcvhKtXHua2Gd3gYZsGm3+3pmulat4DkcsMW8TEYsmv9.c.fVZoENKiQiFCqWfY14N2Imkg0tFLszRiyxvRvoPysa2n2d60mkQgBE7dKz850aHuU5CLv.gzyuTVJojBmkQr0JcOd7fAGbvPc0fHxHIBzu0stESk6S8o9TA4ZRvQzQGMpppp3rbbE1c+GOttH1ryNKFczQY53IT5t6t4bgUImbxwu2NIYo7gx4mua2tEsOGWofTSMUNGWIc2c2hpdHo2d6k5tcxGijHPepolBiLxHbVtssssEV9rzOzgNDS6TZ24N2g4iYQEUDmk45W+5viGOLeLClVbwEQyM2LmkikeudX50qmyxDJe90c2c2h5oNU3N4xkibyMWeVFKVr3We+JXxkKWL8cAxZORh.c.1ak9m6y84X5B3hEwEWbXe6aebVt96ue+pE0qacqiyEUCylMiN5nClOlASM2byb1hjjSNYDarw52Ga0pUy4Bty3iOteeb4Ctb4B27l2LjbtWKIu7xiyxzRKsHJV5cau81gUqVC0UChHjjIP+rm8rL0JlXhIF7m9m9mJ.0nUOsZ0h+l+l+FN6NP.fqd0q5WGa4xkiBKrPNK2Mu4MC4W7XpolB28t2kyxEHsNeIbMRmmXhIfEKVB3ief51291LMKNHqNQEUTbN1KVbwEQas0l.UidzrYyFZs0VCo0Ah3kjIP2jIS3Tm5TLU18rm8fO8m9SGjqQqNxjICekuxWgo4OuUqVQc0UmeeNxO+74bNX6xkKbkqbkPVWu6vgCb4KeYNKmACFVUq0.bsPz30qWzYmcFvG+.gCGNnKdKfXoU5s0VagrwSgGOdvku7koG+BYEIYBzA.dm24cXdtXezidT7rO6yBYxjEjqU9OEJTfuvW3KfMsoMwT4O4IOY.0JZMZzvz4XjQFAW4JWQvm5Vtc6Fm6bmioUHsssssA4xC7ONyUKzA.5ryNErAFkWudwEu3EEEcw6ZE4jSNb9Ha73wCN24NWHoWqpu95YZrBQV6RREna2tc7lu4axb4+DehOA9q9q9qXZ.mIThKt3v25a8svt28tYp7yO+73jm7jA74q3hKFIlXhbVtd5oGzTSMEvmG+0RAZlLYhyxlc1YiLyLyU04KkTRgycdKa1rw7X0X0polZhVEvDXxkKmooGpMa1X9Q7wWt4Mu4JNUREiMJgDZHoBzA.t3Eunesnnr0stU78+9eeQwBOSokVJ9deuuGmi3162q+5u9p5YrJSlLrqcsKlVpTau81wMu4MC5sT2sa23pW8pLM2q0oSGJu7xW0mSEJTfbxIGNKWqs1JlZpoV0mOeo6t6dEWrjjBKgwhYIjPBLM1Rld5owEtvEDjsy1k9d2JImbxgo84AhzmjKPG.3m+y+4Xt4li4xmbxIiu5W8qhW9keYje94GDqYOZYmc13q809Z34e9mmyQa886ZW6ZngFZXUe9iJpnvV25VYpr27l2D0VasAstbb1YmEevG7ALuv1TYkUxa684r7LT850Kpqt57qOewJud8hVasUbkqbkG4qGQDQfsrksv6mWxCprxJioAh5PCMD9fO3CX9w74ura2NN6YOKZrwFWwxHWtblezbDoOIYf9niNJd0W8Uw7yOue89xM2bwK8RuDdwW7EQ0UWcPcaWUlLYnfBJ.+0+0+03UdkWAkTRI906erwFCu9q+57V8ovBKj4URuQGcT7du26w6qdV2912Fu+6+9LuLaVPAEvq6jdwFarLs6asvBKfSbhSvqSkMGNbfyctygabiarh8.xt10tfRkJ4syI4QSsZ0XG6XGLUVylMi2+8eedeYXc3gGFu669tbtfBUd4k6WMBfHsoXSaZSuRntRDLL+7yiVZoETd4k62qbXIkTRXyady3vG9vnjRJAQDQDvoSmvpUqqpAEkBEJPQEUDNxQNBd1m8YwAO3ACnki1olZJ728282wqsRTlLYHiLx.SN4jLsen61saze+8iImbRnRkJDYjQFPOKOWtbg95qOTe80iN6rSl6N+bxIGTQEUv6O+vXiMVl5c.2tcid5oGXwhEDczQGv8RvRKmsW7hWzmid5hJpHTXgEBmNc5y0FfzRKs.Zufmq45dgEVnnnacme9484iTSkJUXCaXCq5yyR+aJKiiAOd7f96ueL0TSA0pUGveWXoky0lZpIbyadSNeF84latnrxJC.2az2uRkOlXhYUOFSB2rngzf4XKfWOlpbZCwaZ02inASR5a2evAGD+ve3ODeiuw2fyEQkGEYxjg7xKuk6JVud8holZJL5nihQFYDL1XiAKVr.61su7OKt3hPgBEvfACvfACH93iGYjQFHSWjVXJ...H.jDQAQ0LyDFMZbUO.7lc1Ywq9puZPYqzTkJUX+6e+37m+7LOfrFd3gwvCOLzpUKxM2bQd4kGhJpn74Ez73wCld5oQ2c2M5omd76mCYAET.1wN1QPYv.kPBIfMtwMxz9CfGOdPmc1I5pqtP5omNLZzHRJoj372ef60xtkdubMR1otZOznnhJBtc6l4AC5PCMDFZngPDQDAJrvBQ1YmMmKhUd73AlMad4uKv5dFPpolJpnhJXprj0NjzA5.2aSs36+8+93K9E+hLMnm7EYxjgDRHAjPBI32cQNe3N24N3m8y9YA08EaEJTfpqtZbgKbA+ZCAwtc6ns1ZCs0VaPlLYPud8vfACPud8PiFMvtc6vhEKvpUqvlMaA7.qaCaXCA8ku2RKsTL3fCxzzkC3d2n2.CLvx+8RiFMH5niFpUqFZznApToBtb4BVsZEVrXAVrXg4QHcrwFKpt5potZODo3hKFd73wuVpUWXgEPSM0DZpoldfat2fACPlLYvlMavpUqvpUqAzl9SwEWL1xV1BM51IeLqItJwvCOL9te2uK1+92O9TepOESC3EwDOd7f29sea7du26IHyEb4xki8rm8f5qu9.ZWWyqWuKGbwm1zl1jfL.fV5lZps1Z86wgAv8VQw3imudVYkEprxJov7Prkt48.Y8S2sa2Xt4liWd7XJUpDUVYkHqrxZUerHRSqYtRgWudQs0VKZrwFwm8y9Y4ko5jPn81aGu4a9lB99Stb4xW9hGW+5WOnLptYUBIj.1wN1Amqla7oHiLR7XO1igyblyDzmlZOJaYKaAabiaTvOujGsRJoDjRJofqd0qxbO2vmhHhHP0UWc.sWEPV6XMSf9Rlc1Yw+5+5+Jpqt5PM0TCJszRYZNXKzZs0Vwe7O9GE7kazGVZokFdhm3IPas0FZokVDzsPR0pUisrksf7yO+PR2KpUqVbvCdPboKcIAaumVsZ0XO6YOLsm0SDVIlXh3nG8nn0VaE25V2RvVNjyLyLQEUTAuM8LIRWq4BzWRqs1JZs0VQjQFIpnhJvt10tP1YmcHsNM6ryhlZpIboKcIAuE49hBEJPokVJxImbPiM1HFbvACpc8+RKxKkUVYg7QVsJUpP0UWMFarwvMtwMBZqi2JUpDETPAn3hKNr6QBsVhb4xQokVJxLyLw0u908qc3P+gZ0pQ94mOJnfBPjQFYP4bPjdVyFnuj4medb5SeZb5SeZjVZogctychBJn.jQFYHHaypiO93nolZBM1Xin6t6VvWuz8GQDQDXu6cuXwEWDCN3fKuksxGsTQoRkvnQiHyLyDqacqSz8biSIkTvQNxQvfCNHZqs1vDSLAu7uUQEUTHqrxBEUTQLcyK5zoC4kWdqXOkjRJoDP0CecyrxjISzLWm0oSmOqqAy0NhG97bfCb.X0pUzWe8g95qOd4l8hKt3PQEUDxN6r8qdNrvBKbEerXzpK3ZGx97e9Ou3MAIDKojRBYlYlHyLyDYkUVvnQivfACOxt9xgCG9b9taylML7vCigFZHL3fChgGdXL3fCxzb9VLygCGXvAGDCMzPvhEKvlMavlMaOPHuBEJdf.HEJT.c5zAc5zgHiLxkmxWhsPbewgCGXrwFa4ounUqVYZjqqSmNDe7wu7zYjdlnRGKrvBnu95CiM1XK+8f6eTr+veO.3dsDeoYNiQiFYZeUfvMyIsUzeNONudL0YcJj+s9W40iIeiBzC.KEHoWu9k++t3hKB850COd7fEWbwGXtoa2tcA8YOKFr3hKt7zyQmNcXwEWb4Pb+cg9IbgSmNgc61W9B4d85EJTn.pUqFpUqFZ0pMj+HDHBKOd7.61sCqVsBOd7r7M5pQiFnQiFAoW.WKZsZfd3SShDQb61MVXgEB6accvzRWvJlXhITWUDLpToZ4UMOBA3dOyc850SA2DAgjbsbmPHDBYsFJPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.j84++F2KeePOZzCfTUYkuOrDBgPHbZQOxgEOp30iobudQLpbvqGS9lxogdd+fZHxXQ7Fzw6GWBgPHDxiF0k6DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhD.EnSHDBgHAPA5DBgPHR.TfNgPHDhDfRitFi2OnSMZ+vqbZ+PmPHDhvyhG0XZO76VCtRYdPpJliWOl7Mk1N92k2On0x6GQBgPHD1XNosh9y4w40ioNqSg7u0uhWOl7MpK2IDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBfBzIDBgPj.n.cBgPHDI.JPmPHDBQBPYntBv2hO93wm9S+oCIm6EWbQX1rYL6ryBylM+.+3vgiPRchPdXSM0Tn81aeEecc5zgssssIf0HBgvGjbA5FLX.6bm6LTWM9XrYyFLa1LFarwP6s2NZqs1vPCMTntZQVCxpUqn2d6cEe8HiLRJPmPBCI4BzEqzoSGzoSGRIkTvl27lA.fYylQas0FZqs1P6s2Nld5oCw0RBgPHgqn.8PnniNZTYkUhJqrR..L5nihqcsqgSdxSBqVsFhqcDBgPBmPCJNQjTSMU7TO0Sge7O9Gim9oeZnWu9PcUhPHDRXBJPWDRmNc3XG6XKGravfgPcUhPHDhHGEnKhsTv9q8ZuF9S9S9SfJUpB0UIBgPHhTqIeF5Nb3.1saeUcLjKWNzpUKTpL3+mPc5zgm7IeRTRIkfexO4mfYlYlf94jPHDR3k0jA5m+7mG+m+m+m7xwRkJUKOB10qW+C7emTRIgryNajUVYgHiLxU84J6ryFuxq7J3e7e7ezmS6HBgPHq8rlLPmO4zoS3zoSL2by4yxkPBIrb3d1YmMxM2bgVsZ86yWLwDC9a+a+awu3W7Kv0u90CzpMgPHDIFJPWfL4jShImbRzPCM...MZzfcsqcgZpoFXznQ+5XoVsZ7W9W9WBiFMh29se6fQ0kPHDRXFJPODYwEWDm8rmEm8rmEqe8qG0TSMXKaYKPtb1GmhO0S8THlXhA+G+G+GAwZJgPHjvATftHPGczA5niNPbwEGdhm3Iv9129X98t28tWbm6bGbkqbkfXMjHknWudHWtb3wimPcUgPH7HJPWDY5omFu9q+5niN5.O6y9rPmNcL8997e9OO5pqtv3iOdPtFRjBhO93wm4y7YVw.cYxjIv0HBgvGn4gtHz0u90w29a+swfCNHSkWmNc3q7U9JPgBEA4ZFQpPkJUPiFMOxeTqVcnt5QHj..EnKRYxjI7c9NeGbwKdQlJe1YmMdlm4YBx0JBgPHhUTftHlSmNwu7W9KwwO9wYp7G5PGBkVZoA4ZEgPHDwHJPOLva8VuE5niN3rbxjICeguvWPPV85HDBgHtPA5gA750K9o+zeJLa1LmkMlXhAkWd4BPshPHDhXBEnGlvrYy3m9S+oLMUiNvANf.TiHDBgHlPA5gQ5niNXZkgKmbxA4jSNBPMhPHDhXAEnGl48du2CiN5nbVtZpoFAn1PHDBQrfF8TgY750KNyYNC9y9y9y7Y41wN1A9C+g+.maZLAa1saG1rYCVsZc4erYyFra2NTpTIzqW+x+XvfAnWudnUq1vxE2DGNbfYlYFX1rYXylM3zoS3vgC3zoS30qWnVs5G3mniNZDe7wSy66Ggk9LiMa19X+HSlLnVsZnQiFnUqVDe7wiDRHg0DqCCtc6FSO8zXpolBVsZENb3.Nb3.tc6FxkKGJTn.pUqFFLX.FLX.QDQDHhHhHf1HnHgen.8vPW7hWDepO0mxmeIUoRkXu6cu3ce22U.qY2y3iON5omdP+82OVbwE862ub4xQpolJxKu7P5omtes91Kjra2NFbvAwPCMzxWfMPDczQiDRHArt0sNQ8uuAayN6rn+96G82e+X1Ym0uduxjICIjPBnvBKDYkUVRp+FZ2tczWe8gd6sWL4jSBud852GiniNZXznQjVZogjSN40D27yZQTfdXH61siqbkqv4Z9d0UWsfEnO2bygd5oGzSO8fEVXgU0wxiGOX3gGFCO7vPiFMH2byE4kWdHlXhgmpsAN2tcit5pKzau8xaK0tlMaFlMaFc2c2PqVsHu7xCETPAHhHhfWN9OrQFYDet1+GQDQfCe3CGTN2Or4medzc2ci96uellEGqDud8hIlXBLwDSfO5i9HrwMtQjat4xYv0XiMFt7ku7JFRlVZogJqrR+t9zZqshae6auhudgEVHJojR74wvrYy3l27ln+96OfBwe3ikYylQ6s2NznQCJt3hQQEUDMEWkXn+0LLUs0VKmA5wEWbHojRJntFuaylMTe80y7xTq+ZwEWDs2d6n81aGIkTRnhJpHjDr61sab26dWzZqsBa1rEzNO1saGs1Zqn0VaEqe8qGkUVY79Ecc61sO6MAgn0atb4B25V2Bs2d679lDyBKr.pu95wst0sPwEWLJnfBVwemlXhIfEKVVwiUfzCS.2K.0W+M1gCGq3qYylMzbyMit6t6UcP9ixhKtHtwMtAZu81QIkThO+6CI7BEnGlZ3gGF2912FEUTQ9rb4jSNAs.8d6sWbsqcMedwI9z3iONd+2+8w1111PgEVnfbNAtWKZu7kubPMH+QoiN5.CMzPnxJqDImbxB54NXZvAGDW+5W2mAo7AqVshFZnAzUWcg8u+8C850GTOe7ggFZHb4Ke4.9FI7G1saGMzPCnyN6D0TSMgE+8g3aRmGzzZPrrNumat4x6mW61siye9yiKdwKJXg4Kwsa23ZW6Z3bm6bA8K540qWbqacKTas0J3g4KY94mGm7jmDs0VagjyOexpUq3rm8r3bm6bA8v762LyLCNwINwppK8C1750KZrwFwYO6YEjv762ryNK9fO3C76ws.Q7gBzCi0c2cyYY36.8wGeb7Nuy6fAFX.d835uFbvAw68duWPq2Gb4xEN24NG9nO5iBJGe+USM0DSK+uhUKrvB3C+vODCMzPgjyuEKVvINwIDkawvd85EW8pWEs2d6gr5fUqVwINwIfISlBY0AxpG0k6gwFarwfMa1749ldFYjATnPAb618p97MyLyfyd1yFPsJO93iGQEUTKOE0zpUKb4x0xSkMKVr.SlL4W0SqVshZqsVb3CeXDWbw420Ieo95q2uCejISFhKt3Vd52oWudnSmN30qWXwhErvBKr7OVsZ0ue9nMzPCPgBEnfBJvudegZyM2b3zm9zATqxW5um2+eS83wCrXwxxetY94mGyO+7bdrb3vAN8oOM18t2MxHiLBjeUBJpu95QWc0ESkUlLYHojRBQEUTPmNcPmNcPiFMvsa2vtc6vtc6vhEKXzQG0uaouSmNwEtvEvwN1wnoRYXJJPOLlWudQ+82uOeN5pToBYlYlnmd5YUctle94Qs0VqeElGYjQt7pVWjQFImk2oSmn+96Gc2c2L2RAWtbgyblyfibji.CFLvbcyW5niN7q+dEUTQgbyMWjat4x7ygziGOXjQFAc2c2XvAGj4AFV80WOhM1XQhIlHy0uPoYmcVb5SeZ+5QVXvfAjWd4g7xKOl+2zImbRbm6bGzWe84yaJzsa2nt5pCG5PGBIkTRLWmBV5ryNQmc1oOKib4xQZokFxHiLP5omNznQCmGWOd7fIlXBLv.Cft5pK3zoSlpO1rYCMzPCXW6ZWLUdh3BEnGlq2d6koAF2pIP2lMa90EkMXv.1wN1AV25VmecdToR0xWHet4lCW6ZWioUEOa1rgyd1yhCe3CCUpT4WmyG13iONZrwFYprYkUVnnhJJfBFjKWNV25VGV25VGrYyFtwMtASOBE.fqd0qhidziJ5mq0K87+YskhwEWbnrxJCokVZ98BKTBIj.RHgDv1291QWc0E9nO5ifKWtdjk0qWu3BW3B3IdhmvuNG7s4laNzPCM3yxrt0sNr8sucltg36mb4xQxImLRN4jwF23FQCMz.5qu9X581c2cirxJKXznQ+5bRB8D2WQfvod6sWNKyp44n61saTas0x7bKuvBKDO4S9j9cX9CKpnhBG3.G.6bm6joP5YlYFTWc0spmBT25V2hytBWoRknpppB6YO6gWZkmNc5vt10tvgNzg74iOYIyN6rh9mmtWud8qQqcQEUDdrG6wfQiFWUqRfpUqFaXCa.O9i+39b5MZ0pUbsqcs.97vGt90u9JdSGQDQDX+6e+Xe6ae9cX9CSmNcXO6YOXe6aeLO8zX8lZIhKTfdXNVBzWM2ocqs1JlYlY3rbJUpDG3.G.6XG6XU2J46W94mON1wNFhM1X4rriLxHn0VaMfOWlMaFiLxH9rLxkKGG3.GHnr42jbxIiCe3CyT2LeyadSX2tcduNvWZu81YZ.noQiFTc0UixKubdctPGczQiibjifryN6UrL80WeXpolh2Nm9iolZpU7yZwGe73we7Gm2ag75V25P0UWMS8riYylCY+sgD3n.8vbiO93bNXiBz4W5BKr.SAjJUpD0TSMH0TSMfNObQud83fG7fLMv2Zs0VC3ft6bm6vYYprxJCpO+5HiLRb3CeXNeNotb4B82e+As5wpgYylQyM2LmkSiFM3wdrGComd5Ak5gRkJwt28tQwEW7JVlP0r0XrwF6Q9+dpolJN3AOHSOm7.QZokF18t2MSkkkFKPDWn.cI.tZAcfFn2PCMv4nNWkJUnlZpInO.iznQCNvAN.mg5tb4B27l2LfNGb8LrSJojDjskVCFLfxKubNKmX7Btd73AW5RWhyG8gb4xQ0UWMhJpnB50osrksrpeDPBgjSNYru8sOdsGtdTxLyLY5ln5s2dCJqTcjfGJPWBfqMEDVdtrOrQFYDlVNWqpppDrQKrFMZv92+94r0K28t2koowz8ytc6bNRfW+5WuecLWMxN6r4LDhkdmQn0SO8vTW0t6cuaA6yMxjICUUUUH5niVPNeAB0pUipppJAaIXcqacqbNVErYyF0s6gYn.cI.tF84xkK2u19D850Kmi9Vf6MX6BVcW5JQmNcnhJpvmkwqWu3F23F90wkqfQYxjI3+t5qtJdIg5E3mGlu1PRVRIkTBxLyLEfZy+OpUqFUWc0h10r7JpnBdaZWxhklpkbgkwOCQ7fBzk.XY5j4Oc693iONmKSlFLX.ae6am4iIeJyLyzmC1I.32aAmbMJ9MXvffOMwRJoj37h7hokqywGebL8zS6yxnSmNN2kwBVhJpn3bJdFJjQFYfrxJKA+7xxMUQA5gWn.cI.V1Gt8m69mk4C8N1wNBoqlTkWd4b9rFYcd2BDbdrEqVxjIiyKzuZ2pZ4Srz57fwtGm+XiabiA8mQs+JTcCNojRJb92BwzMLR3FEnKAvxn5l0.IVF8zwFarg7AYjFMZPd4kmOKi+zczbMHtD5MLikv0VEq+NVABVrZ0JmetIt3hKnrYA4OVZu.WrHkTRAwGe7gjysBEJ3bloPA5gWn.cI.VZgNqc49fCNHmCNrMtwMxzwJXa8qe89bf8L6ryh4laNlNVbcCOKrvB7x5gu+JhHhvmutEKV388S7.QWc0EmiH5RJojU0hFCeY8qe8hlVoGpu4BtVzZra2tn3yWD1PA5R.74yPmqtaOhHhPvGPSqjHhHBN2jMXsU5bMnA83wCyafF7oHiLRjbxIiniN5G4OQEUTLuNcGLw0RzqRkJC48pyRToRkfO.GeTzpUKRKszBo0AV54tUZ0riH9Pqk6R.rrgovxBUga2t47By4kWdhp0P7byMWe1UuCLv.L0iBrbgsVasUjc1YKnic.850iCcnCIXmu.gGOdvjSNoOKS5omtnZDlmQFYrp2vhVsRIkTB48XAKet2oSmztuVXBwyUlIALV9xFKOC3omdZN61TwPKateImbx97hhSN4jLMFChN5n4raXsXwB9vO7C8qcNr0BlZpo37wQDJFE29hQiFCoCNO.DzVYE8GrFnSBOPA5R.r7kRVdN6bsHRDQDQvzZptPRkJUHgDRvmkgqofGv8lq9rbyJyN6r3Dm3DhlAilX.WqY6JUpLj20xOLEJTDx2MwRIkTBome.JPWpgBzk.X44iyRfNKcapXDWszgk.c.1lWt.2a.x8ge3GhgGdXlJuTGW6c8wFarhptaeIgx8Cc0pUup2E03CrbsiPwfAkDXn.cI.gpE5hgtH7Qgqo8CqA5FMZjoM.Ff6MPDOyYNCN9wON5u+9WSulWy0maDa8pyRBk0qPw5ZvihJUpB4O5AB+gBzk.3i.cmNcxYvmX8Byb0JCVCzkKWN14N2oeMPkld5oQc0UGdm24cPGczgnZgdQnv03yf0aRRnw0b7OXJP2vjBFn.coC5eIk.3i.ctBhToRkftVS6O352eVCzAtWq8KszR86crs4laNzPCMfFZnADSLwfzSOcXznQjPBIHplU.7MmNcx47TVrdifZ0pE5zoKjLHGEKsPmHsPA5R.bcwAOd7v4H8lqo9lVsZWw8v4PMt5taKVr.WtbwbKQ1zl1Db61MS6E7OJyN6rX1YmEszRKPtb4HgDR.IlXhK+iT5h4rL6IDCOq3URTQEUHIP2e1rjHDVQA5R.b08crbAKttv77yOON0oNkeUuDSb5zoe00haYKaApToB27l2bUsRY4wiGL93i+.iD7HiLRjXhIhjRJIjXhIhXhIlP97QNPwRftXdNLyx5yPvP35+dSD2n.cI.tdFkrLf3XYwoIbVfLRcKojRP1YmMZrwF40soz4medL+7yu7BahJUpPJojBRM0TQZokFhJpn3syUvFWA5JUpTT+HGDKKArDBefBzCykbxIyYKzo.8.ep2DQDQf8t28BSlLgFZnAN2dPCDNc5DCN3fXvAGD.2amwKszRCokVZhhE.Eegq.cwdfoXt2CHD+k38JEDlv09BN.vPCMDmkQpGnuZ2fIRN4jwi+3ON5t6tQ6s2dPcWnxhEKnyN6Dc1YmvfACXaaaahl0O+GFWs9VrGnKluYIBweQeZNLGKA5rrlUK02.F3iEGCYxjg7xKOjWd4AylMiAFX.ze+8GTZ09RrXwBpqt5PxImLJu7xEciXbtBrE6KJIh85Gg3On.8vbrrFYy0NnFf3ukTqV78EtiN5nQIkTBJojRvBKr.5u+9w.CL.lbxICJKxLlLYBG+3GGEVXgXSaZSgrAy0CiqtrNTsOxyJwd8iP7GTfdXLYxjwYftSmNYZ.cwxyRTrsdbyJ0pUGTaYaDQDAJt3hQwEWLb4xElbxIwDSLAlXhIXdyggEd85E2912F82e+3fG7fH5nilWNtqFb84FWtbAOd7HZGXbR8G0DYsEJPOLVJojBmym096uelZcJWWX1nQiX+6e+9U8asHkJUhTRIkGXi2X94me4.9IlXBLyLyrpZEuMa1voN0ovgO7gC4ywaV5YGGNbHZm20TKzIRITfdXr7xKONKCKc2N.2A5TKYBbQFYjHxHiD4jSN.3d8ZxniNJFd3gwvCOLSyBgG1Rg5G8nGMj186rzyNKrvBh1.cZWyiHkPA5gwpppp3rLrLf3.B+eVngSToRExHiLPFYjA..lYlYv.CL.tyctie087VrXAM1XiXW6ZWAqpJmTnPATpToOGTkSM0TbtE2FJX0pUZusmHoHNevVDNst0sNTTQEwY43qVnayls0z6nXASwFarXSaZS3oe5mFkWd490F2Q2c2MFYjQBh0Ntw03SfqcisPEt1tfIjvMTfdXJVdd1SM0TXhIlfoiGWgHNc5j5dxfLkJUhhJpH7zO8Sictycx7bjtolZJHWy7MtVoBo.cBQXPA5ggzoSGScy54N24X9XpQiFDQDQ3yxHVuvrTib4xQ94mO1+92OSg5yLyLXlYlQ.pYOZbEnO6ryJJGCF2+5qOgHEPA5gg18t2MmCDJmNchye9y6WG23iOde95AyEPExGWxImL1291GTnPAmkk0wJQv.WetwqWun+96WfpMrYgEVfBzIRNzfhKLiLYxXp61u90ute2E4wGe797Buh0tnztc6X3gG1mkImbx4QtCWwx3BHTtyXkRJofpqtZTas05yxM3fChst0sJP0pGTLwDCjKWtOWdc6omdP94mu.Vq7MVGaIDR3DJPOLywN1wdf437J4zm9z98wlqtNc7wGG1rYSzsede26dW7QezGshutFMZPt4l6i70t5UuJ5pqtVw2ad4kGprxJW00wUik1nV70feagEVP.qQOH4xki3hKNedCelLYBKrvBb9XcDBd85kBzIRRTWtGFYCaXC3XG6XbVtt6tazau852GeV55z.43FL40qWeFHC36U3NtBXlat4Bn5EeqfBJvmutGOd3sUjt.AK6o.hkPzwFarP5M.QHAKTfdXhXhIF7bO2ywzRnIWcO6JQiFMHlXhwmkIT9rZeTX4hyqacqaEeMtV9TEKirettYK.DRmS0Ymc1b9nIZu81C4y6aud8FxmU.DRvBEnGFPlLY34dtmCQEUTbV1YlYFbsqcs.9bsRcM8Rld5oCpacn9qN6rSe95xjIymsPmq.ca1rIJVTcX4wbDJqmZ0p0m23Dv8Fnlg5vz6d26RCtShjEEnGF3YdlmgoEQFud8he4u7Wtp1YwXokVM2byA7wmOs3hKx4FOuoa6iK...B.IQTPTQBIjfOmQ.QFYjb966fCNX.U+3SrL38B0Kupbcyf.2qGdLYxj.Ta93ra2tn4ytDRv.EnKhoVsZ7k+xeYbjibDlJ+INwIPqs15p5bpWudjZpo5yxL3fCx4nJWHzSO83yQVM.2aurJTnfyM3Dwv3Ffkm4qACFDfZxJynQiLstxWe80K3yKcud8FRNuDhPhBzEoRM0Twq7JuByqS28zSO3sdq2hWN2rzRqFZnANCSClra2NZqs17YYToRESafMbcCLiN5nAzFnBehqAmmZ0pC46o8JTn.kTRIbVNylMiybly3y0+c910u90YZaDlPBmQA5hPUTQE367c9NvnQiLUda1rg+s+s+sUUWse+RO8z4LbXt4lC25V2hWNe9KOd7f5pqNNCYKnfBXJjikQnciM1Hy0ufg6d265yWWLLcv..Jpnh3b5OB.LwDSf5pqNA4lBu4MuItyctSP+7PHgZTftHRBIj.d1m8Ywy8bOmeskX9a9M+FlWy1YgRkJQokVJmk6V25VbNkwBFtwMtAmOGVYxjwz3N..HwDSjytqtu95CCMzPLWG4SSM0Tb9HN3Zv8ITjKWN14N2ISKFOCO7v3BW3BAstA2qWunkVZA27l27Q95JUpjyoCHgDNgVXYDAJt3hQM0TC17l2LSSKs62YO6YQ80WOuWmV+5WO5t6t4bDse0qdUnSmNl6MgUq95qOzd6syY4xN6rY9YJKSlLjUVYwYW3We80iG6wdLA8YU6zoSl92WwTvT7wGOV+5WOS+6z.CL.lZpovt10tXZAShUVsZEW5RWBiM1XqXY17l2Lu0qVDhX.0B8PDsZ0hZpoF7pu5qhW7EeQrksrE+NL+se62Fu9q+5Ak5mb4xQ4kWNmkyqWunt5pSPF4xyN6r3JW4JbVN0pU62KCp4latb1pRqVshO7C+PAatouziVfqMEm3hKNjbxIKH0IVsoMsINGrgKwhEK3Tm5TnwFaDNc5bUet6qu9v69tuqOCyiKt3XtGbHjvETKzEHIkTRH6ry9A9we5V86mCGNvu5W8qBJsL+9kRJofryNaNGk2tb4Bm5TmBadyaFabiaLnr1mO93iiKbgKvz.oZ6ae698xSaLwDCJpnhPGczgOKmEKVvIO4IQ0UWMSK1KAJa1rgKe4KyzdctXLXRkJU3fG7f3jm7jLupr0d6si6d26hLyLSjWd4gjRJIl+rjMa1P2c2M5pqt3b.DJSlLryctS+9FnIDwNJPeURiFMPud8PmNcK+yR++uTHdVYkEu0MslMaF+jexOQvVFM2111FFYjQ3bQKwqWun4laFiM1Xnppph2Vu2850KZqs1PyM2LSyE6zRKMlFk9OJadyaF80WebtZlY0pU7AevGf0u90iMsoMw6it7AGbPb0qdUlVJWiJpnXZP8EJXvfAbnCcHbpScJl6UCWtbgt6tazc2ciHhHBjd5oCCFL.850C850CMZz.ud8Ba1rAKVr.KVrfomdZLzPCwzmO..JqrxBp2LFgDprlLP+fG7fq5MbC4xkCsZ0Jn2k+fCNH9G9G9GDz8kbc5zgZpoFbpScJl5NzQGcT7tu66hBJn.je94Gvi9Z2tcid6sWzd6sy7JSmNc5vN24NCnyGv8ZU41291wEtvE3rrd85Es2d6n+96Gqe8qG4latAbOtrzwavAGDs0VaLO.GUoREpt5pYZ6UMTYoP8SdxS52OphEVXAN6wD+0N1wNPgEVHudLIDwh0jA5.hmo4CKrXwBd+2+8woO8oCIKLFwGe7X+6e+n1Zqkot7dwEWDszRKnkVZAFMZDETPAH0TSEJU56OtY2tcLwDS.SlLgd6sW+Zc+VsZ0nlZpYU2SHYkUVvjISLOMmrXwBZrwFwMtwMPlYlILZzHRLwD474G60qWX2tcL4jShgGdXL7vCCKVr3W00cu6cKZFc69hd85wgNzgv4O+4CYaAuxkKG6YO6AYjQFgjyOgHDVyFnGNvlMa3Tm5T3Dm3Dg7M0hjRJIru8sOblybF+ZjAuTXEv8BcMXv.LXvvxcI+hKtHb3vArZ0Z.uyloToRr+8ueDarwFPu+G1N1wNfLYxvsu8sY983wiGzau8t73MPqVsH5niFpUqFZznAJTn.1saGVsZc4eXsKheT15V2Jmqc5hI50qGO1i8XnyN6DM2byB55NuJUpv9129djCbPt9rrXaqBlP7EJPWDxgCG3Lm4L33G+3hps4wTRIEr28tWbgKbg.ZzH6vgC3vgCLyLyva0I0pUiOwm3SfDSLQd6XB.Td4kC4xkyzTu5Qwtc6AksyTkJUhcsqcgLyLSd+XGrISlLTPAEfLxHCbiabCAYMLH93iGUVYkq3M6w0miExUyNBY0hBzEIVpEdezG8Q3BW3Bhpczr6mQiFwwN1wDEKklImbxnpppJnMuv2111FhN5nQSM0jnXM.OpnhB6cu6kys3VwNsZ0hJqrRje94iae6aigFZHdY5pc+zoSGJqrx3b5Hx04MTub5RH9CJPODxhEKKuRV0RKsHZ16s4hd85wd26dw.CL.t90utfuNmKSlLTVYkghKt3fxTj69ke94izSOczXiMFx1K3UoREV+5WOJt3hkTALIlXhHwDSDtc6FiM1XXfAF.CN3fAbOarzVkad4kGV25VGSCVPJPmHkPA5B.Od7fYmcVL0TSgImbRXxjIzZqsht5pqU0yQMTKiLx.olZpn4laFc0UWA8tmTkJUH2byEEUTQLs2vyWzpUKppppP94mOZqs1vvCOrf7uaJUpDqe8qGaXCaXUMB5E6TnPALZzHLZzHpnhJvjSNIlat4fMa1V9QWrz+sFMZvBKr.TnPAznQCznQChKt3PBIj.maUtOJbEnqVs5UyuZDhfRxEnO1XigKbgKDRVzH73wCVbwEwBKr.lbxIWN.e5omVxtDSpRkJTd4kist0shgGdXze+8iAGbPdMbOlXhAETPAH2byMj1hojSNYjbxICqVst7hXBe2qJpToBFMZDomd5vnQiAk.k3iOdjSN4rhuNeM3BCDxjIa4VtKD3ZvlFn+8OwDSzm2zmPsTIyhrxJKe9HkBkedf3ej84+7e9v2lHRDkb61MFYjQv.CL.le94WtEVr7bRUoREhKt3V9h5IlXhPqVsBPsNvL2bygolZpG3l2X8lYTpTIhN5nQLwDChN5nQBIj.RJojnUvLAhGOdv+0+0+kO2w218t2sncg6grxLmzVQ+47375wTm0oP925ekWOl7MIWKzIgdJTn.omd5H8zS+A9e2kKWvlMavlMaXwEWDxkKGpUqd4eznQSXWXVTQE0Ga0ZyoSmvoSmKOp9c3vA750KToR0x+nVsZQ8MprVfYyl4b6aUud8BTsgPV8n.chfQoRkHxHij4MsivUKEZSgAhaSO8zbVFV1a2IDwhvqlCQHDBOgq.8nhJJZTtSBqPsPmPH7BmNc5ywOfVsZC5SyP+wRqfgqDp04jvMTfNgPV073wCd629s84bH+fG7fHkTRQ.qUqrklZb9BEnSB2Pc4NgPV0jKWNmCnQV1a2EJrr8CSA5jvMTfNgP3EbE.JVBz83wC5qu97YYToRERJojDlJDgvSn.cBgvK3ZAHY5omFSM0TBTsYk0QGcv4t8VVYkEma2uDhXCEnSHDdAKcQciM1n.TSVYVrXA27l2jyxkWd4I.0FBgeQA5DBgWjRJovYqZMYxTHcW5qgFZfyUxunhJJAaomkP3STfNgP3EZznAETPAbVtKe4Kyzh5Be6t28tLcyDTqyIgqn.cBgva1vF1.mi1cmNchyblyHnaWv2912F0We8bVNc5zwzMkPHhQTfNgP3M50qG4latbVNa1rg2+8eeAo62aqs1v0u90YprUTQEzVlJIrEMLNIDBuprxJCiN5nXgEVvmkygCG37m+7H+7yGaXCa.QGcz7Z8XxImDM0TSvjISLU9ryN6O1FJDgDNgBzIDBuRqVsn5pqFm3DmfosR1N6rSzYmchDSLQjWd4grxJqU0Zn9zSOMZokVP+82ueUmKu7xC3yIgHFPA5DBg2EarwhpppJb9yedleOSLwDXhIl.MzPCHqrxBolZpPud8vfACPmNcPgBEer2ia2tgMa1fISlvniNJFczQgMa17q5pRkJwt28tgFMZ7q2GgH1PA5DBInHiLx.UVYkn95qmy8c76mKWtPWc0E5pqtdf+20pUKzoSGjISFVbwEwhKtHS8.funQiFru8sOZZpQjDn.cBgDzjWd4gXhIFbtycN+tkyOL61s6yM+E+kACFPM0TCu+r6IjPEZTtSHjfpDRHAbzidTjbxIGpqJKK93iGO1i8XTXNQRgZgNg7+W6cm8USkkv1.+IIjDRfv7fLFPFzxgpPTFrPnTQTKs5gK6ZsdW86+B8eCe22W9ca+ceu5ap1tqRWMn0BQPvADhHxLQDYR.ABIjDRNuWTu3WMHr2gLcNGd9sVtJW0YmyYmfjmyYORwc1rYC23F2.u4MuACN3fXiM1HoTOb3vApqt5PEUTgpZuYmnXAFnSDkvTd4kixJqLL8zSiW9xWlvB1sa2N97O+yQ0UWsvE9FhzpXfNQTBkACFPUUUEppppv5quNb61Mb61cLObOiLx.EUTQ3XG6XnzRK8SNJ4IROgA5DQIMYmc1H6ryF0UWcXqs1Bqt5pX80W+i+Y6s29.e8FLX.VrXAVsZEVsZENb3.G6XGCEUTQHszRKA8tfH0AFnSDoJ3vgC3vgCTQEU7w+eJJJX2c2EABD.ACFDACFDFLX3iA3lMal8ENQ+uXfNQjpkACFfYylipUNNhNpfiNDhHhHc.C+W+ikTh0mz+PNyihs3MVeZIhHhDZmPFfuvw1V0IEC.NRIPL8bFqkxGLF6G3H1SOSjcZbcQlHhH8D08.sjM4NQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzARorfKFyOoqL+rHjwsi4mWhHhHQ1NrUrZX6wzyYJHDJNkMiomyXsT19e++IleRueL+LRDQDImMJ37v8wucL8bZy6pnlg++ESOmwZrI2IhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjNPJI6JPjHmbxA+o+zeJYWMTM762O9a+s+FTTTR1UEJA6Uu5UXkUVYeOdEUTAb5zYDedmat4vzSO89d7RJoDTc0UGwmW0p27l2fYlYl8834kWd3zm9zIvZDQGdZp.cmNchlZpojc0PU4u+2+6Xqs1JYWMnDrUVYE31s6883YkUVGp.84me9C77ZylsH9bplswFabfueCGNLCzIMC1j6DQDQ5.LPmHhHRGfA5DQDQ5.Zp9PmHhzpb4xEBEJz9d7ZqsVX2t8DXMhzaXfNQDk.3xkKr6t6tuGuzRKkA5TTQSEnGLXPr95qmvut1saGVsZ8.KyVas0A9KqwKbJqQDQDfFKP+ku7k3u7W9KI7q629seKt4Mu4AVl+5e8udfymUhHhn3INn3HhHhzAXfNQDQjN.CzIhHhzAXfNQzQVYjQFI6p.QwLZpAEGQDEK4zoS7se62tuyVDiF4y7PZGLPmH5HMylMmrqBDESva+jHhHRGfA5DQDQ5.LPmHhHRGfA5DQDQ5.LPmHhHRGfA5DQDQ5.LPmHhHRGfyC8iXBDH.750K74y2G+u68GylMCEEEX2tcXylMXylseweWOsHannnfc1YmewmA682CEJDBGNLrXwxu4y.61siTSM0jc0mHh9MXf9Q.d73Atc6FyN6rX0UW8PcNrZ0JJu7xgSmNwwN1wzrg6u+8uGyN6rvsa2X6s29PcNxHiLfSmNQEUTAxN6riw0PhH5vgA55Td858iAWqrxJQ84yue+XhIl.SLwDvpUqeLPqvBKDFLXHFTiieVc0U+3Mz3wimn97s4laBWtbAWtbgLyLSTQEUfJpnBjYlYFCpsjHKt3hn2d6E6t6tBKapolJ98+9e+9d7QGcT3xkq883kTRInkVZYeO9O9i+HVd4kEVO.fv5aWc0UD86REUTQn0VaU5xS5eLPWmY2c2Etb4BiLxHHb3vwkqge+9w3iONFe7wQt4lKZt4lQt4lab4ZEM1d6sw.CL.lat4haWiM1XCLzPCggFZHTUUUgye9yyljONZlYlAO5QORp+scZokFZqs1Nvxr6t6hc1Ym883ABD3.e8986+.e8QB+98GQk+Ce3CwjqKoev.ccj4medze+8GSdJTYs5pqhu+6+dbhSbBTWc0AKVrjvt16mvgCiQGcTLzPCI0SwEqL0TSg4laNTe80iZpoFUeKWn03xkKL3fCJUYyM2bwUu5UgMa1hy0JhTOXftNfWudw.CL.dyadSR45qnnfW+5WC2tciFZnATQEUjTpG..Ku7x3wO9wIsmdIPf.3wO9wXpolBM0TSHmbxIoTOzSBGNLFXfAv3iOtTkuzRKEs0VaHkT3WuQGsv+EuF26e+6Qmc1ovlFLQvmOen6t6FKszRnwFaLg+DpiM1Xn+96OgdM2OqrxJ3e+u+2n0VaModCNZcACFDc2c2X94mWpxexSdRzPCMvVGgNRhA5ZXKu7xnqt5BACFLhesYjQFvgCGvtc6HszRC1saGojRJvmOeX6s2Fd85Eau81Xs0VCgBEJhN2iM1XHTnP3hW7hIruXcjQFAO6YOKhecFLX.4jSNe7yf89uJJJe7y.ud8BOd7f0We8H5bqnnfG9vGhPgBgppppHttcTmOe9PWc0EVas0jp7W3BW.e1m8YLLmNxhA5ZTKrvB3AO3AQTeDa1rYTYkUhZpoFoGDaABD.yLyLXhIlP5uXE.XxImD6t6t3RW5Rw8o31vCOLdwKdQD8ZRO8zQM0TCppppfc61k50r0VagImbRL4jSBe97I0qQQQAO5QOBgBEB0VasQTc7nrO7gOft5pKolZglLYBs1Zqn7xKOATyHR8hA5ZPyO+73AO3AROJ1SO8zQc0UGJu7xi39UzhEK3Dm3D3Dm3DXs0VCu5UuBSO8zR8Zmc1YQnPgPas0FLYxTDcck0ye9ywKe4Kkt7EUTQ3rm8rGpoamCGNv4N24vW7EeAd26dGFd3gw6e+6k5093G+Xr6t6hScpSEQWyihVbwEwCdvCjpkmRM0TwUtxUP94meBnl8a0d6sK8uG9O9G+iC7Fvu10tFxKu7j9ZyVhf90XftFyFarA9we7Gk9KQN9wONZpolfYyli5qcN4jCtzktDJu7xQe80mTSyl4laN7zm9TzTSME0W+eswGeboCyMZzHpu95iIMIqQiFQokVJJt3hwvCOLb4xETTTD95d5SeJb3vAJqrxhpqud1zSOM5s2dk5eemQFYf1auc3vgiDPM6SKVNv6rXwhpXVhPZWLPWCIb3vnmd5Qp9z1hEKn4laNtLfrJu7xQ94mOdzidDd26dmvxO1XigxKubTTQEEypCd73AO8oOUpxlUVYgVas0X9p5lQiFQc0UGJt3hQO8ziTSWv95qOje94y4p9mPjLszJnfBvUtxUfUqViy0JhzNzlqemGQMxHiH0R2pMa1vsu8siqitZa1rg1aucbxSdRoJeu81aLaj3uW+RKy3GnnhJB2912NttDsVPAEfu4a9FoFWB6ryNXfAFHtUWzhBGNL5qu9jNLuxJqDczQGLLmneEFnqQr95qigFZHgkyrYy3ZW6ZIjlgzfACROuy2d6sk9IpE40u90XokVRX4xM2bwku7kia8e+OmEKVP6s2NxHiLDV1YmcVL6ryF2qSZAACFDO3AO.SLwDRU9yblyfVas0DxOSIRqgA5Z.60T6h5WQiFMhqd0qlP2vPLXv.ZokVjp4zmbxIwae6aipq2latId9yetvxsW+qFKF6.xJ0TSEW6ZWSpUmr96ueoGo75Ud85E26d2Sp4XtACFvEu3EQ80WeBnlQj1DCz0.b61sTyA5KcoKgBKrvDPM5WxjIS3xW9xRs4jDoSureMWtbIbLDXwhEbsqcsjR+Tmd5oi1aucgSUO+98iQGczDTsR84Ce3C3G9gePpoBoYylQ6s2NpolZR.0LhztXftFvqe8qEVlRKszj5JRlYylQyM2rvxs1ZqI8tS0u1N6rClYlYDVt5pqNjd5oentFwB4jSN3zm9zBK2DSLQDun8nGr3hKhe3G9Aoli41saG27l2DEWbwIfZFQZaLPWka0UWU31epQiFQCMzPBpFs+JrvBQkUVovxIyMn7oLwDSHraGxN6rUEKfKm8rmEokVZGXY762uT2fhdxzSOM5ryNkZNlmc1Yiacqaw8bdhjDCzU4jI76Lm4LI04h6O24O+4EN2bc61M750aDcdCGNLFarwDVtlZpo39JSmLRIkTvEtvEDVtC6M2nEM7vCK0XAA.n3hKF27l2T5UwOhHFnqpISSLaylMb1yd1DTMRL61sKr9nnnH8Nm0dlat4DdS.UTQEnfBJHhNuwSNc5T3XZHZ5BBsh8lVZxN9IpolZvUu5USnCnQhzCXftJ1zSOsvmlopppR0MEdpt5pEtZrI6zTJRJuZno1+0NwINgvxDoeVnkDLXPb+6eeoeOVe80iKdwKpJZkEhzZ3u0nhs3hKJrLUWc0IfZRjwlManzRK8.KiOe9vlatoTmuvgCK7oXSO8zSJiveQJqrxDtbdJyOm0h1aZoIypInQiFQqs1JNyYNSBnlQj9DCzUoTTTDNX3JnfBjZgLIYPlazP1lZd80WW3pBmLsJPxfISlDNPA2aKZUOY80WW5oklUqVQGczgTCnRhn8GCzUo1XiMDt4mnFe578TRIkHbdfKaftLkSMueiKyOmjYkuSqXgEV.28t2UpoklCGNvW+0espr0UHRqgA5pTxDhIpYsSlLZzHJojRNvxHaftnvtbxIGgSQrjobyMWgqdb5kAF2TSME5pqtjZZoke94iu9q+ZUaqLQjVCCzUojoOiU66XWh1am2byMkZ4OUzmEQxdHcxhn5ndHPe3gGFO5QOR5s12Ke4Kq5+2vDokv.cUp2+92efGO+7yOAUSN7jInUz6SOd7fc1Ymn95jrI5mWxLNATqBGNL5s2di3k02X0l0CQzOgA5pThdxUsPHV1YmsvoTmn2mx7D75katQzMtnFs2zRaxImLhesyLyLXpolJNTqH5nIFnqBENbXg8AoVHP2nQiB2ivEMv+DcbylMqI5CVY1qzE8dUswqWu3t28tRMsz1O82e+Xqs1JFVqH5nKFnqBIyWrqlGDX+bxrdlGMGOszRSUNc090La1LrZ05AVFsTf95quN99u+6kZW.7fr6t6ht6tao62chn8GCzUgj4K1EENnVHZQUIZCzEc9USzKA56MszhUyc9UWcUL3fCFSNWDcTFCzUgD8E6lLYR0sbuteh1PLQGWqbiM.Q+M2nFL0TSI8tklc61woN0oj57NxHifEVXgns5QzQZLPWEROEhEsA5ABDHpN+pI5gmPOXvfPQQQX4xM2bwst0svEtvEjdQ+omd5QSNv.IRsfA5pPgBE5.OtV4oyADWWE8dUzT45nzmEZEUTQE+hs9zFarQo1de84yG5s2di2UOhzsXftJjnsMRYZtS0BQ0UQuW4mEZK0UWcns1Z6WbyKlMaFs0VaRsCp8129VL5niFOqhDoaw.cUH8PSytmns6C3mEZClLYBe0W8U3y+7O+Sd7byMWbtycNoNWO6YOKpG87DcTDCzUgD8E6JJJZlmLMdGnKpO1USzSiGfeN61siadyaBmNcdfk6Tm5Tn3hKV34Kb3vn6t6Vytx4QTxBCzUgj4K10JOYZzFhwmPWcK2byE2912VpENGCFLfVZoEoV+12XiMvSdxShEUQhNxfA5pPxL2p2byMS.0jn2FarwAd7nMP2iGOZhASlOe9D1pJZs.88F7ah1I494rYyFZokVjprSLwD3Mu4MG1pGQG4v.cUHCFLH7K2WYkURP0lCufAChO7gObfkIZCzCGNLVas0h35VhlL+7RKEn+oF7axpjRJQ54mdu81qT6q5DQLPW0J8zS+.OtncoL0fUWcUgkQz6SQGGPa7Ygn5nISlzDaknhF7ax5bm6bR0L8ABD.8zSORM22I5nNFnqRIZGDSKDhI5oRMXvfvMYFqVshLyLyn55nFHpNlWd4I0z5JYqlZpQ3feSFlLYBs1ZqHkTRQXYWZokfKWth5qIQ5cp+uA4HpBKrvC73986W02O5hBwxM2bk5KzKnfBhpqSxV3vgE1ZEh94sdTFYjAZpoljprCMzPX4kWNNWiHRaiA5pThBw..lc1Yi+UjCo.ABHba0Tl2ixTts2daUcKVL+7yKbJXI6mE5MUUUUnxJqTX4TTTPO8zilZZJRThFCzUorYylv9OdxImT012hyLyLB2RLiUA5.+zmEpUhpaFLXPXWrnm0TSMI0XkviGO3wO9wIfZDQZSLPWESTyv5wiGrzRKkfpMQFYBXkMP2gCGBmZTyLyLpxEhDe97g2912dfkI6ryVWrrudXYwhEzVasI09Z+ryNqp9l2HJYhA5pXxrpZoF+xs0Wecg8YbN4jSDMptE8YQvfAUkyY4omdZgshhL+bVuKu7xS5kF1AFX.U+3GgnjAFnqhUd4kKLzysa2pt4o6qd0qDVlSbhSDQmSYJ+qd0qTUcAQnPgvXiM1AVFCFLfZqs1DTMRc6zm9znnhJRX41c2cQ2c2slXAEhnDIFnqhYxjIgeYenPgTUKQlKu7xXpol5.KiUqVwwO9winyad4kmv9Yds0VCSLwDQz4Md5ku7kviGOGXYJszRkp+iOJXukFVYVfcVas0vfCNXBQk.g2C..IbTRDEDUnVQj1ACzU4ps1ZE12hu4MuQ3HJOQPQQACLv.BKW0UW8gZEF6jm7jBKyfCNnpX8c2iGO3ku7kBKmLumNJwtc6Ruzv9pW8JUw+tmH0BFnqxY2tcoVHOFXfADNpxi2Fe7wEtLrZvfgHt412iSmNE1ED986WU7jaO4IOQXSBmYlYJUSLeTSokVJ9rO6yjpr8zSOvmOew4ZThA6BAJZw.cM.YdJtM2bS7zm9zDPs4Sa80WGO+4OWX4JqrxNzMwrQiFk5lAFe7wwbyM2g5ZDKLwDSH00W1Pqihpu95QN4jivxsyN6fd6sWU0XmX+Hpk1TCsrDosw.cMfBJn.oV7Md8qesTMyarlGOdPmc1ovcSrTRIEb9ye9n5ZcpScJotgft6t6jxJK1byMmTyU5bxIGTc0Um.pQZSQxRC67yOOFczQS.0pnintYhA5TzhA5ZDM1XiRsMU97m+7D5TYamc1Ac1YmR0rm0We8vgCGQ00yrYyR0GqgBEB2+92W3t8VrzxKuL5t6tE9zhFMZDszRKZh0t8joLyLSzPCMHUYe9yetpeW2STftWudSP0DRuheihFgUqVwW9keoTksu95CyLyLw4ZzOsnozUWcI0bB9XG6XG59N+WqvBKTplqNPf.nyN6LgDpuxJqf6e+6KU+fVWc0gryN63dcROnlZpAUTQEBKW3vgQ2c2spbwEZOhZsgEVXgDTMgzqXftFRIkThTMSqhhBd3CeHdzidjvlA+vZt4lC+y+4+TpsHUylMiu7K+RoVIvj04N24PFYjgvx40qW7u9W+KL5niFW5m0vgCigFZHb26dWoVmwyO+7kdu.m9IM2byHszRSX41byMkZVVjrHpE1VYkUvN6rSBp1P5QLPWiogFZP5lsdpolB24N2Il1Wx6t6tnu95CO3AOP597qwFaLlOWqSIkTvktzkjpYqCGNLdxSdB5pqthoiH5s1ZKbu6cOLzPCI0MKrW2EvlZOxXwhEzZqsJ0MDN4jSB2tcm.pUQtrxJqC73JJJn2d6UU2JCj5F+lEMFylMiabiaH0SmB7SCXs6cu6gG9vGhEVXgC8So50qW3xkK7ce22EQKdKM1Xinppp5PcMEIu7xCW8pWU54z96d26v28ceGd1ydF1XiMNzW20VaMze+8i6bm6H8V2pEKVPGczgz+bi9kJnfBvW7EegTksu95S3B5SxfLcyxae6aQmc1IVd4k4zXihXhGBojpic61wMtwMv+4+7ejp+gUTTvLyLClYlYP5omNpt5pQkUVIRKszNvmVLPf.XokVBSLwDX94mOhtY.CFLfKdwKF2GI2EWbw3ZW6Z392+9R08BABD.iLxHXjQFA4me9nlZpAkVZoG37aWQQA974CyM2bXhIlHhG7UolZpniN5f8adT5rm8rXgEVP3FRTf.APO8zCt90utpp0PN1wNlTka4kWF28t2EFLX.Ymc1H8zSG6t6tHXvfHPf.HXvfHXvfvoSmROtZniFXftFkMa1vMtwMPmc1oT8i8d73wCdwKdAdwKdALXv.rYyFRKszPZokFLYxD74yG1d6sgWudOz8+tACFPqs1pTCloXgBKrPzQGcfN6ryHZ+xdkUV4iOgsISlfc61QZokFra2NTTTfWud+3mEG1EsGa1rgqe8qiLyLyC0qm9+au+c0ctycD1cOKu7xvkKWR+T8IBNb3.EVXgRuCIpnnf0Vas88FHijeumNZP8b6qTDypUqniN53PuZisWn0JqrBlc1YwTSMEd26dG1XiMNzg4lMaFW9xWNgElum7xKObiabCoF7TeJgBEBas0VXwEWDSO8zXlYlAKszRviGOG5v7LyLSbyadSFlGCY2tcoepzgGdXU21KLWpeo3IFnqwsWeydoKcoHZ6HMdnxJqD+w+3eDkUVYIkqe1YmM9C+g+.NyYNSRsoVMYxDN24NG9lu4ah54cO8aUVYkI0TfTQQA8zSOQTq1Du4zoSoVjnH5vfM4tNwwO9wQokVJdwKdAFarwRnKElYlYln4laFEVXgIrq49IkTRA0We8npppB82e+XwEWLgd8KqrxPCMz.2A0hytvEt.VZokDNFR1d6sQe80G9pu5qRP0LwZt4lghhBlc1YS1UERmgOgtNhEKVPiM1Ht0stUBYS+vlMa37m+732869cphv7etLyLSb8qeczZqslPFY44jSN3pW8p3JW4JLLOAvjISns1ZSpY3fa2tUUaqtlMaFs0Va3xW9xvtc6I6pCoivmPWBCN3fB+Eus1ZqDTsQrbyMWzQGc.e97A2tcC2tcikWd4XxSsa2tcTd4kCmNchBJnfX5hES7PkUVIprxJw5qu9G+rHZlxZ+b4jSNvoSmvoSmI7oiVEUTALa179d7RJojC04M+7y+.Gy.IqtS4SIqrxBszRKX94m+PeNJt3hOve2s3hK9PetEo7xKGkUVYX0UWEyO+7X94mGd73A986WpeWUs+6dThmg+7e9Oq92lhnn1dS6p28t2Ae978w+bPy00TSMUjZpoB61sirxJKTd4ki7yOeM+Wj7gO7A31sar5pqBud8Be97gc1Ym88KQ2a1.r2eJnfBfSmNY+iSwEJJJHXvfvue+vue+vfACvjISvjISHkTR4i+cYW+ENJZiBNObe7aGSOm17tJpY3+uwzyYrFeB8iHrYyFps1ZQs0V6u3+ef.A9Eg6VsZE1saGolZppp4varTVYk0uYU6RQQA6ryNeLbG.eL.2pUqZ9ahgzNLXv.rXwBrXwBuoQJhv.8i316KNNpO0p94OENQDoEoOeDLhHhniXXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjNfga82+fRr9j9emmaTVpaGqOsDQDQB4OrA3KTJwzyoIDFNLGJldNi0RwXJw12z..omd5Hqzh8mWhHhH5SiM4NQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzAXfNQDQjN.CzIhHhzA9e.nchKW208k9o.....jTQNQjqBAlf" ],
									"embed" : 1,
									"forceaspect" : 1,
									"id" : "obj-41",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 842.0, 23.0, 100.0, 100.0 ],
									"pic" : "Macintosh HD:/Users/stefanodemo/Documents/GitHub/SDT/MaxPackage/icon.png"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-39",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 402.0, 84.0, 399.0, 40.0 ],
									"text" : "Here the friction sound model is combined with the model of DC motor to simulate the mechanism of the windshield wipers "
								}

							}
, 							{
								"box" : 								{
									"channels" : 1,
									"id" : "obj-15",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"orientation" : 1,
									"outlettype" : [ "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 20.0, 614.9375, 111.0, 41.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "live.gain~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"local" : 1,
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 658.9375, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 62.0, 202.46875, 50.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"id" : "obj-5",
									"knobcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 62.0, 176.0, 70.0, 23.0 ],
									"size" : 4.0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 11,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 444.0, 90.0, 254.0, 367.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 139.0, 62.0, 44.0, 22.0 ],
													"text" : "*~ 400"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 70.0, 22.0, 28.0, 28.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-3",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 70.0, 272.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 139.0, 22.0, 28.0, 28.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 70.0, 205.0, 88.0, 23.0 ],
													"text" : "-~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 139.0, 176.0, 75.0, 23.0 ],
													"text" : "onepole~ 50"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 139.0, 149.0, 75.0, 23.0 ],
													"text" : "onepole~ 50"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"order" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"order" : 1,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 1 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"order" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"order" : 1,
													"source" : [ "obj-4", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 20.0, 589.9375, 111.0, 23.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"style" : "SDTpackage",
									"text" : "p removeDCoffset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 548.0, 472.0, 57.0, 23.0 ],
									"style" : "SDTpackage",
									"text" : "sig~ 0.02"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"fontsize" : 13.0,
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 134.0, 112.0, 41.0 ],
									"style" : "SDTpackage",
									"text" : "Set wiping speed"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 11,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 345.0, 79.0, 730.0, 591.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-60",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 477.5, 524.0, 68.0, 35.0 ],
													"style" : "SDTpackage",
													"text" : "Rubbing force"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-58",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 361.5, 482.0, 101.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "definerange -3. 3."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-59",
													"margins" : [ 1.0, 0.0, 1.0, 0.0 ],
													"maxclass" : "plot~",
													"numinlets" : 1,
													"numoutlets" : 1,
													"numpoints" : 401,
													"outlettype" : [ "" ],
													"patching_rect" : [ 361.5, 514.5, 112.0, 50.0 ],
													"subplots" : [ 														{
															"color" : [ 0.4, 0.4, 0.75, 1.0 ],
															"thickness" : 1.2,
															"point_style" : "none",
															"line_style" : "lines",
															"number_style" : "none",
															"filter" : "none",
															"domain_start" : 0.0,
															"domain_end" : 1.0,
															"domain_style" : "linear",
															"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
															"domain_labels" : [  ],
															"range_start" : -3.0,
															"range_end" : 3.0,
															"range_style" : "linear",
															"range_markers" : [ -0.5, 0.0, 0.5 ],
															"range_labels" : [  ],
															"origin_x" : 0.0,
															"origin_y" : 0.0
														}
 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-57",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 199.5, 524.0, 44.0, 21.0 ],
													"style" : "SDTpackage",
													"text" : "RPM"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-53",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 86.5, 477.0, 112.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "definerange 0 1000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-49",
													"margins" : [ 1.0, 0.0, 1.0, 0.0 ],
													"maxclass" : "plot~",
													"numinlets" : 1,
													"numoutlets" : 1,
													"numpoints" : 401,
													"outlettype" : [ "" ],
													"patching_rect" : [ 86.5, 509.5, 112.0, 50.0 ],
													"subplots" : [ 														{
															"color" : [ 0.4, 0.4, 0.75, 1.0 ],
															"thickness" : 1.2,
															"point_style" : "none",
															"line_style" : "lines",
															"number_style" : "none",
															"filter" : "none",
															"domain_start" : 0.0,
															"domain_end" : 1.0,
															"domain_style" : "linear",
															"domain_markers" : [ 0.0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0 ],
															"domain_labels" : [  ],
															"range_start" : 0.0,
															"range_end" : 1000.0,
															"range_style" : "linear",
															"range_markers" : [ -0.5, 0.0, 0.5 ],
															"range_labels" : [  ],
															"origin_x" : 0.0,
															"origin_y" : 0.0
														}
 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-48",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 103.0, 25.0, 22.0 ],
													"text" : "t 0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 82.0, 74.0, 61.0, 22.0 ],
													"text" : "change 0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 214.0, 74.0, 29.5, 22.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-41",
													"maxclass" : "preset",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "preset", "int", "preset", "int" ],
													"patching_rect" : [ 214.0, 103.0, 85.0, 18.0 ],
													"preset_data" : [ 														{
															"number" : 1,
															"data" : [ 5, "<invalid>", "number", "int", 2, 5, "obj-10", "flonum", "float", 0.0, 5, "obj-18", "number", "int", 2, 5, "obj-20", "number", "int", 0, 5, "obj-1", "number", "int", 0, 5, "obj-21", "number", "int", 0, 5, "<invalid>", "toggle", "int", 1 ]
														}
, 														{
															"number" : 2,
															"data" : [ 5, "<invalid>", "number", "int", 2, 5, "obj-10", "flonum", "float", 0.600000023841858, 5, "obj-18", "number", "int", 1, 5, "obj-20", "number", "int", 575, 5, "obj-1", "number", "int", 300, 5, "obj-21", "number", "int", 3, 5, "<invalid>", "toggle", "int", 1 ]
														}
, 														{
															"number" : 3,
															"data" : [ 5, "<invalid>", "number", "int", 2, 5, "obj-10", "flonum", "float", 0.75, 5, "obj-18", "number", "int", 2, 5, "obj-20", "number", "int", 550, 5, "obj-1", "number", "int", 300, 5, "obj-21", "number", "int", 3, 5, "<invalid>", "toggle", "int", 1 ]
														}
, 														{
															"number" : 4,
															"data" : [ 5, "obj-10", "flonum", "float", 0.949999988079071, 5, "obj-18", "number", "int", 1, 5, "obj-20", "number", "int", 540, 5, "obj-1", "number", "int", 320, 5, "obj-21", "number", "int", 3 ]
														}
 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 342.0, 245.0, 56.0, 23.0 ],
													"style" : "SDTpackage"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 110.0, 284.0, 56.0, 23.0 ],
													"style" : "SDTpackage"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 110.0, 358.0, 56.0, 23.0 ],
													"style" : "SDTpackage"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 141.0, 409.0, 56.0, 23.0 ],
													"style" : "SDTpackage"
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-10",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 47.0, 29.0, 54.0, 23.0 ],
													"style" : "SDTpackage"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 301.0, 210.0, 51.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "-~ 0.25"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 301.0, 394.0, 97.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "*~ 3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 301.0, 319.0, 64.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "clip~ -1 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 301.0, 245.0, 39.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "cos~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 301.0, 449.0, 71.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "onepole~ 5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 47.0, 210.0, 35.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "*~ 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 47.0, 245.0, 71.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "modulo~ 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 301.0, 284.0, 60.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "*~ 3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 47.0, 284.0, 46.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "-~ 0.5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 47.0, 445.0, 113.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "onepole~ 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 47.0, 394.0, 82.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "+~ 600"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 47.0, 319.0, 82.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "*~ 300"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 47.0, 130.0, 75.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "phasor~ 0.5"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 214.0, 25.5, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-16",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 301.0, 529.5, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-17",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 47.0, 529.5, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"order" : 0,
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"order" : 1,
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 1 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 1 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 1 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"midpoints" : [ 310.5, 493.25, 310.5, 493.25 ],
													"order" : 1,
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-59", 0 ],
													"order" : 0,
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-48", 0 ],
													"source" : [ "obj-47", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 1 ],
													"source" : [ "obj-48", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"source" : [ "obj-53", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-59", 0 ],
													"source" : [ "obj-58", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"midpoints" : [ 56.5, 181.0, 310.5, 181.0 ],
													"order" : 0,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"order" : 1,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"midpoints" : [ 56.5, 491.25, 56.5, 491.25 ],
													"order" : 1,
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 0,
													"source" : [ "obj-9", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "SDTpackage",
												"default" : 												{
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
									"patching_rect" : [ 62.0, 227.46875, 70.0, 23.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"style" : "SDTpackage",
									"text" : "p onoff"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"id" : "obj-12",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 211.0, 501.0, 356.0, 52.0 ],
									"style" : "SDTpackage",
									"text" : "sdt.dcmotor~ @coils 20 @harshness 0.25 @size 0.06 @reson 0.85 @gearRatio 2.35 @airGain 0. @brushGain 0. @rotorGain 0.5 @gearGain 0.05"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.996078431372549, 0.823529411764706, 0.0, 1.0 ],
									"id" : "obj-11",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 267.5, 374.0, 320.0, 55.0 ],
									"text" : "sdt.modal windshield 4 1 @freqs 90. 400. 1240. 1750. @decays 0.1 0.1 0.1 0.1 @pickup0 1300. 1100. 600. 500. @activeModes 4"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.996078431372549, 0.823529411764706, 0.0, 1.0 ],
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 359.5, 215.0, 160.0, 23.0 ],
									"style" : "SDTpackage",
									"text" : "sdt.inertial wiper @mass 0.1"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.996078431372549, 0.823529411764706, 0.0, 1.0 ],
									"fontsize" : 12.0,
									"id" : "obj-4",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 212.0, 281.0, 423.0, 52.0 ],
									"text" : "sdt.friction~ wiper windshield 2 @stiffness 350. @dissipation 50. @viscosity 4. @breakAway 0.3 @stribeck 0.1 @kDynamic 0.5 @kStatic 1. @noisiness 3. @force 0.6 @contact0 0 @contact1 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Lato",
									"fontsize" : 24.0,
									"id" : "obj-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 86.5, 380.0, 35.0 ],
									"text" : "Intro: the windshield wipers example"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.996078431372549, 0.964705882352941, 0.964705882352941, 1.0 ],
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 11,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 342.0, 98.0, 388.0, 407.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Lato ",
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
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"fontface" : 1,
													"fontsize" : 18.0,
													"id" : "obj-4",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 45.0, 20.0, 228.0, 24.0 ],
													"text" : "Credits"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato ",
													"id" : "obj-2",
													"linecount" : 27,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 45.0, 50.0, 304.0, 330.0 ],
													"text" : "Copyright (C) 2001-2021 with the authors.\n\nThe Sound Design Toolkit (SDT) package for Max was developed by:\nStefano Delle Monache s.dellemonache@tudelft.nl\nStefano Baldan singintime@gmail.com \nStefano Papetti stefano.papetti@zhdk.ch\n\n------------------------------------------------------------------------\nThe SDT has been developed with the contribution of the following EU-projects:\n* 2001 - 2003 'SOb' http://www.soundobject.org/\n* 2006 - 2009 'CLOSED' http://closed.ircam.fr\n* 2008 - 2011 'NIW' http://www.soundobject.org/niw/\n* 2014 - 2016 'SkAT-VG' http://www.skatvg.eu\n\nComplete list of authors and contributors (either programmers or designers) in alphabetical order:\nFederico Avanzini,\t Stefano Baldan,\t Nicola Bernardini,\tGianpaolo Borin,\t Carlo Drioli,\t Stefano Delle Monache, \tDelphine Devallez,\t Federico Fontana,\t Laura Ottaviani,\tStefano Papetti, \tPietro Polotti,\t Matthias Rath,\t Davide Rocchesso, \tStefania Serafin, Marco Tiraboschi. \n\n------------------------------------------------------------------------\nThe SDT source code is available at https://github.com/SkAT-VG/SDT/"
												}

											}
, 											{
												"box" : 												{
													"angle" : 270.0,
													"background" : 1,
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
													"border" : 1,
													"bordercolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"id" : "obj-5",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 23.875, 9.0, 346.25, 382.0 ],
													"proportion" : 0.39
												}

											}
 ],
										"lines" : [  ]
									}
,
									"patching_rect" : [ 861.5, 134.0, 61.0, 23.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"fontname" : "Lato ",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"style" : "SDTpackage",
									"text" : "p credits"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Lato ",
									"fontsize" : 20.0,
									"id" : "obj-2",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 402.0, 23.0, 431.0, 46.0 ],
									"style" : "SDT_package",
									"text" : "A toolkit of physically informed sound synthesis models for sonic interaction design"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"id" : "obj-40",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.505431999999928, 449.0, 451.98913600000003, 136.9375 ],
									"proportion" : 0.39
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"id" : "obj-9",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.505431999999928, 176.0, 451.98913600000003, 260.0625 ],
									"proportion" : 0.39
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontface" : 3,
									"fontname" : "Lato",
									"fontsize" : 40.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 15.0, 256.0, 54.0 ],
									"text" : "SDT Overview"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"midpoints" : [ 220.5, 559.96875, 29.5, 559.96875 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 1 ],
									"order" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 1,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"midpoints" : [ 71.5, 492.5, 220.5, 492.5 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 122.5, 270.0, 221.5, 270.0 ],
									"order" : 0,
									"source" : [ "obj-18", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"hidden" : 1,
									"midpoints" : [ 122.5, 265.234375, 95.005431999999928, 265.234375 ],
									"order" : 1,
									"source" : [ "obj-18", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"hidden" : 1,
									"midpoints" : [ 71.5, 492.234375, 95.005431999999928, 492.234375 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 1 ],
									"midpoints" : [ 625.5, 571.46875, 121.5, 571.46875 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"hidden" : 1,
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"boxgroups" : [ 							{
								"boxes" : [ "obj-70", "obj-66", "obj-71" ]
							}
 ],
						"styles" : [ 							{
								"name" : "SDT-comments",
								"default" : 								{
									"fontsize" : [ 13.0 ]
								}
,
								"parentstyle" : "SDTpackage",
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
					"patching_rect" : [ 20.0, 85.0, 58.0, 23.0 ],
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
					"style" : "SDTpackage",
					"text" : "p intro"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"source" : [ "obj-64", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1::obj-15" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "sdttaxonomy.png",
				"bootpath" : "~/SDT_git/MaxPackage/media",
				"patcherrelativepath" : "../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "sdt.friction~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sdt.inertial.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sdt.modal.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sdt.dcmotor~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"boxgroups" : [ 			{
				"boxes" : [ "obj-64", "obj-25", "obj-55" ]
			}
 ],
		"styles" : [ 			{
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
