
extends Panel

var menu
var submenu

var Race = ""
var Subrace = ""

var race_ability_mods = {
	'Dwarf':		{'CON': 2},
	'Elf':			{'DEX': 2},
	'Halfling':		{'DEX': 2},
	'Human':		{'STR':	1, 'DEX': 1, 'CON': 1, 'INT': 1, 'WIS': 1, 'CHA': 1},
	'Dragonborn':	{'STR': 2, 'CHA': 1},
	'Gnome':		{'INT': 2},
	'Half-Elf':		{'CHA': 2},
	'Half-Orc':		{'STR': 2, 'CON': 1},
	'Tiefling':		{'INT': 1, 'CHA': 2}
		}

var subrace_ability_mods = {
	#Dwarf
	'Hill Dwarf':	{'WIS': 1},
	'Mountain Dwarf':	{'STR': 2},
	#Elf
	'High Elf':	{'INT': 1},
	'Wood Elf':	{'WIS': 1},
	'Dark Elf':	{'CHA': 1},
	#Halfling
	'Lightfoot':	{'CHA': 1},
	'Stout':		{'CON': 1},
	#Gnome
	'Forest Gnome':	{'DEX': 1},
	'Rock Gnome':	{'CON': 1}
	}

var subraces = {
	#Dwarf
	0:	['Hill Dwarf', 'Mountain Dwarf'],
	#Elf
	1:	['High Elf', 'Wood Elf', 'Dark Elf'],
	#Halfling
	2:	['Lightfoot', 'Stout'],
	#Human
	3:	[],
	#Dragonborn
	4:	['Black', 'Blue', 'Brass', 'Bronze', 'Copper', 'Gold', 'Green', 'Red', 'Silver', 'White'],
	#Gnome
	5:	['Forest Gnome', 'Rock Gnome'],
	#Half-Elf
	6:	[],
	#Half-Orc
	7:	[],
	#Tiefling
	8:	[]
	}

func _ready():
	menu = get_node('race_box')
	submenu = get_node('subrace_box')
	
	menu.add_item('Choose a Race!', 0)
	menu.set_item_disabled(0,true)
	menu.add_item('Dwarf', 1)
	menu.add_item('Elf', 2)
	menu.add_item('Halfling', 3)
	menu.add_item('Human', 4)
	menu.add_item('Dragonborn', 5)
	menu.add_item('Gnome', 6)
	menu.add_item('Half-Elf', 7)
	menu.add_item('Half-Orc', 8)
	menu.add_item('Tiefling', 9)
	

func make_subrace_menu(ID):
	submenu.clear()
	if ID >= 0 and !subraces[ID].empty():
		submenu.add_item("Choose a sub-race!", 0)
		submenu.set_item_disabled(0,true)
		for r in range(subraces[ID].size()):
			submenu.add_item(subraces[ID][r], r+1)
	else:
		submenu.add_item('No Subrace to select!',0)
		submenu.set_item_disabled(0,true)

func set_ability_mods():
	var data = []
	if Race in race_ability_mods:
		data.append(race_ability_mods[Race])
	if Subrace in subrace_ability_mods:
		data.append(subrace_ability_mods[Subrace])
	
	get_parent().get_node('Abilities').set_racial_mods(data)





func _on_race_box_item_selected( ID ):
	ID = int(ID) - 1	#ensure we're dealing with ints, offset for first non-option
	make_subrace_menu(ID)
	Race = menu.get_item_text(ID+1)
	print("Chose "+Race)
	
	Subrace = "None"
			
	set_ability_mods()
	


func _on_subrace_box_item_selected( ID ):
	ID = int(ID) - 1
	if !subraces[ID].empty():
		Subrace = submenu.get_item_text(ID+1)
		print("Chose "+Subrace)
	set_ability_mods()
