
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
				}, #end of subrace
			1:	{
				'name':		'Mountain Dwarf',
				'ability-mod':	{'STR': 2},
				'traits':	[
							'Dwarven Armor Training'
							],
				}, #end of subrace
			}, #end of subraces
		}, #end of race
	
	#Elf
	1:	{
		'name':		'Elf',
		'size':		'medium',
		'speed':	30,
		'ability-mod':	{'DEX': 2},
		'traits':		[
						'Keen Senses',
						'Fey Anscestry',
						'Trance',
						],
		'languages':	['Common', 'Elven'],
		'sub-races':	{
			0:	{
				'name':		'High Elf',
				'ability-mod':	{'INT': 1},
				'traits':	[
							'Darkvision',
							'Elf Weapon Training',
							'Cantrip',
							'Extra Language'
							],
				}, #end of subrace
			1:	{
				'name':		'Wood Elf',
				'ability-mod':	{'WIS': 1},
				'traits':	[
							'Darkvision',
							'Elf Weapon Training',
							'Fleet of Foot',
							'Mask of The Wild'
							],
				}, #end of subrace
			2:	{
				'name':		'Dark Elf',
				'ability-mod':	{'CHA': 1},
				'traits':	[
							'Superior Darkvision',
							'Drow Weapon Training',
							'Sunlight Sensitivity',
							'Drow Magic'
							],
				}, #end of subrace
			} #end of subraces
		}, #end of race

	} #end of table


