{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 90.0, 90.0, 950.0, 740.0 ],
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
		"showontab" : 1,
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
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 4,
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
						"showontab" : 2,
						"assistshowspatchername" : 0,
						"boxes" : [  ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 220.0, 175.0, 70.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"style" : "SDTpackage",
					"text" : "p examples"
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
							"revision" : 4,
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
						"showontab" : 2,
						"assistshowspatchername" : 0,
						"boxes" : [  ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 156.0, 145.0, 67.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"style" : "SDTpackage",
					"text" : "p tutorials"
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
							"revision" : 4,
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
						"showontab" : 2,
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
											"revision" : 4,
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
									"patching_rect" : [ 245.0, 698.0, 90.0, 22.0 ],
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
									"patching_rect" : [ 323.3125, 305.0, 428.0, 42.0 ],
									"style" : "SDTpackage",
									"text" : "sdt.pitch~",
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
											"revision" : 4,
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
															"revision" : 4,
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
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 320.000010666666697, 389.0, 71.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 168.000010666666697, 389.0, 71.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "fromsymbol"
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
															"digest" : "Non-linear impact between one inertial and one modal object.",
															"description" : "The sdt.impact~ simulates a non-linear impact, by computing the impact force from the total compression, that is the displacement between the contact points of the interacting resonators, according to the bidirectional structure sdt.inertial- sdt.impact~- sdt.modal. The resulting force is the sum of an elastic component and a dissipative one. The elastic term is parametrized by the force stiffness (or elasticity) and a non-linear exponent which depends on the local geometry around the contact area. The dissipative component is parametrized by the force dissipation (or damping weight).",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Solids interaction" ],
															"seealso" : [ "sdt.inertial", "sdt.modal", "sdt.rolling~", "sdt.crumpling~", "sdt.breaking~", "sdt.bouncing~", "sdt.scraping~", "sdt.friction~" ]
														}
,
														"sdt.rolling~" : 														{
															"digest" : "Non-linear impact between one inertial and one modal object.",
															"description" : "Compound model that simulates a ball rolling on a surface. The sdt.rolling~ acts as control layer for the impact model (sdt.inertial, sdt.modal, sdt.impact~). Takes four control parameters, the depth and the granularity of the surface, the mass and the velocity of the rolling object. The sdt.rolling~ is fed by an audio signal, representing the profile surface. The output is an audio signal representing the force applied to the resonator, i.e. the bounces on the surface.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Solids interaction" ],
															"seealso" : [ "sdt.inertial", "sdt.modal", "sdt.impact~", "sdt.crumpling~", "sdt.breaking~", "sdt.bouncing~", "sdt.scraping~", "sdt.friction~" ]
														}
,
														"sdt.crumpling~" : 														{
															"digest" : "Non-linear impact between one inertial and one modal object.",
															"description" : "Compound model for the generation of crumpling phenomena. The sdt.crumpling~ acts as control layer for the impact model (sdt.inertial- sdt.impact~- sdt.modal). Takes three control parameters, the crushing energy , the granularity , and the fragmentation . The output are two audio signals [0.0, 1.0], one representing the impact velocity (left-most outlet), and one representing the fragment size compared to the whole object size (righ-most outlet).",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Solids interaction" ],
															"seealso" : [ "sdt.inertial", "sdt.modal", "sdt.impact~", "sdt.rolling~", "sdt.breaking~", "sdt.bouncing~", "sdt.scraping~", "sdt.friction~" ]
														}
,
														"sdt.scraping~" : 														{
															"digest" : "Non-linear impact between one inertial and one modal object.",
															"description" : "Compound model that simulates a probe slliding on a surface. The sdt.scraping~ acts as control layer for the sdt.modal. Takes three control parameters, the granularity of the surface, that is the probe width, the velocity and the external force on the probe. The sdt.scraping~ is fed by an audio signal, representing the profile surface. The output is an audio signal representing the normal force in N, applied to the resonator.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Solids interaction" ],
															"seealso" : [ "sdt.inertial", "sdt.modal", "sdt.impact~", "sdt.rolling~", "sdt.crumpling~", "sdt.breaking~", "sdt.bouncing~", "sdt.friction~" ]
														}
,
														"sdt.breaking~" : 														{
															"digest" : "Non-linear impact between one inertial and one modal object.",
															"description" : "Compound model for the generation of breaking phenomena. The sdt.breaking~ acts as control layer for the impact model (sdt.inertial, sdt.modal, sdt.impact~). Takes four control parameters, the global energy of the process, the crushing energy , the granularity , and the fragmentation . The output are two audio signals [0.0, 1.0], one representing the impact velocity (left-most outlet), and one representing the fragment size compared to the whole object size (righ-most outlet).",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Solids interaction" ],
															"seealso" : [ "sdt.inertial", "sdt.modal", "sdt.impact~", "sdt.rolling~", "sdt.crumpling~", "sdt.bouncing~", "sdt.scraping~", "sdt.friction~" ]
														}
,
														"sdt.bouncing~" : 														{
															"digest" : "Non-linear impact between one inertial and one modal object.",
															"description" : "Compound model for the generation of bouncing phenomena. The sdt.bouncing~ acts as control layer for the impact model (sdt.inertial, sdt.modal, sdt.impact~). Takes three control parameters, the initial height of the falling object in meters, the shape irregularity , and the restitution coefficient. The output is an audio signal representing the impact velocity in m/s.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Solids interaction" ],
															"seealso" : [ "sdt.inertial", "sdt.modal", "sdt.rolling~", "sdt.crumpling~", "sdt.breaking~", "sdt.bouncing~", "sdt.scraping~", "sdt.friction~" ]
														}
,
														"sdt.friction~" : 														{
															"digest" : "Non-linear friction between one inertial and one modal object.",
															"description" : "The sdt.friction~ simulates a non-linear friction, by computing the friction force from the relative velocity between the two contact points of the interacting resonators, according to the bidirectional structure sdt.inertial- sdt.friction~- sdt.modal. The resulting force is the sum of four components: an elastic term, an internal dissipation term, a viscosity term, and the gain of a pseudo-random function, representing noise related to the surface roughness. More subtle phenomena, such as pre-sliding behavior (gradual increase of the friction force for very small displacements), are parametrized by several other quantities: dynamic and static friction coefficients, break-away coefficient and Stribeck velocity. These phenomena are mostly related to the transients and they are particularly important for a realistic simulation of friction sounds.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Solids interaction" ],
															"seealso" : [ "sdt.inertial", "sdt.modal", "sdt.impact~", "sdt.rolling~", "sdt.crumpling~", "sdt.breaking~", "sdt.bouncing~", "sdt.scraping~" ]
														}
,
														"sdt.bubble~" : 														{
															"digest" : "Single, spherical bubble model.",
															"description" : "Air bubble model. Takes two control parameters, the bubble radius in mm [0.15, 150.0], and the rise factor [0.0., 3.0].",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Liquids" ],
															"seealso" : [ "sdt.fluidflow~" ]
														}
,
														"sdt.fluidflow~" : 														{
															"digest" : "stochastic population of bubbles.",
															"description" : "The sdt.fluidflow~ simulates the acoustic behavior of a population of independent, spherical bubbles, to render various phenomena such as water dripping, waterfalls, burbling streams, gushing, etc. The sound model takes nine control parameters, the average rate of bubbles per seconds, the minimum radius and the maximum radius , the exponential radius that is the distribution of bubble radii across the range, the minimum depth and the maximum depth , that is the bubble elevation from deep to shallow, the exponential depth affecting the distribution of bubble elevation across the range, the rise factor and the rise cut off .",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Liquids" ],
															"seealso" : [ "sdt.bubble~" ]
														}
,
														"sdt.windflow~" : 														{
															"digest" : "Turbulence model of gases impacting against a surface.",
															"description" : "The sdt.windflow~ simulates noise caused by air turbulences against a solid surface. In this case, turbulence is generated due to the impact of the air molecules on the surface and to their random change of direction caused by the irregularities of the surface itself. The resulting sound is modeled through a white noise generator, filtered by a non-resonant lowpass filter. The cutoff frequency of the filter is empirically set to 800 Hz and the resulting output is modulated in amplitude according to the speed of the air flow.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Gasses" ],
															"seealso" : [ "sdt.windcavity~", "sdt.windkarman~", "sdt.explosion~" ]
														}
,
														"sdt.windcavity~" : 														{
															"digest" : "Turbulence model of gases passing through cylindrical cavities.",
															"description" : "The sdt.wincavity~ simulates howling phenomena caused by air turbulences inside resonant cavities, such as tunnels, pipes, valves. Takes three control parameters, the wind speed , the length and the diameter of the cavity.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Gasses" ],
															"seealso" : [ "sdt.windflow~", "sdt.windkarman~", "sdt.explosion~" ]
														}
,
														"sdt.windkarman~" : 														{
															"digest" : "Turbulence model of gases across thin objects.",
															"description" : "The sdt.windkarman~ simulates Kármán vortices caused by air turbulences across thin objects, such as a tree branch or a suspended wire. Takes two control parameters, the wind speed , and the diameter of the cavity.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Gasses" ],
															"seealso" : [ "sdt.windflow~", "sdt.windcavity~", "sdt.explosion~" ]
														}
,
														"sdt.explosion~" : 														{
															"digest" : "Blast wave model for explosion sounds.",
															"description" : "The sdt.explosion~ simulates explosions with a Friedlander waveform. A feedback delay network is used to render scattering and turbulences. The sound model takes six control parameters, the blast time in seconds, the scatter time in seconds, the dispersion , the distance of the explosion in meters, the wave speed in meters per seconds, and wind speed , that is the propagation of the blast wind, in meters per seconds. The output is two audio signals representing respectively the blast wave and the blast wind.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Gasses" ],
															"seealso" : [ "sdt.windflow~", "sdt.windcavity~", "sdt.windkarman~" ]
														}
,
														"sdt.dcmotor~" : 														{
															"digest" : "Model of DC brushed electric motor.",
															"description" : "The sdt.dcmotor~ model simulates a DC brushed motor. Takes several control parameters, reflecting the main mechanical components affecting the resulting sound, and essentially the rotor motion (RPM), the friction noise due to contacts between the brushes and the commutator, the gearing system, and the air movement induced by rotations. The output is an audio signal representing the electric motor sound.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Machines" ],
															"seealso" : [ "sdt.motor~" ]
														}
,
														"sdt.motor~" : 														{
															"digest" : "Model of a combustion engine",
															"description" : "sdt.motor~: The engine block is modeled by means of four periodic waveforms, representing the moving parts of each combustion chamber (intake and outtake valves, piston, fuel ignition). These waveforms are then used as input signals or feedback gain modifiers for a set of interconnected digital waveguides, which model the pipes composing the exhaust system.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Machines" ],
															"seealso" : [ "sdt.dcmotor~" ]
														}
,
														"sdt.demix~" : 														{
															"digest" : "Transient / tonal / residual component separator",
															"description" : "The sdt.demix~ is a sound processor which separates an audio signal in its three main components, transients, tonal, and residual. Takes three control parameters, the window overlap factor, the noise threshold , that is the amount of signal classified as residual, and the tonal threshold , that is the amount of non-residual signal classified as tonal. The object returns three audio signals representing the percussive component, the harmonic component, and the noisy component.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Processors" ],
															"seealso" : [ "sdt.reverb~", "sdt.pitchshift~" ]
														}
,
														"sdt.reverb~" : 														{
															"digest" : "Feedback Delay Network (FDN) reverberator",
															"description" : "The sdt.reverb~ implements a Feedback Delay Network (FDN) reverberator. The reverberation effect is parametrized according to the room size in the three dimensions (width, height, depth), the shape deviation from a rectangular room, the global reverberation time, and the reverberation time at 1kHz.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Processors" ],
															"seealso" : [ "sdt.demix~", "sdt.pitchshift~" ]
														}
,
														"sdt.pitchshift~" : 														{
															"digest" : "Frequency domain pitch shifter",
															"description" : "The sdt.pitchshift~ takes two control parameters, the window overlap factor, between 0.5 and 0.9, and the pitch shifting ratio , from 0.125 to 8.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Processors" ],
															"seealso" : [ "sdt.reverb~", "sdt.pitchshift~" ]
														}
,
														"sdt.envelope~" : 														{
															"digest" : "Envelope follower with different attack and release times.",
															"description" : "The sdt.envelope~ is an envelope follower based on a one-pole lowpass filter with different attack and release time.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Analysis" ],
															"seealso" : [ "sdt.pitch~", "sdt.spectralfeats~", "sdt.zerox~", "sdt.myo~" ]
														}
,
														"sdt.pitch~" : 														{
															"digest" : "Normalized Squared Difference Function (NSDF) based pitch detector.",
															"description" : "The sdt.pitch~ is an analysis tool which returns the pitch in Hz (leftmost outlet) and the pitch clarity (rightmost outlet). For voice-driven applications, the sdt.pitch~ can be coupled with the skewness descriptor available in the sdt.spectralfeats~, in order to have a higher level representation of the phonation vocal activity. For better results, the vocal sound is meant to be pre-processed with the sdt.demix~, in order to feed the sdt.pitch~ and the sdt.spectralfeats~ with the harmonic component only.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Analysis" ],
															"seealso" : [ "sdt.envelope~", "sdt.spectralfeats~", "sdt.zerox~", "sdt.myo~" ]
														}
,
														"sdt.spectralfeats~" : 														{
															"digest" : "Spectral analyzer, extracting several audio descriptors.",
															"description" : "The sdt.spectralfeats~ provides statistical moments of the spectrum and other spectral information. Together with the other available audio feature extractors (sdt.pitch~, sdt.envelope~, sdt.zerox~, and sdt.myo~), the sdt.spectralfeats~ is an analysis tool to support the audio signal control of the sound synthesis models. The output is a list of messages in the form a qualified pair, in which the first element is the name of the descriptor and the second element is the corresponding extracted value. To be used with the [route] object.",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Analysis" ],
															"seealso" : [ "sdt.envelope~", "sdt.pitch~", "sdt.zerox~", "sdt.myo~" ]
														}
,
														"sdt.zerox~" : 														{
															"digest" : "Zero crossing detector.",
															"description" : "The sdt.zerox~ returns the normalized zero crossing rate of an input signal [0.0, 1.0].",
															"module" : "SDT",
															"category" : [ "SDT", "SDT Objects", "SDT Analysis" ],
															"seealso" : [ "sdt.envelope~", "sdt.spectralfeats~", "sdt.pitch~", "sdt.myo~" ]
														}
,
														"sdt.myo~" : 														{
															"digest" : "Myoelastic vocal activity detector.",
															"description" : "The sdt.myo~ is an analysis tool suitable to detect myoelastic vocal phenomena, that is non-voiced sounds produced by the vibration of muscles or parts of the vocal tract, such as vocal fry, palate grind, bilabial trills etc. Myoelastic vibrations are characterized by low frequency amplitude oscillations, in the range of 30-70Hz. The sdt.myo~ returns four outputs (from left to right): 1) The slow myoelastic activity amount; 2) The slow myoelastic activity average frequency, in Hz; 3) The fast myoelastic activity amount; 4) The fast myoelastic activity average frequency, in Hz. For better results, the vocal sound is meant to be pre-processed with the sdt.demix~, in order to feed the sdt.myo~ with the percussive component only. ",
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
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-12", 1 ]
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
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-14", 0 ]
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
									"fontsize" : 16.0,
									"id" : "obj-17",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 323.3125, 349.0, 428.0, 45.0 ],
									"style" : "SDT_package",
									"text" : "Normalized Squared Difference Function (NSDF) based pitch detector.",
									"textcolor" : [ 0.0, 0.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 16.0,
									"id" : "obj-16",
									"linecount" : 9,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 323.3125, 408.0, 432.0, 179.0 ],
									"style" : "SDT_package",
									"text" : "The sdt.pitch~ is an analysis tool which returns the pitch in Hz (leftmost outlet) and the pitch clarity (rightmost outlet). For voice-driven applications , the sdt.pitch~ can be coupled with the skewness descriptor available in the sdt.spectralfeats~ , in order to have a higher level representation of the phonation vocal activity. For better results , the vocal sound is meant to be pre-processed with the sdt.demix~ , in order to feed the sdt.pitch~ and the sdt.spectralfeats~ with the harmonic component only.",
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
									"patching_rect" : [ 303.375, 298.4375, 467.875, 407.625 ],
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
									"text" : "GASSES",
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
									"destination" : [ "obj-50", 1 ],
									"hidden" : 1,
									"midpoints" : [ 228.5, 465.0, 29.300000000000001, 465.0 ],
									"source" : [ "obj-33", 2 ]
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
									"destination" : [ "obj-50", 3 ],
									"hidden" : 1,
									"midpoints" : [ 230.5, 697.0, 58.899999999999999, 697.0 ],
									"source" : [ "obj-35", 2 ]
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
									"destination" : [ "obj-50", 4 ],
									"hidden" : 1,
									"midpoints" : [ 473.5, 259.0, 73.700000000000003, 259.0 ],
									"source" : [ "obj-37", 2 ]
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
								"boxes" : [ "obj-34", "obj-43" ]
							}
, 							{
								"boxes" : [ "obj-33", "obj-42" ]
							}
, 							{
								"boxes" : [ "obj-44", "obj-35" ]
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
							"revision" : 4,
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
						"showontab" : 2,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
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
											"revision" : 4,
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
													"linecount" : 4,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 51.0, 250.0, 217.0, 52.0 ],
													"style" : "SDTpackage",
													"text" : ";\rmax launchbrowser http://www.academia.edu/download/27648519/vmain.pdf"
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
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 660.0, 457.46875, 276.0, 120.0 ],
									"text" : "The DC motor model belongs to the family of machine sounds.\n\nSee the \"externals\" tab for the complete list of sound models, and the \"tutorials\" tab for the organization of the externals in a taxonomy of sound-producing mechanisms."
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
									"patching_rect" : [ 152.5, 374.0, 120.0, 26.0 ],
									"text" : "2. modal object",
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
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 660.0, 176.0, 282.0, 120.0 ],
									"text" : "The friction model takes in account two objects, an inertial mass and a modal object, that communicate by means a third object, the interactor.\n\nThis architecture is shared with all the other sound models of solids interactions."
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
											"parameter_shortname" : "live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4,
											"parameter_mmin" : -70.0,
											"parameter_longname" : "live.gain~",
											"parameter_mmax" : 6.0
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
											"revision" : 4,
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
											"revision" : 4,
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
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 342.0, 98.0, 392.0, 358.0 ],
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
													"linecount" : 23,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 45.0, 50.0, 302.0, 282.0 ],
													"text" : "The Sound Design Toolkit has been developed with the contribution of the following EU-projects:\n* 2001 - 2003 'SOb' http://www.soundobject.org/\n* 2006 - 2009 'CLOSED' http://closed.ircam.fr\n* 2008 - 2011 'NIW' http://www.soundobject.org/niw/\n* 2014 - 2016 'SkAT-VG' http://www.skatvg.eu\n------------------------------------------------------------------------\nComplete list of authors \n(either programmers or designers):\n\nFederico Avanzini,\tStefano Baldan,\tNicola Bernardini,\tGianpaolo Borin,\tCarlo Drioli,\tStefano Delle Monache, \tDelphine Devallez,\tFederico Fontana,\tLaura Ottaviani,\tStefano Papetti, \tPietro Polotti,\tMatthias Rath,\tDavide Rocchesso,\tStefania Serafin. \n------------------------------------------------------------------------\nContacts:\nstefano.papetti@zhdk.ch,\nsingintime@gmail.com stefano.dellemonache@gmail.com\n\nThe SDT source is available at https://github.com/SkAT-VG/SDT/"
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
													"patching_rect" : [ 24.75, 10.0, 340.25, 330.0 ],
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
				"name" : "icon.png",
				"bootpath" : "~/Documents/GitHub/SDT/MaxPackage",
				"patcherrelativepath" : "../..",
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
