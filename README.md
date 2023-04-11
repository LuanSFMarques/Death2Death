# Death2Death GAME

Hi user! Here you'll find my first attempt at producing a game entirely in Ruby and using only a single .rb code file.
This project is somewhat amateurish and aims to test my new knowledge of the language as a beginner :)

Without further ado, here's a complete guide to the game!

# What is this game about?

This is a game inspired by old rpg's, where everything used to be just codes on the screen that basically drive the player's creativity to imagine the complete scenario of that old dated game.

Here you control a mage whose objective is to kill death itself. For that, you'll have to kill several monsters and 2 bosses using very basic and familiar spells...

# Spells and Monsters

The spells available in the game are:
- fire
- water
- ice
- poison
- carnal

Each of them offers critical damage to that type of monster of a certain element. 
All of them are weak to a specific spell, so the player must analyze their name and conclude which spell should attack their weak point.

There are a total of 5 types of monsters:
- ice
- fire
- water
- carnal
- cursed

Each monster type has the following weaknesses:
- ice <---- fire
- fire <---- water
- water <---- ice
- carnal <---- poison
- cursed <---- carnal

In summary, if a FIRE monster receives data from a WATER spell, it will suffer a critical hit. 
This type of damage almost always kills the monster without it even touching you, since the player always has the right to attack first.

# Weapons

So, you must be thinking... "Is there any progressive evolution in this game?"
In a way, yes! It's a very simple mechanic, let's see below..

All monsters you defeat (with the exception of bosses) give you points towards the "kill" count.
With every certain amount of kills, you evolve your staff (weapon in which you cast your spells) increasing base damage and critical damage!

See below all available weapons in the game:

1. "Wood Staff" - Base dmg: 5 , Crit dmg: 10
2. "Iron Staff" - Base dmg: 8 , Crit dmg: 12
3. "Gold Staff" - Base dmg: 10 , Crit dmg: 15
4. "Stapphire Staff" - Base dmg: 10 , Crit dmg: 18
5. "Blue Beast Crystal" - Base dmg: 15 , Crit dmg: 20
6. "Death's Eye" - Base dmg: 20 , Crit dmg: 30

Next, the amount of kills that each weapon requires for you to conquer it:

1. 0 kills
2. 7 kills
3. 10 kills
4. 16 kills
5. 26 kills
6. 31 kills

# Monster names

Here I will list all monsters and their names:

Ice: 
-    1. "Frozen Golem"
-    2. "Ice warrior"
-    3. "Chilly Homunculus"
-    4. "Cursed Snow Man"
-    5. "Frigid Demon"
Fire:
-    6. "Burnt King"
-    7. "Lava Slime"
-    8. "Blazing Creep"
-    9. "Hell Servant"
-    10. "Boiling Golem"
Water:
-    11. "Aquatic Being"
-    12. "Kraken"
-    13. "Blue Leviathan"
-    14. "Brisk Breeze"
-    15. "Sailor Zombie"
Carnal:    
-    16. "Agile Corpses"
-    17. "Worldly Lord"
-    18. "Meat Body"
-    19. "Bloody Sinner"
-    20. "Greasy Mouse"
Cursed:
-    21. "Apparition"
-    22. "Black ghost"
-    23. "Hideous Skull"
-    24. "Living Paintings"
-    25. "Red Eye"






