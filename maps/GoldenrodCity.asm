const_value set 2

GoldenrodCity_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 2
	
	dbw MAPCALLBACK_TILES, .CheckLusterTrashcans

	
.CheckLusterTrashcans:
	checkevent EVENT_LUSTER_TRASHCAN_1
	iftrue .OpenSesame1
.cont1
	checkevent EVENT_LUSTER_TRASHCAN_2
	iftrue .OpenSesame2
.cont2
	checkevent EVENT_LUSTER_TRASHCAN_3
	iftrue .OpenSesame3
.cont3
	checkevent EVENT_LUSTER_TRASHCAN_4
	iftrue .OpenSesame4
.cont4
	checkevent EVENT_LUSTER_TRASHCAN_5
	iftrue .OpenSesame5
.cont5
	checkevent EVENT_LUSTER_TRASHCAN_6
	iftrue .OpenSesame6
	return

.OpenSesame1:
	changeblock $c, $e, $52
	jump .cont1

.OpenSesame2:
	changeblock $e, $e, $53
	jump .cont2
	
.OpenSesame3:
	changeblock $e, $1e, $4d
	jump .cont3
	
.OpenSesame4:
	changeblock $14, $1e, $4c
	jump .cont4
	
.OpenSesame5:
	changeblock $e, $28, $4d
	jump .cont5
	
.OpenSesame6:
	changeblock $14, $28, $4c
	return

GoldenrodCity_MapEventHeader:: db 0, 0

.Warps: db 1
	warp_def 11, 27, 1, KRISS_HOUSE_1F

.CoordEvents: db 0

.BGEvents: db 6
	signpost 14, 13, SIGNPOST_READ, LusterTrashcan1
	signpost 14, 14, SIGNPOST_READ, LusterTrashcan2
	signpost 31, 14, SIGNPOST_READ, LusterTrashcan3
	signpost 31, 20, SIGNPOST_READ, LusterTrashcan4
	signpost 41, 14, SIGNPOST_READ, LusterTrashcan5
	signpost 41, 20, SIGNPOST_READ, LusterTrashcan6

.ObjectEvents: db 0

LusterTrashcan1:
	changeblock $c, $e, $52
	opentext
	reloadmappart
	closetext
	setevent EVENT_LUSTER_TRASHCAN_1
	end
	
LusterTrashcan2:
	changeblock $e, $e, $53
	opentext
	reloadmappart
	closetext
	setevent EVENT_LUSTER_TRASHCAN_2
	end
	
LusterTrashcan3:
	changeblock $e, $1e, $4d
	opentext
	reloadmappart
	closetext
	setevent EVENT_LUSTER_TRASHCAN_3
	end
	
LusterTrashcan4:
	changeblock $14, $1e, $4c
	opentext
	reloadmappart
	closetext
	setevent EVENT_LUSTER_TRASHCAN_4
	end
	
LusterTrashcan5:
	changeblock $e, $28, $4d
	opentext
	reloadmappart
	closetext
	setevent EVENT_LUSTER_TRASHCAN_5
	end
	
LusterTrashcan6:
	changeblock $14, $28, $4c
	opentext
	reloadmappart
	closetext
	setevent EVENT_LUSTER_TRASHCAN_6
	end