{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 1,
			"revision" : 0,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 221.0, 79.0, 1165.0, 709.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 281.0, 428.0, 195.0, 33.0 ],
					"presentation_rect" : [ 281.0, 428.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "Nick Added 2/10"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 274.0, 15.0, 172.0, 33.0 ],
					"style" : "",
					"text" : "As Matt Left It:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"linecount" : 17,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 142.5, 471.0, 584.0, 234.0 ],
					"style" : "",
					"text" : "2/10/16 Changes:\n\nNew design for AAAA and BCBC conditions\n\n- 3 reps x 2 players x 2 deviant positions in phrase x 2 phrase positions x 2 score patterns = 48 trials per block\n- This is changed from 36 (2 reps -> 3, 3 dev positions ->2)\n\n\n- Need to implement new trigger codes and scores\n\n- Add 5th phrase, where Odd player plays first 3 notes, both players play next 4. Both players players play first and only note of sixth phrase.\n\n- This brings total notes from 25 to 31 notes\n- contour of last measure doesn't change\n- AAAA D, BCBC D"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 41.0, 150.0, 20.0 ],
					"style" : "",
					"text" : "DONE"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 523.0, 263.5, 271.0, 47.0 ],
					"style" : "",
					"text" : "Make a log, from Max's POV, of all the triggers it sends to Curry (to track down the occasional spurious triggers)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 325.0, 229.0, 33.0 ],
					"style" : "",
					"text" : "DB25 switcher (to keep both STIM and Mac Mini plugged in, no repatching)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 296.5, 229.0, 20.0 ],
					"style" : "",
					"text" : "IAC male to Edison female (for Mac Mini)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.5, 267.5, 159.0, 20.0 ],
					"style" : "",
					"text" : "To buy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 34.0, 41.0, 159.0, 20.0 ],
					"style" : "",
					"text" : "say block 8 completed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 81.0, 159.0, 20.0 ],
					"style" : "",
					"text" : "say practice 5 ticks"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 207.5, 265.0, 20.0 ],
					"style" : "",
					"text" : "Show the subjects exactly what they should see"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 143.0, 213.0, 20.0 ],
					"style" : "",
					"text" : "display success or not of previous trial"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 112.0, 219.0, 20.0 ],
					"style" : "",
					"text" : "Show block conditions before starting it"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 113.0, 159.0, 20.0 ],
					"style" : "",
					"text" : "display practice trials"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 217.0, 159.0, 20.0 ],
					"style" : "",
					"text" : "num-trials-in-block wrong?"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 174.0, 205.0, 20.0 ],
					"style" : "",
					"text" : "Randomize for each pair of subjects:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 142.0, 185.0, 20.0 ],
					"style" : "",
					"text" : "Swap even/odd for second piece"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 34.0, 84.0, 159.0, 20.0 ],
					"style" : "",
					"text" : "8 blocks"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 182.0, 159.0, 20.0 ],
					"style" : "",
					"text" : "Abort trial (as failure) button"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
