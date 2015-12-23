
extends Node

var table = {
	#Barbarian
	0:	{
		'name': 'Barbarian',
		'hit-die':	12,
		'primary-ability':	'STR',
		'proficiencies':
			{
				'saves':	['STR', 'CON'],
				'armor':	['light','medium','shields'],
				'weapons':	['simple','martial'],
			}, #end of proficiencies
		}, #end of class

	#Bard
	1:	{
		'name': 'Bard',
		'hit-die':	8,
		'primary-ability':	'CHA',
		'proficiencies':
			{
				'saves':	['DEX', 'CHA'],
				'armor':	['light'],
				'weapons':	['simple',
							'hand crossbow', 
							'longsword',
							'rapier',
							'shortsword' ],
			}, #end of proficiencies
		}, #end of class

	#Cleric
	2:	{
		'name': 'Cleric',
		'hit-die':	8,
		'primary-ability':	'WIS',
		'proficiencies':
			{
				'saves':	['WIS', 'CHA'],
				'armor':	['light','medium','shields'],
				'weapons':	['simple'],
			}, #end of proficiencies
		}, #end of class

	#Druid
	2:	{
		'name': 'Druid',
		'hit-die':	8,
		'primary-ability':	'WIS',
		'proficiencies':
			{
				'saves':	['INT', 'WIS'],
				'armor':	['light','medium','shields'],
				'weapons':	['club',
							'dagger',
							'dart',
							'javelin',
							'mace',
							'quarterstaff',
							'scimitar',
							'sickle',
							'sling',
							'spear'],
			}, #end of proficiencies
		}, #end of class

	#Fighter
	3:	{
		'name': 'Fighter',
		'hit-die':	10,
		'primary-ability':	'STR',
		'proficiencies':
			{
				'saves':	['STR', 'CON'],
				'armor':	['light','medium', 'heavy','shields'],
				'weapons':	['simple','martial'],
			}, #end of proficiencies
		}, #end of class

	} #end of table


