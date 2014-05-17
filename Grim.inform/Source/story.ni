"Grim" by Jason Lautzenheiser

Use no scoring and full-length room descriptions.
Use American dialect.

Volume - Bibliography

The story genre is "Humor".
The story headline is "A pathetic tale".
The story creation year is 2014.
The release number is 1.

Volume - Extensions

Include Basic Screen Effects by Emily Short.
Include Exit Lister by Eric Eve.


Volume - Extensions (not for release)

Include Property Checking by Emily Short.

Volume - Game Settings

Book  - Abouting

Abouting is an action out of world applying to nothing.
Understand "about" as abouting.
Understand the command "credits" or "info" as "about".

Report abouting:
	say "[italic type][Story title][roman type] is copyright © 2014 by Jason Lautzenheiser (jlautz@sssnet.com or visit my blog at http://lautzofif.wordpress.com).  This work may be distributed for free, but not sold or included in any for-profit collection without the written permission from the author.[paragraph break]";
	
Book - Start

After printing the banner text, say "Copyright © 2014, Jason Lautzenheiser."
The time of day is 8:30 pm.

When play begins:
	say "This is what all your training has been for and you're ready.  You can't fail.  You have to reap the harvest tonight.  You've just come from the academy and this is your first solo job.  You've got this.";
	now the left hand status line is "[the player's surroundings] / Moves [turn count]";
	now the right hand status line is "[time of day]";

Book - Setup

Part - Person Stuff

Chapter - Seen / Unseen

A person can be seen or unseen.  A person is usually unseen.

[Every turn (this is the mark people as seen every turn rule)
	now all people in the location are seen.]


Book - Actors

Part - NPC

Dink Bets is a man.  The printed name of Dink Bets is "Dink J. Bets".   Dink Bets is in Dinks-Home.
	
Part - Player

Instead of examining the player, say "Your face is hidden in your long dark robe, only your eyes glow allowing your harvest to see you in the dark of night.  It is actually just a myth that you're a skeleton inside those robes.  You are just really, really skinny.  And pale, don't forget pale."
The robe is worn by the player.  The description is "Standard issue reaper robe, head to toe coverage."

Instead of taking the robe, try taking off the robe.
Instead of dropping the robe, try taking off the robe.
Before taking off the robe, say "You're no where near as frightening showing off your skin and bones."

The scythe is carried by the player.  The description is "The standard grim reaper scythe.  Eight feet long with four foot blade gleaming in the dim light."
Understand "blade" as scythe.

Before dropping the scythe, say "It's what makes you who you are, without it you would just be a weird skinny dude in a robe.  Besides, if you come back without it....well let's just say you don't want to test your theories on that." instead.

The player is in the sandy path.

Book - Locations

Part - Dink Home

Dinks-Homestead is a region.

Chapter - Sandy Path

Sandy Path is a room.  The printed name of sandy path is "Sandy Path". The description of sandy path is "The sandy path leading forward is faintly visible in the low light of the setting sun.  Around you is the endless sand of the desert."
Sandy Path is in Dinks-Homestead.

Chapter - Front Stoop

Front Stoop is a room.  The description of front stoop is "You are standing on the dirt stoop of Dink's home.  A simple roof overhangs this area and a homemade wooden chair sits outside the front door."  Front stoop is in dinks-homestead.  front stoop is east of sandy path.

the front-door is a lockable locked door.  The front-door is east of front stoop.  The description of front-door is "Simple wooden front door."
Understand "front door" or "frontdoor" or "door" as front-door when the location is front stoop.


Chapter - Inside House

Dinks-Home is a room.  The printed name of dinks-home is "Inside Dink's Home".   Dinks-Home is east of front-door.

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



