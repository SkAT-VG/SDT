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
		"rect" : [ 100.0, 100.0, 900.0, 650.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
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
		"style" : "SDTpackage",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 830.0, 621.0, 54.0, 23.0 ],
					"text" : "onecopy"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-59",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 506.5, 151.0, 80.75, 22.0 ],
					"style" : "SDT-comments",
					"text" : "city car",
					"textcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"varname" : "bubble"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 586.625, 234.0, 59.75, 21.0 ],
					"text" : "press \"s\" "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 640.5, 234.0, 23.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
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
						"rect" : [ 790.0, 118.0, 640.0, 543.0 ],
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
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 72.0, 358.0, 36.0, 22.0 ],
									"text" : "+ 0.8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 136.0, 333.0, 39.0, 22.0 ],
									"text" : "/ 100."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 136.0, 82.0, 66.0, 22.0 ],
									"text" : "random 50"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 58.0, 406.0, 33.0, 22.0 ],
									"text" : "* 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 320.0, 397.0, 47.0, 22.0 ],
									"text" : "sel 115"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 320.0, 367.0, 50.5, 22.0 ],
									"text" : "key"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-32",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 320.0, 501.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
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
										"rect" : [ 862.0, 290.0, 640.0, 480.0 ],
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
													"id" : "obj-15",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 164.0, 268.0, 59.0, 22.0 ],
													"text" : "900 2600"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 140.0, 236.0, 59.0, 22.0 ],
													"text" : "600 4500"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 123.0, 209.0, 72.0, 22.0 ],
													"text" : "1000 14000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 107.636363636363626, 182.0, 64.0, 22.0 ],
													"text" : "800 11000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 96.090909090909093, 153.0, 72.0, 22.0 ],
													"text" : "4500 18000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 85.0, 127.0, 72.0, 22.0 ],
													"text" : "1000 9000"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-7",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 114.0, 336.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 73.0, 298.0, 60.0, 22.0 ],
													"text" : "unpack"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-5",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 73.0, 336.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 73.0, 100.0, 59.0, 22.0 ],
													"text" : "800 7000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 12,
													"numoutlets" : 12,
													"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
													"patching_rect" : [ 73.0, 66.0, 146.0, 22.0 ],
													"text" : "sel 1 2 3 4 5 6 7 8 9 10 11"
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
													"patching_rect" : [ 73.0, 21.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-2", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-2", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-2", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-2", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-2", 7 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-2", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-2", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 124.599999999999994, 412.0, 41.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p rpm"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 58.0, 38.0, 182.0, 22.0 ],
									"text" : "route bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 58.0, 132.0, 29.5, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 13.0, 38.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 58.0, 108.0, 29.5, 22.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 58.0, 82.0, 59.0, 22.0 ],
									"text" : "random 7"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "preset",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "preset", "int", "preset", "int" ],
									"patching_rect" : [ 262.0, 209.0, 31.0, 100.0 ],
									"preset_data" : [ 										{
											"number" : 1,
											"data" : [ 4, "obj-1", "function", "clear", 8, "obj-1", "function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 69.148936170212764, 0.0, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 260.638297872340445, 0.613333333333333, 0, -0.2, 8, "obj-1", "function", "add_with_curve", 1000.0, 0.0, 0, -0.05, 5, "obj-1", "function", "domain", 1000.0, 6, "obj-1", "function", "range", 0.0, 1.0, 5, "obj-1", "function", "mode", 1 ]
										}
, 										{
											"number" : 2,
											"data" : [ 4, "obj-1", "function", "clear", 8, "obj-1", "function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 79.787234042553195, 0.0, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 276.595744680851055, 0.4, 0, 0.15, 8, "obj-1", "function", "add_with_curve", 617.021276595744666, 0.266666666666667, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 829.787234042553223, 0.2, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 1000.0, 0.0, 0, 0.1, 5, "obj-1", "function", "domain", 1000.0, 6, "obj-1", "function", "range", 0.0, 1.0, 5, "obj-1", "function", "mode", 1 ]
										}
, 										{
											"number" : 3,
											"data" : [ 4, "obj-1", "function", "clear", 8, "obj-1", "function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 101.063829787234042, 0.0, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 340.425531914893611, 0.493333333333333, 0, 0.3, 8, "obj-1", "function", "add_with_curve", 500.0, 1.0, 0, -0.3, 8, "obj-1", "function", "add_with_curve", 1000.0, 0.0, 0, -0.25, 5, "obj-1", "function", "domain", 1000.0, 6, "obj-1", "function", "range", 0.0, 1.0, 5, "obj-1", "function", "mode", 1 ]
										}
, 										{
											"number" : 4,
											"data" : [ 4, "obj-1", "function", "clear", 8, "obj-1", "function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 127.659574468085111, 0.0, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 276.595744680851055, 0.826666666666667, 0, -0.2, 8, "obj-1", "function", "add_with_curve", 420.212765957446834, 0.346666666666667, 0, -0.0, 8, "obj-1", "function", "add_with_curve", 515.957446808510667, 0.906666666666667, 0, 0.1, 8, "obj-1", "function", "add_with_curve", 1000.0, 0.0, 0, -0.1, 5, "obj-1", "function", "domain", 1000.0, 6, "obj-1", "function", "range", 0.0, 1.0, 5, "obj-1", "function", "mode", 1 ]
										}
, 										{
											"number" : 5,
											"data" : [ 4, "obj-1", "function", "clear", 8, "obj-1", "function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 53.191489361702125, 0.0, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 430.851063829787222, 1.0, 0, 0.5, 8, "obj-1", "function", "add_with_curve", 500.0, 1.0, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 1000.0, 0.0, 0, -0.2, 5, "obj-1", "function", "domain", 1000.0, 6, "obj-1", "function", "range", 0.0, 1.0, 5, "obj-1", "function", "mode", 1 ]
										}
, 										{
											"number" : 6,
											"data" : [ 4, "obj-1", "function", "clear", 8, "obj-1", "function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 101.063829787234042, 0.0, 0, -0.3, 8, "obj-1", "function", "add_with_curve", 186.170212765957444, 1.0, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 1000.0, 0.0, 0, 0.15, 5, "obj-1", "function", "domain", 1000.0, 6, "obj-1", "function", "range", 0.0, 1.0, 5, "obj-1", "function", "mode", 1 ]
										}
, 										{
											"number" : 7,
											"data" : [ 4, "obj-1", "function", "clear", 8, "obj-1", "function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 234.042553191489361, 0.146666666666667, 0, 0.2, 8, "obj-1", "function", "add_with_curve", 478.723404255319167, 0.4, 0, 0.15, 8, "obj-1", "function", "add_with_curve", 723.404255319148888, 0.28, 0, 0.0, 8, "obj-1", "function", "add_with_curve", 1000.0, 0.0, 0, 0.15, 5, "obj-1", "function", "domain", 1000.0, 6, "obj-1", "function", "range", 0.0, 1.0, 5, "obj-1", "function", "mode", 1 ]
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 58.0, 1.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 58.0, 501.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-10",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 58.0, 477.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 58.0, 158.0, 79.0, 22.0 ],
									"text" : "0, 1000 3000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 58.0, 182.0, 40.0, 22.0 ],
									"text" : "line"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 58.0, 448.0, 130.0, 22.0 ],
									"text" : "scale 0. 1. 800. 12000."
								}

							}
, 							{
								"box" : 								{
									"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 234.042553191489361, 0.146666666666667, 0, 0.2, 478.723404255319167, 0.4, 0, 0.15, 723.404255319148888, 0.28, 0, 0.0, 1000.0, 0.0, 0, 0.15 ],
									"id" : "obj-1",
									"maxclass" : "function",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "float", "", "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 58.0, 209.0, 200.0, 100.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"midpoints" : [ 78.0, 155.0, 271.5, 155.0 ],
									"source" : [ "obj-18", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 1,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 230.5, 385.5, 134.099999999999994, 385.5 ],
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 0,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"midpoints" : [ 145.5, 359.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 672.0, 202.0, 45.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p drive"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 8.0, 545.0, 84.5, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 181.0, 545.0, 84.5, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 399.5, 545.0, 84.5, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-107",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 486.0, 520.0, 92.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "exhaust noise",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-106",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 268.0, 520.0, 106.5, 22.0 ],
					"style" : "SDT-comments",
					"text" : "engine vibrations",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-105",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 92.5, 520.0, 75.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "intake noise",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-104",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 434.0, 520.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-103",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 216.0, 520.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-102",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 43.0, 520.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 399.5, 520.0, 33.0, 23.0 ],
					"text" : "*~ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 181.0, 520.0, 33.0, 23.0 ],
					"text" : "*~ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 8.0, 520.0, 33.0, 23.0 ],
					"text" : "*~ 0."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-95",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 788.5, 189.0, 82.0, 41.0 ],
					"style" : "SDT-comments",
					"text" : "throttle load"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-94",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 672.0, 189.0, 45.0, 41.0 ],
					"style" : "SDT-comments",
					"text" : "RPM"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 804.5, 263.0, 43.0, 23.0 ],
					"text" : "sig~ 0."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-93",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 804.5, 234.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 672.0, 263.0, 43.0, 23.0 ],
					"text" : "sig~ 0."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-90",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 672.0, 234.0, 70.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-88",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 772.5, 375.0, 67.0, 38.0 ],
					"style" : "SDT-comments",
					"text" : "EXHAUST SYSTEM",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-86",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 678.0, 317.0, 77.0, 57.0 ],
					"style" : "SDT-comments",
					"text" : "backfiring amount"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-85",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 595.0, 302.0, 77.0, 72.0 ],
					"style" : "SDT-comments",
					"text" : "size of exhaust outlet (m)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-84",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 477.0, 317.0, 66.0, 57.0 ],
					"style" : "SDT-comments",
					"text" : "muffler efficiency"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-83",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 372.0, 317.0, 101.0, 57.0 ],
					"style" : "SDT-comments",
					"text" : "size of muffler resonators (m)"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-82",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 697.5, 375.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-81",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 613.5, 375.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-80",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 490.0, 375.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-79",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 401.0, 375.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-78",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 316.5, 375.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontface" : 2,
					"id" : "obj-77",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 308.6875, 317.0, 58.0, 57.0 ],
					"style" : "SDT-comments",
					"text" : "2-stroke only"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 316.5, 404.0, 79.0, 23.0 ],
					"text" : "expansion $1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-75",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 216.0, 302.0, 89.0, 72.0 ],
					"style" : "SDT-comments",
					"text" : "size of main exhaust pipe (m)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-74",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 117.0, 302.0, 94.0, 72.0 ],
					"style" : "SDT-comments",
					"text" : "size of exhaust collectors (m)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-73",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 506.5, 196.0, 56.0, 38.0 ],
					"style" : "SDT-comments",
					"text" : "ENGINE BLOCK",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "number",
					"maximum" : 12,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 92.5, 198.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 37.0, 198.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-64",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 650.5, 469.5, 247.0, 38.0 ],
					"style" : "SDT-comments",
					"text" : "- (signal) Revolutions Per Minute (RPM);\n- (signal) throttle load [0., 1.]."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-65",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 650.5, 450.0, 191.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "inlets:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-53",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 650.5, 584.0, 247.0, 53.0 ],
					"style" : "SDT-comments",
					"text" : "- (signal) intake noise\n- (signal) engine vibrations\n- (signal) exhaust noise"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-54",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 650.5, 564.5, 191.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "outlets:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-110",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 434.0, 30.0, 89.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "look inside --> ",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"fontface" : 3,
					"id" : "obj-109",
					"linecount" : 2,
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
						"rect" : [ 200.0, 91.0, 746.0, 668.0 ],
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
									"autofit" : 1,
									"data" : [ 54991, "png", "IBkSG0fBZn....PCIgDQRA..FHD..PPxHX....vhYqvn....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6ceGkTUe9+.+YAVXQ5EoqXIXAEKQrF+E6FKf0XA6nnP7qXMVhQSznQiIFwVDDAQraHVAAM1vD6ZhhnRTTQQo2Yor.K676O.1BvRaK2cu6qWmCmyduycl4gY24b12y68d+jUlLYxD........oP0JoG........fJJJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oV0IoG....pNXBe7aDi8GVRjcrzHmVuKwAs2aURORkIy5a+f3s+rYGYGKMZRm1mX+1wVkziTUZYxaJwq8O+vH+5V2XoQSiC7WrOQiyJomJ...XCQVYxjISROD...T01BhaauZabMe3BVwlc4uFyaLWdE3GD9biW9d+swHav4G2UO2sJjmg26dO5Xe66HiHh3ft02Nd8qY+pPddRKlyG2+n4+zKbkac.w+cduQr6ZBA..fpEbowB..fM.MYKyovutEacNQsqf9Lvm0W9hwI2vVFGQeuuXFyaYULOIQDYWu1T3W2lbxtB64IsHqrqWw1pwN05A..nZDEg...vFoEL+JtG6w+J2WLrEt7Jtm....fZXTDB...UgT7yTC....J6TDB...UQUq5s9OF....V2bosE..fxAYxK2XtKN+HhHpeiZVjSchHxeAw3G6mDew2LwXgKMh5V2lEa41uiwt1ksJV8NNxOubi7hkGyX5Stv8MuoO2Xt4kajYw4Wzi4Zb+la7ci+qhwOgIFyYAKMhHhrpaCi1rEaUrCaWmh11r5WF9eUdwblyhK114DMqTd7V7blXLlOdLw2LwYEYU25FKcoQz1scmittmcIZQNapKnJ4GyeN4Fq5BEViaVyhZWlO97iYO4IFe027cwONsoFKcEujEMp4sI15Ns8Qm111uFeuoxeFqnd8D..fZlTDB...kCd+Acpw912QFQDwP+jYF68TGZbBG8uN9hkmYsbzGP7fu4Phd9y25B2yGUr6+pLha3vilcCq3qO198Awyco6Yg2VAy8qh66l9MQeuimYcNW64oeGwieeWZ7SZ7F6Gd9Li6+b1onOCc5EtmlcLCJ9gm+7hFT7CK+oDOws8ahS65FZo9H86ez2I9Mm99tQVvPDK7KelnI6voT3129nmZbEGPqK0ieIe6yDMYaK53G5mL23r10lT31e1K+.wUc78IF0hKXc7r1k3NdtmLtrisyIxLVQ95I...0T4RiE...kCJ9Z6wYuasL1gi3JJkRPhHh2LN2CXah64M+whsuFtNe7KHukU3WujI9JQ2Z2NtdKAIhH9vG6xiN0jKI9lEWZyxZybiAdgcoDkfzxi4Nh+2yUxRPV5Td63ja5VrN+P6iHha7L1unCGa+hIsr04gsFZv1+yiqcO1rB29ddzQGqqkQ92+YenhsUeiCryqpfg7hW51O4nKGwErdJAIhHFab4G2NEW1i94UxyXE+qm...TSkhP...nBzu7R9SwSOpQEO2ic2wQV+R9qeew88QhYux9IZ2dclw8OjAD+eGRiJ71a8wb0wPFxPhALfAD88n19Ut2oF21Id7k3CzusGyEGOwHeyXriabwXduWOFzM0mUaJtm3uM7wuANwyMdnKryQu6+TKbOs+z+awW9bWVzpheRkj2mGWvNbfwvVXQer+M+.6U7vi7MiwMtwEi9EFXbRMnnK5Sy7Et73mcgOUrjMvoXEZSbJWbOJbquePOV7oyuTJzI+IDOwM+pEtYO52YFaY1q3qmxacmwQdkCqXGbWhq7Nez3s9OeZLtw8owq97OTzycOmR7vcmm48GSbCpngxmYrx40S...pgJC...rdjal9ehsLSDQlHhL06.+aYVvpcDez.O2Bu8U7udj4UG+7VsiZFYtqSrEk33d5uZgk3HFyPOuBusS+9930XRVv+6QJw8+76+auVm3E7M+yL6ecqUgGWKNlRNyEed6Q+9fUt24j4A+U6YId72pdMnLyqf07w+cumStDG2o0uWISdqwQMiL2+p83MzOYtq04szr7YL5Lct1YU38+Ze1uYsdbS++deE64oKYdoIrjUdK4lY.mcqJw2W9uyZs7enLKNyyeyGQoNqyYrCtX2V2y7oE6Ekx9LV485I...0D4LBA..fJ.C7C6ebH+jFuZ6skwEMfmN1+5VzuF9rl2hKwQrrkTzYSPAKYMOkDF6q7DEaqdDWy4seq0m+FrMGV7GukSrvsWv7inztRcUq5kcDQdwPtvCON29+gEt+N1qGNFy.OuX0WdQxj6mD2w07zEtcaO8GNdvK8PWKqYEsLtf6ajwM10htfZc826quNuzQsFyVK263Welspvs6+PdiXgqwQkeL5G6gJbq5cf8I12NV2UNq+u3QehYV3s0mG42F6dyWaqWJ4Dc+huoR78lkrr7qjlwJuWOA..nlHEg...P4rM6.ui3D2ilrVusZ0vlFsM6M1Et7hrGm8iFe2WOt3cesQEC+MuwXaxtzO15VuR97T6R4osAwjim9Od7knDjewk7jwm+.m4ZTBRDQLuu++VrKgScIt2e+orNV3taYbb88bJbqINngEe8F05URNwu3ruzB2ZNuvcEe3zK48OSteVLj66iJb6q3RNhBm6rZztEO+D913K9z2OdwgMx3pOl00hfdchFU60wMWAMiUtudB..PMO0IoG....RaVdTuJreQ6raTyhN1nlEcba2gB2Wl7yOxM2bibm+rioNwuNFyG+gwq+5OS7XO+GuA8XNvK7niAtZ66ltkStDKL5E27mwzK1ViMdq2+0hV9C0KVzRW5Zbr0qAMHl3W8QEaOKHV5xhHp+FznEQDQ61+SHN6Fe8wPme9QDiMdxQ7EwAdt6Tg29De2msXqYJcON0CdqK18tNQyaWGil2tNF6XWJZu4mWtQt4laLqoN0X7e4XiO3cds3ue2O55XAtuhaFqre8D..fZZTDB...ky1y8tiQC1zOoO1frr47swHF1SD+iQ95wi+7ud49i+e3u7pwv+8G1Z81l7mWxBV52YdTQ+1HdrW7F1UbphTmsKNiq9Pig9aeoHhHt+67Ehaom6TrhqvUKHF0.uuBOz88R5cz401owRjeL9O3khG+I+6wa75OU7liYMKYnLoLLiU5udB..PMLtzXA..P4rN1wVEaRWgk1.8YC+Vi517sMNgdecUHkfDQDi3FN73A9nYsVusrqWCKCOxCOdqub1az2q88T6YQaL1qMF8WunHhHJXluWbOOWQyYuOy8eMdsOSdeUb8GVKhsau6dbC86QJ+KAoLNiIwqm...TShyHD...JmUvRp3drmwGL3nKGy0tF6e2NnSONn8Y6hcX61wny6xNGcYW5T70Co2QWufGbC5w8z52aD26IurX+2xeQgWdntf87piCdQOPrs0ujmgEKaIKnXac.wS8l+oXKyZYwZtztulxrrH1hse0WD4W+Zv1bvwe3vZR76dk4EQDwC8zeRbBWy9Ee1HexhtbVk0UEG1Oc0WaVlYbOmw9E27qN+Ua+cINyK3fisaa2gny6RmicZG24XaZ9DiSuscsXqWGUNyXR75I...0jnHD...p1XAwie8+5Rrmq9AGcbk83mEsHm07Wsuje.6kt8+pel3guzCLpcDwC+f8L55YupxSFbbN23wG+6+zQWhiusa2tEQ72W4VsK108cuisuLr.vugokwI0myL9cux8FQDwvu1+YLmqtywycOOYgGwo+25QztUaLlyGOr3Rd5hNaLpUWtp3sdlqH1qexZdV6jI2uMVPAkkEd7MsYLYd8D..fZNbowB..fpnpU8xtj6HuuId62N2B27nug2H9S87.VqkfDwBhOXzu1FzySG6XGJrTf83r9iwM10hVlzeqaqaw.euRdIxpIsq0EaqmHF9aNs04i+DeqAEG7AevwY06KM9s2zCF+3h2zJaX6N3dD6ecWYDlLiNFwK72iW4SW7Ju0tDm2wrSqw84a+nhuvhe.w+Zz+oXeWKkfDQDK76+zhsfluoYSYFSpWOA..nlBEg...PUT+6+6DhU+hzTwOiE5vVr4k58cFevCWhyDh0kRdo7pMwU+TOZIt8duuWc7ME6CauIc7mFmTCJpJgq7v6WLwR853zDhas6WX7FuwaDOx.uq3V9ceRTPc1zNaGpUS2qnOm2pJM3Miy535c7VKcEEWzri4Rh8p8YW524HhHZWzxFUZ21Li9+6uxMo4prNiI0qm...TSghP...nJpINnWL9hYurHS94ux8Tmng0pnOz6G3Ne3RTPwpL0O9ohS3+WeKw9Z3FwxHQ81liK9W2yIWr8L33btwQVXoLY0ncKt598KK5ly7mic9vugXbyd09z6yeJw.uvSIFvbKZ+8dv8N1x0WeEkp5DG94bcq0a4x58gGMXscC0q3a7DwSMxudMOl7mY7DW2YDW0yTxEc75l0lxUR3M9YL4d8D..fZFTDB...UgTx00iAG6RKpaTqryN5yC9IQjy1GmTeZag2ZAi8OG+jM6fh63wFU79u+6Gi5eLznuG+OMZ6O8TK7rPXUl0DlWrjMhqfR++tnaOtrVT2B29ststECtXWhr1iddqQeZZQeB74N5aL5bKpa7+8GFP7zuv+HF7e42F6TNsO5c++vh8n123pNy07RC0FiMeuNxR77tB8HN4CpCq0iemOvSnDa+6OtsKNpK81hW9e+9w68ue43A+KWQrS4zp3z9iu7Zbem4BxqRYFiH4d8D..fZBTDB...a.VZTxVDV9l3xxPlkkYctfb2kipGq08+2e9+SrvnNwIdMOUbj0u3+Z7uYbEmwQE6y9rOwQcRmSbuO2GupGon2WvgVzgM1qM9micdaDS5VD+tQO3RrmduuWc7kq5LPoNacbeS7iiq6PK4oZx886+Uwu7XOonWW0sDeQIdQ5.hm+KtoXaJym8Bacb12zwWh87yt5dFae8W6Wdnp2Vdzq1Y2RDi5ttl3H946Sru+7iHNuq5NJbN26S+7Kwqs2wCLhXgkxTjeor+MkYLhHAe8D..fzOEg...v5UchF2phN6HZd6aTT6U+yztXWBlZXNk9iTV0eyhNVuhVOHpW1k7xuTC1liK9euz8VzBt8Jsn4uhExiZ0x8KFwjGWbOWdIOSGJty4Ztu3ym1+IFv8+HwkuGaVg6+0emITr4s9E9k0pDW9nJRS24yHF0e4jJ1dFbLfm9KJ5+KMZmha5UlV71+iaeMl2hzk356+KFScoiNNlcrIk5LuwX2OlyJ5bw9FPeOq8Zcd7++tnmJF6KMvUq.ohzhC7ziAMxOId6GcfwC7bEcYsZxO1qEe67WQ4CYuYMuXOmMLxd8T.wF6LFQx85I...ocYkISlMw+V1...fJN4GydFyIxaYKKxN65GMpYMKxY0VxJV7blRL9ILkUd1Ijczflz7n8cr8QC2TVZKJyxKlz27cwTm47hrVYKAMnIsN5XGa+ZL2Im7hI8MecL0YtzHqriH6r2rnksocQa27MhEPkJMUGd8D..fpGTDB.......jZ4RiE.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0pNq5KxKu7hAMnAEu3K9hwzm9zirxJqjbt........1fkISlnUspUwQezGczqd0qHmbxIhHhrxjISlEsnEE8pW8JZZSaZbjG4QFssssUQHqz27M0KdkWuIwy+1MI1ssNuXm2tEUg+bN9IjS7FeQCiCpyKH94627i8dOWPzfFjoB+4k0tQLhQDcqacKoGCnJIu+.Jcd+AT579iRm7G38GPoy6OfRm2e.qPAETPLkoLkXTiZTw7m+7iAO3AG4jSNq3LBYPCZPQSaZSiy67NujdNqRH2bqUL5+ciiW7UaRL6EkcbrG3bhgbaSHZSqyuRaFtxElU79eXCi+06z33FGT6DJA..fTJ4O...n7QspUsh1291G8pW8JdfG3AhAMnAEWzEcQqnHjQNxQF+e+e+eI8LlvxJ93OIm3keslE+yOogwguaKH58YM8X22s7hHp7+E+aPCxDG7AlabvGXtBk...Ppi7G...TQ5nNpiJ5e+6eQEgLyYNynssssI8bkHl5zpS7ZuQShmezMKZwlkebTG5bi+uKXpQiZTAI8nUn0WnjiuayN10cYwI8XB...qGxe...Pki1111FSe5SOhnXKV50zVSP9zwlS7DOylGexDxIN1e17ha8J+gXa21kjzi050pGJ48d+FF2781t3P1y4G87rlYTu54uPK...ppQ9C...pbUqZUqB68nVI7rToKSlHdrmrEwu+t5Pb3GvbhW3A95nOm+zqVDBY00fFjINjCN2XH2wDh4N+5D89WuUwW8U4jziE...rRxe...PxqNq+CI8XNyo1ws1u1EQDwC9WlPzrls7DdhJezvFVPbMWwTh+0a0n3J9SaQziewriS8jlUTqZb0bA..PUGxe...PUC0X9UUGymV+3buxsN10cbQwsci+PpIDRw8y2+big7WlP7Y+ubhK9Z1x3G9wrS5QB..fZjj+...fpNR8EgrpSE8a3taebCW7jhSuGyJRyKGJsrE4G2xueRwQbPyOtfqaqhQLpllziD...0XH+g7G...U8jpuzXkVOUz2Pzsibtwt1kEF21c2t3c9fFDW9EMsnksH+jdr...H0R9C4O...pZJ0dFgTS3TQe8YK5vxh65V+9Xm2g7hddkac7udqFkziD...oRxeH+A..PUWotyHjLYh3wepVD+iWsYwMbwSJ10cYwI8Hknpcsi3zNkYEcc2WXbK2Sai248aXbQ8dZQCaXAI8nA..P0dxeTRxe...TUTp5LBYNyo1wU+62hXLewlEO3eYB03CgTba21kWb+292EMsw4G87x253y+75kziD...UqI+QoS9C..fpRRMEg74ed8Vwohdmq4dpnu9Tu5kI5y4Oi3ptfoDW0sukw3GuvH...roP9i0O4O...ppHUTDx3GeNwUc6aYbcW3jiS+TmUjUVI8DU01d10EEWWumbbE2ZGhe3GyNoGG...pVQ9iMNxe...jzp1WDx2Owriq3Vaebc8Yxwd7SWTRONUaru6yBi9d5yHthatiwzmQpaohA..fJDxeroQ9C..fjT05hPl5zpS7qu4sLtzyb5w9t2KLoGmpcNrCY9wodDyJt5aZKh4Mup0+n....U3j+nrQ9C..fjR01e6y4N2ZGW8MukwYz8YEG7AkaRONUacBG2bhCXOme7a+iaQr3E6b5G..f0F4OJeH+A..PRnZYQHKbgYEWyenCwgueyKN1tO2jdbp16bNyYEa2Vs33Fus1G4muvH...TbxeT9R9C..fJaU6JBYoKMq32cKcH1scbwwo2iYkziSpQe+USOZTCJHts901HSljdZ...npA4OpXH+A..PkopUEgr7kGwM+maWzlVlezmyeFI83jpjUVQb0W1ThbWXsh6o+sJoGG...RbxeTwo34Ot6925jdb...R4pFUDRVwcb2sMhHhK+hmRDg+rgJuUm5jI98W8jhu56peLjGtkI83...PBR9iJZqJ+w3+tbj+...nBU0lhP5+.27XpyrNw0cUSNpcsS5oI8p90OS7G+s+P7u+nFEO8y1rjdb...HQH+QkC4O...pLTsnHjG8waQLl+W8i+v09iQcqq+Rrpn0jlTP7mt9eHdpWtEwq7ZMNoGG...pTI+QkK4O...pnUkuHjme3MMdk2sIwe528iQCZfPHUVZ0lme7WutuOtmGayi288ZPRON...ToP9ijg7G...UjpRWDxq+FMJdzg2h31ttIFMsoKOoGmZb1hNrr3u9a9w3lu+1Ei8yxIoGG...pPI+Qxp34O9zwJ+A..P4mprEg7tueCh67QZUb6W2Di1z57S5woFqN0okD+wK8GiqqecHlxTqSRON...TgP9ipFVU9iq+N6PLkoH+A..P4ipjEg7YedNwMOf1E+0eyjhNtkKKoGmZ71sccww4cByL9c2VGh7xKqjdb...nbk7GUsTX9i+r7G...kOpxUDx7mesha7t5Pbi88GiN0o7R5wgU5XN54F6zOIu3udOsMhPXD..fzA4OpZZU4Ot86V9C..fxtpbEgbO2eahCaemez0e5hS5QgUyE06oESaVYGOwS07jdT...nbg7GUccQ8dZwzmc1wiK+A..PYTUphPdkWqww2M45F87LlQROJrVTm5jItgq5Gim40ZZ7tueCR5wA..fxD4OpZaU4OdV4O...JipxTDxjmbch98nsNt1KYxQ1YmIoGGJEMu4KOt4e8jhaZ.sK99uutI83...vlD4OpdP9C..fxCUIJBofBh3Oc2sO58ILyXq2pklziCqGa+1kW7qOqoFW6s0gH2bqR7iP...rAS9ipWj+...nrpJwuE4SNrVDMHm7iis6yMoGE1.cvGTtwAz0bia4u11nfBR5oA..fMbxeT8i7G...kEIdQHi6+kS7DubyiqnuSMhvojd0I85bVw0R4A8PadBOI...rgQ9ipuJL+wPaUBOI...U2jnEgr3EmUby2c6hey4OknksX4I4nvlfZUqHt1qXJwa9QMJd82nQI83...v5j7GUuUX9iOrgxe...rQIQKB49evVG64NsnX+12EjjiAkAMpQED2xU+iws+vsI9xuJmjdb...nTI+Q0exe...roHwJB4cd2FFe3muYQuO2okTi.kS5XGWZb88Yxw0c6sOl8rqcRON...rFj+H8P9C..fMVIRQHybV0Nt0Gnsw0cwSNpe8cc4MMXe26EFmvgL23F9ycHxO+rR5wA..fBI+Q5i7G...aLRfhPxJ9q2Sahd7Klcri6PdU9O8TgoGmxriV2hkE26825jdT...Xkj+HsR9C..fMTU5Eg77CuowByqNwodRypx9olJbYhqnuSI97uNm3EdwllzCC...xejpI+A..vFlJ0hPlv2U239elVFWyEOonVI5xzNUTxImLwe3p+wXvOSKiOcrV7BA..RNxej9I+A..vFhJs3.KaYYE2xc0t3xNioEsqc4WY8zRBnssI+321mIG2V+aWrrk450K..PkO4Op4P9C..f0mJshPFxit4wV0tkFG1gL+JqmRRP60dtnX62x7h+wyz7jdT...pAR9iZVj+...XcoRoHjOYL0Odk2swQe68TqLd5nJhKnmSOd3Q07XpSqNI8n...TCh7G0LI+A..PooBuHjErfrh+3eqcw0dgSJZbiKnh9oipPZSqyON6iZVw8+fsNoGE..fZHj+nlK4O...JMU3EgLfA0l3f6ZtwtuaKth9ohpfNwieNwW+i0K9n+ylkziB..PM.xeTyl7G...qMUnEg7NuaCiwL95G87rlQE4SCUgkc1YhK4bmZbWOXarvEB..TgR9Cj+...XsoBqHj4LmZG21fZSbsWzjhbxISE0SCUCz08XQQm1BKbg...Ubj+fUQ9C..fUWEVQH28.ZSb7G3bhcbGWRE0SAUiXgKD..nhj7GTbxe...TbUHEg7Zudiheb5YGmQOlcEwCOUCYgKD..nhh7Gr5j+...n3J2KBYZSuNwe8QZS7at3oD0oNNkzoHV3BA..JuI+AkF4O...Vkx4hPxJ5280l3rO5YEayV6TRmRxBWH..P4K4OnzI+A..vpTtVDxK7hMIVTd0NNoSvojNqcqZgK7oe1lkziB..P0bxev5i7G...QTNVDxONori9OrMOtp9N4nVUXKA6jFbA8b5wPGYKrvEB..rIS9C1PI+A..P4RjgBJHha6taWbgm7LhNz9kUd7PRJlEtP..fxB4OXig7G...kKEgLrmoEQCp+xiteTyq73giZ.rvEB..roR9C1XI+A..TyVYtHjucB0KF5K173xtvoFQjobXjnl.Kbg...aJj+fMExe...0rUlJBI+7yJt06tswUblSMZcqxu7ZlnFBKbg...aLj+fxB4O..fZtxJSlLY5ZW6Zz8t28M567qL58Ol1baQbFG2yWALZTSvblaih654Oq3RN1GNZVSyMoGG..fpvj+fxJ4O..fZVF9vGd7QezGE0YU6nacqaaTO.iab0KF3yzg3guiuKZZS23tuPwkccyM9pusGwYdFSNoGk0pQLhQrQ+9CnlBu+.Jcd+AT51Td+g7GTdQ9Cn5Ku+.Jcd+Ar1M7gO7HhMwKMV4kWVwsbusOtlyepQSa5xKWGLp44DO94Di+GxwBWH..vZk7GTdR9C..nlmMohPdvgt4wttcKN1u8cgk2yC0.kc1YhK87lZbGCpMwRWpEtP..fRR9CJOsp7G+0A0V4O..fZH1nKB4SFS8i23+znnOm2TqHlGpgZO9oKJ14sMu3IGVKR5QA..nJD4Onhvd7SWTzkscwxe...0PrQUDRAEDw87fsN908ZpQCaXlJpYhZntfdNs3Ie0lESbh0MoGE..fp.j+fJRxe...0brQUDx+70ZbzrFs7Xu2KmR5T9qksX4wu5jlQb2Cr0I8n...TEf7GTQR9C..nliM3hPVxRxJF7vZUb9m0LpHmGpgqaG4bi7VZshW40ZbROJ...IH4Onxf7G..PMCavEg7ruPyice6VTr8aWdUjyC0vkUVQbIm+Ti68waUL+4uQuD1...jRH+AUFVU9i69wZs7G..PJ1Fzuo2bmashg9hMON6dL8J54AhN0okDG09M+XvObqR5QA..HAH+AUl5TmVRzse17j+...Rw1fJB4IGVKii8mM2n8sO+J54AhHh3L6wLh24SaX7YedNI8n...TIS9CprI+A..jtsdKBYRSpNwy+1MIN0SZVUFyCDQDwlsYYhK4blZzuA1lHe4eA.fZLj+fjf7G..P515sHjG5waUb1G8ril1zBpLlGnP6+9sfncsbYwS+bMOoGE..fJIxePRQ9C..H8ZcVDxW9U4Dex32r33OlYWYMOPIbgm+zhGZDsHlxTqSROJ...Uvj+fjl7G..P5z5rHjG3g2737NooG0qdYprlGnDZaaxeRjnWG...H.jDQAQE5Y2mUz+GnMI8n...TAS9CRZxe...oSkZQHu+GzfXN4V63vOj4WYNOvZ3DN1YGSZl0Idq2ogI8n...TAQ9CppP9C..H8YsVDRAEDw.erMOtfSe5QsVuqhHPEq5TmHtrKXpwc8PsIVzhxJoGG..fxYxePUIxe...oOq0XF+yWqwQyZzxi8duVTk87.qU67NkW7y10EDO7i2xjdT...JmI+AU0H+A..jtrFEgrjkjUL3g0p37OqYjDyCTpN2yb5wnd2lDie70KoGE..fxIxePUUxe...oGqQQHO6Kz7X25zhhse6xKIlGnT03FWPbQm1zh65AZSjw5mI..jJ7ruPyice6j+fpdj+...ROJQQHyct0JF5K173bNsomTyCrNcXGRtQN0sfXDipoI8n...TFsp7GmcOj+fplj+...RGJQQHO4vZQbr+r4Fsu84mTyCrd02KXpQ+G1lGybV0NoGE..fx.4On5.4O..fp+JrHjIMo5DO+a2z3TOoYkjyCrd0wsbYwodnyIF3PZcROJ...ahj+fpKj+...p9qvhPdnGuUwYezyNZZSKHImGXCxodRyJ9ruIm3i9u0OoGE..fMAxeP0Ixe...UuUXQHex32r33OlYmjyBrAqt0MSz2yYZw8+HsNhHqjdb...1HLoI2J4OnZE4O..fp2JrHjy6jldTu5kIImEXix9t2KLxotYh27e0fjdT...1HLh29fj+fpcj+...p9pvhPN7CY9I4b.aR50oO8XPOUqhku7jdR...1P79ePCh4sjbj+fpkj+...pdpvhPpUsVWGFT0zttKKNZWKWV7JudiS5QA..X8X4KOh9+HsJN18dzxeP0Rxe...UOI9AU6cN8XFwfG1lGKaYtV8B..Uk8huTSi11x7isuSeeROJvlL4O..fpeTDBU6si6PdwNsU4Ei7kZZROJ...khErfZEOvSu4wEb1SKoGEnLQ9C..n5GEgPpvY0iYFO3y0hHu77WkE..TUziOrVF+h8b9wVuUKMoGEnLS9C..n5EEgPpv1r0KI12Nun34FdyS5QA..X0LoImc7ruYShS+TmYROJP4B4O..fpWTDBoFmwoNi3gGYyiEr.+XM..TUxfFZqhd18YEMqYKOoGEnbi7G..P0G9M1H0nCseYwg204GO8y4uJK..nphOcr4Diah4DG+wLmjdTfxUxe...UenHDRU5wIMq3Ie0lGyYN0NoGE..nFuLYhn+CoMwEd5SKxN6LI83.k6j+...pdPQHjpz5Vkebr6+bhm5o8WkE..jzdkWqwQN0qf3mu+KHoGEnBg7G..P0CJBgTmS4Dmc77uUyhoM85jziB..TiUd4kUb+OUqh9zyomziBTgR9C..npOEgPpSyZ1xiS8Pmc7DCqEI8n...0XMrmt4w9z4EFa+1kWROJPEJ4O..fp9TDBoRm3wM63e9QMN9wIkcROJ..PMNSeF0Id7WoEwYeFyHoGEnRg7G..PUaJBgToF1vBhy5nlc7nO4lmziB..TiyPezMONsCaVQq177S5QApTH+A..T0lhPH05359ri28K1r3amP8R5QA..pw3K+pbh26KZPbRm3rS5QApTI+A..T0khPH0JmbxDm6wMy3gehVlziB..Tiw.FRqh9bpSOxImLI8n.Upj+...p5RQHjpcTGw7hO+6xIF2+KmjdT..fTu+0a0vHukTq3PO34mziBjHj+...pZRQHjpkc1Yhy6jlQ7POgqUu..PEoksrrh66wZc7q54TirxJomFHYH+A..T0jhPH06vN34GSdlYGi4SqeROJ..Pp0y9BMK5bGWbrKcIujdTfDk7G..PUOJBgTuZW6H50oL8XPOVqR5QA..RklybpcLjg2h37NqYjziBj3j+...p5QQHTivA7yWXj2RyJdq2ogI8n...oNO1S1x33Of4EsucKKoGEnJA4O..fpVTDB0PjItryepws7.sM9zwZgKD..JuLguqtwK+gMNNsSZlI8n.UgH+A..TUhhPnFiN247h+zk+Cw0bGagvH..P4jA9Padb9m3LhF1vBR5QApRQ9C..npCEgPMJ6RWxKt0KSXD..n7va8NMLl5rqabzGwbS5QApRR9C..n7ymLlbhw7oaZ+NUJBgZb10cQXD..nrZTubShaaPsMtpKbJQsqcROMPUWxe...kci5kaRb820VrIe+UDB0Hsq6hSSc..XSQAEDw.dfMOdpQz7X.272E63NjWRORPUdxe...aZV87G65trok+PQHTi0tzEgQ..fMFKXAYEW2M09XhSttw8dqeWz91srjdjfpMj+...13Tdl+PQHTilvH..vFlIMo5DWzuYqhsrcKMt4qeRQCaXljdjfpcj+...1vTdm+PQHTimvH..v51mLlbh9b8acbJca1QeN+YD0RJBXSl7G..v5VEQ9CQXfPXD..nzrpEkva5R9g3H+EyKoGGHUP9C..XsqhJ+ghPfURXD..nHq9hR3tsqVTzgxSxe...EohN+ghPfhQXD..vhhNTYQ9C..nxI+ghPfUivH..TSlEEcnxk7G..TSVkU9i5Tg7nBUysKcIu3VurUDFoSs7mEyK2VjziDTkzG8I6i2e.kBu+fpiJnfH96uVyiK7Tlt0CDnRj7GvFF+9UPoy6On5nJy7GYkISlLcsqcM5d26dE5SDTcz2+CsI95uaqR5w...pzrsc76isZKmRROFPMRxe..PMMUz4OF9vGd7QezGUzYDR25V2pvdxfpyFwHFg2e.kBu+.Jcd+AUe0xJ7mAu+.Jcd+AT579Cnz48GT8UEa9igO7gGQXMBA.......RwTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpUVYxjISW6ZWit28tmzyB.......P4hgO7gGezG8QQcV0N5V25VRNOPUViXDiv6OfRg2e.kNu+.Jcd+AT579Cnz48GPoy6Of0tgO7gGQ3RiE.......jhoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVEVDRlLYRx4........nbQAETPg8dTqHhnksrkwTlxTRzgB.......n7vTlxThV0pVEQrxhPNpi5nhQMpQknCE.......P4gQNxQFG8QezQDqrHjd0qdEyctyMF7fGbL4IOYWlr.......fpUJnfBhIMoIECZPCJxM2bid0qdEQDQVYVYqG4kWdwfFzfhW7EewX5Se5QVYkUhNv........anxjISzpV0p3nO5iN5Uu5UjSN4DQTrhP........RapURO.........UTTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0pNI8....Pkke3iei3i+gkD0staZ2+ktzH5x9eHwV27rK2loY8seP71e1ririkFMoS6ere6XyK2dropge7ydq3+9sKHxNVZr4cd+it9S78X...pLkUlLYxjzCA...U7VPba6Uaiq4CWPY5Q4ddmYFWz91hxoYJh26dO5Xe66HiHh3ft02Nd8qY+J2drq9atwKeu+1XjM37i6pm6VROLahJ4O246w...T4ykFK..fZLZxVlSY9wndkemLHQDQjc8ZSgecaxob9AuZrY8kuXbxMrkwQz26Klw7VVRONkIE+m678X...p74RiE..PMVm34eAQKxZC+3WvzxDaQSqeE2.QgF+qbewvV3xS5w....RATDB..PMRM6XFT7XC77h5kzCBqUE+LkA...nrvkFK..fZjVz7WRrDqVdUKTKsUA...kANiP...pwp1aDWVrVaV7blSjWgaUmnYMqQafGaNQyZ153RrU9yMFy689wm80SIxpt0MxptML11seWhcpKaUzfMnIK+X1SdhwW8MeW7iSapwRW5J1aiZdahstSaezoss8kxYBS9w7mStwx2.9+Sj+Bh4j6JV6Nxp9MJZZNq8nEKK2YFe83+ewW8sSMV3RWZDQciVzlNDcZG1tXaZWyWyG17xMxKVdLioO4B227l9bi4lWtQlEmeT+F0rnTdpJk+eDQiaVyhZWlO9M0WSqLmwHV7blXLlOdLw2LwYEYU25FKcoQz1scmittmcIZQNkwefG..fpoTDB...aR9g321oeRzuYszB2ye4U9g3WencXMNxE9k+8ng6voTr8z2XREb2Q6VsOW5F23H9gO9QhSaeNm3sVZAqkmyCH5+q9.QeNjNUpS0m8xOPbUGeehQs3018eU5RbGO2SFW1w14Rr2E7YObzjtbdE9b8em2aD6diW6e34+mgzqnqWvSEQDQ8Nv+VLq23BWsRZlY7z29uK9kWY+K0ondc4zhmZH2Qbr6QqKbeezfN0Xe66HKwwMha3vilcCq3qO198Awyco6453+aQrvu7YhlTrWuu8QO03JNfVWpG+R91mIZx1VzwOzOYtwYsqMovsKKulVYMiQ9SIdha62Dm10MzR8w32+nuS7aN880kCN..fZbbowB..nFqkWltzXsEwuazCtD64JOrqJF67WsGz7mP7q2mynD65IFyMsFkfDQD2+4sWwV9SOqRoDjHh3Mie0gtcw.euosVts7hW51O4nKGwErd9.6iHhwFW9wsSwk8nedIG0RrUiWO+USUTsGMrwq9sM2X.+xcbcVBRDQrjw93ww001D2ya9iEauMbcdeJHuksNu8HhnAa+OOt18XyJb664QGcrtV10e+m8gJ1V8MNvNupBFJ6ulVwOiQrzo71wI2zsXcVBRDQbimw9Ec3X6WLo0+Kg...jpnHD..fZj1rFWundkwqTPMcmOi3cG3IWr87DwIb8OWw9.syOd9a7zhAL2h9jm68f+33T2kh8Wxeo3WdI+o3oG0qEibX2ebJ6VI+a3u26W+iouZ8sLk25Nii7JGVw1SWhq7Nez3s9OeZLtw8owq97OTzycOmRbetyy79iIVN7ghuf4WxsG+ybKwu5omYga2zC7hiGdjuYL1wMtXLu2KE+wdenk33u3C7OGSdk++oc60YF2+PFP7+cHEcY4p0GyUGCYHCIFv.FPz2iZ62.ln1DmxE2iB256GziEe5pWP0pj+Dhm3le0B2rG86LisL6U70UrulV9LiQdedbA6vAFCagE8ScM+.6U7vi7MiwMtwEi9EFXbRMnnKhVy7Et73mcgOUrjMjQD..fTBWZr...pQZNuPuhdeYeVzrMviegyblw9bN+g3bOjstD6eeN++V7GF1KG+tWYdQDQ7028ID22IL0nuGPqiIO56NNta98J7Xa1wLn3O2yca87L083UG+iFGxOYUmlEGbbj+xSHN3K7nhd2+ObE6JyyDexju13vaecW4wrf3EFT+J1iQOh+6rdrX2adQM8rC6PWhC4XNk339iGebrW2Ksx8dOwn+hapjWhkJyxO9hO9eW3Vs8ze3XBO5YVrKGS6PrK68uH59geUwtbh+kBmi+83to3T5bShsbu5VbA6UDeZs9v3u8Zq3Lt4POhSMNmyY885VIsyG0YFct1OX7EKOSDwvi+wqOgX2OtsYMNtYL1WpXEU0k3rOtcckecE+qok8YLh2aP+gXnyunykmSqeuR7fW5gV3q26vNrCwArfiOFXw94muePmZ7TWzQTN+8c...p5RQH...0XMz67N2nN9ouGW7ZTDRDsLt1gNr3I2hewJ+.si3hOv+XbHe2oD2P2tphcb8HdsG4biRYI2nP2+6NjhUBRQOGm20eCwcMvtsxmiwFe+TxMh12hHhHxj6+Kdzmnny.i97H+1R7A1Wjbhtew2Tr++g+YgW9sVxxxesbbkEKH9tO3+U3VMtCawZcMonKGSuhytw8KdlN14Xu1l8NZRcK47trkTzYGQAKYi+zVoVsbuie8Y1p3benUbYDq+C4+O6ceGdUUe+G.+SfDHHgMxVArtsHZEm0eBNqJUvQsJNPQQDsh6pV2q5ttq3.2hiZwAJRqSzZ0pUsp3nVG3f8lvJ.gje+APFPBDfjbRN40qmGedx4dO2a9jK49Xdm24786aDW3AuIqz9XR9wXF9CUzQMrWCN10NurxkpNdMc8eF+33lufQTz809i9QJUIHEq0wftqWJl7+tKwk8AyOhHhK4Ne83nuuCYMrAsC..P5fkFK...pfxsb1eJpe62234eteeItk6H1ltr6kZ4J5dd26nb23wWgMnW2bbj6bqJ6OGsniQmaPY+3ynIaW77i66hu3SeuXTO8KEmeeVcaX2YFMoJ829cNQW1osrni9pqeOiK6Ae0XRyZgqzXr4wCNiEF49oeR7pO28F6+pT9y5qrie0wclEczrF4sE+6UZ8Dqv49YwCdWePQGeNmw9WTQUUOult9Miy4G9nR78XcKtyK6HVMaD5sNN3gb7EczONrmN9lEtdsI4...PsFthP...pi5fhG44N0nYYr3JzYW3hini83mWt2+l9quh3AOkGMFvPmzpbe84ZeiXP6RYWvQIszUyuF6H6NF85+qIwne44TF2YlQK6PmiV1gNGaU2J9VyOu4FyctyMlwjmb70e0Xi2+cds3ub6OVQW4JUMxL1hsuGQDEujfckmv9FW4IDw1smGcb3+1CH54t8Kitu0cIxIyp13HcX2Oz33Z5kr7kNpwFO4K9EQuNgson6+Ge2msDaB5GTbj6UIuZepddMc8YFycZSsDOSiMd6260hV+SMLVvhW0umtgMtwwO9+9fRbKyKV7RhHZz5zXC..PsJJBA..nNoVzm9F+19t+qtpGVKkcbbW+qDiY3aWo1yFhtcMwCd98pB8L7K5d6iFWtWzHYGMsIYUd24xke70u+eKd7m7uDuwq+Twa9IUrRdprskG5UE28w8WhA+vSsT29G+FCO932X3Ec7weA2Zb78quQO21tT0LHYt4wwb96S7vWzx1+Ntmacjw0LfsIV1Jb07hQeu2UQm5tdFmbr0k4UrSU7qoqGy3D+7+Sodptki8.iaIp3VXk8phF...0PYowB..nNoEj6hhJ6eOvYzjlFcbyZPouwOa1QdUvG+lrEcccdOanv79ewkrusJ17c9fhK+VdzDqDjko4wI+Pea75OzUG6dCJ+HGOz0clQu5dWie4Y9nQtUQWjJ65QNfhOXrWXLluYAQDQTvz+Wwc7bynn65jO1ceUdsu550z00YLqFly5wm0WHd6uZlqGOd...p8vUDB...URd0qYPw07gKnz2Xg2PbTW49Di4x1203iecYSAeYldbGGytEW8ql6Jc6cKN1AsWwl+y1xXq21sN1ls5mGaRK+w3naeOJ09WRUibh873tn3ebbmeL9+6Xi24sdo34dp+Z7Du9GuJm46ba8ONus8WD2cIVRnprz3MYuhqbeaVbouxxVRwdnQ7wwgdA6V7YuzSV7xYUFmWru+hlsROxpuWSWWmwkrn4Uhi5Y7Tu40EabFKIpHeWTgKIhMZKpr2WV...nlIEg...Pkfo892UruKe4MZk8lW99E2QulbLjd11pjO2y5+7zwYLhhuxApW2Nu3selyI1oMsMq5U4vb+tXdET1W9EYkUCJyaeUkeLsoNwJ34lYzosb6ie6Vt8wucPWT7H4M63q9f+Q7H26UD2vi9gEcVO5i9xwMLfsIVC6m7qCZcb3C9XiK8UtyHhHdgK7kiYc9ac7b2wSVzYbz+49EcXk97VY8ZZU4L19Me6hH9KK+nNDceW24XKxpR+EP...p0yRiE...qmJbteb761qSuD2xIFe73du33ZZw+cGc585rhwVEs9O8cePI2Dr6Y7Vi45hcsL9E1GQDy+G9zRr4aWZMtyaeb3MdEOpbibK20zq7hu5s9Wk48T3b+tXXW8EEC5XOjHiL5S7dSszeMmY1MO1lc+fhq+Q9f3UuwCunaeAi4Mhuctk8qO0qgqo8FkUuMeu5WwKQWENl3EG4eIdkOcgK+d6Vbh8YUuRTprdMspbFaVGJYwZOQ7Bu4TVseN9w2dXwdsW6Uz+S9LiK5pdfX7KrJZ8HC..fZXTDB..PcR4Tosp.kW73m+AVpkEoa7Ut7n6cYmhq44upRbdOQ7qN0GKVTk0m1xUGhV2jx69ldLzK62WtOxBWxRJwU1vaFiXLecYddy5+7TwY9xytreNVz2E2xkesw88XOWDwKDOU47bDQD+rsbqJwQcIZUiJ6qlg+wGMtX8Yg7pdMemhAehqnzf2L5+Aexwau3kUbQK5yYD6TGWSEsrt+ZZU4L1rN+KJQwUQ762uaI9wxccwZbw0dPmZ7FuwaDO58daw0boebTPlt5Q...paPQH...0IMiW3Ghu46mX78e6ODe629sU3+6GlXo2fo+lW7ZiiYnSpni23A9LwYsOcJhHhNzqyLdrSo8EceSZ38Othm9+U4+ESCK4AOQ7Tuz2rpmS9SOdhK9Xhy6YJ872fLJ9pVIiF0rnyMr3ew52xQb4w+36WXoN+I+YOazmcYPQDcqLGk505sKNhseCJwyw4F+subpqx4M+ebLw4cj+whNt8G8NFssb5i3GG1nhuXlKIJL+00s29Li863u3x7dNqSd+hFWV2QkzqoUkyXFMY6hy+V9MEeCEdCwOe+t73Km4J0FR9SJt2S8Hh6d1Ee6m78exwFu9cg1...PsFJBA..ntoBugX65ZGittocI1zMcSqv+WW1+GJVwJbUAS+MiAbXWcIdR6W7h+oCtDKeRYGG00Ox3.ZTw+X2W6u82DuwDVW2TzKa+7dcnk53K6f273.OyqO96+i2K9W+i+d7.234DaS1sINp+3eeUdrSedkX8uJytF88b6QIt2mH1ittAwgMnqHtsa3phiZuyIZe2NzkekJL1xYZZcLvarj+B8eg3.151F62wbAwi7WGYLxQ9Dw0d1GVjSm2yRcUzbEm4AVptGJ8FA98GaaqZPTurxJF7Crpa15UDa3Nc.wfa9J+a9uewucO6TYd9UZulVENiQDwNLfqsTOl4NlqH15V0f32ck2cLhQ9Wi6+FunXaxtiwIOz+cIdTCINuisxeioG..fZpTDB..PcFKNV+2SDZXqxd4ezzia5n6aQKeQQDwM9J2PzsUZ29NilziXnOWIKKYrQeNlaJl55vnTdyeC23dGu0c7aK0sM5a6Bh8eO1kXW2i8ONwy6liuXoK6wtyG8IUphYt466Ei4WhG2u5zuqRs2lDQDOy8c4wYd9WZ7Du9JNytEm0YdHk5bVZIFsNzqyMFcI1+OhHhWY3WebbGdei912iJtva4YJ08cRC88iSpGspT2V2Nv9Ules9Wd9OrTyaEWWii6pJ8L+KO+ADaQ4rbbUY9ZZE+66V6lwHhHxrqwc8i+m3h2mRuVucWW1oD+l9d3w.Ouqon4bY5Y77ewUEahqFD..f5PTDB..PcDYFspMax58yxFz.6QSPD...B.IQTPT0FF0OiHlza+nw4+xyonaeWOimIFx9T1+k62486rhG6T1whNddi4BiG40F+xNnDWFD4jcrZ0vbJ9ZMogYU5xJ9+NsmJF6e6dK0uP9RpU85nig8Reb7Oer6Mtumq3qXiIN7WK9tRrItmQS1t3AG+WE2wYenk0SSzftMv3U+5+UbimU+K51ZYGaRT+R86pOyX+O2+R7su2HhS6f29x8qmcnOmd7ru63h6cv63pbeMdSN33+92tyh2.wWtEj659trx12m9GacIFzgz+cZ0d9UNulV5uuKmrW8MPr1NiQDQFMYahq5UlR7O+q2zp75Uw5VbICcTwjW7Xh9rUMaM9bB..PZRFEVXgq++YwA...0PjWLgu8ahIO8EGYjUDYk0FDstccHZ+Ft1u6vmedyN99u+mhbWvRhkrjkDMt0cJ1peVGKwR+UEStSahwD9oIG4tjHxJqHZvFzrnccriQqaxZn4mkMEwLm1rh7VxRhrxpQQSZQKhrWW1BNVuT48ZZUu7hI7seeL4oOmHirVVoKMtYsM5bm6XB75F...0LnHD.......H0xRiE.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0JyU7A4kWdwvF1vhQMpQEScpSMxHiLRx4B.......nBqvBKLZSaZSz6d26XfCbfQ1YmcDQDYTXgEV3BVvBhANvAFMu4MONfC3.h1291qHDX4F0nFUz6d26jdLfZj79Cn748Gkuu8aaX7Judyhm+e1rX65ZdwOeyWPU9myudbYGuwWjSrma87h8X2xM14cbdQiabgU4edor48GP4y6Ofxm2e.kOu+n7I+QcKETPAwjlzjhQO5QG4latw8e+2ejc1YurqHjgMrgEMu4MONwS7DS54D..HEZtysdwX9GMMF0q1rXlKHqnu8ZVwCd8iKZWayuZaF98yOi38924Du06zz3JFVGDJA..fTJ4Op6pd0qdQG6XGiANvAF228cewvF1vhS6zNskUDxK8RuT769c+tjdFA..RUxH9Oeb1we+0ZQ7xebNw9scyKN49O0X62t7hHp9+A+abiKL1qdM2Xu50bEJA..fTG4OnzNvC7.igNzgVbQHSe5SOZe6aeROW...o.SdJYFu1azr34GSKhVsA4GG39L632MnIGMoIEjziVQVSgRNje8LitusKLoGS...XMP9CJOsu8sOl5TmZDQI1rzsmf...r93SGa1wS7LaX7wiK6nu+x4DW6u+mhe1OaQI8XsFsxgR9WuWNwUemcH16cL2X.8e5QCan+Bs...nlF4OXMod0qdE06Q8R3YA..nVtBKLhg+jsJtraqSw90yYEi799lXvmzTqUDBYk03FWXr260biG7lGWL6byLN4ysKw+6+kcROV...vxI+AqKxbMeJ...T1l0rpebs2RGhHh3AtwwEsnEKMgmnJG4jSAwEbNSJdq2tIw4bcaTzue0Lii7vmQTO+YDA..PhQ9CVW4kR..f0Iexm1n3D98cM59Vsf35uheJ0DBoj1icetwCdiiK9r+a1woeAab7SiOqjdj...nNI4OX8ghP...VqrhKE8K+16Xb4m9DhiteyHRya2bstU4GWykMgX+2ybiAcwcIdwQ27jdj...nNC4Oj+nxfkFK..fJrz5khdEwu9.lcz8tM+35u8NDuy6233rOsoDstU4mziE...oVxeH+QkEWQH...UH0EtTzWS1nNsj31t1eH94aYdw.98cMdq2tII8HA..Ppj7GKK+wsecxeTYvUDB..vpUgEFwi+TsJ9quZKhK+zmPz8scgI8Hknpe8i3nNhYD8X6mebM2Q6i248xINsSdJQN4TPROZ...Tqm7GkV8pm7GUFbEg...Ttl0rpeb9W1FEexWrAwCbiiqNeHjRZy277h64l99n4MM+X.mcWiO+yaXROR...Tql7GkO4OV+nHD..fxzm+4MbYWJ5acc2KE80jF1vBiAeRSKNuAMo37toMN95uVXD...VWH+wZl7Gq6TDB..vp3q+5riy6l133hO0IFG8QNiHiLR5IplscrGKHt3Sdhw4bscJ9owmURON...Tqh7Gqcj+XsmhP...Jke3GyJNmqsiwEO3IF6vuXAI83TqwttKyOFxQOs3bt5NGScZ1J9...nhP9i0Mxer1QQH...EYxSIy3bu5MNNyicpwttyyOoGmZc128N23H2+YDm+UsQwblieTa...Vcj+X8i7GUbd0A..HhHhYO65Gm+UuwwwbPyH1q8btI83Tq0gdvyJ54NlabQ+wMJV3BcM8C..PYQ9iJGxeTwnHD..fX9yOi3BtxNE62tMmnuGzrS5woVui+XmQr4cYgwUb8cLxOegQ...njj+nxk7GqYJBA..piawKNi3RulNEa2Vsv3n62LR5wI0XHmxTilz3Bhq+VZeTXgI8z...PMCxeT0P9iUOEg...0gszkFwUeCcHZWqyOF7IMsjdbRUxHiHN+yZRwbme8haensMoGG...RbxeT0Q9iUOEg...0YkQby2d6iHh3rO8IEQ3OanJaYlYgwkc9SH95uO63AejVmziC...IH4OppI+Q4SQH..PcTC8d2vXxSOy3hOuIF0u9I8zjd0nFUX7GuneJ9GePShQ7rsHoGG...RDxeT8P9ixlhP..f5fdrGuUwm7eaTbkW33iFz.+kXUUqYMqf35tjeJdp+dqhW40ZZRON...TsR9ipWxerpTDB..TGyy+BMOdk2sYw0coiOZbiEBo5Ra1v7i+zE+CwcL7MLd2+UiS5wA..fpExejLj+nzTDB..TGxq+FMIdrWnUw0ew+Xz7luzjdbpyYi5zRh+zeX7wUeOcH9zwlcRON...TkR9ijk7GESQH..PcDu66033Vez1D2zE+iQ6Za9I83Tm0lsYKJ9im43iK4V6TLoIkYRON...TkP9iZFj+XYTDB..TGvm84YGW8c2g3O8GlPz4MdII83Tm2108EFmvgL83RugNE4kWFI83...PkJ4OpYQ9CEg...od4la8hq315TbECY7wlsY4kziCKWe+0yN1lMMu3lt81GQT2LLB..P5i7G0LUWO+ghP..fTt63dZWru6ZtQO9EKLoGEVIm1IOkXpyLq3wepVlziB...UJj+nlq5x4OTDB..jh8JuVSiuehMHFvwLsjdTnLjYlEFW94M93YeslGu6603jdb...X8h7G0rUWN+ghP..fTpINwLia4wZabgmwDirxpvjdbnbzxVtz3pO2IDW0c2g3G9gFjziC...qSj+n1g5p4OTDB..jBUPAQbc2dGiS9Pmdz0tr3jdbXMXK177hys+SNtvquSwbmqeDc..fZWj+n1k5h4Opa7UI..TGyS9zsJZb14G88flcROJTAsW64bid1i4FWyep8QAEjzSC...UbxeT6Scs7GJBA..RY9x+a1wS72aYbNCYxQDtjzqMYfG+xVKkG1C2lDdR...nhQ9iZupKk+PQH..PJxBWXFwUe6cH9CmzjhV2pklziCqkpW8h3BOmIEu4+Nm30eiljziC...qVxeT6Vco7GJBA..RQtmGnswNtMKH1sccdI8nv5nlzjBhq47GebSOR6hu5+kcRON...Ttj+n1u5J4OTDB..jR7NuaNw+9y2f3jOgojziBqm5bmWbbICdhwEeScLl4LqeRON...rJj+H8ntP9CEg...o.SeF0Ot16q8wEe5SLZTirt7lFrq677iCcumcb42Pmh7yOijdb...nHxej9j1yenHD..nVuLh+zcztne+pYFa0VlWROLTIpeGwLi11pkD248z1jdT...X4j+HsJMm+PQH..PsbO+Kz7X94kYbjG9LR5QgJcEFmyPlT74eS1wHGUyS5gA...4OR0Ru4OTDB..TK1399FD2yyz53BN8ID0yOYWpT1YWXbkm+3i6+YZc7oiM8t4EB..Tym7Goeo07G91U..nVpkrjLhq415PbVGyThNzg7S5wgpPsuc4GWzfmXb8CsCwRVR5a85E..nlO4Op6HMl+PQH..PsTO3isgQW5vhi8cuyMoGEpFrS63BhsXiyK9qOSKS5QA..nNH4OpaIsk+PQH..PsPe7mzn3Ud2lFC4jmbROJTMZPCXpwiL5VFSdJYlziB..PcHxeT2TZJ+ghP..fZYl27xH9i+4NDW3oNgnoMsfjdbnZT6Za9wwcfyHtmGnsI8n...TGg7G0cklxenHD..nVl6dXsK1qdL2X62tElziBIfC6PlU7MiugwG7gaPROJ...0AH+Qcaok7GJBA..pE4cd2bhO4qaTLf9OsjdTHgjUVEFmwIL431df1kZ13BA..pYR9CRK4OTDB..TKwrlU8iqeXsKtvSaBQ1YWXRONjf5wNrfXy1nzyFWH..PMOxevJjFxenHD..nVha+taWbH8ZVwVsUKJoGEpAHMswEB..Tyi7GTR01yenHD..nVfW60aRL9olUbL8alI8nPMDooMtP..fZVj+fUVs87GJBA..pgaJSMy3O8nsK9Cm9jhLyzkjNEKsrwEB..Tyg7GTdpMm+PQH..PMZYD2xc0t3358LhMoqtjzozRKabg...0TH+AkuZy4OTDB..TC1HGUyhEjW8iC+PcIoSYaEabgi3YaQROJ...0xI+AqI0VyenHD..nFpwOgrhg9zaXbdCYhQ87SswpwfFvTiG9kZUs1MtP..fjm7GTQUaL+gukF..pApfBh35u8NDm5ucZQm53RR5wgZ3psuwEB..jrj+f0F0FyenHD..nFnm9YZUz3Fsz3fNv4jziB0RTadiKD..HYI+Aqspsk+PQH..PMLe23ZX7vipkwYcpSNhnvjdbnVhZyabg...IG4OXcQss7GJBA..pAI+7yHt1au8w4brSNZaaxOoGGpko15FWH..PxP9CVeTaJ+QFEVXgE1idzinO8oOI8r...048xuwuLlxraUbrGxHS5QgZol8ryItkmq+wYcvORz7lOujdb...pAS9CVeUSO+wHG4HiO3C9fnns08d26dmjyCTi0nF0n79Cnb38GP4ac48Ge4W1vXbinSwibyeez7l68Vrtq9YM23+8c8KtzidhI8nTl7++.Jed+AT979Cn7I+AIoZx4OF4HWVIeVZr..fZ.xKuLhq4N6XbAmzjil27klziC0xcXGxrhu9mxtVyFWH..P0K4OnxTsg7GJBA..pA3Ad3ML59luvX2104mziBo.YkUgwYdhSN9SCq8whWbM+MtP..fpWxePkoZC4OTDB..jv93OoQwa7gMIF7IN4jdTHEYG9EKH51OagwS9zsJoGE..fZPj+fpBqH+wS7WpYl+PQH..PBpfBh3Ndf1Fm6.mbjSNElziCoLCZ.SIdxWsEwO9iMHoGE..fZ.VQ9iyQ9CpBLnALk3odsZl4OTDB..jfd4WqoQKZxRicdmbIoSkuV2pkFmxgOs31u21lziB..PM.qH+wtH+AUApIm+PQH..PBYQKJi39e51DmT+mVROJjh8qOfYG4s35Euxq0zjdT...RPxeP0gZp4OTDB..jPd1Q1xX627EDawlmWROJjhkQFQbFmzjiae3sMxMW+3+..PcUxeP0gZp4Op4LI..PcHyd10Kd3Q0x3352TS5Qg5.1rMaQwu9WNm39ej1jziB..PBP9CpNUSL+ghP..fDvS9zsN56ub1QG6X9I8nPcDGa+lV7NeZNwm84YmziB..P0L4On5VMs7GJBA..plMgIjY77+ylEG4gOijdTnNjMXCJLNiiexwsbusKxW9W..nNC4OHITSK+ghP..fpYOzi2l3358Lil27BR5Qg5X18cadQGZ8RhQ7bsLoGE..fpIxePRolT9CEg...Ui9p+W1wG+0aPbH8YlI8nPcTm5IMk3gdwVESZxYlziB..PUL4OHoUSI+ghP..fpQ22irgwId3SMZXCKLoGEpip8sK+X.GzLhgdesKoGE..fpXxePRqlR9CEg...USdu2uwwrla8i8auyMoGEpi6P66LiIL8Li29cxIoGE..fpHxePME0DxenHD..nZPAEDw8N7MLFzQO0nd9IvHgkYlQbVCZxws8PsKVvBxHoGG..fJYxePMI0Dxe3sA..P0fW90ZZzhlrzXm2oEjziBDQDwOeaxK9kcedwi73sNoGE..fJYxePMMIc9CEg...UwVzhxHt+mtMwI0+okziBTJmvwN0Xzuayhu9qaXROJ...URj+fZpRx7GJBA..ph8rirkw1u4KH1hMOujdTfRooMsf3zNpoD2180tnP6el..PpvyNxVFa2lI+A07jj4OTDB..TEZ1ytdwCOpVFGW+lZROJPYZe264FY2fBhWbzMOoGE..f0SqH+wweTxePMSqH+wK7RUu4OTDB..TE5Ie5VE88WN6nicL+jdTfx0PFzjig9zaXL8YT+jdT...VOH+A0FLjAM43t+qUu4OTDB..TEYBSHy34+mMONxCeFI8n.qVcdiWRbj6yrh68AaaROJ...qij+fZKRh7GJBA..ph7POdahiq2yLZdyKHoGEXM5HO7YDe12lc7AeTiR5QA..Xcf7GTaR0c9CEg...UAF+DZS7we8FDGRelYROJPERCZPgwPN9oD2yi11HhLR5wA..Xsf7GTaS0c9CEg...UAdw+YuhS7vmZzvFVXROJPE1ttyyOxtAEFu4a03jdT...VKH+A0FUcl+PQH..Pkr268abLmEkcre6ctI8n.q0F3QO0XXOUahktzjdR...pHj+fZyptxenHD..nRzRWZDC8QaSbH6xaF0yOoE0B08scgQGZ8RhW40aZROJ...qAxePscUW4O71C..nRzn9aMOZeqyO17M6GR5QAVmc78aZw8+zaXrjkXuBA..pIS9CRCpNxenHD..nRx7lW8h6aDaXLniaJI8n.qW1psLuXa5RdwK82ZdROJ...kC4OHsn5H+ghP..fJIO9S253Wsi4FcsKKNoGEX8V+62ziG34ZUjWdtpP..fZhj+fzjp57GJBA..pDLgIlU7ruYyhi9HmdROJPkhMoqKJ10sdAwy8BsLoGE..fUh7Gj1TUm+PQH..Pkfg8vsIFvAMinEsXoI8n.UZNlibZwi7RsLl27Da...pIQ9CRipJyeHQC..rd5SGa1wW9iYGGRelUROJPkpN0wkD6WOxMFwy4pBA..poP9CRqpJyenHD..X8PgEFwPev1Em5QOkHqrJLoGGnRW+N7YDO4q1xXVyp9I8n...04I+AocUU4OTDB..rd3UdslFY2vBh8X2mWROJPUh11l7i9t6yJdpQ3pBA..RZxePZWUU9CEg...qixKuLh64oZSL3AL0jdTfpTGwgMy34e6VDSYpYlziB..Tmk7GTWQUQ9CEg...qid5QzxXW154GawlmWROJPUpVzhkFG49Ly3Id5VkziB..Tmk7GTWQUQ9CEg...qCl5zxLd7WoUwwcLSKoGEnZwgcvyLd4Onow3mPVI8n...04H+A00TYm+PQH..v5fG9w1v3n12YDsYCyOoGEnZQN4TPz+Cblwi8jaXROJ..PcNxePcMU14OTDB..rV5q9eYG+qunwwgeXyLoGEnZ0AePyLd2uXChuabMLoGE..nNC4OntpJy7GJBA..VKc2OXahAejSMxN6BS5QApVkc1EFmvAO83QdhVmziB..Tmg7GTWUkY9CEg...qEdq2NmHuEUuXe1qbS5QARDG39Om3y+9riu7+lcROJ..Ppm7GTWWkU9CEg...UPKYIYD20vaabJCXxQFYjzSCjLxJqBiS7vmV7POg8JD..npj7GPkW9CEg...UPO6HaQr0cdgw11s7R5QART66dkaLwomU7IeZiR5QA..Rsj+.VlJi7GJBA..p.l0rpe7fuPqhSr+SKoGEHwU+5Gw.OhoFCa3sIoGE..HUR9CnXUF4OTDB..TAL7mr0wgzy4DcrCKIoGEnFgdtGyOxawYDu86jSROJ..Ppi7GPosh7G+q2uwqSOdEg...qAi66aP72+2MMNpCe5I8n.0fTXbVmzjiq49Ze7oi0FmN..TYQ9CnrTXbZCXxwFznktN8nUDB..rFbuOzFFmzgMsHmbJHoGEnFksdqyKtty9mhK3l2Hkg...URj+.JaceayacdOyQQH..vpwa+N4DSdlMH589O6jdTfZj11tkWbsmkxP..fJCxe.UMTDB..TNF8euYw0Or1Gm2oNon90OomFnlqtusJCA..VeI+AT0QQH..vJofBh3tuuMLdpWrkwce0eerUa451kdKTWR22VKSV..v5B4OfpdJBA..Jg4MuLhK9p5X7iSrAwcdseezwNrjjdjfZM11toLD..Xsg7GP0CEg...K2DlPlwo8G5RrwcXwwUeISHxImBS5QBp0QYH..PEi7GP0GEg...QDe7mjcL3KoqwQ7qmYL3SZZQ87SIAqyTFB..r5I+AT8xaw..nNuQ+2aVbI21FEW0Y7SwA7qlSRONPpfxP..fxl7GP0OEg..PcVq7lR310caJgPkIkg...ES9CH4nHD..pSxlRHT8PYH..f7GPRSQH..TmiMkPn5kxP..ntL4OfjWlq3CF9SzpjbNfZr9vOdWhYmq2e.kEu+fZiJnfH9KuVKiS8Hlp0iWnZz11s7hq8rVVYHaVq2M++Ofxge9Jn748GTaj7GPMCYTXgEVXO5QOhF27qIomE..nZwOqK+PzkMdRI8X.0I8i+T6hudbcIoGC..nZi7GPxYjibjwG7AePwWQH270qQcnrLpQMpn28t2I8X.0H48GT6UU+O2i2e.kOu+.Jed+AT979Cp8R9CHoLxQNxHB6QH.......PJlhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsxnvBKrvdzidD8oO8IomE.......fJEibjiL9fO3ChLWwMz6d26jbdfZrF0nFk2e.kCu+.Jed+AT979Cn748GP4y6Ofxm2e.ksQNxQFQXowB.......RwTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTqhJBovBKLImC.......fJEETPAE06Q8hHhV25VGSZRSJQGJ.......fJCSZRSJZSaZSDwxKB4.OvCLF8nGchNT........UFdoW5khd26dGQr7hPF3.GXL6YO639u+6Ol3DmnkIK.......nVkBJnfXBSXBwvF1vh4N24FCbfCLhHhLJb4sdjWd4ECaXCKF0nFUL0oN0HiLxHQGX.......fJpBKrvnMsoMQu6cuiANvAFYmc1QDknHD.......fzl5kzC........PUEEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.......H0RQH.......PpkhP.......fTKEg........oVJBA.......RsTDB.......jZoHD.....pwt+oC..f.PRDEDU..H0RQH.......PpkhP.......fTKEg........oVJBA.......RsxLoG....pYa1w692eqXNE1f0gG6hi507sN16cYSi5WoOWq+F+m81wG8cyKxJVbrga8tG8XSa4Z0ieFe26G+yOalQVwhilsY6RraaUaphlz0equyZsouVA..fRSQH...rZT3b+l375ygDu8hKXc6Ina+oXNexYGMMiJ24Z827hgeBGPbA+64EQDwdds+y30ufcas5Y3qeoqH56Pdohe70fKGnhLqy46FSbVC5Yiy+Et0XKZTFq0Od...nlIKMV...rZjQVYEsOq08VLZXqxtRbZpb0rMt3YqcYm0Z8iOqF1t0qGe0oU+rN6XD+wiOZ9OaOiG70FWrfkr193A..fZxbEg...vZgV0qiNNrMuwUnysvEL0HyMqyQCqwc0fT4XIKZxE8wSNuxn8fZPVcyZgy8aha8JezhNtrBIUa5qU...nzTDB...qEt4a8di928MHoGiZD59QOz3S64BhLikDY2tNmziyp0paVK5p9YwqaOd...nlMEg...vZgEsjEFQnHjHhnQsXiit0hjdJpXVem0ZSesB...klhP...nZS9QtyZtwRiHhHynEsnIqlScdwrl6xVBlxnQMIZd1qtez87hwM1OM9jw9MwbhHxbwKNpWNsM511uCwO+mU0sodWXdyMl8ByOhHhrZTShbJ2YL+X7+2wFe5m8swrW7hiEu3HZ8l7yi+ucaailkYD4m2bi4t7mmF0jVDk7oojeNJ59xedwWO1ON9hu8Gi4u3HZPCZQrwawVEcuacIZ3Z0rlej6rVXjetSMlzRJb4mYtwzl4rhbWZFwRiriVzhFsV90ZDKXZ+X7oi8ShuaxyMhHhkDQztM5mG8XG6VzprKu0Ish+diLxrQQyaxx1+VlyD+t3S9zOKF+LmWDQChV0tNEaU25drwaXiJ2O+...PooHD...plLuO6Qhl0sSb4G0y3ilyaDaeSK6ew3e3CNvnGC5ohHhng85OGy3MN0nr1YR9o2+ohyYuN53om+RKymm11mKOF0ccdwNzwJ+ew4e38OvXGOs+RDQDGz099wHufcbUNmu68ep3BO4iKdpOdQkwyPOim9Cdrnqe9kE833dfHhHty+8zieWOZUQmw6MriL10g7RQDQ7ve7zicdxObbn89biuXoEVlOeOva9fw.1itVgl0Bm6mE8tc6P71KtfRbluYr2ccEe9On3SmyyGcqoYTg9ZcwS+yi67ZNq3btkWoLlsk4RefwDm2.54p9uk484Qua2uHd6EWPzfdcewTF4dD+4S6nhK9Q9vx74Y+No6Jdf+7oDcz91N...qQJBA..fpI4WpiZ5Z3GFu3eU44zzx9Y60uyAE68PdvU6yxTF4kG8XjWdb2u4OEm7dzoJ5nVgjQCxo3YL6U89+uOy4Ea0gciqlmg2LN7drQk5VZvJcFY0v1UzGebaWqWCSzaFmPO2jXdi4mhgzyR+05ZZVKa4Vz+lsld7+3aOrny+emzZ7Y7JOgdE2xibYwG87WVroqTIXqXeJYwi4jhVTl+adwd466Tis7qmc7su9eHZS4cQl....QDQTujd....n1jFlU0+RRz7xcUusO8IOqUoDje208.wa+IeY7ke5+HtuKr+k59FbO2nXDe4BpJGyRYQ+3nVkRPNfy3Vh23C+z3C+W+s3R6+Nrd87+aNiqKFwnGc7bC+1iCnQkNVyoOjGMlYYcAirRxnQsMN663th691N6Rc6+9a8AhG7Au63tevyO5bSVysLr3I8RwAzqAUpaq485ziQ7pua7ke4GEi5wuwX2aPwy3bGyUDcuu2ZEZFi3fha5A9KwnG8yG+oy5PK08Luwbgwi7ZSth7j...PcZthP...Xsve9FuxXxaaiiEUVqzSkPdQGiS4bGPzoFU4+mqegy8ChK3DtqRbK8Kdqwc+w+WWJtjlsra6dz69tOw9raGWQKiTmzE7Dw9+7mXYtDaU4ZdwieYmXotka8k9ewYb.a1xOpawuXm+UQeOfKM1g9cUqkO28Kd0u9ti8dSWwkLw9G88n5Wb6+lsLNiQLikcSi8Biw7MmQbna1ZXSsOy1GGxfN4Hx+KhW6Busku7h0u3DO0iO1hrpn+6VdwSeUCrTKUWCYniItkA2yn9K+3sbK293.NjCK9iGcOhK4YlYDQDKXLmc7mG8uItjCbiJimykYf25qD25YrOE8uW6+92mneG48GcXmGXQmyc9TuYLj84HJ28FE...PQH...rV48G90Gu+vqHmYOieyYLfnSUAW.IezyNzXzKr380hm3yGVoJAYEZ+NcrwqNloGc3+aYWwCyZjCLdiu+XiecWV4EfpJWKcRuabSO5TK53SZn+mRTBRw9EG4UFu53+fXe98itB+beu+6gVhRPVgVGm1cOh3oeg8pn86iYLmEFQrFJBYExeIk3f4EKdgQDUv8di4+UiLNlgNohNd2O+WLt8A2yU47xH6tFW7S8tw2zpsId3bW1Bt0k9quy3DVz0Wl6yGspO+4RUBxJz9c5DiQe0+03.t3+VDQDS9alQrnBingVdr...nbYowB..fZUlW71C+YJ5nNOvmLN7st7+E929co2wg235Wzwi7u8EUoSWDQLtO7sKwUHQ+hgbTcubO2873O+RsrQs5rA85liCaGZVYde0Kmlur8XipYS+G91RbT2hKdv6a4exYt4wYeOCt3iK7Kiotvxd8w5RO6ea4dk6rgsoCk535qDD...VsbEg...vZgeyYbKQu2tluFNqEE4sn1EcnJXYwJh4EyYlEeEL7CC6eFuU+2vXQyewkw41fnwMX7wmmWwW8HyKukTFmWkq4LoupnOtU8Y2iMook+qC0q06PbzGTKi2dDSeM97tzng03BvLo+2GWzG2vdM3X2WCWsMaSO6Sr00+Ou7hhdg3S+5bisuLJ2oQMV6F...TYolVNB...pQ6fFvfh928J3RtTUfBm6ji+0muvRbK2QrW6wcTge7UGEgLqoMmh93BpD28J1wctyQMs9Axpg4TzGmyJuhcUFpeK5PrMYWu3Kl+RiHhXwEleYbVcK13V2jJoID...rzXA..vZgEsjEtlOopPYjUFQN0acuMfW3BGSjaYuZLUIYdw27QePQGkcSZPk1e8UctysIp+Z9zpVkUCKduYYFi7si4rFessrJ9Xk8yiNzxJ3lTB...rF4JBA..fZQJbIEFyqfh+ssePW9SEWz924XwKtrVZrJCMn8UwWUE4D63upOQLhGHhHhEO24F4GQkx0ERAKpR3IoR1RVTwEi0h9r2QyViu1VQhfMu0mQB...VIJBA..fpIYk0pe+inX4GSapSrLumLZRqhseqyNF8GtfHhHZZa1lXm24soRZBqbrjEU7uH+YLt4DyuvX0T9x7he56WP0xbUUnjestnbyMVzp8q0Hl+O74wSu7kEK...n5gkFK...plz3Nu8wg23Ur3Nkajadk2YlW7Uu0+pbtuVDsoUEWnxvG5HiotZWNllbbGmxgF6yAeLwYcV+g3wdswsVO2qs571sKEevXuv3u8oyobO2Y9uel3Z9vZREgjSjwZwpRUG1lsunOdAi4riW9KW8es7QuxHJwQGTziMokqkyG...r1RQH...TMovkrjRrrV8lwHFyWWlm2r9OOUblu7rKmmkbhc+nOzhObrWXbaO+2UteN+lW7VhS+te130d9gG25sdcwGMip9MK81uKGbL3lWbaB+ty7thITVeZyebwe7T98U4yyZmmH99oTweMpScaWicuAEGq5btlmHle4btEL62It1y6uVzwMrW6er4srF1t+N...oPJBA..fpIYznlEctgEuceeKGwkG+iuuza95S9yd1nO6xfhH5V4977KNjgDGPiJ9Gk+ZNjeVbCO+mDq7BtzO89OZz2C9FKwsbhwIePa15wWAUPY103TF5IWzgyaLWXzkc3zi25alYQ21T9pWNN9Vs4wMWi5pAYYd02XYuVVQV.qpWq6Ybgm2NUzwSb3CL1uy7QiUtKk4+iiINgN2yXzKrfhtsq9h5Sz3JmQF...VMTDB...UWxrqQeO2dTha3Ih8nqaPbXC5Jha6Ftp3n16bh12sCMd6EWPDwXK2mlLZx1E27icNk51N+Cd6h1rmmTbeO9eMd5G+ghyu+8H13ct+wWrzhW2rNyG87hsnQUOWABa6QdYwscXspniyer2QzyMqUQNa6dFcu6MHZ2V9qhGN27qVlk0jUdCn+1NgcJxLiLhLyXfwXyc0ttiEQDw9ed2QoJl5cts9GsqA8J9i29viQNx+ZbKWzwE4z48rTe814A9jwP1mNU49EB...TlrYoC..vZPI+kju95Wc52Ubb2vNVpeo3Oy8c4wyTpypawYclaZbK25yVzsrzBiHJQGFa4gdCwG8+yd24wWWk04Ov+j1lljtWnTZRA5B6KkMq3vhRAWFEr3tNJJNnUAWv0YDGzwkw8wQQEUToH5nNhNhKrN9CTJHfJhrUZQDZSagtPYoP5VZRZu+9CnoIsIsosI4lbx62udwKx8dOKO2Stm9ju2OmmmyuXL4XeserVetmbNyNuy4L6Nb+dZezeY9ru4CpcOWSo66801Zb488K9aolO7om24W81a8YW6bmSt21rTG6LFVty4r6OpP15vL1YTwHOjbl+y6cttKd4a0qbo4tp+qjocTidGr9SO+5Eby4cdHynM+d8lxG+8eSc3xOwy7aka+68FRUa0y211+1Ohn1O4as0e1....ZOiHD...1tFRFwf1x2xbUUt6csDUwHO5bYOxCjK5C8p6vWenSaV4Fdv+T9xevyp0maOl3Hyf6fun6i40bAYsK61ym6bdQc596XOiyOW+87n4Z9BupsZZXZHYOG+Ta8Qin5ch6P3aVU0z5ONns9a0OIIiKuiuxeNOve3ml26q7Ta2q7bNi2Q9Q2veO+0q+txacTamiosY6Nhp67EqhZFV6l1w1leOscaqUm2zW8Vy+049h2ls6FZtktv5mLzZOw7Cd5GK+1u6GKGVG8KqjrGyXV4xug4kE+ie2Y7ayhz1OmMhs6Ur1v2y8q0edOmXUc3mM...fsnhRkJ0SdYfA...chVZ7oxhVzCmFVWyo4laNCeb6SNz8ehYv63Ucar9Us7rn5WdZn4jJqLohJGVlv9LoT6XqYGux8.V+pWcpnlQlpay2neoVZIaZHCo8u+Z7dxosGGaq26L9d+kGOuioumobo4UuprpUu9rwJqL0T8HyXF41I8kNSKqIK5gpOO5SutTYkUlJqbXYb6yDSsicjc+MX...XGRPH...P2q1DtwPm1rxeXNeubb6QGOrEV1b9hYhmx+1y9nSN+4m3F6zkE...XWgoFK...naUol2x0ZUSyc146+qumNd4Z7umOyq5SrkmnhYjIOVgf....cuDDB...zsphQN4Lim+VlFn9tu8iIu9+sKN+k+1hxpV0pxJW1BybthuYdAi9Py24oZt0k6B9kmYGbuy....X2ioFK...na2ZefedFwg7F5xK+jl0kmG3RdCoCumqC...ravHBA...51M7C90mGatWUN6iYGeyF+e4qcMYdBAA...5gXDg....8fZIOxe6NybtoaJy6usrzXRRpN6YsSJG8+vIji+3lV1ypMeXA...8bDDB.......TXYpwB.......JrDDB.......TXMjM+CM1XiY1yd14ZtlqIqbkqLUTg4oW.......n+gRkJkwO9wmS+zO8LqYMqTc0Umjm8dDx5V25xrl0rxXFyXxK6k8xRs0VqfPfm0UcUWUl4LmY4tY.84L+4Wc9VWxJxTl7gjFZXH4IW8fyJe5gjE0vyjw9jGUKYbirkrGiZiYLitkz3FFTZpoJx+wGeok4VNz6P+GPmy4GPmy4GPGS8Gv1m9Ofmwl1zlxxW9xy0ccWWZngFxkdoWZpt5pelQDxrm8ryXFyXxa+s+1K2sS.nehe6ueLog0s1bTGw5xnFYKYLiYSYTipkL1wrwTc0k1lke8quh7ReGGXV8pGTF4H2TYnEC...8Wo9C.nqXPCZPYhSbhYVyZV4RtjKIyd1yNu22668YtGgbsW60lW1K6kUtai.P+HOvBqJm3w9WyK9E1PddG25xAePMlZmPKcXQHII0TSo7RNp0ja6OOhd4VJ...zem5O.fcVm1ocZ4ZtlqIIO6MK8G+we7Tas0VVaT.P+GabiI24xqNieudhcp06EbBMj4bqitGpUA...EQp+..1UTas0lUtxUljmMHjj3dBB.zks3kTUN78poTYksrSsdG2zWa9yOTM4odpA2C0x...fhlEujgp9C.Xm1fFzfZM2iAsCVV.fsQ80OzbvSZC6zqWUUUJujid04VtMCOc...nqo95qR8G.vtEAg..6zVvhpI6+TZbWZcmwyugbi25n5laQ...PQk5O.fcWBBA.1o8P0OzL0or9co0c5G65x88H0jG+IFR2bqB...JhT+A.r6RPH.vNs6YICKScxMsKstCYHkx+3zaH2xsNxt4VE...TDo9C.X2kfP.fcJq3QGRFVkaJicrabWda7BNwmN+NCOc...XGP8G.P2AAg..6Tpu9pxzlzt17y6lcLG05yBV4PyJdTCOc...nyo9C.n6ffP.fcJKbQUuKeiJbyF7fSNsmWC4O3pxB...1NT+A.zcPPH.vNkGp9pyT2MKDII44eBOc982hBQ...fN2CUe0YJSV8G.vtGAg..6Tl2hqIScJaX2d6bjSqwrzmZv4QVZkcCsJ...nHZdKtlr+SU8G.vtGAg..cYqYMUjks5Am5ps4c6sUEUjbZGeC4lcUYA...cft85ONA0e.v.UBBA.5xVvBqJO28a8ohJ5d1dm7I0P9c21H6d1X...PgR2d8Gmn5O.XfJAg..cY0unZxA1ML+7tYG5g1TZX8CN0ung1ssMA..fhgdh5OVcip+.fAhDDB.zk8P0WUlR2vMJ8snT9GOgFxe3VM7zA..f1qmn9iWxwq9C.FHRPH.PW1eeQ0jCXJM0stMO4Srg7aUHB...rUT+A.zcQPH.PWRKsjbWqnpLoIsgt0s6AdfOy16Aevp6V2t...P+WszRxcuhgp9C.nagfP.ftjEsnpxQMgMjgNzRc6a6W5I9z4ltU2zBA..fmwhWbU4HmPSp+..5VHHD.nKYgKppbv6W247y6VbRm3pyu81FURpnGY6C...8urf5U+A.z8QPH.PWxBqupL0I2yTHxTlbSYT0rwL+4WUOx1G...5eQ8G.P2IAg..cIO3hpNGv92yTHRRxK5DVctYCOc...Hp+..5dIHD.nK4tVRMYxcy2nBaqm+I0Pt1+3nRot+o.X...neF0e..cmDDB.rCs7kOjrm0rwL5Quodr8w9LwlSciokbuys5dr8A...z2m5O.ftaBBA.1gVX8UmCaR8bCK8M6EdRqN+gacz836G...nuK0e..c2DDB.rCsv5qJGPOzMpv154ehMjq81GU13F6w2U...PeTp+..5tIHD.XG5gVT0Y+mZO27y6lMg8tkr+iuob22yv5w2W...PeSOzhpNScJp+..59HHD.XGZ9Kt5LkdgqHqjjWzI0PtoacT8J6K...num4u3pyTmh5O.ftOBBA.1tZngAkUttgjZqs2Y7hehmvpyu8NFUZokJ5U1e...PeGp+..5IHHD.X6Zg0WUl9jVWRJ0qr+F2d1Rl19t97W9qFd5...LPi5O.fdBBBA.1tVvBqNGXuzzh0lcJmXC4ltECOc...FnQ8G.POAAg..aWKrW5FUXachG+Zx+u6djYCavvSG..fART+A.zSPPH.v10Crjpy92KWHxXFyFyya+Wat86X38p6W...n7R8G.POAAg..cplathbOqnpLoI0Tu99dFmzpyMcqFd5...LPg5O.fdJBBA.5T0WeU4XlvFxPFRuyMpv15D+GVSt96cDY8q2vSG..fABVzhT+A.zyPPH.PmZAKZn4fl75KK66QLhMkS9PVa9S29HJK6e...n20CUu5O.fdFBBA.5T0We04.5kmedaqm6wt1Lu4Orx19G...58n9C.nmhfP.fN0CtnpyTmR44JxJIYepaCYIKqxx19G...58n9C.nmhfP.fNQE4Ne3ZxTlbu+MpvMq1ZaNKXEUW11+...PuE0e..8bDDB.zgV5xFR16QrwLxQtoxVaXuGeKYIqYHYCavMrP...JxT+A.zSRPH.PGZAKrpb3Sp7MrzSRpnhjiZBMlGYoCsr1N...fdVp+..5IIHD.nCU+hpNGvTZrb2LxjqsorTySu...Tno9C.nmjfP.fNzBpu5L09.EhLwIzTV1xbEYA..PQ1Bpu5L0Iq9C.nmgfP.fNzbWb0YJSdCk6lQlXcMkGY4UUtaF...POn4t3pyTlh5O.fdFBBA.1FO0SM3rllpHSXuaob2TxDqcCYwthr...nvR8G.POMAg..aiGZgCMGSY9FU3lMwI1RdnGUgH...TTo9C.nmlfP.fsQ8Kplb.SooxcyHIIiYLaLqqkAkm9o0kE...EQp+..5o4eUG.1FKn9py9O49FWQVIISqtFyxVVkk6lA...zCP8G.POMAg..aiGXwU0m3FU3lMoZaJKa4Fd5...TDo9C.nmlfP.f1YCanhLuGanY+129FCM8jjIVWSYoKupxcy....5lo9C.n2ffP.f1Yg0WUN1ZaLCYHk6VxVLwZ2PVxRcEYA..PQS8KR8G.POOAg..sS8KppbvSsuyvROIotZaNKwUjE...ENKrd0e..87DDB.zNKbQUmoN4FK2Mi1ot5ZJy8QcEYA..PQi5O.fdCBBA.ZmGn9py9Ok9VEhL7gWJ6U0sjU9X8gFu7...vtM0e..8FDDB.zpRkRtiGt5LkI22ZnomjbP00TV9xqrb2L...ftIp+..5sHHD.nUO7iTYlxnaNCe3kJ2Mksw9VWS4QbCKD..fBC0e..8VDDB.zp5qupbX8wFV5a19TWyYoqvMrP...JJT+A.zaohRkJUZ5Se54k+xe4k61B.Tl8+aNmTppxlyIeh+4xcSYa7.O3TyeZtGUdqu5eU4to....cCT+A.zS6pu5qN2wcbGo065Syblyrb1df9rtpq5pb9ACX7GuyIlWwKaU44cbiuKs78lmebTKYn4dWv937Q52P+GPmy4GPmy4GLPxyT+wSo9Cnaf9OfN1Ue0WcRL0XA.swbW7vxTmZSk6lQGp1ZaNy+IFZ1zlJ2sD...n6vyT+QeuaT5Ip+.fhFAg..II4IexAmV1TxdMtVJ2MkNTkUVJG3XaNKa4UVtaJ...vtI0e..8lDDB.jjjErvpxQM40WtaFaW6esaHKcoJDA..f96T+A.zaRPH.PRRV3hpI6+j5aNrz2r8o1Mjks7pJ2MC...X2j5O.fdSBBA.RRxCUeU4.lZik6lw10DmXyYoKenk6lA...raR8G.PuIAg..II4AVT0YpStu8UjUc0tg7vJDA..f98T+A.zaRPH.PZrwJxe6IqL6691T4torcMw5ZNKTgH...zul5O.fdaBBA.xBWXU4312Fyf5i2qvdO9VxhVckYCanhxcSA...1EUe8CU8G.Pup93c4..8FV3hqNG3j6aO+7ljTQEIG43aLKcYtpr...n+pErnZT+A.zqRPH.Pt++VM4fNf0WtaFcISp1lxRWVkk6lA...rKR8G.PuMAg..41u+gkoc38OJDYeqq4rzkUU4tY....6hT+A.zaSPH.L.2xWwPxFZIYelXyk6lRWRc0sg7Hthr...neI0e..kCBBAfA3tu4US9GNr9GWMVIISr1lxRVtqHK...5OR8G.P4ffP.X.t4N+gmi7vVa4tYzkMw5ZNO3JbyJD..f9iT+A.TNHHD.Ff6Nle+m4m2jjwN1Ml00xfxZVitv...n+F0e..kC9WwAX.rG6wGRdpFGblzj5eL+7tYG9DZLO7i3pxB..f9ST+A.TtHHD.F.69tupyweHqMIkJ2MkcJ6WsMkkub2vBA..n+D0e..kKBBAfAvl28O7bjG15J2MicZ66DaJKcYthr...n+D0e..kKBBAfAvti4OrbD8iled2rIV6FxRVVUk6lA...rSP8G.P4hfP.X.pUspAmk9zCIScJanb2T1oMw5ZIKY4JDA..f9KT+A.TNIHD.FfZtyqlbBG75REUTtaI67pqtMj6cEFZ5...zeg5O.fxIAg.v.Tya9Cqe47yaRxvGdoL9Z1Xd7mXHk6lB...zEn9C.nbRPH.L.0e896eN+7tYGvD1PV5RUHB...8Gn9C.nbRPH.L.TCMLn7fOVU4.OfFK2MkcY6acMmkYd5E..f97T+A.TtIHD.F.Zdyul77On0lA0OtWfIVaS4gWp4oW...5qS8G.P4V+3tf.fcUyc9COS6v5+NrzSRlXsaHKc4JDA..f95T+A.TtIHD.F.5NuuZxzNr0VtaF6VlXcMmEsBCMc...5qS8G.P4lfP.X.l0t1Jx88nUmC5f5+N+7ljTWcMm48XCMaZSk6VB...zYT+A.zWffP.X.l4M+ZxIr+qKCYHk6VxtmJqrTNfw1bV9Jprb2T...fNg5O.f9BDDB.CvbeyeX4nO70UtaFcKl5DZLKaYJDA..f9pT+A.zWffP.X.l6Z9COGQ+74m2Ma+pq4rrkad5E..f9pT+A.zWffP.X.jFarhbGOb04PN3MTtaJcKps1lxi3JxB..f9jT+A.zWgfP.X.j4c+UmiexqKCcnkJ2MktE6ScMkGd4Csb2L...fNf5O.f9JDDB.CfL+4OrbLEj4m2jj5psorfkYnoC..PeQp+..5qPPH.L.xcMugkin.UHxDlPKo9FpLM0TEk6lB...rUT+A.zWgfP.X.hlZph7GWzvxgdHMVtaJcapnhjib7aHOxRMO8B..PeIp+..5KQPH.L.w8+2pJSeeaLUWcwX94cylTsMkkYd5E..f9TT+A.zWhfP.X.h4c+COGaAZXouY6acaHaPbRl6...H.jDQAQEcYJDA..f9RT+A.zWhfP.X.h6ddCKG9gt1xcynaWc00TVpqHK...5SQ8G.PeIBBAfA.ZokjaaACKG9gs9xcSoa2Dqso7vthr...nOC0e..80HHD.F.3u+2qNSq1FyvGdwZ94MIYh00bdfUTU4tY....OK0e..80HHD.F.Xtye34XJfWMVII6wdrwzPSCJqYM5RC..f9BT+A.zWi+Ua.F.3dlW0YZGVwa94cylVsMlGYoFd5...zWf5O.f9ZDDB.EbaZSI25CNhB47y6lMoZaNKa4UVtaF...Lfm5O.f9hDDB.EbO3CUcNv8ZCYTiZSk6lROl8stMjk5JxB..fxN0e..8EIHD.J3tu4Or7bNz0UtaF8npq1MjGwMrP...J6T+A.zWjfP.nf6dmWM4HN7hcgHSrtVxhWpglN...kap+..5KRPH.TfUpTxs8.CKGQAd94MIot51PtuGs5xcy...fAzT+A.zWkfP.n.agKrpLwQ2RF6X2X4toziZDinTF8P2Td7mXvk6lB...CXo9C.nuJAg.PA18M+ZxzOrh8vReyNnIzXV1xL7zA..nbQ8G.PeUBBAfBr6c9CKGwgs1xcynWw9MwlyxVtaXg...Ttn9C.nuJAg.PgUE41t+gmC+varb2P5ULwZaJO7RGZ4tY...v.Tp+..56RPH.TPsnEWYFaMaL603Zob2T5UrO00TV5xUHB...kCp+..5KSPH.TPceyql7bO7AFyOuII0UWSYwqPgH...TNn9C.nuLAg.PA08N+gmi3PGXL+7ljTWsMm4txpxl1T4tk...v.Op+..5KSPH.TP8mleM4HN70WtaF8ZF5PKkoN5lyJVwPJ2ME...FvQ8G.PeYBBAfBnGYoUlpFRRsSXfw7y6ls+00TVl4oW...5Uo9C.nutVis9m7S2yxY6.5y5Nt6iOMrFmeP+K0+vUki6PG3L+7tY66D1Ptp+uwlG3uWS4to.5+.1Nb9Az4b9A8Go9C0eP4m9OXfhi3vWaNpirwc50qhRkJUZ5Se5YXi4y0Czr.fxkCXxKJ629r7xcynW0he3ZyBV7jK2MC...FvQ8G.PugoruKISYRKsKu7W8Ue04Nti6XKiHjK7KMtdjFFze2UcUWUl4LmY4tY.6B54+20c9Az4b9Az4b9Az4b9A8eo9Cnbx4GLvw3Rxw1kW5q9pu5j3dDB.......TfIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBqJJUpTooO8omW9K+kWtaK........cKt5q9pycbG2QFxlehYNyYVNaOPeVW0UcUN+.5DN+.5bN+.5bN+.5bN+.5bN+.5bN+.5XW8Ue0IwTiE.......TfIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVsFDRoRkJmsC.......ftEaZSap0bOFTRx3F23xxW9xKqMJ.......ftCKe4KOie7iOIOaPHm1ocZ45ttqqr1n........5NbsW60lS+zO8j7rAgLqYMq7TO0SkK8RuzrrksLSSV.......P+JaZSaJKcoKMyd1yNqd0qNyZVyJIIUT5YS8nwFaLyd1yNWy0bMYkqbkohJpnr1fA.......5pJUpTF+3GeN8S+zyrl0rR0UWcRZSPH........EMCpb2.........5oHHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrDDB.......TXIHD.......nvRPH.......Pg0PJ2M....1r5uqaLy8g2PF5P67koTSMkJF5PSUCerYu1qwk8duqK60XqoSW9mXg2dt066ISkooL5C7eHmvgN9dfVN....8UIHD..f9HVS94myYjO5eYM6zq4wdFme9RelOTdQG41FxwCdse57JNuqMIImxW3VyuuGHHjmdgyIev24uJm+U80xAWSEc6aen+.mG...zWkoFK..f9LF89U8tz5cmW4WJu3iZuyE7+Nus40prpIz5OOgpqbWts0wdpbEet+4Ll8+Txk86pOqq4t4MOzufyC...5ayHBA..nOqW0a9cj8ZXa6UV95V2JyCO2qM2z8zT6d9uvq+HxIT+ZyKexCq0mq4MrhV+4UzX262PaoU+P4q8e7iZ8w9iqYfHmG...zWm+FU..f9jF6YL67S+Qu8T01YYV+ic24e+M8BxW4FVcqO2Y89+oY4+lsrdG0Ydw4dO40kgjlS0SXRcqswJprxTakUjzzNdYghJmG...zWmoFK..f9jVWCaHanz1eYpYuN57k+k+97xpYK+Ysq5J+cYQqeKqXMic+xzl1gjCcZSKSYuFUOUyE...f9nLhP...5yZvcg62xULxomO5m40jq6e4+8Yel0jlZNI07LOpTiqNO05aIIIUVyHyHpti9SfaIqbwKHOvB96YEqX0o4jT0H1iruS4.xAcfGPFy1bqKokzvpVeZogUlk27lCcog7XO4pRCarhrwTcF6XqoCauq6wVRt24dOYgq3YFEKMmjIruGQl9ycZYOqtyeC212G0LxwlpGRRZYM4Am6cm4ufkj01TxPG5Xy9cvGZNpoM4s6HoY6qkzvpVc1XRpXH0jwLxm4M+JW78k+5872xpVSSIYno18+vyy84bnYDs6vYi4Auq+Xt86YwohgNzzTSUlIejGSN9i8.5Rsmc9iMaosljLpwN1L3t36ss2xu9UsjbO208jErjm3YeejT69ui9cT463VRio94du4dl6CkmNICoolxfFwdmocLOmbD6+36z0Z2+yT65mG...PupR...zmvpKcwulwUJIkRRoplw2pzZ5hq4e7hd8stdIozuX9qs0W6u7M2xqMyuvsuMq6xm6UU5rOlpa25u0+2Y+o+YkdhMsk0YSMbWkNogNnsy5LyR26Suo1se1vicek9JevW71c+7I99yoSeO+GunSq0k6Gd2Odo+1+2WozgM3J5js0IW56eSKrKdzaqr96t02ai8LlcoG6IuuR+6upwtc1OO7y9961K8tO1Z5vkaHS67J8Gej00o6xc0iMq4u8yZ2x7eMmUrceq03BZ+x+Cu6mp8KPyKqz+ym8stcaGexe7sUpw9HG2JUpTok7mu7RutgO3Ns8t2mwmpzczIaic2OSsqbd....kClZr...52qxpFQadzaLGzD2xUgdECcKu1H1pQ1wptqKM0NsYlK6tZb6t8urO4aH66odgYk6fopqsngzRadzRtkYmp1qiHe3K752tq0+waaFo1S4SkGpgscGUYUSn0e9sdziKGxK8Cm4uwNqAcS4scxSMWzM8Hc0Fb6TakOyndXUW4rxdsGGQ9L+pUsc1Ou47y+cWQdyS93y29NWeGtTsL2KJG+971yCr9ss8t6brY3G7KHWvyYXs93K5GOmVGsGcj+7u5GzlGcdYFG1na8QMs7aMu9wru4M8w+ga21wm9MeBYedEWXVZya6q0adbKok76+lusreOu+o7+t1N+c8idkepL88YX46dya6mE54+LU6OO...fxEAg...z+VK+8L6OxOpMOwZ5hqW84BN02U6dp2yW76ma4udu49u+6MWy+yWNmzP2xet75lyGJe8eyBSRRE0r24CcQe67c95en1s9+qesuetrK66juykc9YRi7Y9RwaZ4WadYy3c1tkaLy38kq3F9i49u+6ba1OqdNe5bTuhuVdxtXnKu12+WLWw0cc4W+S9Fs6dkRRx6679Qc4syNxdLiYkK4mes4F9M+f7FN51NIIcS4M7hdss9kw+O9N9T4JttqK+7K6y1t2WI+z7cupGrcayc+iMSHug22ar0Wewy9mj6sCBQJIIsTe9oe1an0G9Fuv2R1uJe1Gz37x67PlQ6BTXOlwrx+80dS49u+6Oy4J+d40M7sLIZ83W4GJm369mkMzw6o1om33VRx8d4ev7BOuKqcO264K98ysbO2et+68OjK4BNq18Zm6Iuu4Jt+00EZwc8OSsybd....kUk6gjB...Oi1O0XM1yX1c7TPTa7zK8tJ8Yd06Q6lNdNf22urTKsYYtiu2aq0W6MdgaYpwpwEe0saZ.psSmVa1lV+CT5bGSkstL0dl+2suM077ZyzRzarzeqosdZ.Z8k9wuqZaW667t34zt12yreV31793+3ZVR6Vl199Xy6ua3Ae5sZK8Xk95ul8rcK2U72212WaWq+t2loZo2wEeqsuM27RJcAOmgsMSERW7Mz9oNoMtp+R61V0dl+2sY5sp64XyFer4zteOdA+pEzgusV4c9say1XZk9+peCs9Za8Tq1a5Bu9N3ydOVou665414SsV8ZG2JUZSM7WJ8xposSIUuwR2b8a6ze0x9y+2s6XyXOiY2tsS21mo1gmG...P4kQDB..PeRq5J+54adY+f7C9Aa4+tru6l++e4LqW0wlQOwiI+6+xmrcq227Cd56faX1Oi08DKoMSCPSKSXu21apyUT8Ak20EeNII4XNkSIuzCZjsep9ok1N+HslzzVMCGs1G3Jya9hWdqO9jN+qNeiy8j2l1WEUOk7w+Y+w7VG0VtCZ+Id4eyNb5WZy9d+kKNuvCXTa0yNt7d+NWQ6FQAOwS2wS6RcUCaFe07ecNmP6ayCYeyY+o9WZ2xMyuvsly8ENk18bCZLSOm+E9Za8wO4RWc17g7tqiMCZbOu7u7V1xMD7K9xtwr1s4cQKYN+jePqOppYbt43mzPSRRoUe24q9QuhVesZOy+678+.unN3FC93x67aes4SO8g25y7u+M+8c5TwUO0wsjj67Wcw45V+lZ8w+z4M677m71942ZOt2Rtg47UZ8wq5JmUtwE0Tmzh2M9L0N37....J2DDB..PeTyM+KusyNm8Yuk+6scta9++Qxk9quqsYM92942W9Gm7P6Ra8gOgIkCavadZ6Yt40b1+a4lu+klF2papAG4+zEklatTtye+uOe+OwqLCea1RctGewKnMOZZ4ietu3NegGxAkOz28b2xiKc+Ykc38Fhm4KY+07bFcG9ZCZDio06UEcG9Re9yJipC1bSXxGXadzzxG7s7b6jsP6Ohs4C4ceGapN+iu0OPquzptxud9Ka0MykRq99xk8suiVe7G98+Ra88zSu36rMSIVSKeyO4anCBAYyFWdkm2+bqOZIy9+MOTm76ndpiaIqI2xO4W15yOoYc440cXCKclZ+GN81Msdck+eyuCWtdyOSA..PusgriWD...5aqpo8lxO568kxq6eXe5xqyP2qCMO2gO3L+FdljOdzq7KkS9J+RIYZ4s9Ads4k9RlQNgoezY+1qQkgrK9WMu7+9cuk13LN2bR6fPZN7S9LxgM3u0yNRUtpbuOXC4X5fub5Mlp509C4qpxN94aIscjEbDYbibmqE0cdrotS5Um25n92yOrgVRxbyke0yOy3sc3sttK4O9qZyHnXl4e5T2xHvngGaksYuL2bK+4eWF2CWUVWSa6HmnpgO7rj+9czlmYMoolSx1NXL5wNtkrl7zO4VFAFKd12Zt4yZuxFVaGMROFZF9PejLuF2xnGYMM1wCyndyOSA..PuM+st...8Y8g+zewL5J5nuf2pxXF+3yjmzTyAcnGRNfIM9tzzgU6Ljoju7b994Gdrm0V8ByM+vu1byO7q8LOZOmwYlO0rN67Jl4ol8sitD+2NprpQz5OOhsdFGpCL3wVWN7pGTl+yNBEZpTKc3x8bedSJCuW5BzupJ6JkLzEuA02FcqGaFxAk274+hxO7i8+kjju6W6Jym+rO7rGU7Lssq668sacQO92+4jCqM+dbYyq8irnK7sbZ4B2Ider9N9WQ8XG2Js5Uj+z7Z6bO0EkS8EbQc40uyBBo27yT...zaSPH...8IM1yX14y8Id6amoonce60w7VxSsf8MW3+4mKe5u6MzgKySLmeRNu47Sx4kokew8bi40bj6YWd6WYUaYnB7DW4sjmtz6dG7kM2Ieq5akIsqD7ytjYliYJcgTJ1Ezcer43+mN6jmMHjL2KHy4gd+4UefCKa5w+S4h90OQqK247VNo1crqsAxry6pxs7.OYNtieq+LQO2wsJprhLhAsqmXwUcAyIMb9mv1Lsc068YJ...58IHD..f9jVWCaHanTRU8vWk5idpyHepuyLxG6Ku7bO2wskq4p9M4m+M9ws4Fo9lM27ZOpyO+s0cI4fqoq0nZdCa4J2ermwKLidGtZcs+77Msgtzh0mV28wlgO0SM+Gu3QmOw0+zII4GbE2cd0ezSH220d4a42kU7QxK9Xa+TMVyansiJiSN+ra5Kl8qhly149TeqJ0bx9dv8LAdz46yRYMaZKe1blepeV9XuzIkl5foxqNzPqsCCbpH7YJ...5LBBA..nOqA2KNU8T4HqMS+TdMY5mxqIexu52OO4xVPtoq9GkO969y2lPQtzbyy6KkCd5csQERa+R12PCMjMTJa2Q8vZW77ZyMt6hst+iMiKuty8sjOw0+MSRxUcA++xpN+CK+5K5xacINyu0aL0sU6iZOniNI+7m8Q0ki53ed4f6CeiAuhQtm4XNrpy08WWWRRF03O777ddG9NXs...XfsAUta....TN7.23+c929fmal4wTUdieo4rUu5PxdT2AmW067yl4thaLurZ1xe17MdKKrS1hiHUrU2frq6vOlV+40MmOT9+c+qa61ltyq+JZyilYl9T2ic36i9q5IN1bPm5aLmzPe1eWUZN4puxedt96cyi7jok29YrsAFL551617neZtpa5Q2tsikbKyNm5odp4rNmOP9Xeluedj0u0ibndZiMieO2xMV9exEekYka2lvJxE8td04E8Jey4C9A+2xO92UeOb6aaOO...fxMAg...LfzB+8Wb9hesuat56tob4ezeYVRm7kIOnwM0bHCaKCj5IOwQ2wKX9oYQOZ6mPk1moc7a4KlOIe3O+OMqsSV6M8T2V9BejeQqOtpY7RyAsG8cGYB6t5IN1Lnwbb4be6aNXiaJm0q7bxszzlRRxXOi2eNtItseC8idRGadcCeK2cL9WeIWXVRmNuXUe9By7cma7Fuw7i9de874+D2c1zP5s+czHxIclu5s7v4dA4q+a5rv4Rdnq9By6667qxu627SxW6q8Eyc9DckI8qcGa64A...TtIHD..fAjdNuzWeadzEkOxm4Wmmdateb2X9seyOYtvmXK2+ENxCee5zs4Mbi2S1XR17D3zfF2ImK3ibbs95K6mLq7R9.+nr0eOwqcIyIusIcx45V+lZ849reryHCem5cT+K8LGaFRdI+ye7N7U9fmyKoCWmJF4Qmy+Besa4IJ8eli3k7ox8+jaUCokkmu269MjuySskm+btzyI6WYXzObrupyqciRoO+qZ+y+4u4dxVOwg8v29OJuhW4WtMOyaOmyLOvd712Ved....kaBBA..X.owehuw7om9V9pw+YexWUFSkyH+6e8KKW4Udk4G+c+xYlGynyK87trVWlplw2Jm1gNrVe7Veiq9q+1NtLjJpHCohYk41vy77uzOxE0tuz5a6qeVYBCcF4y8M9I4JuxeQtvO1aMiXRmR9gMrkTXlzrt7bdunNOvkhhdhiM60w8xx4NlsNch2Xd8mRmuNOmy9Kzt0Y0y4SmCaOGZdO+GembEW4uHW5W9ikCu5Ily4h+KsYsNu7QdKkm6MGULxiNe0e7GtcO24+JO5L9S4cjK4+4Wj+2+mePN+yZ5Y+ddmUat+1j7A9Qejbv0z8OBV5JmG...P4jaV5...8YzTZ+WZ5FKkjdrYdnIjO5UdM45m7o15zmTxMkO6G3l5jk+sm+3U7txnZS6ohQdH4L+m26bcW7x2pk8RycU+WIS6nFcpXjSO+5Eby4cdHynMeg92T93u+Nd+Lwy7aka+68FRU6huq15uT5cEsc82lAISmnyWt1OgW01em1ybrYJ4s9YdU46bd+7VelS77O6se..CYJ4auj6Ji6UeB4ydCMz5S+s+juq7s6vU3jyuY9elL0sJukdqiaIIGxq9+L24uXL4XeserVetmbNyNuy4L6NbqcZezeY9ru4CpK1pZuczmo5JmG...P4jQDB..PeDCIiZ7a4l.8dLwQlA2cDBRU0z5ONns5aPen0dx4le75yO8+7CkCqS2YSKe3u3OKO75tjbLay8khpya5qdq4+5bewayZsgl2xWw8Pq8DyO3oer7a+terNc+rGyXV4xug4kE+ie2Y7czhzl19HptSZpIohZFVlTUa4ddQUUtydsOMjLhAs4FvH5zqbpJqbDs4QiOCqSlhnF9dtes9y64DqZa9cZ2xwlsxwbFmU61Vm2Ycbamk9YTwHO77Yt9GM25u3+pc26RZuok+8K9ZxJZZN4LNzs9K2u283VRxw7Ztfr1kc64ycNunNYukbrmw4mq+ddzbMegW01N0f0s8Ypt14A...TtTQoRkLVkA..nk0jkt3GIq3we5TQkUlJprxLpQs2Yelz36RiNilW8pxpV85yFqrxTS0iLiYjcx2rbKqIK5gpOO5SutTYkUlJqbXYb6yDSsicjcquc5WpOywlFyRWvhZ8yBIICez6clzjlXptO5Xpe8qZ4YQ0u7zPyIUVYREUNrLg8YRo1wVyNdk6F0kOO...fdQBBA.......JrL0XA.......EVBBA.......JrDDB.......TXIHD.......nvRPH.......PgkfP.......fBKAg........EVBBA.......JrFRRxU7KaJm7Knkb4W92OWy0bMYkqbkohJpnb21........5RJUpTF+3GeN8S+zyrl0rR0UWcRRpnToRkNy+4mLy+ddOYDir17BN4WddIunQmQLhxbKF5i3ptpqJyblyrb2LfcnErfpx0+6Gc9M25nyQOkFyQbPqqGee9at9mJOZSGPNkCaM4EbBMjm2ycMY3CuTO99E5OP+Gzeg9Of9Vz+A8Wn+CnuE8eP+E6t8ebDG9ZyQcjM1ou9l1zlxxW9xy0ccWWZngFxkdoWZpt5pelQDxy6X+wY3CcOxAdvmat4aaT4q+KFgNU.nefUu5Ak47GFUtlaXz4IWWk4ULiUkK6KUelvd2Rux9eTi3pxodpmQ9y+kQja91FU9zytN8e.P+.5+..1Un+C.XWQuY+GCZPCJSbhSLyZVyJWxkbIY1yd1489deuOSPHW60ds487ddOot5VcN0Yr57ut1JzoB.8YUQtq6t57a+ciM++t6QjWxQulbNm0JywbzMljd++M5gO7R4Tmg9O.nuO8e..6Jz+A.rqn72+wocZmVt3K9h2RPHO9i+3o1Zqs0EXG0oxq5k+j4nNx02qzXAfmwJdzgje2MN57alyXydNrVxo8hdp7ddmqHibjapb2zZk9O.nuG8e..6Jz+A.rqnuT+ekmBHL...B.IQTPTE0VasYkqbkI4YuYomjN8li9V2oxe5OOh7Y+l0kW3ysgb1m0imppRB6.zS5dma04m9K2qb20WcdEm3Smuv+5Cm8e+2P4tYsCo+C.Juz+A.rqP+G.vth9h8eLnAMnVy8XP6Lq3vGdo7BO0UmK6qVedpFFRNm+kIm+9eu5djFI.CzUpTxO4x2y7I+56SdIm7pxUdIOTN22wJK6chrqP+G.z6Q+G.vtB8e..6J5uz+wP1wKx1ZDiXS4i9gWdt4aYj4C+E227F+Gex7O85dhLncpXU.fNypV0fyW3BqKIIe+ub8Yricik4VT2C8e.POK8e..6Jz+A.rqn+T+G6V+S+ufSZ04x9x0m66uUcdeez8KO7iTY2U6BfArtm6sl719WmRNpCcc4K8oe39zchrqR+G.z8S+G.vtB8e..6J5u0+wtcF3iaOaIe9O4RyK8TZHuyO9jyUecio6ncAv.NadnD9o9FSLep22RyY9FehzI29lJDz+A.cOz+g9O.XWg9Oz+A.6J5u1+wtzTiUG4k+xdpbTSas4K8MpK21sO77gduOZF2d1R20lGfBs9SCkvta5+.fcc5+P+G.rqP+G5+.fcE8m6+nacVQbe2mlyW+Kr3bDGRi4r+WmRt4aYjcmad.Jj5uMTB6In+C.14o+C8e.vtB8e7L8e7M9h5+.fcF826+naaDgrYCdvIuo2vSjoeLqMe9Kp1ba+4Qj2647nYDiXSc26J.5WqToj+me1dlewML17odeKMG0Qt9xcSprR+G.z0n+i1S+G.z0n+i1aPCR+G.zUTT5+nacDgzVGzA8+u8tSiupJuW6iesy.IjAHj.IgAG6ATb.H.JOp83DpsUkhCObDbd.GpGQqUqSkV6.NfUpUrOUQwIpiGpSETOUK0p1JpLaEQkVGYHIPFHSrgLredQLJnIg8dm8ZcutuW+99ReCWEbmeev+csWQ0bt8OQEzmVz48i1Ks5UmkW8KE.f0olZRWW6MtaZUuWN5A90er0FQ7BzO..5ZzO5ZzO..5ZzO5ZzO..5ZtT+vyNDhjTVYESWxEtIcMWzF00b66tV6ZIl..r5UmU6OJg6mc9nD5Gne..7MQ+XWi9A.v2D8icM5G..eStV+vSODRGNnw1jl9EuAcU2xPzmutL8ieIA.BjV6ZyVWysu6Z5W5FzYL4pTjHldQAazO..ZG8iDC8C.f1Q+HwP+..nctX+vWNDhjzg7+oQMsyXS5plwdnJ2TJ+USB.Pf2m9YYpq5VFrl9krAMlQ2jomi0f9A.B6nejbne.fvN5GIG5G.HryU6G91gPjjN1wWml72sJcs+pcSaYK95uz..FU4Ujgt5Yr65GdVUpCYbMZ54Xcne.fvJ5G8LzO.PXE8idF5G.Hrxk6G99OM+TNoZzQbP0oexMsaZqa0AdlZ..1Eps1z00NicWm4DpRG8QUuomi0h9A.BanejZP+..gMzORMne.fvFWueXjyZetmUUZX64V0uXlCVszBwD.3tZrwH559kCQG2gtEMwITqomi0i9A.BKnejZQ+..gEzORsne.fvhvP+vXOeeS6GToxO21zLuiApXwL0J..7Nae6QzO6lGhF0v2pNioTkomiyf9A.bczO7FzO.fqi9g2f9A.bcgk9gwNDRjHRW6UtQUeiooYe2kXpY..3IZsUoYbaCRk1+Vzkbgaxzywori8i65tK1zyA.Hkh9g2g+9G.vkQ+v6P+..trvT+vnuwmxHiX5Fu10q09IYqGbd82jSA.HEJh9MydfRR5Gc4aTR7+sgR05ne7geRuoe..GB8CuF+8O.fah9gWi9A.bSgq9gQODhjTu6cLcS+jOWu9RyWO0yzOSOG.fdr69dGfJeyYnoeMaPomtoWi6h9A.bMzO7GzO.fqg9g+f9A.bMgs9gwODhjTe6aa5V+oetdx+bQ5kWTeL8b..RZOxiUjV062a8Kug0od0K29R5AAzO.fqf9g+h9A.bEzO7WzO.fqHL1OBDGBQRp3Azhl0z+TcWO5.zheybM8b..RXO2BJPu7h6qt0e15Tt4FNhHAAzO.fsi9gYP+..1N5GlA8C.X6Bq8i.ygPjj1sgzrl00uNMi4LH8N+yrM8b..ha+0WIe8HKnHMyo+YpfBZ0zyIzYG6G+y2k9A.rGzOLK96e..aE8Cyh9A.rUg49Qf5PHRRCcnaS2zObc5m9aGh13FyvzyA.XWZwuUt529GJV29z+LUZIsX54DZ0Q+X52wPzFKm9A.B9neDLve+C.XaneDLP+..1lvd+HvcHDIoQMxspy+j2r9Y21PTznQL8b..5Ru6pyVy3dFjl00udsG6dyldNgdeY+XlzO.PvF8ifE96e..aA8ifE5G.vVP+HfdHDIoIdh0p8++Hpt8YOPIQLA.AO0UWZ5WbmCQ+hosNMzgF0zyAegN5Gy5tne.ffI5GAS72+..AczOBlne.ffN5GsKvdHDIoK6hqPUVcl5wdxBM8T..9Ftq4TpN1CoNM1QuUSOE70bYWbEphpxTON8C.D.Q+H3h+9G.HHi9QvE8C.DjQ+ncA5CgjQFwzO+ZVmdlEUfV7akqomC.vW5kWTezmrgdoy6L2jomB5DczOdZ5G.Hfg9QvF+8O.PPE8ifM5G.Hnh9wWIPeHDIoBKrUMiqd85WcOCRe5m1KSOG..sgMjgtiGoDcCWwFTlYFyzyAcA5G.Hng9gcf9A.BZneXGne.ffF5G6r.+gPjj1mgEUW8YWttgYNDUe8VwjAfips1jt0YOXcwmxl0dsma2zyA6BzO.PPA8C6B8C.DTP+vtP+..AEzO9lrlep7QeT0qiXr0qadVCTs0loWC.Bqdh4WjxM6VzDmPsldJHNQ+..AAzOrOzO.PP.8C6C8C.DDP+3axZNDhjzTO21+tLatObwFdI.HLZMue15w+yEpqZZkKIdjBsIeY+3gFfgWB.BineXu3u+A.LI5G1K5G.vjnez4rpCgjVZR2vUsQ8pKIO8Wek7M8b.PHxV2ZDMiYOHc8W3FU+KpUSOGjf9x9wRym9A.7UzOra72+..lB8C6F8C.XJzO5ZV0gPjjxO+1zMesqS297JUevGlsomC.BIlyCThNn8uIcnGRCldJHIQ+..l.8C6G8C.XBzOrezO.fIP+nqYcGBQRZO1isqe5krAM8aevp5pS2zyA.Nt2Xw4okr5bzEe9UX5ofdH5G.vOQ+vcP+..9I5GtC5G.vOQ+n6YkGBQR5PFWi5TFes5meaCQszRDSOG.3n1bUoqa49Fnl9kuA06dy2qht.5G.vOP+v8P+..9A5GtG5G.vOP+XWyZODhjzTNspUIE0r9cyoDSOE.3jhnYcWkpo7cpVCeeiZ5wfTH5G.vaQ+vUQ+..dK5GtJ5G.vaQ+HdX0GBQJltposQs5+U15O87EX5w..GyysfBTiQyPSdRUY5ofTN5G.v6P+vkQ+..dG5GtL5G.v6P+H9X4GBQJ6rioe40tNc+Oc+067O4kOE.RM93OoWZNOc+00c4qWoY8+jRzYne..u.8C2G8C.3Ene39ne..u.8i3mS7aOCrzVzO4R1fl4cOH0by78sH.5YZt4H5ltyAoq7LqPCZPsX54.OD8C.jJQ+H7f9A.RkneDdP+..oRzORLNwgPjjN3CpIsO6dT8Ge5BM8T.fk6AejAn8ZPaWG63qyzSA9.5G.HUg9Q3B8C.jpP+Hbg9A.RUnejXblCgHIcQmWkZduXgp7JxvzSA.VpUtpdqWdw8QS6hK2zSA9H5G.nmh9Q3D8C.zSQ+Hbh9A.5onej3bpCgTZIsny43qRy4AJwzSA.VnFZHhto+eCR2vktd0m9zlomC7QzO.POA8ivK5G.nmf9Q3E8C.zSP+H43TGBQR5TO4Zz+ZcYoktrbL8T.fk4dlao5nGa8prQsUSOEX.zO.Pxh9Q3F8C.jrneDtQ+..IK5GIGm6PHYlYLcEme45NefR4EOE.hauwhySqZs8Vm2YuISOEXHzO.Pxf9Ane.fjA8CP+..IC5GIOm6PHRRicLMogta7hmB.wmZpIcMy4VptgKa8J6riY54.Ch9A.RDzOPGne.fDA8CzA5G.HQP+nmwIODhDu3o.P7a12So5jOxZzvG91L8TP..8C.DunefcD8C.DunefcD8C.Dunezy3rGBgW7T.Hdrn+Z9ZcUloNyoTsomBBHne.f3A8C70Q+..wC5G3qi9A.hGzO54b1CgHwKdJ.z8pnxLzr9Ckpq+x2nxHCdjBwWg9A.5NzOPWg9A.5NzOPWg9A.5NzORMb5CgvKdJ.z0hn632WpNmSnJs26EORgXmQ+..cM5GnqQ+..cM5GnqQ+..cM5GoJN8gPj9pW7TO0yzOSOE.Df7md99plhltlzoviTH5bzO.Pmg9A1Une.fNC8CrqP+..cF5GoNN+gPjZ+EO0C+BEwKdJ.HIo0s9L0cO+AnqYZaPoEJ9ofHYQ+..6H5GHdQ+..6H5GHdQ+..6H5GoVgheKjW7T.nCs0lzLm8fzk9esIMjA2romCB3ne.fNP+.IB5G.nCzOPhf9A.5.8iTuPwgPj3EOE.Z27e5hTt8tUMgieKldJvRP+..RzOPhi9A.jnefDG8C.HQ+vKDZNDBu3o.vG8wYoG94KTW4kVtjhY54.KA8C.P+.IC5G.f9ARFzO..8CuQn4PHR7hmBHLqkVhnaY1CTW0YUtJo3VL8bfkg9AP3E8CzSP+.H7h9A5Ine.DdQ+v6DIVrXwF6XGqNwS7DM8V7E0Ta9Z1O2YqKehyS8qf5M8b.fO4k9aeaUYsEoy7jdNSOEXone.DNQ+.8TzO.BmnefdJ5G.gSzOR8V3BWnV5RWpxni+ASXBSvj6wW0qrZPe3Gc55rOqMX5o.KvBVvBBUe9vEsl0jktumYHZd+lOQET.+YYpTX6yGzOPhHr84CWD8CuSX6yGzOPhHr84CWD8CuSX6yGzOPhHr84CWD8CuwBW3BkTH6qFqNbpmbMZsed17hmBHDHZzH5l+cCVW2EVtJnfVM8bfki9AP3A8CjJQ+.H7f9ARkne.DdP+v6EJODRlYFS+vKnb8alaoZ6amW7T.trG3gGfF4v1pNzCoQSOE3.ne.DdP+.oRczOl0bGH8C.GG8CjJQ+.H7f9g2KTdHDIowL5lzA7shpmX9EY5o..OxJWUu0qrr70kbAka5o.GB8C.2G8C3EFynaRG32ZqzO.bXzOfWni9wi++P+.vUQ+veDZODhjzEcdUnm3uzO8YeVuL8T.PJVasIcWOPI5pmZ4Ju7hY54.GC8C.2E8C3kne.3tne.uzEcdUnmbQzO.bQzO7Og5Cgz+hZU+fIsIM66sDSOE.jh8RKpOpe42pF2AyiTHR8ne.3tne.uD8C.2E8C3kne.3tne3eB0GBQR5D+d0pnaOM8xKpOldJ.HEYaaKht+4WrtvydSldJvgQ+.v8P+.9A5G.tG5GvOP+.v8P+veE5ODRjHRWwEVtl8iVhpqtP+uc.3Ddl+Tgprg0j1mgE0zSANL5G.tG5GvOP+.v8P+.9A5G.tG5G9K9ImRZnCca5DOrsn6edEa5o.fdnZqMM8vOeg5blRkldJHDf9Af6f9A7SzO.bGzOfeh9Af6f9g+iCg7ENqorI8FuSd5cWc1ldJ.nG3Ile+0DOrZ0fGbKldJHjf9Afaf9A7azO.bCzOfei9Afaf9g+iCg7ExImX5JN2x0cbukpV3e+CvJs90mgdt+Qe0jmTUldJHDg9Af8i9ALA5G.1O5GvDne.X+neXFbHjcv29PaPCp+Mqm5YKzzSA.IgG5wJVmyITsJnf1L8TPHC8C.6F8CXJzO.razOfoP+.vtQ+vL3PHeMW5EVgdnEVj1X4YX5o.fDvG7gYqUt1bzI+8q1zSAgTzO.rSzOfoQ+.vNQ+.lF8C.6D8CygCg70LvRaQm2DpR288UpomB.R.227FftfIUoxJqXldJHjh9Afch9ALM5G.1I5Gvzne.XmneXNbHjNwoLwp052bF5u+F4Y5o.f3va814pZpOccbiuNSOEDxQ+.vtP+.AEzO.rKzOPPA8C.6B8CyhCgzIxHCoq7hJW24CUpZpoHldN.nazVaR26iN.cQmQkJM9IZvvne.XOneffD5G.1C5GHHg9Af8f9g4wus2ENf8OpNrQ1fl2i0eSOE.zMdoE0G0u7aUi6faxzSAPRzO.rEzOPPC8C.6.8CDzP+.vNP+v73PHciy+rpTu3h6qV6ZyxzSA.chsssH59mew5BO6MY5o.rSne.DrQ+.AUzO.B1neffJ5G.AazOBF3PHci9zm1zkc5Un679JUw38WCPfyy7mJTiZnMo8YXQM8T.1IzO.B1neffJ5G.AazOPPE8CffM5GACbHjcgic70qr6UaZguXAldJ.XGTasooG94KTm6oWoomBPmh9APvD8CDzQ+.HXh9AB55nerfWf9APPB8ifCNDRbXZWT45tm+.zlqJcSOE.7Edh4Wjl3gUqF7fawzSAnKQ+.H3g9ArAzO.Bdne.avztnx087Goe.DjP+H3fCgDG1icuYM4ioFcuOXIldJ.PRqe8Ynm6eTfl7jpxzSAnaQ+.HXg9ArEzO.BVne.aA8CffE5GAKbHj3zjmTU5c+2Yqkt7da5o.D58POVw5bNgpUAEzlomBvtD8CffC5GvlP+.H3f9ArIzO.BNneDrvgPhS8pWwzzN2Jzb9CkHoHldN.gVu+GjsV4ZyQm72uZSOEf3B8CffA5Gv1P+.HXf9ArMzO.BFneD7vgPR.Gx3ZTY2qX5UesbM8T.Bsl6eX.5BlTkJqrhY5o.D2ne.XdzOfMh9Af4Q+.1H5G.lG8ifGNDRBZpmQkZtOYwp0VM8R.Bedq2NGUS8oqia70Y5o.jvne.XNzOfMi9Af4P+.1L5G.lC8ifINDRBZjiXqZfE0rd4+ZeL8T.Bc9KuZAZxe+pUZ7StfEh9Af4P+.1L5G.lC8CXyne.XNzOBl3ONRBm2ouIc+ye.p4l46ZQ.+RasI8ZuadZLk0nomBPRi9Af+i9AbAzO.7ezOfKf9Af+i9QvEGBIIL78Mp1+8Lpdg+29Z5o.DZrl0jk16h1tJrPdtdg85q5GEX5o.DZP+.t.5G.9O5GvEv+8q.7ezOBt3PHIoydJaVOvy1eEMJWUGvOr7UlmFWY0a5Y.zi0d+nH5G.9D5GvUP+.veQ+.tB9ueEf+h9QvEGBIIs2601zgreMomcAEZ5o.DJ7FqHOM1QyiUHrezO.7WzOfqf9Af+h9AbEzO.7WzOBt3PH8.m4j2jl2KTnZnA9sQ.uTs0lt9fJxRCeeiZ5o.jRP+.veP+.tF5G.9C5Gv0P+.veP+HXieBXOvPFby53Fac5odVtpNfWZ4qLGcTGPCJ8zM8R.RMne.3One.WC8C.+A8C3Zne.3OneDrwgP5glxjpROweoPUSM7ugC3Ud6kkmFaYMX5Y.jRQ+.v6Q+.tH5G.du2dY4oCpL9ZMAtE5G.dO5GAabHjdnRJtEMwucM5IeJtpNf2Hhds2MOM5Q0joGBPJE8C.uF8C3lne.30ZueT1n3+PVvsP+.vqQ+HniCgjBbZmZ054968SUTYFldJ.NmO3CyRCrOMqRJtESOEfTN5G.dG5GvkQ+.v6P+.tL5G.dG5GAebHjTf90uV0jOlp0iO+hL8T.bNKaE4pwMRtlNbSzO.7NzOfKi9Af2g9AbYzO.7NzOB93PHoHm5IUsdok1Gst0moomBfS4MWQd5fGCe+tC2E8C.uA8C35ne.3Mne.WG8C.uA8ifONDRJRd40lN6iuZ8HOw.L8T.bF0WeZZUqKas+6WTSOE.OC8CfTO5GHLf9APpG8CDFP+.H0i9gcfCgjBcRSnZs32KG8QebVldJ.NgUrpb0QruMnLyLlomBfmh9APpE8CDVP+.H0h9ABKne.jZQ+vNvgPRgxN6X57Oopz7d79a5o.3DVxxyUG7X36WQ39ne.jZQ+.gEzO.Rsnefvh16Gal9APJB8C6.GBIE63+t0pU+IYq079Ya5o.X8d0UlqJaD78qHBGne.j5P+.gIzO.Rcnefvji+6tE5G.oHzOrCbHjTrLyLltfIsI8PONeWKBzS7u+nrTe6cLM3A2homBfuf9APpA8CD1P+.H0f9ABane.jZP+vdvgP7.G6QWm1vlyTq5c5somBf0ZoKOWcXipdSOC.eE8CfdN5GHLh9APOG8CDFQ+.nmi9g8fCg3AROcoodZUp49nEa5o.XsVxJyUioL99UDgKzO.54nefvH5G.8bzOPXD8CfdN5G1CNDhG4HN7FUzsGQu0amqomBf0oolhn27iyQi3.2pomBfui9APxi9AByne.j7nefvL5G.IO5G1ENDhmIl9uNwp0K+25qoGBf0YkqJWc3CqAkUVwL8T.L.5G.IK5GHbi9APxh9AB2ne.jrneXW3PHdnwTVi50Wcdps1L8R.rKKcE4nCtrlL8L.LF5G.IG5GHri9APxg9AB6ne.jbneXW3PHdnBKrUs2Escsl0jkomBfU40WY9prQ0fomAfwP+.H4P+.gczO.RNzOPXG8CfjC8C6BGBwiMtxpWKek4Y5Y.XM9zOsWJRDo8X2a1zSAvnne.jXne.zN5G.IF5G.si9APhg9g8gCg3wFSYMp2XEDR.hWKaE4pCuLtlN.8CfDC8Cf1Q+.HwP+.nciczzO.RDzOrObHDO19M7n5CpHKUasoa5o.XEVxpxSigGqP.5G.IH5G.si9APhg9AP6F99R+.HQP+v9vgP7XomtzQc.MnkuxbL8T.B7hFMhd8OLGMxQvKZJ.5G.wO5G.eE5G.wO5G.eE5G.wO5G1INDhO3fJqQsjkyiWHvtxpdmdqCcuaT4jSLSOEf.A5G.wG5G.6L5G.wG5G.6L5G.wG5G1INDhOnrQ0nd0+YdRJhomBPf1xWYd5fJiqoCzA5G.wG5G.6L5G.wG5G.6L5G.wG5G1INDhOnjhaQCrOMqO3CyxzSAHP6uux7zXJqQSOCf.C5G.wG5G.6L5G.wG5G.6L5G.wG5G1INDhOYbirQsrUjqomAPf052Plposml168ZaldJ.AJzO.5dzO.5bzO.5dzO.5bzO.5dzOrWbHDexAOlFzatB9dVDnqrrUjqN7Q0fomAPfC8CftG8CfNG8CftG8CfNG8CftG8C6EGBwmr+6WTsp0kspud9sbfNyRVdtZLDR.9Fne.z8ne.z4ne.z8ne.z4ne.z8neXuhDKVrXicriUm3IdhldKNuG9oOYMlguZc.C+CM8T.BTZokz0M8H+25Zm78nryd6ldN.ANzO.5bzO.5dzO.5bzO.5dzO.5bzOrSKbgKTKcoKUYzw+fILgIXx8DJDIi7zGr1iPSXB6iomBR.KXAKfOe3wV1J5s9OGVqZRS56X5ofDDe9veP+vNwmO7dzOrW74C+A8C6De9v6Q+vdwmO7GzOrS74CuG8C6zBW3BkDe0X4qJaDMnWck7BmB3qaYqLecvipQSOCf.K5G.cN5G.cO5G.cN5G.cO5G.cN5G1MNDhOZvCtE02dGS+6OJKSOEf.kEuhb0XGMgDftB8CfNG8CftG8CfNG8CftG8CfNG8C6FGBwmcXipdszkyU0A5P4Ujgpr9LzPG51L8T.Bzne.ryne.Dene.ryne.Dene.ryneX+3PH9rwTViZI73EB7kVwJyUG4HZPRwL8T.Bzne.ryne.Dene.ryne.Dene.ryneX+3PH9rQbfaUu4GmiZpoHldJ.ABu8xySisr5M8L.B7ne.ryne.Dene.ryd6kmmF6navzy.Hvi9AvNi9g8iCg3yxJqX5+bnMnUtJtpNPKsH8puWtprQ0jomBPfG8CfuB8Cf3G8CfuxW1OFIe+tCrqjUVwzgOL5G.RzObEbHDCXbitIszUjiomAfw8dqIaseCbapfBZyzSAvJP+.nczO.RLzO.ZG8CfDyAWF8C.I5GtBNDhAT1nZPu9Jy2zy.v3V1JxSiaj7XEBDune.zN5G.IF5G.si9APhg9AP6ne3F3PHFvdr6MqHQj9rOqWldJ.F0hWQ978qHPBf9AP6ne.jXne.zN5G.IF5G.si9gafCgXHGdYMnktb9dVDgWatpz0mVclZe1msY5o.XUnefvN5G.IG5GHri9APxg9AB6ne3N3PHFxXFUCZIqJOSOC.iYYqHWc3GPCJM9oP.ID5GHri9APxg9AB6ne.jbnefvN5GtC9iPCYjinI85eXNJZzHldJ.FPD8Ge9B0wbDawzCAv5P+.gazO.RVzOP3F8CfjE8CDtQ+vkvgPLjbxIlNz8tQsp2o2ldJ.9tW80xUY2qXZbGbildJ.VG5GHLi9APxi9AByne.j7nefvL5GtENDhAcPk0jV9J4wKDgKs1pzbexh0TOiJM8T.rVzOPXD8CfdN5GHLh9APOG8CDFQ+v8vgPLnwTVi5uSHAgLu7esOZP8uYMxQrUSOE.qE8CDFQ+.nmi9ABine.zyQ+.gQzObObHDCZu2qsol1dZZ8aHSSOE.eQyMGQ2+7GfN2orISOE.qF8CD1P+.H0f9ABane.jZP+.gMzObSbHDC6vGUCZYqHWSOC.ewK7+Vf1+8LpF99F0zSAv5Q+.gIzO.RcnefvD5G.oNzOPXB8C2DGBwvFynZPKY4DRf6KZzH5Ad1hzYOkMa5o.3DnefvB5G.oVzOPXA8CfTK5GHrf9g6hCgXXidTMoW6CxSM2bDSOE.O0ytfB0greMo8du1lomBfSf9ABKne.jZQ+.gEzO.RsnefvB5GtKNDhgkWdsoQuaaUuy6lsomBfmogFRSy6EJTm4j46VQfTE5GHLf9APpG8CDFP+.H0i9ABCne313PHA.G7nZTKak4a5Y.3YdpmsPcbisNMjA2romBfSg9AbczO.7FzOfqi9Af2f9AbczObabHj.fwTViZw7BmBNpZpIc8D+kB0TlTUldJ.NG5GvkQ+.v6P+.tL5G.dmwNZ5GvcQ+v8wgPB.F1v1lpr9LT4UjgomBPJ2S9TEpI9sqQkTbKldJ.NG5.HMktC..V3SRDEDUGvkQ+.v6P+.tL5G.dmgNT5GvcQ+v8wgPBDhoibDMnUrRtpNbKUTYF54968Sm1oVsomBfih9AbSzO.7ZzOfah9AfWi9AbSzOBG3PHADiczMnkviWHbLO97KRS9XpV8qesZ5o.3rne.WD8C.uG8C3hne.38ne.WD8ivANDR.QYirQ82VcdpEd5qfiXcqOS8RKsO5TOItlNfWh9AbMzO.7GzOfqg9Af+f9AbMzOBO3PHADETPaZ+F31z6slrM8T.RIdjmX.5rO9pUd40lomBfSi9AbMzO.7GzOfqg9Af+f9AbMzOBO3PHAHiajMnksh7L8L.5w9nONKs32KGcRSfqoC3Gne.WA8C.+E8C3Jne.3une.WA8ivENDR.xXGcCZwqHeSOCfdr4838Wm+IsYkc1wL8T.BEne.WA8C.+E8C3Jne.3une.WA8ivENDR.x9rOaSeZ0YpMWU5ldJ.Is079YqU+IYqi+6tESOEfPC5GvEP+.v+Q+.t.5G.9O5GvEP+H7gCgDfjVZRG9AzfV1Jx0zSAHo8fO1.zELoMoLyjqoC3Wne.W.8C.+G8C3Bne.3+ne.W.8ivGNDR.ywdj0p+mETnZi2OOvBsp2o2ZiUkoN1itNSOEfPG5GvlQ+.vbne.aF8C.yg9ArYzOBm3PHALG7A0j5W9spWZQ8wzSAHgM2GsXM0SqRkNOcr.9N5GvlQ+.vbne.aF8C.yg9ArYzOBm3PHAPW3YuIc+yuXEMZDSOEf31heqbUzsGQGwg2nomBPnE8CXine.XdzOfMh9Af4Q+.1H5GgWbHj.n8YXQ0nFZS5YWPgldJ.wksu8HZ1OTo5hOqJjDe2JBXJzOfsg9APv.8CXane.DLP+.1F5GgabHj.py8zqTO7yWnpsV9iHD783+OEoC7asUM1QuUSOEfPO5GvlP+.H3f9ArIzO.BNne.aB8ivM9oTATCdvsnIdX0pmX982zSAna8YeVuzStn9oK57pvzSA.h9ArGzO.BVne.aA8CffE5GvVP+.bHj.rIOopzy8O5qV+5yvzSAnKM66sD8ClzlT+KpUSOE.7Ene.a.8CffG5GvFP+.H3g9ArAzO.GBI.qfBZSmyITsdnGqXSOEfN0Kun9nnaOMcheuZM8T.vNf9AB5ne.DLQ+.AczO.BlneffN5GPhCgD3cxe+p0JWaN5C9vrM8T.1I0UWZZ1OZI5JtvxUjHldM.3qi9ABpne.DrQ+.AUzO.B1neffJ5GnCbHj.trxJltfIUotu4M.SOEfcx8Ouh0IdXaQCcnayzSA.cB5GHnh9APvF8CDTQ+.HXi9ABpnefNvgPr.G23qS0Te55sd6bM8T.jjz6t5r0a7N4oyZJaxzSA.cC5GHng9Afcf9ABZne.XGneffF5GXGwgPr.oklzEcFUp68QGfZqMSuFD10RKR2w8Vp9gma4JmbhY54.ftA8CDjP+.vdP+.AIczOtB5G.AdzOPPB8C70wgPrDi6faR8K+V0Ksn9X5ofPtm5YKTCp+MqC6PavzSA.wA5GHnf9Afcg9ABJ5ne7soe.XEneffB5G3qiCgXQtvydS59mewZaai2rOvL1X4YnGZgEoK8BqvzSA.I.5Gvzne.Xmne.Si9Afch9ALM5GnyvgPrH6yvhpQMzlzy7mJzzSAgT288UpNuITkFXosX5o.fD.8CXZzO.rSzOfoQ+.vNQ+.lF8CzY3PHVly8zqTO7yWnpsV9iN3u96uQdZ8aNCcJSrZSOE.jDne.Sg9Afci9ALE5G.1M5GvTneftB+zHKyfGbKZhGVs5IleQldJHDoolhn67gJUW4EUtxHCSuF.jLne.Sf9Af8i9ALA5G.1O5GvDneftCGBwBM4IUkdt+QAZ8qmOQC+w7dr9qCajMnCX+iZ5o.fd.5GvuQ+.vMP+.9M5G.tA5GvuQ+.cGNDhEpfBZSmyITsdnGqXSOEDBr10lkdwE2Wc9mUkldJ.nGh9A7SzO.bGzOfeh9Af6f9A7SzOvtBGBwRcxe+p0JWaN5C9vrM8TfCKVLo679JUW1oWg5SeZyzyA.o.zOfef9Af6g9A7CzO.bOzOfef9AhGbHDKUVYESWvjpT227FfomBbXK3EJPY2q1zwN95M8T.PJB8C3Gne.3dne.+.8C.2C8C3Gnef3AGBwhcbiuNUS8oq27sy0zSANnMWU55d9iCPS6hJ2zSA.oXzOfWh9Af6h9A7RzO.bWzOfWh9AhWbHDKVZoIMsyuBMq4VpZngHldNvwLmGnDM4ioFsG6dyldJ.HEi9A7RzO.bWzOfWh9Af6h9A7RzOP7hCgX4F0H2pN5wVutm4VpomBbHKa44nU+QYqIOopL8T.fGg9A7BzO.bezOfWf9Af6i9A7BzOPhfCg3.NuydSZUqs25MVbdldJvAzbyQzuYtkpezTKW8pWwL8b.fGh9ARkne.DdP+.oRzO.BOnefTI5GHQwgPb.YmcLcCW150LmaoplZR2zyAVt+3SWn1mcOpF6XZxzSA.dL5GHUh9AP3A8CjJQ+.H7f9ARknefDEGBwQL7guMcxGYMZ12COhgH4UdEYn48hEpK57pzzSA.9D5GHUf9AP3C8CjJP+.H7g9AREnefjQjXwhEaricr5DOwSzzaA8Ps1Z55NdhyPGyHVhF0AtFSOGXgdjmchZ2FvF0QbXusomB.7QzOPOE8CfvI5Gnmh9AP3D8CzSQ+.IhEtvEpktzkpL53evDlvDL4dPJxHFYS5x9keOcQSceUIE2homiSXAKXAghOerzkki5U1kpa4WESYlo6++dQpQX4yGgAzOR8BKe9f9ARFgkOeDFP+H0Kr74C5GHYDV97QX.8iTuvxmOnefD0BW3BkDe0X4b168Za5bNgp0c76KURQL8bfkn4lin67AJUWw4WtxLSdASADFQ+.IC5G.f9ARFzO..8CjLnefdBNDhCZRmRUponoq+zy2WSOEXI9iOcgZn6Fufo.B6nefDE8C.HQ+.IN5G.Ph9ARbzOPOAGBwAkVZRWyz1ft64O.st0moomCB33ELE.5.8CjHne.fNP+.IB5G.nCzOPhf9A5o3PHNpgL3l0k9esIMyYOH0ValdMHHaNOPI5bN9pTokv2Im.f9AhezO.vNh9AhWzO.vNh9AhWzOPOEGBwgMgieKJ2d2pl+SWjomBBnV5xxQ+q0kkN0StFSOE.DfP+.6JzO.Pmg9A1Une.fNC8CrqP+.oBbHDmVLckWZ45ge9B0G8wYY5wf.FdASAftF8Cz0ne.ftF8Cz0ne.ftF8Cz0nefTENDhiqjhaQW0YUttkYOP0RKQL8bP.Bufo.P2g9A5JzO.P2g9A5JzO.P2g9A5JzOPpBGBIDX7Gc8ZHE2r9COFOhgnc7BlB.wC5G3qi9A.hGzOvWG8C.DOnefuN5GHUhCgDRbE+fx0y725qVyZ3QLD7BlB.wO5GXGQ+..wK5GXGQ+..wK5GXGQ+.oRbHjPhBJnUccWXE5l+cCVQixiXXXFufo.Phf9A5.8C.jHnefNP+..IB5GnCzOPpFGBID4POjFzHG1V0C7vCvzSAFBufo.Pxf9Ane.fjA8CP+..IC5Gf9A7BbHjPlK4BJWuxxxWqXk81zSAFvS8L8iWvT.HoP+Hbi9A.RVzOB2ne.fjE8ivM5GvKvgPBYxKuX5m7euAcy+9Aq5pi+3OLo7JxPO7KzedASAfjB8ivK5G.nmf9Q3E8C.zSP+H7h9A7J7SRBgF0H2pN1CoNcWyoTSOE3it2GrXcNG+l4ELE.RZzOBmne.fdJ5GgSzO.POE8ivI5GvqvgPBoNuybS5S1PuzKun9X5o.evaujbzZ+7r4ELE.5wneDtP+..oJzOBWne.fTE5GgKzOfWhCgDRkYlwzMbEaP2wiTh1vFxvzyAdnMVdF5ltmAoq4GrAdASAfdL5GgGzO.PpD8ivC5G.HUh9Q3A8C303PHgX60dtccwmxl0sN6Aq1ZyzqAdgnQine1LGhtfSYy5.OfnldN.vQP+v80Q+XpmJ8C.j5P+v8Q+..dA5GtO5GvOvgPB4l3DpU4lcK5IleQldJHkKhl0cMPs++GQ02+Dp0ziA.NF5GtrupeLgim9A.Rsne3xne..uC8CWF8C3O3PHgdwzUMsx0i+mKTq48y1ziAoPO9SVn1T0YpK6hqvzSA.NI5GtJ5G.vaQ+vUQ+..dK5GtJ5GvuvgPf5eQspq+B2nlwrGj15ViX54fTfE+V4pmdQEne1OdcJiL36UQ.3Mne3dne..+.8C2C8C.3Gne3dne.+DGBARR5POjFzAs+Mo47.kX5ofdnO8S6klw8LHMiqd8pvBa0zyA.NN5GtC5G.vOQ+vcP+..9I5GtC5GvuwgPvW5hO+JzRVcN5MVbdldJHIUe8ooaXlCQW0YWt1mgwKWJ.3OneX+9x9w4P+..9G5G1O5G.vDneX+ne.SfCgfuTu6cLM8KeC5VtuApMWU5ldNHA0VaR27rFnNhwVuN5ipdSOG.DhP+vtsS8iij9A.7OzOrazO.foP+vtQ+.lBGBA6jguuQ0T9NUqYcWkJI99VzlL2GZ.RRZpm6lL7R.PXD8C6E8C.XRzOrWzO.fIQ+vdQ+.lBGBAeCSdRUoFilgdtETfomBhS+0WIe8pKMecCW0FUZ7oZ.XHzOrOzO.PP.8C6C8C.DDP+v9P+.lD+qb3aHszjttKe8ZNOc+0G+I8xzyA6BevGlst84Upt4qccJ+7ayzyA.gXzOrKevGlslE8C.D.P+vtP+..AEzOrKzOfowgPPmZPCpEckmYE5luyAolalGwvfppqNcM8aev5mdIaP6wdrcSOG..5GVhN5GSm9A.BHneXGne.ffF5G1A5GHHfCgftzwN95zdNnsqG7QFfomB5DszRD8yusgnSY70pCYbMZ54..7kneDrQ+..AUzOB1ne.ffJ5GAazOPPAGBAcqocwkqWdw8QKc481zSAeM+t4ThJonl0TNspM8T..9FneDbQ+..AYzOBtne.ffL5GAWzOPPAGBAcq9zm1zMdEqS23cMDs10lsomC9BO2BKPq9ekstposQIEyzyA.3af9QvD8C.DzQ+HXh9A.B5neDLQ+.AIbHDrKc.6eTM8KYC5ptkAqO8yxzzyIzakqp25Adl9qe40tNkc1DQ.PvE8ifE5G.vVP+HXg9A.rEzOBVneffFNDBhKGx3ZT+vypRc0yX2U4UjgomSn0ZWaV5m7aGhlwUtNMvRawzyA.XWh9Qv.8C.XaneDLP+..1F5GACzOPPDGBAwsi9npWm4DpRW6L1cUasoa54D574qKScU2xPzzu3MnC7.hZ54..D2neXVzO.fsh9gYQ+..1J5GlE8CDTwgPPBYhSnVcbG5Vz08KGhZrwHldNgFUtoLzUMi8PS6L1jNj+OMZ54..jvneXFzO.fsi9gYP+..1N5GlA8CDjwgPPB6LlRUZTCeq5mcyCQae6DS7ZaYKooq8WsaZxe2pzwN95L8b..RZzO7WzO.fqf9g+pi9wo8cne..6F8C+E8CDzwgPPR4RtvMoR6eKZF21fTqsZ503t15VinexMsa5HNn5zobR0X54..ziQ+veP+..tF5G9icrebpmL8C.X+ne3One.a.GBAIoX5Gc4aTRR+lYOPIwk0S0ZokH5WLyAqgsmaUm6YUkomC.PJB8CuF8C.3lne30ne..2D8CuF8CXK3PHHokd5RS+Z1fJeyYn69dGfomiSIVLoYdGCT4maaZZ+fJM8b..Rone3cne..WF8CuC8C.3xne3cne.aBGBA8H8pWwzu7FVmV062a8HOVQldNNiYe2kn5aLMcsW4FUD9+rB.vAQ+vaP+..tN5GdC5G.v0Q+vaP+.1DNDB5wxM2X5V+YqSu7h6qdtETfomi06AmW+0Z+jr0MdsqWYjQLSOG..OC8iTK5G.Hrf9QpE8C.DVP+H0h9ArMbHDjRTPAspYN8OSOxBJR+0WIeSOGq0S8L8Su9RyW2zO4yUu6MQD.39nejZP+..gMzORMdpmoe50ne.fPD5GoFzOfMhCgfTlRKoEc6S+yzu8OTrV7akqomi04kWTezS9mKR25O8yUe6aaldN..9F5G8LzO.PXE8idlN5Gyj9A.BYnezyP+.1JNDBRo1icuYMqqe8ZF2yfzxVdNldNViE+l4p65QGfl0z+TU7.ZwzyA.v2Q+H4P+..gczORNzO.PXG8ijC8CXy3PHHkanCMptsq9yzL98CRO5iWjhwSHW25sWRNZFyYPZVW+5ztMjlM8b..LF5GIF5G..si9Qhg9A.P6nejXne.aGGBAdh8e+2lt+a6i0pVSN5ZuwcS0TS5ldRANaaaQz8beCP+56af5W+i+bMzgtMSOI..ii9wtF8C.fuI5G6ZzO..9lnerqQ+.tBNDB7LEVXqZl+hOWib3Moy+GuWZUuSuM8jBL9vOLacwW8dpZqKS8f+lOV629E0zSB.Hvf9QWi9A.PWi9QWi9A.PWi9QWi9AbIYX5A.2VjHRmwTpRGv92j94ydv5+6wTiN8SqJEIhoWlYzVaROw7KRO9etP8iO+x0g+sq2zSB.HPh9wNi9A.P7g9wNi9A.P7g9wNi9AbQ7Dg.ewHGwVa+QM78BuOpge95xTW90s65ce+r0C9q+XhH..wA5GzO..RFzOne..jLneP+.tKNDB7Mg4G0vE9hEnKZ56o9tGUc5luw0q9WTKldR..VC5GzO..RFzOne..jLneP+.tI9pwB9pv1iZ3lqJC8a9ckn5ZLCcuy3SztMjlM8j..rRzOne..jLneP+..HYP+f9AbO7Dg.iHL7nF9Z+87048i2Kc.6aTM6a8SIh..jBP+...IC5G..HYP+.vcvgPfw70eTCek+Vdp4ls+Sq2PCooacVCTOvS1eMqq6y0oeZUoz3SZ..oLzO..Pxf9A..RFzO.bC7UiELpNdTCOvCnQ83O8.zs8PCTS7v1hN1idK5a8s1lomWBowFin27sxS2ySTrF+AUmlys+IJqrhY5YA.3jne..fjA8C..jLne.X+9xCgDKVLEwU+htCAdi3.ipQbfetJuhLzhdk9pq+1FhJL2VzIbLaQG4+YcJ+7ayzSrS0XiQzasj7zq8F8Qux6kmNp8qAM8KaCZjiXqldZ..gBzO..Pxf9A..RFzO.rKs0VaJVr1OzWFRR8u+8WabiaTCZPCxnCCnzRZQmwjqRmwjqVqXkYq+7h5mtiGuXcbipA8cFeMprQEURl8J0cV73vOz5zO9J1fxMWtfN.fIP+...IC5G..HYP+.vNrwMtQUbwEKou3PHG+we75EewWTWvEbAFcX.ekXprQsUU1n1p9uqOM82d89n6cdknptmLzDOxZz3OpsnRKoEeaMDO..rEzO..Pxf9A..RFzO.BxdgW3EzIbBmfjjhDKVrXM0TSZpScppfBJPeuu22SCbfCjulrPfz+9emkdoE0W8mdi9pQsWQ0ALrl77eMetWtVUw1+O9x3w3NnFHd.7EVvBVflvDlfomAvtD8CffE5GvVP+.HXg9ArEzO.Lm1ZqMswMtQ8hu3Kp5pqNc+2+8qryN61ODhjTznQ0bm6b0y+7OuprxJ4PH...........vZDKVLUbwEqS3DNAM0oNUkc1YKI8UGBA...........v07+2meC5b+Bvj6C....PRE4DQtJDXBB" ],
									"embed" : 1,
									"forceaspect" : 1,
									"id" : "obj-1",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 368.0, 22.0, 363.0, 298.89122807017543 ],
									"pic" : "fourstrokegraphs.png"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"id" : "obj-17",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.0, 537.0, 722.0, 38.0 ],
									"text" : "Baldan, S., Lachambre, H., Delle Monache, S., & Boussard, P. (2015). Physically informed car engine sound synthesis for virtual and augmented environments. In 2015 IEEE 2nd VR Workshop on Sonic Interactions for Virtual Environments (SIVE) (pp. 1-6). IEEE."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 111.0, 577.0, 518.0, 37.0 ],
									"style" : "SDTpackage",
									"text" : ";\rmax launchbrowser https://www.academia.edu/download/38205862/SIVE15_submission_4.pdf"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"linecount" : 11,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.0, 330.0, 722.0, 178.0 ],
									"style" : "SDT-comments",
									"text" : "From a mechanical viewpoint, an internal combustion engine converts chemical energy into kinetic energy by means of a series of controlled explosions. From an acoustic point of view, this process can be described by means of a set of resonating pipes, excited by the explosions occurring in the combustion chambers. \n\nThe tubes resonances are modeled through digital waveguides, while the engine operation cycle is modeled by means of four distinct functions representing pistons movement, intake valves operation, exhaust valves operation and fuel ignition.\n\nThe entire model is composed by an engine block simulation, including intakes, cylinders and extractors, and by an exhaust system formed by a main exhaust pipe, a set of resonators acting as a muffler and a terminal exhaust outlet. Intake outputs, engine cycle functions and exhaust output are processed as three independent sound emissions, that can be blended together to simulate different listening points inside and outside the vehicle."
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"data" : [ 82782, "png", "IBkSG0fBZn....PCIgDQRA..CbE..H.vHX....veVi3u....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6cmGVTU8+G.+8vvtr4BBJRhHpjJtfJnFJlKDkItVtkhqnUpYYVZY+xbIMSy0z95Rpo4RVlYojqYtAJjHHhnBtDtjX3JaCyx82eLL2bbFPfYFFX38qmmdLtay4Nycty4y8bNeNRDDDD.QDQDQDQDYPrxbW.HhHhHhHhrDvfqHhHhHhHhLBXvUDQDQDQDQFAL3JhHhHhHhHi.FbEQDQDQDQjQ.CthHhHhHhHxHfAWQDQDQDQDYDvfqHhHhHhHhLBXvUDQDQDQDQFAL3JhHhHhHhHi.FbEQDQDQDQjQ.CthHhHhHhHxHfAWQDQDQDQDYDvfqHhHhHhHhLBXvUDQDQDQDQFAVatK.TYiff.V4wyCokoJjqbghb6FRasCg5msE6wZCmJODyUUTraCON73viCON73TxON6MEY3p+qRDZisEM2S9SsDQTUE7N9URIQhDXqTIEafUDQDYdbsrThjtkRjzsxCA6i0HxfrGRsRh4tXQDQjIlDAAAV67JodPdp..fq1KARjvezlHhpn394pBm7pxQzoHGxUJfN5qMHxfr2bWrHhHxDiAWQDQDYhbs6o.e4AyGJTIf2uaNfF4N6vHDQjkLlPKHhHhLQ7oFVid3u5.pNxkkalKMDQDYpwfqHhHhLgZuOpS9EW9tJMykDhHhL0XvUDQDQlPt6j5wD6ixyLWPHhHxjic9ahHhHSHoVIARYRGhHhpRfIzBhHhHhHhHi.1s.qjPkf.9neMaLieKaycQgHhHhHhH8fcKvJIDD.xJGAHArqkPDQDQDQUDwVtpRBM8cS1s8IhHhHhnJlXvUURnYjwwXqnJB5cu6M97O+yM2EChHhHhpPgcKPhnRsybly.2c2cycwfHhHhnJTXKWQDQDQDQDYDvfqpjPraAx9EHQDQDQDUgDCthHRjBEJfb4xKS6aAET.JsSadpToBYmcoa5EPgBEHu7xqTsO..4me9k58QCUpTUl2Wh..jqT.xUxoURhHxRGCtpRBls.IisvCObrgMrA..r0stUDbvACGbvA3jSNg1111h29seajUVYUrGCAAArhUrB7hu3KBWbwE3latgN0oNg8u+8Wj6yCdvCvbm6bQiabigCN3.byM2fat4FhHhHPLwDid2GYxjgu5q9JznF0H3niNBmc1Y3gGdfQNxQhKcoKUjuVwFarXPCZPvO+7CN4jSnd0qdnO8oOXW6ZW5c6+pu5qvPFxPDeOoO8oOvc2cGolZpE66CD8rLgcjMlvN37THQDYoShPo8QMSlEBBB3tYq9ipZ6LiIlLb1XiMXZSaZ3N24NXaaaaXXCaXnCcnCnfBJ.m7jmDabiaDd4kWXW6ZWnUspUZsud6s2nScpSPgBEH93iGu0a8VnwMtw31291Xqacq3Dm3DX4Ke4X7ie7ZseO5QOBcpScBW+5WGidziFAETPvAGb.W8pWEqbkqDW+5WGG8nGEAETPZseCdvCF+3O9in6cu6H7vCGt5pq3vG9vXe6aePgBE3Tm5TvO+7Sq8Ykqbk3ce22E96u+HhHh.spUsBomd53fG7f3vG9v3cdm2AKXAK.RkJUbeF6XGK98e+2wblybvnG8ngO93CZcqaMVwJVA7vCOLxeBPUkLts8X..7+Fjyl4RBQDQlTBDQUIYs0VKzvF1Pg5Uu5IjXhIpy5OwINgfat4lf+96ufRkJ0Zc0qd0SPpToBu3K9hB4latZsNUpTIzyd1SAGbvAgG7fGn05lzjljf81auve8W+kNudYlYlB1ZqsBuxq7JZs73iOdAoRkJL7gObc1mabiaH3omdJz6d2asV9wN1wDjJUpv.Fv.DxO+70Y+l6bmqfToREV8pWsVKeLiYLB0nF0Pnt0stBKdwKVm8inxpn15iDhZqOxbWLHhHxDiMABQUgcsqcMr3EuXzhVzBcVWG6XGwrm8rwku7kwO+y+rNqWpToXCaXCvAGbPqkKQhDLgILATPAEfibjin05hN5nwK8RuDBLv.0434t6tiHhHBjPBIn0xSN4jAf5Vu5o4kWdggLjgfCe3CiBJn.wk+we7GiZTiZfMsoMA6ryNc1uO5i9HDbvAiYO6YCYxjo05d3CeH5Uu5El7jmrN6GQDQDQEGFbEQUg8bO2yg90u9Ujq+Mey2D1XiM5M3p1zl1fm64dN8te95qu.P83q5Is8sucrpUsph70yImbB28t2UqkEbvAC.fMsoMo2DlwhVzhvidzifs1ZK..xHiLvINwIvXG6Xg81aeQ9Z81u8aiacqagie7iqy5FyXFSQteDQDQDUT3jHLQUg0xV1RXkUE8yXQpTonwMtw3ZW6Z5rNMAPoON5ni.Pcl86I05V2Zw+ekJUhqcsqgqbkqfzRKMDSLwfst0spywxe+8GuvK7BX6ae637m+7XRSZRnG8nGvau8Vuu1W9xWF..sssssHKe..ADP...H8zSGcqacSq00xV1xhceIhHhHReXKWQTUXMnAM3YtMd4kW3F23F5rb80c6dVDDDvV1xVPXgEFbyM2PSZRSvK+xuL9nO5ividziPHgDhd2uCdvChYLiYfrxJKDUTQgFzfF.+82eL8oOccxVfW8pWE.nHC9Ri5Uu5A.nSfit4lavFaroTetQDQDQDCthnpvd3Ce3ybaxJqrPMpQMzY4RJkyK.BBBne8qeHxHiDETPA3S9jOAwGe7392+9392+9XW6ZWEYvU1XiMXlyblHiLx.IkTRXEqXEnssssXoKconksrkX0qd0haaspUsJQmaZVeMqYM0Z4O8XHiHhHhnRJFbEQUgooKzUbtwMtQw1E.Ko1912N90e8WwBW3BwQNxQvG7Ae.ZUqZEb14+K0TWRlbfaZSaJF+3GO17l2Lt10tFBJnfzZN4xe+8G..W4JWoXONZVeSZRSJqmRDUhIUhDHkSTgDQjEOFbEQUgEarwhzSO8hb8G9vGF24N2QLoRXHzLAAOpQMphbaN0oNkNKa5Se5HjPBApToRm0U6ZWaL8oOcHHHfniNZ..zvF1PXmc1gctycVrkmst0sBIRjn2LkHQFaqbfNgUNPmL2EChHhLwXvUURjsLU3i90rwmu+bM2EExBhJUpvzm9z0afKxjICyd1yFN6ryXbiabF7qkltV3ie7i065OvANfdCtpd0qdH1XiE6ae6Su6mlTvd0qd0A.f0VaMl9zmNNvANfdyDf..olZpXyadyXjibjEYFOjHhHhnRKFbUkDJE.xJGAjU15VIXhJqd0W8UwQO5Qw.Fv.zJoUbwKdQ7RuzKgicrig4Lm4.WbwEC90J7vCGRjHAu0a8V3d26dhK+QO5QXgKbgXHCYHn0st0PPPPqjLQjQFI7wGevHFwHvV1xVvctycDWWbwEGl7jmLpacqK5bm6r3x+fO3CPiZTiP3gGN1xV1h3bYUAET.hN5nQHgDBb0UWwrm8rM3yKhHhHhzfAWUIglo2G1k8Iio.BH.bxSdRjTRIAe7wG3iO9.2c2czrl0Lb5SeZr4MuY71u8aaTdsBN3fwRW5Rw9129fWd4EZQKZA7wGePMqYMwZVyZvANvAvblyb..PKZQKv6+9uO.TO2WsqcsKT25VWL7gOb3kWdA+82e3kWdgNzgN.mc1Yr+8uesF6V1ZqsHlXhA8u+8GCe3CGt3hKnoMsovEWbA8pW8Bst0sFm8rmEd3gGFkyMhHhHh..jHnuYkSpBmGjmJ7g+RNvY6jfE1W1u8ICmM1XCl1zlFl8rmMToRERJojvINwIv8u+8QvAGLBJnffqt5pd22DRHA3pqtVjI5hBJn.jPBI.e80W3t6tq05t8suM18t2Mt90uN7wGeP6ZW6P.AD.r1Z0S6dG8nGEomd5nScpSvO+7Sb+TpTINvAN.RN4jQVYkE7xKuPqacqwK7BuPwddlZpoh3iOdjZpoBe80Wzl1zFzhVzB8lsCuxUtBd3CenVyGWDQDQDURwfqpj394pBSa24.WrWB9x9vfqHC2SFbEQDQDQjgicKvJIzDAL6UfDQDQDQTESL3pJKXzUDQDQDQTEZL3pJIXrUDQTkWxUJ.4JYuvmHhrzYs4t.PkLL3JxXaG6XGnIMoIl6hAQUILgcjM..9eCx4mwVRDQTkYL3pJIptCRvr6Y0fUL5JxHoO8oOl6h.QDQDQVTLJAWsuCbXr6eauHyLuqw3vUkgURj.O8zCzu9FABsSEe5jVpURPsctnirRlLYXKa6GwQN5wQt4lqwtnVkfyN6D5dW6Bds92GXiM1Tja2Mt4svRW9pv0t9eW9U3rfXsToHv.aEhZLi.tVLSNw4jSNXsqey3zmNNTfb4kikPKG0rF0.ub38.uZOCGRsR+8BbEJTfcs68f8s+CgG7vGVNWBsLXuc1gPdgNfgOrACGr2dycwgHhHyHoyblyblFxA3vG4XX0qc8HmbXE5KsD.viyNab539KT25VG7bdWux7w5aVyFvAOze.4rRnkYETPAH0KdI7vG9Hz11TzyyQe0RWAtbZoWNVxrrnRP.27V2F28tYgNz9fJxsaUqd833m3jPoJUkikNKK4kWdHoycdjat4gV2pVn2s4a2vlwu7q6E4KSV4boyxgBkJwUt50v8evCQPsMP8tM+VxE..fd0b6JOKZDQDUNyfa4peaOQC.fQF4afWJrtUjOcTRWJTn.+1d2G99s9CXW+xugP5X6KyGqXh8T..3K97YAeaP8MVEwpTt3kRCy3SmMN1INIF2XGYQtcWNsq..fMs9UC6smUTpzJy6dW71S58Q7mIghc6N0oiC..qXIeI7viZWdTzrnHHHfDSJYL24uPb3+3OwHibn5c6NxQOF..9zOYZn4M84KOKhVLx3F2Du2T+HbxSFKd6wOFycwgHhHyHCNRnadqaC.ft20PYfUkRVas03kCuG.PcWMyPTPApepnMvmmyfKWUU0jF6G..jIqfhbaTpREJnfBfURjv.qJips6tC.Trsxpff.jKWNjHQBCrpLRhDInUsL..fhsUojWf5OGdd+YxMorx654E..69pDQDYXAWoRkJnRkJHQhDXqs1ZrJSUoXWguuoToRC53HQh5wikf.S0ulRBE1E0jvGjfIklqiY9awzSy0xBr6WRDQDYvLnZHJVAHIrJPTUCpJrBnVwfqHKDZt6MerLDQDQFNCtkq.XEMqHfUPp7gJUpeG1JlS7IKDrkqJeHUhDHkOHRhHxhmAkPKTUXKWYE+ACyOIR.DDT+ejICefBkODuJl2awjico3xGqbfNYtKBDQDUNvv5VfE9T7kvmhuI2cdrJ7Q+Z1XIGgo7dyIAgBGyURXvUjkAMObLUL3JhHhHClANlqLtUzL8zSGye9yGYlYl..3fG7fH+7yG..olZp3u+6JVSZqW8pWEokVZkKuVJTIfrxQ.2KG8WAHSwSeN2byEG9vG1nc7JJokVZ3pW8pl7WGiAyY2BLiLx.IlXhk6utlEl4wyYLwDCl+7muQ8XlbxIiacKCKqfZRn48XyTvUm3Dm.4jSNlkWahHhHisJLi4pLyLSDRHg.2byMwi2.Fv.vcu6cA.vZW6Zwd1ydD29niNZ7nG8HC900PricrC78e+2Wt7ZoodOEUcMMEi4pacqagAO3AWp1mKbgKfjRJoR09roMsI7S+zOUp1GyEyY2BbO6YOXAKXAk3sO1XiEW+5W2DVhrLsm8rGLgILAT6ZabSA7KaYKC+we7GF0iowf4tkqlvDl.t4MuoY409osu8sO7vG9PycwfHhnJwLrfqLhi4pSbhSfW9keYL9wOdTqZUK..jPBIf5Tm5n2seFyXFULeJvVPpe8qON0oNUoZe16d2K9we7GMQkHyOyYvUCYHCAKdwKtDu8qYMqAwDSLlvRjoi4LUrezidTLtwMNLpQMJyvqd4OMcqaMcy6px9+9+9+PFYjg4tXPDQTkXUHFyU4me9HyLyDVYkU3wO9whUf0c2cGVast4bCMaS1YmMxKu7zZc4lat3Tm5T5sKDlat4BUpTAAAAjZpop05xN6rQrwFaw9DTe7ieLhM1Xw8u+8KKmlFDMU6oHem1Dz0dr1Zqg6ENguB.jWd4INebcgKbAjbxICEJTHt97yOeHSlLHSlL73G+XsNVYmc13zm9zHlXhoD0hixjISmtJjRkJQRIkDN+4OuAOufUVYJRhKpToB4lq5wR2ie7iwwO9w0aKN4niNBWbwEsVlff.RLwDQVYkkVKO2byExkKG4kWdH6ryVq0ke94i3hKNbkqbEcdMxO+7E+LMszRCm8rmUbBptpfbxIGjUVYAAAAwqgkISldmvie52WAT+92oO8oqzzMWALNco3byMWDarwpy8ckKWt301Oo7yOewt7sFpToBIlXh3RW5Rh+FvSK0TSE+4e9m58ZW884gb4xgrmZBTVgBE3u9q+Rm6uTb+tBQDQTIUEh44pEu3EikrjkfniNZDQDQHFfi+96udCjY.CX.HszRCu8a+1XVyZVhKe9ye9Hf.B.KaYKCCcnCEu3K9h3N24Nhq+Ue0WE+5u9qvGe7Qr6toRkJ7we7Gi.CLPrhUrBz+92ezyd1Sbu6cOw8SkJUXJSYJn4Mu4XIKYIHhHh.CcnCUmez1T5Y0s.MEtyctCZQKZg3eOjgLDrxUtRz4N2YLm4LGLnAMHz7l2bwwc1xW9xw29seK1912NhHhHDq7xZW6ZQfAFHV9xWN9zO8Sgu95K1wN1QQ95lZpohl0rlg+7O+Swk86+9uiF23FiYNyYhoMsogl0rlgSe5SahNyKZlhVtJ0TSEgFZnXcqacnScpS3a9luACbfCDsnEs.W9xWVb61111Fdm24cD+6MsoMgV25Vi4Lm4fW8UeUzgNzAwOKl5TmJN3AOHV3BWHF4HGo39rvEtPzjlzDrvEtPDUTQgl27lq033ZhSbhXgKbgn6cu63S9jOAidziFMpQMpT2UOMZJmGyUuy67NH5niFKYIKACX.C..pak70rl0ny1V+5WesBPXoKconoMsoXIKYIXTiZTnicri3F23Fkak8xJCI3JAAAL24NWzhVzBr7kubLjgLDzst0MwwMaVYkE72e+w4N24D2m6d26hF23FiyblyHtrXhIFDRHgfu7K+RDd3giPBIDwiA.vMu4MQ6ZW6vjm7jwZVyZPm5TmPe6aeEeP.xkKG0qd0Smx229seKl9zmt3eOqYMKz111VrvEtPzoN0I7xu7KK1M.G3.GHt3EuHlzjlD9zO8SK0uWPDQDAXnohciTEMm9zmNpacqKN0oNEV4JW4yb62291GZSaZC13F2H72e+A.v28ceGNvAN.N24NGbzQGA.vpW8pwa8VukVimmYO6Yi8rm8fl27lC.fUrhUfye9yiyctyA6ryN..rfEr.L0oNUrt0sN.nNngDRHAjRJofpUspA.0c4pIO4IiO3C9.C5b2Xo7JcJuhUrBbhSbBwtt4blybvjm7jwu8a+Fl5TmJrxJqvCe3CEC5MiLx.yblyDIkTRnF0nF.P8XA50dsWCu1q8Z5b7SN4jQu6cuwpW8pQ25V2.f5VPYbiab3HG4HnAMnA..HwDSD8u+8GImbxvd6s2jdN+jLUcKvzRKMbfCb.DWbwAarwF.n95t92+9iDSLQcd.FxkKGe5m9o3nG8nhUpbNyYN38du2C6d26Fe8W+0H+7yG8nG8.CZPCB.pCN6G9ge.IlXhvM2bC.p6Bbu5q9p3hW7hheuY4Ke4H1XiEd6s2..3a9luAQEUTH1Xi0ndNWQzZW6Zwa8VuEBN3fQjQFYId+14N2I9ge3GvYO6YEacwsrksfQO5Qi8su8YpJtFEFx8NV+5WO9y+7Ow4N24fCN3...V4JWIl3DmH1912N7zSOwpW8pwvF1vvoO8ogs1ZKF0nFEl3DmH5XG6n3wYMqYM3PG5PhGiwLlwfYMqYgUrhU..0A8GUTQgwN1wJVVCJnfvd1ydPu6cuKQk0acqagMrgMfTSMUXqs1B.fAMnAgu3K9B74e9mi8t28hfCNXrt0sNweefHhHpzpByXtxPMu4MOrzktTwJHB.DUTQgjRJIsFaV8u+8Wqe3b9ye9X4Ke4hAVA.LkoLEDczQK1sfV5RWJV3BWnXfU..icriUqV0wTS0yXLnTdMIBOoIMIw.q..5ae6KN+4OeQt8xjICqbkqTLvJ.f1111hrxJKc55MIjPBnW8pWXiabihAVA.rnEsHL0oNUw.q..ZYKaI5bm6L10t1kw3zpDyTEbU1YmMV3BWnXfU.pqPIf5wi3SK2byEYlYlZUg3268dOLtwMth70XQKZQXtycthAVA.z4N2YzwN1Qr0stUwkEUTQIFXEf5OiSIkTJamXUQLu4MOrnEsHs51lCYHCA+y+7OkaYTzxJqJLaupRnzOIBOu4MOrrksLwfh..dy27MQbwEmXKOEd3git28tiYLiYfUtxUBUpTg2+8eesNNSe5SWqiwSeekvBKLLzgNTw+VhDIHjPBAW5RWpDWVyHiLfBEJzpKGt3EuX7JuxqTxOgM.xUJ.4J43ZiHhrzYPsbUEk47m7xKOb0qdUrqcsKcprsff.txUtBpacqK..ZSaZi35tyctCxN6rwF23F04XZkUVgqe8qCe80WbqacKDXfApy1DRHgXjOSd1L2ww5qu9p0eW25VW8NdTzvO+7C94meHojRBQGczH8zSGwGe7Ptb4ZUIm3hKNrpUsJHSlLwOqz3rm8rPPP.yYNyQqkmQFYTtWwUiUWg8o4kWdo2t0Tqacqwku7k04ZMWc0U7du26gVzhVfAO3AidzidfvBKLzyd1yhrbmRJofNzgNny5ZSaZiVAO8zeF6gGdTtOF2DGigl6K3KAToREN+4OO1291GN3AOnVqStb4HszRC94meloR2yVYMgVjc1YiLxHihLA1bkqbEwLt37l27PHgDB94e9mQrwFqNet9rtux3G+3wCe3CwF1vFv4O+4QpolJN5QOJ9nO5iJwk2fBJHDbvAiF1vFhgNzghvBKLDZngVjIMIisIrC0iIr+2fbtb40iHhHyCCK3pJHShv4kWdvJqrRuckiEtvEhF1vFJ92t5pqh++4jSNvN6rSu62JVwJfmd5IxO+70pUsdRZ5ZIkG7xUoX18rZv5hJN1xo4pFoRkVp19ae6ai90u9Au81aDVXggfCNXrvEtPcpr4e9m+INvAN.hO93wXFyXvgNzgDq.VN4jCZTiZjVeNB.z7l2bcVlolopkqJpqw.PQFXyrl0rD61Y6bm6Die7iGye9yWqwXkFBBBPkJU5MAwXiM1nUhIoz9YbUUZp7ub4xgBEJP.ADfNWW74e9mil0rlYNJdkXk0V8N2byEVas0589me0W8UZ0RyxjIC4latPPPPmDYAvy9ZtYLiYfCcnCgvCObDZnghwN1whssss8LKiOY.ZRjHA6XG6.Imbx3.G3.XEqXEXjibjXiabinqcsqOyiEQDQTIQEhwbkgpF0nFvN6rCsu8sGd5omZst8su8oU2M4IehoO2y8bHmbxAcu6cGN4jSZse6YO6AN3fChcEvae6aqyS3LwDSDsqcsyXe5nW1HUBpsyEcPrl44AzhzpV0pPvAGLVxRVh3xJnfBzIiANkoLEDP.Af.BH.7i+3OhUu5UK1E2ZXCaH7xKuPe5SezZe9q+5uzpafVdvTcM+0t10vCdvCzpK6AndLnM5QOZc19LxHCjd5oitzktfnhJJDUTQgzSOcDXfAhAMnAo007ZJuMpQMBm+7mWqVuEP80wAETPF0yGClYLUr+zr0Va0YtOJyLyTLK3Ymc1AO7vCzhVzBcdnAG5PGpb+ZzRKM87.gRY2Br10t1vJqrBgDRHZ0UgATm.ZdxqAG+3GOF9vGN7wGevvF1vvAO3AKweG5l27lXMqYMHszRCN67+0pO+6+9uvKu7B.pCNStb4nfBJPqG5UZokl3qy4N24fRkJQqZUqPyadyw69tuK1yd1Cd228cq5L4bSDQjIWk1wbkUVYkVi2jHiLRL6YOas1le9m+YL5QOZsFqTOIqs1Z75u9qi4Mu4o0xW+5WOlxTlhXkhdi23MvLm4L0ZaN0oNENzgNjQ3LwxxS+4xEu3EQqZUqzZaV25VGTnPgVa2SFz6ZVyZvm+4et37MSjQFIVzhVjViQq+9u+az0t10x8TlroJ3JkJUpSFJa26d2HmbxQuc+zbyMWzyd1Ssl5.7vCOfDIRDSc5O8mEiZTiByctyUqti4EtvEv92+9w.G3.MpmOVRZTiZjNIkhktzkp0eGYjQh4Lm4n0626e+6WuA5VQigLOWM7gObctu6N1wNPTQEk38O+1u8awctycv6+9uOdsW60f2d6Ml+7meI903JW4Jvau8Vq.qt8suM14N2o362VYkUvKu7BG4HGQbaxJqrzZRd+xW9xnu8suZM0B3iO9nUfyO82YHhHhJsLvwbkoY7mTRDXfAhEsnEgt0stgAO3Ai+u+u+OLfAL.7RuzKgW7EeQjXhIhSdxShst0spURB3oM+4Oez291WDQDQfN1wNh3iOd7W+0ege5m9IwyqYNyYh9zm9ft0stgvBKLjQFYfDRHAwDNPEARJ7Y7KXxSoEEu.CLPL4IOYTqZUKDYjQhILgIfAMnAgqd0qhpUspgSbhSf.BH.3me9goN0opUKZoQcqacwblybPTQEEhN5nQu6cuwe9m+IZW6ZGFv.F.92+8ewu8a+Fl0rlU4dV8Rkp+qxbFSspUsB1XiM3ke4WFcoKcAW7hWDG5PGB+zO8S580pIMoIXRSZRnKcoK3Ue0WEd5om3G9ge.SbhSTrquFXfAhMtwMh+8e+WLwINQLwINQblybFz4N2Y7Juxqf6bm6f8t28h0rl0fZVyZZTOeLTBli4dfhv.G3.whW7hQHgDBdkW4UPRIkDrwFazpx9e3G9gXfCbfnqcsqHrvBCm+7mGG8nGEe+2+8U3a4JMObLUkgfJ9rO6yP+6e+Q3gGN5RW5BRHgDPrwFK1111Fr1ZqQJojB9rO6yPLwDi38SW9xWNZSaZC5ZW6JZe6a+y70n8su8vAGb.u1q8Z3EdgW.W+5WGojB0hmR3...H.jDQAQUJ30e8WG6bm6Dsu8sGcoKcAe1m8YXXCaXn28t2nt0st3W+0eEgGd3hGm9zm9fu669NzgNzA7xu7KCas0VroMsIL24NWwsIv.CDKdwKFcu6cGCYHCoT+9AQDQjDAC3wzcyadKL42e5nt0sNXoKpj+jH0mLyLS73G+XsFCMwEWbn0st0vZqsFW6ZWC1au8hc6u6cu6gcu6cCu7xKzidzC.n9o+e5SeZwz9c25V2zJK0kbxICe7wGc5BfxkKGm5TmBImbxvc2cGgEVXZUwombaN24NG71auQ3gGNtyctCToRkVYVsxhWavpS4y6Xq5lXMJoF1HhB4KSF9t0++fCFoTStb4xQRIkjX2HK0TSEd5omZ000TnPARHgDD6djpToB6ae6C27l2DCcnCEN3fC3l27l32+8eG1au8nCcnCvWe8EokVZH4jSFQDQD3F23FPpTohcwGMhIlXPfAFn33QJkTRAwEWb.PcxDwTLdqdVeVjV5WESeFyDMz2Ff4O2YZTdMSIkTPjQFIhKt3PJojBhM1XgGd3ABIjPzZLBd26dW7nG8HsNuSHgDvoO8ogc1YG5PG5.ZRSZh35xO+7wt28tgBEJzphhm8rmEwGe7nl0rlHjPBQqIJ5zRKM3pqtp0x.T+Yg9RFFkUOq2mKnfBvPibrvVasEe+F0cNlxTJ8zSGN6ryhIiA.0uWt+8uejQFYfV1xVhPBIDbpScJDTPAoUpL+zm9zHwDSDt5pqnqcsqkn2aM0dVuW+1uy6iLy7tXEK4KgGdTa8tMEGkJUJduwZTiZfdzidHdOhzSOcHQhDcRXEYjQFHu7xCMtwMFm8rmEMoIMQqV3KmbxAW4JWAADP.huF6cu6E23F2.ADP.HnfBBBBBH5niFspUsB93iO.P88nNwINAr1ZqQO6YOgBEJPd4kmVi+qibjifye9yC2byMz0t1Us5t22+92G6d26Fd5om3kdoWpT89vy584wsM0YeVlPKHhHKaFTvU+cF2DS4C9H3c8pK9pubdO6cfzKiRvUibbH+7yGe229MU36FRUj8r9r3RWNc7w+eyBMxOewmOaiyDM5SFbUUEUjCtxRyy585IN4oh+4NYhks3Ef53oGkmEMKJL3JhHh.LvwbUEkTwNUwMgVXoQEulubw+kJ1MqEipDJul.xIhHhpJnR6XtxRTW5RWP1YmcYZecs5tiZTqReW5gJcDDGyUFuq4c2c2QTQEkQ63QTogjBGSeBpJ8ShvTImT96jDQTUBFXpX2zL39qpJgDR.4jSNko8s8cLT.X9SnEV5LEYKP2c2cL1wNVi1wyhfXpXmUH0TqrNOWQkNqbfN8r2HhHhpzyhXdtxRwwO9wKxIL1a7.kXmIJCd4pUn+sR2DVw7W3xTuurq8XRwq4IKMZZEVUkgTwNQDQDoM1s.q.QSlwRebHSEvl+IO3bsjhV0JcSsy1YmchSpojoy+EbkTybIoJBduEStx5jHLQDQDoKiTBsnhcEfN24NGt90ut4tXXPdVS6OUFRnEW5RWxB3ygJmOPg3hKNbm6bGycwnbWLwDCxJqrL5G2TSMUjVZoUlWeEIUFRnE24N2AIkTRl6hAQDQzyjAEbkpJIUzbwKdwXW6ZWl6hgAoha0dJ41vF1Pk9OGprzs.+ge3GzpxxSe5SGm7jmzLVhJcLVygvu669t3Lm4LFdA5or5UuZ78e+2K92G3.G.26d2qHWeEYUFBt5Dm3D3K+xuzbWLHhHhdlLJi4JoUvqn4W7EeAr0VaM2ECChXpotHVulA9OSnElVUVBtZricrne8qevZqU+U7u669NslPhqp3m9oeRqIRbikO9i+XstFXVyZVXoKcohuVO85qH6+5Vf7dGDQDQFJCqaAV3.fVhQLsT+jjISFJnfB..PFYjAhO93Q94mud21bxIGDarwhabiany5bwEWfiNp83TRtb4H93iuXGmRW+5WGm9zmthwXY5YGck1amQjb4xKx22e7ierV+clYlIN9wONNyYNCjKWdQdLe58Si7yOewOy0HiLx.m5TmpLml5Ml9ufqL7q4yO+7gBEJfff.N+4OO9q+5uDO9..okVZHwDSDJTnPm8UPP.W5RWBm4LmQq2uDDDDeu8QO5QPlLY..n5Uu5vd60NQnnRkJb9yedbtycNcRjJxkKWbeyLyLwoN0oJxOypHq5Uu557fUDDDvku7kQLwDi300O40VxjIS7Z2qcsqgyblyH9dgFN6rynZUqZh6qRkJQN4ji38Jdx0+jtxUtBhKt3z46SpToRbee7ieLhIlXv+9u+qgbpWhYJSnEZdeQexImbz558G+3GiScpSgXiM1h8ZsbyMW8l3ez28oxJqrvIO4IK2dujHhHx.GyUl1tE3blybvLm4LQu5UuvTlxTv67NuCdtm64vwO9wE2FkJUhO3C9.DP.AfksrkggLjgffBJHb0qdUwsYpScp369tuS7u+nO5iPPAEDVzhVD5XG6HhHhHzpxUW6ZWCAETPXTiZTXwKdwnYMqY3+8+9eljywRpmUrUlRm5TmBuvK7B5r7icrigt10tB.0WKLwINQzidzCrt0sNLtwMNzvF1PjRJon2iYO5QOve7G+gNKOzPCEwDSL..3l27lHjPBACaXCCKcoKEsnEs.KdwK1HdlU58ecEVCuUIF23FG95u9qQHgDBl0rlEF3.GH5XG6Ht0stE5bm6L9fO3CvHG4HQqZUqzZbCESLwflzjlfILgIf4Mu4gF23FKd8YVYkEhHhHPt4lK5W+5GVyZVC..F7fGLN7gOr3wH5niFMrgMDe3G9g3S9jOA94me3G+weTb8adyaFu4a9lX3Ce3XLiYL3S9jOA0qd0SqswTRSKvZnoh8HhHBb5SeZw+9zm9znAMnAX7ie7XYKaYn8su8XO6YOvGe7A4kWd.P88Gl6bmKBO7vwG9geHdq25sPCZPCz53Lm4LGr7kub..LzgNTjRJof268dO7we7Gqy5A.RJojPyadywnG8nwhVzhPSaZSwW7Eeg38P+q+5uP3gGN93O9iQe6aewBVvBPCZPCv7m+7Mny+RBSY2B7wO9wn90u95Drz8u+8gO93iX.key27Mnssss3q+5uFyXFy.95quEYWH98e+2GKYIKQmkOoIMIrpUsJ.nN.r23MdCzst0MrpUsJDZngh27MeScdvMDQDQFaFV2BTLgVX559KqbkqDwDSL34e9mG..6ZW6BCaXCSL3oEu3EijSNYjRJoH9j42wN1A5Uu5ERJojzoq4b0qdU7i+3OhKbgK.oRUmw2hHhHvRVxRvLlwLfJUpPu5Uuvrm8rQe5Se..vCdvCPW6ZWQfAFHZW6ZmI6bs37La3JSXEjBIjPP1YmMRJojPKZQKDW95W+5wXFyX.f5teUJojBRHgDDeO+q9puBe1m8YX6ae65bLG0nFEV+5WOdwW7EEWVJojBt+8uOBMT0yYW8qe8CSZRSBCcnCE.pagfvBKLzpV0Js1uxSF6tB6JW4JwgO7ggWd4E..5bm6L5XG6H18t2s360icriEaZSaBSdxSFYkUVne8qe3m+4eFsu8sG.pCnpqcsqnAMnAHrvBC+we7GvUWcEG7fGTraA9jRO8zwnG8nwgNzgD+dUFYjA5bm6LZbiar3q6l27lw92+9QW5RW.f5.D5PG5.BO7vgSNU4aN6I2byE8pW8BqcsqE8pW8B.pq7+.Fv.zoUQWwJVAhM1Xge94G..1xV1BFwHFgdeXA+xu7KnScpSXoKcoHv.CTm0mWd4gd1ydh0st0gvBKL.n9Z4vCOb3s2digLjg..fSdxShAO3Ai4N24B.0s7Xcqacwq7JuhVeuyX6+RFNF+6c3latgvBKLricrCLpQMJwku0stUzm9zG3jSNgqbkqf4Mu4gDSLQ3latA.fidzihQNxQJdO3mznF0nvHFwHvTlxTDWV94mO14N2IN+4OO..du268fmd5I1zl1DjHQBToREFyXFCV9xWtV6W4I4JU+9qMRqXOFkIhHxvXXIzhxgIQ3AO3AKVAP.fvCObbm6bGwtZxhVzhvhVzhzpKO8Zu1qAWc0UbfCb.cNdW6ZWC.PqtUxJW4JQ25V2..vu9q+Jpe8quV+ntat4Fl1zlF95u9qMpmakJOinqL0i4pQNxQh0u90K924jSNXO6YOXvCdv.P8Dg6W7EegVWKzoN0Ib4KeY8d7FzfFDhN5n05IZu90udwJfcnCcH3fCNHFXE.fSN4DlwLlgY8yAiY2BD.HxHiTLvJ.0sbWngFpVUlNzPCEolZp..XsqcsHhHhPLvJ.fZVyZhYLiYThaUuksrkgwMtwo02q71auwjm7jwRW5REW1K9hunXfU..snEs.d5omZ0pvlLFqLZwS3m9oeBAGbvhAVAnt668oe5mpSWuLxHiTLvJ.fd0qdgzSOcs5FakTaYKaAAETPhAVAn9Z4YO6Yq0mYd5omX7ie7h+sKt3B5V25lX.ClJl5DZglGjxSZ8qe8Xzidz.Pc24akqbkhAVA.z912dbiabC818+ZaaaKrxJqPbwEm3x94e9mQngFJpUspEt6cuK9ke4Wvbm6bEO2rxJqvm+4etY8dGSXGYiIrCyeWalHhHSKCadtpbXv86qu9p0eau81ipW8pC4xkirxJKjWd4oUkD0nMsoMHkTRAuzK8RZs7N0oNA+82eznF0HLjgLDDVXggN0oNg5Uu5A.fyd1yh7xKOLm4LGs1uacqaYVSsxM1coX18rZvVC5SrxtgO7gi1zl1fErfE.arwFricrCDd3gCWbwE.nN..UpTgCcnCgie7iizRKMbxSdxhrENbwEWvK+xuL1912NFyXFCTnPA1111lXWu5rm8rPoRk574v+9u+qY8yAMUtVhQZdtpgMrgZ82N3fC5cYZ5xZImbxhOHfmTaZSav6+9ueI50L4jSFe3G9g58XrsssMw+9o+tG.PcqacK1wRWEYW9xWFsoMsQmk2t10Nc5ZyO84tyN6LbzQGgBEJJ0IGmjSNYzgNzAcVdaZSavEtvED+6FzfFnS4n738aS87bU25V2vXG6XQZokF7yO+PxImLxKu7De.AMoIMAMoIMAm8rmE+9u+6H8zSGwGe7PoRkPkJUh8vfmjl.1zzSBV+5WuXKRkbxICGczQ8lcAu8suMjKWNrwFaLImqDQDQUnGyU.Pu+vpFJTnnH+QRarwF8lH.r1Zqwt28twt28tQspUsvhVzhPCaXCEGGW4jSNnN0oNn4Mu4Z8egEVXXlyblFkyoxBasVBpsyVA2bnH9HyDlPK.TWIu1zl1f8rm8..0oUcMO4Y.f+7O+Sz111V7C+vOflzjlf29sea7q+5uVrGyQMpQgMrgM..fe+2+cz5V2ZTm5TG.n9yAO7vCc9bnKcoK3K9huvzbRVBn4ZdqLRWyquts2SurmrEEJpq4Kpq20mR5wn39tmolIngqfRkJ0aqyHUpTcNWMlm6E062Vas0ZUlLWueq4ZYUlnVtRhDIHxHiT765aXCaPqtHXFYjAZe6aOl+7mOpcsqMdi23MvQO5QK1td5a7FuA14N2IxO+7QFYjAt7kuL5QO5A.TeuCWbwEct2QyadywV25VKSs9HQDQTIkANlqLuyyUd3gGPoRk3N24NvCO7Pq0kXhIJN1cdRm8rmERkJEsrksDsrksDSYJSA6XG6.ScpSEwDSLngMrgHyLyTm95eFYjAxHiLLomOUzooqAFP.Af+4e9Gz4N2Yw0M6YOaLsoMM75u9qKtLMIlhhRngFJt8suMtzktjVieK.0snSRIkjNeNb6ae6JHsbk4IMa+7O+yijSNYcVdhIlHZRSZRo5X7ziasRywnxnF0nFge629McVdJojRINvzxhm+4edjPBInyxSJojPiZTiL+ySfl3GLC.vHFwHPngFJ9jO4SvO7C+fVy8Xe8W+0nyctyXAKXAhKKu7xqXyRq0pV0BuvK7B3W9keAokVZHxHiTrGTzvF1P7nG8Hct2Qt4lKN7gOLryN6LxmcDQDQ+GCbLWYbG+IkEiZTiByd1yVqkcricLb0qdUc5Rf.p6xHu9q+5Z0W98wGevCe3CA.P+6e+wd26dwktzkDWuJUpvq+5uNhM1XMQmEFtxiIBzHhHBDWbwgErfEfQNxQp05t3EuHZUqZkVKakqbkEa4QhDIXDiXD3K+xuDwGe73UdkWQbc8pW8BG6XGCIkTRZsOuwa7F5MKCVdwbOOWMjgLDroMsIb6aeawkke94i4O+4q030wJqrpHeuejibjXEqXEhWyC.7vG9PrjkrDLtwMNSWg2Lq+8u+3XG6XZEniRkJwm7IehAerKt2u6e+6O1yd1CRO8zEWlBEJvblybz5yLyEqJraApxD0s.ATeOV+7yO7du26gfCNXTqZUKw0ou6cr5UuZnRkph89GiZTiBe629s369tuSq6G87O+yiZUqZoyj37m9oeJV6ZWqQ5LhHhHR+LvwbkoOgV7rLyYNSLvANPDd3giW7EeQb0qdUb3CeXr4MuY89DJG7fGL17l2L5XG6HdoW5kfUVYE1zl1j3SMsV0pVXUqZUn6cu6n+8u+vEWbA6d26FMnAM.SZRSp79zqDq7XRD1FarACbfCDe8W+03u+6+Vq0MkoLEzm9zGLxQNRje94i+3O9Czu90OryctSrhUrBLgILA8dLGwHFA70WewTlxTzp6v4hKtfu8a+Vzyd1Sz291WTyZVSrm8rGTiZTCLsoMMS143yhlj3h4Zhy1O+7CyadyCcoKcA8oO8AN5ni3W9keAcoKcQqVMLv.CDe5m9oHjPBQqfVA.BN3fw3F23PG6XGQ+5W+fff.94e9mQjQFI5Tm5T48ojdYrRE6OImc1YrgMrAzqd0Kz6d2a3kWdg8t28hW+0e8hLyJVREXfAhksrkgt28tigMrgo057vCOvpV0pP3gGNhHhHPMpQMvu8a+FZZSaJhJpnLzSKCll4oPASv7b0SZTiZTHxHiTmVObhSbhX3Ce33RW5RvAGb.m3Dm.AFXfn90u938du2SqjrxSJ7vCGQEUTnYMqYn90u9Zst0st0g90u9g8u+8C+82ebjibDbyadS8ljiHhHhLljHX.M0QrmJNrnkrBDbPsEu+6NQiY4B..+8e+2vZqsF0st0UqkGWbwg.CLPsFiBwFarHwDSD0qd0CgDRHvUWcUbcW4JWAUqZUSrqCJHHfCe3CiTSMUT8pWcz8t2cT6ZWasdM9m+4ePLwDCtyctCZQKZA5XG6nQ+7SiWavQB.fcr0MVlOFic7SBO3gODqdUKEU+Ix5VFaYkUV35W+55MkSmXhIhSdxSh5V25hN1wNB2c2cDarwBYxjgPCMTb8qecXiM1nymmwGe7ngMrgn5Uu55bLu6cuKN4IOIt0stEZVyZlVcEQSgm0mE66.GFq8a2HBq6cEiczQZPuVW9xWF0nF0.0rl0TbYZlDr0jfU.T+d98t28PiZTiDW1su8swwN1wPN4jCBN3fQSaZS05XeyadSrm8rGzxV1RDbvAiKbgKf5Tm5nUFY65W+533G+3PPP.cnCcPqDoQlYlIxN6r0IwNbtycN3qu9p2IH2Rim06y4jatXDi9MgSUqZX8qckk4WmjSNYT+5We3ryNKtLMSz04jSNh2qnIMoI3t28t.P8z0fCN3.7zSO05XEarwhfCNXHQhD72+8eCoRkJloGevCdf3337UdkWQm0CnNYrbzidTbu6cOz111VsZslryNab0qdUDP.An0qY5omNb1Ym049SkFOq2qm0bW.NWxmGexG8AnEAzrx7qyyhLYxP7wGO5PG5fNOPtLxHCru8sO3niNhNzgNfFzfFfKcoKgKbgKfHhHBbu6cOjUVYgF23Fq09kZpohpUspAu81acd8xImbvIO4Iwku7kQ8qe8QXgElIMQV7rdedbaSclQ8+MHm065IhHxxfQYLWYkIZdt54dtmSuKWey0Tsu8sWqzS8S5oqfnDIRP25V2zaVWSCO8zSz2912RQo0LqbXbS.nNse+jAC7jzLN1dRO4mIO8SWVi1111Vjudt6t6n28t2kgRpogwraA9jAKowSFTkF56875Tm5nUKU8z7xKuzpUQzWF0r90u9E4mI0t10VuUn+oq7uImA1vUMu4MW7+OwDSDKbgKDaZSaB8qe8Sb4e0W8Un6cu6h+cCZPCz6w5IuV9ou2jat4FF9vGdQtd.0sJ9S959jbxImz66sOclizTn7nKEC.Xmc1o2Iib.0SE.O4XtD.nwMtwhASUT22we+8uHe8pV0pF5QO5gXhtfHhHp7fgEbUEfwbEoV4UEjppybOlqnxtl27lirxJKLzgNTL3AOXHWtbbzidT7K+xufniNZycwyrg26n7gTychKgHhnxEF1XtRLeIyJZRUMnYLWIgOPASKSPlHUpToXO6YO3W9keAm3Dm.4me9Hf.B.yXFynHaM1pBjXhSE6jZqbfEcpkmHhHKGFXKWoYv8yJZZpk7sUfsDe9nodZMdi1YuNqubpWAVkmlIZUI7AJTojDIRPe5SezIMcWUllVgUfy+SDQDQFLixjHrQcl9jzKYJDPV4HfGlOq.j4D6VfkODu0hQLaAREO9fYHhHhLbFmfqnxrR56gZ1phrplZZIE9YhIEasVxRiUFgTwdtEv66PDQDAXfAWUyZnN0Ye9yeA72YbCwmpOUxnTkJDW7mA..t4lqE619rhYRSc8yI27LFEspjdvCTOo5V7iyG0ePHSVA7gKTFIWt7m41n4i.EJUhBJn.SbIxxUlEld4Ktqo0zJr4jatkoWiUc77v6tyrwFOc9ko82Rfl26LliQPhHhpbxfFyUMqo9iF3S8wUu10wT9fO1XUlpRpqcIzRz1UT+3sO9Te7uYcOLkO3iLlEqJ+rwQH0Eufh6eMHQ0ytR8..91.eJx04S8Umhs26uuer2ee+FgBXUWOm25l140vQGcD0pl0.+aV2CCMxwVNVprL4WC8sHWWC7o93zw8W3qW0pwWupUWpO1t8JeErxFawwR4d32V7zMjhYkd9TDSsADQDU0gzYNyYNyx5NakUVg1Gb6Pt4lGt28tOxWlLiXQyxmDIRPspYMvq1yvw.5eefUEyS87lOPIR3FJgmtXEZ2yo6DgYyZp+3NY9u39O3AknVFnpBmC8CfiMp6vJmpMjeqDJ1s0opUMzpV0RLtwNR3jS5eRxsN0wS3fCNfacq+A4kGakvxBarwFzH+ZHdywMlhrEakHQBZ5y+73l23l3QO9wPoRkkykRKCt5pKH310FD0XFAbzQG061z3F4GxImbwc+2+ExJC2C2l50VH0NmghGdKTveGigVjqTxd6sGM848Gu83GMb1YlU.IhnpxjHTEquMYs0parNEJTXlKIkNm5ZEfuMVYn0daMF+K3f4t3TofRUB3s9grA.PMqlD748hU5Qepr9cBCUU0yaise5r4i8mpbzylYKhH.6L2EGhHhHyJlxypj3YlPKHcH0JInNtn9RbuqtTybogHKSNau5ui4h87tSEG4JEfbkUodVlDQTURL3pJIDCth0eoToo0QcPU96ACthHSAoEdOIa3WwJVSXGYiIrirM2EChHhLwLnDZAU9o0dYC7smVC60c3VQECGrQcM+bjuuQjIglfpr0Z9jeJJZZwJo7oiQDQV7XvUURXuMRf81veXtzRSJp2FVwOhLIrsveEwN9crhzsdj5DxR00eNEgHhHKHraARVzz7zz4SUmHSC4EN8FZM6VfEoimt5jlh+dxmmIQDYoiAWQVzrovqvsm0ogHSBaK76XEvjtndc9+QANVZJfDHAcswr+ISDQV5XUNqDKe4BHeEBvU6kTjStvU0IqvJ7YEe6gHSBubScSVkullvh..v8xQENZ5Ef8eAEP.B3kddafWtxl2iHhrzw44pJwNzkJ.+vYJ9I8yRxbOyNSLeruKT7S7v73X4dbV2aTc..L5Me+JDkmxqiS+Zs5IJ5h5dAUVOu3wohww4aiMObpqo9Zqt1Xavq2Z63CAiHhpBfsbUkX2OWUvAajf7jWkJ9XhHpBuFVKoPlBft2DaPibm+TKQDUUAa4JxhVFOPIlyumKFU6sCA6isl6hSERUU+NQU0yaisqjkB7EGHOL5NXGBp976XDQDU0FSnEjEsbKnJ0yNfnxcpJ7qXNZK+4DhHhH9qgjEMEENF6ql87RchLETpIOVvgSDQDQDCthrrooSu5Hy.xDYRjWg49AYbreRDQDwfqHKaxUptBeJYVhlHShGKS8Wtjx46.hHhHFbEYYSyXtRlRybAgHKTETXKWUMlKKHhHhXvUjksGW3z.lcbt6jHSB6KrK2pfsNLQDQDCthrrorvTYlC1vtrDQlBNZm5eFQJ+JFQDQDCthrr4nspqwWAJ4fsmHShByZLVyVGlHhHhAWQV1rW87DKrkOVchLIzjzXdPd7AXPDQDwfqHKZZptmDIL3JhLEJnvjECmvtIhHhXvUjEN4EVwurxgi1dhLEJPg5+0dNtFIhHhXvUjkMMU7SShsfHx3RyvYLONIBSDQDwfqHKaZRjEbBNkHSCGsQy+xuiQDQDwfqHKZElHyfLE7opSjofcEFTkqNvfqHhHhXvUjEMmrScE9bwdVwOhLExuvtCnBkl4BBQDQTE.L3JxhlldCny1wK0IxTPSaB+XYr0gIhHhXMNIKZxJ7oomuBls.IxTvZ1nvDQDQhXvUjksBeX5YWf4sXPjkprko9eYNigHhHhAWQV3jV3U3rdeDYZnInJEJY2BjHhHhAWQVzzLNP3SUmHSCIE9cKYJLukChHhnJBXvUjEMqK7Jb4LSlQjIglfqjyg0HQDQDCthpZPFq4GQlD0xI9yHDQDQZveUjrnIsv9CHSVfDYZTGmU+yHbtjiHhHhAWQV3piqpuDmi4JhLMr2F0+q6NwujQDQDwfqHKZtWM0Wh6li7RchLEzjj.syZ9cLhHhH9qgjEMakp9e0DjEQjw0CySczU4ww0HQDQDCthrroo9dVK07VNHxR08KL3pbkalKHDQDQU.vfqHKZ2OW0QWksLNAmRjoT.V.nK...B.IQTPTgTMC0J9ULhHhHFbEYY6Q4qN3p7UvZ9QjoflDZgT9qIDQDQL3JxxlME9X0kvDYFQlTJ4PthHhHhAWQV1bvF0QUwTwNQlFOJe0sJbAJYqCSDQDwfqHKZZRnEJTZdKGDYo5wEFbkL4L3JhHhHFbEYQSyXtp.FbEQlDZ9tEGViDQDQL3JxBW1Z5xRrleDYRX0S8uDQDQUkweOjrnoPk1+KQjwkMENGxYq0bfMRDQDwfqHKZZRjELMQSjogsVq9esyFFbEQDQDqxIYQSySSmOUchLMzjzX3WwHhHhXvUjENaJ7Jb6s17VNHxRkcE1s.YRigHhHhAWQV3joP8+x44JhLMpqqpitJe4bfMRDQDwfqHKZt3f5+MeEl2xAQVpruvwZEishHhHhAWQV37vY0WhW.CthHSh7JbxCVI6VfDQDQL3JxxlMRU+T0kwGqNQlDxUpN3ppYG66sDQDQFsg4elYqBG9hEfT9GEHqb.FZ6rEcrA1Vr6yZiIOD20K9lTHxfsiGGdbJyGmv72lhc8k2kmJhGmmkJqmWOqiiFiaaOtBQ4ox5wo1E15vNXq9Ctpx54EONU8NNCLP6PWabI69FDQTQwnDb0dSQF90yIGpDDLFGNhLZTU3kjNYOajVhLETvtCHYgn5NxVekHxvIQPvvhHZWIkOhNE4..HXerFg1Haf2tJsB67Jj0VqNdREJ3fvopfjusBr7+LO7g8vA3aMY9XWepp9chppm2FaIbSE3aNVdHpWvdzFue1sTLQUTIHH.IRpXV2EhnJOLnZad06o.QmhbHARPTgXGBrd7GVoJVzLdPTxgbEQlDYKS8WtrVJqTJU4FCrhHxXvf5qTGLU0sXU2Zh0LvJpBobKPcvUxXWWhHShBT+y.vQ9S.DQDQFVvUWNS00XsS9wA.JUwziko9esSp4sbPjkJGJ71+JXqCSDQDYXcKvI1EGP9xEfGNwlRmpXRYgYzBGrgWiRjofC1p9YzwdEHQDQjAFbk2twlCfpXywBSOzEnjYxRhLIJLmHYM+4.xBysdn5listtxrMKQTIGuiAYQy9Be7A1xGqNQlDZRZL2OW9.LHKKeVz4fOK5bL2EChnJYXvUjEMMU2iIAJhLMJnvjESdxYvUDQDQL3Jxhl7Bq32+lCq3GQlBET3zDlcUPmaCIhHhJOwfqHKZZp3mJUL3JhLEzLbFyWA+NFQDQDCthrnoIQVH0J9T0IxTnZ1p4e42wHhHhXvUjEsBSjYLaARjIhMElrXbwdFbEQDQDCthrn4jcEVwO6XE+HxTPVgcGPEJMyEDhHhnJ.Lnfq978mKly9xApDXqBPULoo2.5jc74HPjofl69+XY72AHhHhLnIQ3qeO9nJoJ1joIMQqPEXC0Rjwm07qUjEpZ6L6wCDQkdFTvURfDH.A0iqEdOHphnBeX54Tf4sXPjkpryW8+xbFCYoY18zIycQfHpRH9LGIKZRK7JbdgNQlFZBpRASZLDQDQrNmjkMMiCDI7opSjIgluaISg4sbPDQDUQ.CthrnoY7fHmCOPhLIzDbkbUl2xAQDQTEAFzXtxbRPP.2bu6.2b2aE4jVpPd14Vh1u8zFu..v9Bt9lxhWUFVYi0v9Z6ApQ6CE0evQAm7tAl6hjdIi07iHSB2chOiNhHhHMpTFbUAO5AHgoDIdPRm0bWTpxSkbEH2adSj6OsEbiedqv2w9NnQi5cM2EKQVW3.BQgEbrUO7hIiqskuA2O9ShBt+8gfxx1IaU0G3fQ471JIvN2bCt1pfP8GzXQMZY6L7iYkDd5r5fq3jHLQDQTkvfqDDDPBScj3AIcVXqqt.eG2TgmgFNrsltCIkfAVi0Vq9TVgBN.ALFTjWt3QW57HieZC3e12ugq7+VBTkW9nIu8zM2EM..3oqpq3mkXlLSPP.WbEyEWeyqwbWTHUBP18tOx7v6CYd38Au56fPyl5mCIRkZtKYlb1ai5+0cmr.+RFQDQTojAEb0GzC6AP4aEWu0A1EdvYOCrwEmQveWzvQOqW42KNoCqcvQTiV1NTiV1N3dngiyMiIhq8ceC7nKgC2ZVqM2EO3d0TGbU0czxqqKk5xmM96uec.VIA0qeCAd22gAmpuevJarozcfJ7AN7Rm55lfRYEXFwyaAEJP123p3l+51weu0uE27m2FjHQBZ1GNeC9XWQmljDncbBuhHhHxvRnE9VSqgu0z5RTKFYrbqcuc..zfw9tLvpJXpa25E790FN..t5lWkYtznlsE1vA0pZVVU76AWHIw.qZ0BWKZ1T+b3heOeoOvJxnPh0VCm8oQv+INCD3R+NHQpTbictUb+y8Wl6hlI2CySczU4ww0HYg4VOTEt0C400DQkNU55VfON0yA..OC8kKw6yzl1zPrwFqVKqKcoK..n8su8X9y2x+oKWd445+vQFaei3AIbJycQA.+WFLyZKrdm001h5fW890FF73E5dod+qp9chxiy6Z0tPf2CZD3u+90gqusUipGv+yfOlUjc+BCtJWNQcSVX9rnyA..+uA4rYtjPDUYRkpGmufBEP9iyFvJIvd28rDuecsqcEG+3GGG+3GWbYZ96t0stYJJpUYUs5oNaAVvCdnYtjn18xUczUYKyxZBN8AmQcvqd26gVl1+ppemn757tdu5.A.vCR3zFsiYEUR4PshHhHRTkpfqToPN..jXkTHwpRdQ++m8NuCqot9+i+NIrWxPjghabiHJhJffJHREQw5.z5dWqJVas09ywWsZasUsNpiZqVm0Ucz5FbKHBNP.Q.AAEEEQ1q.jDx82eDRzXFjP1v40yCO934bumymjbO2y4y47YDP.A.O7vCQJ2CO7.CcnCUoIeDv6cfeJsCkYJuZdJWUMGsC4QYAqhKF..l15Nzft+lpiITWetMqteWpotemZLC+.ZACcpYSHPf.ABDTMzjY5vUu5UKSkQnwE5W21pqFcKP0B7C25JhOV0TcLg53yMs5BVFfaiKk5EG72GkFXF.f.ABDHPnQE5TJWQU2r3MjEJ+w6XsGd3ABHf.TVhFAsTLVedOrzXLTrqnzTcLQS0O2pJJqZduWlUsM9Ujj.ABDHPn9PmR4JEkOb2oaJrC8Dde.sfSsZV4PaklpiIZp94VU.e+YrF1DkqHPf.ABDzshVf7s+jFnMd8g6XMYmpaZPY04yU0PTtRrzTcLQS0O2pBXU2XqFYt0HABDHPfPCBER4p0eElfCWJrrgZBzSGwtqH6RcSKJuNSVhMYkeRjlpiIZp94VYC+.ZAaNZV4f.ABDHPPa.ER4pWVDWTKEkbGX3JszxvN988fDS5wfKWY2KnYTKGLc.TCKNXbSXpxWm9Q7m66uUn6mfjYV08ux6uQVas0XDCeXHnOI.PWNhFjRC9OdwVK2ePtx0tI9uyddj26xWlt9YA.JH+eGKMZpNlPU84tgNNfOznQCN2wNfEuvOG1ZayUdBlRF9gh8ZTwafQAEVH11u863oomA3pkDMRIn4oE11bD7HFNF1PGBnojibQsvbciMMVRb8zYgy9XVnJoXxtNaKC709YhTamTxiC15MpRpWCocHsSio1oi1x.KsdZGogFwmq9q8eH7nDRTtTrhPieJpnhvAO7QwQO9oTZsowFvaxQ1ZwlE3IN4Yverm8IyJVQnoATTTH8LdF1y9NjlVTjIXnhsdg87WGBo9zzIJVQPHdW9Ef8tuChi+OmVo21qMHyvZCxLkd6ptvNKnKUEqHPff3QQmNiFEUCelp4e7JPsTTX6iyLAg7ZYgoNyOGLYxD+9N1BrwZqj46icEkiq6WO.cCM.C81YzPDYBpAhnesA..CKtrk46ghhBO7QIhedCaFlXrw3.+0uqTjkq8TV3DOpFDVeLDC1YCTJsoxF9iGV7h9Bz+94NXHCmZWC46XBpWTzeiJuhJvLl8W.iM1Hbv+Z2JSQSoRNkTKV6kYho1OCgmsS0MFaJyXtnpppF+0erCXt45tK3kfxCtb4h6c+GhMsksqTm2nwB0xkBEwjB1XJMPuwV9Hg.AsXT6AzBtb4BlLYBZznIWJVwC9ghcxKIZrAMZzf68tW..fYUR+3ZkGzqtbZrALTZMoRmpq6yqrpXEglFXtY7TfnpppVCKIRGyMh26iqnFUWePQQI36AhhUD3Cc5zQ+6WeAfxcdiFKvfNMXqYj0KQff5F09J4detphLfmfpm1ZCuGw4adfZiv2+xHlIKAcQXxh2+pJM+H9iMTV9hIABDHPffpBEZlJ95GIOFVHe6kuAcD0DasmfbhAL38HdoUo89rCQ4JB5xTUcISNSTgafAQ4JBDHPfftBp+StptIIoQljjfZ.l0svOs4.ZAcF7rYQt0pEKjDHHApst8DvZSTgJWoHaJGABDHPffZDcJyBjRAShvDZZAEEEJt3xfd0THzmaEZZwQhPN4JB5xPiFEnUaMvPFptmeImbEABDHPPSxxOWEX4mS1VKoBEPK9Z+MBTTuOnAHKP1ARBpZprRlHl6FGdRpogpXVEZE.h8b.obKKfqt1C3g68FFXf1SjCjdcw7Stb0dMcQBD9PnnnPZOMC7nDRDu7UuFsgKWbtCAbGqsBcqqcA8su8FFYngJs9inbEAB0OI9FdYxaWcTsGqxHPnQOEToruFMEZDX6rtAb6JxoOQBFFDpGx9kuBm4eOmfHKlQlXJJgsgnYLXhxJqLDUTwfjSNELtwDBrwFq0vRKOHmbEAcIpt5pw+d1Khm+7WHnLNzMD5C1nnhJFQem6h3SHQLlQORzpV5nRoOopaiGnohykVDH7g7lR48NYGaltgR86717hXh6NLy0vRBABMsQ8GJ1UFAzBx7qDDC48t7wIN4Y.G1bP6ZWavfGjOnF8sF+PDLwT72HnGy2hqdsah28t7wQN9Iwzm5mAyL0TMsXCF04yU0R74JBZ4Tas0hiexyf275bgwlXL7cfdAJq5.18c4ho0O8giLxG2NpXPN47ZbzicRLkIEFrytVnv8K4jqHnIXMWpR.nanrhBjxRIPffRFMP.sfrCjDZXDYjQhksrkI15nnnvEtXDfCaNnG8naHzw8ovtVXqfvCckrog1zZmvTlTXvImZEpn7JvUu1MUiRujgNs5N4JJxIWQP6lXt68vadctvBKr.yXpSBt0qdhRpQe..nudLPaZsS3ylv3PO5Q2.GNbv+ctKpTVzGQ4JBJJRa9CBDHPPYhNY.sfXVfMsHxHiDd5omX3Ce3H1XiUrWyKx9kHu7dGLybyvmLL+E7LRQUxaQY7Wem95qOFUveBnyfNRM0mhxJqb0xmAoAwr.InnnNV3HGNbv8t+CA.vHC9SfEVva27KoJdO2pOCdi4nSmNFdfCEVZoknvBKBOM8mov8M4c+DZnHKyePf.ABJST6JWwe244ua8ZS3s2diu+6+dMsXHB6ZW6B96u+ZZwPsyGNo38t28j50lYVOG..t5ROfd58dqcM+J3snL89fG2L2bygycri..HqOvuQzTzXLfVbjibD3gGdHTYomd5nu8su3e+2+UsHCUTQEnu8su37m+7pk9SSf5bgiu7U4.VrXA6s2N3TqZofxalQ7FbYvGDXiXvfA5cucE..Y7rLU3998mbkbD8jHzjF4Y9iFCve1CZD+lf.AMNpcetRgLKPp2+5CUAwGe7nScpSJk1Z+6e+nG8nGvc2cWgaqW+5WiDRHAkfToaPd49F3omdJ1IDiN5nER4I9D5DlD5QO5I97Oed3ookhfx83y9Q3xm74vOe8FEj4CDT9.8YvHfg8IXoey2fabsqnZ9fHi7EK5q.PiKet5su8sH93iWnxXxjIdzidDJnfBTKx.GNbTq8m5jHiLRr5UuZ05hFKt3R..fCNXmPkauDb1eGcvdd2WIknv886UtR2cgiW7hWDrYyFiZTiRSKJRjLxHCDYjQhoO8oCSLwDMs3zfPZiMjz7G0G6cRJCIS0.GNbzzh.ABD9HzoLKPUMG5PGBe9m+4Jk1ZIKYI3rm8rJk1hP8ij7IixK3k..fCqpEpb9J2SoEbZQMULKv1111h+9u+aLjgLDMsnnyhz1Md9KbTU82WrfE..fcticJT4d0md..ffF03Epbu81a..bmnuSCtO4SigT3wu+6+N15V2plVLjJO7gODgGd3nrxJSSKJDjSHwyBBDzdPCXVfZuSRNlwLFz291WMsXzjG6bvQDSLwfKdwKJhok4s2dCNb3HxeyctyA..adyaQnxO7etE..D2CdvGc8yC..aYKaVrsm57ulJJWYokVhPCMTz912dMsnPnAPwEVH..brksRnxMvXy...EWgO4UGcjmoCVTQEpv8MIfVPPVIf.BPtm+PR+MyCWLl4gKViOGgz9i.ABpGVSPlh0DjrEgoUnYp9kqxDqKhJAKNx9VlPUmOWQSQ74JMnhYrYyFwEWb34O+4JbTvpzRKEIjPB3V25VHiLxPkYVXUTQEHlXhAu7kuTkz9pJj1jjeLcxYd9PURO9InpppRP4lWWdLsxZd+09t7K.Yk0K.M5zQ6aWaUxRs7ilV4pzSOcDSLwfbyMWMR++wTVYkgXhIF7t28NY9dJt3hQLwDCJszRkq9hhhBolZpH93iG0TSM0+M7A2WJojR8egJYTlKbTd+K4jSB5omdnMsos3U47ZAkG4s34qW+6+dJAkwhEKL8YLK..r5+2pT3ENpNUtpfBJ.25V2B4jSNp79Rbv+YRVrXIRcLYxDO9wOFW8pWEIlXhfISlxTaxlMa7fG7.DarwJWiqjDUTQE3N24NH8zSWtlGrlZpAolZpJb+KKHOyezX.Zz.5p8LP2cfrADDHnJvdyoC6MW1FeoPiBeUwbwqJlKjGKqR43yUpF5RW5BVwJVgPk4me9goMsoghKtXDZngBKszR3kWdAmc1Yz7l2bQbN+O6y9LXgEVfxJqL7y+7OCKrvBQdwd1YmMl3DmHr0Vag6t6N7yO+PW6ZWgyN6LN5QOpbIy+5u9qvBKr.qe8qWj5t+8uO5cu6MrxJqfO93CZe6aOZdyaN10t1kb0GZZ9vII6e+6uXuFGcvdz111FTSM0fy7emGrXwF..UT25S3GPKpnhJwY92yA.f93lqvDSLVkK+0GuOOWo9TtplZpAye9yG1XiMnacqavGe7AN4jSvc2cGW8pWUnq0e+8Wheuymu669N3fCNH0E6kSN4.KrvBbtycNAkQQQAKrvBrqcsKjRJo.u81aXiM1.e7wG3niNhtzktfjSNYI1lm6bmCcoKcA1ZqsvGe7AMu4MGt5pq3RW5RRUdqpppvblybfUVYEbwEWfGd3ArvBKvHG4HQ94muHW+W8UeEbyM2PUUUElxTlBr1ZqUJ9SYCEMwBG0We8g6t6F..N64tHprteqKstnEHSV7iLmT3JW6lnvBKBMyxlgt1EE2OV4qbkpzbxO+4OO5XG6Hr2d6ge94GZaaaKr2d6w+7O+iHxxvF1vPaZSajn+7MpQMJXmc1grxJKrsssMXhIlfKcoKgnhJJXhIl.SLwDTbwEC.fsrks.KrvBTas0hEtvEBas0V3hKtfR9.eUiISlXwKdwvN6rCt4laHv.CD8oO8AN3fCX4Ke4RTAm7xKOLhQLBXgEVf92+9Cu81a3niNhgMrggjRJIAW2ae6agIlXBl5TmJ..ZW6ZGLwDSvu+6+tPs2cu6cgqt5JrxJqfu95K5V25FrzRKwrm8rE6X+gNzghILgIfW+5WC+82ezrl0LL8oOcY3WCkGxx7GRhVXNMzBy09rxFwAcZzvhGjIXg9pa5qbDHzXBcKyBTPRDV07xtJpnBTc0B6aNLYxDokVZn+8u+vBKr.wEWbn3hKFIkTRXLiYLXricr3.G3.Bt9u669Nb1ydVXhIlfvBKLb1ydVricrCA0WTQEg.BH.7vG9PbhSbB7l27FTRIkf3iOd3latgoLkofadyaJSx6O8S+D9lu4av27MeiHgg4ie7iiANvAB6s2dDYjQh7yOe7vG9PL+4OernEsHklukoNIf.BPrJQxmQL7.fIlZBxN6Wg8cfCiTR8on3x486IGVUg3eThXu6+vnnhJFsnE1hA4q2pKQWp79nEn5Q4phJpH3qu9hibjif0st0gjSNYjZpoh0st0gxKubDTPAgniNZAW+3G+3wCdvCjXPUgCGNXe6aeHf.BPpNAOWtbASlLAa1rEpblLYhHhHBLjgLDDTPAgzSOcTXgEhniNZXu81CO8zS7nG8HQZussssgO8S+Tzt10N7e+2+gbyMWbu6cOLpQMJ7oe5mhCe3CKV4H+7yGd4kW3zm9z3W+0eEYjQF3ku7k3XG6XH0TSEt4laH6ryVn6o5pqFUTQEXgKbg3xW9xX5Se5XO6YOR7yp5BEYgiMD71y9iVzBaQQEUL12A9ajRpOEUWCuSXhEGf2l26vIN4+h3iOAPmAcLxQ7IJkSahuxCppStZCaXCHjPBA95quHlXhAkTRI3d26dHzPCESXBS.+vO7CBtV5zoi8rm8fJpnBL24NWQZqsu8siKbgKfMu4Mi1291iwLlwfHiLRzu90Ozyd1SDYjQhHiLRXt47Bk8rYyFUWc0XcqacX+6e+XRSZRXu6cuvJqrB.7F2DZngh8u+8iMu4MibxIGvjISjUVYgkrjkfe9m+Yw9dwm7jm.2c2cjd5oiCbfCfW8pWgG7fGfksrkgjRJI3u+9K34barwFDYjQhu669N.va9iHiLRgB9FG7fGDCZPCB1Ymc3rm8r3cu6cHkTRA+5u9q3Tm5Tn+8u+hbpXUWc0nlZpAgDRH3Mu4M3a+1uUnuKUmTeyeHNVaPlg0FjYpHIh.ABMZgRAXAmnbp4bzxnphEWY9dx8s4QM1vlB0WrnuRt6upyOOpK6Qqotl+cWtuWYgV1xVR8UekvxU+6e+oXvfA0xV1xD683iO9P0oN0IQJ2JqrhZkqbkhT9u7K+BkAFX.0KdwKDothKtXJiLxHpYMqYIT4Ke4KmxFarQnxV0pVEECFLn13F2nHsSQEUDkkVZI0jm7jo3xUzeaN1wNFECFLnhO93E6mIEkK6QqotrGstAcuiMroPM1vlRCtuKrnhn18etOpeb8aRveq6m2rP++CejSPUISlM39PYy+2J+dpwF1TnR8ooKy2ih7c7RVxRnL2byE6u+O+4OmxXiMlxUWcUPYkVZoTlXhITgGd3hs8N+4OOECFLntwMtgfx1zl1DECFLD55xN6roXvfA0oN0oDTFWtboXvfAECFLnN6YOqHscokVJk0VaM0zl1zDp7bxIGJCLv.pPCMTJ1rYKx8clybFAs69129Dptu3K9Bpl0rlQ87m+bw1esu8smZlyblBU97m+7oL0TSo5PG5.UlYloX+d3iQQ9MhOJ53AUAUTQkTG3PGUv3oe5W1L0p23eR8K+51ET1l171oxLKQeGWCkm+hroFaXSg5q9lkqzZS97zm9TJ80WepUspUI152vF1.kQFYD0qe8qEpb9Ois+8ueAkkbxISYjQFQM6YOaQZmfCNXpAO3AKR4+xu7KTLXvfpMsoMhcLYTQEEECFLnN8oOsXku9zm9P0st0MQJePCZPTcpSchJu7xSj5txUtBECFLnlxTD9YqidziRwfACpbyMWgJuvBKjpYMqYTgDRHTrXwRj1KszRixbyMmZQKZQBUt2d6Mk4laNkO93CUokVpXkekAZiiSHPfPSWT+QKP9l2QCXGHoDDoAUphT8hIlXBV0pVkXqa3Ce3HyLyTH+7QZ7xW9RDZngh1zl1HRcVZokXnCcnR0Ln.ffc+aaaaa3q9puRj52vF1.3xkK90e8WEqYzDZnghd26die7G+QYRl0kvZqrByb5SFCK.+PKaoifFc5fNEWPmACzt10FDxnFAlXXiElXrl2b.4CC0nOWkat4hctychYMqYA2byMQpussssXkqbkH8zSGu5UuB..VXgEXricr3HG4HhbpS.7R6.st0sF95quMX4xSO8DAGbvhTtEVXA71auE4Ty13F2HnnnvF23FEanUNjPBACaXCSjxewKdA9y+7Ow+6+8+PaaaaEa+8+9e+ObvCdPQ74lpqtZ7se621jOfbXpolfIMwwiOIvgB6rqEfhKWX.mx.GV0.SL0T3t68FyY1SCsuch9NtFJpx7b0pV0pfSN4DV9xWtXqO7vCGMu4MGaZSaRnxCIjPv7l27vhVzhP1YmMpolZvDm3DQm5TmZPQEvIO4IK1wj7yObiXDiPr223F23P5omtPiMu90uNhJpnvJW4JQKZQKD4d72e+wDlvDvsu8sko26r4MuYTYkUhMrgM.80WeQpuyctyXVyZVX26d2Hu7xSn5XxjI13F2HrvBKp29g.ABDZLftkYApgvc2cGFKgEi6niNB.fJqrRYps9se62vAO3AEacu8suEImbxhXZheHgGd3XSaZSH7vCGye9yWrWy0t10vPFxPPyadykX6LvANP7vG9PYRl00fACFn2t4J9zPFAZceBD4YkOvMeBBgLxfPW6Rmz5RC.zYTmxUpAetJpnhBrYyVp98v28ceGXxjIbxImDT1LlwLPQEUjH9xTwEWLN24NGl5TmpB88pO93iDqyQGcTjwW25V2B96u+nUspUR3t.l0rlkHkEUTQgZqsVLtwMNIdeCbfCDb4xUHeRgOgFZnR79ZJAc5zQub0EL8o9Yv8.FOdqMCFd3+nvmOmYfg52ffYlJaQTIYE9IXaUQdt55W+5XTiZTv.CLPr0qu95CO7vCwZZpaZSaBsqcsCScpSEKcoKEYkUV3Dm3DRb9Bogjd1ZFyXF3t28thUolJpnBDczQCJJJgB.HW4JWAFXfAX7ie7Rr+NzgNDd9yetLYpkQGczvCO7.crtjut3X7ie7fCGNhje6ZcqaMIJ7Rf.glTn9ShvJPdthBp1jHrjvZqsVh0wOXDPImAaim9zmhnhJJjTRIgrxJK7rm8LjYlYBJJJ3hKtHx0SQQg4N24h8su8Amc1YbricLrxUtRXokVJx0lVZoANb3f4Mu4Iw9OwDSDu90uFb4xsQW3MN2beKtwshBYmMuSdwN.7va.7vaRCcoyNiA4oSitSB..f.PRDEDUq2vJw78llB96Fu53jqRO8zA.fyN6rbce95quncsqcX+6e+XjibjBJ+nG8nfCGNBbD9FJ02XrOd7UVYkE5W+5mTayN24NKRYokVZfACFXcqacR793G0N+3nqoYlYFY22qiZpgEh6dO.OJgj.SlLg8.3dWE3A2fN5XG5.7YfdBaatMJs9SUkDgKt3hQQEUDt+8uuXUFmOokVZhMZRZngFhicrig9zm9fniNZr+8uew9bmrvGtYFhibxIGb6aea7fG7.jUVYgLyLSjd5oK1nLa5omNZaaaqDUXTd4YO6YXvCdvR8Z3aMFYlYlBUd884h.ABDZrgBobE+o4jG0JTk6.opBokQ2kWkpxLyLw7l27vMtwMfQFYD70WegyN6L7yO+vfFzfvl27lwie7iE49JszRwANvAvoN0oPO5QOfKt3B9pu5qvd26dE55pt5pQkUVInQilTWrtKt3BbwEW.SlLgYl03wgcSHwGiKG40.EWtPO80GlZsC3kUX.5f4UgBeWtHszRGO+4u.iNjfQ6ZqxyrkTDTmgh87yOeXfAF.iLxH49dmwLlAV8pWMJrvBgM1vagyG3.G.93iOh0D6jGjmwXb3vAUTQEBjAIQyZVyDor28t2A5zoK0uqoQiFlwLlAZYKaoPkWe8WSEJp3hw+bx+EEUDuncmglXFJpVyg8lvFkWRgH8zy.OKyLwvCbnvkdzckRexUYjBODC7C.CFXfARUQDe80WIVugFZHzWe8QM0TiX2rKYAZznI1mWA3kZBV7hWLNzgNDnSmN7zSOgKt3BFv.F.7zSOQRIkDBO7vE5dJrvBkX60PnrxJqd2XA9AniONADSF2Pf.glZn1O4JnHm9jJNZAppo5pqFAGbvnxJqDW7hWD95quvPCMTnqQRmnGCFLvEtvEfe94G.34WUKbgKDgFZnHf.BPv0YjQFAarwFz291WctPtthRlY9bboKeE..zW26MFn2C.2HKZHwDqACYnFC6LrZD4UuId5SSGm7zmESaxS.1ZqjMcRkEKaYKCCYHCQnem9PTmJW0l1zFvhEKTTQEI0SKRbL0oNUrpUsJbjibDrvEtPjZpohG9vGh8su8ohjVwid5oGZQKZAd8qesTutW7hWHRYst0sFb3vAae6aWt2U+FamvaCgpppJbrieZTZokhVzBawvFpefl41gu+RLwH5ugnG1xF2NpXPhI9Xb9KDAL1XiQG6fh6iZTpnMki+opDP.Afu8a+V499YylMBKrvPG5PGPu5UuvLlwLPhIlHbvAGjq1QZVxw7l27vYNyYv9129vHG4HEQIGwku0ZcqaMtwMtgbICRiN0oNI1wSeH7Oo2O1zA01LCacMpu4OHPff5gketJ..vODb8efDJzpEVheFgucnFCCjCeLVgN4JcbkqhKt3P5omN17l2LBHf.DQwJ.dleg3vbyMWfhU.7lv0We8EyYNyAUTQEBcssu8sWr9KxGRLwDiH4nKcYps1ZwkhjW9YxWe7B962ffgFZHrrNWenFN7LqqOMjQft28tANrYiHupxawGRiXiMVL7gOb3omdhHiLRQpmQc9bk5HOWwOXLDarwJwqIlXhAt4la3ZW6ZBUN+7iC+TOvANvAfIlXBFyXFipSfk.sssssdC7K26d2SjxZe6aOnnnvSdxSj38kWd4gSdxSJR3Xm.vMu8cPokVJbvA6wTlTXnUsxQXnd7deLKN.lYpoX3ANT3qOdA.fKboqH1ffBeV1xVlXGS7wnpRhvlXhInEsnERLMCvmKcoKgKe4KKR4KaYKCO4IOAG8nGEaaaaCVZokXJSYJJbBlmOUUUU3e9m+AKXAK.SZRSRrmdTFYjgHk0gNzA7129Vol332yd1CbwEWjojkbW6ZWQhIlnTSz828t2E.h2bbIzvo9l+fOTTTHw2vAONWNR7ZHPfPCmBpjBETor8tcEZlp1Zsdn81nGXHGJJQohLuCcAJrvBA.jnS3mSN4fG7fGHSsEMZzve8W+EJpnhDYGWmzjlDhKt3DLY2GS5omN7yO+vQNxQjCoW6lLdVln7xJG1Zayw.5+6Spp1YAumyX8Ay2LrgNXXjQFhW9xWg7KnP0lLdu6cOwNIo57jqBHf.fM1XC1111lDulUtxUhTRIEw5D5yXFy.IjPBHwDSDG5PGBgFZnRM2VopXBSXB3QO5Q3JW4Jhsd1rYisrksHR4iXDi.lat4XiabiRrsm8rmMl3DmnTMUwlhTcM0fDSJY.ZzPvi3SDDfEXxh2jMeXxj2yAzO3fC1ClUVIRI0mJw1TVW3npR4J.dQouSe5SKwSl4F23FH3fCVjSB57m+7XqacqXqacqnScpSvTSMEG9vGF25V2B+xu7KJEYqrxJCTTTBBbReL0TSM3hW7hhT9Dm3DA.ubtk3npppBqZUqB0VasRMnvvmwO9wibyMWbricLwVOEEE1xV1BbyM2PO6YOq21SWg2TJW7lRUeI2cogjl+fOb3BryaWE98njb.wh.ABpGT+ghcAAzhFPnXuNSJTW3bqLv.CDIBmwewpeXRGlOYjQFHv.CD5omdnjRJQl5i1zl1fMtwMhcu6ciae6aKn7YMqYAGbvALoIMIQ7eqRJoDLm4LG..IF5g0FPO8zSt96a9VdI+xCdf8A80WeAk6ta8B..iYrgJnLSM0TDczQA.fQNpPj69Rd+6CSHu.hNIo5T4JSLwDrzktTb0qdU70e8WKxNre5SeZbqacKrjkrDwtK4AGbvvZqsFyblyD4kWdXZSaZpbYVbLqYMKz7l2bLqYMKQNgpJqrRLtwMNXu81Kx80rl0L7ke4WhSbhSHRBEkKWtXu6cu3hW7hXdyadh3yUM04ku7UfhKWzZmZErwZqDTNm5zpxTCE9My8xUdAlmrd9Kp21t9V3nhLuQ8wRW5RgAFX.F8nGsHmV4qe8qwbm6bgM1XiP90TN4jCl1zlFF8nGMl4Lmofx8vCOvJVwJvpV0pv8u+8EpsLzPCk4nJKeryN6PqZUqvQO5QEIJxle94ivBKLAoLgObdCmc1YLwINQr4MuYQR10TTTXcqac3cu6c36+9uWDYDPzne6HFwHvvG9vQ3gGtHJYxhEKLgILAjZpoJwz+g5Fk06tasMFfVaiAp74HTj4O3iR5vRIPffR.09VypKFPKZHzst0MbnCcHAgj20st0AmbxI7+9e+Orl0rFjPBI.e80WTUUUgm7jmf6bm6fMrgMf28t2g0st0gIMoIgErfEf92+9K09YNyYN3jm7jXlyblHojRBFarwvPCMDW6ZWCiYLiA8qe8CCbfCDt5pq3gO7gHpnhBFXfA3fG7fvUWcUc7UgZAKrfmyaWPA4KT4FZJeGLW3Yd3ecZCQ+M9ok.9NsuplkrjkfxJqL7i+3Ohyd1yhANvAhl27li3iOdbiabCLpQMJr10tVwdu5qu9XxSdxXqacqnCcnCvKu7RsHyeLFarw3ZW6ZHjPBAd6s2vO+7C8rm8D4jSN3l27lvQGcDG9vGFcu6hFPEV9xWNpnhJvJVwJvgO7ggWd4Eps1Zw4O+4QAET.FwHFgH4zHsIzTmnVe62.vHG4nwwN5QvTm7DDTt0syML50dcDxHFFxKk2uION5XKwm+EgiHi7JXbiIDYpO3uvQO7vCr5UuZA9Yhp7jqZdyaNtwMtAF6XGKbwEWf2d6M5RW5BhN5nQ7wGOrwFavoO8oEb5Q0VasXBSXBvDSLA+we7GhzdKe4KGW5RWRvoqxOPOzst0M7u+6+hu3K9BXhIlfEu3EKSJvum8rGL7gObz0t1ULxQNRnu95iLyLSDQDQf4Lm4fidzihPBIDLkoLE7Ye1mIXCO10t1E3xkKl27lG9se62fWd4EnSmNhN5nwSdxSvJVwJvXG6XEpu5ZW6J.3c5sd5omvc2cGgDBue616d2KlyblCF1vFFFv.F.5cu6MxM2bQTQEEprxJwQNxQv.G3.av+NPf.ABMVPmJTrqp84pu4a9FQVL1bm6bkZTWxUWcEqYMqAl9Q40kcu6cicricfqe8qKTnUekqbkvau8F+0e8W3l27lnUspUXnCcnXaaaanKcoKn3hKFkUVYn3hKVPjmZnCcnRM3C7W+0eg8u+8izSOcAJL0oN0IDWbwg+9u+a7vG9Pbm6bGXqs1hktzkhu3K9BIZlIZK7g4rEYg+6bWDojRZ33m3Dvkt2MAk+j2xAa6lUgydlSfta+6eb+l2NZb26dOrxUtRDwktfRStEGCZPCRnce7iW3Xpo+b..o5OCJSnSmN99u+6wvF1vPjQFIhO93wyd1yPW6ZWwW9keIF9vGtTu+O8S+Tr0stUolqr7xKuvZVyZDpLKszRrl0rFgFiQiFMrl0rFLfAL.I1VAGbvhUIot28ti6e+6iidziJXiCryN6vO9i+Hl3DmH3xkKVyZVC5cu6sP2GCFLvu7K+BBJnfvUu5UQ7wGOprxJwHG4HwnF0nPPAEjLKCMkn15FSx3iTtSO8EejmTu5LaP4crr3PUpbE.ubYX7wGONwINAhO93wCdvCPG5PGvXFyXvm+4etPaBSlYlIBJnfP.AD.rxJqDosXvfANxQNBN9wONRKszDXwBe0W8UvXiMFQDQDvVasUfYU5qu9he3G9AIJa96u+HkTRA+1u8a3IO4IvDSLA8su8EKcoKEd5omfhhBqe8qGImbxB8dcSLwDbnCcHDVXgg6bm6f3iOdPmNc3u+9iCbfCH1MWqKcoK33G+33u+6+F2+92WnM2yVasEm4LmAm6bmCW+5WGIlXhnEsnEH7vCGgFZnBBE6eHyadySiX1vJim4..l6wJG..6NLyUJsWCg5a9iOFsfCNj.gl7PiRY44sxHomwyvxW0ZgycrC3GW6pjq6k4ayAQMJufgVaEFzkjtCHSPyQD8i2jrCKN4Of.LtIvKeI8OGUTSmTZDSr2C25VQCWbo6XDCeXBJO4b4fe6VUgucnFi1ay6WT3ANzQwadSt3SG8HQm6jjSLlJC3O4njlT7214efaG0cvW74yACxGY6jfTjuiUTV25VG99u+6Q1YmsbGUzZJgx32nF53AUAY+xWgibz+AMu41fYOy2mWydzq4feOppvb7xHzGmdeht8NwDGtcT2A8pW8Dexv7WrsortvwGDeB3m2vlQucqW369luTI+IiftNppwIZSJWUeJUwhCEV3Iq.5yfF193Z7jdUHPPaA448ApcethqV7IWQP2kN2IdIE2mjRpnnhKVP4rqk2yLeXf3KqmmMdyaxEFZngpkbcU+6e+wEu3EQLwDiXmXTc5yUJJ0VasX+6e+HjPBgnXUSLbpUsDFahwnfBJDY7rrDTd4Uw64V8X792KWSMrvChm2Ff0Ymq+MuvCO7PpiQTUIQXBDz1o9l+f.ABZen9CnEJCethnbEgOBar1J3hKcGbqkK9mS9unz5Rjk7ijY0TmE2k6ayCm8b7LCvAzeOfAFnuXaOkIqe8qWpSJxPGP4pxKubTVYkgu9q+Zjc1YiUu5UqoEIBpYnSmN7Z.8C..W3hWF48Nd9sH65FaYRcCkXylM92yddvrxJgCN5.Ze6aqDaSYcgiuW4J4HuePfPi.pu4O3iBjAQIPffRFcSeth.AwP.9OX7129Nje94i89WGD8o2tg7YzJvfkdnr2UHhHoLwiR7wfhKWzwN1dz+94tlVjA.Oez.P84yUMDBJnfPLwDC..1111F5V25V8bGDZLh68wM7hreId1yxBG7PGEdz29.tVzd.tFiJpnR737dMh4twghJpXXrwFgPBV59u2GGwFkDjSth.ABDHnIYMAYZ8eQ0gBob0FuNSTMaJ70CwDXj9x1jd7iHZzaHgTWhxUDjBFXfAXxe13w4uXDH8zeFh4twAf3fS.3V499qqO8wM32f8QqHjACnaXVfabiaDYkUVnu8sunCcnCZZwgfFBZzngOMjfwki7ZHojRVvXr1BfK+p2ec1Xi0XLe5nfkVJ4fAj7.+MkitVxXVBDz1fNMftZOCX.4vcIPPkf8lK65snPJW8ph3hp4PgZkCcd3aVfzH6.IAU.FZngXLidj3U47Zj7SREY7hbQwUTMr2JSPGaWqPOcoGv1lailVLEBcAkq7vCOfGd3Q8egDZzCCFLPPeR.nWt5Bh+QIhm87WAlUVIL1HCfC12Bzst1E3RO5lRMx9werAMhYARPMRKLW2YcJ5yfFV7fT+QlQBDHHJZPyBrAjDgUDSJjPSJbpUsDN0pVBKeNKr+3pAyLPSPqrT6bgY72nA94.NBDzEnkN5.ZoiNf6kMKr26ViHQKPkI7UthgJJTrSff3XsAQh5dDHPP9QglohuNNxSzbWghVfDHHmvUGH.Sx2I84xU60mqHPPRvptGaqlspayA3Rr3ABDHPffNBp+sATATthhDJ1IHmvoNKsqfJ0dOUHcgnEHABRBV0kuVMPOU26kU0IQXBDHPf.AkEp8Yp3mo6y9kuTP3xl.AJJJD4UuA..rwZqUZsaM0svOsYKtiuS++jTRCb3vQCKMDzVH+BJD..VXtlKAlJKv2maqlipaPVyrf22AYlYVnppqVk0ODzsnVtbwEtTj.P4NuAABDHnHn184p101VitzYmQZOMCLq4tP45dMiUEHL.jWAEIHirSP6iYU2+1P+MZzgDrRSV3mDgYnEeXmd6U+wIO0+hDS5wXBSdlxz8LKvKulPFGn8hhNNfO8rmtn3BiJDyLf2+ZpAptAYt1yd.Gr2N7xWkClxzmqJqeHn6x3F6n0zh.ABDH..MvIWQiFMr3E8EnWt1SA42GYFs3SeffhSKrs4XtydFXXCcHJs1jukjxRdBokpYZlEVfu8a9RzlV2JhuHRP.zoQCcsycBSZhiWSKJRE8pamKrvHU2yt5qu93a+5EitzYmIgicBBgiNXOVzBlG7av9noEEBDHP...znjmnQwGwhOUEnJ1TXSi1TXlgpd8zp3kYh6Ltg.irqEv2ydeUd+QngQD8qM..XXwksFVR.t0yXgi7fZvW6mwvYaU6GTqJCsouiIHdZp7aTzYwBG5d0fubvFitXWimwXDHPf.AB7Y4mqB..7CAW+QQTEZlvEOXi.WJ.ikwDHrBCIfVPnAhoFPbDdBDTEve24JuFs2SGl.gF6TKWJj7aqELnCzC6IaxAABJajm.ilBMBrsVSF.SP6F9gI5p3vEZhfiIABM1QEFj.IPPixaJkWTpzwlo8O2QMb.14sqBFoGMr0wRxOWDHnIQmR6HRRDlfbScazPkrzrhAABMVo7Z38ujTPEgFarlKUI..1cXZ2QrSf2eBxjkGQfflGs+sig.AE.F08DN4AcBDTMveLFGs3fFCABDHPff5Bcq0bR74JBxI78CDxiLDHnZf+PqZHonMBDzXn.wlLBDHnjQ2R4JAPVoLAYC8p6Ib10pYkCBDZrB+MtfMWMqbPf.ABDHnMftkxUjclgPCjpIq7i.AUBsvbcqoQHPf.ABDTknaMqHwr.IHmnWcdYesDcqHPPkfc0obUyLl7dYBDzzPFERfflGcpnEHABxKNTWHzkDIyHPP0fQ0MKhslQFjQf.ABDZbxZBxTY9ZUHkq17MXhJYQgubvl.SMP0OwJUcAaTxT3DjUZtY7TtxZS0sNjVBDzUfePBz.FjwXDHnofAcZnq1y.FqOYERDHnJvd4vD3UHkqxoXtnBVTfCWJHOp77xWkC18e9WHqmmM3vQ1CwTVTcYX7.HmbyCiaBSU9EXBpElUc+q79ajkMqYvM2bESLzwBKsrYJEYwf5FKXiVrxUkWdE33+yow8evCQwkTpLE0mlE3kWSHiCzdogNNfOzoSGs1oVg4N6oiN1g1q7DLkLkTEOatsJ1plD0cwkTB96idRjPhIhRKsLkd6SP2D8zSOzwNzNLmYMc3TqZoJoOZg45NJpXr9zvhGjIZZwf.ABPC4yU6Z26EomQlxkhU7PPZxSYKRDzBnjRKE23l2FaYa6To0lrpyWqXnE+Hyl21NQDW4ZnnhKgDNcIH.tb4hWj8Kwt+y8ooEEoRIUw6eYphRT2aYa6D251QQTrhfPvgCGj1Sy.6Z26Qk0GqMHyvZCxLUV6Sf.gFmnQ74prd9K..vQN3df95quLeek8rTwc+r.QqbrE3eN5ATQRGAEkH5Wa..j6eidaduCKbwKEol1SUZxRQL4ocUkrnfUZoap2SRIU..rwedcn0N0JPSFBXKQzu1.ZP9+Nlf5iF53.9TKWtHrOa53kuJGkoXozQUuwEokV5..X6aYCvN6ZgpsyHnyPMrXgIM0Yirdd1ZZQg.ABDDB09IWUKWtfKWtfNMZxkhU.ePRxiDs.aTh80svItJwSuohp4obU0bz9OQnV0RGkIEqHzz.Fz485Ytb0tC0kFU2qwU0tbUyss4p1NffNEFZfA..n1ZIIwPBDHncgZW4Jp5Vn.M5MftlnbEA4D8qaa00lejgdciEHKRfftH7esrpJcGvetBJsbkLIPf.ABD.zDJWU2Lwjcnmf5.9QNIs4PwNCF7OgBs+SWi.gOlxpl2ysrpU077K+4JH9iHABDHPPW.0tOWoPJWQN4JBxIrp6vf3nEenPz0QL+KBD9Pps1ZQ1u7UH0m7FXQQUgmkh4vQ8aq.y6UYA85deuxzbgIPf.ABDTUnPJWwWGG4YNOxIWQPUSs0VKdbxofzdZF30uMe3TMbPDmwLjcGaC5ia8BVYkkZZQTHHJWQPWiDSJYbyaeGvrxJA.f0.HyGAj4ihFN3f8Xn9OXzRGcPozWzp6XmoHmrKABDHPPCwxOWE..3GBt9ifnJjxUKbPFgZ4BXlgxthR728Q5M.kqHJlQn93c4mON8YNGJt3RDTFC.Tdw0f6e+Bw8eviv.8Z.vKO6mVyyQB74JtZwGuFAB0wkh3pHgDRB..1ZayAcKaER4c5gtaSUnr7dNxM22hC82GGAGTfn6cqKJb+QiVc9bEEYyGHPPRvtVJjRd0B8oCzM60HABZBDZTSAUJ6avmBMBrMVI+2N+cejl1rSvPPmj2keA3PG9XfEK1n4M2Fz+94NRuJ6vUdJEFSWqBrdWZHoG+DDUzwfpppJLT+GrlVjA..C5L..4jqHn8Srw8.jPBIA8zWO7IANTzit0UDUVrPb2qFzi9YD5kC.2Jp6f6e+3w4u3kg0VYIbvA6Un9jXVfDzT7lR48NYGal1aRnmOUxhB671UAyMjF13nI4lKBDzjnABnE0Es.oo.QKPRRDtIKW4JWAKaYKSjx4xkKNy+dNvhEazktzIL8o9YvkdzcXjIlCJ8LB1XmCHnOI.D5XGMnyfNdvCeDx3YYpA9DHJzqaiFHAzBBMTjz3BkIUVISD0chA..idTi.8nacE..5W2qxMTedoWC+GxfPe5iafasbwUt1MU39kXVfDTTZniOVykpDq4RUpBjHBDHzXF0txUJhYA9dHJW0TiHiLR3omdhO4S9DDarwJR8OIkTQQEULr1ZqPvAEHzSOdmppg5QSn+s8susXHC1W..b6nhQMI8RGhOWQngR8MtPYRJolF3vlC5XGaO5XGZufxYwg2+p2G7Z4A4i2vHiLBu90uAEVXQJT+RhVfDZnnNGePf.AB7QCjmqTDyBjL4ZSM3O43vG9vw8t28j30k1SeF..5mGtKPwJ..83uq5efEr16d0SXjQFh28t7QIkTpJQtkGDnbEIOWQPFQVGWnL4U47Z..zktzIgJ2XC38t7Z9fGeMv.8Q6aeaE59ZnPuNqbfKwmqHHinIFensfVhqDqSSrwFKV+5WOxO+7UZs4ANvAvIO4IUZsmpjqd0qh0u90ipppJMsnnyhtUdtRPnXWIJPDzJQZSNFczQC8zSOg96t0sqj96ueBU9h9xuF..dNfAHnLCMzPjPBI..f9+Akqo9iNChOWQP1PdGWnL+6RW5x..XjAGrPkGfW8D..ia7SPnx2wN1A..V7hWbCtOAHlEHAYGk83i8NIqvdmjUZ74Hj13iF6PQQANb3nVO45adyahUrhUf2912pzZysu8si8u+8K22G+O+pSN6YOKVwJVAXxjoZseaLgFvr.4s.R5MDeth.AIf90MQCG1rEp7JK5M7p2PSEpb10ccZCSPQLKPB5BveWLM0zOZrT077IEFFXrPky+5pp5pUn9k+FwQFePffjow5dOesqcMXjQFgXhQ8YF+N4jSvKu7Rj20oI3PG5PvHiLBO+4OWs0mcnCc.d4kWPe80Ws0mM1P2xr.Igh8lLDP.AfXhIFbwKdQ3gGdHTcd6s2fCGNB8W25d2..P7w+HgJ+pm+X..37QbUgJePCZP..HxHhPj1Rc+Gi5FKTKYm4ITOHuiKTl+Mu4MG..r9edCBUdJoyaR+c+G6QPYrXwB94+PA.vYN8oZv8I..85hllDethP8gxd7wLObwXlGtXM9bDRa7AAkOe1m8Y3V25Vn8su80+E2HjvCObbqacKXgEVnoEEcVzflEH4jqHT+HsIK+PZWaaC..R7wIKT45UmhKrX+9c890uIWTXgEACMzPXu81oBjZ4i2exUDethfrgrNtPYR25ZmAnQCI+jTQdu6cBJmScaJfoeP9N7AO7Qn7xJGVasUvAEbLF+8giDJ1IHqnIFenogL5f.AUKqIHSwZBR1NMSExln15MYhxqgBKxWigEFIaJK89nEn72eB14RxIW0ji.BH.DP.AfHiLRb8qecQp2MW6IhKtGfzRKcjRmdJuEBB.lr3qLOuqq5ZpAW7RQB.f9zmdIPwFMIzoyaXHwrmHHuTeiKTlXsUVgd6lqH93S.m3j+KF2XBA1aWK.+CbkefsHwjRFW6F2F..CYv9nvVZ.IIBSngh5b7glFCX.zU6Y.yMT6e8Q27l2Dm7jmDYkUVPO8zCsqcsCe1m8YBoHLSlLw9129PZokF..N8oOMRHgDfyN6LBHf.DTl95qOBN3fQ5omNt5UuJhN5nwQNxQDp+ppppvgNzgPrwFKd0qdEL2byQG6XGwLm4LQm6bmEQ9RIkTvMtwMvzl1zDqoA9xW9Rb4KeYDe7wirxJKzt10NDVXggAO3AipqtZr28tW3yyxHhy...H.jDQAQkO9.WbwEw94+Uu5U3BW3B35W+5fACFnW8pWXhSbhvImbRv0TPAEfie7ii3hKN.vy7.swFaPu5UufWd4U89c7wN1wfkVZIBLv.Q4kWNN7gOLt90uNppppPu5UuPe5SePv04+reL2+92G26d2CewW7EBU9N24Ng6t6N7vCOvae6aw9129PrwFKXvfA5cu6M5e+6O72e+kpbURIkfyctyg3hKNjYlYht0stg9129hwMtwAF04+4ZqXu4x95EUnUVlSIbwqJlKpUNlySgxyUDZxS.AD.V+5WuHkat4lgAOnAB.f+6bWDQemXAa1rAm5d1zLCoiWkyqwAOzQQAETHr01liAzOsicz7844JxhGIzvPRiKT13+P7Est0NgJJuBruC723eO6EPlOMEXXkYimmZh3fG9X717BJJ3s2C.N2wNnv8IIfVPPQogN9nElSCsvbsekU.3MG2hGjIXlCv35+h0f74e9mC+82ebvCdPnu95iJqrR7G+we.O8zSrfEr.AWWUUUE10t1EN24NG..NyYNC10t1EtxUthfqYSaZSX6ae63rm8rvEWbAKZQKBm+7mWn9KwDSDssssEKZQKB4latnMsoMfFMZ3u+6+Fcu6cG+4e9mhHi24N2AgGd3nzREMZBe9yedzyd1SrvEtPjPBI.6s2dDe7wigMrggPCMTTPAEHvr5DGW7hWD8nG8.6cu6ElZpon7xKG+7O+ynu8su3t28tBtt7yOerqcsKAaJvgO7gwt10tvctycjoum+we7Gwe9m+It28tG5d26NVwJVAppppfwFaLNxQNBF23FG72e+w69.qP3CkwvCObQJeQKZQ3BW3B3Tm5TnyctyXG6XGv.CL.rYyF6XG6.AFXfXJSYJRLJClTRIg9zm9f4Lm4fDRHAXqs1hqe8qiIO4Ii.BH.jWd4ISe1zEPs6M+JCethbxUDDGt2G2PUUWMhN56hnhNFb23tGrvZ6PyKiNt5oKEUVdY..vVaaNF+XGMLv.sCm0jDPKHnq.CFLPXi+Sw0uYT3gwm.RM0mBfmBG.PxEv6ZL1XigeCwG3RO5tRoO4mSDIlEHA0MqMHyzzhPiJN+4OO9y+7OwLm4Lw1291EDvDpt5pw5W+5w5V25f2d6MBKrvfM1XCRN4jwUu5UQfAFHNzgNjXOwlJpnBL24NWL4IOYrrksLzgNzAgpKnfBB1ZqsHojRB1Y26MQ4pqtZ7IexmfErfEffBJH3niNVux+Mu4MQHgDB5QO5ANxQNB5V25lf5d1ydFBJnfvBW3Bk38GarwhniNZb7iebDXfAJn77yOeL7gObLrgMLjat4BSM0Tz0t1UjbxIiCdvChYLiYfHhHBzt10t5UF+PxM2bQvAGLF23FG15V2pPmLzu+6+NVxRVBFzfFDRN4jkYq34AO3AXCaXC3m9oeRHEvXylMV4JWI13F2HprxJwoN0oD59d1ydFFv.F.5d26NtwMtAZcqasf5t6cuKF+3GOBN3fazj5DzsRhvDkqHTOLPuF.l3DFGZUqZI3vlCJJuWCyp5UnxxKCFahwXfd6Il5jm.rvBy0zhp.3+RsZkmi.l.AMDLXv.C0uAgOeNy.CYv9hl6TmPEF6DZUG6FFQPAh4OuYpzTrBfjDgIPnwB7OElku7kKTjnyHiLBqd0qFssssE+y+7OxUaFWbwgfBJHrm8rGzwN1QgLC4abiaf2912hsu8sKjhU76yEtvEhZqsVb+6eeYpuV6ZWKLwDSvktzkDRwJ.fN1wNhae6aiHiLRId+kTRIBNgmODas0Vrt0sNvjISAmTmxf6cu6ggLjgfsu8sKhI2Mu4MOrt0sNjd5oKWemGQDQfku7kKxIaou95i0u90ioLkof+6+9OjbxB6+6qXEq.Farw3xW9xBoXE.v.Fv.vgO7gQ7wGuR8yulDER4J9OBKOS4oP44JBDjAZSqcBS9yBEKbAyEcy6fPd1LH3yHBCguf4Au8p+ZcgWTFLHmbEAcW3ugY5oh1pNZ0s4CTjwGDHnSCeEb36GUeLG6XGCye9yWta2u9q+ZwVtYlYFVwJVA71auEa87OIrLyLy5sOxHiLvst0sP3gGNbvAGD60Xmc1gYO6YKw1vbyMGSXBSPr00qd0K..7l27l5UVjGVwJVgDqaQKZQvd6sG+9u+6xb6YlYlI0Sm6m9oeB..6d26VPYYlYl3jm7j3a+1uEVas0h8970WeQu6cuwN24NkYYQaF0uYAp.JWQBnEDjEpnhJvci89Hszy.UTdEvN.D0EoiWlrSnut6F5XGztBupDyBjftD0VasBLKP9J7XF.dQ5.uH8Tv0tNwr.IPffnDRHgfku7kiYNyYhUtxUhIO4ICiM989Hl6t6tb2lsrksDcoKcQr0M3AOXL3AOXQJupppBolZpXqacq.P1l6MiLx...8su8UpW2vF1vv1291Eac8rm8ThlemM1Xi.YSYgCN3.5d2k76g0SO8fat4FdzidjL2lCX.CPpgnc6ryN3jSNI36K.d98F.vPG5PkZa6hKtfae6aKyxh1L5TJWQfP8Q5Y7LbtyeIvhEujDLc8zGr3pGziaU3EuHa7hWjM5RW5DFwvGlVyIXwOO9PTthf1N0Vas3Xm3z3ku7U.zngt10NCFV4DtR5zQfcrFTvqx.u90uAm+BQfRJsLLPuFfB2mDyBj.gFGz4N2Yb9yedLiYLCL+4OernEsHLfAL.DXfAhQO5QiN0oNI2so81ae8dMQDQD3ZW6ZHt3hCO6YOSPfS3iMOMoQ1YmM..b1Ymk50Isbik5NoDKK4oqN1wNhKe4KC1rYKSqIRVaS9eeA79SpLzPCUpq8O+7yGLYxDTTT575Hn1UthacAzB5Mj.ZQcFfHsFc4fbBJCxJqWfSclyAPQAmctivau5ORqLKwQeXM3K8gFJ+Moinh9tHszRGrYyFiaLgn1F.urksL3me9I1ctQfOWQTthfVNW852Bu7kuBlYtYBBE6OJG1nlWWM5ROLFs229fDSJYbwKeEDcz2E1aWKjZDCTZiK3y6illDkqHzzBYY7gtFAFXf3Eu3EH5niFQFYjH5niFqd0qFKe4KGidziF+we7GvJqrRlaul0rlIw5xM2bwXG6XQbwEGr0VaQfAFHBKrvfiN5Hb0UWgs1ZqTuewQ8cxRRSAE0cpeQVTVh+mGYcyqjm1jOLYxD..yctyElXhI068ygCGslM+tghhobUCvoqHghcBpBXwhEN6EtD.EE7b.8C95COao94LYA..yLwXzE26MZe6ZKNzeeLjYlOGOJgjPucyU0h7EarwhMtwMBO7vCr5UuZA4oC.hYARP2fhJtXD+iRDznSGierg.6ZQK...6Z4MAPwLo.rAv0d1CTSM0fqc8agqeiaiN1g1KwMwPZiK3CIOWQnoJxx3CcQLv.CvPFxPvPFxP..P4kWN10t1EV0pVEF6XGKt10tlL2VRaCRm5TmJRLwDQDQDAFxPFhHWa4kWtL2O7Owl5Kbg+rm8LYtMU0HKxx6d26fiN5HLv.CTps4GdBe7ixg96u+nm8rmxT+nMxxOWE..3GBt9ihnJjFNKvGiw2NTig4FI669uxwmqj6akPibRHojQULqBsrUNJPwJ.fOdytswFqQfCi2t.FSrp+P948t28vvG9vgmd5ofnJDIOWQPWfTR8o.TTnGcuqBTrB.fUs792pY+9Aat2G2f4VXNJpnhQtus9ycIhabAeduxUjSthPSSj13C9vtVJj3a3fzxiiZV5jc1vF1.N5QOpHkat4liu4a9FLwINQb6aeaTPAEnv8U4kWNt90uNl9zmN7yO+D6ZNexSdhL2d78qqHhHBodcZSIq5bxIGg78oOlpppJb6aeaz0t1UYtMiKt3PkUVoDqOyLyDO+4OWn1juhVO3AOPps8ANvAvd1ydjYYQcSAURgBpT1lGRgTtp0Vw.s2F8f9LjcscduYAp.csNjsXxlMaTc0U2fqmEKVRs9Fqnmd5IW+86+9e..fM7yqWnxm0rmK..7bHAInrdz8thRKsDTdYkC6r2A4tuZH+EczQKzmuObxxmkQ5.noixU0TSMnlZpQh0Wc0UqP02XG0wyqRaL1x91kJT4yYdeA..l7DCUPYFXfA3ZWkWx9bze5XZPiKDcyGZZnbU0UWMXylsJq9FynoFanIl23iUxpzpnvNucU3.wo8tdgadyahvCObvgi3U.rW8pWfhhRonbEeSQSRQmN.fie7iKysWaZSaPfAFH1291GJojRD60TPAEfcricHeBpJl0t10Jw5N3AOHJojRjqHzXwEWrT+LtksrE.vyD.4i2d6M5XG6H9ke4WPs0VqXuuKbgKfYNyYhDRHAYVVzlQsaadJT.sPGbmKCKrvfYlYFJrvBEa8ie7iGlYlYn3hKVr0OtwMNXlYlI1LENg2C+Hsyqy4UBUtdFxy9doQW3b7PN4jiP2mlD96LeSk7bUqZUqPu6cukX8srksTpQMJGbvA3gGdnJDMBRA9Q0qOdWKoyfm0kquQB6r17uNiMxHEpeaJEPKxKu7fYlYFlzjljXqO2byElYlYXJSYJhs9W+5WCyLyLLsoMMUnTRPaDcgQGSe5SGEUTQXIKYIfEKVBUWgEVH1wN1AbvAGDJ5+YngFB.dQAX4A6ryNz5V2Zb7iebQV+DKVrv5W+5wd26dA.j35u9XV4JWIXxjI7yO+Dw7.e8qeMF5PGJZYKaobIm0GMzO+..N4jS3jm7jXEqXEh79ySdxShvCOb3pqthfCNXYtMc1YmwpV0pvANvADote5m9IrqcsKLgILAgLKP5zoiUspUgm8rmgvBKLQlC4Eu3E3y+7OGMqYMCKcoKUN+TpchFHZAx2mqTDkqzcN4JBMLjzNaII1wt1CJqrxPVYkErzx26fpW3I0fy9XV3rm8+fqN99G2O4o+OjQFYhybl+EctScToI2RhAMnAIztP9g1P+V9scg6DSrMYN4JBJFx6XCkEm9eOGd5Sy.m8bmCtz82m.Mu6yYg8GWM3XGdevsVcXAk+em6hHkTRCaYKaA8xUWDaaJswE748JWQFePP5nrGaL2iwymb1cXZljNurL9PWhwN1wh4O+4ictych8t28hANvAB2c2c7l27FblybFdo4gOxr5b1YmAc5zw+2+2+GhM1XgUVYEVzhVjL0e6YO6AAFXfnKcoKXbiabvRKsDYmc1HxHiDspUsBO5QORPBr8Eu3EX+6e+RMPJzu90OblybFLwINQz4N2Y3kWdAWc0U7jm7DbqacKz291W7q+5uB2byMAJEonv275VvBV.7yO+Pqacqk4MOo28t2XwKdwH3fCF+y+7OXPCZPvPCMD24N2AIkTRn+8u+3zm9zx05wG+3GO5PG5.l8rmM9se62f2d6MpnhJPzQGs.km9i+3OD49l3DmHJt3hwRVxRfyN6L7wGefSN4Dt5UuJd7ieLrvBKvIO4IQaZSajYYQaFcrnEntG6e+6GrXwRhGM8AO3AAKVrfkVZoXq+vG9vfEKVRMuBP.vJqZFJqrxvayKOgTthu937c5d9717dmf6Sch3lbjQSr.ZwSe5SkpYAmQFYH05yLyLU6QcIB.N0pVhm9zLPZoktPJWoWclEtEF+92oyhEajUVuPv8UeH8.ZQSGeRrEsnEHu7xShNWt81auTq2AGb.4kWdJsE1QP6.YQoJAa8rV9Rq1111FF4HGIN3AOHdxSdBN6YOKbxImvxV1xvrl0rDwZRr2d6wwN1wve8W+EN0oNEBIjPDT2jlzjj5y5CYHCAO9wOFaZSaBwFarfCGNvc2cG+vO7CXRSZRv.CL.G7fGD6d26FFZngBlWoW8pWXoKcovLyDMvELhQLB7fG7.bhSbBDarwhKdwKBO7vCrsssMDVXgIvOtbzQGE59l1zllTCE6zoSGKcoKEd5omBUdO6YOwd1ydvgNzgvYNyYvzm9zkXaHN9+Yu67vhpp23.3eYtrK66axl3BhhaHfHtDfnhKolVZtapkYtjYFloolUVl8KsxxxJ20xzzDE2J2UTbCULDTTPAQDAYeal476OfYxoYAFlMF38yyCOV2ky8LK24deumy48zqd0KboKcIrm8rGb1ydVb+6eezst0MLiYLCLgILAY9aIgGd3JrEjlvDl.Ze6aOhKt3vYNyYPgEVHhJpnvG8QeDF0nFkb2uYNyYhdzidf+3O9CbkqbEbfCb.3s2diAO3Ai29seaE1EN02neMOWoGNGYYokJ9IdopqmTiV0JeQFY7.boKeMzt19uyUFhR1JV+bIckTS6Nn3hJFVXoEvIGcTqT+BMzPw6+9uuru4wlYAWUW+.pptdhlQ68uc3Dm5L3N2Icbm6lt3Ii6J4WyuKW0y0nAm3TmAUTQEvc2cC1au7+7RQmWHh3G9PyftEnAFXfB6px0054wiWiht5LQ8n9b9g9nnhJJDUTQUu29QLhQfQLhQH0xmwLlQctussssUlsjhHCX.C.CX.CPhk08t2cENYA2l1zF7AevGHy0IJSG1xV1RIV9Lm4LUX8jGOd3S+zOUlqaRSZRpTW80O+7CKXAKndu8QFYjHxHiTgaSPAETCZRetqcsqJbXAzTgNXLWQohch5WmCrivLyLEO3AODm9rmWp02Biq46a4WPA3fGplAZeXgp8F2NqbkqTtWf7eSE6xdfdRHMFzhVXN5UOq4op9G6KNbya8O.3eeh4kTICUWc03X+8Ivku7UAONdneQ1WEVlJ57BQLn1d4.qYRBsfPDo9b9gXzoGZTUUUUvO+7CScpSUgay1111P6ZW6PG6nr6JzjlGz9cKvZe5i7ToTwt9SKWQzNLwDiwfGz.vt988hyblyi7x6onmgEJpRPMcmxBKsb7nzuCN0oNCpnhJgO93sVaNtptvUax1n4R1Pin+JzPBBE7rmgqcsqi8u+3QBIjHLwNOfkOyPbqDKGm6Q2CkUZYv.d7vfiY.vUWcQkOlMmRnEDBowIQyMW+xu7KHlXhQpVRqhJp.ibjiD23F2.aXCaPupGVQT+z9cKvZuARCZlLlqHZO90JewvdwAi3N3gPJojJRIkTAmwl.2DXH16VKSb2Js0s1OLzAOfFM+3GMOWQzmLv9GEbyUWvIN0YwSdRd.OIOXO.xt1Dxkqt5B5WTu.b2MWUKGOQ8xAgTBsfPjKJceo4s10tVjat4hW9keYzktzEDbvACCMzPbkqbEb4KeYHPf.rl0rFJac1D0xFj7Gyb+WpTvUe8oJCEVNCuUuMC1XV8qa90baLWQzt7ucsAt6lq3bIbQb6amFJqrxfwnR.CL.srkdftGTW0JYGPkAulYi4Jh9uNEXGPGBvejQlO.mM4rw0yrbDheVhv6j2vEmcptK.kfnyOntEHgHelXHf+tvAaLit+HMESM0Tr28tWbxSdRru8sOjZpoh7xKOzt10NLrgMLDczQ2no6.NzgNT3ryNqVKywMtwgN24NqVKS8ItXY8e3LoRAWk0yDhBJiA9JwPEQnZYLWQ+3AQ9rxJKw.hNRLfniD64JEhilb43MivVzQ2ablAsDcyixax0iPZLhiiC95i239U6FNSIUBm70D3hyxNK1oJntEHQWwIK0etWCaLiGlaeMWWWMZVnO8oOnO8oO55pgBshUrB0dYtwMtQ0dY1TkNqaARoRYh1fIlXJDZDOH.b08FqiviSzXthZ4Jh9GQcjfp0Pe8UbpXmBthnk8QCR5TwMgPH0Ese1BTk1YJgVPZXpPScmepAT2BjnOyoZ6pDZpeU9e6Vfz4GDBgPZ7SsDbkxDvjnK.Wd4ko1mM0I52dXVYC.0aqZJZBNUPi36KyHCqokqdVgERc8IhXh98QNtFus5J.fy0FbkUZnw5AGWMkegEUrFo7I5mprxJA.fgMxO+fPHM+nRcKvFxkR8waufYlYJR6NoiwL9WSo1WmK8IXH.3V2NUr5wLwFvQmnMHZVfXTMvOiBricPsUWb05ZtwrFy8B01291gc+G+INvAOLNvAOb8ZelJp4gZzPeOln4opmGHh2d4opWYzfLs1qh3nEZlfqZWaaCR7RWAe252.9t0uAMxwfn+xWe8QWWEHDBQBZ8a4zJqrDw9tyCsxWefgFp0GxWjFwrwFqQzQEAl8a85psxzgVTyWwsy7FuQWEXGB.SepSFt3rSTlvjHFOd7fu93Ml9TmrttpnP7qsUgMlSybN1fio+3EGxffs1ZiFo7I5mLxHif+sqM3Meck6gzRHDhllALUneHsv+rDjeYLrhA2B3nEZ9ad8IIbRbk4LAXSfcFg7i6Sie7HMLGNDu..P+uPF53ZBPdkHDKJtRwGOjVHNPqlBZL8dLQ1Zt7Yz8ymO9ziTNVP+LCsxd5AlQHDBo4Ms9XtRsfd39j5opp8opyQemgPzHJrhZ92xqR2VOHDBgPzTVz9KAKZ+kTu1VU5wLNidYF3KjAa0RSZczf8mnrxurZhtpzpXvVZJ.gPT6D+fKnGfAgnyTIeFRIWAvTCAZqSTKHSHpa4UZ8OFDUpkq7zVN3q8FBizZMK.kJ1IJmRpnlfqpfOEXNgnIXpQ07uTqCSZpI6BEhrKrQbpl847zRYXcmpbrsDqPWWUHjl8nGuAoIMiMrl63ihGmPzLD0gBZLOcGPHMDKK9RA.v5Gsk53ZBgPzmneMB+E2s.o6TlT+XZsAWwi9JCgnQTTE076xUIfZcXBgPHD8qfqHDkTUBp4e4KP2VOHjlpJt1fqprZJ3JBQW4eO6idRhDhtldUvUhRnEzbADo9pvxqouJUIEbEgnQTcscGPZXMRHDBgnmEbEgnrJspZ6xRzc9QHZDh5xszESHDcIQO7Ycb0fPH5aWOjxVfDkinAYOMX6IDMCiqMsHYhQzuKSHDBgneks.oDZAQII5opand1iQfPzWXTsmaIJybRHDsOZZ.kPzrV1fZQ8daUofqV2oKC4WFCuY3lA6ZAc2qjFeLo1a3itwOBQynJ907uzoXDhtioFY.72EN3.cuXDhFgKVV+O2RkBtJqmID4UJCUojc4pG7vrv5+weA2M86A974Wu2O2JNGDC.R5FIiUMlIpbGThVyTq8eGkR9YjM1XMBpqcEi4UdIXkUpm4UDQsXkIMhai1RJoTrqcuWjvEuDJnfBDm3VTjohZ5jrJ66wDsmF54AhviGO3kmsDu9zlBZkudq1pWpalaRMQUooRZLEVTQXa632wUt5UQgEVjl4fPz6XjQFA+ZkO30m5jg6t6lF4X3jk5OOw.GZAOL29ZtttZPHDniFyUe25+Ib6TSSoBrhzz2ydVg3X+8wwZ9luWsUlUT6WwZLOL8Vy2783fG5HH+7yudEXEo4AgBEh6c+LvOrgeQWWUTHWshC..UVslYfM9Uq86vwOwIo.qHRn5pqF+SJoh0s9eRicL9nAYA9nAYgFq7IDRSS5jmme5269..Xaa5GgwFab8d+d7oNLt16NczoN0QLsucSZnZGQUc3P7B..6ZGJ2mQY+nbvbl26gal7sTa0EaMql+sxpUaEoZ2MtYx..3y+zkCu8xy50TMvgCwKX.T92iIZOMzyCDQf.AXziaJHiLef5rZo1IpUgqRC8rxt0+jB..V6W9YvUWcQybPH5cprxJw3lzzQ5oeOccUgPHDIn0a4JABEBABD.dFXfREXEooO2p8FmDJT88Dvc1pZ9Jdi444JQsVkmszCZNbiHFGWMsHj.AMh+xK.Jq1o6.MVatV64GN4rSZpi.QOjIlXB..32H+7CBgz7ipEbkn6CTItpJq1ab1.dJ+gllDgIJKd09ckpzPcYI0Ad0dtf5LnRBQaguvZ9cYyMVy76xhtVAiN+fPHDhd.sd2BT8jL0ofqHJ1iebtHs6jNx3Q4C6xqZbuaZK7vH+zXC7YUAGGOvmOf.ABgQFoqqMDR8yiebtHoajLt68eHb6YkgKbHSwS7zMzg.7Gd1ROTaGGQOLMZ7HRHDBQef1O3JUnkqzfc7DRSDEWbI3fG5nRzO7sB.2KYf6k7kPKaoGHlA1OXms1p6pj+GTKWQzmvmOebjicbjTR2P7xLF.EWPoHoBdJRJoafV2Z+vPFT+E20sTEhZ8YgTvUDBgPzCn8CtRU5Zeht3J0vUDYH+7K.aY6+FJqzRgIlXLBn89Cgl6HNbJ7QucsPj4cSAO3AODabSaGiYziDt5hy55pL.nfqH5ODJTH10t2Kt+8yDFZngnKcIPvyVewttoQXTcT.Lr3Lwkt7UQZocGr0sWHF+XGML1XUq4XMn1YBblPJ3JBgPH5FKZ+k..fOdH0cFDUkFyUyHbyv60Oyf8sn9Gsinm9HOZbSQTi3ymO988rOTVokBO8rk3Ml9qg9GcjvYu8GkaQqQGCtWXFu9qgV2Z+PkUVI988rOTQkUpqq1.fBthndbzidTDarwpQOFm8bW.2+9YByaQKvDmvXPTQzWvYoKPnQV.6cxEz6dEFdsIOdXmc1hby8I3n+0wU4ioAFT6XthQmePZXzFmanqUQ0LjT17QZOglhaHDMg7Jkg7Js98P9Tofq7vFN3q8FBi3p+AJI5oOJ5oQpLD2m6o.yZ1RdWj7pIcC7zmlOr2d6vKOxgAyMulbvtnLYVkB.LwDiwHF1fgat6JJo3RvEt3kzp0c4giWsYENgTVuhn7NxQNBBKrvv.G3.QBIjfF63TQkUhDp8blg+hCBN4ni..feses07ZafJqs1JLxWZXv.d7v0uQxnfm8LU53RcKPRCkpdtQ1EJDYWn9QP8OtDAXcmpbryK233gFRHMmo0SE6hd5ihdZjDR8QccQxadyZlar5Su6IL54xJDEWQM2Plo01AX4wiGhnu8t184ezv055Gd09fFDRc6IhRPz4DwDSL3hW7hZ7iW5oeevu5pgmd1RIRXElW6LpwymPNs2NaQ68us.LFtcp2QkNtT2BjnrTWmarr3KEKK9RUi0LBgzbfVeLWoJcKPJUr27yQNxQvRW5RU3EHYLFxImGCXfAnU95iDqSz8iYpg+62Y7vc2folZBJpnhPYkUt3V4RWg5VfDkghNm3Lm4LvPC0L+r9KDQ+PDQ1O7S+zO5IC22C...B.IQTPTgIN9wHd4t249iAL+chH5SuPd2IQwKuSctqXjiZzXUq5Kv99ieuAcL4ymOks.I0aZpyM9owop0LMC97+2t.Hc5Agz3g1ukqTgtEnl1st0sPVYkkttZHkbyMWjRJonqqFZUJ5IOJ5hjh9yLyMG..kVZovTSMUh0M+Y+F..nqAEh3kYjQFgLyLS..3omdJw1qK9qoXvUO8oOEImbxRrrJpnBjbxIiBJn.sRcPnPgH4jSFOSE6VZjZXTsIlhpprJIVtndgfP9UKwxqppZ1NUcxhmmnxmFyUDBgPzCnC5VfpirEnlIvrfBJHr3EuXMRYqJV6ZWKBO7v00UiFs3Wc0fu.AvLSMEbbbRrtpqrLI9WQrxJq..PYko66xG7psNKTPSmwb0l1zlPm5TmjXYojRJnScpSX26d2Zk5PQEUD5Tm5D16d2qV43osDczQiyctygCdvChfCNXIVW3gGN3ymuF4uObIeH..d+EsHIV9utqZ977fG+7Rr7u669d..7ZSYJM3iI.0s.I0ep6yMdssV.dssVfF6bJU8OBgz3jVO3JQO8QdMjwbkFN3JSM0TIFuNph92+9ie7G+Q0RY0bjxdQRu7pkfGOd3xW8ZRr7Ms4s..fabiaHdYol1cgolZFr0VaPYkUlN+BjMEa4JYw.CL.FYjQRE.LogQQminI3s2sD..olZZhaUJ.fpp8qsUV8+F7iPgBQx25epc+7TkNt56cKPgBEhdzidfcsqcoqqJJzhW7hwzl1zz0UC0Bs84FDBg77ntE3yI+7yGqe8qWsTVIlXh3AO3Apkxp4r56EI6TG6...N4oNKJuhJDu7pqswfdZY078tpqtZ72G+T..Hv.6fFpVqb3p8bAAMwex7cpScBkWd4XxSdx55pRSJO+4HgFZnZriiyN4D7vC2Q4kWANxw92Trd009.zM94FWim9LmG4meAvVasA95i2pzwUb1BTO9gOjXhIhG8nGoqqFJTZokFtwMtQcug5QzVmaPHDxySG1s.a70xUjFupqKR1wNzd3hKNihJrHric963YOqP..TUsAWwX.kTRI3W20efm7jm.as0Fz8t0Es4KA4p4RKWQzrhN5nwJW4J0nGi9GcDvPiLD23FIi8r23PwEWBDT6OKWAeFJuhJvgNxwv4N+E.Lv.Lf9Gk3ue2PI97C8zVthn6oMN2PWSzYGzsGQHZFKaPs.KaPsndsspTZk56Oa4HuRDhWumlAGsn9cAz+MaApJGYMi3iOd3gGdfN1wNJdYm3Dm.lat4H3fCF4lat3XG6X3zm9zvImbBcqacCCYHCQhwOVBIj.xN6rQUUUERIkTvd1ydfkVZI5W+5mDGqBJn.ricrCjZpohBKrP3latgHiLRDQDQnT04RJoDbjibDXs0ViHiLRoV+0u90wYO6Yw0t10f6t6N5ZW6JFv.FfFKihooEczQiniNZoVNOd7vHGwPw11wtviebt36+weAso09gB44.rnPAHoy9LbzGbWvmOeXgEVfQ8RCSs0EPUU73UymEB0xyyUO6YOCm5TmBIjPBHu7xC93iOXPCZPHv.CThsK93iGVas0HrvBStk0ctycv0u90w.G3.gYlI6ruX4kWNhO93QngFJbyM2Du78rm8fN0oNgV0pVgzRKMbzidTbsqcM3me9gd0qdgdzidH2iKiwvEtvEPBIj.t0stEBLv.QO6YOQm6bmqyW+4me93Dm3D3BW3Bn7xKGcoKcAQDQDvKu7Rps8ZW6ZH2byEQGcz3oO8o3zm9z3hW7h3S9jOoNONMk3jiNhWZ3uH1691Ot8sSEol1cfk14LrqLyPRmnJbt7yFBEHD733gAES+g2doZcIP.syjHbokVJN4IOItvEt.xM2bQm5TmPe5Sef+96uDa2idziv4O+4QG5PGPaZSajYY82+8eihJpHLjgLDb1ydVjat4B.fjRJIrm8rG3fCNfd26ZlNHN4IOIL0TSQHgDBxLyLwoN0oPd4kGl6bmqDk4ie7iwN1wNP5omNJojRfGd3AhIlXpyVi4ZW6Z3bm6b3pW8pvVasEADP.3UdkWAlZpoh2l6cu6gqd0qhG9vGh7yOerm8rG..oNWt5pqFm9zmFW5RWBokVZve+8GAETPnm8rmR0UeqpppPbwEGBJnfPKaYKwUu5UwYNyYPaZSav.Fv.TXclzvXtQ7f+tvAmsjllaHDMAWTlysXpfEGWwrouihXO7YBp26yiyMW1HG8DXy3slmRe7x5H+A6PA6IKw2d7J89Ve3t6tydm24cjXYgFZnrW4UdE1e9m+IyRKsj0st0M1HFwHXcu6cmwwwwFwHFAqzRKU71O8oOclWd4EyPCMjYs0Vy7xKuXQEUTRTladyal0hVzBliN5HafCbfrW5kdIVW5RWXbbbrXhIFFe97kX6WzhVDyd6sWp5agEVHKrvBiYmc1wRLwDkXcUWc0r4Mu4w333Xd5omrgNzgx5bm6LyHiLh0yd1S1CdvCT02tjqCErmrCErmMn8cjidBrQN5IzfO1kWd4r8efCw9jO6KYexJWsT+s6+X+rhKtjFb4qI7du+GxF4nm.Ks6b2589nJuGyXLVBIj.yUWckYjQFwBIjPXgEVXLNNNFGGGaxSdxLAB92yoG6XGKyN6riUQEUH2x6EewWj0pV0JlPgBYLFis5UuZFGGmDaSFYjAiiiis6cuawKSnPgLNNN1W8UeEaEqXELSM0TVu6cuYCaXCi0111VFGGGaYKaYx7XVVYkwF0nFEiiii4niNxhIlXXAFXfLCMzP13G+3YO4IOgwwww9ke4WjZeO0oNEyYmcl0hVzBVu6cuY8qe8iYmc1wrvBKXae6aWps+Mey2j4me9wtzktDyVaskwwwwrwFaT36wp5mQLlpe9flR9ET.6O1WbrO8y+eRcN1N+s8vx4w4p1NVu4reG1HG8DX4jyiUak4y6V25Vr1111xL1XiYAGbvrAMnAI9biUspUI96zLFiUYkUx5V25FyGe7gUTQEIUYEe7wy333XKZQKhwXL1HG4HYd4kWLNNNls1ZKyKu7hMpQMJwaeXgEFajibjre8W+UlQFYDiiii0291WIJyu5q9JlIlXByc2cmMnAMH1vG9vYADP.LNNN13GuruVXUUUE60e8Wmwwwwb0UWYwDSLLGczQFGGGyM2bictycNwa6V1xVXd4kWLyM2blwFaLyKu7h4kWdwdzidj3s4AO3ArPCMTFGGGyO+7iMzgNTle94GiiiiEQDQvd7ik7yl7xKOFGGGayadyrIMoII92V9xu7KUhOYpaZ5yO9f3Jl8AwUrFq7IDRSSZ8fqxImGyF4nm.6Mm86T2a7+gtJ3Jmc1YlyN6L6zm9zRrtSe5SyLwDSXSaZSSpxxVasks3EuXoVdBIj.yHiLh8lu4axprxJkXcacqakwwww9e+u+mDKWVAWke94yBJnfXN4jSrjRJIoNNiabiiYgEVv1wN1gDK+1291rN1wNxZcqaMq5pqVFuKn5zkAWIRgEVD6JWMI1Os6+h8teygY+5gSjke9EnxkqlvB+fkwF4nm.61olV8deTk2iSHgDXlXhIr90u9wJrvBEu7rxJK1Lm4LYbbbrktzkJd4+8e+2LNNN1t10tjY4kat4xL1XiYKe4KW7xT1fqb0UWYcqacicu6cOI1m0rl0H2.jhHhHXFarwrsrksHwxSKszXssssk06d2aYtum9zmlYjQFwF0nFkD2fb0UWMaAKXALNNN1ANvAjXedy27MY95qurN24NyF4HGIKojRpNO+oobvUhTdEUvh67owl6OjHaWm71rRKsL09w3sly7YibzSfk8ixQsW1omd5LKszRVu5UuXYmc1Rrt0rl0vL1XiYqYMqQhkmVZowrzRKYSYJSQhkmat4xb1YmY8t28VhGPl.ABXbbbRUNLVMAWEQDQvrwFaXwFarrzRKMIBl6fG7fLNNN1hW7hk5gt8ke4Wx333XacqaUpx8EewWjYpolx1yd1i3kwmOe1e8W+k3qmkSNR994q7JuBKjPBQpx5YO6YLWbwElGd3A65W+5Rrtqd0qx7vCOX93iOrxKubwKWTvUiXDifYkUVw1wN1gTAfoNzX+7CBgz7jNHaAp+MIBmWd4gsrksHU5PO7vCGSbhSD6XG6ndmIq14N2Ir1ZqwZW6ZkZ9eYLiYLvCO7.m9zmtNqOuvK7BH6ryFm3DmPptwUhIlH1wN1AV6ZWKF8nGsDqqMsoMXe6aeHiLx.aYKaodUm02HPf.jQlO.2OiLQw49PXVkYg7e7CQFY9fFkouVs8XtJ1XiE94meHt3hSbJoG.vM2bC+u+2+CsoMsAey27MhqO8su8Ed4kWXSaZSxr71912NDJTHl3DmXCtNUbwEiCbfC.u81aIV9rm8rg+96O1111lDK+u9q+Bm7jmDqacqCiabRNCe5me9gSe5Siqd0qJyi069tuK5Tm5D14N2IrzRKEubCMzP7Ye1mggLjgfkrjkH09kQFY.u7xK7a+1ug.CLP81tVq5.iwvMR9VX264OwMNcbvo7OERKgCfcs68hKekqAApwoU.MY1BbwKdwvJqrBG7fGDt5pqRrtYO6YiYO6YiO8S+TTd4kKd494meXcqacXSaZSXe6aehW9TlxTfPgBwN1wNTpLh4IO4Iwrl0rvm9oeJ7yO+j35aacqaEst0sFKe4KWpx7Mdi2.VZok3Lm4LRUdwEWbXCaXCX3Ce3hWNGGGhHhHvW7EeAxKu7vu8a+V8p9s5UuZjWd4gie7iKQWlG.nycty3PG5PHyLyDe+2+8Rsu6ae6CG6XGCidziFN4jS0qiGgPH56z9cNW0QRoPKGbUKaYKkZLSIRfAFHJu7xQwEWb8prBKrvvO7C+fLu3KOd7P25V2v8t28j69mSN4f9zm9fBJn.bxSdRoFS...qZUqB95quXRSZRxrL7wGevvF1vvO7C+P8pNqOI6reDV+F1Hh6.GBojRpnrByClVcAnfrSGwenihua8+Lt28yTWWMk.GWMmFJPflO3pDSLQb5SeZL24NWYN4tZjQFge9m+YLpQMJjSN4.fZt41IO4IiCe3CiG+3GK09rwMtQz291W3omM7wWyPG5PgyN6rLWWfAFnTYZsu9q+Z3fCNfwO9wKy8wQGcDu0a8VRs7ScpSgDSLQ7QezGI2Dsv7l27v0t10vku7kkZcu8a+1Z8GtSiMkTRoXyaamHt3NDxLyG.lPgPfAFBvXH6reDNxQ+a7S+xVP9poIKZCp8yIlZ9gO7vG9PryctSDarwBKrvBYtMyadyCO4IOA+4e9mRr7wMtwgwMtwgoMsogbyMW7se62h3iOdr4MuYIFOg0GbbbXVyZVxbcQGcz3q9puRlqyLyLCcnCcPpqW74e9mCO7vCodvZOecegKbgRLtqjGFig0rl0fQLhQ.+7yOYtMADP.H5niFqcsqUp00yd1Sz8t28573PHDRSIpXvUhtIi5+STTUZ4Jk3vnV0gNH+T1ss1ZK..prxJqWk0nF0nj3oIBTSKQkPBIfUspUg3hKN49DZe3CeH5Se5Ct8suMdwW7Ek6E6t90uNhHhHT3MA1912djd5oWupy5Kx7AODaY6+JJ7YEBGbvdz+niDCXDiAOzkQf.BMR3hKNiRJoDryea231odGcc0ULsYKWkTRIAfZFr5xSngFJV25VmD2j3jlzj.iwjpEjt90uNtwMtgbCju9ptNG6+d9UxImLhLxHkY.hhHqGHx0u90AGGm3DJfrz912d..oN+v.CL.8pW8Rt6WyAUVYkX66bWH6rdDrvRKvfho+XLu1LvC7bxv+9OcLrWbvvd6sCO8o4isrseCEWbI0YYFarwhidziJ20KNUrqla4padyaB.fnhJJ4tMt5pqvRKsTl+V427MeCr0VawK8RuDd228cwBVvBZPIqg.BH.3niNJy0MwINQz+92eIV1ie7iwYNyYvRW5RQBIjfTWuHojRB8qe8Sgsd1G8QeT8ZNsJqrxBkVZoxLYI87BKrvPlYlIp34lFL..dgW3EpyiAQ9pqyMHDRiS5vTwdCI3JQ6q5rFU2L2byUqkW5omNV3BWHBO7vgUVYEbwEWP3gGN15V2JZYKaoL2mxKubz6d2aXjQFg23MdC7ce22gKbgKH01wmOejd5oie5m9IXpolJ2+93O9iwSe5Sk5hg5qpnhJvd9i8CgBDhN24.wqM4wit1kNAWb1Yv2D6gEt5OlzDdUDZnACvX3OiKdTTQ0uVaTcPQWjjGuZtIHsQvUolZpfiiSpt.UcwCO7.QEUTR00.23F2HrvBKvHFwHTo5kxbNlPgBQlYlobaoKQj0Ce31291Pf.AvN6rStma3t6tC.fLyTxV3zAGbPkSq3569qieJ7zmlObzQGvqMowi.6X.PnA0j0MsvLig+sqMXRSXrvSOaIJqzRwAOTceigIjPBXfCbfHrvBCG4HGQp0qo5Vf2912F.0z01TzuUVbwEK02E..rvBKvF1vFv4O+4g2d6MV9xWdCpdTWeON4jSFye9yGgDRHvBKr.t6t63EdgW.G3.GPp8szRKE4jSNR08Zant6cuK.fLyflOOQsZ88u+8kX400qMhhUWmaPHjFmz5CZ.g0NQoxqwXtXWNTTffJ6E7+ke4Wva7FuAbvAGv.G3.wblybPqacqgmd5IryN6vjlzjD25BOuJqrRXmc1gCe3CCqrxJb1ydVLkoLEbkqbEXhIlHUc8Ue0WEu9q+50Y8QYFa.MlcwDuBJu7xQKaoGX.QGo32GJspZBXQfvZdu4E5S3nfBJ.291ogyd9KfA1e4+TqUmRHgDvW7EeABN3fwRW5RkHcxqMa4JNNNHTnvFzMp9Zu1qgQO5Qiqd0qhtzkt.974issssgW4UdE4l90quTlywLv.CfAFXfBa0J.Hw3j442WSM0z50Mp3gGdHw+u755XMWTRIkfjt9MALv.LhgMDXt407YtndypslWymgFarQX3u3fw2+C+DRO86gbdbtvEmq6wayEu3EQLwDiTmiH5ZEBUySx1h9N2t28tE2CDjG6s2dYt7u+6+dXlYlgzRKMblybFz291WktdnnuWs5UuZDarwJN0quvEtP3qu9Bu7xKXs0ViXhIFIFeah98b00XKUzC8nt5YFhV++8gjzb+bF0E4ctAgPZbRqGbkn4pDUZRDF5OAl87xN6rwLlwLvvG9vwN1wNj4MTJuKhYlYlg+9u+awIffMtwMhfCNX7QezGgUrhUHd6333PKaYKg.ABT37RTSM+SJ07Tn6U38Ph2Wqr16wvhma3Ez6vCC291ogae6zjHPLsAYcQRQAWIPKDbkO93CXLFd3CenbeZzUWc03V25Vvc2cGN3fChW9PG5Pgs1ZK13F2H5RW5BhO93wSe5SU4tDnxx.CL.d5omH0TSUgamrF6h93iOnhJp.su8sG1XiMZppnFktJQZz4tzM7Ri7UvMu4MfSN8uciM67tyX3q33XHCLJjaJmU7xGXLCAg0ydgwN1wiSdh+pdeb9uminolmq7wGe.PMstRPAEjRu++zO8S3W+0eEG9vGF+3O9iXbiab35W+5vN6rSsT+RN4jQrwFKdi23MvW+0esL2lJqrRI99folZJbxImjpEj9udvCd.JrvBUX2wE.ncsqc.P5tH6+08t28fwFarb64EZKM0SxLTPVDhtyh1eMcy8OdH08CMRk5iKSumlh2qelAGaQ8uXzUY7uFCt3EuH3ymOdq25sj6q+KcoKIykahIlHQlcqScpS3C9fO.e9m+4RkUzBLv.wIO4IQUUUkbqKyd1yFu1q8ZMfWEZGFZng06+LxHiP94W.plOezJe8Qh0MfADC..doXhP7xbwEmQQEUDJu7xg0VasRcrZn+8eynWhtHYXgEFtSZ0Djf1nkqDkYI28t2sb2l0u90it0stgTRIEIVtwFaLF23FG1wN1Apt5pwl1zlPqacqU3j7qlR.AD.tvEtfB6Vqx50nnW+JpkqNxQNBF7fGrbOWr4J6qMP6G9PI6hbUTb9xb6ePsam8OW.5MD+avUp2VtRTfEJ56B23F2.CdvCVpDZQxImLl0rlEdm24cPjQFI9tu66fAFXfZ82TO6YOKXLlbS1EBEJDW4JWQpkGXfAhCbfCH2GTWEUTA5QO5gTSTwxhkVZI7vCOPbwEmb2FFigcu6ci.CLvlkWWuwhxphgjxlOtSdM9xHtDRSA4UJC4UZ865PpTvUdXCG70dCgwFV++A0+saApBsbkdxOf+euY.QOo7RJQ1Cx6e8W+UElo.+uV3BWH5XG6HlxTlhDcCj4O+4iG8nGgu4a9FYteaaaaCqacqSpt8j9JQcElpkQvjBppL..TU4R9ddEUVyMkaTcz0xzF92t8jlO3pPCMTDZngh0rl0f7xKOoVeEUTA9zO8Sg6t6tLa4yoLkof7yOerksrEr+8uesdqVIxbm6bwie7iwm8YelLWeJojhLmpAhLxHQfAFHV9xWtL61fkTRIXpScp3xW9xRMEGzXAe970I+sfE7d..3yV4JkX4251oA.f+L9iIwx21VqI4m7pu5qpvx8+NEWDbvAiCdvChyctyUaK6pY5Vf93iOX3Ce33K+xuDO4IOQp0KTnPLsoMMbzidTDbvAKd4kUVY3ke4WFADP.h60.hZQ28u+8iu669NYd7T1fCqqqW7se62JyrT67m+7Q94muLyde..+vO7CHmbxQlYSPYUGWzhVDNwINAN9wOtLKuMsoMg6d26hO7C+P49ZQaQc+c9LeZUHymVkN6bt55bimW1EI.q6TkiccU4+PUIDh1g9UBsPOhM1XiTckht28tCmbxI7tu66JdvTCTS2EbwKdw3se62FctycFomd5nppppN627FZngXSaZS3V25VRbSl8rm8DiZTiBKXAK.KdwKVbZr9AO3A3a+1uEyctyEADP.XAKXApwWwpWJyEfpnhJfgFZHL2byQQEUrDqKgydR..bgKcII1d2bslLgW1YksN+hj96e..P6MOW8Ye1mg7xKOzqd0Kb1ydVwsvYVYkElvDl.xM2bwO+y+rLe.HcricDcsqcEyYNyABEJTtoBcMs9zm9fAMnAgO5i9HLm4LGwoH9xJqLr28tWzyd1S49j4W0pVEt6cuK5YO6IRLwDAe97QkUVIN3AOHd4W9kwidzivF1vFpywzUyM1Xi0..3w4JYfH4WVM+lNeARdi4ON2bqY+r155U4KuabTSNOWs7kubvXLz8t2c7W+0egJqrRHPf.bxSdRL4IOYboKcIr5UuZ3hKtHdel0rlExLyLw1291gQFYj3kGYjQh4Lm4f4Mu4INSDBTyCRzbyMWoyNq8oO8AVXgEXVyZVHiLxP7xu+8uOl27lG97O+yQ6ZW6PpolJDHPf3wdUTQEEFzfFDV3BWHV1xVFxJqr.PMy+e6ZW6BKe4KG8t28FSYJSQhimM1XCxJqrjpEul5TmJ5QO5AFzfFD9ke4WPQEUD.pIqE9ke4WhoMsoggMrgovLPp9pkEeoXYwWpttZnvfpHDRiO5ffqDMlqzelDgaHhIlXvu9q+J7vCOfu95K..ZQKZA1291GJu7xQ.AD.byM2fs1ZK7zSOwoO8owEtvEv7l27PokVJZQKZgTcEEYoCcnC3C+vODKe4KG25V2R7x2912NVxRVBV4JWIZYKaIbxImfO93ClyblC5Uu5EN3AOHZQKZgF60u1lmdVSqvcya8ORr7xqtluyT5y8v7tcp2A74yGN6rSvDSzt2.srtHIOs37bEPMAeKJEN2m9zGXs0VCmc1Y3kWdgKbgKfe+2+cEl5kmxTlBJu7xQ+5W+T54zG0o8rm8f29seart0sN3t6tCmc1YXiM1fILgIfEu3EK2GdPjQFIN6YOKJrvBQO5QOf0VaMr2d6wPG5PwMu4MwN24NwfFzfzxuZZ7qU93M..RM06HQqo7jhq46sFw8u+tbUUUMtwMq42iZUq7QgkangFpBuww+M3J0+4G96u+3xW9xvQGcD8u+8GVYkUvAGb.QFYjX+6e+XMqYMRLeossssMroMsIr10tVz5V2ZoJuO4S9Dz5V2ZLlwLFI5xpwDSL3a+1uEd5om06w2kyN6L98e+2QFYjA7yO+fGd3ArxJqfe94GRKszvUu5UwTm5TwCdvCfolZJN+4Ou38cO6YOXAKXAXEqXEvKu7Bt5pqvbyMGiYLiACYHCA+9u+6R8vSF3.GHxImbfqt5Jb2c2E2sXMv.CvwN1wvrl0rvzm9zgc1YGbwEWf6t6NhM1XwxV1xp2SHwDkScctwySbG6QKTuHDhhomks.0rIzhKcoKIUVO6O+y+TgYTuQLhQf9129JU1j5a9luAScpSEW7hWDssssU7x6d26NRIkTvIO4Iwcu6cgGd3ABJnfDO60+pu5qhNzgNfBJn.wcEkErfEfYNyYJ25PrwFKlvDlfDiIKCLv.rjkrD7tu66hjRJIbiabC3niNh.BH.YdSA565VW6LRO86iyblyC+ZkOvtZy9WOszZtgLQW3ojRJE+8wOk38QaIzPCEu+6+9x7BjbZwrEnHcricDojRJ3d26d3JW4JnnhJB96u+hSK0Jhnu+nnwWxzm9zwq7JuhDKyc2cGYjQFRbthAFX.xHiLf0Jn0M93O9iwRVxRjZ4bbbXUqZU3C+vODW6ZWC25V2BN6ryHxHiDVXgEfwXHiLxPlYBtt10th6bm6fzSOcbkqbETZokh1zl1ft10tJyW+xqNzbhM1XMZaaaCt8sSE6a+wiWdjCCFYjQnvJp46sFx8ucu0CD+gQYkVFbyMWQK8vcEVtqbkqTgqWTvUp644JQ71auQhIlHd3CeHtxUtBxM2bQqacqQW5RWj32TApYR8MiLxPb55++xDSLQbf6O+CAbG6XG3se62FIkTRRzcS26d2qBu9RTQEEt6cuKN9wONxHiLfO93CBJnfDmzLl6bmKBO7vQEUTABIjPDuebbb3S9jOAKZQKBIkTRH4jSFt3hKHv.CTtIxlW7EeQjQFYfCe3CC6ryNDP.AHwqqO6y9L7du26gqd0qhcbtw2A..f.PRDEDUzSOczt10NzktzEYlQ.s0Vak64dj5u55bCBgz3jNHaA13s0md9t9gHxaxcTDyLyL4dg1N24NiN2YouAdCMzPDYjQJ2VG3+NVOrxJqj5h7OOd73I2wOkYlYl3wYSSY90JeQaZieH0TuC1x19UL3X5OZku9fbq8opaHOfG7vrv9i6PnjRJAsrkdfN1g1q0peJ5hjFnCBtRDe7wGwYMs5qMu4MKtkdjGKrvBotoKNNNYdth7N+Qj5Jq9YgEVfvCObo55kFXfAJrrMv.CPqZUqPqZUqTX4WepCMWDcTu.xJqrQlY9.r4stSDYD8AVaZMykQlvAj8ixA+8wOEdvCdHL1Xiwfho+0QIV2zViIQO7vi5bbnVWWO.nlj.gkVZoDKy.CL.gDRHRD.T8s7LwDST3jSrhZIrVzhVfvBKr5cli0c2cWptK3yyN6rSgW6RDd73UmmWSHDRSU5UohcldVBsfncMjAM.r6p9Sb+6mI9sc8GvN6rEUZhiv1hX3j6OeTX9OE..t5pKXDCeHMZlPX0lyyUppG7fGfcu6ciEtvEJw3Mgz7fEVzBLlQOR766duH2beB1wN+cXjwFCWYliCryJPU01U3LuEliQN7gBGrW0SK4hN+folSnEDBgPHZBZ+tEXsAHwiBPhnlYrwFiWYTi.IdoqhyegKh7yu..T.rF.EVZMOA3t28thdDR2aTMenvwqltETi4fq9se62PN4jCV+5WOr2d6qWowYRSSNXucXJSZ7HwKcEjz0uIJrvBgInJTU00zJhADf+nGgDjJOwRKhlLgVPHDBgnto8a4pZe5iFzPFyUTKWQpC73wCgDb2P2CpKH6ryAW+94gilRU3kCwADb6aoBGeC5JZyTwdC01291wgNzgPvAGL16d2aSpjgBQ4YrwFgdFVHnmgEBR9gEg082OCisGVivZc8Ky.pLD0KGDpARnEDRSMzsGQHZFKaP0+66QkBt5GNW4H2hEhoElYvYKqecwpFyi4JRSG0LNzbCUYlSXeOrbzB6MqQYfU.5GcKv8t28pqqBjFopBlA9Fa.ZQKTOsT0+E0s.Ij5l4FyC96BGb25FGc2cBooFWpmw4.nhAWk8yDhGUjPTkf5+E8DpFFyUTbYj5qRpcJawvFmwUA.8ifqHD4onJp42kKqRMy2eotEHQWwIK0etYC2slGlaeMWWWMHDBTwfqDEjiRcMOw8rOU3GsnnqH0SEUaZhlqQ7WY3UaKpIZR.kPzmTUsy04Up3477FLMcpXmPjmOZPRml4IDBotn0a+XgpR2Bjt3JQII5opWRkMd+tC0xUD8Yh54BUngBt5e6Vfz4GDBgPZ7SqGbknPpJu7xAe9J4UioDZQSZY+nb..TqoHc901XPJSWWUaynZ6yhEVTwTWehHlnVxrw5XETjG9rZB5I87zLQWIJguTTwknQJeh9oJqpJ.z3+7CcM9BYTq9RHM.BTgw4qVOaA5sWdBSM0Tj1ctKFy3eMkZea0yx.u..N0oOO93wLQMSEjnxlZs+6nZfeFEP68WsUWpfesiGjpTaEoZW6Zaa..PbGHdD2AhudsOSE0zCaanuGSz7T0yCDwKOaopWYzft0ipIHvzySyzxRssMsFW5xWEq66+Qrtu+G0HGCh9Ke8wKccUnQs3uUUHtap3K.NhNYB5u+FqvsYmWoBb7TqlJGpbZ1TNuTmMAQ2NEWNxiVukqr1Zqv6M+4Be8waXnx9DmXR7OjlXrwZqQTQ7BXtyZFpsxTzM7kxi0P8YI0fN2oNhoNkIBmbxQJKZRDiGOdvGu8BSepSVWWUTHmsplKiXsYZlu6NjAOPL3AMPXiMp+z7NQ+kgFZHZWaaMlwqO05diaFqfxn6XhPZHdV4M7GXnALUneHsr3KEYWnPrn9aN7zVMeSymU76F2boyCN16HPWW0unwOdDkmfJJGGqOsCFXngH5ydWcacQHCu4uUSWIxgVX.93gzzYvIe3Pp4o01+KjgNtlPjmlKeFURkBwUyhO72YCgCsfRCzDBgPZdSu5Jgl5pG..nzzusNtlPjmmcqqA..yb1YcbMAfimAncNWSP+dnEB9WaxfZGmVBprBcbMgHK7KqT..vyXizw0DMOKLgG5kuFSAVQHDBg.UbLWM0vLEUxmoTSrVpB65P2fgsvLT1CyB4k3YfCcObsxwkT+cuM+M..v9dGsNtlTiY2GyPVEJDtZUSqa7yLWbAk8vrvyt4Uf8cKLcc0g7eT3+jD..L0EWzw0DBgPHMTFZXM2lrRm.1ZD4HG4H..H5nabbeYMGnR2wo6VyAes2PXrgZmwIhAFZHZ4qLE..bykNaT1iyRqbbI0Oot9OGO87mA7LwXzpw8l55pC.po0q7zVNXTi4I5pF.6Cue..39ae853ZBQVx3W2...rOrH0w0DBgzPkcgBQ1ERSA.D8aKcoKEKcoKUWWMZVQu6w42pIOWXYaaKpLumhDFaz3d67GQ449HkNEVe3P7R7XhfzvwuzRvStvovEm4Ki68yeK..BXwqBl3fS53ZVSa9LtY.dFYHx6Lm.ouiePWWcHOmL+ishmbx+BFXHG74Ueccc0gPHMPKK9RwxhuTcc0fPZvNxQNBt3EuHt3Eun3Vvhn4oRIzBckpJ5Y3ZKXJnfqdYccUg7b3L0Dz9E+EvsnFpttpzrPl6a63e9jEB..miZ.v6wNCXoesGbF2vRcnjFNFe9nn6kJxXG+HdzA1C..Z67WJ7dTMtyzeDBQ9d8cVL..V+nsTGWSH5J56cKvvBKLbwKdQ..DbvAiyctyoiqQMOnWFbkHYez8hr12NPw+yMP0kPOcIcAdFaDLyM2fCg2e3yXecXhcNnqqRMqjwd1Bt8p+PvDMaISz4LfiG76MW.7cbpuoT.Bgn8QAWQzmCt5HG4HHlXhQhkcvCdPZrWoEnWGbkpn4RZRlzzWYYkAReyeKd54ONpLumBl.JPKsNdF.SryNXavgCeG+Lgk91VccMhPHpHJ3Jh9bvUOeqVIB05UZGpT1BjPH5dl6tWnCK7yq2aO8fEHDBgPZ5RzXs5+RzXuhZ8JMK8tDZAgPHDBgPHDY6u+6+FgGd3H7v+2orHQ+++8e+25vZVyCTKWQHDBgPHDRSDqbkqT7+snt13INwIzQ0lleTofq9oyWNdTQBwT5gYvslXSRqDBgPHDBgPHJCUJ3prKTHd3yDhp3KDTOLjPHDBgzTgSV1zZxmmPHZGpktEXyxzMHgPHDBoIqOZPVnqqBDBQOD0bSDBgPHDBgPHpATvUDBgPHDBgPHpATvUDBgPHDBgPHpApTvUFT6X8jQC5JBgPHDBgPHMyQsbEgPHDBgPHDhZ.EbEgPHDBgPHDhZfJkJ1mbnlgJ4KDtaMm5p9PHDBgPHDBgnWRkBtxcq4ApwuHDBgPHM0jcgBA.faVS2mCgPp+TKShvDBgPHDRSIKK9RA.v5Gsk53ZBgPzmPONFBgPHDBgPHD0.J3JBgPHDBgPHD0.J3JBgPHDBgPHD0.J3JBgPHDBgPHD0.J3JBgPHDBgPHD0.J3JBgPHDBgPHD0.UJUr+yITNxtPgXRgXJ7vFZhDlPHDBgPHDRyWpTvU4TDCOn.gnB9L0U8gPHDBgPz4bxRCz0UABgnGh5VfDBgPHJoctychPCMT7O+y+nqqJxzie7iQngFJhKt3ZP6+q8ZuFl27lmZtVobd8W+0wrm8r0YG+OZPVfOZPVnyN9DBQ+jJ0xUDBgPHMGkSN4fKcoKgRJoDccUQlprxJwktzkvSdxSZP6+Mu4Mg81auZtVobRN4jgYlYlNsNPHDhxhZ4JBgPHDkTu6cuwpV0pfmd5ottpPHDBoQDpkqHDBgPTRcsqcEcsqcUWWMHDBgzHiZokqXT9rfPHDhFPEUTQCZ+3ymODJTnRuekWd4MnimhTYkUpz6CiwPUUUkZutHPf.HPf.0V40P+7oxJqrA84CgPHM1oRAWY.kHcHDBgnlkd5oiIMoIA+82eXgEV.WbwELvANPbhSbBYt8yadyCKXAK...ae6aGwDSLvVasEVZokHjPBAacqaUgGuScpSgQMpQAe80WXokVBKszRLlwLFbqacK..LwINQ7Ye1mIw9bricLzu90O7nG8HwKqhJp.8qe8C6ZW6BUVYkXYKaYHjPBAVXgEvQGcDQGcz35W+5Jrt7i+3OhniNZXqs1BKrvBzoN0IL24NWTZokVWusIWBEJDewW7Ene8qevFarAVYkUnu8su3S9jOoAEnUJojBlvDl.Ze6aOrzRKgSN4DhIlXvO+y+rB2u7xKOLqYMKz0t1UXokVByLyL3u+9iu3K9BTVYkoT0gDRHADczQiErfEPAoQHjFUnwbEgPHjFMN7gOLBJnfvYO6YwK+xuL9se62v69tuKJqrxP+5W+vpV0pjZeRLwDwEu3Ewbm6bwa+1uM5QO5A1xV1BV6ZWKbyM2vjlzjvhVzhj4wasqcsHpnhBm+7mGicriE6bm6DqXEq.EWbwHnfBBG7fGDm4LmAImbxRreO5QOBG+3GWhV5Rf.A33G+33hW7hHhHh.+4e9mXhSbhX26d2XIKYIH6ryF8rm8DwGe7RUOJu7xw3F23vLlwLfc1YG9rO6yvl27lQ+5W+vF23FQvAGLtyctiR+9YkUVIF8nGMV4JWIZe6aO1vF1.93O9igs1ZKVxRVBF3.GHd1ydV8t718t2MBN3fw4O+4wfG7fw1291w6+9uOLyLyvzm9zw3F23jYq+kTRIgt28tie+2+cDd3gisrksf0u90C+82eDarwhHiLx5cK7c5SeZDczQiBKrPrvEtPviGcqLDBoQDlJHqmIfc27plUdUBUkhQm3PA6I6PA6ottZPHZcz28IMVkUVYwL2byY8u+8mUXgEJw5DJTHagKbgLNNN10t10jXcgGd3LNNNVG5PGXO4IOQpx8Mey2jwwwwt8susDK+RW5RLNNNVDQDA6oO8oRsee8W+0L6s2dls1ZKa7ie7RrtMu4My333X28t2U7xJojRXbbbLNNN1jm7jYBEJ40FqrxJYsqcsi0pV0JoVWrwFKyHiLhs6cuaopG28t2k4qu9xF3.GnTqSdxHiLXbbbLarwFVqacqYokVZRsMaXCafYjQFwl7jmrTqK3fCVpi2ctycXFYjQrd26dyJnfBjZe9ke4WXFZngrO3C9.IVd4kWNyM2bi05V2Z18u+8kZ+VzhVDiiiiEarwJwx6YO6IKpnhRhkcricLl4laNK7vCmUTQEI+2.HD0.QmOqOqovqA8MpTvU5ynavjzbE8ceRiUSe5SmYkUVwxImbj454ymOqcsqcrgMrgIwxEEb04N24j498O+y+v333Xe0W8URr7QLhQvL2byYYlYlxsNM7gObFGGmREbkKt3BqrxJSlk2+6+8+XbbbrTRIEwKKqrxhYlYlwlyblibqG6d26lwwwwN+4Oub2lmmnfq333Xm9zmVta2zm9zYFYjQr6cu6IwxkUvUiabiiYrwFydzidjbKuQO5QyrvBKjHH2u3K9BFGGGKgDRPl6SYkUFyGe7g4s2dKwx+uAWcvCdPlolZJKxHijURIkH25f5RVOS.KqmIPiebHMd0THvjlBuFz2PskNgPHDcNABDfMtwMhwMtwAmc1YYtMbbb3Ue0WEwEWbfOe9RrNmbxIzidzCYte93iO..Rz82DHP.1+92OF4HGIZYKaobqWye9yWYeofANvAJ24mIe80WopKae6aGUUUU3cdm2Qtk4vG9vgolZJ16d2qRUWBKrvP3gGtbW+rl0rfPgBwN24NUX4vmOe7q+5uhW9keY3hKtH2salybln7xKG6e+6W7x9we7GQ25V2PHgDhL2GyLyLr+8ue7oe5mJ2tF3d26dwvF1vvK7Bu.hKt3PKZQKTX8UcXYwWJVV7M7w5FgPZdhRE6DBgPz4t28tGDHP.71auQJojhb2NyLyLvXLjc1YKwbLknfVjESLwDXfAFHQ.YYmc1PnPgn8su8Jrd0ktzEk3UQcWWL2byA.jntjRJo.GbvATZokpvW6t4laHyLyTopKcu6cWgquCcnCvXiMtNGOW2+92GBEJDAETPJb65XG6H..t6cuK..pt5pQ5omNlwLlgB2u.BH.DP.AHy08a+1ugwMtwAgBEBas0VXpolpvxhPHDcIJ3JBgPH5bolZp..XgKbgXgKbg041mYlYJQvUJ6Mb+fG7..TS.KJhYlYFbvAGTpx1DSLQo19TSMUjWd4gNzgNTmaqSN4jRU1JJPumuLu+8uuB2l6cu6A.nvV4C.vZqsFlYlYhKuLxHCHTnP3kWdUupu+WW8pWEicriEu5q9pnUspUX4Ke4XzidzXHCYHMnxiPHDMMJ3JBgPH5bhZQme3G9ADSLwTmaus1ZqJc7ryN6..P94muB2NFighJpHkprMPImmRL2bygWd4EN6YOactsFYjQJUYWPAETu1t5pa1IJ.yBKrPEtcUWc0nhJp.1au8..vBKr...kTRI0q5w+0yd1yvzm9zw29seKDJTHhKt3va7FuA5cu6Mr1ZqaPkIgPHZRTvUDBgPz4D0BKETPAJbL8nt3s2dCf+sErjmrxJKMxj46yyWe8Em3Dm.N4jSp8zJd5omtBWe4kWNd3CeHF5PGpB2t1111VuJuLxHCvXLwauKt3BL1XiE2xWxySdxSvMu4MQfAFn3.y..BJnfv5V25.PMi4tMtwMht10th24cdGrgMrAEVlDBgnKPIzBBgPH5bd3gGvFarAG7fGTga268duGhLxHavsDhHlZpoHv.CD6bm6TpjiwyaKaYKpzwo9nyctyfOe93u9q+Rtaycu6cQe6aewZVyZTpxd+6e+JbBH93G+3..Hv.CTgki4laN7wGevd26dAiwj61sicrC.H4XUqScpS3O+y+Tly+UhLm4LGDczQipqtZIVtkVZoD++su8sGKaYKCabiaDG8nGUg0YBgPzEnfqHDBgnywiGOL+4OebxSdR4dSyG8nGEqd0qF1Zqsh6tYph268dOjSN4fu+6+dYt9ryNar5UuZU93TWF+3GObzQGwRVxRjJ3BQd8W+0wYNyYPO6YOUpxtfBJ.e4W9kxbchxPg1au8Xricr0YYs3EuX7O+y+H2LK3idziv29seKhJpnjHyMtfEr.TXgEhu5q9JYte+y+7OXW6ZWnW8pW0qVsb9ye9HnfBBSaZSSkCxlPHD0MUJ3pMcwJvJNboHyBDntpODBgPZl5sdq2Bd6s2XnCcn3m+4eFkUVY.nlwE0V25Vwzl1zfc1YmZKfmQMpQgvBKLL24NW7IexmHd7WIPf.bpScJDRHgfPCMTI5lZZBlYlY3i+3OFIlXh3EdgW.2912V75t7kuLl0rlENwINAl4LmYcls99ul4LmI93O9iQrwFqDiurqe8qivBKLjVZogktzkJ2TG+yaBSXBnW8pWXhSbh3q+5uVbKhIPf.btycNDVXggxJqLo97YXCaXnm8rmXwKdwXoKco3oO8ohW2st0svDm3DgIlXB9tu66pWulD08.e7ieLhM1XqW6CgPHZKpTvU4TjP7fBDhJpV9cQ.BgPHj5CKrvBboKcIDUTQgoO8oCarwFzt10N3ryNiIMoIAas0VDe7w2fy7b+W73wCG8nGEicriEKYIKAN4jSnMsoMvN6rCQDQDHxHiD6cu6EUWc0vJqrRsbLkmoLkof+3O9CjbxIi.BH.3jSNAO7vCDRHgfe3G9AL24NW41BTJRm6bmQ7wGO1111l3WeN3fCnqcsqHkTRAae6auNSS5Ou3iOdL6YOaLu4MOXiM1.+82eXs0Vid26dC6s2dbkqbEoRo5FXfA3nG8nXZSaZXEqXEvYmcFsoMsAt6t6Hv.CDEVXg3.G3.hGmV0GsqcsCqXEq.e+2+83zm9z068SY3jkF.mrT4RNIDBgX.SQcd55vmcrxP54I.uSDlg13j9Utw3vgTyEm6+ExPGWSHDsK569jF6XLFRM0Twku7kQxImLbxImP6ae6QjQFoLS3C25V2BFXfAve+8Wtk4EtvEf6t6N7vCOj45u+8uORHgDPxImL5XG6H5YO6Ib2c2QwEWLryN6vxW9xkHEwmWd4g6d26hN24NKN0qKTnPjXhIBO8zS3pqtJyiSgEVHRIkTP.ADfL6ZiEWbw3JW4J3JW4JnfBJ.soMsAgGd3hS.G0WUUUU3pW8pvWe8EN5nin5pqFwEWb3pW8pvRKsDcqacCcsqcE1XiMxb+u4MuILxHija.O2+92GW3BW.27l2Dt6t6nacqanKcoKvPCU78BjQFYfKe4KijRJIXkUVI9yUiM1Xo11jSNYvwwg10t1IyxRz62N3fCnUspU0w6HDhxSz2mUz3xrwtlBuFz2nRAW84GqLb27Df4EgYnsTvUDhdA569DRMt90uNL0TSQaZSaj61ryctSLtwMNrqcsKL7gObsXsiPH5ZMEBLoovqA8MTBsfPHDRyRKbgKDAETP3YO6Yxb8EUTQX0qd0vM2bilzZIDBgTuPAWQHDBoYoksrkgpqtZDSLwfabiaHd4kVZo3jm7jH5niFW6ZWCKe4KuN6taDBgPH.zjHLgPHjloBJnfvgNzgvblybPW5RWfs1ZKrxJqPlYlIXLFrwFaPbwEG5e+6uttpRHDsjXiMVjPBIHwx5ae6K..BMzPwJW4J0A0Jh9DJ3JBgPHMa0m9zGbkqbEboKcIjZpohLyLS3s2di.CLPz111VXjQFoqqhDBQKJhHh.ewW7ERrrybly..f2+8eecQUhnmgBthPHDRyZ73wCAGbvH3fCVWWUHDhNVzQGMBN3fwEu3E++r28c.UU4+e.72WtLEDLUb.hSDmfRhaIWHJtW41FlixR+oVNRMsRqTyrxxbk4rL0JkupX3rhzDUbhJffSPBjorG2642eXb0q2KiKbWmCue8OVmy44b9b3td9bdVps8NzgN.+82eSTTQhIUnwb0D5fsX98wNzfWPt9JdHhHhHhHSlO7C+vxz1HRapPIW4hiVfFWCKgsVwEYOhHhHRZHsbThHRnPTfhx8pUCIhUTqWUD1pUjtfyVfDQDQD8LNYT4iu7T4fcd9bM0gBYh7rsTEa0JRWvwbEQDQDQ+ma8nBwwi3IK3puj6bBMoxpms0qXqVQ5B8ZxUEpT.Q8HEnwUWN6pfDQDQjnfff.ROWAD58JDG5Z4CEBBnKM1J3dM4yftxL1hUT4gLAAA8VGJ9etS9XaglWIdLcqIVgI1daKwi4jQkO1yEMrmmg+ksF..I9sQZVDO77vyiw577Uuxaia1+Rdc5PLdewyCOO77vyi957z9FXId8NZKjaAePwj3VQK.5EVXgl3HoxC85ijQg.fKNYARJSAjOGDnDQDQjHQUrRFZXMs.8noVi13h3uEq9gylCB8tkbEpmPGrA91Xq44QBeddickJ..l1OmgYQ7XNedjKSFpoCxPeZgUk54ojnWa4Jwjf6XC..PeC8dl3HgHiK9dehHR5SLUoVdd34wb57L0tZKZmak+waISthUvjpjgu2mHhHhH0kegB3dop.MolxgExJ+cIXwe6dSDQDQDQDUAXskxPScthmZDWmqHhHhHhHhzCXxUDQDQDQDQ5AL4JhHhHhDg9xSkM1Vn4.kUNG97DYVhIWQDQDQjHTDIn.+ycJrBM36IhzuXxUDQDQDQDQ5AL4JhHhHhHhnmy7CLSL+.yTmJCmJ1IhHhHRDSPP.xXWCjH8tzxQ2GOirkqHhHhHhHhzCXxUDQDQDQjQPxImLl8rmM72e+wBVvBTaeaZSaBCaXCC8su8EIjPBp19t28twIO4IM1gJUNwjqHhHhHhHifIMoIgu669N3fCN.arwFUae+6e+X5Se5392+9vYmcFBOyzq+hW7hw1111LAQKUdvwbEQDQDQhXB.fi3JyeJTn.+we7GXQKZQXIKYIpsuie7iiF23FiPCMTXokr54hY7UOhHhHhDglbWrE.fqyUhDW8pWEYkUVn8su8Zru+9u+a3s2dyDqj.3qfDQDQDIB095akoNDHcPlY9joz6ms6.9r6SaamDeXxUDQDQDQRR+9u+6vVasE8nG8.2+92GG8nGEgDRHvZqsFcoKcASXBS.VY0SRR8N24N3jm7jHjPBAUu5UGcnCc.ibjiTiVS5XG6XvBKr.8t28tXut+zO8Sn0st0vKu7BO9wOFG7fGDQFYj.3IcAv3iOdTqZUKjWd4gzSOcjYlYh6bm6fe7G+Q..LxQNxxTxV4lat3Dm3DHzPCE25V2BMu4MGsu8sGADP.Zc54e+6e+vEWbAcricD2912F+4e9mHxHiDqXEqnL+2TpjIS3YGwbUhDbGa...5an2yDGIDYbw26SDQTkEcnCc.N6ryXgKbgnu8sunV0pVvKu7BO3AO.W4JWA95quH3fCF+we7GXPCZPnN0oNnssssH93iGW7hWDCdvCF6YO6QUBX..95quvFarAG+3GuXutVYkUXAKXAXYKaY3V25Vnm8rmHu7xColZp3EdgW.1XiMnCcnCH0TSE25V2BIjPBvJqrBUu5UG..W4JWA0nF0...MoIMAcsqcE6XG6Psqwcu6cwvG9vwUu5UgGd3Ab2c2w0u90w8t28Pe6aewN24NUc9Jhat4F5W+5G5YO6Id0W8Ugff.ZPCZ.hIlXzW+IWRI4rTB.fZXeYeN.jsbEQDQDQjjUTQEEF4HGI1xV1BF8nGsps+se62hYMqYgYLiYfe4W9ErwMtQ7Zu1qoZ+ae6aGuwa7F3fG7fX3Ce3k6qeSaZSQrwFKBIjPPO6YOwd1ydPu5UuT6XJtDnJNwGe7vGe7A0nF0.W9xWFst0sV09N0oNEF6XGKBHf.PngFpFkMwDSDu4a9lXpScpXZSaZnEsnEk66MoNcIophvohchHhHhHIq6bm6fUu5UqVhU..SbhSDxjICaYKaAexm7IpkXE.vnG8ng0VaMNvANfQLZKa93O9iQt4lKN4IOoZIVA.UIvEVXggCdvCpQYO7gOLdy27Mw5V25fWd4kZsJGUwwjqHhHhHhjrryN6vnF0nzX6N4jSnssssvTdTfC...H.jDQAQUtb4XhSbhZreas0VzoN0IDarwZLByxr3iOdrksrELqYMK3pqtp0io6cu6nCcnCXsqcsZrO4xki268dOCcXVoESthHhHhHRxpUspUEaqy3niNB2c2cXu81Wr6O8zS2PFd5rqbkq.kJUh90u9UhGmWd4EhJpnzX693iOnV0pVFpvqRONlqHhHhHhjrdgW3EpP6WoRk5yvoBqnYcvYMqYUhqKVwFarHwDSDJTn.xkKW01qScpiAOFqLiIWQDQDQjHzFOcNPo.vT6hsPtEbgDt3XgEkbG0pz1u4lG+3GC.f9129hpV0pVpGe94mOryN6T8+WZISRULL4JhHhHhDgtbrJfRAATobM0wLV7wGOLjqzQMrgMD..CaXCC93iO5b4015eEo+HtRUmHhHhHhLgbvAGvCdvCJ18eyadSC50uIMoI..3RW5Rk3wcnCcH7S+zOYPiERSL4JhHhHhHpLpnEc2acqao08ut0sNC50uScpSvc2cGewW7EPgBEZ8XN8oOMF5PGJNxQNhAMVj5lefYh4GXl5TYXxUDQDQDQTYzfFzf..vO9i+nF6aiabi3PG5PFzquEVXAVxRVBhN5nwq+5uNxM2bUa+olZpXJSYJvFarAKXAKvfFKRcoki.RKGcqKdxwbEQDQDQhPEMxYLfCuGRKFv.F.BHf.vxW9xwEtvEPm5TmPgEVH9q+5uvYNyYv1291055lk9z3F23PbwEGV3BWHN8oOM5cu6MZXCaHNwINABIjPfkVZI14N2IZUqZkAMNHMwjqHhHhHhjjF9vGdINi5MnAMnhsq0A.zu90OjRJonw1CLv.w29seKBJnfvl1zlfc1YG5PG5.N+4OO7zSOwe8W+E5PG5fZkot0stXJSYJZcg+cbiabpFKUk08M24NWz0t1Urm8rGbwKdQbnCcHzfFz.L4IOYrfEr.T+5WeMJyDlvDXBWFXxDLjSmIlwBtiM...8Mz6YhiDhLt368IhHogoumLgBAA7surCvJ4bFfiH8so8yY..fMNlReJuuHbLWQDQDQDQDoGvtEHQDQDQhPSpK1.AA.47QkSjYClbEQDQDQhP93lUl5PfH54vm0AQDQDQDQjd.a4JhHhHhHhnmymNH604xvjqHhHhHhHhdN0vdcuS9wtEHQDQDQDQjd.SthHhHhHhHROfIWQDQDQDQDoGvjqHhHhHhHhzC3DZAQDQDQhPa9L4fBUBL4NaKrRtLSc3PDAlbEQDQDQhRWNVEnPkBPPvTGIDQEgcKPhHhHhHhH8.1xUDQDQhHIlgRbxnxGioc1VpG66++xDojcI2rFKaf1iZ4PI+rVEKmGKjIC0wQYn+sxZz95aUIdNpLKwG8H7MqaiHpnhFJMSa1KYxjglz3FgY9NuIpacpsZ6SoRk3HAebDzQBFI9njLQQXoSlLYngMn93+6cdS3pqtnw9i6gwi09sa.24t2CBlouN..3bMqI5e.9i92u9.KrP8Oa9uIjHV62tADcL21r9dnl0n5Hf94OFP+6KjaQYusklefYB.fUNDGJykgsbEQDQjHQroo.e5QyFm5VEf6lRgl5vwriRAA7vzUhu+L4hvdPAl5vwr0l2xNPDQdKy1Dq..DDDPzwba78+vNzXe63G2C11N9Qy5Dq.dx8vct68v2uUMuG..99eX63124tl0Ik..7njRBaem+D1wO9yZruMuksiaEcLl82CIkbJXm+3OicrycqSkKsbDPZ4na2arkqHhHhDI94KlGxo.A3oKxQ0qRo+7Q+rAW1eZqRgySgJEPv2LejWgBvcmkqWtVRQ2LhH..v199uC1au8l3nQ6xN6bvq9FuIhLpnzXem7T+A..l669+g18hsUmZIBiobyMOLwWepHpaEiF6SPPP012wV2Hry1RuknMETnTItzkuJV4m+k3Dm3OvqMwwoZeJUpDQFUTPlLYXae+5QUphclvHs3oToRb4qFN9rU9E3jm5Owq+pi2fd8XxUDQDQhDw7Hk..3M5rcvNq3rC2yyRKjgAzJaL0ggQir+6s.5xyUWgRkHu7xGVHSlYahU.PUE0yKu70XeJJTA..ZimsxrMwJ..as8IuWL+70x8fBEH+7yGxkK2rMwJ..4VXA74EaK..xMu7Tae4meAHu7xG1Xi0lsIVA.XgEVfWrsdA.MuGLHWOC9UfHhHhzKJpabwDqnxMy7tuUYhLw+6+K5UAw7chv+cWHSTeWn+wjqHhHhHpxFQbBJpZwNIPdhjzC6VfDQDQhLBBBPlHtxwj9wq2IafRA.K0gGUdQS7.h42+TTKkHnScHRyLEkYnH90AIw8fA.SthHhHhHQn14ltOcyKE5NZpvlthLCwtEHQDQDQUVHERHQBzRIRgVPjMbk1wVthHhHRjXN85IyHWh4JjQlIDwuGRJLlqjTsfnD1mNHceF0jIWQDQDIRzrZwe1lpXjBsXhjXLWQhB0vdcuS9wtEHQDQDIortPxFqKjrM0ggYIIUKlHpa5JweepiSE6ZGeDXDQDQjjxUiSgoNDLeIlSHoHh3DRHoO1xUDQDQDUYiHNAEIwXtR72vURjaB8OlbEQDQDQURHEpOLGyUj4L1s.IhHhHRDZK+SNHeE.uQmrEVaYYKaII03jQDmakT30AoPh5FBL4JhHhHhDgtRrJPdJDfBcIICwbeoqHRgJyyLSjrX2BjHhHhHQnJzXORDWo9hlF4EjBIJJhIEZ8MCA1xUDQDQhDewIyFJTB7t8xNH2BVgFR2IEZvDovXtRJ75PkAyOvLA.vJGhCk4xvjqHhHhDIh4QJgBAAnT.PtoNXHQIIUqMHdyshDIRKGc+MYL4JhHhHRRYJc0VScHX9RJzU5jD4EJARxURshTq+vjqHhHhHIEebyJScHX9SD2ez3XthLmwIzBhHhHhpjPJLVejBi4JovKDEkbqLQ78fg.SthHhHhnJIjDcGshHhyshjtX2BjHhHhHQnWsS1.EJArVWpMmTHgDoPdgh+FtRZkntdDSthHhHhHQnWrdUfwVlHt9vRgwbESLQ5hcKPhHhHhpjPJLNYJJxEuoVQRYrkqHhHhDIlUOsEB.PNeznT4jjpESDwsbkjXZLWJbOTJ9zAYuNWFlbEQDQjHgG0h+rMUAIhyGQEY7oKPFG0vdc+8Z7cmDQDQjjx5BIartPx1TGFl2Dws1vS6Vfh2LEkBcOSov8fg.eDXDQDQjjxUiSgoNDLaIEpPbQgtXtWARRWrkqHhHhHpRBNlqLOHEdcPJbOXHvjqHhHhHpxBwa9HOkHtU2ToRvjAQkUraARDQDQjHzOb1bPdEB75czVXqU5XszEwUpunVJQLOlqjDXBhZESthHhHhHQnqFmBjSABnv1KfxZMb4Xtx7fT30AR6pvIW8uIj.twMuARNkTfBEhmAP5K7e+6Ouu8ZRiChL1368IwHYxjA6s2d3QSaJ7v8lZpCGhDsjTM1fXN6JRxpBkb0ChKVb5ybF8UrPDQDoUBBBHyLyDW7RWBBBBnYM0CScHYR7U+Q1H+BAlUOrCVaojn5wTEvSmRx0ARgDRj.s1iTXxfnxPquM+.yD..qbHNTlKSEJ4pqcsqA.fl4QyPKaQygMVaSE4zYTE7pmK..FyKOJSbjPjwEeuOIFoToRbm6cWb9KbAD0stUk1jqh4QJQ9JDfRIP8iISLQ7Bwa4JoRhJGRKGc+cYUnjqxHymjMmmstUvR4b3aQDQjggEVXAZTCaHN+Et.xJqrL0gCYlaJc0VScHX15osXh3UQsThfXtU3j.8OSIvsfAgdIiHKDwO8ChHhDG3u0PkU93lUl5PvrUQ4iHI5IWh4jqHIK9KUDQDQhDr6PQOqx0rlmTHgDIPlgRhwqjpL0Y5DOK9WChHhHhprQDWodovCYfcoNoqJT2BTlLYPPPfKhaDQDQDYjMwNZKJTg.rSGV.gkByRcRhwbEIYwYgBhHhHQBovhmJo+3sq5d033XtxLgDnK0IElbTLDDuuhRDQDQDoaDyIjTDIQlgjTk9okqj.eNkHhHxb26zcagRA.aX+NgpnDwInHMFyUh+V8QR0JnEiOcP1qykge8LQjFxKu7PpolJpYMqIrzR90DDYtnoNyOORULRgIRANlqHikZXut2I+X2BjHRCAETPnd0qd3F23Fl5PgHhzYqKjrw5BIaScXXVRRLEf+eDy4VIIZ0GIwMg9GSthHhnRT1YmMlvDl.BN3fM0gBQkIWMNE3pwovTGFlmDyYj7ejD0kmIlHYwjqHhHpDke94ie9m+YDQDQXpCEhH8EQck5kBi5JwOovz5ug.SthHhHhnJI3Xtx7.SLQ5pBuHBC.tHBSRVYjQF3pW8p3t28tnZUqZnYMqYvc2cuTKWZokFBKrvPFYjAdwW7EQ8qe805wIHHfryNaXiM1TrSbDJTn.4latnJUoJp9LmRkJQN4jCr0Vagb4xA.vst0svktzkPSZRSPqZUqfs1ZaoFmomd53bm6bnfBJ.coKcAUqZUqTKSYQt4lKBKrvv8u+8QCaXCQqacqQUqZUK0x8u+6+hKbgK.KszRzt10N3ryNq0iqfBJ.4me9vd6sW006rm8rHwDSDsrksDst0sVi3IzPCEomd5vGe7At3hKZbNK5uy1YmcvBKdxyc5xW9x3l27lvEWbAd6s2vQGcrLc+WVuOz107l27l3ZW6ZvCO7.srksDVas0koq24N24fs1ZK71auKy+cSgBE3BW3BH1XiEd5omvc2cWUbTjbxIGjUVYAfmzBVYkUVvBKr.1YmcpcbImbx3ZW6ZH1XiEN6rynksrkvM2bqTichnxusEZNHmB.d0NXKph0ksJoywbEQFVrkqHpXr90udzvF1Pz8t2c7pu5qhgLjgfl27lC+7yOb6aeasVlae6aiN24NiZVyZh9129hW9keYz3F2X3hKtf.CLPMN9XiMV3jSNgcricTrwwu9q+JbxImTqKYc9yed3jSNgicrigicrigF1vFhVzhVfwO9wiN1wNBmc1Ysd8dVcu6cG0nF0.ADP.XHCYHnl0rln8su8HlXhoL9WHMkYlYhwLlw.mbxIz8t2c7Juxq.e80WTu5UO7QezGAkJUp0xclybFzzl1TTu5UOLzgNTLvANPT25VWzpV0JbwKdQMN9UtxUBmbxITXgEh28ceWTspUMzm9zGLtwMNz111VL3AOXjSN4.AAAL0oNUTspUM3me9ggO7gi5W+5iwLlwfBJn.0NmAGbvvImbBgEVX37m+7nMsoMvGe7Auxq7Jn28t2n5Uu53kdoWBwFarE68utdebzidT3jSNgKbgKf8u+8CWbwE3omdhwO9wCe7wGT25VWbxSdxh85c4KeYzxV1RTu5UOLhQLBz+92eT25VWz6d2a7u+6+pwwuhUrB3jSNAEJTfO8S+TT8pWczst0ML5QOZzxV1RzpV0JDczQqVY7vCOPCZPC..v6+9uObxImfWd4kZGyG9geHpe8qO7yO+vq8ZuFFv.F.ZbiaLFwHFARN4jK13mHphI7Gp.WN1BQ9JzgrLj.YjHAxKTRLjqjB2CFBL4JhzhCbfCfYLiYft10thCcnCgG+3GiKe4Ki0rl0fqe8qiALfAfLxHC0JyoO8ogO93ChO93wO8S+Dt+8uORKszvoN0oPW5RWvHFwHvm7IehdMN2xV1BF23FGd+2+8QBIj.xImbv0u90Q.AD.F4HGI18t2cwV1qbkqf0u90iHhHBjQFYfScpSAWbwEz0t1UboKcIcNVd3CeH5Tm5DNxQNB91u8aQTQEExImbvktzkPu6cuwxV1xv7m+70nb6XG6.8rm8D0rl0D+u+2+CO5QOBIlXh3vG9vvAGb.csqcE+xu7KZ8ZN24NWDTPAgCe3CizSOcjbxIiu5q9JDTPAgEsnEgYNyYhSbhSfCbfCfTSMUjRJofMtwMhe8W+Ur7kubsdNO6YOK5V25F5V25FBMzPQ1YmMt0stEV8pWMBKrvP6ZW6P3gGtd893K9hu.Se5SGqXEq.IkTRH6ryFW9xWFcpScB8qe8CAETPZTl.CLPzktzET0pVUbricLjZpoh3iOdru8sODczQCu81abm6bGsd8F+3GO18t2M16d2Kd7ieLd7ieLN4IOIrxJqPG6XGUKA6Ce3CiidziB.fYMqYgyd1yhe629MU6+q+5uFKe4KGiZTiBm3Dm.YlYl3rm8rXYKaYH3fCFCe3CGJTvIV.hL6HpqQLGyUjYLgJf89q+hvt26dDJnfBpHmFSheuC0W326P8M0gAYlZfCbfB1ZqsBIjPBZru+5u9KA4xkK7i+3OpZaJUpTvSO8TnIMoIBwEWbZTFkJUJL4IOYAqrxJgnhJJUa+92+9BxkKWXKaYKEarrm8rGA4xkKbiabCUa6rm8rBxkKWvJqrR3bm6bZTlBKrPgl0rlIzl1zFM1WQu2+xW9xZrOEJTHLoIMIA4xkKHWtbgqbkqTrw0yaRSZRBUspUUHrvBSi8UPAEHz5V2ZA4xkKDczQqZ6ojRJBN4jSB8rm8THqrxRixkc1YK7RuzKIT6ZWa01+xV1xDjKWtPqacqERKszznbst0sVvRKsTnIMoIBIkTRZr+N24NK3t6tq11N7gOrfb4xEr0VaEV0pVkVuGuzktjf0VasvfG7fUa6k26ifBJHA4xkKTkpTE0d88YKmKt3hPO6YOUa6YlYlB0oN0Qn28t2B4kWdZTtjSNYg5V25J75u9qq11+3O9iEjKWtfGd3gPpolpFkKxHiTvRKsTXtyctps8TSMUA4xkK7Ue0WoQYZcqasPcqacExM2b0Xe6XG6PPtb4Bm9zmVi8Uds68tGgcu28n2NehMq8OxRXkGKKgryWooNTLqM0c+Xgot6GapCCCt282xPXp69wBolshxbYdPrwILxw7JB+eyY9FvHS+Xji4UDF4XdEM196M+EKLxw7JB29N20DDU5lh6d3e+2DDF4XdEgoOy20DDU5NsceHEtGJMy6.YHLuCjgNUF1xUDoEIkTRvYmcF0nF0Pi84qu9hwN1wpVKWsu8sObiabCrvEtPsNddjISFV9xWNrvBKJ1VLo7Xzidzn8su8Zrc4xki.BH.Dd3gqVWw6YaQp1zl1nQ4rvBKvpW8pUMlbJqt0stE1wN1Al7jmLdwW7E0X+VZok369tuC.Pstq3W7EeAxLyLwpV0pPUpRUznb1YmcX4Ke4HojRBqe8qWi8O24NW3jSNow16Se5CDDDvblybz5qg94me3N24NH+7yWi84pqth4Lm4n06y1111hYLiYfCe3Cq1Z.VE89XxSdxnEsnEZsb94meZzRhe8W+0HojRBqacqSqiIqpW8piEu3Eicsqcg6cu6ow9W7hWrVGecd3gGvCO7PmZ4xjRJIzvF1PXiM1nw9F9vGNFxPFBRHgDJymOpjESRJQLIo.EpjOwdp7Qfi4JhJyRKGAjVN51azXxUDoEADP.3gO7gX4Ke4Hu7xSi8uyctSLsoMMU++m5TmBVZokX7ie7E64r10t1nO8oO3O+y+TuEm8rm8rX2mqt5J.fpIi..fSbhSTpmyW3EdAL5QOZcJNBN3fgff.l7jmbwdL95quHqrxByblyT01N0oNEZUqZE7wGeJwx4pqtp0+t4qu9p0xTzXDpacqaZc+MrgMD..olZpZruW+0ecUSRHZyvG9vA.v4N24TssJ58Qo853y9ZHvS968K9huHZVyZVwVtd1ydBkJUp0w5Uoc8xLyLK18+7BHf.v4N24vV1xVzXL0Yu81ie8W+ULrgMrx74iJYh+pCabLktZKlRWK8I0mJijBIjHIRL7+9Ww7chT3dvPnBMaARjT0jm7jwgO7gwxV1xvl27lwvG9vQO6YOge94mVm06hN5nQ8qe805Su+Y0nF0H76+9uiBJn.XkUVUgiyhaVgC.pl8Ae1J7d6aea3YY37psVQojDUTQAYxjAO7viR73d9+9DczQWrIH8rZTiZjVmDQpacqaIVtRa+ZqkqZZSaZIVll27lC.nVKBUQuOJsWGEdtZCEQDQfF1vFhUrhUTrkqnGJv8u+804qWwMwinMu268d3zm9zXZSaZXkqbkXnCcnnW8pWnG8nGkoYrRhLD7wsJ92uJ0ItyOQ7OlqjRsfHoNlbEQZgKt3BN8oOM9ge3GvgNzgvV25Vw28ceGrzRKQe5Sevm8YelZS22IjPBkXEVKRMqYMgff.RJojJ0J9WVnqInEe7wWlNtZW6ZqSm2XiMV7BuvKTrSm7ZiRkJQJojRY9uaW+5WWisWZ2+kmDXqScpSIt+h51eIkTR.v3be7rxO+7QxImLjKWNNvANPIdr93iOZsU3zGI1WjV1xVhKcoKgMrgMfibjifu4a9Frl0rFXmc1gANvAhUspUwojc8nhpGlTn0GHSEwe6MvOGPlyXxUDULrzRKwTm5TwTm5TgBEJv0t10PPAEDV6ZWKZe6aO1291GF3.GH.dRKRbkqbkR8b9vG9PXkUVoSIujRJoTtuGdd0oN0A3gk9wURS23ZiKt3BRM0TQgEVXYNAKKrvBTu5UODWbwUpG6Ce3CU0U9LzdvCdPIt+DSLQ..UILXruOr1ZqgSN4D5cu6M14N2YE5bouTkpTELm4LGLm4LGje94iKdwKh.CLPr90udDbvAifCNXsN1.IhL9jRsXxy2p9hJRf4wboz6kzm3XthnmSAET.hN5nwie7iUsM4xki1111hEtvEhHiLRXkUVg0t10pZ+snEs.wEWbH6rytDO2W+5WGMsoMU0B0ZQsfPIMFWd90cnJhhFKRklmcxZnrnwMtwPPPPs0hqmmff.V3BWH1vF1fps0hVzBDYjQVhm6BJn.DUTQUhiuH8oqcsqUh6unVdpIMoIp1lw99nQMpQ3V25Vk3wnPgBjZpohbyM2J70q3jSN4fniNZjSN4nZaVas0nScpS3y9rOCW3BW.YjQFXyadyFrXfnJylPGrEStK1B6KiKfv.RiV6gUlmLmUgRtpn2bKHh6yqD87JrvBQqZUqv6+9uuV2uSN4DFzfFD96+9uU8Ta70Wegff.1zl1Twddu10tF9m+4ef+96upsUqZUKHWtbbricLsVFEJTTpKFv5hd0qdUpGShIlH16d2qNcd8yO+..vF23FK1i4W+0eEqZUqRsjV80WeQLwDSItP4tu8sOjVZoo1e2Lj99u+6KwjcW+5WOpRUphZSJDF66i9zm9fKbgKfqd0qVrGy7m+7gyN6LBMzPqvWuhyCe3CQyadyw29seqV2u6t6N5PG5.BIjPLXwPkMh+QZBoO0VWsDsu9VAqjq6IaHMxOQ79IAwemyDRhVeyPfsbEQOG6ryNzst0Mr6cuasNY.jat4hKbgK.O8zSUOfgALfAfd26diUtxUp0VuI8zSGu0a8VvImbBKZQKR01svBKf2d6MNwINgVa0qu5q9phcgfs7nCcnCp9ue1Y6thje94i24cdGcdhHvKu7BCZPCB+vO7CZMACAAA7QezGgpTkpfwMtwoZ6yZVyB0u90GyctyU0XX5Yc6aearnEsH3kWdgILgInSwT40ie7iwLlwLPgEVnF6am6bm3HG4HX5Se5n5Uu5p1tw993ce22E1ZqsXFyXFpkrZQBKrvvW+0eM71auQ26d2qvWuhde9yuX.2jlzDzfFz.rgMrAjd5oqQ4RN4jQDQDA7xKupvw.Qj9h3uZ8pd39h2bqHILlbEQZw5V25Pt4lK70Wew69tuKNxQNBhN5nwgO7gQe5SevctycvRVxRznLE0knV8pWMNyYNCt5UuJ1vF1.70Wewku7kwl27lwK7BufZkaIKYIH+7yGADP.H3fCFwDSL33G+3XZSaZXgKbgXLiYLFj6Qe80WrnEsH7m+4ehHhHBryctSzyd1S7O+y+fO6y9Lc97s5UuZ3pqth92+9iO3C9.bhSbBbqacKbvCdP3qu9hadyahMrgMf5Uu5opL1Ymc36+9uGwDSLn8su8XSaZS3xW9xHzPCEqYMqAcsqcE4kWdXyadyp5JkFZaZSaBG+3GG96u+3m9oeBQFYj3fG7fX5Se530e8WGcsqcEKXAKPsxXruOpYMqIV+5WOBMzPQG6XGwl27lwUu5Uwu+6+Nl9zmN5e+6ObzQGwd1ydpvWKfmzZsVas03XG6X31291pMob78e+2i6cu6gN24NiEu3EiScpSgnhJJ7K+xufdzidf7yOeL24NW8RbP.uou1h4zK6zotAFQOKoz3jQLOlqjBuNH9SSuz8oCxd7oCR2V6O0OSnEh22aSjV07l2bDZnghoO8oiu9q+Z70e8WqZecqacSURVOK2c2cDd3gi4N24hku7kqpqkYkUVgN24Ni8su8o0waS+6e+wu7K+Bl9zmNFv.Ffps6kWdgSbhSfTRIEbhSbB0lnHrxJqfyN6bIN0uWkpTE3ryNWrUlefCbfX8qe8Xkqbk.3ISfGidziFAFXf37m+7vYmcVml8+ZRSZBtvEt.l4LmI13F2nZIn05V2Zb7iebzidzCMJWu5Uuv0t10vLlwLvrl0rTM8nau81i90u9g0st0gZVyZpVYbvAGJwYmuR6d2N6rCN6ryZclzqUspU3zm9z3se62FSe5SW0qi0oN0AyXFy.qZUqRqy1dkm6CarwF3ryNWhydeN3fCnV0pVZr8INwIhVzhVfYNyYhYNyYhBJn..7jendXCaXXUqZUZL4YTZ+cC.Zj7eQl6bmKV0pVE7vCOfs1Zqp+tzyd1SbpScJ71u8aiUrhUnZ5gWlLYHf.B.acqasDW+uHcSSclyCUTEiHNeDUDw4i7TrK0IJTC608GHpLgJPZ++x9+MTXgEhQLzgoWmZeMFBtiOYf822PuWobjTkcYjQFHxHiD1ZqsvM2bCN4jSkoxc6aeajYlYhV1xVVlSRIgDR.28t2Et5pqp0BO5SO+68uyctCRIkTfGd3gVWCuJuhM1Xw+9u+K7vCOfiN5XYpLJTn.QFYjvRKsDMsoM0n9D8BJnfvfG7fw+7O+ipY1NkJUhabiafpUspoSudXruOJrvBwMu4MgkVZIZRSZBr1ZqMHWmLyLSbyadS3teobKEL...B.IQTPT4tq0jvRM0TQTQEEbxImfat4Fr2dc6o8UV7y66IiGvw7xiRuetIoi0ExS5l0usuUwDGIlet8ctGl+BWBZTCa.V0m8wl5voD8xi8UA.v9181Ua6K7C9XbqniAexG+Avil5toHzJyJt6g3h6gXVu26CWbot3q+hheMKzbg1tOh6gwiY8tK.tT25fudMqzTEZkYE2qE5a7QfQTonpUspkqm7diabi04xT6ZWacdMlphpQMpQnQMpQ58ya8pW8z4DDkKWNZYKaodOVJurvBKTa8LqrxXeeXokVBO8rrr7PWw3fCNThSo5uvK7BnicriF73fnRyUiSQoePUZI96LWRg04Jw+qBTwgi4JhHhHhpjPJ0az3rUMYNhIWQDQDQTkDh4IAhmR7mYnTXBsPRkotdD6VfDQDQlAR8Zgg68yaBoc4yi7SMUHnPooNjDsF9+8uA+kZe+xs0FXacbA0ra9gFNlo.ac131cr0W1w4xEYku.lX6sANXit87xEyUpWlTneARRVUnjq3hHLQjTQ+6e+QAETfntBGj3jPgEhqu5Eh31u9YpymJcJxMOj0cuCx5taFOXOaEdL6khFLhWwTGV5rviuPjdNBXzdaCPwO4w9bD+0YSJjakTnQe33FS6XKWQDQ+GlXEYJD9JlOd3A+EHStbT+w95v0ALJXuaMFVHxlEdMmLseNC..rwwn8Y.0Bx7wHsqeYbu878H4S+mHhU8APQNYgFOg2xXFllDOsR8h+uuiObexbDSthHhHxDIoKb5mjXkkVh18M6B03E6bId7eWHYiLyC3s70VTUcrafQOkUN3HbtiuDbtiuDt2usSDwJWLh96VEpYm6AbrIsvTGdFTRgwbkLIQakH9a2GIw3FqTL+.exZ53JGhCk4xvuYlHhHxD496cK..nASXJkZhU..2NIkHljT.NbrzeZvvmHbYPiDBJTh6ri0YpCGcRQUos7jtjnt9vUjabyDUFRLQJHsbDPZ4nauQS+zxUhj2beiubo3wWKL011Ymz.A.fid1NzxY+QlhvhHhnJoR+JW...tNvx1hhrTXrlXLLktZqNc7MXrSFO7f+BR87m1.EQlSD+sXhpw7O+f.YFpRU2BrFc3kvC94so11R+5WC..MdxywDDQDQDUYV9o+X..XuKMvDGIRK93ltMd0pZC8...4kRpFhvwrhTXhTnHh4wbkT30Aov8fgPkptEXs6ZuQUaVyzX6UsYMC0pK8xDDQDQDUoVQcMH4xKSGtDn2PYVR0e+qDzRHh4DRJhzXLWQRUUpZ4J.flLs4iKOmIow1HRJicIVhHR5ohkrsHNAEIwSYP728LkF2C5eU5RtpnVuJiHiD.OoUqpcW6sINpHxvhcIVhHR5Yrs2VjegBvQazgJ2JAlHE3XthLmUopaAVjmskpXqVQUFvtDKQRDRhmXOouzFWrDsu9VAqsrrmnjTZbxHl6hiRgYKPov8fgPEJ4JUO4.Q1atKphlrUqnJSz1CRfObAhHpxEwVc1zNwek4kRKlyj5pz0s.KBqTIUYC6RrDI9M0tZKTnDnp1xJjQULh4IEBUIjHExSTDSJ0JnEmOcP1qykoRY2BD3IUzjUrjprgcIVhD2bulVhlUKKgUxkv0lgLrj.yAARiwbkD3EhJApg8VfZXutktTkpEQXhpr6YG6U7gKPDIUstPxF..usuUwDGIlejRiSFV8SxbTk1tEHQUVwVrhHRp6pwovTGBlsjFi4JwOoQWpis9l1XzStJ9ScXDyFVIx592GPI+.tXgEVaEbxSugGybInZM2SC10I8HCGQt1OFoe0KBk4WfA65P5YVHCUwM2PSl17fK8dPFrKStOJAD05+Tj7eeBje5YXvtNj9mUNVUTit0K3wzWHry45XpCGhpzSZLlqX8HIyOF0wbUBm933pKX5Hq6dOlXkHix7K.oF14v4m7PQZ27pFjqQ5QFNN2jGJR8BgxDqDaTJfru28w0V36fDB4nFjKQ1w+.7OSnOH9Ce.lXkHTAONC7uAEHN6D7GY+v6apCGhp7RBzXCRgwbkTn6YJEtGLDLpsb0s27W...2F8qflM8EB41Zmw7xSU.4k7iP3e1bQRgbJD02rLzguae58qQje8GAk4W.pQW6NZ86+4vVmqsd+ZPFFJxMGD45WAdvOuMb6s7kn195ud+Zbyu3CP9okNpZyZFZ0hVCbziVwuPWjPPP.O9V2.W+SlCxHhHvMWyRP6V81L0gEQhd+3ExEONWALNerANYaY64kKkpPr3M0JRJyn1xUYbqn..f6S9cYhUhL1TCmQqWvp..P5W6RFjqQQmWOW3pYhUhLxs0NzzIOG.7zOmqukx4NM..79y2FbpYsVRTwfJKjISFbxiVg19YaF.O80RhnJlveXg3xwVHxqvxdY3Xtxbg3+0AtVcocFsjqDDDfPgO4S+V6X0LVWVROxlZVK..CVW1qnyaQWGRbwpp5D.fpOmquoLu7A.fsb75HZUEWpO.d5qkDQlRh2JDKEFyULwDoqJTxUp5yqkkruEwe.fHxLfD3GSIphZimNGrpimMRKGkl5PgDqj.UpWJLlqHwg4GXlX9AloNUFi2XtR4+8CAVHd+vLY3vufjJUxvSpT.euBUI1cSVARIaAT.mowomkN70hbLWYd3ouNXhCjJDIvriRoHsbz82kYzRtRJ8gYhHSGAAAI7WiSTYiXtRkFCSoq1ZpCAihxSUp36cHxvR+jbUYpWAJ8ytkHxvQlLYbfXSDUl3iaVYpCAx.RJLlqjBs5izXgPV+y3MaAJ7ecKP9B.QT4B6i8DoB+X.UdIA5IQRhbqHIKiXxUh+LzIhLGveMkp7RDWeXx.RW9VQozvzPL2aFjBs5iT58R5SUntEXQ+orr7Vag+aBsf+8mzJov2xPFVp9BGw6OlRzyhsBKUQMl1YKxqPA3jsk8e6juqy7ffDnaARZmwa1BrneDwBi55VLQjjA6GHDUD9o.B.vKWLdUiybhzXLWIEv+9qMF0EQXhHp75o+VJ+tDhHpbSBzUtd55bkINPpHj.uNPZWE6QdHSG5XfBE0s.4ahHhJG3SpjHL4tXKJPAvKXG+sTp7QJMNYDyi4JRb3SGj85bYL5qyUbL0PDUtvjqHBMtFUN6FXj9iz3aPE+0kTJTs3mdOHhuIJE0vdcuS9Yzms.kxu.PU.p9DpoMLLk96+9uwpW8pQ5omtoNTLqwtEHQToYcgjMVWHYWr6+XG6XXAKXAFwHhzmjwI3HxLl9I4pxTuB7+5VfVTIt1yDUB98e+2wBVvBPJojhoNTLKISW5FxDQUpc03TfqFmBM19QO5QQW5RWP.AD.N6YOqIHxLCHAdX2RgwbUQcoQYh3mp7S6hol3.wLiwe1BTD+lHhLjpe8qO5XG6Hr0VaM0gh4Mw7ulRDYRbzidT7ge3GhyctyYpCESNoP2QqHbLWQliLAIWQDoMScpSEScpS0TGFluT8jJ42kPDU1TRIU82+8eCKs7oUC5vsyU..01l4tBKrPctLRgDRDys1iJRh1bPRbSn2w04JhHQAttlPDQp6mBKWjdNBXrsyFTM6p7T+JovOGHkl0FI0UgRtRWFADreYRkEFpujofBJ.G9vGFgFZnH7vCGMtwMFu3K9hXTiZTvN6rSiieu6cun5Uu5vO+7CO3AO.G9vGF+we7GvFarAssssEiabiC0t10tXudojRJ3HG4HHrvBCQDQDvEWbACaXCCADP.vBKr.acqaEMu4MGctycVUYt10tFNyYNClzjlDrxJq..PVYkE10t1E5QO5AZVyZFBKrvPvAGLBMzPgat4F7wGevDlvDJwmz5st0svwN1wPngFJxImbf2d6M7yO+P6ae6q.+E0DfCfYhHcj+96O72e+0ZKX0st0M7G+wen5+O3N1..T9ZMHSkEenLwixT.C0KaP0z7mxzNIUk54uGPleLhKhvOYBs.xp77jUHcfArBywGe7nm8rm3ke4WFAETPnpUsp3Lm4LXpScpnScpSHpnhRixrzktT78e+2i.CLPzxV1RrksrEXkUVg3iOdrzktTzgNzAbkqbEsd8BKrvf2d6MdsW60vwN1wfSN4DBO7vwvG9vg+96ORN4jwrl0rv9129TqbG+3GGu8a+1HmbxQ01RIkTva+1uMBIjPv6+9uO5ZW6JN0oNEbzQGwktzkvjm7jQ+6e+QZoklVikssssAu7xK7AevGfDSLQje94i0st0gtzktfO9i+Xn7+lnYDCjwtEHQT4j+96ONyYNCBJnfPG5PGL0giIkTZ5yVL+6ARiIzhm7uRf2JoWY76Vf7U.xHJyLyDcricDVXgE3Lm4Lp0ZMQFYj3ke4WFcu6cGwDSLnJUoJpU1ScpSgidzih8u+8C+7yOUaOt3hS0SC8AO3AvZqsV09t8suM5V25Fb1YmwwO9wQ26d2UsuDRHALjgLDLtwMNcNolO3C9.3hKtfHhHBzvF1PUaOjPBA94meXpScpXu6cupUlMrgMf24cdGLsoMM7ke4WpJNEDDvm+4eNVzhVDrwFav7m+70oXwjSD+ioDUQsk+IGjbVB3M5rskq0ekJ6d1Vx5jm7jl5vwjPRLlqXcIIij4GXl..XkCwgxbYpXeyrNL0H+zLzIx3YMqYM3e+2+EG5PGRitAWyZVyv+6+8+PJojBV+5WuFkM4jSFaYKaQsDq..b0UWwG9geHRN4jwwN1wTaeqbkqDEVXgX+6e+pkXE.PsqcswoN0ov0u90Uq0oJKxLyLQPAEjZIVA.3qu9hW8UeUDXfAhLyLSUaOiLx.KYIKACdvCFqacqSsD.kISFl27lGdy27Mwm+4eNxHiLzoXwzge6AQ2MYEHljTf7zbVFmzA96u+XEqXEl5vvDSD+cpRfohcovbAgfT3lnTjVNBHsbzs2nY7drWE8j54DZAYjje94iUu5UiwO9wiV25Vq0iogMrgXTiZTXcqacZruZW6ZigMrgo0x4s2dCfmzJVEI2byEaaaaCibjiDsqcsSqkyN6rCu268d55sBFwHFQwNFuZaaaKTnPARJojTssMu4MiTRIErxUtxh8bNu4MOjVZog8rm8nywCQjIBWt2JSlRWsESoqR+k0hx0aGjDiAd9AAx7kwKSG1s.IirniNZjc1YC+82+R737zSOwCdvCPAETfZauMsoMEaYpYMqI.fZs.08t28fBEJPG6XGKwqW.ADPoE5Znssss5TrbwKdQ3latgl1zlVrkyM2bCN3fCH5niVmiGSBovzCEQjQgOtYE7wMqL0ggYINlqLOHIls.kB2CF.5mwbUY381BhnANOYJo+9.ZjQFI..V7hWL9jO4SJ1iKszRCBBBHt3hSstcmCNT16es.OI4J..2c28R73d9t1WYgtFKQFYj3QO5QEaK1UjbxIGb+6eecNdLIXxUjTCenijI.GyUlGpLzk5prxnMgVnJCc1s.IijrxJK..LzgNTznF0nR83e9IzBKzw2qVz6wyM2bKwiStb4574VWO9rxJK3hKtf27MeyR8XcyM2zoysoxSysR7Ww.hJuXmghzWDyyRcVvm0lYA97gzNi3xPNyPmLtJJgpN0oNgW9keYC90qwMtw..HwDSrDOt6cu6YvmBzaTiZDhJpnv67NuiA85Xb8eCfYVsRhDMNwINAN4IOYI16AnxuQ0NaQtEHfpaWYutURiJDKAdLCRntmIoN8RyHUldqspIzB9lHx3nIMoI..3BW3Bk3wETPAgu4a9FMFyU5pFzfF.qrxJbzidzR73LFS+ut6t63d26dpMIW77RKszv27MeC9q+5uL3widA6VfDAywJUpToRjRJof7yOeM12e8W+UINw5nqd7ieLd7ierd67I14YcsDsu9VAasRWpak4y6cpn3OGPliLhKhvFmA8lRkJQzQGMdzidjA85TQDczQiTSMUScXH4Um5TGzu90OrwMtwhcQ1MhHh.Ce3CG6e+6GVYUEavOas0ViIO4IiCe3CWrSRDETPA3y9rOqBccJKlzjlDTpTI9hu3KJ1iYtyctX1yd1ZsBQlkpjmbUrwFKhO93M0gAQZH5niF0pV0B+5u9qF7q0fG7fwPFxPL3WGoLIQWqVB7b5kBSnERgEBYCAI2rEXlYlIZdyaNVxRVhA85TdoToRz7l2b7se62ZpCEyJFpureoKcoHyLyDCdvCVitqWJojBlxTlBTpTI93O9i0KWu4Mu4AKszRz291WMRvJiLx.CYHCAJUpDxkKWub8JNsoMsACdvCFqYMqAadyaVi8GXfAhst0sht28tqw53k4pm975k.ULnbXXCaXXJSYJl5vfLwdsNYClSurCNyEPXpBRLWodYpVmqpb96AjwymNH6wmNH60oxTg91YY5vhHrptEnLw0OHbiabCLzgNTb0qdUScnPkCsu8sG6ae6CW4JWAsrksDiXDi.KdwKF8rm8D0oN0Am+7mGqe8qGcqacSub8byM2vIO4IQVYkEZaaaK5ae6KV7hWLF+3GO7vCOvCdvCvoO8ogRkJUag80PXaaaaX.CX.3sdq2B93iOXFyXFX5Se5nd0qdXDiXDvSO8D6cu60fFC5UUBZ4p.CLPLzgNTcdQlVWkWd4ggNzghCbfCXPuNj9WiqgknY0xRXskh2JFSlVp9JTQbxUlicOVck3MxeFUBlNEpg8VfZniOLKi2rEnplNzvppUspH93iG1Ymc5kyWJojBNzgNDlwLlgd47QFeCaXCCd5om3G+weDW7hWD6cu6Et3hKXpScpXNyYNplHJdVSZRSB0st0sXOm1XiMX1yd1ZcwBtycty3BW3BXW6ZW3e9m+A+1u8anssss3C9fO.iabiCxjICBBBvEWbQsx0t10NL6YOaXiM1nZaN5niX1yd1k3TpdyZVyvrm8rQMpQMTa6N5ni329seC+zO8SHjPBAm6bmCYkUVnicrine8qeXRSZRF7VPSupRPxUwDSL3PG5PnvBKzfdcTnPANzgND5ZW6pA85PlVYmc1Xu6cu37m+73JW4JvM2bC93iOXfCbfnYMqYZb7G8nGE27l2D+e+e+eE64bqacqvQGcDiXDi...qZUqBIjPB.3IObf6d26h5Uu5gINwIVlhwqd0qhCcnCgPCMTjQFY.u81a3me9ow5A3QO5QQXgEFt+8uOjISlptW8TlxTTsV+8rVWHYC.f212pnw9HoSMhkv+b.IhY7RtRYQcKPC60QlLYvYmc1vdQHQG2c2crzktzx7wO24N2Rb+1Ymc3y+7OuX2e8pW8vBVvBz591+92O.zbJP+kdoWBuzK8RpsMmbxoR75.7jt.XIsfGOtwMNLtwMtR7bHJTIH4JhzWhN5nwvG9vQDQDAZSaZCZe6aOdvCd.V4JWI9fO3Cv5W+5wq9pupZkIv.CD6ae6qDSt5a9luAt4lapRt5PG5PHiLx..OYwK+92+9vSO8rLkb028ceGl8rmMpScpC5RW5Bb1YmwwO9wwW+0eMlxTlB9pu5qT8vlBO7vwAO3AQxImL..N3AOH..F8nGsVSt5pwonL7WoJmjBckNQcitUDovXtRBbOXHX7lJ1K5CyFg04pDSLQXu81C6s+o8QxzSOcTXgEp5o6md5oi+7O+SjUVYg1zl1fl0rlo1SwWPP.IlXhHkTRA..olZpHgDR.1ZqsvImbRiq4MtwMvMu4MQhIlHpcsqM71auKSqsROuBKrPjbxICKszRMZIhhbqacKbtycNTkpTE3s2dWtVTZICiW5kdI3fCNffBJnh8X1912NbzQGg+96uQLxjPLQULH8zSGgEVX3N24NvSO8Dd4kWvVasUqGaRIkDr1ZqgiN5nV2uRkJwidzifiN5HryN6P94mORM0TUUI0DSLQjc1YCGbvA09drRhff.hHhHv4O+4Q0pV0f2d6sVWCyRJojTccxLyLQBIj.jKWtVqfpoPhm4jHoP+SzxY+Ql5PQzJszRCcpScBVas037m+7p8vWxO+7wjlzjva7FuArzRKw3G+3qPWq+5u9KDUTQgV1xVhO5i9HL1wN1xT4V25VG9+9+9+vrm8rwm8YeFrzxmVcjctychoMsoAGbvAUObo4Lm4f4Lm4fdzid.YxjgScpSUghaRbWgXovXthIlHcoexzor7dai3BqP8pW8zXFYapScpvWe8EYmc1X7ie7nl0rlXricr3UdkWAd4kWnacqap5ZC.OY5d0UWcECe3CG..iYLiAt5pq30dsWSsya3gGNdoW5kfWd4EFyXFCd+2+8wnF0nfGd3AF4HGoNM1IxN6rQ.AD.ZPCZ.N8oOsF6OjPBA0qd0CsnEs.uwa7FXTiZTvc2cGcsqcEwFar5vegLiIx+Nl9129hidzihu4a9FM1mff.d629swgNzgvzm9zKyUZldBS0OllVZoggMrggZTiZ.+82eLiYLCzktzE3jSNg4Mu4AEJz7Ij2912dLyYNyh8blXhIBWc0UricrC..7m+4eBWc0UrrksL.7jt5oqt5JV6ZWaYJFCN3fQcpScfmd5Il1zlFF9vGNZTiZD5Se5iFSjKcricDMsoME..exm7IvUWcUqcuUisDN8IvYdE+wkl8qiGesvL0gin1m+4eNRKszvQNxQznUss1Zqwt10tP6ZW6vRW5RM3cAUsIiLx.ezG8QXvCdv3y+7OWsDq..l3DmHl+7mO9tu66T62kI8CUOqaQ8u2J9GyUjzkwapX++lPKjYBmPKRO8zgu95KxHiLvUtxUPlYlIxJqrPPAEDhO93Q6ae6QlYlI.dxX2J7vCGae6aG..adyaFgGd3pUo43hKNz291WjTRIgfCNXjat4hzRKM73G+Xr10tVbfCb.L8oO8xTrkYlYh.BH.b5SeZ7+9e+OL3AOX01+t10tfe94GZdyatp9ldpolJN7gOL92+8eg2d6Mtyctid5uTFeh4m9zyZgKbgXRSZRX1yd1vKu7Bu8a+1Xdyadne8qenF0nFXiabi3ce22EezGwmJuNyDjbUbwEG7wGevwO9wwl1zlvcu6cQ1YmMhHhHvG8QeD9xu7KQe5SepvUPsKcoKH7vCGu669t..HzPCEgGd3XpScpkZY+tu66v.G3.Qm5TmPXgEFxLyLQJojB9se62PDQDA71auUqBpG8nGEm+7mG..yd1yFgGd3Fk0dshSQIUc44LIjQjQZxhCoBkJUhu4a9Fz6d26Rr6BOm4LGb26dWb3CeXiXz8DacqaEojRJ3S+zOsXOlYMqYg7xKOrqcsKiXjI97yWLWr9+NGjRV5xBSOGyUlCDwgtJbpXW6LdcKPyfOLmPBIf10t1gCbfC.K9utmn0VaM72e+wF1vFv.G3.wd26dwjlzjfEVXAZdyatpEg05W+5il27lq14ayadyHwDSDm4LmAMnAMP01qRUpBdq25svu7K+B9ke4WvV1xVTc8zlzSOcDP.AfqcsqgfBJHzidzC01eZokFl4LmIBHf.vu8a+lpykUVYE5ae6KBKrvPKaYKwxV1xvO7C+f93OUT4jLYxvl1zlvzl1zvO8S+DhJpnPbwEGb2c2wrm8rQO5QOfu95qoNLE4Ld+jzRW5RQbwEG96+9uUq0cb2c2wBVvBPSZRSvXG6XwV25VqPSS51au8n4Mu4n10t1..vCO7.UspUsTKW7wGOl6bmKF6XGK1912tpV2yQGcDCdvCFcricDMu4MGqbkqDqYMqA.OYw0N6rexf8uV0pVZ78ZFKIb5SfX13J0ZBUoe8qgf6XCzRo.dg+6eCd0k73hrxpXiMVjc1YWpc63hlgTiHhHL5qaTW8pWE0oN0oDeumSN4Dpacqqn9gFZLbi3UfDxPIFrmk8YeVwbBIEQb2pajTWEJ4JcpQYELNSnEklO4S9Dslnie94GjISlNMkqeu6cOLhQLB0Rr5YMpQMJ7m+4eh6cu6Uri+pTRIE3u+9iniNZbzidTz4N2YMNlO+y+bjc1Yi0t10p0XuZUqZXQKZQX1yd13C+vOD0u90uLeOPFFsqcsyrnqVIsXb+xi6bm6fcricfW60dsh80xW9keYrxUtRr7kub7FuwaThODECgku7kC4xkiu3K9Bs1u8qcsqMdu268vm7IeBVzhVTwNNNIoihVe8JteWpH0st0ExkKG29121XDVpIhHh.O5QORiYL0mWRIkDt+8uuQJpDmpPyyOh3DTjBi4JovDZgYP6lXVxHNaA9ecKPibkOdVN4jSvSO8Tq6yRKsD0pV0BYkUVk4y2V25VK18oPgBDZngB.Tri6pG8nGA+7yOb8qecbjibDslXE.vwO9wQm5TmJwjl70WegRkJwUtxUXxUjzjpmliw4GS+m+4efRkJ0XbV97F23FGl27lGdvCdPoVgV8sie7iid0qdUhyPp95quH+7yG23F2vrpUSqcW6MpcW6sVaAKmZkmnS+vgzZ49488j0lsw7xixnDmFRBJUhi1YcahOZqglCdTFB305nsnVUUyeOsnD7KsJcJHH.AAAc9ABnswXntJ+7yG0qd0S0XLrjvY+W8OowDofXN1Iwj4G3SFtPqbHNTlKiwe1BzD9g4R6o1JWtbnTotzukehG+3GiyblyfKe4KiXhIFDSLwfqbkqfzSO8hsLwGe7nG8nGH4jSFxkKG6XG6.8oO8QqGajQFIZZSaJV7hWbwd9xM2bA.3S4ijtLxSE6E0B.t6t6k3wUzr0YLwDiQM4pBJn.bm6bGTqZUqR76FRKsz.f462MTRIYQZ59onDOLckH2B09mCZQKZA.Po1c5d3CeHTpToVWuqJwq+8ueEdFpsQMpQ392+9RikHBQIoSyMHla4JoPRtRg6gRSZ4n6uGqhkbkrxdGCrnVtxTlb0yOiDUQ8nG8H79u+6isu8sCAAA3latgVzhV.2c2c7JuxqfzSOcUCP8m2l1zlfqt5JBIjPv9129vRVxRvXFyXv.Fv.T63xLyLQlYlIdzidDN6YOaIFO8nG8.UoJh0ELQoyW1SFFF6tARQyxdUu5UuDOth1+idziL3wzyJgDR.JUpD+6+9ukouavJqrxHEYkOOaRVIet+xTGNFGFftKesqcsgiN5HBIj95ycb...f.PRDEDUPv7l27J1iK3fCF.OMYLfmz6NRM0TQxImrVeXjwFarplF+qH7vCOvu9q+Jt6cuawlnVpolJV6ZWK7wGez32EKKlRW09xj.IMFyURg5xKAdYfJFF8IzBS4rEn9TAET.FzfFDBO7vwJVwJv.Fv.zXv4tu8suhs7MtwMFG+3GG0u90Gye9yGG3.G.SaZSCW+5WWs0QKGbvATkpTEzqd0KNYUPUtYja4plzjl.fmLiAVRsHUbwEG.dxmoKqJZhxohn10t1PlLYXPCZPplrJjBJJIKp7axSdxXMqYM3pW8pvKu7Ri8WXgEhu5q9Jzrl0L3me9oZ6MrgMDBBB3HG4HXBSXBZTN806ydi23MvpV0pvm9oeJ1zl1jVOl4N24hssssUhqYfkDeby79gIXJUzCpJu7xEJUpznOVQKqJ5AoYgVxjRRLlqj.D3CFWqLdi4JyjIzB8k+3O9CbgKbArt0sNLsoMMsdLO7gOrXK+Dm3DUM1njKWN1111FdwW7Ew68duG17l2rZGaiabiQjkRWkIu7xCIlXhnZUqZkoYYLhDeLtIWUzSz+l27lkXxUEMI33gGdnZaVas03wO9wEaYhIlXpvwmUVYEb0UWK0uaHmbxAIkTRn5Uu5bsUqRhktzkhcu6ciAO3Ai.CLP0lR1yN6rwHG4HQDQDAN3AOHjKWtp8M3AOXLqYMKrsssMLxQNR0Vjr2912NV+5WOrwFaz35UzwURum+Y0vF1P7Zu1qgsrks.Wc0UrjkrDUUVtvBKD6ae6CaaaaC8t28VitKus1ZqQuUhkZZTCqOjISFNanmGid7utoNbJUt5ZIOwmHZUInK0UYkwaQDVU2Bz77IjnqJpxQcnCcnXOl+3O9ix74qnU29st0shSbhSn195W+5GBMzPKwYxvYLiYfF0nFUpUzpxrcsqcoQq+8vG9Pr5UuZbu6cOSTTo6z18QkBF4VtxGe7A1YmcXcqacE6wjat4he3G9AzoN0I0ZwY2byMbxSdRTPAEn0x8y+7OqWhw90u9gicriUhy3a++s2cdfQU04+e7OSVlDRBqALg8DQj8k.gP.DPkkuJHhRUKPUPPBxpVTrxxuJZYoEqXpUoVAARYw3OEjFQrXEgHAQD8KffnnzfHKZ.iEHDyBIyLe+izLPZlrLjY6N48q+AHy8N2yMLy8deNmmyyY7ie7J1XisR6rGXbbkjwuh+dP3gGt1111lhLxHUBIjftoa5lzzm9z0vF1vTyady0d1ydzF1vFzse62dY1uniNZszktT8ge3GpNzgNnwO9wqoN0op3iOdM4IOY8RuzK4v4nUyZVyT8qe80RVxRzi8XOldxm7IqxyiW7EeQ8vO7CqEtvEpXiMVMlwLFM1wNV0jlzD8.OvCnDRHA85u9qWtG7rKcoK5y+7OWie7iWO5i9nNUE9EkHlV2JM8oNY0rl0Te1QsRpjhyRqZYKzjSphC.jQtB9h73EzBiVD5kdgm+6EIzN1wNJIo8rm8n3hKtxseqbkqTaYKaQRpBe.q+ayd1yVadyaVIkTR5vG9v16k4YO6YqW5kdIMsoMMsksrE0vF1vxre6ZW6Rqd0qV8u+8WwGe7N2IXsH+o+zeRW5RWRSbhSz9O6Dm3DZNyYNpacqad7J810JGcdTaP04gJckZbiarVvBVflyblidsW60J2ju2hEKZ5Se557m+7ZYKaYk405cu6sRO8zUFYjgt0a8VKyqsicrCswMtQGdLqnq2TQl27lmVyZVil5Tmp1zl1jhHhxVMi1xV1hdq25szHFwHTaaaaulONv3oScpS5S9jOQqacqS6cu6UG7fGTsnEsPyctyU228ceU3bcZlyblJ93iWolZp5HG4Hp3hKVIlXhZcqacpCcnCxjISpd0qdkYeBJnfzV25V0JW4J0G+wer5ae6q8WavCdvkYDvJkYyl0xW9x0nF0nT5omt1+92uxImbznF0nzPFxPzu7W9Kc3yKLu4MO0fFz.ssssM0vF1PGNRZ0lbuwEhxuHapQg4bAIMv92WMv922pdC8QYzdVRGwGnNuUyY+bvHeR354ERKPi0+Azzl1TIIswMtQ0hVzBUbwEqt0sto9zm9nDRHA8DOwSnKcoKogLjgHKVrnicrioTRIEkYlYpm4YdFsfEr.s90udcgKbAMvANvJ8XUZ5AFWbwo4N24p+7e9OKoRdHuUtxUpG5gdH0qd0KMyYNSkPBInSe5SqzRKM8Nuy6nnhJJsgMrA29uObarG7s66Pz0t10Jrr36qIkTRQSZRSxgUfNiz4gKkSsv54Z7q+0+ZsicrCMtwMNsyctSca21soXhIFs+8ue85u9qqcsqcom4YdF06d26xreyZVyRKe4KW2+8e+5YdlmQwEWbJmbxQevG7A54dtmSO7C+v5u9W+qk63U50a9a+s+lF5PGpBN3fKSPQ+2ZUqZkdoW5kzLlwLThIlnlxTlh5Uu5kxLyLUZokl15V2pZcqasV0pVUY1uPCMTU25VW8O9G+CM7gObkWd4oDSLQWvuwfmR0oC6CJnfzDlvDzDlfyk5W8oO8oBWZPpnN0IwDSzgeFp+8u+U5R.vfFzfzfFT0eN10vF1PM+4OeM+4O+p893OqyM0CN048gvbtB9x73KhvdhBZw0e8We4pzQQGczUZoQWpj7.+5ttqqL+rXiMVMgILAst0sNsl0rF06d2a8QezGofCNXkVZoo4Lm4nm5odJ6kB4V0pVogLjgn27MeSERHgnzRKMkbxIqie7iaO3pXiM1JrBj0912d8rO6ypW7EeQ8ke4WZeDxFyXFi5XG6nd7G+w0BVvBTt4VRc2OjPBQicriUKZQKRQEUTN+urpEweIU57WNObZdgalFTPAo28ceWsxUtRsrksLkRJoHa1rofCNX0st0M89u+6qa9lu4xseMtwMVe1m8YZRSZRZ5Se51WhGhIlXzZW6Z0sdq2pdu268JSpDJIcG2wcna5ltIM6YOaIUxnHjbxIKoRR0vF23FWtiURIkj5RW5hlyblil27lmxKu7jjTcpSczDm3D0S+zOsCudyu829a0BW3BUO5QOTvAGbsy.1MfLX8OI.p.dprvvcp1PoX+Zge45b0QO5QK2O6EdgWnJ2ucsKGW9eW4JWod9m+402+8eeYpHXMoIMQqZUqR+k+xeQm3DmPQFYjk6ge1291mt7kurLa1rjJIcbN1wNVk1Nl4Lmol4LmY494cqacSae6aW1rYSe629sxrYyp4Mu47gZT6fGdNWc0RJojTRIkjxM2b0oO8o0MbC2PUtzNbC2vMnzSOcUTQEoLyLSU+5We6iLkjb30ABO7vU5omtxJqrTAETPYF0x25sdqJ7XkXhIpzSOcYylMkYlYpvBKL0rlU4SB7G6wdLMiYLCO95yEpYdfDBQEVrTz0MvpdiA7ywHWA2skLBmuPP44RKv+SO2ZTCDnt0stU3hsXHgDRktPLVZfUtJlLYxoJ6y9a1xV1htzktTUt.T9Zu1qo5Uu5o63NtCII8tu66phJpHMxQNxJbeN7gOrRO8z0G8QejBKrvThIlnFxPFhhM1XK21VTQEoUu5Uq9129ptzktn8rm8nLxHCUbwEWtTVIqrxRqd0qVG8nGUm8rmUQEUTpG8nGZBSXBkYzKxN6r0l1zlzG+wer8ygF0nFot0stYOkapryCqVsp268dOsu8sOcfCb.EUTQo3iOdM3AOXGdN7Ye1mo8u+8qIO4Iq7yOessssM8AevGnyblynt10tpa+1ucemzEyKFbUohHhHJ2RtPUI3fC1o2mniNZmZ6KkISlpxE83qlYylKy5bD78ESipclFX.WMi5yRVF9Ai5SsgPaiLbmOi67XkIF68tP.F2ODAeCG9vGViabiqRGAvicriowMtwoCe3Ca+m8BuvKnktzkVg6yy+7OuhKt3TxImrrYyl9hu3KzLlwLTm6bmcXAHnfBJPSe5SWae6aWyd1yVCX.CPye9yW6e+6uLa2pV0pTLwDiRN4jUN4jiZZSapxJqrzbm6bUrwFq9pu5qrusYkUVJ4jS19B74q9pupRN4jKynpVQmG+zO8SZXCaXZDiXDZUqZUxrYy5nG8n5wdrGSctycVqe8qub6yV1xVzzl1zzoN0oTe6ae0i7HOhN6YOqBHf.zZW6Z0.Fv.pzpkmmD4XO.ptVdF4okmQdd6lAbS7GtefMJFD9spYcAlImYVWYLKnEvCqZ74iwO9wqErfEnTRIEs3EuXGtMojRJxjIS5AevGrZcXW7hWr9rO6yzl1zlJyHBkc1Yq67NuSM5QOZ8FuwanQMpQUt8cO6YO5se62VImbx5W7K9EkIcr9nO5izTlxTzXG6X0q7JuRYpZVm3DmPcoKcQie7iW6ae6SRRctycVG8nG0dAsXG6XGUqT1pnhJR2zMcS5Tm5TJszRSCe3C29qUXgEpINwIpG7AePUXgEpG5gdnxs+8pW8RSZRSRO0S8T1Go0hKtX8HOxinG8QeT0111VMzgNzpwuIcm79ibE.LFNzYr3saB.nVJO2HWYOs.8cWSEfwPyady0fG7f0ZW6ZsWn.tZVsZUqcsqU29se6kYNtTY18t2sRM0TKWp103F2X8AevGn1zl1nm5odJG1KYadyaVqcsqUyblyrbyykTSMUUm5TGshUrhxUNhiIlXznG8n0ANvApwESfUu5UqicrioTSM0xDXkTIos5F1vFz.Fv.zBVvBTAETP41+a4VtEsnEsnxjBqAETP5Ye1mUgEVX9HUhRuP4BD..9rLzibk86kYfGzA+fTazcvCFoCibEbcl3Dmn9ge3Gz1291K2q89u+6qe3G9AGNBMUjd1ydpQLhQ3vWqN0oNZlybl5nG8n5e9O+mk60aYKaot268dc3914N2Y87O+yWgqEK8u+82dAJol34dtmSsu8suBOGjJY8RKqrxRuwa7Fk60l9zmtC2mHhHBcC2vMnyblyTiZetTF3alB.fZNdXd3Ky0DbU0Jq.8ChPG9LF4HGoZPCZfVyZVS4dsTRIE0jlzjxMBNUlRK5EUj69tuaIoxLGtJ0PFxPpvU49oLkonIMoIUtedN4jiRO8zsuVl4nQfq5J+7yWe629sZXCaXU51cK2xsHIou7K+xx8Zcu6cuB2uF23F6aTlt4RG..kwabfBzKu67U14dseODCI+grD2Cr9d5tQoX2w7bkcnRe3wJ3gPAbFlMaV+pe0uRqXEqPW3BWPMnAMPRRW3BWP+8+9eWO5i9nUYox9pUYKTqRx9ZHVlYlY4dsppxtke94qMu4MqLxHCcfCb.c7ieb8u+2+aYxjIWxZSVosoXhIlJc6pScpiZXCanCOGBObmuTi5oYxGnZAB.3K4qxxh99KZUCuSt1pRruORSb36xiWs.I5V3pLgILAUTQEoTSMU6+rTSMUUTQEoINwI5TuWAFXkulwDTPAoPBIDGNekJMvNGI8zSWsqcsSiabiS6bm6T8oO8QKZQKRu8a+1JqrxpZs9qUUrXojItcUcNT51T51e0LDeuzOn5PA.3JckPLpcdcQi78C7GpVfF2e66dUiF4JmpeCrU5PVab+PDbitFVjo6d26t5V25lVyZVil5TmpjjVyZVi5ae6qtwa7FcpC+wO9wqzW+bm6bpvBKzgUtuJ5BiYmc15du26UQGczZm6bmpMsoMkaapIoCXoZW6ZmLYxTUNusJnfBT1Ymcktlr4SiQtB9oblGtZs6q.kUNV08mPnpY0iLAA0NYjCHoTkFPrIdtXeZOYZ4JIokNxHp16CqyUvPaBSXBZ+6e+5HG4H5HG4HZ+6e+NbNNUUxHiLpzW+y+7OWRxoV7l20t1kN+4Ou98+9euCCrRxwy+ImUngFpZUqZk16d2aktcomd5RRN8BZqOCBtBPm77VTlYaQETTsr4XCvUgjBzGQsfrR6B4aSWHem6SZjVfvParicrJnfBRojRJJkTRQgGd35dtm6woee1111lNzgNjCeMa1rom9oeZEQDQTtR0dkImbxQRRQFYjN70u7kurRKszb51pi7.OvCncu6cWoAXsrksLEYjQZu3bX3PZABXGeKnxkT+BUI0uPq5MDFS9Ac110PB6.ChZVvUNyhHLEzB3FznF0HcW20co0st0o0st0owLlwnvBKLm98IwDST20ccWkajjJnfBzLlwLzm7IehlwLlgpe8quS8dJI8pu5qVtWK6ryVicriUey27MRpjBwwUqzR2dt4la05XMm4LG05V2ZMlwLlxEjnUqV0zl1zzN24N0u6286T8pW8p1mC9RLQeUBPBDUMEeKCVw2xf81MC2N+fXLpQny1fuHOW0BjPzgaxDm3D0F23FkjtlRIPIo4O+4q0u90qd0qdoANvApd1ydpyblynzSOccxSdRM0oNUsfEr.m58r8su85we7GWKaYKSewW7EZnCcnxhEK5e8u9W5cdm2Q228ceZqacqZPCZPZtyct51tsaSye9y299JI8HOxinAMnAoV1xVpG3AdfJ7XEZngpzRKMc+2+8qDSLQ6mCm9zmVYjQF5Tm5TZwKdwZxSdxWS+9wmf8GhfalB.+eyYNyQCZPCRCYHCwa2T743ejETF+6kQVo4Xdtfq7GVIpgaSM4AlG7fGr9M+leiBMzPU7wGeEtc2y8bOpvBKrL+rl27lqYMqYo1zl1nMrgMnst0spUu5Uq27MeS0jlzDMhQLBMzgNTGtlYY1rYMqYMK0yd1yJ7XtzktT0+92eshUrBswMtQEYjQpd0qdoMtwMZecoZgKbgZW6ZWJzPuRJrDWbwoW9keYs90udkZpoVlfFcz4gTIKXwe5m9o5UdkWQ6d26Vu0a8VJpnhR28ce2ZzidzN72M8qe8SyZVypBa+kd7Jpnhpzswin1dWzBnq7PL70.+e6cu6UO2y8bJgDRPO8S+zZnCcnd6ljOCdRR3Ky0DbU03h71r9ehtkzBDtXADP.ZIKYIU41kTRIUteVqacq0e7O9Gs+uG9vGd0dwGNjPBoL6aE4Nti6nRWjhm6bmql6bmqCauNpM6neVoBN3f0LlwLzLlwLpx1kjzPG5PqxaX66LZWDbE.p8Ye6aeZXCaXNLHqQ08PTdW1lttHp5khC+Il7ClCt9Ci5iw829tWd7zBz.+YH.3EwhHL.bFNyBIujzV6Yyul1OOEGEjUmh12rs5ovsCfuHO2vHYk04J.TC3GzSk..nlyeni5seqLi7Iievnu4N3w5xC6C+IoEH.tFvHWAH8q5kYUPQRMu90tRCrqEEWbwN01+d8t0WS6m6xMey2r18t2s8+My8pql+P0ikZQfQvRFQ3N89TiBtx49nMeHBUM58CTw3yF.stg0tSCrZiHnpxyeXNWAigHC24GTHO2HWw5bEpLbARTUXjq.P0zxyHOIIM8967q6g9JRLwD07l27HnpJgQ91A9EEzBVkkbHOeZAx+A.fZ.5oR.TUNzYr3saB0X+g+veva2D7YwyRBeY0rgQxjSjXfDdK.pALx8tG..bcLa1rjjx5rmSVsWvz78T5ZRo4fCtbuVoOVb.F3asYyPOm2be7bIuMoEH.pIHs.A.fj5YO5tdiMtY8g6JC8g6JCucyoJ0l1Dq2tI.OHuPjNF3PzAf2i8XqH3J..IoMcvBzKu6704tju6n23Nz5V0R83+5YplFcTd6lRkxjISJlV2JkzC8fN3U8CJza9AyaL2AWS0Br5jUf+mQth+C.NDOvLpJNSZHCXDXyO3gqfW0WcVK5Tm2p9e5Pv557F8WtWTuhON0q3iya2LtlwW+8e4w+lH85rwkM2YdMSYU0vyc++clLUxkqrYw2XMnANO99M.f+iqTNEHBwqlGK3pPutnkjTteyQ7TGR3hcwu9vRRxbCpuK+8NnvBWADhYYsvKqb+t+kK+8Gte+7o+VIIEbDN+BtW0g4lTx0Pt3WdP2x6Ob+9o+28HIoPZbjd4Vhw0q8YEnmc64oScAie0vCn1L+gRwdsAOYZ4pmLsbcp8wiEbUjweSJ3HBW+7INg9p+7uSVJr.O0gFt.4c1ynir3GWRRMt+CwsbLZR+uUIIcne6zTdm8LtkiAbOJ9myUeyKtHII0fdjfa4XD8fuSIIcxMrRct8rCFEDCDa1roe5.6UewBlojjh91FkWtEYbcpKXUYlsEk+k4y+..taWHea5B46bWu0iUs.CpNgo18DKRewBlkN4FVkN4FVkm5PCWnPZTC0MN043Vdua2u9Yz4+e2qtzW+0Ji6rutkiAbuLETPpMS923Vduidf2l99Abq5G20NzAl0DbKGC39U2arcpsI83d6lggGgVU4Rpeg5saB.UAi+jtxlev4f6fGcNW07aaTp6O+pTDsssxTf0tl3kFcADhY0jAbqJgT1pBIxl3VNF0oIQqdmxVUSF3fTfgFha4X.2CSAFfh3FuQ0yWb8p9ssitsiSb+9UpXmvzUHQ1H21w.tGgzvFnVM1IpDVweWAFZc71MGCKdDlpm3aYvJ9VV90VH..2sZ1HWcMT8thpeCVQ0uAWiNrv+UXQ2B0imc0d6lA7QYJnfzMNkeitwo3dFcL..iDpgpFWWoXP3caG0H1m2Xd41gOFF9H......W.O1btB....tN2c2BQ+7ksonhf9J2nwenZARoX2wH3J....CnNFMOFmwEECB+U0nt5vdt9Rx9B..31UZGDy8cA.7MQWd...3MDPI8uoMqVkMa1pVoVyurGgn7KxlZYCBzc25pUwZQEUxeI.FEA3YTZGjXj+HWokhcS9wi91RFQ3N89PvU...dAlBH.EbciPEcobU9e+IUXMu0U49zpFRPUtCW53esjjBMxH8xsD.3KIxvc9j7iY.I..fWRChqWRR5To8Zd4Vh+kkmQdZ4YjW0d6Owq8WkjTCSX.tqlDPY3eUPK7tsCeMDbE..fWRqGyCKIoua8qTY+o61K2Z7ebnyXQG5LVpVa6wScEJqssEYJv.00+fyvM2x.f+NBtB..vKIxdzG0769WJaVrn8+niSeYxKP4j4Wck4.DbKJJ2bz493z0mNyQqi8mVrjjZ2i8TJhV0FubKC09XjG1GprNNRMaNWYh0Fb..fZhN8D+dYJnf0oey0qS85onS85o3saRFdi5+7muWxU81FPHlU6ehEpVNhQ6VaS.WsqjVfd4FBb4nfV...3EYJv.Uml8hUyu86Qm30Wgtv9+Dc4yedYyhUucSyuUfgFhBsoMSMo++OJlwjjBoQM1a2jtl7VedA5rWxlt6tFhhtdjLRvyxeXdi4NPvU...9.ZPmhScegur2tY3W3ge8KIIoWYz00K2Rbu95yYUm3mrnA2tfUzLSOLTHvD+WrHBC.....3BvHWA..XP7+e+Enu6eaU2WOLqXZD2Bu1NFyC3MYevU7iG8smLsbkjzRGYDU68gqLC..XPb5KXUYlsE8yW1a2R..7+cg7c9zyifq...fekj5Wnd6l.Pkx+XNWYenq7psBeMDbE..fAAK.JUOw2xf81MA.TKEkVF.....OH+gQtxe3bvcffq...LJXnq..7oUyRKPSbUd....ugQ1UyJ2BswBHLfOjZTvUAFPIeYtnhJ1kzX...pHEWbI2qIf.3AIAjj5PTL04Mp7GRotRKE6AXbOEbKpQ2gpQMpQRR5K9xin7xKOWRCB..3+lEKVzW80GURRMn902K2Z7dHeQ..7sUi5xi12t1ou6jmT+3O9i5s2563pZS...UnN1gN5saBdM2Sbgn7trM0hFDn2to.fZ.+gQtp1PoXeIiHbmdepQAWEVcBSC4VGjN3g9bk0YOq8T1...vUxjISpd0stpScpSpEMu4d6liWSKInJ..OlHC24SxuZbx5FQDQnapu8ql91....3Rr7LJYpJL89GlWtk.3+xl++.WcMgYBI...7qbnyXwa2D.pT9GoEHbDJ4R.....voP.hNFAWA....3AQJ04+hzBD...v.5uenBzOjiMcmcID075S+kC3KfuIB...X.8MmypN3oKV4VnUucSANM+ggtxe3bv0ifq......bAHs.A..LH13AKPGOaqZTc2rtgFysvALp7GJFDkNuwLvmBUomLsbkjzRGYDU68gqLC..XPblKXUYlsE8yW1a2RfufRenV6EGA.3Rcg7c9ubQvU...vuRR8KTucS.nR4OLak7GF8M2ABtB..vnfQpnZI9VFr2tI.T4pMjSc0RQAs......vEffq....LvXfLMd7ORoN+gjaz0izBD..vffGgAWs6rKlUNEXiEPX.eHDbE...fAT6tNdLNip.Bnj.hu3EunrZ0p8+suFqVspi+smPRRAFXfk40JcZiE.85SYv2JA..LHJ8YXHMv.L15bm5fBvjI8g6Z25C20t81Mmpk36Ybd6lfg.AWA..XPb2cKDMzNPZfAXzc8wFidjYNMswMsY88e+OHq9nk.TSlLoHirQpe8IQcOiZjk407Ol2XUtkLhvc58gfq...LHZQCBrp2H.XHzu9jf5WeRva2LPkHxvc9Nxht9B...9UVdF4okmQdd6lAPsD9uib00BF4J...3W4Pmwh2tI.fZoXjq......bAH3J.....3TtRAsvK2P7wPZAB...X.81GtPclKZUinyloXm.3ifQtB...v.5X+nEcvSWrtXA9lkwa3eq1PoX+ZAAWA.....3BPZAB..XPr4CUfN14rp6pql0MdcbKb..2omLsbkjzRGYDU68gqLC..XP78WzpxLaK5RERZfgqfOM.3dbg7c9ucQvU...vuRR8KTucSvifY5BfuGBtB..vfnzGllQpnxEeKC1a2D.76QAsvwnfV......3BPvU....FYLTlvKfQtxwHs.A..LXrwCSCIM7NaV8u.apkMj9JGvWAAWA...X.0NJG+vKpd0qdRR5X+qLUgEVnBIjP7xsHGyhUq5e996PRRMpQMxse73ak...FDj9M.vWQOiqapwMNRk4w+Vc+O3j81Mmpk6YTizseLLYyFIW...fQvYtnUkagVUSqW.pdgRpfA.uqu6jmRuxJWixLyiKq9vgTzzniR+hQs6hI9n..f.clDQAQERMv92OmZ+9oe1pjjhL7p+0aI3J......W.51K...3WY4YjmVdF44saF.nVHlyU...vuxgNiEucS..0RwHWA.....3BPvU......t.jVf....FPa8HEpSddqZ3cxrZUCCza2b.fXjq....LjN1OZQG7zEqKjOE9Y.eEDbE.....fK.oEH..fAwae3B0QOqEcGcwr5XTbKb..2omLsbkjzRGYDU68gqLC..XP7C4XUYlsEkS9V81ME..+dWKobKAWA...+JI0uP81MAOJlwU.9NH3J...CBSlJ4O4goqbw2xf81MA.TKEEzB......W.BtB.....vEfzBD..vfvTo+ExKPHog2IypeWuM05FRekC3pUjkRtPqoqbk2pEBtB...v.psMgGiCvc4GxojpxZ8qiysezUG......Wku+hVjIYRsO5.cp8it7...vfH3+y83KnXua6.9VJ1pM8oeWQJwXBVlL4bovD.brDiwrZUiBRA5jekhQtB..vfH1HKI5psezKKKVYhW8eqHK1zQxp1WjmKOi7UJeRgZY6LecjrJVETDe1.vUnY0K.EUcctvkXjq...LH5arAqzOVQpCQGnBLfJu6TeyCTf19WWTktMirql0v5XH9cuOIFaPZB81ImnDFXCocl0Ixt.cryYQG6b46vs4+2sElZYCp7za5oe2e197Lohv6CuO01debVDbE..fAQvAZRydPgIyt1mEvugIYRQUOSpqMq10i2zwnCRKdDgqs+0WVG7zEqeLWa5xVXzq.7FLYylM91G.....PMDy4J......W.BtB.....vEffq......bAH3J......W.BtB.....vEffq......bAH3J......W.BtB.....vEffq......bA9+j1K2LJpO82a.....jTQNQjqBAlf" ],
									"embed" : 1,
									"forceaspect" : 1,
									"id" : "obj-10",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 5.0, 22.0, 363.0, 298.89122807017543 ],
									"pic" : "enginemodel.png"
								}

							}
 ],
						"lines" : [  ],
						"boxgroups" : [ 							{
								"boxes" : [ "obj-14", "obj-17" ]
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
					"patching_rect" : [ 524.5, 21.0, 147.5, 40.0 ],
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
					"style" : "SDT-comments",
					"text" : "p parameters_explanation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 697.5, 404.0, 68.0, 23.0 ],
					"text" : "backfire $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 613.5, 404.0, 78.0, 23.0 ],
					"text" : "outletSize $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 490.0, 404.0, 115.0, 23.0 ],
					"text" : "mufflerFeedback $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 401.0, 404.0, 85.0, 23.0 ],
					"text" : "mufflerSize $1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-45",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 317.0, 96.0, 57.0 ],
					"style" : "SDT-comments",
					"text" : "size of intake collectors (m)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubblepoint" : 0.4,
					"bubbleside" : 2,
					"id" : "obj-44",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 411.5, 139.0, 80.0, 57.0 ],
					"style" : "SDT-comments",
					"text" : "engine eccentricity"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-41",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 246.75, 139.0, 84.75, 57.0 ],
					"style" : "SDT-comments",
					"text" : "engine compression"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 171.0, 155.0, 75.0, 41.0 ],
					"style" : "SDT-comments",
					"text" : "volume (cc)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubblepoint" : 0.3,
					"bubbleside" : 2,
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 91.0, 155.0, 78.0, 41.0 ],
					"style" : "SDT-comments",
					"text" : "N cylinders "
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-36",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 226.0, 375.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-35",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 40.0, 375.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-31",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 417.5, 198.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-28",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.000001,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 343.5, 198.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-27",
					"maxclass" : "flonum",
					"maximum" : 20.0,
					"minimum" : 5.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 270.25, 198.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-26",
					"maxclass" : "flonum",
					"minimum" : 1.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 178.0, 198.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 226.0, 404.0, 88.0, 23.0 ],
					"text" : "exhaustSize $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.0, 404.0, 78.0, 23.0 ],
					"text" : "intakeSize $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.25, 254.0, 119.0, 23.0 ],
					"text" : "compressionRatio $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 417.5, 254.0, 83.0, 23.0 ],
					"text" : "asymmetry $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 343.5, 227.0, 79.0, 23.0 ],
					"text" : "sparkTime $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 178.0, 227.0, 88.0, 23.0 ],
					"text" : "cylinderSize $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 37.0, 227.0, 52.0, 23.0 ],
					"text" : "cycle $1"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 59.0, 611.5, 35.0, 23.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
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
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 265.0, 30.0, 30.0 ]
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
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 70.0, 15.0, 28.0, 28.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 70.0, 114.0, 49.0, 23.0 ],
									"style" : "SDTpackage",
									"text" : "-~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 100.0, 85.0, 75.0, 23.0 ],
									"style" : "SDTpackage",
									"text" : "onepole~ 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 100.0, 58.0, 75.0, 23.0 ],
									"style" : "SDTpackage",
									"text" : "onepole~ 20"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
 ],
						"styles" : [ 							{
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
					"patching_rect" : [ 8.0, 563.5, 105.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p removeDCoffset"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-15",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 8.0, 593.5, 106.0, 41.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"logfreq" : 1,
					"maxclass" : "spectroscope~",
					"monochrome" : 0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 117.0, 563.5, 149.0, 71.0 ],
					"scroll" : 3,
					"sono" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 92.5, 227.0, 81.0, 23.0 ],
					"text" : "nCylinders $1"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 804.5, 61.5, 67.0, 23.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
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
						"rect" : [ 735.0, 267.0, 640.0, 480.0 ],
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
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 122.0, 232.0, 54.0, 22.0 ],
									"text" : "set truck"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 99.0, 203.0, 86.0, 22.0 ],
									"text" : "set \"Vespa 50\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 179.0, 81.0, 22.0 ],
									"text" : "set motorbike"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 61.0, 155.0, 100.0, 22.0 ],
									"text" : "set \"formula one\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 47.0, 137.0, 83.0, 22.0 ],
									"text" : "set \"sport car\""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-15",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 275.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 111.0, 74.0, 22.0 ],
									"text" : "set \"city car\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 12,
									"numoutlets" : 12,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 30.0, 66.0, 189.5, 22.0 ],
									"text" : "sel 1 2 3 4 5 6 7 8 9 10 11"
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
									"outlettype" : [ "int" ],
									"patching_rect" : [ 30.0, 13.0, 30.0, 30.0 ]
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
									"destination" : [ "obj-15", 0 ],
									"midpoints" : [ 39.5, 204.5, 39.5, 204.5 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-2", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-2", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-2", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-2", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-2", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-2", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 613.5, 111.5, 53.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p legend"
				}

			}
, 			{
				"box" : 				{
					"bubblesize" : 10,
					"id" : "obj-56",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 693.5, 108.0, 117.0, 34.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-30", "flonum", "float", 0.300000011920929, 5, "obj-15", "live.gain~", "float", 0.0, 5, "obj-26", "flonum", "float", 300.0, 5, "obj-27", "flonum", "float", 7.0, 5, "obj-28", "flonum", "float", 0.019999999552965, 5, "obj-31", "flonum", "float", 0.029999999329448, 5, "obj-35", "flonum", "float", 0.200000002980232, 5, "obj-36", "flonum", "float", 0.200000002980232, 5, "obj-70", "toggle", "int", 0, 5, "obj-72", "number", "int", 4, 5, "obj-78", "flonum", "float", 0.5, 5, "obj-79", "flonum", "float", 0.200000002980232, 5, "obj-80", "flonum", "float", 0.699999988079071, 5, "obj-81", "flonum", "float", 0.5, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-90", "flonum", "float", 800.0, 5, "obj-93", "flonum", "float", 0.200000002980232, 5, "obj-102", "flonum", "float", 2.0, 5, "obj-103", "flonum", "float", 0.5, 5, "obj-104", "flonum", "float", 2.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-30", "flonum", "float", 0.200000002980232, 5, "obj-15", "live.gain~", "float", 0.0, 5, "obj-26", "flonum", "float", 500.0, 5, "obj-27", "flonum", "float", 15.0, 5, "obj-28", "flonum", "float", 0.009999999776483, 5, "obj-31", "flonum", "float", 0.200000002980232, 5, "obj-35", "flonum", "float", 0.300000011920929, 5, "obj-36", "flonum", "float", 1.0, 5, "obj-70", "toggle", "int", 0, 5, "obj-72", "number", "int", 6, 5, "obj-78", "flonum", "float", 0.5, 5, "obj-79", "flonum", "float", 0.200000002980232, 5, "obj-80", "flonum", "float", 0.100000001490116, 5, "obj-81", "flonum", "float", 0.400000005960464, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-90", "flonum", "float", 1000.0, 5, "obj-93", "flonum", "float", 0.349999994039536, 5, "obj-102", "flonum", "float", 2.0, 5, "obj-103", "flonum", "float", 0.5, 5, "obj-104", "flonum", "float", 1.0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-30", "flonum", "float", 1.0, 5, "obj-15", "live.gain~", "float", 0.0, 5, "obj-26", "flonum", "float", 500.0, 5, "obj-27", "flonum", "float", 9.0, 5, "obj-28", "flonum", "float", 0.03999999910593, 5, "obj-31", "flonum", "float", 0.400000005960464, 5, "obj-35", "flonum", "float", 0.400000005960464, 5, "obj-36", "flonum", "float", 0.699999988079071, 5, "obj-70", "toggle", "int", 0, 5, "obj-72", "number", "int", 10, 5, "obj-78", "flonum", "float", 0.5, 5, "obj-79", "flonum", "float", 0.300000011920929, 5, "obj-80", "flonum", "float", 0.600000023841858, 5, "obj-81", "flonum", "float", 1.0, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-90", "flonum", "float", 4500.0, 5, "obj-93", "flonum", "float", 0.5, 5, "obj-102", "flonum", "float", 1.0, 5, "obj-103", "flonum", "float", 2.0, 5, "obj-104", "flonum", "float", 10.0 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-30", "flonum", "float", 0.200000002980232, 5, "obj-15", "live.gain~", "float", 0.0, 5, "obj-26", "flonum", "float", 500.0, 5, "obj-27", "flonum", "float", 10.0, 5, "obj-28", "flonum", "float", 0.009999999776483, 5, "obj-31", "flonum", "float", 0.300000011920929, 5, "obj-35", "flonum", "float", 0.200000002980232, 5, "obj-36", "flonum", "float", 0.699999988079071, 5, "obj-70", "toggle", "int", 0, 5, "obj-72", "number", "int", 2, 5, "obj-78", "flonum", "float", 0.5, 5, "obj-79", "flonum", "float", 0.100000001490116, 5, "obj-80", "flonum", "float", 0.200000002980232, 5, "obj-81", "flonum", "float", 0.5, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-90", "flonum", "float", 800.0, 5, "obj-93", "flonum", "float", 0.5, 5, "obj-102", "flonum", "float", 2.0, 5, "obj-103", "flonum", "float", 0.200000002980232, 5, "obj-104", "flonum", "float", 2.0 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-30", "flonum", "float", 0.200000002980232, 5, "obj-15", "live.gain~", "float", 0.0, 5, "obj-26", "flonum", "float", 300.0, 5, "obj-27", "flonum", "float", 10.0, 5, "obj-28", "flonum", "float", 0.100000001490116, 5, "obj-31", "flonum", "float", 0.5, 5, "obj-35", "flonum", "float", 0.400000005960464, 5, "obj-36", "flonum", "float", 0.800000011920929, 5, "obj-70", "toggle", "int", 0, 5, "obj-72", "number", "int", 2, 5, "obj-78", "flonum", "float", 0.5, 5, "obj-79", "flonum", "float", 0.200000002980232, 5, "obj-80", "flonum", "float", 0.300000011920929, 5, "obj-81", "flonum", "float", 0.5, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-90", "flonum", "float", 1000.0, 5, "obj-93", "flonum", "float", 0.5, 5, "obj-102", "flonum", "float", 2.0, 5, "obj-103", "flonum", "float", 0.200000002980232, 5, "obj-104", "flonum", "float", 2.0 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-30", "flonum", "float", 0.100000001490116, 5, "obj-15", "live.gain~", "float", 0.0, 5, "obj-26", "flonum", "float", 50.0, 5, "obj-27", "flonum", "float", 6.0, 5, "obj-28", "flonum", "float", 0.03999999910593, 5, "obj-31", "flonum", "float", 0.200000002980232, 5, "obj-35", "flonum", "float", 0.100000001490116, 5, "obj-36", "flonum", "float", 0.600000023841858, 5, "obj-70", "toggle", "int", 1, 5, "obj-72", "number", "int", 1, 5, "obj-78", "flonum", "float", 0.100000001490116, 5, "obj-79", "flonum", "float", 0.200000002980232, 5, "obj-80", "flonum", "float", 0.300000011920929, 5, "obj-81", "flonum", "float", 0.300000011920929, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-90", "flonum", "float", 600.0, 5, "obj-93", "flonum", "float", 0.5, 5, "obj-102", "flonum", "float", 4.0, 5, "obj-103", "flonum", "float", 0.600000023841858, 5, "obj-104", "flonum", "float", 2.0 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-30", "flonum", "float", 0.200000002980232, 5, "obj-15", "live.gain~", "float", 0.0, 5, "obj-26", "flonum", "float", 50.0, 5, "obj-27", "flonum", "float", 7.0, 5, "obj-28", "flonum", "float", 0.019999999552965, 5, "obj-31", "flonum", "float", 0.200000002980232, 5, "obj-35", "flonum", "float", 0.5, 5, "obj-36", "flonum", "float", 1.0, 5, "obj-70", "toggle", "int", 1, 5, "obj-72", "number", "int", 1, 5, "obj-78", "flonum", "float", 0.600000023841858, 5, "obj-79", "flonum", "float", 0.200000002980232, 5, "obj-80", "flonum", "float", 0.300000011920929, 5, "obj-81", "flonum", "float", 0.300000011920929, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-90", "flonum", "float", 600.0, 5, "obj-93", "flonum", "float", 0.5, 5, "obj-102", "flonum", "float", 4.0, 5, "obj-103", "flonum", "float", 0.200000002980232, 5, "obj-104", "flonum", "float", 2.0 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-30", "flonum", "float", 1.0, 5, "obj-15", "live.gain~", "float", 0.0, 5, "obj-26", "flonum", "float", 1000.0, 5, "obj-27", "flonum", "float", 8.0, 5, "obj-28", "flonum", "float", 0.150000005960464, 5, "obj-31", "flonum", "float", 0.699999988079071, 5, "obj-35", "flonum", "float", 2.0, 5, "obj-36", "flonum", "float", 3.0, 5, "obj-70", "toggle", "int", 0, 5, "obj-72", "number", "int", 6, 5, "obj-78", "flonum", "float", 0.5, 5, "obj-79", "flonum", "float", 0.5, 5, "obj-80", "flonum", "float", 0.600000023841858, 5, "obj-81", "flonum", "float", 2.0, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-90", "flonum", "float", 900.0, 5, "obj-93", "flonum", "float", 0.600000023841858, 5, "obj-102", "flonum", "float", 2.0, 5, "obj-103", "flonum", "float", 0.5, 5, "obj-104", "flonum", "float", 3.0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-50",
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
									"hidden" : 1,
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 124.0, 55.0, 22.0 ],
									"style" : "SDT_package",
									"text" : "pcontrol"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-46",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 169.0, 35.0 ],
									"style" : "SDT_package",
									"text" : "sprintf loadunique %s.maxhelp"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-49",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"hidden" : 1,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 744.0, 61.5, 65.5, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p see_also"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontsize" : 14.0,
					"id" : "obj-48",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 697.5, 10.0, 112.0, 23.0 ],
					"text" : "See also"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_color1" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"fontface" : 0,
					"id" : "obj-43",
					"items" : "sdt.dcmotor~",
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 697.5, 32.0, 112.0, 23.0 ],
					"style" : "SDT_package"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 825.5, 102.5, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-34",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 139.0, 81.0, 57.0 ],
					"style" : "SDT-comments",
					"text" : "0 = 4-stroke\n1 = 2-stroke"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-32",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 331.5, 139.0, 82.0, 57.0 ],
					"style" : "SDT-comments",
					"text" : "fuel ignition time"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-30",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 128.0, 375.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-22",
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
									"patching_rect" : [ 40.0, 93.0, 249.0, 22.0 ],
									"style" : "SDTpackage",
									"text" : "window size 100 100 1000 750, window exec"
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
					"patching_rect" : [ 300.5, 21.0, 82.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p this.window"
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
					"patching_rect" : [ 300.5, 50.0, 68.0, 23.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"style" : "SDTpackage",
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 62.0, 460.0, 22.0 ],
					"text" : "[machines] Combustion engine sound"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 128.0, 404.0, 94.0, 23.0 ],
					"text" : "extractorSize $1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 86.0, 539.0, 22.0 ],
					"text" : "Simulates the sound produced by 2 or 4-stroke engines",
					"textcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"fontsize" : 16.0,
					"id" : "obj-5",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "signal" ],
					"patching_rect" : [ 8.0, 441.0, 613.0, 66.0 ],
					"text" : "sdt.motor~ 48000 @cycle 0 @nCylinders 2 @cylinderSize 500 @compressionRatio 10. @sparkTime 0.5 @asymmetry 0.5 @intakeSize 1. @extractorSize 1. @exhaustSize 1. @expansion 0.5 @mufflerSize 1. @mufflerFeedback 0.5 @outletSize 1. @backfire 0."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 36.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 10.0, 425.0, 50.0 ],
					"text" : "sdt.motor~"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"id" : "obj-87",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.5, 308.0, 766.0, 128.53125 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"id" : "obj-60",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.5, 131.3515625, 500.0, 157.1796875 ],
					"proportion" : 0.39
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"color" : [ 0.005602236837149, 0.213983476161957, 0.998268365859985, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 499.5, 434.5, 17.5, 434.5 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"order" : 0,
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 409.0, 561.75, 17.5, 561.75 ],
					"order" : 1,
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 1 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 1 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 1 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"order" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"hidden" : 1,
					"order" : 1,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"order" : 2,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.811009585857391, 0.087195456027985, 0.134920135140419, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 46.5, 282.5, 17.5, 282.5 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.811009585857391, 0.087195456027985, 0.134920135140419, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 187.5, 282.5, 17.5, 282.5 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"hidden" : 1,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.811009585857391, 0.087195456027985, 0.134920135140419, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 353.0, 282.0, 17.5, 282.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.811009585857391, 0.087195456027985, 0.134920135140419, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 427.0, 282.0, 17.5, 282.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.811009585857391, 0.087195456027985, 0.134920135140419, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 279.75, 282.0, 17.5, 282.0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.005602236837149, 0.213983476161957, 0.998268365859985, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 49.5, 434.5, 17.5, 434.5 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.005602236837149, 0.213983476161957, 0.998268365859985, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 235.5, 434.5, 17.5, 434.5 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [ 814.0, 95.75, 703.0, 95.75 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.005602236837149, 0.213983476161957, 0.998268365859985, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 623.0, 434.5, 17.5, 434.5 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.005602236837149, 0.213983476161957, 0.998268365859985, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 707.0, 434.5, 17.5, 434.5 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"source" : [ "obj-43", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"midpoints" : [ 611.5, 513.0, 409.0, 513.0 ],
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"midpoints" : [ 314.5, 513.0, 190.5, 513.0 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"order" : 0,
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [ 768.333333333333371, 159.0, 878.833333333333371, 159.0, 878.833333333333371, 5.0, 707.0, 5.0 ],
					"source" : [ "obj-56", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [ 735.666666666666629, 159.0, 679.416666666666742, 159.0, 679.416666666666742, 106.0, 623.0, 106.0 ],
					"order" : 1,
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [ 623.0, 142.6171875, 516.0, 142.6171875 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.811009585857391, 0.087195456027985, 0.134920135140419, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 102.0, 282.5, 17.5, 282.5 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.005602236837149, 0.213983476161957, 0.998268365859985, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 326.0, 434.5, 17.5, 434.5 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.005602236837149, 0.213983476161957, 0.998268365859985, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 137.5, 434.5, 17.5, 434.5 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.005602236837149, 0.213983476161957, 0.998268365859985, 1.0 ],
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 410.5, 434.5, 17.5, 434.5 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 681.5, 292.0, 17.5, 292.0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"midpoints" : [ 814.0, 301.0, 611.5, 301.0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"order" : 1,
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"order" : 0,
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"order" : 0,
					"source" : [ "obj-99", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 190.5, 561.75, 17.5, 561.75 ],
					"order" : 1,
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-15" : [ "live.gain~[1]", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "enginemodel.png",
				"bootpath" : "~/SDT_git/MaxPackage/media",
				"patcherrelativepath" : "../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "fourstrokegraphs.png",
				"bootpath" : "~/SDT_git/MaxPackage/media",
				"patcherrelativepath" : "../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "sdt.motor~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"boxgroups" : [ 			{
				"boxes" : [ "obj-48", "obj-43", "obj-50" ]
			}
, 			{
				"boxes" : [ "obj-14", "obj-15", "obj-13" ]
			}
, 			{
				"boxes" : [ "obj-65", "obj-64" ]
			}
, 			{
				"boxes" : [ "obj-11", "obj-2", "obj-6" ]
			}
, 			{
				"boxes" : [ "obj-54", "obj-53" ]
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
