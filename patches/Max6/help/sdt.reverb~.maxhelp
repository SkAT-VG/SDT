{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 6,
			"architecture" : "x86"
		}
,
		"rect" : [ 67.0, 106.0, 845.0, 651.0 ],
		"bgcolor" : [ 1.0, 0.727539, 0.4375, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 9.0,
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
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-50",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 231.5, 165.0, 150.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 348.25, 219.5, 150.0, 17.0 ],
					"text" : "draw impulse"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-60",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 274.25, 320.5, 77.0, 29.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 497.25, 272.5, 74.0, 29.0 ],
					"text" : "press 'a' to trigger a click",
					"textcolor" : [ 1.0, 0.035294, 0.054902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 250.25, 275.5, 38.0, 17.0 ],
					"text" : "key"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 251.25, 296.5, 48.0, 17.0 ],
					"text" : "select 97"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 708.0, 208.0, 51.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 239.0, 272.5, 51.0, 17.0 ],
					"text" : "Time (s)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 567.0, 208.0, 51.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 159.5, 272.5, 51.0, 17.0 ],
					"text" : "Time (s)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-41",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 425.0, 208.0, 51.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 88.25, 272.5, 51.0, 17.0 ],
					"text" : "Size (m)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 220.0, 259.0, 58.0, 17.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"id" : "obj-15",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 220.0, 182.0, 173.0, 69.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 348.25, 219.5, 153.0, 56.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 1,
					"size" : 64,
					"slidercolor" : [ 0.337255, 0.176471, 0.329412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 165.0, 444.0, 93.0, 17.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 430.75, 388.5, 62.0, 27.0 ],
					"text" : "delay~ 44100 22050"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-34",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 691.0, 446.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 232.5, 430.5, 50.0, 25.0 ],
					"text" : "33.642403"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 722.0, 404.0, 73.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 221.0, 445.5, 73.0, 17.0 ],
					"text" : "prepend time1k"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 722.0, 376.0, 119.0, 17.0 ],
					"text" : "scale 0. 100. 0.01 100 1.06"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.4, 0.6, 1.0, 1.0 ],
					"bordercolor" : [ 0.8, 0.8, 0.8, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-37",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 723.0, 232.5, 21.0, 125.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 247.0, 298.0, 21.0, 125.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"slidercolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-29",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 550.0, 446.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 156.5, 430.5, 56.5, 15.0 ],
					"text" : "33.642403"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 581.0, 404.0, 63.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 150.0, 445.5, 63.0, 17.0 ],
					"text" : "prepend time"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 581.0, 376.0, 119.0, 17.0 ],
					"text" : "scale 0. 100. 0.01 100 1.06"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.4, 0.6, 1.0, 1.0 ],
					"bordercolor" : [ 0.8, 0.8, 0.8, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-33",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 582.0, 232.5, 21.0, 125.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 171.0, 298.0, 21.0, 125.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"slidercolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 405.0, 446.0, 50.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.0, 430.5, 56.0, 15.0 ],
					"text" : "6.728106"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 436.0, 404.0, 62.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.0, 445.5, 62.0, 17.0 ],
					"text" : "prepend size"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 436.0, 376.0, 122.0, 17.0 ],
					"text" : "scale 0. 100. 0.01 100. 1.06"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.4, 0.6, 1.0, 1.0 ],
					"bordercolor" : [ 0.8, 0.8, 0.8, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-26",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 437.0, 232.5, 21.0, 125.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 95.5, 298.0, 21.0, 125.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"slidercolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 570.0, 43.5, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 430.75, 371.5, 43.5, 17.0 ],
					"text" : "wet"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 570.0, 43.5, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 348.75, 371.5, 43.5, 17.0 ],
					"text" : "dry"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 103.5, 601.0, 27.0, 73.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 393.25, 425.5, 27.0, 73.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 59.0, 593.0, 44.5, 81.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 348.75, 417.5, 44.5, 81.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 251.25, 527.5, 100.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 526.25, 455.0, 45.0, 40.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-16", "toggle", "int", 0, 5, "obj-26", "multislider", "list", 60.162601, 5, "obj-33", "multislider", "list", 23.577236, 5, "obj-37", "multislider", "list", 23.577236, 68, "obj-15", "multislider", "list", 1.0, 0.029851, 0.0, 0.0, 0.0, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.024876, 0.034826, 0.044776, 0.052239, 0.059701, 0.074627, 0.089552, 0.11194, 0.134328, 0.179104, 0.208955, 0.298507, 0.358209, 0.402985, 0.552239, 0.776119, 0.835821, 0.895522, 0.955224, 0.970149, 1.0, 1.0, 1.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-16", "toggle", "int", 0, 5, "obj-26", "multislider", "list", 60.162601, 5, "obj-33", "multislider", "list", 62.601627, 5, "obj-37", "multislider", "list", 46.341465, 68, "obj-15", "multislider", "list", 1.0, 0.029851, 0.0, 0.0, 0.0, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.024876, 0.034826, 0.044776, 0.052239, 0.059701, 0.074627, 0.089552, 0.11194, 0.134328, 0.179104, 0.208955, 0.298507, 0.358209, 0.402985, 0.552239, 0.776119, 0.835821, 0.895522, 0.955224, 0.970149, 1.0, 1.0, 1.0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-16", "toggle", "int", 0, 5, "obj-26", "multislider", "list", 60.162601, 5, "obj-33", "multislider", "list", 81.300812, 5, "obj-37", "multislider", "list", 75.609756, 68, "obj-15", "multislider", "list", 1.0, 0.029851, 0.0, 0.0, 0.0, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.444444, 0.611111, 0.648148, 0.759259, 0.777778, 0.814815, 0.87037, 0.925926, 0.944444, 0.907407, 0.740741, 0.240741, 0.055556, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.055556, 0.055556, 0.055556, 0.055556, 0.055556, 0.055556, 0.055556, 0.050926, 0.046296, 0.041667, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.018519 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-16", "toggle", "int", 0, 5, "obj-26", "multislider", "list", 15.447154, 5, "obj-33", "multislider", "list", 81.300812, 5, "obj-37", "multislider", "list", 75.609756, 68, "obj-15", "multislider", "list", 1.0, 0.029851, 0.0, 0.0, 0.0, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.444444, 0.611111, 0.648148, 0.759259, 0.777778, 0.814815, 0.87037, 0.925926, 0.944444, 0.907407, 0.740741, 0.240741, 0.055556, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.055556, 0.055556, 0.055556, 0.055556, 0.055556, 0.055556, 0.055556, 0.050926, 0.046296, 0.041667, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.018519 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-16", "toggle", "int", 0, 5, "obj-26", "multislider", "list", 15.447154, 5, "obj-33", "multislider", "list", 81.300812, 5, "obj-37", "multislider", "list", 14.634147, 68, "obj-15", "multislider", "list", 1.0, 0.029851, 0.0, 0.0, 0.0, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.444444, 0.611111, 0.648148, 0.759259, 0.777778, 0.814815, 0.87037, 0.925926, 0.944444, 0.907407, 0.740741, 0.240741, 0.055556, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.014925, 0.055556, 0.055556, 0.055556, 0.055556, 0.055556, 0.055556, 0.055556, 0.050926, 0.046296, 0.041667, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.037037, 0.018519 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-16", "toggle", "int", 0, 5, "obj-26", "multislider", "list", 2.439024, 5, "obj-33", "multislider", "list", 3.252033, 5, "obj-37", "multislider", "list", 0.813008, 68, "obj-15", "multislider", "list", 1.0, 0.981481, 0.907407, 0.888889, 0.833333, 0.814815, 0.796296, 0.759259, 0.722222, 0.703704, 0.685185, 0.666667, 0.648148, 0.62963, 0.611111, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.018519, 0.037037, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-16", "toggle", "int", 0, 5, "obj-26", "multislider", "list", 2.439024, 5, "obj-33", "multislider", "list", 81.300812, 5, "obj-37", "multislider", "list", 0.813008, 68, "obj-15", "multislider", "list", 1.0, 0.981481, 0.907407, 0.888889, 0.833333, 0.814815, 0.796296, 0.759259, 0.722222, 0.703704, 0.685185, 0.666667, 0.648148, 0.62963, 0.611111, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.018519, 0.037037, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-16", "toggle", "int", 0, 5, "obj-26", "multislider", "list", 2.439024, 5, "obj-33", "multislider", "list", 81.300812, 5, "obj-37", "multislider", "list", 52.03252, 68, "obj-15", "multislider", "list", 1.0, 0.981481, 0.907407, 0.888889, 0.833333, 0.814815, 0.796296, 0.759259, 0.722222, 0.703704, 0.685185, 0.666667, 0.648148, 0.62963, 0.611111, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.018519, 0.037037, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-16", "toggle", "int", 1, 5, "obj-26", "multislider", "list", 53.658535, 5, "obj-33", "multislider", "list", 81.300812, 5, "obj-37", "multislider", "list", 81.300812, 68, "obj-15", "multislider", "list", 1.0, 0.981481, 0.907407, 0.888889, 0.833333, 0.814815, 0.796296, 0.759259, 0.722222, 0.703704, 0.685185, 0.666667, 0.648148, 0.62963, 0.611111, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.018519, 0.037037, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 425.0, 654.0, 143.0, 18.0 ],
					"text" : "bgcolor 1. 0.727539 0.4375 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 209.5, 601.0, 27.0, 73.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 474.25, 425.5, 27.0, 73.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 165.0, 593.0, 44.5, 81.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 429.75, 417.5, 44.5, 81.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 690.0, 45.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 526.25, 394.5, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 30.0,
					"frgb" : 0.0,
					"id" : "obj-142",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 93.5, 31.0, 270.5, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 91.5, 60.0, 273.0, 40.0 ],
					"text" : "sdt.reverb~",
					"textcolor" : [ 0.988235, 0.501961, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-73",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 440.0, 171.0, 185.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 113.25, 219.5, 143.5, 20.0 ],
					"text" : "reverb~ parameters"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 900.0, 47.0, 429.0, 290.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
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
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 14.0,
									"frgb" : 0.0,
									"id" : "obj-12",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 7.0, 6.0, 345.0, 116.0 ],
									"text" : "INPUT\n- signal\n\nATTRIBUTES:\n- size (float): Average room size, in m\n- time (float): Global reverberation time, in s\n- time1k (float): Reverberation time at 1 kHz, in s"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 14.0,
									"frgb" : 0.0,
									"id" : "obj-7",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 7.0, 135.0, 310.0, 53.0 ],
									"text" : "OUTPUT\n\n- signal"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 14.0,
									"frgb" : 0.0,
									"id" : "obj-3",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 7.0, 206.0, 366.0, 38.0 ],
									"text" : "ARGUMENTS\n- (long): Maximum length of the delay lines, in samples."
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 75.0, 138.0, 205.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 436.0, 170.5, 205.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 9.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 9.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p readme-Input-Output-Arguments"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-64",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 98.5, 334.0, 34.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 91.5, 104.0, 310.0, 34.0 ],
					"text" : " A computationally efficient yet maximally diffusive matrix reverb"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.207843 ],
					"id" : "obj-141",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 71.625, 289.0, 4.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 91.5, 100.0, 289.0, 4.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "_SDT_label.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 1.0, 3.0 ],
					"patching_rect" : [ 425.0, 31.0, 215.0, 106.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 431.5, 47.5, 214.0, 109.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "time1k",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 315.0, 489.0, 115.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 216.0, 475.0, 102.0, 20.0 ],
					"text_width" : 60.0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 109.5, 259.0, 59.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 418.25, 296.5, 59.0, 17.0 ],
					"text" : "line in on/off"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 251.25, 320.5, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 511.75, 219.5, 59.5, 59.5 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 109.5, 279.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 429.75, 316.5, 36.5, 36.5 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 60.0, 321.0, 32.5, 17.0 ],
					"text" : "*~ 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 220.0, 364.5, 33.0, 17.0 ],
					"text" : "click~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "ezadc~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 60.0, 259.0, 45.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 348.75, 296.5, 56.5, 56.5 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.6, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 165.0, 487.0, 141.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 71.0, 473.0, 141.0, 24.0 ],
					"text" : "sdt.reverb~ 48000"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"id" : "obj-54",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 425.0, 601.0, 128.25, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 63.0, 205.0, 266.25, 306.5 ],
					"rounded" : 6,
					"varname" : "String[2]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"id" : "obj-55",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 581.0, 601.0, 128.25, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 333.25, 205.0, 256.25, 159.0 ],
					"rounded" : 6,
					"varname" : "String[1]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"id" : "obj-51",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 581.0, 538.0, 128.25, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 333.25, 366.5, 256.25, 143.0 ],
					"rounded" : 6,
					"varname" : "String[3]"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"color" : [ 0.4, 0.6, 1.0, 1.0 ],
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.4, 0.6, 1.0, 1.0 ],
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 69.5, 432.0, 174.5, 432.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 445.5, 479.5, 174.5, 479.5 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 590.5, 478.5, 174.5, 478.5 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 731.5, 479.5, 174.5, 479.5 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.4, 0.6, 1.0, 1.0 ],
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 229.5, 409.0, 91.0, 409.0, 91.0, 505.0, 68.5, 505.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.4, 0.6, 1.0, 1.0 ],
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 229.5, 433.75, 174.5, 433.75 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "_SDT_label.maxpat",
				"bootpath" : "/Users/stefanodemo/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_externals/SDT_common_abstractions",
				"patcherrelativepath" : "../../../../../../SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_externals/SDT_common_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sdt.reverb~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "vtimes~.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
