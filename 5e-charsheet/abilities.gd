
extends Panel

#Actual ability scores
var scores = {
	'STR':	3,
	'DEX':	3,
	'CON':	3,
	'INT':	3,
	'WIS':	3,
	'CHA':	3
	}

#Calculated ability modifiers
var mods = {
	'STR':	3,
	'DEX':	3,
	'CON':	3,
	'INT':	3,
	'WIS':	3,
	'CHA':	3
	}

#generated modifiers for race/subrace
var race_mods = {
	'STR':	0,
	'DEX':	0,
	'CON':	0,
	'INT':	0,
	'WIS':	0,
	'CHA':	0
	}

#Scores after racial adjustment
var final_scores = {
	'STR':	3,
	'DEX':	3,
	'CON':	3,
	'INT':	3,
	'WIS':	3,
	'CHA':	3
	}
#generated dictionary of label references
var mod_labels = {}
var race_mod_labels = {}
var final_score_labels = {}

var score_boxes = {}



func get_mod(score):
	#Calculate the proper modifier based on ability score
	#Do math..
	var mod = (score - 10)/2
	#Round down before returning
	return int(mod)

func set_mod(s):
	#set the modifier for s ability
	mods[s] = get_mod(final_scores[s])


func get_mod_text(n):
	if n > -1:
		return "+"+str(n)
	return str(n)


func draw_mod(s):
	#Draw modifier info for s ability modifier
	if s in mod_labels:
		var mod = mods[s]
		mod_labels[s].set_text(get_mod_text(mod))

func draw_race_mod(s):
	#Draw racial modifier for s ability
	if s in race_mod_labels:
		var mod = race_mods[s]
		race_mod_labels[s].set_text(get_mod_text(mod))

func draw_final_score(s):
	if s in final_scores:
		var mod = final_scores[s]
		final_score_labels[s].set_text(str(mod))

func set_racial_mods(data):
	#Set Racial mods based on incoming data from Race node
	
	race_mods = {
	'STR':	0,
	'DEX':	0,
	'CON':	0,
	'INT':	0,
	'WIS':	0,
	'CHA':	0
	}

	#grep data
	for mod in data:
		for key in mod:
			race_mods[key] = mod[key]

			set_final_score(key)
			set_mod(key)
			

			draw_final_score(key)
			draw_mod(key)

	for s in race_mods:
		_refresh(s)





func set_final_score(s):
	final_scores[s] = scores[s] + race_mods[s]

func roll_ability():
	#list to hold rolls
	var rolls = []
	#roll 4d6
	for i in range(4):
		rolls.append(round(rand_range(1,6)))
	#sort rolls from low to high
	rolls.sort()	
	#remove lowest roll (first entry)
	rolls.remove(0)
	#int to hold score
	var score = 0
	#sum the remaining three rolls
	for number in rolls:
		score += number
	return score

#Called on init
func _ready():
	#Iterate through each ability
	for s in scores:

		#generate label dictionaries after children are init
		mod_labels[s] = get_node('Modifiers/'+s)
		race_mod_labels[s] = get_node('RaceMods/'+s)
		final_score_labels[s] = get_node('FinalScores/'+s)
		
		#generate spinbox dictionary as well
		score_boxes[s] = get_node('Scores/'+s)
		#draw modifiers to the screen
		_refresh(s)
	
func _refresh(s):
	set_final_score(s)
	set_mod(s)
	draw_race_mod(s)
	draw_final_score(s)
	draw_mod(s)



#Called when an ability score box's value is changed.
#'s' == STRING short-hand ability name ie 'STR', 'DEX', 'CON'..
func _on_spinbox_value_changed( value , s):
	scores[s] = value
	for s in scores:
		_refresh(s)




func _on_Button_pressed():
	for s in scores:
		scores[s] = roll_ability()
		score_boxes[s].set_value(scores[s])
	for s in scores:
		_refresh(s)


