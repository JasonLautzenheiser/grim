"Grim" by Jason Lautzenheiser

Use no scoring and full-length room descriptions.
Use American dialect.

Volume - Bibliography

The story genre is "Humor".
The story headline is "A pathetic tale".
The story creation year is 2020.
The release number is 1.

Volume - Extensions

Include Basic Screen Effects by Emily Short.
Include Exit Lister by Eric Eve.

Volume - Game Settings

Book  - Abouting

Abouting is an action out of world applying to nothing.
Understand "about" as abouting.
Understand the command "credits" or "info" as "about".

Report abouting:
	say "[italic type][Story title][roman type] is copyright © 2020 by Jason Lautzenheiser (lautzenheiser.jason@gmail.com or visit my blog at http://lautzofif.wordpress.com).  This work may be distributed for free, but not sold or included in any for-profit collection without the written permission from the author.[paragraph break]";
	
Book - Start

After printing the banner text, say "Copyright © 2020, Jason Lautzenheiser."
The time of day is 8:30 pm.

When play begins:
	say "This is what all your training has been for and you're ready.  You can't fail.  You have to reap the harvest tonight.  You've just come from the academy and this is your first solo job.  You've got this.";
	now the left hand status line is "[the player's surroundings] / Moves [turn count]";
	now the right hand status line is "[time of day]";

Book - Setup

Part - Game stuff

begin-meet-dink is a truth state that varies.  begin-meet-dink is usually false.

Part - New Kinds

Chapter - Destroyable

A destroyable is a kind of thing.  
A destroyable has some text called the destroyed-name.  The destroyed-name of a destroyable is usually "".   
A destroyable has some text called the destroyed-description.  The destroyed-description of a destroyable is usually "".   
A destroyable can be either destroyed or intact.  A destroyable is usually intact.

Before printing the name of a destroyable:
	if the destroyable is destroyed:
		say the destroyed-name instead.

Before examining a destroyable:
	if the destroyable is destroyed:
		say the destroyed-description instead.

Chapter - Flimsy

A flimsy is a kind of thing.  A flimsy has some text called the action-refusal.  The action-refusal of a flimsy is usually "".  A flimsy is usually fixed in place, undescribed.

To say brush-off of (n - a thing):
	say "You don't need to worry about [if n is plural-named]those[else]that[end if]."

Rule for writing a paragraph about a flimsy (called xx):
	now xx is mentioned.

Instead of examining a flimsy:
	if the initial appearance of the noun is "", say "[brush-off of noun]";
	otherwise say "[initial appearance of the noun][paragraph break]".

instead of doing anything to a flimsy:
	if the action-refusal of the noun is "", say "[brush-off of noun]";
	otherwise say "[action-refusal of the noun][paragraph break]".


Part - Person Stuff

Chapter - Seen / Unseen

A person can be seen or unseen.  A person is usually unseen.

[Every turn (this is the mark people as seen every turn rule)
	now all people in the location are seen.]


Book - Actors

Part - NPC

Chapter - Dink Bets

Dink Bets is a man.  The printed name of Dink Bets is "Dink J. Bets".   Dink Bets is in Inside-Dinks-Home.  The description is "Dink J. Bets is an old man, but looks quite spry for his age."  Understand "soul" as dink bets.

After examining Dink Bets for the first time:
	say "[italic type]You can always look at your orders for more information on Dink.[roman type]."
	
Part - Player

Instead of examining the player, say "Your face is hidden in your long dark robe, only your eyes glow allowing your harvest to see you in the dark of night.  It is actually just a myth that you're a skeleton inside those robes.  You are just really, really skinny.  And pale, don't forget pale."

The player is in the sandy path.

Chapter - Robes

The robe is worn by the player.  The description is "Standard issue reaper robe, head to toe coverage."
Instead of taking the robe, try taking off the robe.
Instead of dropping the robe, try taking off the robe.
Before taking off the robe, say "You're no where near as frightening showing off your skin and bones."

Chapter - Scythe

The scythe is carried by the player.  The description is "The standard issue grim reaper scythe.  Eight feet long with four foot blade gleaming in the dim light."
Understand "blade" as scythe.

Before dropping the scythe, say "It's what makes you who you are, without it you would just be a weird skinny dude in a robe.  Besides, if you come back without it....well let's just say you don't want to test your theories on that." instead.

Chapter - Handbook

The handbook is carried by the player.  The description is "The handbook, titled 'Official Rules and Regulations for all Authorized Grim Reapers' is issued to all first year students."

Rule for printing the name of the handbook while taking inventory: say "Official Grim Reapers Handbook"

Before dropping the handbook, say "You're not even sure that is possible." instead.


Volume - Locations

Book  - Desert

The desert is a backdrop.  The desert is everywhere.  The description of the desert is "The sandy expanse goes on as far as you can see.".
[Instead of going to the desert:
	say "Even with your supernatural powers, you could become hopelessly lost if you venture too far."]

Part - Dink Home

Dinks-Homestead is a region.

Book - Sandy Path

Sandy Path is a room.  The printed name of sandy path is "Sandy Path". The description of sandy path is "The sandy path leading forward is faintly visible in the low light of the setting sun.  Around you is the endless sand of the desert."
Sandy Path is in Dinks-Homestead.

Book - Front Stoop

Front Stoop is a room.  The description of front stoop is "You are standing on the dirt stoop of [Dinks-home].  A simple roof overhangs this area and a homemade [wooden chair] sits off to one side of [the front-door]."  Front stoop is in dinks-homestead.  front stoop is east of sandy path.

dinks-home is a backdrop.  Dinks-home is in front stoop.   Understand "dink's home" or "home" or "house" as dinks-home.  The description of dinks-home is "The house is little more than some [wooden planks] standing upright topped with a [rusty tin roof]."  

The wooden planks are a part of dinks-home.  The description of wooden planks is "The wooden planks uneven and rotten in some places.  You're not sure how they are still holding up the roof."

The rusty tin roof is a part of dinks-home.  The description of rusty tin roof is "The tin roof is rusted through in many places."

Before going east in front stoop:
	if front-door is intact:
		try opening the front-door instead.

Part - Front door

the front-door is a destroyable.  The printed name of front-door is  "front door".    The description of front-door is "Simple wooden front door."  Destroyed-name is "remains of the front door".   The front-door is in front stoop.  The destroyed-description of the front-door is "Nothing more than a pile of dust now.[line break]"

The front-door can be destroyed or intact.   The front-door is  intact.

Understand "front door" or "frontdoor" or "door" as front-door when the location is front stoop.

before opening the front-door:
	say "Even the Grim Reaper has some manners, it would be impolite to just burst in uninvited." instead.
	
before unlocking the front-door with anything: 
	say "When you became the Grim Reaper, you weren't given some sort of magical skeleton key....though that would have been cool." instead.

instead of knocking on  the front-door:
	say "You bang on [the noun], but you hear nothing inside."
	
instead of knocking on  the front-door for the first time:
	say "You bang on [the noun].  You hear a faint rustling from inside the house."

instead of knocking on  the front-door for the second time:
	say "You bang on [the noun] again.  Someone from inside yells, 'Hold on...hold on already, I[']m coming'."

instead of knocking on  the front-door for the third time:
	now begin-meet-dink is true;
	say "You bang on [the noun] again.  'Geez, this one[']s impatient', someone mumbles from just on the other side of the door.[paragraph break]Slowly the door creeks open just enough for an old man to peek out. [paragraph break]'What do you want?' the old man peering out the slightly cracked door asks.[paragraph break]'It[']s your...'[paragraph break]That came out kind of squeeky.  You clear your throat and try again in a more menacing tone.[paragraph break]'It[']s your time Dink Betts.  I[']ve come for your soul.'[paragraph break]Dink, looks at you with those old squinty eyes and a sly grin creeps across his face.[paragraph break]He let[']s out a small chuckle and spits his tobacco at your feet just about hitting the bottom of your robe. [paragraph break]'You[']ll have to come get it, Mr. Reaper.'  And with that he slams the door in your face.".
	
Before taking the front-door:
	say "[if front-door is destroyed]You shift through [the front-door] but nothing is worth taking.[otherwise]As much as it looks like you could rip the door right of the hinges, it is attached better than you thought or perhaps you should have spent more time in physical training at the acadamy." instead.

Before attacking the front-door:
	if meet dink is happening:
		say "[if front-door is intact]You swing your scythe at [the front-door] and [it] disappears in a cloud of dust.[otherwise]You've already done all the damage you can do to the ";
		now the front-door is destroyed instead.
		
Knocking on is an action applying to one thing.
Understand "knock on [something]" or "knock [something]" as knocking on.

Understand the commands "bang" and "tap" and "rap" as "knock".


Part - Wooden Chair

the wooden chair is a an enterable supporter in front stoop.  The description of wooden chair is "The wooden chair is made up of some branches nailed and tied together to make something roughly chair shaped."

Before taking the wooden chair:
	say "The wooden chair is pretty rickety and might not hold together if you move it." instead.

Book - Inside House

Inside-Dinks-Home is a room.  The printed name of Inside-Dinks-Home is "Inside Dink's Home".   Inside-Dinks-Home is east of front stoop.

Volume - Scenes

Book - Meet Dink

Meet Dink is a scene.  Meet Dink begins when begin-meet-dink is true.

Volume - Testing & Debugging (not for release)

Book - Transcripting

To say email:
	say "lautzenheiser.jason@gmail.com".

Include (-
[ CheckTranscriptStatus;
#ifdef TARGET_ZCODE;
return ((0-->8) & 1);
#ifnot;
return (gg_scriptstr ~= 0);
#endif;
];
-).
 
To decide whether currently transcripting: (- CheckTranscriptStatus() -)
 
ignore-transcript-nag is a truth state that varies.
 
After reading a command:
	if the player's command matches the regular expression "^\*+|\;.+":
		if currently transcripting:
			say "Noted.";
		otherwise:
			if ignore-transcript-nag is false:
				say "You've made a comment-style command, but the transcript is off. Type TRANSCRIPT to turn it on, if you wish to make notes.[paragraph break]The long version of this nag will only appear once. You may press any key to continue.";
				wait for any key;
				now ignore-transcript-nag is true;
			else:
				say "(Comment not sent to transcript.)";
		reject the player's command.
		
report switching the story transcript on:
	if currently transcripting:
		say "Thanks for doing this! Email can go to [email].";

check quitting the game when currently transcripting:
	say "Thanks for taking the time to create a transcript.  Please send it to [email] and I'll be grateful.  Thanks!"



