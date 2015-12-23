
extends Panel

var menu



func _ready():
	menu = get_node('class_box')
	
	menu.add_item('Choose a Class!', 0)
	menu.set_item_disabled(0,true)
	menu.add_item('Barbarian', 1)
	menu.add_item('Bard', 2)
	menu.add_item('Cleric', 3)
	menu.add_item('Druid', 4)
	menu.add_item('Fighter', 5)
	menu.add_item('Monk', 6)
	menu.add_item('Paladin', 7)
	menu.add_item('Ranger', 8)
	menu.add_item('Rogue', 9)
	menu.add_item('Sorcerer', 10)
	menu.add_item('Warlock', 11)
	menu.add_item('Wizard', 12)

