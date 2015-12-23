
extends Node

var table = {
	#Dwarf
	0:	{
		'name':		'Dwarf',
		'size':		'medium',
		'speed':	25,
		'ability-mod':	{'CON': 2},
		'traits':		[
						'Darkvision',
						'Dwarven Resilience',
						'Dwarven Combat Training',
						'Tool Proficiency',
						'Stonecunning'
						],
		'languages':	['Common','Dwarven'],
		'sub-races':	{
			0:	{
				'name':		'Hill Dwarf',
				'ability-mod':	{'WIS': 1},
				'traits':	[
							'Dwarven Toughness'
							],
				},
			1:	{
				'name':		'Mountain Dwarf',
				'ability-mod':	{'STR': 2},
				'traits':	[
							'Dwarven Armor Training'
							],
				},
			}, #end of subrace
		}, #end of race
	}


