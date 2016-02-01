{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 0,
			"revision" : 6,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 1084.0, 555.0, 619.0, 549.0 ],
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
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 71.5, 129.0, 47.0, 22.0 ],
					"presentation_rect" : [ 63.0, 126.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "1 2 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 252.5, 94.0, 134.0, 20.0 ],
					"style" : "",
					"text" : "1 = onbeat 2 = offbeat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 218.25, 22.5, 237.0, 33.0 ],
					"style" : "",
					"text" : "Start trial: even/odd, onbeat/offbeat, trial number, deviant?"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 252.5, 58.0, 116.0, 33.0 ],
					"style" : "",
					"text" : "1 = first player odd, 2 = first player even"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.5, 129.0, 162.0, 33.0 ],
					"style" : "",
					"text" : "Message comes one IOI before first note"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 129.0, 244.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 63.0, 297.0, 79.0, 20.0 ],
					"style" : "",
					"text" : "Finished trial"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 58.0, 236.0, 53.0, 53.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 58.0, 44.5, 126.0, 60.0 ],
					"style" : "",
					"text" : "odd/even (1/2), onbeat/offbeat (1/2)\ntrial deviant? (0/1), trial #"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 22.5, 129.0, 47.0, 22.0 ],
					"style" : "",
					"text" : "1 1 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 58.0, 198.0, 74.0, 22.0 ],
					"style" : "",
					"text" : "piece-follow"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "piece-follow.maxpat",
				"bootpath" : "~/Work/Neuromusic-Max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "scaledegree2midi.maxpat",
				"bootpath" : "~/Work/Neuromusic-Max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "majorscale.coll.txt",
				"bootpath" : "~/Work/Neuromusic-Max",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "piece1.coll.txt",
				"bootpath" : "~/Work/Neuromusic-Max",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "piano-note.maxpat",
				"bootpath" : "~/Work/Neuromusic-Max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "midi2scaledegree.maxpat",
				"bootpath" : "~/Work/Neuromusic-Max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "==2.maxpat",
				"bootpath" : "~/Work/Neuromusic-Max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "establish-tempo.maxpat",
				"bootpath" : "~/Work/Neuromusic-Max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "metronome-tock.maxpat",
				"bootpath" : "~/Work/Neuromusic-Max",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"embedsnapshot" : 0
	}

}
