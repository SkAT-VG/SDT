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
					"fontface" : 1,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 229.5, 467.5625, 243.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "open the [p interface] and start bowing. "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 229.5, 614.5, 658.75, 22.0 ],
					"style" : "SDT-comments",
					"text" : "Noisiness: affect the perceived roughness. Try the following values: 1., 15., 40., 0.5 ."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 229.5, 579.5625, 658.75, 22.0 ],
					"style" : "SDT-comments",
					"text" : "Viscosity: affects the timbre and pitch. Try the following values: 2., 5., 8., 0.5 ."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 229.5, 542.5625, 658.75, 22.0 ],
					"style" : "SDT-comments",
					"text" : "Dissipation: affects the sound bandwidth. Try the following values: 5., 12. 60., 24. ."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 229.5, 505.5625, 658.75, 22.0 ],
					"style" : "SDT-comments",
					"text" : "Stiffness: affects the resonance response of the modes. Try the following values: 0.03, 0.4, 0.9, 0.03 ."
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.75, 37.5, 52.0, 23.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
					"bgcolor2" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
					"bgfillcolor_color1" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"fontface" : 1,
					"fontsize" : 14.0,
					"gradient" : 1,
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 577.0, 8.5, 40.0, 25.0 ],
					"style" : "SDT_package",
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
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
						"rect" : [ 1045.0, 178.0, 440.0, 290.0 ],
						"bglocked" : 0,
						"openinpresentation" : 1,
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 21.75, 78.0, 67.0, 22.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
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
										"rect" : [ 105.0, 271.0, 640.0, 480.0 ],
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
													"id" : "obj-3",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 142.0, 69.0, 24.0, 24.0 ]
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
													"patching_rect" : [ 142.0, 28.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
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
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 40.0, 118.0, 249.0, 22.0 ],
													"style" : "SDTpackage",
													"text" : "window size 950 150 1390 440, window exec"
												}

											}
, 											{
												"box" : 												{
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
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-64", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 21.75, 49.0, 84.0, 23.0 ],
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"fontface" : 2,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 241.0, 120.0, 141.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 291.75, 10.375, 109.5, 21.0 ],
									"style" : "SDT_package",
									"text" : "(perceived material)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 71.25, 223.0, 117.75, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 56.5, 118.0, 94.0, 21.0 ],
									"style" : "SDT_package",
									"text" : "draq the square"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-18",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.75, 10.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "int" ],
									"patching_rect" : [ 183.0, 79.0, 77.0, 22.0 ],
									"text" : "unpack 2. 45"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 183.0, 49.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 144.5, 300.0, 185.0, 75.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 122.5, 195.0, 185.0, 75.0 ],
									"setminmax" : [ -3.0, 3.0 ],
									"setstyle" : 5,
									"size" : 2,
									"slidercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"style" : "SDTpackage"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 268.5, 395.0, 61.0, 22.0 ],
									"text" : "pack 0. 0."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 331.5, 344.0, 102.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 309.5, 239.0, 102.0, 21.0 ],
									"style" : "SDT_package",
									"text" : "pressure exerted"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 331.5, 308.0, 77.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 309.5, 203.0, 77.0, 21.0 ],
									"style" : "SDT_package",
									"text" : "rubbing force"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"id" : "obj-96",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 149.0, 164.0, 85.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 114.5, 59.0, 85.0, 21.0 ],
									"style" : "SDT_package",
									"text" : "<- look inside"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-67",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 100.0, 32.0, 23.0 ],
													"text" : "+ 24"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-64",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 128.25, 33.0, 23.0 ],
													"text" : "mtof"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-87",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-88",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 211.25, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-88", 0 ],
													"source" : [ "obj-64", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 0 ],
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 0 ],
													"source" : [ "obj-87", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 241.0, 162.0, 33.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "kslider",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 241.0, 151.0, 196.0, 34.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 18.25, 196.0, 34.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"id" : "obj-8",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 183.25, 123.75, 51.75, 35.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 347.75, 30.25, 74.0, 21.0 ],
									"style" : "SDT_package",
									"text" : "Global decay"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 97.5, 129.75, 37.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 65.0, 30.25, 37.0, 21.0 ],
									"style" : "SDT_package",
									"text" : "Hz"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-5",
									"maxclass" : "flonum",
									"minimum" : 0.0001,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 131.25, 129.75, 50.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 291.75, 30.25, 54.0, 23.0 ],
									"style" : "SDT_package"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-6",
									"maxclass" : "flonum",
									"minimum" : 20.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 49.5, 129.75, 50.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 29.25, 50.0, 23.0 ],
									"style" : "SDT_package"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.031373, 0.541176, 0.498039, 1.0 ],
									"id" : "obj-147",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
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
										"rect" : [ 187.0, 474.0, 1261.0, 480.0 ],
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
													"format" : 6,
													"id" : "obj-45",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 681.0, 58.0, 54.0, 23.0 ],
													"style" : "SDTpackage"
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-13",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 76.0, 62.0, 54.0, 23.0 ],
													"style" : "SDTpackage"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 720.0, 19.0, 325.0, 22.0 ],
													"style" : "SDT-comments",
													"text" : "modal decays"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 115.0, 19.0, 325.0, 22.0 ],
													"style" : "SDT-comments",
													"text" : "modal frequencies "
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 806.5, 89.5, 168.0, 38.0 ],
													"style" : "SDT-comments",
													"text" : "modal decays are set as factors of the global decay"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1075.0, 255.0, 80.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "pak M6dec 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 984.0, 255.0, 80.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "pak M5dec 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 893.0, 255.0, 80.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "pak M4dec 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 802.0, 255.0, 80.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "pak M3dec 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 711.0, 255.0, 80.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "pak M2dec 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 620.0, 255.0, 80.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "pak M1dec 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 620.0, 304.0, 147.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "sprintf script send %s %.4f"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 876.0, 198.0, 29.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 837.0, 198.0, 29.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 798.0, 198.0, 29.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 759.0, 198.0, 29.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 720.0, 198.0, 29.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 681.0, 198.0, 29.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-40",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "float" ],
													"patching_rect" : [ 681.0, 97.0, 112.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "t b f"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
													"id" : "obj-41",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 6,
													"outlettype" : [ "float", "float", "float", "float", "float", "float" ],
													"patching_rect" : [ 681.0, 144.0, 214.000000000000114, 23.0 ],
													"style" : "SDTpackage",
													"text" : "unpack 1.1 1.2 0.85 0.8 0.7 0.65"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-42",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 681.0, 15.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 199.0, 97.0, 173.0, 38.0 ],
													"style" : "SDT-comments",
													"text" : "modal frequencies are set as factors of the fundamental"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 467.0, 255.0, 83.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "pak M6freq 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 376.0, 255.0, 83.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "pak M5freq 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-33",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 285.0, 255.0, 83.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "pak M4freq 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 194.0, 255.0, 83.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "pak M3freq 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.0, 255.0, 83.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "pak M2freq 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 12.0, 255.0, 83.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "pak M1freq 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 12.0, 304.0, 147.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "sprintf script send %s %.3f"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-26",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 12.0, 369.0, 30.0, 30.0 ],
													"style" : "SDTpackage"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 271.0, 198.0, 29.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 232.0, 198.0, 29.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 193.0, 198.0, 29.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 154.0, 198.0, 29.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 115.0, 198.0, 29.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 76.0, 198.0, 29.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "float" ],
													"patching_rect" : [ 76.0, 97.0, 112.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "t b f"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 6,
													"outlettype" : [ "float", "float", "float", "float", "float", "float" ],
													"patching_rect" : [ 76.0, 144.0, 214.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "unpack 0.56 0.92 1.183 1.716 2. 2.764"
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
													"patching_rect" : [ 76.0, 15.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"midpoints" : [ 1084.5, 290.0, 629.5, 290.0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"midpoints" : [ 993.5, 290.0, 629.5, 290.0 ],
													"source" : [ "obj-19", 0 ]
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
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-2", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-2", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-2", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-2", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-2", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"midpoints" : [ 902.5, 290.0, 629.5, 290.0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"midpoints" : [ 811.5, 290.0, 629.5, 290.0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"midpoints" : [ 720.5, 290.0, 629.5, 290.0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"midpoints" : [ 629.5, 290.0, 629.5, 290.0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"midpoints" : [ 629.5, 347.5, 21.5, 347.5 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 1 ],
													"midpoints" : [ 885.5, 237.0, 1145.5, 237.0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 1 ],
													"midpoints" : [ 846.5, 237.0, 1054.5, 237.0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 1 ],
													"order" : 5,
													"source" : [ "obj-3", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"order" : 4,
													"source" : [ "obj-3", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 1 ],
													"order" : 3,
													"source" : [ "obj-3", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"order" : 2,
													"source" : [ "obj-3", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 1 ],
													"order" : 1,
													"source" : [ "obj-3", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 1 ],
													"order" : 0,
													"source" : [ "obj-3", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"midpoints" : [ 21.5, 290.0, 21.5, 290.0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"midpoints" : [ 112.5, 290.0, 21.5, 290.0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"midpoints" : [ 203.5, 290.0, 21.5, 290.0 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"midpoints" : [ 294.5, 290.0, 21.5, 290.0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"midpoints" : [ 385.5, 290.0, 21.5, 290.0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"midpoints" : [ 476.5, 290.0, 21.5, 290.0 ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 1 ],
													"midpoints" : [ 807.5, 237.0, 963.5, 237.0 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 1 ],
													"midpoints" : [ 768.5, 237.0, 872.5, 237.0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 1 ],
													"midpoints" : [ 729.5, 237.0, 781.5, 237.0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 1 ],
													"midpoints" : [ 690.5, 237.0, 690.5, 237.0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 1 ],
													"midpoints" : [ 85.5, 237.0, 85.5, 237.0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 1 ],
													"order" : 0,
													"source" : [ "obj-40", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 1 ],
													"order" : 1,
													"source" : [ "obj-40", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 1 ],
													"order" : 2,
													"source" : [ "obj-40", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 1 ],
													"order" : 3,
													"source" : [ "obj-40", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 1 ],
													"order" : 4,
													"source" : [ "obj-40", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 1 ],
													"order" : 5,
													"source" : [ "obj-40", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-41", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-41", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-41", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-41", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-41", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 0 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 1 ],
													"midpoints" : [ 124.5, 237.0, 176.5, 237.0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 1 ],
													"midpoints" : [ 163.5, 237.0, 267.5, 237.0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 1 ],
													"midpoints" : [ 202.5, 237.0, 358.5, 237.0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 1 ],
													"midpoints" : [ 241.5, 237.0, 449.5, 237.0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 1 ],
													"midpoints" : [ 280.5, 237.0, 540.5, 237.0 ],
													"source" : [ "obj-9", 0 ]
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
									"patching_rect" : [ 49.5, 162.0, 100.75, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 57.0, 100.75, 23.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"style" : "SDT_package",
									"text" : "p materials"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"hidden" : 1,
									"id" : "obj-4",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 49.5, 429.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
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
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 70.0, 22.0 ],
													"style" : "SDTpackage",
													"text" : "loadmess 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "clear" ],
													"patching_rect" : [ 50.0, 162.5, 67.0, 22.0 ],
													"style" : "SDTpackage",
													"text" : "t i clear"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 50.0, 133.5, 24.0, 24.0 ],
													"style" : "SDTpackage"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 207.5, 68.0, 22.0 ],
													"style" : "SDTpackage",
													"text" : "qmetro 30"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-98",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "jit_matrix", "" ],
													"patching_rect" : [ 50.0, 246.0, 120.0, 22.0 ],
													"style" : "SDTpackage",
													"text" : "jit.lcd 4 char 400 100"
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
													"outlettype" : [ "clear" ],
													"patching_rect" : [ 50.0, 49.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 329.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 0 ],
													"midpoints" : [ 107.5, 190.0, 146.0, 190.0, 146.0, 237.0, 59.5, 237.0 ],
													"source" : [ "obj-13", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 0 ],
													"midpoints" : [ 59.5, 237.75, 59.5, 237.75 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-98", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 37.0, 190.0, 63.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p draw.lcd"
								}

							}
, 							{
								"box" : 								{
									"comment" : "pressure on rubber",
									"hidden" : 1,
									"id" : "obj-30",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 561.0, 429.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "rubbing force",
									"hidden" : 1,
									"id" : "obj-29",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 458.5, 429.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"hidden" : 1,
									"id" : "obj-28",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 561.0, 395.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"hidden" : 1,
									"id" : "obj-27",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 458.5, 395.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
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
										"rect" : [ 501.0, 315.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 96.0, 161.0, 72.0, 23.0 ],
													"text" : "slide 10. 10."
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
													"patching_rect" : [ 96.0, 195.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 96.0, 125.0, 178.0, 23.0 ],
													"text" : "scale 79 92 0.05 1. 2. @classic 0"
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
													"patching_rect" : [ 96.0, 43.0, 30.0, 30.0 ]
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
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-4", 0 ]
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
									"patching_rect" : [ 561.0, 344.0, 117.0, 23.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"fontname" : "Lato",
										"globalpatchername" : "",
										"style" : "SDTpackage",
										"tags" : ""
									}
,
									"style" : "SDTpackage",
									"text" : "p pressure.on.rubber"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
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
										"rect" : [ 2637.0, 368.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-17",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 133.0, 223.0, 50.0, 23.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 2,
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
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-9",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 273.0, 58.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-7",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 170.0, 357.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-6",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 170.0, 58.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-20",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 328.0, 66.0, 87.0, 22.0 ],
																	"text" : "loadmess 0.05"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-14",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 273.0, 197.0, 63.0, 22.0 ],
																	"text" : "expr 1-$f1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-13",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 262.5, 238.0, 29.5, 22.0 ],
																	"text" : "* 1."
																}

															}
, 															{
																"box" : 																{
																	"format" : 6,
																	"id" : "obj-11",
																	"maxclass" : "flonum",
																	"maximum" : 1.0,
																	"minimum" : 0.001,
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "bang" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 273.0, 125.0, 50.0, 22.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-10",
																	"maxclass" : "number",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "bang" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 170.0, 313.0, 50.0, 22.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-8",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 170.0, 276.0, 29.5, 22.0 ],
																	"text" : "int"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-5",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 170.0, 238.0, 36.0, 22.0 ],
																	"text" : "+ 0.5"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 170.0, 171.0, 29.5, 22.0 ],
																	"text" : "* 1."
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "number",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "bang" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 170.0, 125.0, 50.0, 22.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"source" : [ "obj-10", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"order" : 0,
																	"source" : [ "obj-11", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 1 ],
																	"order" : 1,
																	"source" : [ "obj-11", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 1 ],
																	"source" : [ "obj-13", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 1 ],
																	"source" : [ "obj-14", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 0 ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 0 ],
																	"order" : 0,
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"order" : 1,
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"source" : [ "obj-6", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 0 ],
																	"source" : [ "obj-8", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"source" : [ "obj-9", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 67.0, 223.0, 60.0, 23.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p lowpass"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 67.0, 333.0, 109.0, 23.0 ],
													"text" : "scale 15. -15. -3. 3."
												}

											}
, 											{
												"box" : 												{
													"comment" : "rubbing force",
													"id" : "obj-7",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 67.0, 393.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 146.0, 15.0, 70.0, 23.0 ],
													"text" : "loadmess 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-72",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 67.0, 299.0, 72.0, 23.0 ],
													"text" : "slide 10. 10."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-52",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 66.5, 112.0, 43.0, 23.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-51",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 184.0, 47.0, 50.0, 23.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-49",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 146.0, 47.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 146.0, 87.0, 57.0, 23.0 ],
													"text" : "metro 10"
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-38",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 67.0, 259.0, 50.0, 23.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 67.0, 178.0, 88.0, 23.0 ],
													"text" : "expr ($f1 - $f2)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 67.0, 146.0, 48.0, 23.0 ],
													"text" : "pipe 50"
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
													"patching_rect" : [ 66.5, 43.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 1 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"source" : [ "obj-47", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 1 ],
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"order" : 1,
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 1 ],
													"order" : 0,
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-72", 0 ]
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
									"patching_rect" : [ 458.5, 344.0, 88.0, 23.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"fontname" : "Lato",
										"globalpatchername" : "",
										"style" : "SDTpackage",
										"tags" : ""
									}
,
									"style" : "SDTpackage",
									"text" : "p rubbing.force"
								}

							}
, 							{
								"box" : 								{
									"border" : 1.0,
									"dstrect" : [ 0, 0, 400, 100 ],
									"id" : "obj-20",
									"maxclass" : "jit.pwindow",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 37.0, 190.0, 400.0, 100.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 85.0, 400.0, 100.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "clear", "", "" ],
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
										"rect" : [ 146.0, 316.0, 965.0, 730.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 148.0, 274.0, 60.0, 23.0 ],
													"text" : "delay 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 148.0, 244.0, 56.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 148.0, 303.0, 87.0, 23.0 ],
													"style" : "SDTpackage",
													"text" : "unpack 200 30"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-79",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "clear", "" ],
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
														"rect" : [ 109.0, 154.0, 640.0, 480.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-27",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 227.5, 101.0, 32.0, 23.0 ],
																	"style" : "SDTpackage",
																	"text" : "+ 30"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-26",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 241.000000000000028, 193.0, 31.0, 23.0 ],
																	"style" : "SDTpackage",
																	"text" : "- 60"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-25",
																	"maxclass" : "number",
																	"maximum" : 92,
																	"minimum" : 79,
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "bang" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 296.0, 137.0, 50.0, 23.0 ],
																	"style" : "SDTpackage"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-22",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 170.0, 101.0, 31.0, 23.0 ],
																	"style" : "SDTpackage",
																	"text" : "- 30"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-14",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 170.0, 279.0, 186.0, 23.0 ],
																	"style" : "SDTpackage",
																	"text" : "framerect $1 $3 $2 $4 11 95 254"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-11",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 224.333333333333343, 359.0, 195.0, 23.0 ],
																	"style" : "SDTpackage",
																	"text" : "paintrect 0 80 400 100 163 117 57"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-10",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"outlettype" : [ "int", "int", "bang", "clear" ],
																	"patching_rect" : [ 170.0, 137.0, 101.0, 23.0 ],
																	"style" : "SDTpackage",
																	"text" : "t i i b clear"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-9",
																	"maxclass" : "newobj",
																	"numinlets" : 4,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 170.0, 239.0, 100.0, 23.0 ],
																	"style" : "SDTpackage",
																	"text" : "pack 0 0 0 0"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-7",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 197.166666666666686, 193.0, 32.0, 23.0 ],
																	"style" : "SDTpackage",
																	"text" : "+ 60"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-130",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 187.0, 319.0, 195.0, 23.0 ],
																	"style" : "SDTpackage",
																	"text" : "paintrect $1 $3 $2 $4 240 240 240"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-75",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 170.0, 41.0, 30.0, 30.0 ],
																	"style" : "SDTpackage"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-76",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 227.5, 41.0, 30.0, 30.0 ],
																	"style" : "SDTpackage"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-77",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 181.833331999999984, 442.0, 30.0, 30.0 ],
																	"style" : "SDTpackage"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-78",
																	"index" : 2,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 296.0, 442.0, 30.0, 30.0 ],
																	"style" : "SDTpackage"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"source" : [ "obj-10", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"source" : [ "obj-10", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-77", 0 ],
																	"source" : [ "obj-10", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"source" : [ "obj-10", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-77", 0 ],
																	"source" : [ "obj-11", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-77", 0 ],
																	"source" : [ "obj-130", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-77", 0 ],
																	"source" : [ "obj-14", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 0 ],
																	"source" : [ "obj-22", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-26", 0 ],
																	"order" : 2,
																	"source" : [ "obj-25", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-78", 0 ],
																	"order" : 0,
																	"source" : [ "obj-25", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 3 ],
																	"order" : 1,
																	"source" : [ "obj-25", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 2 ],
																	"source" : [ "obj-26", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-25", 0 ],
																	"midpoints" : [ 237.0, 130.0, 305.5, 130.0 ],
																	"source" : [ "obj-27", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 1 ],
																	"source" : [ "obj-7", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-22", 0 ],
																	"source" : [ "obj-75", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-27", 0 ],
																	"source" : [ "obj-76", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-130", 0 ],
																	"order" : 0,
																	"source" : [ "obj-9", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"order" : 1,
																	"source" : [ "obj-9", 0 ]
																}

															}
 ],
														"styles" : [ 															{
																"name" : "SDTpackage",
																"default" : 																{
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
													"patching_rect" : [ 37.0, 345.0, 76.5, 23.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"fontname" : "Lato",
														"globalpatchername" : "",
														"style" : "SDTpackage",
														"tags" : ""
													}
,
													"text" : "p draw"
												}

											}
, 											{
												"box" : 												{
													"comment" : "Y position",
													"id" : "obj-74",
													"index" : 3,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 94.5, 393.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "X position",
													"id" : "obj-73",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 62.75, 393.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-8",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 37.0, 20.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-6",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 163.0, 221.0, 48.0, 21.0 ],
													"text" : "button"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-5",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 455.0, 221.0, 28.0, 21.0 ],
													"text" : "ctrl"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-4",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 394.5, 221.0, 29.0, 21.0 ],
													"text" : "opt"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-3",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 335.0, 221.0, 39.0, 21.0 ],
													"text" : "caps"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-2",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 280.0, 221.0, 35.0, 21.0 ],
													"text" : "shift"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 37.0, 393.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-66",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 80.5, 65.0, 337.0, 36.0 ],
													"text" : "This subpatch receives information about the mouse position and lets you draw in the jit.pwindow area"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-118",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 51.5, 225.0, 72.0, 50.0 ],
													"text" : "x/y\nmouse position"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-119",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 441.0, 195.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-120",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 384.0, 195.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-121",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 327.0, 195.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-122",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 268.0, 195.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-123",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 211.0, 195.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-124",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 153.0, 195.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-125",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 94.5, 195.0, 43.0, 23.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-126",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 37.0, 195.0, 43.0, 23.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-127",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 8,
													"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int" ],
													"patching_rect" : [ 37.0, 161.0, 424.0, 23.0 ],
													"text" : "unpack 0 0 0 0 0 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-128",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 37.0, 112.0, 148.0, 23.0 ],
													"text" : "route mouse mouseidle"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-133",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 225.0, 221.0, 36.0, 21.0 ],
													"text" : "cmd"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-79", 1 ],
													"source" : [ "obj-125", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"order" : 0,
													"source" : [ "obj-126", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-79", 0 ],
													"order" : 1,
													"source" : [ "obj-126", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-119", 0 ],
													"midpoints" : [ 451.5, 183.0, 450.5, 183.0 ],
													"source" : [ "obj-127", 7 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-120", 0 ],
													"midpoints" : [ 393.642857142857167, 183.0, 393.5, 183.0 ],
													"source" : [ "obj-127", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-121", 0 ],
													"midpoints" : [ 335.785714285714278, 183.0, 336.5, 183.0 ],
													"source" : [ "obj-127", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-122", 0 ],
													"midpoints" : [ 277.928571428571445, 183.0, 277.5, 183.0 ],
													"source" : [ "obj-127", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-123", 0 ],
													"midpoints" : [ 220.071428571428584, 183.0, 220.5, 183.0 ],
													"source" : [ "obj-127", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-124", 0 ],
													"midpoints" : [ 162.214285714285722, 185.0, 162.5, 185.0 ],
													"source" : [ "obj-127", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-125", 0 ],
													"midpoints" : [ 104.357142857142861, 183.0, 104.0, 183.0 ],
													"source" : [ "obj-127", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-126", 0 ],
													"source" : [ "obj-127", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-127", 0 ],
													"midpoints" : [ 111.0, 152.0, 46.5, 152.0 ],
													"source" : [ "obj-128", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-127", 0 ],
													"source" : [ "obj-128", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-79", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-74", 0 ],
													"source" : [ "obj-79", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-128", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-79", 1 ],
													"midpoints" : [ 225.5, 335.0, 104.0, 335.0 ],
													"source" : [ "obj-9", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-79", 0 ],
													"midpoints" : [ 157.5, 335.0, 46.5, 335.0 ],
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
									"patching_rect" : [ 418.0, 300.0, 100.0, 23.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"fontname" : "Lato",
										"globalpatchername" : "",
										"style" : "SDTpackage",
										"tags" : ""
									}
,
									"style" : "SDTpackage",
									"text" : "p mousedrawing"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"id" : "obj-90",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 26.75, 109.875, 422.0, 270.125 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.75, 4.875, 423.0, 276.125 ],
									"proportion" : 0.39
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [ 192.5, 107.875, 140.75, 107.875 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"hidden" : 1,
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"source" : [ "obj-147", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"source" : [ "obj-17", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [ 508.5, 340.5, 570.5, 340.5 ],
									"source" : [ "obj-17", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [ 427.5, 333.0, 18.0, 333.0, 18.0, 185.0, 46.5, 185.0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [ 468.0, 380.5, 278.0, 380.5 ],
									"order" : 1,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"hidden" : 1,
									"midpoints" : [ 570.5, 380.5, 320.0, 380.5 ],
									"order" : 1,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 1 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"hidden" : 1,
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"midpoints" : [ 250.5, 188.125, 233.25, 188.125, 233.25, 121.75, 59.0, 121.75 ],
									"source" : [ "obj-89", 0 ]
								}

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
					"patching_rect" : [ 577.0, 37.5, 70.0, 24.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"style" : "SDT-comments",
					"text" : "p interface",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontsize" : 11.0,
					"id" : "obj-59",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 148.75, 175.5, 76.0, 20.0 ],
					"style" : "SDT-comments",
					"text" : "look inside-> ",
					"textcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"fontface" : 3,
					"fontsize" : 11.0,
					"id" : "obj-60",
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
						"rect" : [ 281.0, 177.0, 746.0, 668.0 ],
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
									"bblend" : 100,
									"cellmap" : [ [ 0, 0, "Physical", "description" ], [ 0, 1, "bristle", "stiffness" ], [ 0, 2, "bristle", "dissipation" ], [ 0, 3, "viscosity" ], [ 0, 4, "sliding", "noise" ], [ 0, 5, "static", "coefficient" ], [ 0, 6, "dynamic", "coefficient" ], [ 0, 7, "break-away", "coefficient" ], [ 0, 8, "Stribeck", "velocity" ], [ 0, 9, "normal", "force" ], [ 1, 0, "Phenomenological", "description" ], [ 1, 1, "affects", "the", "evolution", "of", "mode", "locking" ], [ 1, 2, "affects", "the", "sound", "bandwidth" ], [ 1, 3, "affects", "the", "speed", "of", "timbre", "evolution", "and", "sound", "pitch" ], [ 1, 4, "affects", "the", "perceived", "surface", "roughness" ], [ 1, 5, "affects", "the", "smoothness", "of", "the", "sound", "attack" ], [ 1, 6, "high", "values", "reduce", "the", "sound", "bandwidth" ], [ 1, 7, "affects", "the", "transients", "of", "the", "elasto-plastic", "state" ], [ 1, 8, "affects", "the", "smoothness", "of", "the", "sound", "attack" ], [ 1, 9, "high", "values", "give", "rougher", "and", "louder", "sounds" ] ],
									"coldef" : [ [ 1, 320, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, -1, -1, -1 ], [ 0, 150, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, -1, -1, -1 ] ],
									"colhead" : 1,
									"cols" : 2,
									"colwidth" : 190,
									"fblend" : 100,
									"fontface" : 0,
									"fontname" : "Lato ",
									"fontsize" : 13.0,
									"grid" : 0,
									"hscroll" : 0,
									"hsync" : 0,
									"id" : "obj-19",
									"maxclass" : "jit.cellblock",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "list", "", "", "" ],
									"patching_rect" : [ 136.5, 414.0, 464.0, 244.0 ],
									"precision" : 4,
									"readonly" : 1,
									"rowheight" : 24,
									"savemode" : 1,
									"selmode" : 0,
									"selsync" : 0,
									"vscroll" : 0,
									"vsync" : 0
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
									"patching_rect" : [ 17.0, 330.0, 678.0, 38.0 ],
									"text" : "Avanzini, F., Serafin, S., & Rocchesso, D. (2005). Interactive simulation of rigid body interaction with friction-induced sound generation. IEEE transactions on speech and audio processing, 13(5), 1073-1081."
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
									"patching_rect" : [ 130.5, 370.0, 476.0, 37.0 ],
									"style" : "SDTpackage",
									"text" : ";\rmax launchbrowser http://www.academia.edu/download/39085735/allegato262165.pdf"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 190.0, 703.0, 131.0 ],
									"style" : "SDT-comments",
									"text" : "The user-object interaction relies on 2 main sets of parameters:\n1) the external force that acts tangentially to the sliding direction (rubbing force by convention), and the normal force between the inertial and the modal objects in contact (pressure on rubber by convention);\n\n2) the interaction force specification. Whereas the first quadruplet of parameters (i.e., bristle stiffness, dissipation, viscosity and sliding noise) are relatively intuitive to grasp, the remaining parameters (i.e., static, dynamic and break-away coefficients, Stribeck velocity) are used to take into account the presliding behavior, stick-slip phenomena and transitions from the elastic to the plastic regimes."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"linecount" : 9,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 271.0, 36.0, 451.0, 147.0 ],
									"style" : "SDT-comments",
									"text" : "Microscopic irregularities cause two facing surfaces to make contact at a number of asperities. This situation can be visualized as two rigid bodies that interact through a large number of elastic bristles. \n\nWhen a tangential force is applied, the bristles will randomly deflect like damped springs, each contributing a fraction of the total friction load. The load contributed by each bristle is assumed to be proportional to the strain of the bristle, i.e., the bristles act as linear springs. \nWhen the strain exceeds a certain level the bond is broken."
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"data" : [ 44227, "png", "IBkSG0fBZn....PCIgDQRA..BvA..D.NHX.....DqnRv....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6cmGdTUeu+.+8Y1WxjjI6KyPxPBYiPHDVR.hgBBHhUDbGkp1psp8J0aq2a2r+5h0K0a6ikaakdu1qKndkphKHqhrHhrFfDVBYg.YeOS1yLY1me+A24bIBZYIGxBue87venyLmy24jI47d9t74qfe+98ChHhHhjPxFta.DQDQzXeLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNEC2M.htQSkUVIN0oNE5s2dQngFJxHiLv3G+3gBE7WGIhF6h+ENhtNvsa23XG6X3vG9vnhJp.s1ZqXfAF.BBBH1XiE4latXNyYNHkTRYPuNmNchN6rSDRHg.MZz.Yxt56TR+98CGNbfVasUDWbwAkJUBAAgq02ZRBmNchd6sWnVsZDbvAOrzFZqs1fACFfZ0pulttSDcdLvAQRrd5oG7QezGgO8S+TLv.CfTRIELgILAnPgBzd6si8su8gFZnAXxjILgILAX2tcTbwEi1aucTSM0.kJUha+1ucX1rYwioGOdfKWt..fNc59ZO+80Wen1ZqEm8rmE0UWcvlMaXkqbkPoRkhOGa1rA+98CUpTAUpTIMWHtLzd6siRKsTTVYkg95qOLqYMKL6YO6qKma2tcCqVshSdxSh5qudX0pUb+2+8Onq6DQW8XfChjP82e+Xe6ae32+6+8HhHh.O5i9nXgKbgHxHiDJTn.c2c2Ptb43vG9vhuF61siCcnCgO8S+TTbwEia8VuUL+4Oewdin+96GkVZonjRJAwEWbXQKZQessg95qOTTQEg0u90iRKsTLiYLiAM7MM2byXO6YOvgCGH2byEYjQFRyEiKCVsZEqe8qGexm7IhAvtdwiGOnolZBe3G9gXaaaaH5niFKdwKdDau.QznMreBIRh3wiGbtycN75u9qi5qud7vO7Ci64dtGDarwJdC+fCNXjTRIgTSMUDd3gC..sZ0hLxHCzYmcht6tajTRIACFLHdiuJqrR7Juxqfm+4edroMso+gsCsZ0hfBJH3vgC3xkKLm4LGnQiFwi2N24Nwe3O7Gve4u7WPIkThDc03xSngFJ5pqtPGczARJojPxIm70sysBEJPPAED750KZt4lQTQEEzpUKGNEhFhvd3fHIhc61QYkUF1912NToRExKu7FzvX..30qWjQFYfnhJJjPBI.AAAnSmNLsoMMnPgBnVsZLgILADTPAI9ZprxJQQEUDznQCRHgD9G1NLZzHLYxDLXv.BKrvvblybFziefCb.X0pULkoLEDYjQNz7l+pTzQGMzoSGznQCRN4jgISlttctUpTIBO7vgff.DDDP5om9+vgqhH5xGCbPjDwsa2n6t6F1rYCxkKGUVYkX7ie7CJzgBEJvTlxTFT216zoSwgLIpnhBomd5CJvgYylw7l27fd85w8ce22k7b60qW32ueHSlL3ymOzPCMfyblyf3hKNL9wO9A8byImb..vsdq2Jl1zl1fdL+98Kdb..74yG.f3MkuTBreP50qW..HWt7K6gkvoSmnkVZAxkKGwDSLh83..fLYx9ZON986G974C986GBBB+Ce9W3qIvw2oSm33G+3Pud8H+7yGAGbv3B2eKCbrEDDvWdeu7BeLhnKFCbPjDQsZ0HxHiDgEVXnmd5A+leyuAYkUVvjIShqPjK0Mm5u+9wF1vFfc61QN4jCBKrvfLYxfGOdfWudQVYkExHiLfBEJtnuAtc61ga2tQ+82Ob3vAzoSGra2NJpnhPqs1Jtoa5lfJUpfe+9ga2tgOe9v8ce2GV9xWNTqVMTpTI750K73wi3+B7dwkKWhStTMZz.850CUpTI9dvue+vqWuXfAF.d73AczQGPPP.AGbvPsZ0hOOYxjAUpTcQ81Cv4mCGczQGPmNcPgBEnqt5B1saGxjICFLX.pToBZ0pE.XPmWmNchAFX.Lv.C.WtbAYxjgfBJHnRkJnSmtK5ZsKWtfSmNgCGNfSmNAv4Gdq95qOTQEUfoMsogbyMWnToRzSO8LnfLZznA5zoS7ZX+82uX3iPBIjK46KhHF3fHIid85wLm4LwS+zOMV0pVEN9wONtq65tvy+7OOJnfBfACFtjuNGNbfhKtX..rjkrDDZngB.fyblyfhJpHb3CeXbtycNL8oOc7K9E+hAcCt+3e7OhO6y9L32uew4IhFMZPas0FzoSmXua31sarm8rGTYkUhctycBiFMhG+webjat4h5pqNru8sObzidTzbyMi68duWze+8iMtwMB61siFZnADYjQhm7IeRbq25sJ99HPOy7RuzKgJpnBDSLw.GNbHtrdMZzHb4xELa1Lt669tQ94m+E8d+u829an5pqFlLYBaYKaAe1m8YhqxFkJUhErfEfe9O+mOn2ytc6Fu669tXSaZSvsa2HzPCEc1YmnyN6DYlYl327a9MH5nidPmmsu8si0st0g5pqNwvM50qGYjQFvoSmXpScpPsZ03PG5PXMqYM3Lm4LPqVsXVyZVXEqXEHmbxAd85EUVYk3IexmD82e+3a9M+l3Idhm.wGe7WsejgnwzXfChjHBBBH5niFO1i8XPud834dtmCkTRI3e5e5eBO0S8T39u+6+hliB986Gtb4B0UWcHjPBAyd1yFAETPvmOevpUqXu6cu3S+zOEd85ESYJSAJTnPbRNtxUtRbvCdPb228ci67NuSX1rYbxSdR7FuwafRJoDjYlYhBJn..b9ugeCMz.dm24cvIO4IwRW5RgZ0pAv4WUKEWbwXiabin2d6ECLv.HiLx.O7C+vvrYy32869c3y9rOC6ae6CSYJSAFLX.s2d6Xiabi3EewWDQFYj3e9e9eF4kWdvmOe3W+q+0XqacqHkTRASe5SGScpSEIlXhWz0Ka1rgBKrPzc2ciDRHAjSN4f4N24hvBKL74e9mi+ve3Of27MeSjSN4fu427aBAAAbhSbB7u8u8ugJqrRrjkrDrzktTDczQiyctygW9keY7ge3GhfCNXrpUsJwPJO+y+7XcqacH4jSFOwS7DH6ryF1rYCu+6+93ke4WF..SYJSApUqFYmc1H93iG6ae6ClLYBYmc1hqhGEJT.iFMBqVsha9luY7fO3CNrOGXHZjLF3fHIjb4xQTQEEdvG7AgJUpvZVyZP0UWMV8pWMZpolv2467cPlYlo3y2oSmnt5pCVsZEVrXAAETPhyehoN0ohie7iiO+y+bnWudjYlYBAAAzQGcf+e++9+gctychUtxUhG5gdHLtwMNnRkJDSLwfZpoFbzidTDe7wKdtzpUKV1xVF13F2H..RM0TQTQEE..RIkTvLm4Lw1291A.Pd4kGdzG8QQPAEDTpTILa1LjKWNb4xk3bEorxJCu0a8VPgBE34dtmC4jSNhC2SRIkDznQC73wCl9zmNV7hW7kbxXdtycNTas0hHhHB73O9iia61tMDbvACEJTfYLiYfa5ltIr90udbvCdPba21sgVasU7bO2ygidzihu2266gku7ki3iOdwdqXIKYIXiabiX6ae63Ye1mEAGbvXsqcs38du2CgGd3XEqXEXQKZQPiFMvmOevkKW3C9fO.d73AYlYlPoRkPqVsH93iGZ0pEJUpTrPfA.zYmchMu4MijSNY7LOyyHVL0Hhtz358hHIlb4xQjQFItu669vq7JuB9FeiuA5s2dw69tuK10t1E5pqtDet81au3XG6XvoSmvhEKPgBEhy+.4xkKNGGRN4jwLm4Lgc61wwO9wwl1zlDOGIkTRhCSfa2tEmCBwDSLhymAYxjA+98iZpoFHSlLXwhEwgtwmOen6t6FczQGXRSZR3ge3GVbBbpVsZwIwod85gZ0pQ0UWM9jO4SPkUVIxN6rwLlwLfACFfb4xE+mfff3Mr+plmCkWd4n+96GYlYlHiLx.QFYjPiFMPgBEvfACHhHh.986G1saG..u669tnvBKD4lat3lu4aFiabiCpUqFxkKG5zoCQEUTPgBEnwFaDd73AUTQE3Mey2D1rYCqXEq.KXAK.AGbvPkJUvqWuhCCy3F23fYylgRkJgLYxP3gGNzoSG5pqtPmc1IDDDfSmNQ4kWNd629sw8e+2OhO93Gz7YgH5hw.GDccfLYxPjQFIxM2bwu3W7KP1YmM5niNv92+9wYNyYDedc1Ym3y9rOCxkKG4latCppe1Zqsh5pqNnRkJjZpoh3iOdzRKsfW+0eczau8hEu3EKdix.pnhJvoO8ogVsZgISlDugnOe9P4kWNZu81QBIj.hKt3fFMZ..P0UWMNxQNB74yGrXwxfF1G2tci5qudDZnghLyLSDczQiZpoFTXgEJthaBLoNCn4laFNc5Domd5vhEKekWiprxJgSmNQBIj.BIjPtnUtSu81KDDDfVsZgWudwl27lQ+82OJnfBPRIkzfJlYNb3.VsZENc5DpUqFZznA6ae6Cm6bmComd5H6ryFFMZT742c2ciRJoD3ymOjSN4.sZ0Jd9yLyLQrwFKb5zo3DLs95qGaYKaAVrXAye9yWLXHQzWMF3fnqiTnPAxM2bwDm3DgNc5Pas0F5niN.v4uYdyM2LJt3hgQiFwBW3BE69d.fFarQzVasgvCObw4.QyM2LNvAN.LXv.tq65ttngpn7xKGkWd4H5niFSZRSR7+uOe9voO8ogSmNQpolp3JgA.nt5pCkVZoHrvBCSe5SePGulZpIzXiMBylMCKVr.c5zA2tcCWtbA4xkeQkE8CdvChhKtXX1rYLm4LmKYcCIvpa4nG8nvtc6HkTRYPgA.N+J2IPXqjRJIbxSdRTVYkAiFMhzRKMwdmI.a1rgZqsV32ueLoIMInToRTXgEh96uejUVYcQShzd6sWTd4kCkJUhIO4IOnh8kISlPTQEEDDDfa2tEKG8UVYk3we7GGQFYjLrAQWF3b3fngXszRKn6t6FQDQDHhHh3hdbkJUBc5zIVnoBbyxd5oGTVYkgd6sWTPAEfzSO8A0aE0Vasns1ZCQGczXbiabvtc6n1ZqUrpbN4IO4AcC+d5oGTQEUfN6rSL8oOcjc1YCf+uave7iebw.GgDRH.370NiVasUzbyMijRJoKZkjrm8rGzVasgLyLSwJi53F23P1YmMppppvW7EeARLwDgZ0pQ2c2M15V2J762Ot+6+9wMcS2zfpmHADnhrdpScJnWu9A0d.NeuUTe80iyd1yhHhHBL8oOcr4MuYzc2ciYNyYhnhJpKZHZ5pqtvoO8ogFMZvMcS2DrYyFN0oNk3PUcgATb61MZokVPokVJLXv.l5TmJjKWt3iGZnghniNZHWtbzSO8fRJoDbjibDL8oOcjat4xJQJQWlXfChFhcpScJb5SeZje94eICbX2tczRKs.YxjgrxJKjTRIAfyObJkVZoPkJUH2bycPkebWtbgSe5SiVZoEL4IOYjTRII9s383wChJpnfd85GzM+ZrwFQM0TCznQCxHiLPrwFK.NeuazYmchCdvCBEJTfIMoII1iBCLv.n4laF1rYClMaFiabiC.+eE.rcu6cit6taXwhEw.Gtc6FpToBVrXApToBadyaFpToB974CQDQDXVyZVXgKbgekaBZtc6F6XG6.s0VaH2byElMadPAmpolZvm8YeF5s2dwse62NRLwDwwN1wfa2tQLwDi3PAEfSmNQUUUEJrvBQ3gGNV3BWHJu7xQCMz.74yGBMzPGTOG0e+8iJqrRTas0hzRKMLwINwA0iEAlOHpUqFkVZovmOePoRk3Nuy6bPASHh95w.GDMDq1ZqEG7fGDwEWbWTk6ziGO3K9hu.kWd4H4jSF4lathcueu81KN6YOKTqVMlzjlzftoWCMz.N0oNEb4xERJojP7wGu3PwDXamOvJFQPP.tb4BkUVYn95qGQGczvhEKh2bzkKWn3hKVrMLgILAnWud.b9gno1ZqUrRedgAX5s2dQEUTATnPAF+3GOBMzPQc0UG17l2LprxJwJVwJvjm7jwINwIfWudQrwFKxO+7QXgE1W6Mlc61M16d2Kb5zIlwLlwfFdm95qObfCb.ricrCjXhIhUrhU.4xkKNwUCDD5BEXRr1d6siksrkgoLkofu3K9BwGOv0I.HVEVKrvBge+9QVYk0EM7L.PbhiVbwECEJTf64dtmqq6yKDMV.CbPzPn.KuxpppJb3CeXL0oNUw4Ugc61Qc0UGdoW5kfJUpvxW9xwjm7jgc61Q2c2MJqrxPEUTAjISFBN3fgCGNfBEJPmc1I1wN1AppppPHgDBzqWOb5zILXv.RKszPvAGLpu95QQEUDRLwDga2tQqs1J9zO8SwYO6YQFYjg3qwgCGn1ZqUrHYEWbwAWtbAGNb.a1rgCdvChSdxSB0pUiPBIDwJrY2c2MJrvBQiM1HLZzHLZzHTpTINxQNB1111FzqWOLa1LTnPgXoRG37CujOe9fQiFuja68ApRnm8rmEZ0pENc5DM1XihqDjRJoDricrCHSlLbG2wcfYMqYAGNbfYNyYhCcnCglZpITSM0.CFL.+98i95qOroMsIryctSjWd4gu+2+6KNuYxHiLv92+9QYkUFl3DmHBMzPQe80G1yd1C97O+ygZ0pQBIj.b3vwfpLp.PLzTf4Dxbm6bk9OLQzXLLvAQCg74yGzoSG73wC14N2Ib61s3DkrolZBG4HGA50qGe2u62EKdwKFwFarn7xKG6YO6QrpZFRHgfO+y+bw5vwm7IeB13F2H5omdfNc5v4N24P4kWNxImbPVYkEt8a+1w1291wu5W8qv7l27fCGNP2c2MJt3hgOe9v.CL.ps1ZgUqVQ0UWM15V2J9hu3KDug6IO4IgACFPokVJ13F2Hpu95QvAGLb5zoX4T+.G3.3se62F.meHFBrGwXvfAXvfAbvCdP7C9A+.DQDQHt2j32ueDYjQh4O+4ikrjkfDSLwAsRR.fXoP2nQiHojRBm3Dm.1saGlLYBczQGnzRKEd85EOxi7H3QdjGABBBPkJU3a8s9V3jm7j3vG9v3se62Fomd5PPP.0VasngFZ.ETPA3Nti6.YkUV.37Kg2ku7ki1ZqMw4+QzQGM5s2dQIkTB5qu9fVsZQ80WOZs0VgYylGTfCUpTACFLfTRIEb629sifCN3qGebhnwTXfChFBoPgBbG2wc.c5zg0st0g8t28J9M6iN5nwcdm2IdfG3APDQDg3vFXylMzSO8.ylMiG6wdL.b9aV2e+8CUpTgN5nCjd5oiLyLS3ymODVXgA2tcC4xkijRJI7hu3KhTRIErwMtQr4MuYjc1Yi67NuSjZpohJqrRnRkJwd3n2d6ENb3.KdwKFJTn.Nb3.ZznA8zSOhKQVKVr.MZzfTRIEHHH.ud8hFZnAXxjI7.OvC.YxjAiFMhAFX.LgILATPAEfZqsV3ymOXylMwqEtb4BUVYkXe6aePtb43AevG7RNmVznQC9U+peExKu7v92+9w5V25vl1zlfZ0pwblybv8bO2yfJNZxkKGlLYB+m+m+m3Ue0WEe1m8YXCaXCPiFMXJSYJ3YdlmA2zMcSWzv37HOxi.kJUhO5i9HbricLL9wOdrnEsHjat4hjSNYwZtQf57Q.d73A82e+Ht3hCETPAhUZThnqLB9+xC.JQzPBOd7.GNbH9M9MXvfjs7ICrQh41sanQilqKSlwcsqcg0rl0.GNbfG6wdLLu4MOwIvoe+9gMa1v+w+w+Ad0W8UwC+vOLd7G+w+ZqCGWn96uenPghKZBgdoDXiXSkJUCZxf9UwqWuhA1tbpLnUUUUX0qd0Ht3hCOxi7HhS9VhnqLrGNHRhHWtbwIi40CJUp75Vo09ce22EuzK8RH1XiE+ze5OEybly7hFtD0pUijSNYDVXgASlLMnk55+HWIW2tReeKSlrKqfIArl0rFTas0hErfEbQ0uChnKebAjSjDIPII+B+20qykTqvBKDUVYkHiLx.yXFy.JUp7hN+kTRI30dsWCVrXA4jSNWQANtRdebk999q5460qWzSO8HtJa..d+2+8Q6s2Ntu669PAET.q4FDcMf8vAQzUr.0xh8rm8fLxHCby27MC0pUiAFX.zYmchsrksfsrksffBJH7TO0SgIMoIMhulUzUWcg0u90iW4UdE7W+q+UX0pU75u9qiEsnEg4Lm4vIJJQWi3b3fH5JVIkTB1111FJpnhfZ0pQTQEEjKWNhO93E232La1LxM2bQVYkEBJnfFwW9u6omdv1291we7O9Gwrm8rgFMZPbwEGVvBV.rXwB2IXI5ZDCbPDcEKPs9ngFZ.8zSOvlMahkMbe97AEJTHtGj7kmaGiTEXeR4zm9zPPP.AETPHgDR.gGd3WxZHBQzUFF3fH5ZhOe9fCGNfa2tgACFF0OOGBrWyHWt7Q78JCQilv.GDQDQjjaz8WEgHhHhFUfANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbJFta.zXStb4Btc6F974a3toPDMBkb4xgJUpfBE7VQ2Hf+TljDEUTQ3.G3.nyN6D986e3t4PDMBiLYxv3F23vblybPJojxvcygtNfANHIwd26dwe6u82fb4xgQiFGtaNDQivzd6siHiLRDd3gy.G2ffANHIge+9gNc5Pt4lKl3DmH6kChHQBBB3vG9vnkVZg+sgafv.GjjPPP.xjICZznAZ0pk+QEhHQBBBPsZ0PlLYPPPX3t4PWmv.Gjjxue+h+iHhnabwkEKQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHImhg6F.M1lff.DDDFtaFDQifv+lvMlXfCRR32ue..HSlLnPgBw+ahHRPP.xjc9NXm+sgabv.GjjvmOenyN6DacqaEG5PGZPOlff.TpTIjKWNFXfAFlZgWZZ0pEtc6Fd858F9+Pnff.TnPATpTIra2900ysBEJfb4xgGOdfWuduhesJUpDtb45J90NVjb4xgRkJgGOdfGOdFRO1JUpDxjICtc6F9746J501RKsfHiLxgz1CMxFCbPRhzRKML24NWzd6sK9MYBXfAF.UUUUn2d6E4latWziObvue+vue+3nG8nH5niFwFarPkJUC2MqgUNc5DM0TSnwFaD4latPgBEW25J7FZnAzSO8fHiLRDUTQcY+5762OZt4lwYO6YgISlPrwFqD1JGcn4laFUUUUHxHiDIjPBCoG6pqtZX2tcDSLwbEGdHhHh.ImbxH93ieHsMQibI3+F8uFGII5ryNQWc0Eb4x0E8XMzPCXsqcs3zm9z3Mey2DJUpbXnENX986Gd73Ae2u62EKXAK.25sdqHrvBa3tYMrxpUqXyady3cdm2AevG7APmNcW2BbrgMrAbxSdRje94i4Mu4cY+5762O9jO4Sv5W+5wRVxRvRW5RkvV4nCaYKaAadyaFyZVyBequ02ZH8X+5u9qi5pqNbK2xsf7xKuq3WuVsZQ3gGNLXvvPZ6hFYh8vAIIBKrv9JugsVsZQXgEFzqWORKszfRkJG1mDY986GNc5D50qGQEUTXBSXBWQey5whBzk2pUqFImbxH3fC95VuQc3CeXTe80CylMizSO8qnW64N24PngFJ762+U7qcrnie7iifCNXDSLwfzRKsgzeWKxHiD80WeHgDRfWqo+gF96Ka5FRA5XsQRcv1Ho1xHEAtlbkN97CUm6qlelnRkJnToRzSO8HAspQetvqiRwmwuZ+4DciGF3fnK.mjgi9EXEPvaBRzHKLvAQ+uDDDfNc5PKszBb3vwvcygtFMbOLcDQCFCbPz+K4xkCKVrfJqrRXylsg6lCQDMlBCbPD9+5FdylMC61sygVYTLNmBHZjIF3fnKfOe9fb4xY2wOJVfe14ymOF7fnQPXfChnwTznQCzpUK5omdFVVcMDQWZLvAQzXJAGbvvnQiniN5XHuTdSDc0iANHhFSQqVsPqVsvpUqnqt5Z3t4PD8+hANHhFSIt3hCYmc1PoRkvoSmC2Mmwz762ODDD3bdhtrv.GDcABLoQoAuZOFMcCEEJT.MZz.2tcit6t6g6lyXZJTHk8EB3...H.jDQAQk.82e+vlMabB5R+Cw.GDcAzoSGZqs1Pe80GG+eb9fFd85cTUOEnRkJDczQifCNX7Nuy6.Od7vaFJQxLyLgGOdPKszBb618vcygFgiANH5BX1rYX0pUzYmcdC+e.UiFMHhHh.d73AM1XiiZVwGxjICQEUTvjISX+6e+rpwJghJpnfBEJfCGNF074CZ3CCbPz+KAAADRHg.Od7vd2..JUpDgDRHvue+ip1HzDDDfACFfISlPKszBZpolXObHQBTv7FMMjazvGF3fnKAGNbbCenCAAgQsEAsfBJHXxjI3vgCblybFF3fnQ.XfCht.gFZnvue+vpUqrq3u.i1BcnSmNjTRIAylMi8u+8Cud8xPGR.VF4oqDJFta.DMRgff.hO93gVsZQWc00npIJoTHvMSBL17iltwhJUpPRIkDV7hWL1vF1.9Q+neDBKrv3JPZHlb4xgOe9fc61gSmNgFMZtlNd986GNb3.UVYkn+96W7ydxjICxjIC974C974CJUpDgFZnHlXhAFLX.xjMx86N6ymO30qWHSlra3+7GCbPzEHjPBAQDQDnyN6D1sae3t4Lr5BGRk96u+QUAN..BO7vwBVvBvZW6ZwINwIvrm8rgFMZF00aMijEbvACYxjgFZnAzRKsfPBIjq4iYO8zC15V2J1291GZqs1fd85gYylgQiFgc61gUqVgWudQ7wGOxO+7wBVvBP3gG9HpalOv.Cft6taLv.Cfd6sWnToRDe7wiPCMzg6l1vpQtwBI55r.S1vIMoIAqVsh95quQc2jcnjRkJQ3gGNLXv.polZF0csPoRkHt3hComd53Ue0WEczQGbkTLDK5niVLHPu816PxwLjPBA28ce2PsZ0n7xKGxjICKdwKFqbkqDO5i9nXdyadHnfBBe7G+w3IexmDaaaaC1rY6p5b0c2ciFarQzc2cOj946pqtZrt0sNrpUsJ7u7u7uf29se6QUS7ZoBCbPzWRt4lKZokVP6s29MzSbTEJTfPBIDDZngBWtbMb2bthIHHfvBKL73O9iist0shSbhSv4kiDHPOgMTLrFBBBPqVsvhEKvfACPtb4H2byEETPAH4jSF4kWdXkqbk3O9G+i39tu6C80WeXcqacWUE3M2tci25sdK7DOwSf28ce2qpeW2qWuXfAF3h9bUGczAN8oOM1xV1BZrwFQxImLRHgDthO9i0vgTgnujzRKMX2tcTc0Ui95qODVXgMb2jF1LZeRApUqVTPAEfLyLS7FuwafLxHCXwhkg6l0XNC0k27lZpITQEU.fyWp5+xCUiLYxPvAGL.N+JR5pIry92+9w67NuCJu7xQ94m+UU6r5pqFaXCa.gEVX367c9Nh++yO+7gff.ppppfb4xQrwF6U0werF1CGD8kLwINQXznQTQEUflat4g6lyvp.SZTEJFc9cSDDDfBEJvbm6bwgNzgP0UWM6kigPA5cC61si96u+gri6QNxQPGczAhO93gYylgNc5Fzi6xkKTc0UC.foMsocQO9kCe97gvBKLr3EuXL6YO6q3Oi6ymOzRKsfhJpHLtwMtA8XBBB3nG8nnwFaDwGe7vjISWwsuwhXfCh9RznQCF+3GOJu7xQs0V6vcyYXkb4xgBEJFUUoQ+xTpTId3G9ggd85w6+9uOpqt5FtaRiYnToRXznQze+8iVas0griaokVJ5u+9QJojBhN5nGTumLv.CfJpnBrsssMDd3giEtvEB850OnW+kSOyMiYLCrl0rF7BuvKfbxImKpGZ762+W6xo9.G3.XMqYMPiFMXlyblC5wra2NNwINA5pqtPBIj.hKt39JaGWNKY6+QskQKFc90VHRBISlLjYlYhibjiHtGQnToxg6l00cAlDsYkUVn5pqdTafC4xkiDSLQ789deOr10tVjUVYgvBKLDQDQLb2zF0SlLYPgBEh2PbnRYkUF5u+9QlYl4ftYcas0F1wN1AV25VGhM1Xwy7LOCRIkTfJUpfc61gc61wt10tPSM0DRIkTfKWtvt28tgWudwTm5Tw29a+sQe80Gb3vAJu7xwgNzgP5omNJnfBD6kj1ZqMroMsIbpScJ3ymO3xkKnQiFL24NWL6YOaTSM0fsu8sicu6ciScpSgXiMV7y9Y+LXwhE7TO0SAkJUh5qudTc0UCCFLfDSLwAMjPtc6FMzPC30dsWSbOaRoRkH+7yG2zMcSHpnhR74Ve80iO3C9.we+ysa2Pud83a7M9FXVyZVH7vCeH6Z90CLvAQWByZVyBadyaFm8rmE0We8X7ie7C2Moq6DDDfRkJQjQFIprxJga2tE2NxGMIv6iktzkhcricfssssgzSOcje94OhZoTNZkRkJEuw705mO762OZokVPUUUEb3vApt5pw1111fNc5fKWtP80WOJojRPPAEDV8pWMxImbfd85gff.14N2I1wN1AN3AOHToRExLyLgb4xwYO6YQM0TCJpnhvJVwJvd1ydvt28twwO9wgUqVECI30qWb5SeZ7xu7KiScpSgIO4Ii7xKOTQEUfctychd6sWX1rYzc2ciSe5SiRKsT3zoSnWudzTSMAiFMJ1CDUUUUn6t6FwGe7H1XiUb3Z5pqtvANvAvG7Ae.JqrxvhVzhPbwEG9nO5ivwN1wfGOdvsca2FTnPAJpnhva8VuEJojRvjlzjvrm8rQ0UWMd+2+8QKszBLa1LCbPzXAVrXAyZVyBEUTQ3HG4HvrYy2P1KGZ0pEYjQF3C9fO.s2d6HnfBZT674vrYy3IexmDqd0qFabiaDQFYjHiLxX3tYMpWfaz1SO8bMG3vmOeXu6cunwFaDgDRHvpUqnvBKDd85E82e+vpUqXfAF.Se5SGolZpvnQihu13hKNzRKsfyd1yBylMiXhIFLyYNSXylMb3CeXTe80CAAAL9wOdr+8ueTYkUhvBKLDYjQBMZzfZqsV79u+6iO4S9Djat4hG9geXjTRIgoMsoA4xkCkJUBsZ0hzRKMLwINQbfCb.DczQim7IeRDe7wCiFMJFf8jm7jnqt5BYkUVhSXz95qOr+8ue7W9K+E3vgC7C+g+PjUVYAiFMh1auc7Zu1qg8t28hrxJK32uer90ud7EewWfa4VtEbe228gILgIfN5nCTd4kifCN3QkgkGc9WNHRhoUqVL24NWb3CeXbvCdPjat4hDSLwg6l00cZ0pEImbxnmd5A81auiZGVEfyuLem+7mON3AOH16d2KLYxDhLxHQjQF4vcSaTMc5zAe97gAFXfq4ike+9wN1wNPWc0ElyblCV7hWLhIlXfGOdfSmNgUqVwINwIvwO9wwq8ZuF9k+xeo3qM8zSGAGbvHrvBCyYNyA28ce2XhSbhvsa2HqrxBs1ZqPgBEHyLyDlMaFpToBolZpvjISPtb4n1ZqEewW7Enu95CwGe7H6ryFxkKGFMZD2+8e+vue+Ht3hC82e+vgCGvqWuHyLyDKYIKYPCYhGOdPokVJ5s2dQhIlHhN5ngGOdvINwIvq9puJps1ZwO+m+yw8du2q3qI4jSFZznAM0TSnyN6D1rYCG+3GG1saGie7iGSYJSQb9x7nO5iJVHwFsgANH5qPZokFxHiLPYkUFJpnhfYylGU9sJtVHSlLnSmN30qWzPCMfzRKMnRkpg6l0UMsZ0hksrkglZpIru8sOjPBIfa61tMnVs5g6l1nVgFZnPoRkh2D9psdb32ue3wiGbpScJ30qWL+4OebW20cgniNZwGu2d6Ee5m9o3W8q9U3sdq2BOvC7.HwDSDJTn.s0Van0VaEwFar3lu4aFYkUV.37ygmTRIEjRJoHdtppppfMa1fEKVDmyD5zoCgGd3vkKW3PG5P3sdq2BojRJXZSaZXBSXBhK82idzihidziBkJUhrxJqKZI61PCMfyctyAUpTgDRHAXznQzVasgcu6cicsqcgjRJInRkJ7ge3GJ9ZN3AOnXgASPP.50qGFMZDm7jmDexm7IPqVsXBSXBXlybl3ltoaZT6NzKCbPzWACFLfa8VuUzbyMiidzihBJnfa3lngBBBPsZ0PsZ0nvBKD4me9WzJBXzloN0ohUrhUf+1e6ugMrgMfnhJJLsoMsq48AjaTkTRIgniNZzSO8fd5omq5eGwmOenyN6DszRKPud8HyLybPCYhff.BIjPvDm3DwDlvDvm+4eNN0oNELa1LTnPAJrvBQ80WORM0T+Z+1+1rYSbNIYxjIwxMdxImLV1xVFZngFvoO8owy9rOKl1zlF99e+uOlwLlABIjPfb4xQc0UGZngFfISlvTlxTtni+92+9QCMz.RLwDQBIj.znQCppppDmiFtc6FqcsqcP8VXO8zi3FNXngFJBO7vwsbK2Bppppvd26dwwN1wPN4jC9A+fe.xKu7PPAEDCbPzXM4jSN3vG9v3HG4HnvBKDKZQKZD8FE0PMYxjA850iwMtwgxJqrwDancxjICyZVyBM0TSXcqac3ke4WFxjICSaZSaTcu2LbwjISHwDSDUWc0nppp5pNvga2twoN0oP2c2MRLwDQDQDwk7mGd85ENc5DxjICgFZnPPP.d73A6e+6GM2byXdyadCZkd7kUVYkgZpoFDZngBylMifBJH.7+s26HSlLrksrEricrCroMsIzd6siezO5Gg4O+4CiFMhN6rSzau8hINwIhzRKsK53efCb.zWe8gEu3Ei3iOdHHH.qVshFZnADd3gi4Lm4fHhHhAsDWkISFTqVMl8rmMLa1LLXv.t8a+1gFMZvF23FwANvAvV1xVP6s2N9c+teGxM2bGUF7mANH5qgFMZvjlzjv92+9w5W+5Q1Ym8W6Zperl.ENqjRJIblybF3wimQkqTkuLc5zg65ttK31sa7Juxqf+7e9OiexO4mfLyLyaHmbvWKzpUKhM1XQokVJNyYNCl9zm9U7mO762Ob5zI18t2Mb5zIlvDlvkrXdMv.CHNjEgGd3H8zSGxkKGc2c2n7xKGtb4BIjPBesgd14N2IZqs1Pd4kGF23FGjKWNb3vADDDPTQEEV9xWNl+7mOdgW3Eva9luIN7gOLdkW4UPJojBzoSG5pqtfGOdPTQE0fB1DnH4UYkUBe97gYLiY.SlLAe97gt6tazQGcfwO9wie7O9GeIKy4Ad8tc6FNc5DwEWb3gdnGBKXAK.+k+xeAu5q9p3HG4H3i+3OFImbxiJCbbiyWUinqRSe5SGyZVyBkTRI3+4+4+YHsdCLZfRkJQJojB5t6tgCGNF0W7gBPud83du26EO8S+znwFaD+xe4uDkVZoXfAFXLy6wqWhIlXfWudQYkU1U0ueD3lxaZSaB974CSe5S+hlaDtc6Fm7jmDuwa7FvpUqnfBJ.wDSLPtb4npppBczQGvrYyXbiabPqVsekmq8su8AmNchEu3EiwO9wiN6rSbpScJbtycNwmSjQFIdtm64vRW5RgFMZPmc1Ib4xEN24NGNyYNCTpTILYxzfl6O986Gc2c2n95qGgEVXh6GLtb4B1rYSbNt7kqzs986G82e+vkKWnqt5Bm7jmTrsHHHf3hKN7S9I+Dr7kubnToRzd6sOpbuMBfANH5enPBIDje94ijSNYrsssMzZqsdC0MjBTSC5s2dQSM0zXhgUI.CFLf63NtC7q+0+Z3xkK7.OvCfssssIVSItQ5myWKhIlXfVsZQiM13UzthZfqwNc5D0UWcnrxJSrbiGVXgAOd7HNuGJu7xwa7FuA17l2LxLyLwu6286D6UfRJoDzc2ciLyLSLtwMtAMrmANG974Cd73A0TSMHnfBBSbhSDgEVXXqacq329a+sXqacqvmOeCpmFppppfe+9wTm5TgQiFwQO5QwYNyYPXgEFhM1XgOe9DeMd73A6YO6AVsZEwDSLPmNcvue+PkJUPud8PiFMhsg.uFud8B61siW+0ecTd4kisu8sie+u+2iO8S+zA0Vb5zoXobeJSYJh6iLi1vgTgnKCScpSEe2u62Eu3K9h3YdlmAqd0qFwDSLC2MqqKToREl8rmMBIjPvQNxQPZok1W62fbzl.kl5m8YeV7y9Y+L7C+g+P3zoSbK2xsHNGAnudgGd3H3fCFUVYkn81a+xtfT40qWX0pUbnCcH7lu4aBfyurR2xV1BN7gOL..5s2dQEUTAN5QOJZs0VwBVvBvi8XOFBO7vgSmNQgEVH93O9igUqVgKWtDqjnA9Lpe+9gMa1PYkUF9zO8SQs0VKLXv.ps1ZQZokFb3vAZt4lwINwIvINwIP3gGNZs0Vw5V25vANvAv7l27vO3G7CfEKVvV1xVP+82OBMzPgMa1vwN1wfSmNQFYjAprxJwe5O8mPO8zC73wC5ryNw.CL.zpUKLYxDRN4jwoO8ow+8+8+MdnG5gfQiFwANvAvAO3AE2ue73wCZpolPwEWLJpnhPjQFIZokVvG8QeD10t1ExO+7wcbG2wn1MTRF3fth42uebzidTr6cua32ueje94eUuaKNZQyM2LpnhJPWc0EJt3hwK+xurXM.3Z8FRUVYkXO6YOngFZ.Ymc1XoKcoC62jyqWunxJqDu268dvqWuXYKaYXgKbg3.G3.31tsaaLUXq.aI5YlYl3Idhm.+ve3ODO8S+zX5Se53m9S+oXpScpWUaNXWINzgND16d2KTqVMl6bmq3R5bjrFZnArgMrATWc0gzSOcwp04YNyYtjSlxKkt6ta7Ye1mgW8UeUzQGcHNmL1zl1j3RP2sa2PqVsXNyYNXQKZQXxSdxH3fCFtc6F6bm6Du7K+xnwFaDlLYBM1XiXW6ZWHhHh.SZRSB..Nc5DkVZoXUqZUn0VaUb4s+Vu0aA850iLxHCLyYNSricrCr7kubnRkJnToRDZnghUu5UiEsnEg3iOdHSlLL6YOabnCcHrqcsK7m9S+Ije94ikrjkfCcnCg0rl0fd5oGjbxICOd7fMrgMfHiLRjSN4f7xKO7i9Q+H7JuxqfMtwMhssssA850izSOcr7kubL4IOYw50wTlxTvt10tvgNzgfZ0pgFMZfQiFwpV0pvxV1xPrwF6n1kmOCbPWw762OJszRwe+u+2gb4xgACFFyG3nolZBG3.G.m7jmDtb4BqcsqEwEWbXEqXEWyea+FZnAr0stUbpScJzSO8f63Ntig8.G986GMzPC3Mey2DBBBH0TSESe5SGaYKaAM1XiHojRZLUsqHv0a61sid5oGXvfAzRKsf+0+0+UrzktTbO2y8.KVrHYqPoRKsT79u+6CCFL.SlLMpHvQ6s2N17l2LN1wNFt268dQ5omNZqs1PQEUDV7hW7kUEoM3fCFyadyCYjQFekWa862OTnPgXQ8JP3u.6OJ+1e6uUrtT32ueDbvAOnIMpZ0pQ5omNd9m+4gOe9DqmF.+eCETBIj.tq65tPSM0jX6xhEKHlXhAgFZnhssINwIhm8YeVr7kubHSlLjPBIf3iOd3ymOwcD1.Ga0pUKFLWud8nfBJ.VrXA0UWcvpUqPmNcHiLx.wFarPud8Ptb4H0TSE+jexOA2y8bOnkVZABBBvnQivrYyHpnhBFMZbT8pjiANnqJtc6F81auPPPXT6DX5JgWudgMa1v.CL.BO7vgYylwZVyZvjm7jwjm7jult4qGOdP+82O5pqtFQs0oGnc4xkK3zoSL4IOY3vgCbtycNLkoLkwTAN.N+M1b61M73wCBMzPwJW4Jwd26dwG+weLNwINAV5RWJl6bm6W6Rt7pUfeeJvbAXzf.SzSqVsBa1rINALO6YOKra29k07LPoRkHpnhBQFYjWz7t3BcoBfKSlLwUJxEF33R87LXv.l3Dmn3w4BetBBBHnfBBwDSLhSJZkJUdI6Uq.k17.6sRpUqVrcGVXgIFl4R09CJnfPJojBrXwBb5zIjKWt39.yEd7G23FmXaIv0nwJCg4n2nRzvJYxjA4xkCAAgQ0ItubISlLw2mQDQD3Idhm.lLYB+o+zeBUTQEWSSjx.GaAAgQTcUZfeFGXhqYxjIDQDQfpqt5qnIF3nEAtYQfa.jWd4gUtxUhUrhU.MZzf28ceWrpUsJ7Nuy6fJpnBXylsgry8E9YfQK+9zEdsxue+HpnhBVrXACLv.n95q+J5X7keOeg+r3qp29B76KA96Pe4W2W94F356W94FfJUpPvAGLBIjP9ZGBMEJT.c5zAc5zIdtuvi+WW6Ptb4PiFMHjPB4qs3cEnsDbvAOlIrA.CbPzULUpTg7xKO7zO8SiZqsV7m+y+YTRIkLlZ0a7k4wiGXvfALyYNSTe80it5pqg6ljjxmOePgBEHqrxBKe4KGO9i+33lu4aFCLv.3cdm2AqZUqBqcsqEM1XiC2M0QD74yGToREBKrvfOe9PYkU1vcShFAhANH5Jje+9gLYxvbm6bwC9fOH1291GV6ZWKprxJGyViNB7ddwKdwvpUqn1ZqcHYy5Zjr.cKdXgEFxKu7vC8POD91e6uMxKu7v.CL.1111FdwW7Ewe+u+2w4N24fa2tGlawC+LXv.ToREJt3h4RJltHbNbPzUAe97A4xkiG7AePTQEUfcu6cinhJJnWudjPBILpoawuRM0oNUHWtbTc0Uit5pqwTc26+HFLX.4kWdXhSbhn7xKG6YO6AabiaDG8nGEEVXgXgKbgH0TSEwFarPiFMC6S72qmBTqKhM1XgEKVPwEWLrZ0J2IdoAgANH5pjff.BN3fwJW4JgKWtvt10tfVsZwce22MRHgDFSdCGiFMBSlLg1ZqMzYmcdCUYdO.CFLfoO8oiTSMUjQFYf8rm8f8su8gxKubLiYLCr7kubLgILgQTyGmqWhKt3vjlzjv1111PwEWLV3BW3vcShFAYr4WCinqiRJojvy7LOCxHiLvG7Ae.96+8+NZt4lGS1kxJUpDie7iGs1Zqns1ZaL46wKWAGbv31tsaCuvK7B3e+e+eGgGd3nnhJ5F5qKZznAwDSLPiFM3fG7frZsRCB6gChFBjTRIge7O9GiUu5UiMsoMAYxjgG8QeTDVXgMla3URO8zw92+9Qc0U2fpni2nRtb4nfBJ.SYJSA1rYCgFZnWV0fhwhjKWNBMzPQLwDCN1wNF7506Mj8zCcoM15uDRzvnDSLQ7K9E+BrnEsH7ge3GhW5kdIwZqvXI4me9PqVsnvBKDm8rmc3t4LhgACFD+182HynQiH0TSEUTQEnyN6bL2m+oqdLvAQCghHhHvi7HOBl6bmKV25VGV8pWM74y2vcyZHUfBeVM0Tyf1gMIB37UuyErfE.UpTgRKszwbe9mt5w.GDMDRPP.wGe7XoKcoXZSaZ3C+vODezG8QC2MqgTBBBHwDSDd85Ec1YmC2MGZDF0pUiDSLQjc1Yi+5e8uJV8NIhANHZHlb4xwjm7jwS8TOExM2bwy+7OOV+5W+Xp+na1YmMznQCps1ZYnCZPDDDfACFPpolJ1yd1Cpu95G0Tt1IoECbPW24ymO3xkqQT6aHC0zpUKxN6rwC+vOLRM0TwpV0pv68duGra29XhfGYlYlXBSXBnlZpAm5TmZH+36wiG3xkqwrERsqm750Kb4x000BSlVsZQpolJ5omdPYkU1MD62Rz+XLvAccWftbMiLxXLYspH.c5zgbxIG78+9eejUVYgO7C+PXylswDANBMzPwrm8rgISlPe802P9wOhHh.VrXAFMZbH+XeilvCObjRJoHtykd8fFMZPFYjAl8rm8XhOuSCMtwbsaQCqLZzHVxRVBlyblyX9kLmd85Qt4lKBJnfv4N24fNc5FSDxRlLYXlyblvhEKHzPCcH+3O0oNUjTRIwJU4PfIO4IiHiLRDQDQbc6ydJTn.IlXh3Ye1mEie7iGpTo55x4kFYiANnq6zoSGxLyLGtaFW2nQiFjSN4fryN6AsiRNZWLwDij8slMa1LLa1rjbruQS7wGOhO93utdNEDDfd85wMey2700yKMxFCbPz0Aiz154Ihnq23b3fHhHhjbLvAQDQDI4XfChHhHRxw.GDQDQjjiANHhHhHIGCbPDQDQRNF3fHhHhjbLvAQDQDI4FwV3u73wC5t6tw4N24PCMz.znQCRO8zQLwDCznQCjIiYkHhHhFsXDWfid5oGTbwEi8t28ht5pK3wiGHWtbzZqsBEJTf3iOd7s9VeKjVZowJ2HQDQznDinBbzYmchctychMsoMAmNchINwIhjSNYDZngh1auc7e8e8egicrig4Mu4gzRKsgk1nOe9Pe80GBJnfFSsuXPDQDIkFwD3vue+n3hKFu268dXfAF.O9i+3XpScpH1XiU7l5EWbw3K9hu.BBBC5F8974C974CxjIaHYnVb61s3deQfyie+9Qe80G1+92ONxQNBV1xVFlvDl.znQy074iHhHZrtQLANZpolv1291QIkTBV1xVFVxRVxE8bRM0TQKszhXuK..30qWTe80iZqsVLkoLEDbvAeM0NFXfAvQO5QQ3gGNRN4jE2Vkc5zIN8oOMdgW3EvgO7gw3G+3w3F23XfChHhnKCiXBbTXgEh8su8Aa1r8UFZHiLx.gDRHCZqVtiN5.6bm6DG+3GGYjQFWysixKub7du26gYMqYAKVrH9+2gCGnlZpAUWc0vhEKHt3hCJUp7Z97QDQDcifQLAN5niNPu81Kb61M5t6tQWc0ELZz3fdNyYNyA.meq91mOeXfAF.G5PGB6e+6GojRJHjPBAd858hlLotb4BNc5Dd85EpTo5hVkK986G974CV++ydm2gEWWm4++Lyv.Lz6cDHQQHDfDfPTkDHgP8lkcbS15ws3ZhS2+xFG+3GuINY2MY85DmDmMtFau1N1pKYITEDRfDHARhdYn2KC0oxT98G9Ytw34JmxFGQ1b+77n+Pvg68bN2S46487dNuiNJ6e+6Ga1rQ3gGNN4jSBaUiJUpX4Ke47nO5iRDQDAYkUVnRkp47drZ0JyN6rXxjIjISFN6ryBVHQLlc1YwlManToRLa1LlLYB.ToRkCaazm8cXOslLYB2byMbwEWto9RhYylEJ2VsZEiFMhb4xwYmcFa1rMm+AfSN4DxkKGa1rgYylEdm1+4R9rhDRHgDtp1dEK...B.IQTPTQ7WCyaDbDarwRLwDCc0UWTRIkvRVxRXG6XG3kWdIHf3y5OEZzngpqtZ9vO7CoolZhku7kSc0UGAETPDd3giMa1PqVsnUqVFbvAoqt5hYlYFBIjPXQKZQ3u+9imd5IvmNgZO8zCuy67N79u+6y5W+5YpolhVasUBN3fwM2bCCFLf+96O6YO6AkJUNmI4Ma1L50qmIlXBFd3gYvAGD.BIjPHrvBC+82eTpTIxjICCFLfQiFwfACL5nihb4xI3fCVHOZ0pUVxRVBgFZn3hKtHHLx96XrwFiQGcTznQC80Wer3EuXhLxHwO+7CUpTgb4xwhEKXvfALXv.ZzngolZJhIlXXrwFi1ZqMbwEWHojRBylMyXiMFlLYBKVrfat4FQDQD3kWdgISln6t6lolZJrXwBQGcz3qu9JYUGIjPBIj3uJl2H3H+7ymolZJFe7w4hW7h7rO6yRKszBO5i9nrfEr.f+nfCqVsxgNzg3UdkWgFZnA7wGe38du2iCdvCx12914oe5mlImbR9nO5i3HG4HLyLyfKt3BVsZkwFaLb0UW4ttq6hG4QdDbwEWvfAC7i9Q+H9nO5ivfACTRIkvUtxUXoKcoricrC70We4Lm4LzQGcvUtxU34e9mmcricfJUpvpUqzWe8wm7IeBkTRIL4jShyN6L50qmd5oGhHhH3m7S9IjRJofyN6LW6ZWiKe4KSYkUFZzngzRKMhHhH3Lm4LLv.CPas0FAFXf7e+e+eSlYlIt4laX0pU5s2d4Tm5TbricLFXfAHnfBBiFMxHiLBVsZkm64dNJrvBwau8FMZzPYkUFkUVYzXiMB.6ZW6hSbhSv0u90YjQFgW7EeQjISFu8a+1zbyMSjQFIaaaai669tOV5RWJZzngewu3Wv69tuKQEUT7BuvKP94mujfCIjPBIj3uJl2H3.fsrksfUqVwfACTUUUwq7JuB0UWc7Vu0agO93iffCYxjwl27l4F23FL3fCxt28t4Ye1mEYxjIHB3QdjGgScpSwF23F4G7C9AjRJofb4xYe6ae77O+yya+1uM4kWdr7kubb1Ym4a7M9FTRIk..O+y+7rl0rFTpTI1rYipqtZpu954vG9vDbvASgEVnvVkzYmcx+x+x+BUTQEbW20cwi8XOFgGd3LzPCwa7FuA+q+q+qbO2y8voN0oHxHijt5pK93O9i4JW4J3t6tib4xI7vCmW9keYLa1Lemuy2gie7iSkUVIIkTR3latQmc1I+ze5Ok8su8QQEUDu4a9lDSLwfd854HG4H7XO1iwq8ZuFIkTRBaqT80WO6e+6mgGdXV3BWHs2d677O+ySYkUFOyy7LzXiMxS9jOIW9xWl5qudxM2b4QdjGQvuUb1YmIlXhAUpTwa7FuAIlXh3hKtbKocgDRHgDR7O9LuRvgBEJXcqac3pqtxq9puJexm7Ib5SeZ1vF1.+6+6+6B9MgLYxnmd5gd6sWToREQFYjDTPAI7bzqWON4jSb+2+8yi7HOBIjPBBqL2Ge7Ae7wGLYxDyLyLBu2JpnBzpUKwEWbDd3gOmmW5omNacqakhKtXhKt3vau8F4xkyzSOMuzK8RbgKbAti63N3QdjGgHiLRbxImHrvBi65ttKNzgND0UWcTe80S.AD.EUTQbxSdRZrwFImbxgG8QeTV8pWMpTohwGebBMzPmiOU.Pu81KxkKm68duWt268dIt3hCmbxIAeMwlMaLyLyfUqVAf.CLPhO93InfBB850ypW8p4we7GmvBKLBKrvvGe7gTSMUVzhVDgDRHBBer6mF.LwDSvgNzg3tu66lXhIluP+DQBIjPBIj3OEyqDb.fGd3AqZUqBu81aBLv.4PG5PbiabC9O+O+O4W8q9UDQDQfb4xo1ZqkVZoEhN5nI8zSWXhRa1rgqt5J+ze5OEmc1YBHf.vYmcFc5zQu81K0TSMLzPCQXgEFADP.BShVZokhVsZYCaXCDczQOGmJcrwFiqd0qhSN4DIjPBBNO4q8ZuFEWbwjPBIPQEUDQEUT3jSeZUpBEJvCO7f.BH.gqocqVsxHiLBCO7v3kWdwZVyZXMqYM3gGd.fvuGXN9tRpolJKbgKDEJTfe94GJTnfYlYFZqs137m+7XwhEBLv.my6dhIlfIlXBRKsz3IdhmfHhHBTnPA96u+r8sucb0UWQoRk3gGdfKt3BiLxHLzPCQTQEECMzPbpScJBO7v467c9N3gGdHI1PBIjPBI9eEy6DbHSlLb2c2Y4Ke47XO1igqt5Juxq7JbwKdQFZngHjPBAmc1YFXfAXhIlfLxHi4bqiZ+B6J5nilQFYDN9wONW8pWkd5oGFe7wQsZ0LyLyPzQGMQDQDBVSPsZ03qu9R5omNAFXfyIOM7vCS0UWMpTohbxIGjISFVrXgJpnBlXhI3QdjGgzSO843eCVrXgYlYFZs0VwlMaBBX5pqtPiFMDXfARzQGsfXCSlLQe80G0TSM3omdxxV1xvM2bC.7zSOwM2bS3tJ4pW8pzYmcxjSNI82e+X1rYRHgDvc2cW3cqQiFzoSGQEUTr3EuXAwHxjIaNG63fCNX7xKuDbjUKVrP2c2MkTRIba21sQngF5WBekkPBIjPh+Yi4EBNru8Ae1UQqRkJV7hWLEUTQ769c+NlbxIQqVsBGKTMZzfEKVHjPBYNBDLa1LpUqlO3C9.lXhIPmNcnPgBVzhVDyN6rL1XigNc5Xkqbk3t6tiUqVYxImjgGdXVvBV.AGbvy4nrZvfA5u+9oqt5hPBIDV4JWIxjIiN5nCTqVMt6t6DWbwg+96+bJSSM0TTQEUv.CL.gDRHDarwhKt3Bc1YmL93iSbwEGAGbvBo29sX5.CL.qXEqfHiLRb1YmwrYyTZokR4kWN82e+XxjIToREwFarDXfAxq7JuBxjIiDSLQAAGCLv.zUWcA.AETPegGM2fBJH7zSOwfACnWud5niN3jm7j3u+9S94m+e8eTkPBIjPBI9LbKUvg8i1ZBIj.gFZnNb+YnPgB7zSOQlLYDP.Af2d6MJTnf1auc5pqtvYmcl.CLPgITmYlY37m+776+8+d5pqtXG6XGr3EuXBJnfHrvBipppJJqrxHlXhg0t10hb4xwnQiTQEUv3iONETPA3kWdMGgO1sJhACFHgDRfnhJJ.DDN3iO9fmd5oC4cMZzvoN0ovpUqryctShN5nwlMabiabCFczQonhJR3z2.eZPq6BW3BX0pUV25VGd4kWL6ryx91293+4+4+AKVrPVYkEojRJDRHgfmd5IpUqlQFYDhHhHXIKYIB2KHW6ZWiFarQ7wGeHhHh3Kb6P7wGevM2bCc5zQO8zCiLxHzZqsxd26dmierHgDRHgDR7+FtkFi2GXfA3i+3Old6sWQ+850qm5pqNrXwBqZUqhfBJHTnPAkWd4zZqsRngFJKXAK.YxjgYylo6t6le2u62wAO3AYyadyb228cy1111H2bykniNZlXhIXngFhHiLRV7hWL1rYCc5zw9129Pud8rzktTg6lC6L7vCSyM2LpTohTSMUAmVsqt5BiFMhKt3hv1UXGylMKrML94mer28tW7xKuPsZ0Tas0hBEJbvBG5zoiVasUToREqe8qGUpTQSM0Du669tzd6sSd4kG6cu6kcricP1YmM94mebgKbAFarwHyLyT3lO0jISTSM0Pmc1IwEWbjZpo9E9MvtfCsZ0R0UWMW6ZWiDRHAxN6r+q7qpDRHgDRHgibKUvgVsZogFZfN6rSzqW+b9c50qmlZpIN5QOJd5ombG2wcf2d6M1rYiqe8qy.CL.wGe7rjkrDgK4q5qudJszRwUWck69tu64bag1c2cSc0UGZ0pk.BH.b0UWwpUqL0TSQIkTB1rYSPvwm8ThLzPCQqs1J93iOjQFYHj+rZ0pvMT5m8Dk.+w3ByniNJYmc1jZpohyN6LW5RWR3x5Jt3hS3XlZ0pUzoSGCMzPDXfARhIlHJUpjKe4KSqs1JwEWbrl0rFAmYc1YmkgFZHprxJQgBEroMsIAG6b5omlN5nCLZzHIkTR+Iut2CLv.wKu7hgGdXpolZ.fst0sJEiXjPBIjPh+lxszsTYngFRvwNc2c2I93iGEJTvTSMEs2d6Td4kSu81K24cdmje94iJUpvfACLxHifNc5vc2cGsZ0RyM2LJTnfwGebLZzHN6ryTas0hACFDtBvqs1ZolZpQvWEr6SFSM0TLzPCgb4xwrYyzVasgO93CN6ryLwDSPUUUEs0VaDTPAgb4xE1FkTRIEBJnfX5omllZpIBMzPQoRkL4jSRokVJG9vGlzRKMdfG3APgBEzSO8PYkUFiM1XjQFYfWd4ElMaFylMSe80GW9xWlwGebBJnfX7wGGu7xKzpUKlMalYlYFZu81EtiMreKn1UWcgLYxvWe8komdZg.OmZ0pwImbBmbxIzqWOt6t62zsUwO+7i.BH.lYlYPtb4jc1YSRIkzemaIHgDRHgD+ectkJ3n2d6Eu81aJojRn+96mjSNYb2c2oyN6D0pUi+96O2+8e+7XO1iIDgXsXwB95qu3u+9SKszBu+6+9DYjQRgEVHojRJjUVYQs0VK+3e7OlbxIGLXv.t4laDTPAQHgDBCN3fzd6sSIkTB6d26FmbxIhHhHPiFMbricLToREETPA3ryNS4kWNm4LmAa1rgEKVD98qbkqjTRIE1vF1.m3DmfCbfCPas0Fd3gGzSO8P6s2tfXiryNaLYxDG+3Gm5pqNb1YmY7wGm96uegqC8hKtX9vO7CwKu7BqVsxUtxUHjPBgku7kyhW7hogFZf27MeSJu7xEhyIgGd3rfEr.LZzHG8nGEUpTgd854C+vOjd5oGb0UWos1ZipqtZV25VmCa6icTpTI94meDSLwPQEUDqacq6uysBjPBIjPh+YfaoBN10t1EAETPb9yed5s2doiN5.mbxIToREaZSahcricPJojxb9a7xKu3ttq6BO7vCgsNXAKXADe7wiEKV3EdgWf8su8QGczASLwDDRHgPgEVHYjQFTe80yYO6YwpUq3qu9hat4FQGcz7LOyyv4N24XxImj.CLPhJpnX3gGF.RKszHiLxP3VL0Nt5pq7c+teWV7hWLW7hWTHu6u+9yd26dYKaYKDXfAJDvzlbxIEB9b1KixjICsZ0hACFXEqXEjUVYgBEJHf.B.4xkSAET.SN4jbtycN5qu9XxImjHiLRxImbX0qd0rzktTt3EuHvmdyf1c2cS3gGNae6aGmbxIb1YmQqVsNrkOeVFczQYlYlgryNa13F2H93iO+s9yrDRHgDRHwsVAGgDRHr6cua18t2Mf3GOVwH2bykbyM2+h+c4kWdjWd4MmelJUp3AevGjG7AePGR+ZW6Z+ByGADP.B+s2r7tb4xwau8lu2266I5yHgDRXN2iHed14N2I6bm6Tze2t10tXW6ZWB+++ROFqVrXgO4S9DZu81YG6XGjYlY9WzeuDRHgDRHwetLu3d3vN+i7sY4787tXV4n+96mqbkqvpV0pXCaXC2BxURHgDRHw+rv7JAGR7kGyLyLTSM0fRkJYEqXEXylM9U+peEd6s2rl0rl4bDckPBIjPBI9aMRBN9mDFZng34dtmCKVrvK+xuLG8nGkFarQdrG6wHojRZNwNFIjPBIjPh+Vijfi+JY7wGmqe8qid85IrvBiniNZ71auuUmsto3pqtR7wGOm4LmgW7EeQ72e+4IexmjUtxUJE14kPBIjPhuzQRvwegL6ryxUu5U4sdq2hPCMTznQCCLv.r10tV1912NgEVX2pyhhR.AD.esu1Wist0shRkJInfBhEu3EKD+UjPBIjPBI9xDIAG+EvryNKpUqlW7EeQznQCaZSahVZoEN6YOKt6t6jc1YOuUvgqt5JIkTRBmHFmbxo48N5pDRHgDR7+cPRvweAL0TSwG9geHEWbw7s+1eaxJqrXQKZQL1XiQjQFIADP.2pyhegHSlLTpT4s5rgDRHgDR7OgHI33OSLa1L81auru8sOTpTIabiaDu7xK7wGeXu6cu3omdRHgDxs5roDRHgDRHw7R9GJAGyN6rnSmN5u+9QgBEBAdrOang290PtVsZwCO7vgvFuNc5vjIS3kWdIbxLrYyFFMZDqVshKt3B50qmolZJb0UWEBXbCN3fTYkUR6s2NQGczDZnghUqVwYmclkrjkH7bzqWOiLxHL5nih+96OgDRH3ryNeS29B62DoZzngIlXBhLxHwSO8TzzawhEld5oQiFMHSlLhLxHuoWY4RHgDRHgDym3eHlsxlMazWe8Qas0lPTM0Imbh3hKNRIkTDB5aiM1XnQiFFbvAwpUqjat4h6t6NlMalwFaLFd3gomd5AkJUR94mOlMalAFX.zqWOs0Va3me9gWd4Ec1YmzTSMge94G4jSNnRkJgXlhQiFIf.BfxKubRLwDIgDR.2byMFarwn+96m96ueZpolnwFajXiMVRLwDYgKbgDWbwMGgG1yS82e+LzPCgZ0poiN5fUrhUP7wGOwGe73latID+XFd3goyN6jN6rS5t6twlMajUVYQzQGMKXAKP5XsJgDRHgDyqYdufCKVrvPCMD+te2uixKubBLv.wc2cGSlLwEu3EIojRhm3IdB7yO+3zm9zbjibDpt5p4Nuy6jzRKMb2c2Qud8b5SeZ1+92O80WerwMtQJnfBX7wGm8su8w0u90orxJi0st0Q3gGN80WeTd4kiNc5Xu6cur5UuZNzgNDkWd43jSNg2d6MG8nGEylMS3gGNCLv.TbwEyEtvEPud8DXfAhMa1nppphe6u82RpolJ+a+a+aDUTQI3CEc0UW7IexmP4kWNxjICO8zSLYxD+xe4uD2c2cd1m8YYEqXE3hKtPGczAG7fGjxJqLbxImHjPBgwGeb9C+g+.EUTQ7C+g+PbyM2jbBTIjPBIjXdKyqEbXylMld5o4W+q+07e7e7evW+q+04q+0+5DQDQfUqV4i9nOh5qudFarwHjPBA4xkywO9wQud8rjkrDg6WBmbxITqVMUTQEDbvAyhVzhPgBEBAOs268dO.n4lalBKrP9pe0uJu669tr+8uebxImHmbxgm4YdFpqt5Ptb47pu5qh6t6Nt6t6L8zSyO9G+i4fG7fjQFYvS+zOM4me9HWtb5s2d4tu66lCbfCvcdm2IAETPnPgBlbxI4cdm2g24cdGxHiL36+8+9jRJovTSMEu8a+17C+g+PN3AOHwDSLHWtb94+7eNEWbwTXgExS8TOEojRJzPCMv8bO2Cuwa7F7TO0Sgqt5pCaejDRHgDRHw7ElWK3vpUqLxHivq9puJlMalssssg+96O1rYCEJTPFYjAKYIKgniNZ7zSOYYKaY3u+9yvCOLojRJ3pqtBffuXnRkJhN5nIszRCYxjgGd3A4jSNHSlLhHhH3Ydlmg0rl0fGd3A2+8e+rksrE70WewlMaL4jSxjSNIojRJBBG.X5omlfBJHt+6+9Ym6bmrxUtRg7tUqVwCO7.YxjgYylAfIlXBAAJ4kWd7M9FeCgHhqat4FacqakpqtZxKu7PkJU7a9M+FNwINAETPA7zO8SyRVxRvpUqnPgB70WeowFajt5pKBLv.kDbHgDRHgDyaYdsfC3SsNQ.AD.iO937zO8Sy8bO2C20ccWDYjQxBW3BA9zi6Yu81KevG7ALxHiv5V25HpnhRXBXqVsxfCNH5zoiXiMVg6hBc5zQkUVIlMalMu4MSpolpvEgUPAEDAETP.P6s2Nm8rmE4xkS1Ym8bxegGd378+9ee.PgBEX0pUznQC23F2fCe3CSUUUEt5pqDarwhKt3Bm6bmixJqLhHhHX26d2BhMr+2GUTQwq9puJJTnfpppJN5QOJN6ryjYlYhu95KCN3f.e5UUtFMZDJeRHgDRHgDymYdsfC4xkSngFJ+1e6uku1W6qQKszBu3K9hboKcId3G9gIu7xCO8zS.PiFMTYkUhRkJYKaYK3pqtJ3SCCO7vze+8iRkJIf.BPPHhQiFo81aG.V3BW3b9ar6DlVsZkt6taN+4OOd6s2TTQEMGekPtb4L8zSy0t10n5pqlN6rSFarwPqVszVaswTSMEIlXhDRHgfMa13rm8rzYmcxt10tHgDRXNVkPlLYHSlLgsB5xW9xL3fChQiF4se62l8su8ID0WMXv.SO8zDarwRPAEjjSiJgDRHgDyqYdsfC6S9lQFYv69tuKO+y+7b5SeZN4IOI80We7DOwSvse62Nt4lanWud5u+9wCO7f0u90OmaRyqcsqQ6s2N93iODbvAiLYxvlManUqVtxUtBJTnfjRJIgsf4yhNc5niN5fN5nCRJojH8zSeNBNJojR3Mey2jVasUBKrvHiLxfa+1ucLa1L+7e9Om1auc15V2Jd4kWTQEUvktzkXlYlgHiLxuvHzpMa135W+5XznQdfG3AnnhJxgKsKYxjgat4FQEUTRGOVIjPBIjXdMy6mkRlLYnRkJRJoj3EdgWfzRKMdu268n1ZqkCbfCPzQGM4latnUqVznQCAGbvDd3gKrheKVrPUUUEc1YmjVZoQ7wGOvmFt1qqt5ns1ZiPCMTV7hWrnAwrIlXB5omd.f3hKt4Df1d8W+048e+2GCFLvV25VofBJfvCObBHf.n0VakgFZH7wGe3Nti6.2byM5u+9YxImjvCObhJpnvCO73lVtMXv.CO7vnToRRLwDIyLyzAqXHWtbjKWtfkQjPBIjPBIlux7VAGiN5nb8qecBHf.XYKaYHSlLRJojvau8lVZoE5u+9YzQGkIlXBlbxIQsZ0nWudBO7vwEWbQXBXsZ0RSM0DlLYhksrkwhW7hEd9m9zmFylMy5W+5wO+7SzskPiFMzUWcg6t6NKdwKVHMiN5nru8sOZt4l4Iexmj68duWBKrvD7iC850yfCNHAFXfDarwhRkJwjISBNRpXWJYVrXgImbR71auYpolhYlYFjISFt5pqNX8ECFLvPCMDgDRHRV2PBIjPBIl2y71M9u2d6k24cdGN9wO9b941rYCc5zgqt5JImbxDWbwgFMZn4laFqVsh2d6svp9aqs13.G3.zPCMPHgDBIjPB3qu9B7oVtn5pqFUpTw8bO2CpToRTqDzau8Rs0VK95qujSN4H7yas0VQsZ0HWtbRJojHxHiDEJTfVsZo1ZqkhKtXzpUKAETPBW3WAETP3omdJDgYmYlY.9i20HG5PGhCcnCgQiFwM2bCu7xKrXwByLyLXznQf+3I24BW3BTVYkgEKV9x5SfDRHgDRHweyXd6RisOws8aeSkJUhd85ohJpfN5nCJnfBX26d2rnEsHFXfAPkJUXwhEZs0V48e+2GYxjQ6s2N0UWcLzPCQ3gGtfUAlbxI4Tm5TzQGcH7tFYjQH3fCVvZAiN5nzVaswoN0onkVZgvBKLFYjQn2d6kvCObTnPAt3hKL5nixINwIX1YmEWbwEFd3gYfAFfVZoELa1LyN6rTZokRFYjAKcoKkBJn.1+92OG8nGEkJURLwDCFLXflatY5s2dI6ryF4xkiJUpH6ryllatYN9wOtvQ2clYlgN5nCzoSGomd5RGEVIjPBIj3eHXdqfC+82egIbO3AOHN6ryXwhEFYjQnfBJfctycR5omNt3hKDXfAxpW8p4JW4JL7vCyG9geHAGbvrvEtPRHgDPud8HSlLzoSG80Weze+8SyM2LIlXhnToRt10tFQFYj3u+9KH3XrwFiqcsqwniNJokVZ3omdR80WOQGczDd3gSrwFKacqakJqrRt10tFSO8zDXfAhRkJIpnhhBKrPFe7wwau8lZqsVRN4jIxHij8rm8fEKVn5pqlicriwBW3BwYmcFa1rQN4jCae6aWvgW25V2pvQr8HG4HBBcTnPA4latje94KE8WkPBIjPh+gf4sBNVvBV.OwS7DzTSMw.CL..3kWdQ3gGtvE7kcb2c2Iqrxhe3O7GRiM1H5zoi3hKNxKu7PiFMTPAEfVsZwGe7Ae7wGTpTI6d26Fmc1YjKWNlLYB+82+4Xs.u7xKRN4jEDDXeqKrGQX8yO+3we7Gm0u90iZ0pwlMaDP.APLwDCwEWbX1rYhO93Qud8BuW4xkyxW9xwCO7fZqsVFXfADN5uKYIKQvgVsSJojBO8S+zTas0R2c2M.DVXgQhIlHwFareoV+KgDRHgDR72Rl2J3vM2biDSLQRLwD+yJ8d4kWjat4Rt4l6b94d5omDUTQ4P5W1xV1W3yKzPCkPCMzuvzDYjQRjQFIETPAh96+74E6Darw9msfA6uCIjPBIjPh+Ql4sNMpDRHgDRHgD+eGjDbHgDRHgDRHwW5HI3Ph+h4ydQiISlr+o3ZU+yWNE6Rh6uEO64KWha1OEV14eVbN4Oa4zUWc8uqsss+s+eT5OY+39CH3L6RHwWDy67gCa1rwniNJc1YmXznw+goy2+LgMa1ns1ZC850C7oA2txKu7aw4pubogFZfQFYDg6AlKcoK8mzGe9yk5pqNznQClMalAFX.Ju7xukK5vhEKTSM0fISlvrYyzbyMyktzk9+zBOlZponkVZA3SuX8Ju7xmysV7WlnVsZzoSG1rYiFarw+gn+TKszBSM0T.eZvjr5pqV3+Kw+bfMa1vImbh3hKNgCFwWDxrYOZfMOgYmcVNwINAuvK7BLxHibKefWIbDa1rwLyLCSN4j.epC65kWdcKNW8kKFMZjImbRzoSGJUpjfBJn+lM4qd85YxImDSlLg6t6N94me2xa2aylMLXv.iN5nXylM70WewCO73Vd95KSrXwhPHRPgBEB2hu+8nLO8zSyTSMExjICu81agnV87YLZzHZznAiFMh6t6Nd6s23ryNeqNaIweGwlMa3t6ty+0+0+Eqd0q9Ookem2YgC3SWoQGczAiM1X2pyJR7mAZznAMZzbqNa72Mlc1You956Kkm8zSOMSO8zeo7r+eCiM1X+SU+QKVr7k123+TLxHivHiLxsj28esnUqVzpU6s5rgD2BvUWcEc5z8mUZm2I3Ptb4rjkrDdxm7IQqVsNr5BkJUxINwIDhMJgGd3NGW3n...f.PRDEDUHlQZb1Ym4.G3.XxjIxN6rEt+L9rXe+RmZpo38du2ist0sRHgDhnAIMylMSas0Fm6bmi8t28JZjk0dZaqs137m+7jYlYRhIlnn4OkJURWc0E0Vas3iO9PVYkknoyImbhwGebt7kuLt3hKjc1YKZrSQoRkL5niRokVJKZQKhkrjkH5dpJWtbTpTIe3G9gHWtbxJqrHnfBRzzYylMN1wNFN4jSjWd4gat4lnoynQiTWc0QCMz.20ccWh9dUnPA5zoiqcsqQyM2Lae6aGe7wGQqCUnPAW+5Wm5qudVxRVBKe4KGqVsJZYthJpfgGdXRHgDHlXhQz5PWbwEtwMtAW8pWkksrkQhIlnnqZ0ImbhN5nCN1wNFEVXgDczQKZcsb4xwhEK7we7GSHgDBYjQFh1dPgBELzPCwINwIHgDRfLxHCQyeJTnfomdZpu95YrwFihJpHQMMoBEJvnQiTYkUxzSOM4me92zUT3jSNQokVJ5zoijSNYBMzPuo0MG+3GGkJUxRW5RwO+7ygzHSlLTpTIszRKb7ieb13F2HQEUTh1OwpUqzYmcxwO9wYO6YO3omdJZ9Stb4zSO8vwO9wIqrxhjSNYGxexjICmbxIZt4loxJqjEtvE9E1Oo+96mpppJTpTIqcsq8l1Ooqt5hJpnBhJpnH0TS8l1OwhEK7du26QjQFIolZphZEO6ig7lu4aRvAGL4jSNhVlsOFRc0UGUWc0bW20ccSayLwDSPUUUECO7v7U9JeEQaKX+81ZqsRiM1HImbxDUTQcSGqo5pqld6sWhO93I1Xi8lNlY80WOszRKDarwJD2o973hKtfZ0poxJqjLxHChHhHDs+j83J0q+5uNwDSLjd5oKZ.qTtb4LwDSvQNxQHkTRgktzkJZY1ImbhQGcTgHt8se62tn4OmbxIznQCW9xWlYlYF1xV1xM0xKxjIiye9yyDSLAomd5hNehceqY+6e+nRkJRO8zIv.CTz5PWc0UNyYNCczQGje94SDQDgnuSYxjQO8zCG6XGicu6ceSspoLYxXjQFgCe3CSgEVHQFYjNjN6Q+7FZnAt7kuL4me9rnEsnaZagAGbPpqt5vImb5ld0MnToR5omdnlZpgfBJHRKsztoV5yc2cm3iO9+r7gm4kBNhO934AevGTz3DR4kWNSLwDDd3gypV0pHxHizgJVa1rwUtxUXvAGjvCObJpnhHrvBygmkEKVXfAFfhKtXtsa613AevGjvBKLGpXMYxDc1Ym.P3gGNO4S9j2zFvc1Ym3jSNQvAGLadyalktzkJ5Gd0pUSEUTAAFXfjd5oSd4kmnoSiFMTd4kiRkJYYKaYje94KZmwAGbPJojRvEWbgBJn.RIkTDMc1EQjat4RrwFKqcsqUTwXyLyLTVYkQZokFokVZTXgEJpYd0oSGM0TSX0pUxLyL4AdfGPz263iONW+5WGKVrPVYkE6YO64lFsbas0VQtb4DWbwQ94mOolZphV2biabCg3NypV0pHt3hSzz0UWcgUqVIhHhfhJpHRIkTbHMVsZkIlXBNvAN.21scabu268xhVzhDsrL8zSyYO6YIu7xi7yOexN6rQkJUNjtAGbPN6YOKaYKagBKrPV4JWonk2wFaLpolZvYmclErfEv1291Esy8TSMEW8pWEylMSzQGMaaaa6lF39tzktD5zoivCObxKu7toBNN4IOIqbkqjktzkRlYl4btP8riYylowFaDCFLvsca2F2+8e+rvEtPQ6mzd6syYNyY39tu6iG+we7a52395qON0oNE6d26lssssQxImrCoQlLYzXiMhEKVDlLO2byUzxw3iONW7hWDUpTQhIlHadyaVzucCMzPb1ydV7xKuXUqZUrxUtxa5D5G4HGgMrgMPVYkEYlYlyIRQaGiFMx4O+4I+7ymLyLSJnfBDMc50qmVZoELZzHImbx7fO3CJpfiolZJpolZ.ffBJH16d26Mchn5qud.HgDRfhJpHVvBVfn0MW6ZWCSlLQFYjA4kWdDe7wKZ55omdDF+cUqZUrzktTGRiUqVQsZ0XxjIhHhHXyadyhdOGYeaWO1wNFEUTQrl0rFxN6rEUL1niNJm8rmkMu4My1111HwDSTzIuznQCUUUUHSlLhLxH4du260gz.P+82OW8pWE3Su.Iui63Nto8StxUtBFMZj.BH.AABhI33zm9zje94yRVxRH2bykfBJHGRmc+dZzQGkUtxUxN24NYAKXAN7NMYxDc2c2bxSdRt669t4gdnGRz9cvm1d8jm7jb629sKDfP+7sWkISFszRKHSlLVzhVD6XG63lt3qd5oGt7kuLd6s2jbxIS94munu2AGbPN+4OO94mejYlYRVYkknoCfye9y+mc.DcdmfCYxjIDMU+7TVYkQmc1IYkUVrhUrBhN5nmyptsYyFFMZjyctygZ0pElrZQKZQNr57omdZgUkavfAdjG4QH0TS0gINlZponwFaj1aucBIjPXSaZSr3EuXGFDvhEKnVsZ5niNvWe8ka61tMhM1XcXvG6qxokVZAmbxIV25VGYlYlhZkgd6sW5niNX5omlUspUwpV0pbvQEsZ0JczQGzXiMhd85YyadyjYlY5vJUsXwBSLwDTQEUPWc0EaXCafTSMUhJpnbnLO93iS80WO8zSOje94yZW6ZIhHhvAeVXhIlfd6sW5t6tIt3hiMtwMRLwDiC0MCLv.TWc0wfCNHIlXhrt0sNhKt3bXPE6VJQsZ0Dd3gyxW9xYIKYIhtp6JqrRTqVMwFarrhUrBRHgDbXvLqVsRyM2LMzPC3u+9y5W+5Y4Ke4BAvO6nWudZrwF4F23F3gGdvC+vOLolZpNzFb1YmkAGbPZpolX3gGlsu8sSt4l6bhAO1o6t6l1ZqMjISF268dujRJoH5pX5t6toqt5hQGcTRLwDYiabihdQuoVsZZu81YvAGjTSMUV25VmnCzCH7Md4Ke4jUVYQzQG8b9Fauexms+TN4jCKXAKvAKlLyLyPUUUEM1Xi3s2dyN24NEstY5omllZpIZs0VwGe7gG3Ad.RHgDbndwhEKzc2ciZ0pwM2biu5W8qR7wGOd6s2yotwrYyzTSMgZ0pwO+7iMu4MShIlHAFXfNTdaokVn0VaEylMSgEVHYkUVhtxxN5nCZpolvImbhssssQFYjgCOOKVrvzSOsfkyty67NYYKaYDP.ALmEYXwhEFarw3F23FzWe8wcdm2IolZpDd3g6vhQFczQo0VakN6rShN5nYqacqh19e3gGlFarQFarwHyLyjUspUQLwDiCkiolZJg5l.BH.VyZVCKcoK0gw3zpUKW6ZWC0pUyBVvBDr3pXS52byMSSM0Dd6s2rhUrBV9xWtCVfznQiBVdTkJUrgMrARIkTbnsfd85oqt5h5pqNFYjQ39u+6mjSNYBN3fcXLj96ueAAL2y8bOjVZogWd4kCSp1e+8S2c2MSO8zBhWVzhVjCkiN6rS5pqtX5omlbxIGV0pVknoa5omlqe8qSWc0EolZpjYlYJZ+DKVrPYkUF82e+rwMtQRKszHzPCUzn2cUUUEMzPCjbxIyJW4JIgDRvg5lIlXBAq7ZOvgtzktTG52YuNrkVZA4xkyC8PODImbx3pqtNm9IFLXf1ZqM5pqtHhHhfBJn.V3BWnnyeZedG6V8e0qd0htXyabiaPyM2L.B8m978SrZ0J5zoiJpnB5t6tIszRSTANedl2I33yiMa1vjISTe80SwEWLQGczjc1YSTQE0b5Xa1rYlbxIo1ZqkidzixxV1xHmbxgHiLRGF.vdjhs7xKGylMSQEUjPbY4yxTSME0VasboKcILa1LqcsqkjRJIGxiFMZjN6rSJszRY7wGm0rl0vxV1xbXv1omdZZqs13zm9zL6ryR5omNKaYKSTwF1s.RWc0kfoj+7hMLa1Lc0UWTbwEyvCOLokVZrhUrBGlfd1YmkgFZHtxUtBkTRIjc1YSd4kmCN93ryNKiN5nTc0UyUtxUH4jSlbyMWgHg6mkQFYDpolZ3F23FnPgBVyZVCwEWbNTNFbvAo7xKmVZoEBLv.I6rylDRHAGRmFMZnkVZgyctygSN4DqZUqhTRIEGDTNyLyPas0FEWbw3s2dKzw9ya8kYmcVZu8143G+3nSmNxM2bIszRyAAfyLyLTWc0w4O+4YrwFisrksvJVwJbPD1LyLCc1Ymb0qdUpqt5H6rylbyMWBHf.lSciEKVn+96mxJqL5pqtH6rylLxHCQG.nu95iKbgKP6s2NQDQDjYlYJpXid5oGJojRn6t6lErfEPd4kmChMrYyFSO8zzZqsxoN0oHrvBiryNaV3BW3bZWawhElZpo3F23FbhSbBRM0TI6rylHhHBGZ+O8zSS0UWMm9zmF+82exM2bEstQiFMTas0RM0TCFMZ7l1OQqVszSO8PEUTA82e+rl0rFRKszDseR6s2Nm+7mGylMyZVyZHojRRz5vFarQN6YOKCO7vrzktTxN6rI7vCeNowhEKzRKsHLwQ5omNqbkqj.BHf4jNylMyHiLBW8pWkyctyQVYkEYkUVNHP0fACzWe8ILFhcwA94meyosf8H67ktzk3pW8p3qu9RAETfns+Gd3g4RW5RTWc0QPAEDqZUqRzai3wGebt10tFW9xWFmc1YV8pWsnhMld5oolZpgSe5SOm9ce95PKVrPSM0Dm8rmkImbRxLyLIkTRwAwF50qm5qudNwINAN6ryrpUsJRN4jc34oSmNZs0VorxJid5oGJnfBH2byEO7vi4HhvfACLv.CPkUVIM2byjUVYwJW4Juo8St3EuHs0VaDYjQJZ6e3SGy77m+7L7vCSrwFKqbkqTTwF82e+B84CO7vImbxgEsnEMm1gVrXAMZzPSM0Dm3DmfjSNYxImbH3fC1AwP5zoiqe8qyIO4IIf.BPvJRedQIiM1XTUUUwktzkvEWbgBKrPRIkTbn8u85vKbgKv.CL.EVXgjZpo5fXsYlYFZokV3BW3BXxjIV6ZWqnVJzlMaBiKnUqVV5RWJokVZhJ1v9Xq5zoiksrkIpnb68St10tFkTRIBBx+y4zbMuVvgUqVQud8zau8x68duGKbgKjMsoMQngF5bJbVrXgImbRpolZ3nG8njTRIwl27lE7xb6XylMzqWuvfs96u+je94Sd4kmCua6q58RW5RXxjIJrvBIiLxvgzYxjI5omd3Lm4LnQiFxO+7E07SFLXfFZnAN9wONN6ryr10tVQmP0pUqL4jSxQO5Qo2d6UXvrfCN3477La1LCMzPTbwEiZ0ponhJRz8O1diiKe4KyEtvEH8zSmctyc5vjK1EkbwKdQt7kuLokVZricrCGF.vtx1JqrRt3EuHAFXfTXgEJZC8YlYFpnhJ3F23FrvEtPV6ZWqnlXTmNcTSM0vYO6YwCO7f7yOeA07e12qQiFowFajO3C9.BKrvDrTxmWPoYylYvAGjibjivvCOLacqakzRKMGJKFMZjVasU9jO4SPgBETXgER1YmsCcr+raUPe80GYkUVr0stUGduyN6rL1XiQokVJs0VajSN4vZVyZD8zrL4jSRokVJM2byjPBIvpW8pmyDk1WsvDSLAm9zmld5oGV7hWL4kWdNTGZ0pUld5oo1ZqkO9i+XV3BWHaXCavg8V2tXiZqsV1291GojRJricrCGZyX+DpzXiMRwEWLAFXfrksrEhIlXlyDp1OhvW+5Wmyd1yhat4FabiajTSMUGJu50qWvGnrGeiDqem8HmbwEWLJUpjhJpHV9xWtC4OqVshFMZ3i+3OFCFLPZokFYmc1Nr0oVrXgQGcT9vO7CQqVsje94SN4jiChHrOASUUUEm9zmlUrhUvl1zlD0JW81aubtycNZngFHszRisrksf6t69bFSxpUqL0TSQ4kWNW7hWjXhIFAwAedraEoZpoFBKrvXsqcshNQod854ZW6ZbgKbAb2c2Elv5yh8wLqu954Lm4L3iO9PQEUDwFarN7sa1YmkgGdXd+2+8EV30JVwJbvWULYxjfuMAvF23FIwDSzg1+1SWYkUFCLv.r5UuZ1xV1hCkCCFLP2c2Mm6bmiN6rSxKu7Xcqach1OYpolhRJoDZngFHwDSj7yOeQ6mL93iyQO5QY3gGVPnnXqJelYlgRKsTtxUtBQDQDr90udGrJq84SprxJ4HG4Hr7kub1zl1jCa6g8EC2ZqsxgO7gIf.Bfsu8sSjQF4bl2w9XlW8pWkSdxSRjQFIqZUqhUrhU3P4Uud8nVsZJu7xYjQFQXaaEqNr0Vakyd1yxryNKqacqizRKMGxeVsZkwFaLN7gOLFLXfryNaRO8zmifR6VxYhIlfidzihNc5HyLyjLxHCGJylMalQGcTJu7x4zm9zrxUtR1zl1jC8mtYLuUvg8A8Zpoln3hKFSlLwse62NAGbvyowg8U8VWc0QYkUFd5om7XO1iAfClu198IPYkUFN4jSroMsoa5942PCMv4O+4wfACrl0rFQEaX0pUgNN8zSOr5UuZGFD0dGhlatYJojRPmNcrsssMRO8zcHc1m33.G3.zTSMQpolpfp5O+6UiFMTbwESc0UGqYMqQXUDe9m4DSLA0TSMbkqbEVvBV.228cehVWOv.CvEu3Eo5pqlfCNX1912tnq1PmNcb4KeYpnhJvEWbgbyMWQEaXwhEtxUthvyytI6Eqtot5piKbgKfYylEcBK6CN1QGcvoO8ownQir8sucQm.zlMaL1XiwINwIPsZ0r0stUVwJVgCq.zhEKzUWcQokVJZ0pkcsqcI5Df1rYid6sWprxJou95ijSNYQcVMqVsxPCMDW3BWfFZnARIkTXcqachtWzyN6rTVYkwMtwMXwKdwrpUsJGVUt8x7wN1wnt5pibxIGV8pWsCChZWD8ku7korxJiYmcV1912tChMraAD6qJwCO7f669tOQc5TKVrP6s2NkTRInPgB18t2sne6LYxDW6ZWixJqLrZ0JYmc1hJ1vpUqzXiMxEtvEn2d6kryNaQi+P1rYSXUpSN4jr8sucQEaXurb3CeX5u+9YyadyjWd4MmA89ro6zm9zzYmcJHJ+yO3nMa1XxImTvhEgFZnbm24c5PciMa1XngFhJqrRZpolHlXh4l1eRud8Tc0UyUu5UI3fClst0s5f0qrOPeUUUEUVYk3qu9Rt4lqChMr2OowFajKdwKhb4xEVvxmOcyN6rTc0UyYNyYvYmcla61tMhN5nEMc1cZw96ue1912Nomd5NH1vhEKzau8xoN0oXpolh68duWRN4jcncsMa1n+96mKcoKQe80G4jSNhJ1vlMazd6syEtvEnkVZgDSLQ1zl1jCqN1lMaX1rYpnhJnt5pinhJJQ6m.e5BGN4IOIpUqVvRIh0OwjISBhM71auYW6ZWhV2nSmNps1ZorxJCUpTwccW2kCV7w92tt6taN8oOMVrXga+1uchLxHmSYw97X23F2fJpnB7xKuD1RsOOVsZkVasUJszRQiFMjUVYwF23FEMc16mL0TSIp+gYu8+LyLCm3Dmf96uetsa61HiLxXNsqsWNFczQ4fG7fzQGcvt28tEcAZ1mOojRJgpqtZBJnfX26d2+EckHLu8V0xtSVchSbBJojR3G7C9ADXfA5fHB850KXRPsZ0x+x+x+hn2Vi1Olam8rmkIlXBdpm5oDchR6aSwwN1wniN5frxJKQmHB9TSyctycNtzktDYlYlTXgE5PZrOQzm7IeBc2c2rm8rma5fxSM0Tb4KeYd8W+0Y8qe87U9JeEQubolYlY3JW4Jr+8ueRO8zYG6XGh5PmZ0pk5pqNJszRwc2cmu1W6qIZ4XhIlfKcoKw4N24H3fClu025aIZiHSlLQyM2LG3.GPv2DDSkt8KFrCbfCfWd4EaXCaPTyCa0pU5qu93vG9vnSmNdfG3ADMn5Y2ocO4IOIc0UW7bO2y4vJ1fO8a2vCOLW3BWfibjivl27lY8qe8NrE.1rYigGdXN24NGM1Xir28tWxImbDstYrwFiKdwKRqs1J4kWdrm8rGQSmcqCYea+1wN1gnhMrO469129XgKbgrwMtQQEaXznQt10tFu0a8VjTRIwpW8pcXK.f+not2291G81au7bO2yQTQEkn8SZokVn3hKlAGbPdtm64D0wmsukPm6bmit6tadzG8QEcadLYxDs0VabjibDFe7w4dtm6gUu5UKZcyfCNHm3Dmf5qudJnfBXm6bmhltgGdXJt3hEFzK6ryVz5uomdZt7kuLG7fGjG5gdHJpnhbXBA6qXqppphCdvCx8e+2O6bm6TzSFk88y+zm9zHWtb9te2uqn0MSN4jTUUUwUu5UIwDSTXgMedzpUKM1XiblybF72e+4we7GWTeJwtUj1+92OJTnfMrgMH51s.epeP8IexmvTSMEaYKaQzEJM6ryhZ0pY+6e+nVsZtm64d9BcZwyblyvG+weLO9i+3rwMtQG5ya+RXrzRKkJqrRtu669H0TS8l5T31EGr7kub17l2rnkiQFYDJojRnxJqjzRKM16d2qnOO6sqO5QOJwFarb629s6PcncgSW+5Wm8u+8yF23FYaaaahtE0lLYhlZpId228cIzPCkG8QeTQ2VFsZ0R80WOm5TmB.9I+jehnNArISln2d6Uv5KO0S8TrfEr.QcjZ6KTBfu427adSCbm8zSObxSdRps1ZIojRhhJpHQSWu81Km7jmjVasUV6ZW6McgR50qmqd0qxgO7gYG6XGNH1.9iV.+BW3B7Fuwavl1zlH8zS2g4SrYylv7SG5PGBu7xK9A+fevM8TncyXdmEN9r9rwa8VuExjIiewu3WPfAFnCCfawhEZrwF4nG8nXylM95e8utnmV.qVsxvCOLe7G+wnQiFdnG5gHnfBRTu+dfAFfW5kdIToRE6YO6gjRJIQ6PLyLyvu829aY3gGlctycRd4kmClDztZ4e+u+2S2c2M6cu6k3hKNGdd1EabwKdQdkW4U3m7S9IjRJofmd5oC4QiFMRM0TCezG8Q7U+peUxImblyULrcLXv.0TSMbpScJ70WeYu6cuh5Iw50qmScpSQUUUE4jSNrgMrAQMsocSG9AevGvRVxRXyadyN3wzeVSy8S+o+TRN4jYSaZSNn52dYViFM7a9M+FzqWO6YO6QziZoEKVnmd5gW60dMFXfA34dtmC+7yOGRm8sQ43G+3b7ieb9leyuIokVZnToRGpazpUKm3Dmf5pqNd3G9gE8aB7oVy4vG9vTas0RVYkE4me9hJhXpolh2+8eeZngFnvBKjhJpHQE4X1rYznQCuzK8Rr5UuZV+5WOADP.NXIB6aqvy9rOKe6u82lzRKM7wGebnbL6ryRiM1Hu7K+xrrksLtsa61DstwnQizPCMPwEWLt3hK7+6+2+OQOgD1MW5QNxQPsZ07DOwS3fEEs+dUqVMu8a+13qu9J5J6ryjSNIuy67NXxjIty67NIszRyg5P6l598e+2G0pUyW4q7UHojR5lltpppJdoW5k3Ydlmgkrjk3P6e6aORokVJu9q+57TO0SIbzkEqt9hW7h7we7GSbwEG6YO6Qz9IFLXfye9yS4kWNIjPBricrCQSmISl35W+579u+6SzQGM2wcbGhtRQKVrP80WO+re1OiLyLS1xV1BKXAK3lN1vq8ZuFSM0Tb629sS7wGuns+6pqt3W7K9E3me9w26688D8DMXOc6ae6iabiavu7W9KI93iGWbwEGpC0pUqf3fuw23aHpyxCeZ+jhKtXtxUtBYjQFTTQEIZ+jomdZAgw6XG6fbxIGGpCs+MolZpgW9keYJnfBXCaXC3qu95vVVYznQ5t6t4G8i9Q7vO7CSVYkEt6t6hZY61auc9Y+reF4jSNrqcsKGbfa6y6TSM0va+1uMAFXf7TO0S4P8h8uws2d6ru8sOZu814a8s9VDZngJ56syN6jO5i9HTnPA228ce3kWdcSOAZ+5e8ulYmcVti63NXEqXEhZ0mYlYFd4W9kwnQirqcsKRKszDsMiVsZ45W+57xu7Kyi9nOJolZpNHh1hEKLxHivwO9w4PG5P7q9U+JhO93QkJUh1OozRKk23MdCti63NnfBJPzwV+Sw7NAG1ME+e3O7GHv.CjUu5UKppeqVsxfCNHM1Xi3pqtdS8O.qVsxniNJ6e+6GMZzPQEUzMsiiYyl4S9jOgfCNXAmV7yNXgcSaZwhE98+9eufi5jQFYHpYZ0oSGUWc0z8++16KMn1LK6reb6EL1l1Nt8NdALfY0rChcDRrHVLFCsArca2scamkopISlJSxORxex+lToyjZRktqzKoic28zd7NX.CH.AZGARH.Cl8UypYGDHIjD78CW26Pq2q5jueLU0IkN+9Vuftuumy8bOmmyyynihryNaDP.Av7fnkVZInVsZTVYkgBKrPDWbwwL4kM2bSzbyMim8rmg3iOdjTRIwrTearwFPlLYzjMDIRDywBdiM1.0VasPud8zdLaeEUH+c0oSGdzidDN5QOJDJTH7zSO4rNxj57a9M+F3omdhTSMU3omdx4vMRaO91u8awbyMGJnfBnena+5HfXE.n3hKlSaTH+NH.Dsu95CEUTQHlXhg4yaiM1.JUpDSLwDHszRiCVQHlMa1PokVJ5omdPHgDBhIlXb3d8+9+9+Nlc1YQBIj.hO93cX4b6s2dwu829agu95K3ymOyD1H258y9rOC4latHgDRfICeRZ622+8eOBJnfP1YmMyw3ciM1.szRKn7xKG6bm6D4jSNbd2QV2HiLBJszRosove+8myeWR0qd7ieLbyM2PFYjAmxCuU+j+4+4+YXxjIjVZogvBKLl6gFLX.+q+q+qX5oml9Ng0MrHU162+6+8nvBKD73wiSqxHsGr5pqFM0TSnvBKj1tQ6ChZ0pUTas0hJqrRDXfARmFKV6MxjICM1Xi3Tm5TfOe9Lq1zFarAZs0VQUUUENwINARKszXdqbRqidzidDBMzPQFYjA7zSO+A97j0s7xKie8u9WS4SB+82el+lGczQw29seKcRh70We4b.CoEv0UWcXF718i8...H.jDQAQkYlgNAN1aat4lXpolBkWd43Uu5Uz1bxJ4.a1rgm8rmgVZoEDXfAh3iOdl8yeiM1.e4W9kXrwFCwEWbH5nilIlHrZ0JppppfXwhoiiOK+DBNx9pu5qfPgBosTikex.CL.9xu7Kg+96OxN6rwINwI37aYiM1.pToBO9wOFm8rm0gbnwFarAzqWOpt5poI.xBfzat4lXngFBO6YOCuy67NPjHQLiYB7V+jO8S+TricrCHPf.DQDQv77j0Wec7EewWfsu8sizSOcDRHgvrpTDJM392+9HqrxBwEWbLW2LyLCjHQBkWXhLxHY5uaylMnRkJHQhDbgKbAjbxIy77j+mX+jKgCf2RdJ94meHkTRwgkeps1ZCUUUUXyM2zgXw.3siLWokVJVZokPFYjgCI5D.fO8S+Tr7xKiKdwK5vYAe0UWE+S+S+SXkUVA4kWdHzPCkY6Glc1YQokVJZt4lQd4kGRLwDY11iYlYFHUpTnPgBviGOGdCKqVsB4xkCwhEC+7yOTTQEwDiEqu95nzRKEpToBm3Dm.omd5LacDva0GD850iyd1yhTSMUGNlkxkKmVFsryNal8ezpUqXzQGEe0W8UzJp3t6tybOb7wGG28t2ESO8znnhJBQGczLIUrIlXBTSM0ft5pKTXgEhPCMTl2hl.xPBp3yM2bYtGt5pqhRJoD7xW9RjPBI.QhD4v4G+a9luAczQGH5niFIkTRbvQCwjHQBlc1Yoi2LqQ3ckUVAUWc0PhDI3PG5P3ZW6Zvc2cmYaOH.+zWe8E29121gDLWKszBd7ieLN5QOJ9fO3CXVIBf25mHUpTryctS5X8wxTnPAjHQBVas0PpolJSLV.71.P0We8vEWbAYjQFN7aKiFMhO4S9DrxJqfKbgKfHiLRlkld4kWFUTQEX3gGF4kWdH4jSl45lat4P80WOjJUJhJpnvUu5UYh+j0WecLv.CfAFX.De7wihKtXGVwtpppJnPgBDRHgfKbgK3v2wRkJExjI6G.xPVlZ0pQIkTBNxQNBxN6rYRbVjKJ8e8e8egicrig7yOebxSdRlUhX3gGFewW7EX0UWE4me9H5nilYIrGd3gQYkUFrXwBt90uN7yO+X520We8Q6melYloC4fgIlXBTUUUQaiXVYkkC4EiG7fGfd6sWDUTQA9746P8ERlLYX5omFIjPBHgDRfYBaqs1Z3wO9wPsZ0vau8FW9xWlIQWQ.6cEUTA7yO+vG8QeDyuY..Mo7CdvChO7C+PNCb.w5pqtfd85gmd5IJnfBX1FQf2NN9hEKFVsZEYkUVNrMhSLwDnrxJihKMG42Y1rY7a+s+VrvBKfBKrPb9yedlsya0UWE26d2CiN5nzQokULyImbRTRIkfN6rSDQDQfqbkqv7alEVXAzbyMi1aucHPf.jat4x7+OBmCoRkJDQDQfhJpn+Gy4Frrexkvw1291QPAED7wGefqt5JyebjrsLZzHRJojPPAEDy0QBTr1ZqAQhDAd73wLK80Wec769c+Nze+8ihKtX3iO9vYcD5r9YO6YXzQGE2912FgDRHbF2Kf2xsBO+4OG8zSOHzPCEIlXhXO6YObbblXhIfToRQqs1JhHhHvktzkX9wFYZOjKWNN6YOKJt3hYV5PCFL.whEiFarQDXfAhLxHCbricLlAKpqt5fRkJgO93ChKt3XJRUlMal1qbxDBclybFNOORK.JszRwgO7gwUu5Uo+cselw6omdPkUVIlc1YwUtxUPngFJmR3A.zc2ciZqsVLwDSfXhIFDbvAy7fi1aucTSM0.SlLgKdwKhHhHBlqangFB0We8ns1ZCgGd3HlXhgYUjlYlYP4kWNzqWORM0TQbwEmCaSgDIRfRkJwG7Ae.7wGe3LoB.fVxRBSYdsqcMliV2pqtJZu81gXwhg6t6N9nO5i3zB.f2dPjd85QkUVINzgNDt90uNmQykXZ0pERjHAG3.G.BEJDm9zml45TqVMpolZn7SQjQFIS+jImbRTZokBqVshryNalrKHo0VO5QOBSO8z3m+y+43Lm4LLKM8TSMEd9yeNFZngve4e4eI71auY9c8PCMDpqt5Pu81KBMzPQgEVHym2ryNKTqVMFbvAoSiBK+o27l2fFZnAnWudDQDQfrxJKr28tWl6MkVZonwFaD95quH4jSlYxA1rYCkWd4PgBEvc2cmhYIV7LyfCNHd3CeHkqdXkT9RKsDZs0Vow39k+xeINwINAS+jgFZHTSM0fUVYE7QezGAO8zSN9c.u8.UwhEiEVXAHRjHle+C71jWHiYe5omNhO93Ytt27l2fRJoDzUWcgzSOcjXhIB2byMlINUZokhW9xWhKcoKA+82elwLWbwEwKdwKfb4xQpolJRN4jwgO7g4rNBChpVsZDXfAhKcoKwrMEKu7xn0VakhesO9i+X5yy901byMCEJTficrigrxJKru8sOlmmTas0BoRkhCe3CC974y7bB.Pq.x67NuCxLyLY1dPRa+d3CeHFe7wwst0sX1dPf2lrcIkTB5niNvMu4MQfAFHb0UW4r2Lv.CfRJoDL7vCCd73QmxPVOOkJUhN5nCjTRIQaOh81ryNKZngFnXVxQmO8+O1O4R3XaaaavEWbwgT1rVsZQUUUE1291GDJTHBLv.YV5vVasUTd4kC2byMjat4xrz4D04rgFZ.ZznA27l2j45LYxDFZngnHg9e3e3e.t6t6Lku5QGcTTYkUhd6sWHRjHDczQ6vfnxjICCN3fHjPBAYjQFNjE9ZrwFQSM0DNyYNCxM2bYVQkIlXBnPgBzZqsRmZkCbfCvrzgRjHAUTQE3nG8nHjPBgYIFMXv.ToREppppfmd5IsGy1+g4pqtJ5t6tgXwhgISlvsu8swQO5Q43fM+7yi1aucHWtbrxJqf6bm6.O8zSlAQGbvAQs0VKFYjQP7wGuCovaBtDLa1LRLwDYB1I.PAA7fCNHEjUr.YHY7wZrwFQgEVH8V41+awfACPlLYnhJp.QDQDvCO7foi8zSOMps1ZQyM2LRLwDQRIkDNxQNBmmGgoQInm+JW4JLA23RKsDZqs1fLYxv92+9w6+9uOyfx..5zoCUUUUXO6YOH1XiEd3gGLCpHUpTTas0hSdxShXhIF3s2dyoUTDrhHSlLnWud7we7GCu7xKN9clLYhN9v81au3m+y+43rm8rLCRQtEcKszBtvEt.72e+YlDQe80GDKVLFbvAQDQDARO8zY98+byMGToREToRE7vCO.Od7XVAvolZJTas0h1ZqMDYjQx74QJib80WOpt5poWZfE42YxjInQiFTd4kSm3BV60qs1Znmd5AUUUUX4kWF23F2.t6t6b76VbwEgNc5fDIRvN1wNvu5W8qnqydLVzWe8g5qudL2bygzRKM3omdxbutyN6DhEKFqt5pHojRBQEUTLw51niNJsBHwEWbH1Xiki+Doso0We8XrwFCETPAHrvBiSxFjQvVpTonxJqjRrVrRJYt4lCRjHApUqF4jSNz1ivxOQiFMPpToz35rZeyDSLAzpUKZrwFgat4FtwMtANxQNBS+jVasUHVrX5EccjbKHWtbTUUUQIWKe7wGlmm7xW9R77m+bXvfATPAEf.BH.NwtHXOolZpAc1Ym31291vO+7iYLt27l2.whEiVZoEbkqbEGlrwfCNHpnhJvqe8qwktzkPngFJyp975W+ZzXiMht6ta3gGd3vJuSNWryN6DgDRHHszRio+jUqVgVsZgGd3ASbVZu8SN0hkkQ5mIIYiie7iCd73Au7xqevl0VGGMIRj.2c2cDYjQRu4zVsUWcUpFM7xW9RTbwEiHhHBNG.txJqfd5oGnRkJZ6VBJnfXdyyQGcTHUpTL4jShTRIE3u+9y4CXKVrP4ifomdZDRHgPIgK6somdZHSlLzQGcfyctygTRIEN8NiLoGhEKF81auHwDSjdq7sZDvbpSmNTVYkgHhHBDUTQAO8zSNklaokVBZznAUUUUvau8lx9k1GDkv8CJUpD..4lat3bm6bb1alYlYPSM0DzoSGbyM2fHQhf2d6Myf282e+Ptb4TtUHnfBhIs+RpFvN1wNPzQGMBJnf3bvwV00ikVZIDUTQgHhHBN6MlLYhRzZiO93TBoxdP6R3s.c5zAoRkhPCMTZYjset6mbxIo7rQrwFKhLxHw68duGSVXUiFMns1ZCG5PGB4jSNLas0qe8qQKszBzqWON1wNFxHiLfGd3AydV2ZqshJqrRbvCdPJE1aOeuXxjInUqVTRIk.e80WjTRIAO7vCNAQI7rQs0VKLZzHxHiLniL2V+aSn39FZnAL+7yiKe4Ki.CLPNGnZ0pUL93iSS1lboA6AEKwOo1ZqEKt3hH1XiEAGbvL8SFd3gQSM0DFZngvoO8oojUm86MiM1Xn1ZqEiN5nTVX09mGgoQ0nQCpqt5nDF2QO5Q4vznKrvBTxzKjPBAQGczLIZPBs92byMCylMi7yOe3qu9x7.UsZ0B850iCdvCROXydiDSRlLYvnQifOe9HzPCkYLNxD7ssssMpl0v5fHRkMlat4PzQGMSbDPlzipqtZL6ryhbxIGlrNKgmMZt4lgRkJQ5omNBKrvvwO9w+A6MjoESlLYn0VaEIjPBHlXhA6e+6myApDhQ6ku7kTYsfUqsFe7wgToRQ2c2MN8oOMRIkTvYO6Y47svJqrB5pqtPCMz.NvAN.k4Rs+7DKVrflatYTUUUA+82ep1wXeBalMaFs2d6nzRKEu268dHt3hCAFXfLYj2N5nCnQiFLwDSPaiBKlFcrwFixxuDlg19JkSRxWgBEX4kWFBDH.93iOLu7Ze80GjISFFczQw4N24f.ABX1Brd6sWnRkJL5niRI+Q68SH.SsolZBRkJEW5RWBAETP+2pf1+jqBGrLxGl28t2EAGbvH4jSlVl1stFR+a+jO4SfPgBAe97YF.ffT6G8nGg0VaMTbwEiniNZNkyxpUqzQZZkUVAEUTQL6YMYhKH2J+hW7hHjPBgyGQ1rYCSM0T3AO3AvjISHkTRAgEVXLChZznQnPgBzRKsffBJHGlrgQiFQEUTA5t6tg.ABXlrAg3YzqWO9xu7KwUu5UQTQEEGpFlLNlc0UWnrxJiR5Xm7jmjSvQBHHqu95gMa1PgEVHydVu95qCsZ0BMZzfie7iCgBEhyctywYcVsZEiM1X392+93cdm2AYkUVH3fClS.fM2bSL+7yiu669NJwswhAEINDO4IOAyLyLHqrxBQDQDbbDsYyFld5owSe5SwfCNH9S+S+SQXgEFmCdIU.QlLY3Eu3EH+7yGwFarLu4jACFfRkJgVsZQVYkEhN5nYdqbylMCUpTAsZ0hyd1yhTRIElIaX1rYTSM0f1ZqMDP.AfzSOcNi9JA.qyLyL36+9um97rOIBhexfCNH9O9O9OP1YmMhIlXf6t6NyQlajQFAey27Mvc2cm9cs86MVrXACO7vn95qGKrvBH+7ymIXDI9IRkJkVhcVL7KYTxqrxJgISlnxI.qfnqs1ZnxJqDc2c2H5niFojRJbXPQxEQDKVL5niNnreo89Iju+e4KeI91u8aQAET.RLwDwANvAXRpWM0TS3t28t3RW5RPf.ALasEYh6d1ydFN7gOLxKu7P.AD.meGDNMQoRk3HG4HHiLxf42BVsZkhKscu6cirxJKZ67reOr+96G28t2Em7jmDBEJj4dHYugvoIDPvaeRIDtZ32869cX6ae6HqrxBgGd3L+6RHjvVZoEb8qeclzUNw+TiFMPlLYH6rylI3FAd62+jXHD7lwBPmFMZ7GPldrHIOxdcWc0Et6cuK7wGePxImLN6YOKmXgjwG9q+5uF74yGImbxLaQMoR426d2Cm9zmFokVZvau8loeR+82OdzidD10t1Et7kuLSwCjbgkJqrRzUWcgqd0qhHiLRNOOxkMewKdALXv.8PeGMIcO8oOEyM2bTsAhUxFFMZDO7gODyM2bzJk6HPvSvGCQqx9ekh21VMBpkmZponuL4ymO7vCO9AIQP93kL21QGczTk0y9jMH50wKdwKfqt5JhO93QhIlHm+1DRBiPHUrX0Of+PRDRjHgBJpPCMTlifTWc0EpolZv67NuCRIkT.Od7XhZeSlLgG9vG9CXgRVIarzRKgJqrRLv.Cf3hKNjPBIvLYiEWbQnUqVTe80ijSNYjZpox4Fpjar0byMCUpTg.BH.jVZowDHcqu95zLa2wN1gCoqYKVr.EJT.850iie7iC9746vjMzoSGU74RHgDPPAEDmjMHAae1ydFbyM2PxImrCS1XgEV.kTRI3Mu4MHojRhV1W6+6NzPCgRKsTX1rYHRjHDQDQv7cGoEX80WefOe9HkTRgy6NxAQxjIiVYCd73w7fRSlLAIRjfW8pWAu7xKjbxIyDfzlLYBUVYk30u90Hv.CjpUB1+2kb6yRKsTpPT4kWd8CBhRRPs6t6FO4IOgpIKrZKCIgxm+7mC2c2cHRjHDZngxDaSs0Vant5pCVrXAokVZLAHGADjRkJEiN5nHgDR.QFYjL2q6s2dQs0VKkz8X82E3sUh669tuCSN4jTJZ29jMHiR627MeCd8qeMhJpnXBtWB+dzRKsfpqtZDarwhjSNYNIaPD7QkJUhVasUjTRIAABDvbOb0UWEpUqFxjICm5TmBwGe7LmnAKVr.MZzflatYp1n3njMHD21d26dAe97QvAGLGxuiD6p5pqlljePAEDmDOIeudu6cOL4jSRYgRV5+z3iONJojRnSHAOd7XlT9qe8qQ80WOlbxIQZokF3ymOGdQhv0KJUpDu5UuBwFarNLYCiFMh5pqNnSmN3gGdfjRJIlIaXvfA7jm7DLv.Cf.BH.ZUt1pQpXQs0VKchiHr5JK+Dc5zQAlJe97YlrAIYaB.tyHiLv4N24X1tQx2VG5PGBwDSLLISRRkxUpTIlat4f.AB.Od7X5mLv.C.IRj.ylMSYwVVG5uzRKgG8nGAiFMRaUFKxjzjIS3QO5QvrYyH1Xi0gr0JoBf0TSMHrvByg3sgk8S1DNHYd2QGcPQE7Uu5U4ParjQGqkVZAJTn.G7fGD27l2Dt4laLusQ6s2Nps1Zwt10tP5omtCUDQc5zA4xkC.fTRIElJ8IYDAIHvlGOdHgDRfSYCA.EDXlMaFYlYlLQiLIIh6e+6iQGcTDP.A3vJa7l27FTZokRYWOgBExrWzyM2bPsZ0PmNcvKu7BW4JWg4bVO5niBUpTgt6tabhSbBje94yTnrVYkUfRkJQSM0D16d2KRLwDYRjYVsZE0We8n4laFG4HGAIkTRbJAJYuQiFMngFZ.aaaaC4jSNb.A7VGqzxKubr95qiBKrP3s2dyzQbpolBkVZoXjQFgRg11mTBI4EhtAHRjHDUTQwDHoDc8XzQGEgEVX3BW3BLG02W+5WCEJTfAFX.DTPA4v9dZ1rYTYkUhW9xWBu7xKGFbzjIS36+9uGCO7vH7vCG73wiSfBxHBJUpTzbyMiM2bSjWd4wIYCf2dKGRBkjIIhEfXIX1fPu34kWdTvHtUifeAEJTfsu8sijRJIlj0EYrp0nQCle94QDQDARM0T47tayM2DczQGTR7KkTRgI.VI9IO7gOjh2.VzvLIY6xJqLJI9wmOeliiIg3pznQCN8oOMt10tFG7Fr4luk0YUnPA5t6tgu95Kt7kuLSbHQ.5MoxdD0b0da80Wm5mbnCcHjXhIxoRgD+DRqhcwEWPZokFmIoi3mnToRnPgBr+8ueje94iyblyvYOb80WGiLxHnrxJCSM0TTVRlUxFCLv.3Eu3EzIyKjPBg46tQFYDzPCMfwFaLjXhIBABDvjKId0qdEToREFe7wge94GtvEtfC8Spqt5PKszBNyYNCRJojXpgPFMZDO8oOkBpXhfJZ+5La1LpnhJfd85w68duGxM2b4r2r0wutgFZ.t4laTfdyJYi96ueTQEUfM1XCTXgExQSV.daRSZ0pExkKGG3.Gf4njC71uWau81gRkJwZqsF8cBq85N6rSJyUSXBaV.8dokVBO8oOEiO93Pf.AHrvBiSUoHDlHoxFjKW6nQoUrXwn6t6lxHurhg3H6mrIbrzRKAc5zgFarQL4jSh+1+1+VlfrZgEVftt8rm8fO5i9Hl.IhTBHxsxKrvBY97LYxDZs0VQc0UGUv1XcPDvaG4PEJTPEhpDRHAlTnMgwTsYyFcF4YU9ZhDyS3O.REPrOnxryNKpu95Qqs1JDHP.xHiLvd1ydXBFKMZz.sZ0hSbhSfhJpHl.DhbPYmc1IN24NGJnfBX1mWCFLPoP6idziRmZE62arYyFTpTIjJUJ7vCOnk1mkxgRRnbe6aeHmbxgI1NHSvgb4xgUqVwst0svIO4IY9tajQFAxkKGu5UuhxiE1CtWxsCpqt5vhKtHJnfBfe94GS.2M3fCBoRkholZJp5SxBvcc2c2PsZ0n6t6lxe.rprgEKVnDHUXgEF3ymOmfYjadVWc0A0pUSGmaVBjzxKuLjKWNM33st0sXBBXBE2KWtbryctS7we7Gy416.+gJazPCMf0WecbsqcMlDxlACFfd85QCMz.b0UWoiKMK+Dhe2JqrB3ymOhM1XYNRe8zSOPrXwXs0Vi1RMV9IyN6rn1ZqEczQG3C+vOD96u+b.RmEKVnhnmd85Q94mOBMzPYNgDSO8zPkJUzCh9fO3CXR5dSLwDPkJUnu95CAGbvHyLyjo+DAKFM0TS3Tm5T3BW3BbHtJf+vnI1PCM.2c2cjRJo.u7xKlUyoiN5fNIQBEJD96u+b1qMZzHZt4loUQM6ryloemACFnR7P2c2M9y9y9yfe94GmXHDp6tt5pCSO8zn3hKlVxdVpdrLYxnUQJkTRgIHHI3HX7wGG73wCBEJjYxFyM2bnolZBpUqFAGbvzDEs2OgPbg5zoCYmc1z1AwRf0Hi9c3gGNDIRDSUdd94mGM1Xin4laFG7fGDW+5Wm46tsJbZKszRzIDx9p4XvfA54D6e+6GW9xWFG7fGjYRzjDJWd4kob5Cq8PsZ0BoRkBCFLfzRKMDYjQxrsjj172d6sSaei89caU3Q0oSGt4MuIsUY12BrIlXBTWc0A850C+7yOTbwEyTYe+wrexkvAQrYH2b5ce22E+hewufINBHzeaiM1Hd228cQAET.SdPfLNlDpK9hW7hLed.fxboG3.G.hDIhY4w..UvdrXwBRM0TQDQDAmWlDAV64O+4vpUq3hW7hvGe7gyGGqu95X7wGGxkKGJUpD+4+4+4zwGy9+Gmc1Ygb4xQas0FJnfBn+cs+k9TSMEEjUjfdrN.b7wGmRi073wCwGe7LS1X1YmE50qGJUpD96u+z9YZeoHMXv.5ryNwye9yQfAFHRN4j4TUJxu4d5oG7jm7Dr28tWJwU4HfjVQEU.a1rg6bm6vLQwUVYEZ.fAGbPbsqcMDTPAw71mSN4jPtb4XwEWjBfOVuiGYjQPs0VKlZpoPzQGMmCJI27jHJeyO+7HgDRfY4gIkhr81aGUVYkH93iGwEWbbP1MYb4TqVMpnhJv0u90w4O+4YlbvhKtHTqVMDKVLBN3fojjj86MyN6rPmNcPmNc3HG4HH2bykoehACFnZ4fISlPgEVHS1ujHTh0We8vc2cGokVZ3Dm3DL2CIBknKt3BRLwDYxe.DonuxJqDqt5pHyLyjojcawhEL0TSA4xkC4xkiO7C+PDP.Av44s1ZqggGdXJNZJpnhn.B29fnjj70qWO70WeQVYkEyR6O4jSRaoVPAEDDHPfCOnTkJUPsZ0vKu7Bomd5LqnxJqrBTqVMprxJQDQDAU79X0xpN6rSTVYkgcricPucLqjx0qWOJqrxvIO4IQlYlIN8oOMyjMHB61hKtH9E+heAU.D2pehQiFwniNJjKWNdyadCt5UuJ70WeYlLDwOYrwFCQDQDH93imYE.IITZxjIpBnxhEVGe7wgFMZP80WOU.Dsuj8DJ4Vud8npppBETPAHpnhh4AfqrxJn4laFu3Eu.QGczHszRCG4HGgSkMHT7sZ0pg6t6NJrvB4vHoj2wD8exrYy3ZW6ZvCO7f4e2VasUHSlL7m7m7mfbxIGl30iT0mxKub3hKt.QhDwoEX.u860d6sWTRIk.WbwEjd5o6vjxIs8Stb438e+2GgDRHb7SHBEW80WO5s2dwu7W9KgO93CmySHDAGoRbjVps+8u++uASiRjh9fBJHjXhIxru+jrze0qdENxQNhCYIvUWcU5AVDAayQk1ehIl.RjHAm4LmAIjPB3rm8rLE5lwFaL7fG7.3hKt.974iPBIDNGRS3sCUpTgUWcUbwKdQ3qu9x41wD0lkLxgEUTQ+nkQVoRkPkJUzYj29mG4.qZpoFzZqsB+7yOjd5oyTJhMXv.ps1ZQe80GBKrvPBIj.S.BQT1zFZnADd3giTRIEN5+AAXpZ0pE26d2C74yGBEJDG+3GmSvQylMid6sW7fG7.rsssMjUVYAu7xKliO1fCNHZrwFwANvAPpolJ7vCO3jDFQrkHSRQQEUDyRLZ0pUJvOWd4kgHQhXNIE.+ANhffZeGA7yEVXAb26dWpJ2Fd3gyT1yIIrc+6eejd5oS0FEVTxciM1HJszRo.SkUvaCFLflZpITc0UCd73QmVFV2Daq3HHqrxhYo8WbwEoZHAIobV9cjx9VSM0fScpSQGGS6++izm9u5q9JbricLHTnP3me9wrbtiM1X3y+7OG6ae6CW3BW.AETPbBNR7mjKWNToREt7kuLS.mRtUdkUVIFarwPwEWL3wiGmDOIffrpppBs0VazdayhAEWXgEPc0UG5t6towjXkv1RKsDjKWNZpolf2d6MDJTHmmGoz9jIchzlG6wG.om5CN3f3y+7OGG5PGBYkUVLYjWSlLQAl5YNyYPN4jCyjMVas0nkhmzB.VXJgPrVUVYkzjxO+4OOSJ9lH5WSO8zH1XiEwFarLuvxhKtH99u+6A.fPgBQXgEFSgh6Mu4MnrxJiRNeBDHfCo1QvalToRQIkTBkYgYAHVBX4e5SeJhN5nITqEcK..vfOIQTPTgHQh3ToDf25mnPgBTWc0Ad73g3hKNleKr7xKC0pUSqXwktzkXheMxTqTas0hCe3CyrkZDbzL93ii6e+6SY35yctywbbjGe7ww28ceGN3AOHRHgDP.AD.SEv90u90TNnhLPD1+7rXwBFYjQfDIRvDSLAJt3hQXgEFyoub94mGxjICc1YmTfd6nwG9+N6mbIb7Nuy6fibjifjSNYDczQyL3HA0xRjHA6e+6G4latL6IF4k9KdwKvt28tQZokFGLaPl7gUWcU7e9e9eB2byMHPf.lIkPpXwm7IeBN3AOHk9msO..IH5Se5SQ+82OtwMtABN3fYh2.hTW2c2cizSOcHPf.N+NHkXWhDIPqVsHt3hiI2TP5Y8Se5SQO8zCsBCr.fFADSSLwDH3fC1gnQlPvUpUqF95quPf.ALEaLRUjd9yeNBO7vQN4jCScBgnCGe629sXW6ZWTGVVR89PCMDjHQBlYlYvUtxUbHvTIJEL.PFYjASgXizmxm7jmfolZJjZpoxgJeIA.LZzH98+9eOlc1YQhIlHhN5nYR0vDfedfCb.Zhm1G.fnWAO+4OG5zoCQDQDLk5Zx6XRkC3ymOxLyLYpJmlMalJi5DgxxQsQTmNcniN5.m9zmFBEJjorma1rYHSlLnVsZprma+TlP1aHU23Tm5TTpq290QFe3+s+s+M5H7xJYCxALUVYkX26d2HyLyDgFZnLq.x3iONpqt5P6s2NRKszXhO.hrhO7vCCylMiLxHClLlJYDwqt5pQ+82ORN4jAe97YlDgQiFQ80WO5qu9f+96ORLwDYhOfsp0J93iOPnPgLwa.4v7W7hWfye9yizSOcl.ya0UWEu5UuB28t2kRHUAFXfL49gAFX.zPCMfSbhSPwk.K8u4Uu5UzVkkYlYxT3EI5NBAe.okVZLA2HAfnO3AO.FLXfNRqrl7Gxdiqt5JhIlXXlrAAn22+92Gu90uFwDSLHszRiydCgeO5ryNgNc5PpolJDIRDmXvDsVos1ZCkUVYH3fCF4jSNLo+bxjDM5nihXhIFjd5oyDr7Dc2gToP974yD+ZDgMTgBE3PG5PPnPgb.DNIo7YlYF74e9mi28ceWHRjHlR2.I436cu6QoIcu81alU1X3gGFO4IOAu4MuAYjQFPf.ALSJe5omFs1ZqX94m2gLvMw+TrXwnmd5AIkTRPnPgbV2++X+jSsX2912NBHf.v6+9uOyLBIU.QgBEXgEV.94meL0xAa1rg1ZqMp5vRlTA6W2VGsz96ueDSLwvD.eD0Ar7xKG82e+PjHQbR1f77ld5oQCMz.5niNfWd4EhJpnXBPzYlYFnUqVzUWcAe80WjSN4vY+fD7gPLTG+3GG4me9LS1fba1VZoE3kWdgbyM2evG5jjqrZ0JZokVPCMz.7zSOQBIjvOnBHj0YxjI5d3gNzgvEu3EYFDkviEhEKFu669t3V25VbT1WB3t5qu9P0UWMld5ooxOt8frkn4CRkJECMzPvO+7yg5oy.CL.jKWNLXv.3ymOS5ZlbKBBtW7vCO3jMO4u67yOOppppP6s2NhLxHQLwDCSYOmviEZ0pEW5RWBQEUTbzcGxySoRkPiFM38du2C25V2hYI1IDCkFMZvgO7gw0u90YlrAAKRJUpD6cu6Eu+6+9LSFhfcHMZzf8su8gbyM2ev3XR9cXylM7pW8JnVsZXwhEjRJofXhIFlOuomdZTd4kCa1rgTSMUlAQIIaTVYkgwFaLbiabCNDxFYugnDo8zSO3F23FHt3hiSKqH8NVlLYn81aGd4kWH+7ymolwr3hKBMZzf96ueviGOGJs2yM2bPgBEns1ZCAETPTQuy98Fh7nSlnARaOXsNUpTg5qudbfCb.HPf.GlrwHiLBJu7xgqt5JxLyLYljOgqFpt5pw7yOOtyctCBO7vYNkISLwDPiFMX4kWFETPAb3lEx5FYjQfJUpv7yOOhKt3XlrAYbLUpTIlYlYn.+z9++Hu6jISF5t6tQrwFKDJTHm8PxzSIWtbnUqVHRjHDarw9CR1frGt7xKCUpTAMZzfvBKLjWd44vps1RKs.YxjAu7xKb6aealIaPT.35qudricrCbkqbElB1lMa1PO8zCEb6EWbwLSnzlMaPud8PgBEXu6cuLoq7s52UUUUAKVr.974C+82elqat4liph34kWdvGe7gCd8HeWStTZd4kGmjMHqib4095qODP.Avj9+IOuVasUzWe8gHhHBlIkShc0TSMg1aucb1ydVlJ.L42xFarAsSA+X1O4pvwOlQlJj6e+6C2byMbm6bGlkDD3sL448t28fat4FESD1ajLL0pUKdvCd.9G+G+Gg+96OS7FPXFNoRkh6e+6yrWgat4lzYPut5pC27l2DojRJLAUCQdzas0VQ3gGNtxUtByeGDGrpqtZ3s2diabiavbcDbuHVrXbwKdQjZpoxD.eja570e8WiSbhSfvCOblyisISlvKe4KwW+0eMN24NGtwMtAS8OXq2XarwFC+K+K+KL6k+JqrBkYPIJ7HqVfA.JGLzQGcfbxIGGJ00iM1XnzRKEqrxJH6ryF73wi45lZpoPEUTAzoSGJpnhf.ABXdX9BKr.ppppvCdvCveyeyeChN5nYpkIFMZDs0Va3K9hu.IlXhLaaDvaKirBEJvyd1yPd4kGtzktjCmQ91aucnPgBryctS7W+W+Wy72AoMhUTQEX26d23m8y9YLAsHIQrG8nGAWc0UJslyZcc0UWTkMUjHQvCO7fy5rYyFFYjQPc0UGJqrxve+e+euCm3BxXQVSM0fO8S+TG1y5YmcVHQhD7zm9TbqacKDXfAxjDylbxIgXwhgFMZPJojBJpnhXt2r7xKiFarQJy35HMSZ94mGMzPCPhDIPf.AHu7xi45H2N9K9hu.IkTRPjHQbprGveve5y9rOipERr7mHbDTEUTA5s2dwu427aX15AhJeVd4kCKVrfu4a9Fl9SVsZkp0PCMzPnfBJfYkLISOU4kWNlat4vEtvEXVAP.Pq1Te80GDIRDyChHXrnt5pCs1Zq3u5u5uBgDRHLS.jj3zm8YeFRO8zYx0K.+g2cO7gODe3G9gPnPgL+Mu7xKCsZ0hJpnB3pqth6bm6v72w7yOOk9+c0UWwe2e2eGS71PD8wG+3GCa1rA974yr8pjK4d26dW3omdhKdwKxbD1ISz1CdvCvzSOM9Y+reFyymHUrqgFZ.UUUU3W+q+0L86HwjjISFJojRvu5W8qv4O+4YB99IlXBTd4kilZpI7W7W7W3vXgDlqlLlwYmc1NbOjT0yXhIFje94ybcDPmdricLGpDta09eELMJwHYSs1Zqgssssgcu6cyLPOYcqt5pXaaaavUWc0gqaiM1.VrXAqs1ZvM2biCEBu0mmYylw5quNErLrVGoTdlMaF6YO6wgTztMa1v5quNrXwB14N2IyIe..z++La1L1wN1ASPPRddj0QnFdV++A71O3Wc0Uw1291YpWMj0Q1W1wN1ASfoRVqUqVgYylgMa1n2dg0gGaccrFa4stGZxjIX0pU3hKt3PALylMavnQiXyM2Dt3hKNjm+sYyFLYxDrXwBb0UWYpWAasxElLYB6ae6io7Ku08lUWcU5+erR9jbqVSlLgcu6cyTaT15dy5quN..Spv298vssss4v0Q9d0nQiT+DG8N1pUqvnQiX6ae6vEWbgY.2s98uYyl+Q2aHeWaxjI5zB3H+Dx51yd1iCemP7mVe80gKt3xOpex5quNLa1L19129O5dH44sqcsKluSr+cLYcrRRkrGtxJqfcsqcAWc0UG9cM4cmUqVoAmY4mP7iA.yokw98Za1r8earPSlL8+X+Da1r4P4kXquSrXwB1yd1iCiYR9MavfApeBq8PRk6LZzHb0UWYF6Zq6MlLYBaaaayg6MacObaaaaLkcfst2XznQ.fez8PRLycricvzex9mmMa1vd26d+QemP9dkDKzQ6gjXHDMdwQ9IjXbD+IVF4bBKVrfsu8sybZwH6gj2w6bm6zgwtH+VH94+epDNbZNMmlSyo4zbZ+uS6mbX3vo4zbZNMmlSyo8+8LmIb3zbZNMmlSyo4z9it4LgCmlSyo4zbZNMm1ezMmIb3zbZNMmlSyo4z9it4LgCmlSyo4zbZNMm1ezMmIb3zbZNMmlSyo4z9it4LgCmlSyo4zbZNMm1ezMmIb3zbZNMmlSyo4z9it8+iI9g8l+WqAmA....PRE4DQtJDXBB" ],
									"embed" : 1,
									"forceaspect" : 1,
									"id" : "obj-10",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 17.0, 36.0, 252.0, 145.599999999999994 ],
									"pic" : "Macintosh HD:/Users/stefanodemo/Documents/GitHub/SDT/MaxPackage/media/sdt.friction.bristle.png"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 7.0, 571.0, 22.0 ],
									"text" : "The sdt.friction~ object adopts a \"bristle-based\" interpretation of frictional contact."
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
					"patching_rect" : [ 213.0, 175.5, 134.0, 22.0 ],
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
					"fontface" : 3,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 330.25, 198.25, 49.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "stribeck"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-18",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 330.25, 233.75, 49.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 265.25, 198.25, 74.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "break-away"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 204.5, 198.25, 65.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "kDynamic",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 148.75, 198.25, 52.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "kStatic"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-26",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 271.625, 233.75, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-30",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 151.5, 233.75, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-35",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 211.75, 233.75, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 324.0, 84.0, 55.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "noisiness"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-15",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 330.25, 122.5, 49.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-1",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 81.0, 70.0, 54.0, 35.0 ],
					"style" : "SDT_package",
					"text" : "pressure (N)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"fontface" : 1,
					"format" : 6,
					"id" : "obj-4",
					"maxclass" : "flonum",
					"minimum" : 0.001,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 77.75, 122.5, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 459.571983546617901, 467.5625, 429.678016453382099, 22.0 ],
					"style" : "SDT-comments",
					"text" : "Notice that the modal object' configuration is the same used in Tutorial #2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 206.5, 321.5, 679.0, 131.0 ],
					"style" : "SDT-comments",
					"text" : "MAKING SENSE OF THE FRICTION PARAMETERS\n* The rubbing force coupled with the pressure variable represents the gesture's trajectory and dynamics, e.g. a bowing gesture.\n* Stiffness, dissipation, viscosity and noisiness are high-level parameters that allow to design a great variety of frictions. The remaining (kStatic, kDynamic, break-away and Stribeck) are lower-level parameters and are used to fine-tune the friction behavior.\n* High-level parameters show a minimum value, but not a maximum one. This implies that meaningful ranges have to be found by exploring the relationships between these parameters. "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.5, 581.75, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.5, 614.5, 63.0, 23.0 ],
					"style" : "SDT_package",
					"text" : "logfreq $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"logfreq" : 1,
					"maxclass" : "spectroscope~",
					"monochrome" : 0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.5, 458.5625, 168.0, 116.0 ],
					"scroll" : 3,
					"sono" : 1
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.0, 25.0, 67.0, 23.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 786.0, 30.0, 18.0, 18.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-42", "number", "int", 516, 5, "obj-23", "slider", "float", 515.0, 5, "obj-21", "flonum", "float", 404.79998779296875, 5, "obj-25", "flonum", "float", 246.399993896484375, 5, "obj-27", "flonum", "float", 520.52001953125, 5, "obj-29", "flonum", "float", 755.03997802734375, 5, "obj-32", "flonum", "float", 880.0, 5, "obj-33", "flonum", "float", 1216.1600341796875, 5, "obj-46", "flonum", "float", 2.400000095367432, 5, "obj-45", "flonum", "float", 2.200000047683716, 5, "obj-44", "flonum", "float", 1.700000047683716, 5, "obj-41", "flonum", "float", 1.600000023841858, 5, "obj-39", "flonum", "float", 1.399999976158142, 5, "obj-37", "flonum", "float", 1.299999952316284, 5, "obj-57", "flonum", "float", 350.0, 5, "obj-56", "flonum", "float", 280.0, 5, "obj-54", "flonum", "float", 350.0, 5, "obj-53", "flonum", "float", 300.0, 5, "obj-51", "flonum", "float", 280.0, 5, "obj-49", "flonum", "float", 280.0, 5, "obj-105", "flonum", "float", 24.0, 5, "obj-104", "flonum", "float", 0.029999999329448, 5, "obj-103", "flonum", "float", 0.5, 5, "obj-110", "flonum", "float", 0.0, 5, "obj-122", "flonum", "float", 0.100000001490116, 5, "obj-142", "number", "int", 6, 5, "obj-28", "live.gain~", "float", 0.0, 5, "obj-36", "toggle", "int", 1, 5, "obj-4", "flonum", "float", 1.0, 5, "obj-15", "flonum", "float", 0.0, 5, "obj-35", "flonum", "float", 0.200000002980232, 5, "obj-30", "flonum", "float", 0.850000023841858, 5, "obj-26", "flonum", "float", 0.699999988079071, 5, "obj-18", "flonum", "float", 0.400000005960464 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 726.5, 16.5, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 428.5, 34.0, 23.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-28",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 18.5, 419.5, 105.0, 41.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
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
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 122.75, 335.0, 70.0, 22.0 ],
					"style" : "SDT-comments",
					"text" : "extra gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "number",
					"maximum" : 6,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 383.75, 122.5, 45.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-139",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 381.25, 84.0, 57.0, 35.0 ],
					"style" : "SDT_package",
					"text" : "active modes",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"id" : "obj-136",
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
									"id" : "obj-131",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 144.5, 178.734375, 85.0, 22.0 ],
									"text" : "prepend mass"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-134",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 144.5, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-135",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 91.25, 220.734375, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-135", 0 ],
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"source" : [ "obj-134", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 18.5, 288.75, 100.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p inertial.controls"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-121",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.25, 198.25, 57.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "mass (kg)"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-122",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.5, 233.75, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"id" : "obj-117",
					"maxclass" : "newobj",
					"numinlets" : 10,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
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
						"rect" : [ 1636.0, 283.0, 979.0, 480.0 ],
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
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 89.25, 129.5, 83.0, 22.0 ],
									"text" : "prepend force"
								}

							}
, 							{
								"box" : 								{
									"comment" : "pressure on rubber",
									"id" : "obj-17",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 89.25, 34.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 934.5, 129.5, 56.0, 35.0 ],
									"text" : "prepend stribeck"
								}

							}
, 							{
								"box" : 								{
									"comment" : "Stribeck velocity",
									"id" : "obj-15",
									"index" : 10,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 934.5, 34.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 850.5, 129.5, 68.0, 35.0 ],
									"text" : "prepend breakAway"
								}

							}
, 							{
								"box" : 								{
									"comment" : "break-away coefficient",
									"id" : "obj-13",
									"index" : 9,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 850.5, 34.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 734.5, 129.5, 109.0, 22.0 ],
									"text" : "prepend kDynamic"
								}

							}
, 							{
								"box" : 								{
									"comment" : "dynamic friction coefficient",
									"id" : "obj-11",
									"index" : 8,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 734.5, 34.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 633.5, 129.5, 92.0, 22.0 ],
									"text" : "prepend kStatic"
								}

							}
, 							{
								"box" : 								{
									"comment" : "static friction coefficient",
									"id" : "obj-9",
									"index" : 7,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 633.5, 34.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 519.5, 129.5, 106.0, 22.0 ],
									"text" : "prepend noisiness"
								}

							}
, 							{
								"box" : 								{
									"comment" : "sliding noisiness",
									"id" : "obj-6",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 519.5, 34.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 412.5, 129.5, 101.0, 22.0 ],
									"text" : "prepend viscosity"
								}

							}
, 							{
								"box" : 								{
									"comment" : "bristle visocosity",
									"id" : "obj-2",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 412.5, 34.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 21.0, 218.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 21.0, 129.5, 44.0, 22.0 ],
									"text" : "sig~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
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
										"rect" : [ 70.0, 285.0, 307.0, 269.0 ],
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
													"format" : 6,
													"id" : "obj-6",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 248.0, 115.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubblepoint" : 0.1,
													"bubbleside" : 2,
													"id" : "obj-5",
													"linecount" : 5,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 74.0, 22.0, 161.0, 93.0 ],
													"text" : "makes it easier to make sense of the stiffness value.\n\nTry modifying the exponential base value."
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
													"patching_rect" : [ 36.0, 177.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 36.0, 147.0, 205.0, 22.0 ],
													"text" : "scale 0. 1. 500. 10000. 4. @classic 0"
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
													"patching_rect" : [ 36.0, 22.0, 30.0, 30.0 ]
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
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 5 ],
													"source" : [ "obj-6", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 182.0, 94.5, 94.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p scale.stiffness"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 289.25, 129.5, 113.0, 22.0 ],
									"text" : "prepend dissipation"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 182.0, 129.5, 100.0, 22.0 ],
									"text" : "prepend stiffness"
								}

							}
, 							{
								"box" : 								{
									"comment" : "rubbing force",
									"id" : "obj-112",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 34.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "bristle stiffness",
									"id" : "obj-113",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 182.0, 34.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "bristle dissipation",
									"id" : "obj-114",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 289.25, 34.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-116",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 234.6875, 212.5, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-114", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 167.5, 288.75, 149.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p interactor.controls"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-109",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 70.0, 78.0, 35.0 ],
					"style" : "SDT_package",
					"text" : "rubbing force (N)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"fontface" : 1,
					"format" : 6,
					"id" : "obj-110",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.5, 122.5, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-100",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 271.875, 84.0, 55.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "viscosity"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-101",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 206.5, 84.0, 65.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "dissipation",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-102",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 153.5, 84.0, 52.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "stiffness"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-103",
					"maxclass" : "flonum",
					"minimum" : 0.0001,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 270.625, 122.5, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-104",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 153.25, 122.5, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-105",
					"maxclass" : "flonum",
					"minimum" : 0.0001,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 211.75, 122.5, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 4,
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
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 256.5, 125.0, 123.0, 22.0 ],
									"text" : "prepend activeModes"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 256.5, 36.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.5, 125.0, 97.0, 22.0 ],
									"text" : "prepend pickup0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.0, 151.0, 94.0, 22.0 ],
									"text" : "prepend decays"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 125.0, 83.0, 22.0 ],
									"text" : "prepend freqs"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-88",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-89",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-90",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.5, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-92",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 225.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"midpoints" : [ 266.0, 185.5, 59.5, 185.5 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"midpoints" : [ 59.5, 185.5, 59.5, 185.5 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"midpoints" : [ 94.5, 203.0, 59.5, 203.0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"midpoints" : [ 156.0, 185.5, 59.5, 185.5 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-90", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 460.0, 288.75, 96.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p modal.controls"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-83",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 815.0, 233.75, 50.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "Pickup0"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-82",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 815.0, 181.25, 50.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "Decays"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-81",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 815.0, 122.5, 50.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "Freqs"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-79",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 753.25, 84.0, 52.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "Mode 6"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-80",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 694.0, 84.0, 52.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "Mode 5"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-77",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 636.25, 84.0, 52.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "Mode 4"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-78",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 577.0, 84.0, 52.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "Mode 3"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-76",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.25, 84.0, 52.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "Mode 2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-75",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 460.0, 84.0, 52.0, 21.0 ],
					"style" : "SDT_package",
					"text" : "Mode 1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-49",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 752.5, 233.75, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-51",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 694.0, 233.75, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 460.0, 257.75, 311.5, 23.0 ],
					"text" : "pak 0. 0. 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-53",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 635.5, 233.75, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-54",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 577.0, 233.75, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-56",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 460.0, 233.75, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-57",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 518.5, 233.75, 53.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-37",
					"maxclass" : "flonum",
					"minimum" : 0.0000001,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 752.5, 181.25, 53.0, 23.0 ],
					"varname" : "M6dec"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-39",
					"maxclass" : "flonum",
					"minimum" : 0.0000001,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 694.0, 181.25, 53.0, 23.0 ],
					"varname" : "M5dec"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 460.0, 204.015625, 311.5, 23.0 ],
					"text" : "pak 0. 0. 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-41",
					"maxclass" : "flonum",
					"minimum" : 0.0000001,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 635.5, 181.25, 53.0, 23.0 ],
					"varname" : "M4dec"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-44",
					"maxclass" : "flonum",
					"minimum" : 0.0000001,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 577.0, 181.25, 53.0, 23.0 ],
					"varname" : "M3dec"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-45",
					"maxclass" : "flonum",
					"minimum" : 0.0000001,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 460.0, 181.25, 53.0, 23.0 ],
					"varname" : "M1dec"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-46",
					"maxclass" : "flonum",
					"minimum" : 0.0000001,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 518.5, 181.25, 53.0, 23.0 ],
					"varname" : "M2dec"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-33",
					"maxclass" : "flonum",
					"maximum" : 20000.0,
					"minimum" : 20.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 752.5, 122.5, 53.0, 23.0 ],
					"varname" : "M6freq"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-32",
					"maxclass" : "flonum",
					"maximum" : 20000.0,
					"minimum" : 20.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 694.0, 122.5, 53.0, 23.0 ],
					"varname" : "M5freq"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 460.0, 145.5, 311.5, 23.0 ],
					"text" : "pak 0. 0. 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-29",
					"maxclass" : "flonum",
					"maximum" : 20000.0,
					"minimum" : 20.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 635.5, 122.5, 53.0, 23.0 ],
					"varname" : "M4freq"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-27",
					"maxclass" : "flonum",
					"maximum" : 20000.0,
					"minimum" : 20.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 577.0, 122.5, 53.0, 23.0 ],
					"varname" : "M3freq"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-25",
					"maxclass" : "flonum",
					"maximum" : 20000.0,
					"minimum" : 20.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 460.0, 122.5, 53.0, 23.0 ],
					"varname" : "M1freq"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-21",
					"maxclass" : "flonum",
					"maximum" : 20000.0,
					"minimum" : 20.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 518.5, 122.5, 53.0, 23.0 ],
					"varname" : "M2freq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "slider",
					"min" : 1.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 136.75, 360.0, 26.0, 52.0 ],
					"size" : 5000.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 136.75, 424.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
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
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 177.0, 64.0, 22.0 ],
									"text" : "pack 0. 80"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 100.0, 201.0, 34.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 223.0, 15.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 70.0, 228.0, 49.0, 22.0 ],
									"text" : "*~ 1"
								}

							}
, 							{
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
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-2", 0 ]
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
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"midpoints" : [ 232.5, 166.0, 109.5, 166.0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-6", 0 ]
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
					"patching_rect" : [ 18.5, 389.0, 105.0, 23.0 ],
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
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 18.5, 360.0, 90.0, 23.0 ],
					"text" : "Friction6modes"
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
					"patching_rect" : [ 414.25, 25.0, 84.0, 23.0 ],
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
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 414.25, 54.0, 68.0, 23.0 ],
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
					"text" : "#3 - controlling friction"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"id" : "obj-62",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 198.5, 316.125, 689.75, 144.375 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
					"fontface" : 1,
					"fontsize" : 14.0,
					"hint" : "",
					"id" : "obj-66",
					"ignoreclick" : 1,
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 204.5, 506.5625, 20.0, 20.0 ],
					"rounded" : 60.0,
					"text" : "2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
					"fontface" : 1,
					"fontsize" : 14.0,
					"hint" : "",
					"id" : "obj-87",
					"ignoreclick" : 1,
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 204.5, 615.5, 20.0, 20.0 ],
					"rounded" : 60.0,
					"text" : "5",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
					"fontface" : 1,
					"fontsize" : 14.0,
					"hint" : "",
					"id" : "obj-85",
					"ignoreclick" : 1,
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 204.5, 580.5625, 20.0, 20.0 ],
					"rounded" : 60.0,
					"text" : "4",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
					"fontface" : 1,
					"fontsize" : 14.0,
					"hint" : "",
					"id" : "obj-74",
					"ignoreclick" : 1,
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 204.5, 543.5625, 20.0, 20.0 ],
					"rounded" : 60.0,
					"text" : "3",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"border" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-8",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 563.625, 4.25, 96.75, 68.5 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"id" : "obj-58",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.75, 104.0, 62.0, 69.5 ],
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
					"id" : "obj-12",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 271.875, 104.0, 52.75, 69.5 ],
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
					"id" : "obj-11",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.75, 217.25, 61.75, 69.5 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 78.0, 104.0, 53.0, 69.5 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
					"fontface" : 1,
					"fontsize" : 14.0,
					"hint" : "",
					"id" : "obj-13",
					"ignoreclick" : 1,
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 204.5, 469.607954545454561, 20.0, 20.0 ],
					"rounded" : 60.0,
					"text" : "1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-43",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 271.875, 217.25, 52.75, 69.5 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-47",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 330.25, 217.25, 49.0, 69.5 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-48",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 151.75, 217.25, 53.5, 69.5 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"id" : "obj-50",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 213.0, 217.25, 52.0, 69.5 ],
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
					"id" : "obj-140",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 383.75, 104.0, 52.0, 69.5 ],
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
					"id" : "obj-118",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 330.25, 104.0, 49.0, 69.5 ],
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
					"id" : "obj-73",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 752.5, 104.0, 60.0, 182.75 ],
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
					"id" : "obj-72",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 694.0, 104.0, 53.0, 182.75 ],
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
					"id" : "obj-111",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 151.75, 104.0, 55.25, 69.5 ],
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
					"id" : "obj-71",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 635.5, 104.0, 53.0, 182.75 ],
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
					"id" : "obj-70",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 577.0, 104.0, 53.0, 182.75 ],
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
					"id" : "obj-69",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 518.5, 104.0, 53.0, 182.75 ],
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
					"id" : "obj-68",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 452.5, 104.0, 60.0, 182.75 ],
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
					"id" : "obj-107",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 213.0, 104.0, 52.0, 69.5 ],
					"proportion" : 0.39
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 4 ],
					"hidden" : 1,
					"midpoints" : [ 280.125, 230.25, 234.777777777777771, 230.25 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 2 ],
					"hidden" : 1,
					"midpoints" : [ 162.75, 230.25, 205.888888888888886, 230.25 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 3 ],
					"hidden" : 1,
					"midpoints" : [ 221.25, 230.25, 220.333333333333343, 230.25 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"hidden" : 1,
					"midpoints" : [ 28.0, 230.25, 177.0, 230.25 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 2 ],
					"hidden" : 1,
					"midpoints" : [ 307.0, 319.375, 63.5, 319.375 ],
					"source" : [ "obj-117", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"hidden" : 1,
					"midpoints" : [ 177.0, 319.375, 45.75, 319.375 ],
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"hidden" : 1,
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 3 ],
					"hidden" : 1,
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 5 ],
					"hidden" : 1,
					"midpoints" : [ 339.75, 230.25, 249.222222222222229, 230.25 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 9 ],
					"hidden" : 1,
					"midpoints" : [ 339.75, 285.875, 307.0, 285.875 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"hidden" : 1,
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
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 8 ],
					"hidden" : 1,
					"midpoints" : [ 281.125, 285.875, 292.555555555555543, 285.875 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 2 ],
					"hidden" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 1 ],
					"hidden" : 1,
					"order" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"hidden" : 1,
					"order" : 1,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"order" : 2,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 3 ],
					"hidden" : 1,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 6 ],
					"hidden" : 1,
					"midpoints" : [ 161.0, 285.875, 263.666666666666686, 285.875 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"hidden" : 1,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 4 ],
					"hidden" : 1,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 5 ],
					"hidden" : 1,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 28.0, 468.625, 28.0, 468.625 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 7 ],
					"hidden" : 1,
					"midpoints" : [ 221.25, 285.875, 278.111111111111086, 285.875 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 5 ],
					"hidden" : 1,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 4 ],
					"hidden" : 1,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 1 ],
					"hidden" : 1,
					"midpoints" : [ 87.25, 230.25, 191.444444444444457, 230.25 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 1 ],
					"hidden" : 1,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 3 ],
					"hidden" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"midpoints" : [ 146.25, 449.5, 129.375, 449.5, 129.375, 385.0, 114.0, 385.0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 2 ],
					"hidden" : 1,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"hidden" : 1,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 5 ],
					"hidden" : 1,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 586.5, 37.0, 530.25, 37.0 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 4 ],
					"hidden" : 1,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 2 ],
					"hidden" : 1,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 3 ],
					"hidden" : 1,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 2 ],
					"hidden" : 1,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 1 ],
					"hidden" : 1,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"hidden" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.000110864639282, 0.001760244369507, 0.998218417167664, 1.0 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 1,
					"midpoints" : [ 612.0, 81.25, 28.0, 81.25 ],
					"source" : [ "obj-61", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.000110864639282, 0.001760244369507, 0.998218417167664, 1.0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [ 637.5, 81.25, 87.25, 81.25 ],
					"source" : [ "obj-61", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"midpoints" : [ 586.5, 71.5, 505.125, 71.5, 505.125, 51.0, 423.75, 51.0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [ 530.25, 71.5, 510.375, 71.5, 510.375, 29.5, 586.5, 29.5 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.918218970298767, 0.170151352882385, 0.982340335845947, 1.0 ],
					"destination" : [ "obj-14", 3 ],
					"hidden" : 1,
					"midpoints" : [ 469.5, 319.375, 81.25, 319.375 ],
					"source" : [ "obj-93", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-28" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "Friction6modes.maxpat",
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
				"name" : "sdt.friction~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sdt.inertial.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"boxgroups" : [ 			{
				"boxes" : [ "obj-93", "obj-68", "obj-69", "obj-70", "obj-71", "obj-72", "obj-52", "obj-57", "obj-56", "obj-54", "obj-53", "obj-51", "obj-40", "obj-46", "obj-45", "obj-44", "obj-41", "obj-39", "obj-73", "obj-37", "obj-49", "obj-31", "obj-21", "obj-25", "obj-27", "obj-29", "obj-32", "obj-33", "obj-81", "obj-82", "obj-83", "obj-75", "obj-76", "obj-78", "obj-77", "obj-80", "obj-79" ]
			}
, 			{
				"boxes" : [ "obj-102", "obj-101", "obj-107", "obj-111", "obj-105", "obj-104", "obj-103", "obj-100", "obj-12", "obj-16", "obj-60", "obj-118", "obj-15", "obj-17", "obj-19", "obj-20", "obj-24", "obj-43", "obj-47", "obj-48", "obj-50", "obj-18", "obj-26", "obj-30", "obj-35", "obj-139", "obj-140", "obj-142", "obj-117" ]
			}
, 			{
				"boxes" : [ "obj-67", "obj-74" ]
			}
, 			{
				"boxes" : [ "obj-65", "obj-66" ]
			}
, 			{
				"boxes" : [ "obj-84", "obj-85" ]
			}
, 			{
				"boxes" : [ "obj-86", "obj-87" ]
			}
, 			{
				"boxes" : [ "obj-113", "obj-13", "obj-3" ]
			}
, 			{
				"boxes" : [ "obj-109", "obj-110", "obj-58", "obj-4", "obj-10", "obj-121", "obj-1", "obj-11", "obj-122", "obj-136" ]
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
