
"Vividity" by Ben Scott.
The release number is 1. The story creation year is 2015. 
The story headline is "An exercise in adventure puzzles and overwriting". 
The story genre is "Science Fiction / Adventure".

Include Basic Screen Effects by Emily Short.
Include Basic Help Menu by Emily Short.
Include Locksmith by Emily Short.
Include Punctuation Removal by Emily Short.
Include Ordinary Room Description by Emily Short.
Include Boilerplate by Ben Scott.
Include Plurality by Emily Short.
[Include Automap by Mark Tilford.]
Use the serial comma and memory economy.
Use brief room descriptions.

Chapter 1 - Taxonomy

A plant is a kind of thing.
A plant is either identified or unidentified. A plant is usually unidentified.
Understand "leaf" or "shrub" or "flora" as a plant.
Understand "plants" or "florae" or "floras" as the plural of plant.
The description of a plant is usually "[the noun] is green. It has leaves. Move on with your life."

A herb is a kind of plant that is edible. 
Understand "flower" or "weed" or "ingredient" as herb.
Understand "herbs" or "flowers" or "weeds" or "ingredients" as the plural of herb.
The description of a herb is usually "You recognize [the noun] as a potentially useful herb, but you aren't sure what it is. Perhaps you can find someone who does."

nightshade is a kind of herb. The printed name of nightshade is "[if the noun is identified]nightshade sprig[else]mystery flower".
The description is usually "[if the noun is identified]This is nightshade, a medicinal herb containing a very powerful psychostimulant. It is used in elixirs of speed. [end if]The flowers are a brilliant shade of purple, their petals fade to black around the edges. The leaves are quite round. They seem to dart around, as if the wind is pushing them faster. [if the noun is unidentified]There are quite a few varieties of this plant that you've heard about, and while some are known to improve concentration and quell appetite, some varieties are more potent, and possibly dangerous. You don't know enough about botany to really tell if these flowers can kill you. Perhaps you can find someone who does.[end if]".
Instead of eating the Nightshade:
	say "[italic type]You eat one of the flowers. It's sweetly salty, and tingles your tongue. Before you're able to swallow all the petals, your heartrate doubles, and your mouth gets dry. You stumble around a bit.[roman type]";
	The nightshade metabolizes in 3 turns from now.
At the time when the nightshade metabolizes:
	say "[italic type]You're elated now, and you're getting uncomfortably tachycardic.[roman type]";
	the nightshade incapacitates in 2 turns from now.
At the time when the nightshade incapacitates:
	say "[italic type]You fall to your knees, twitching. Your heart feels like it's deflating, sloppily pushing blood all over the place, and skipping more and more beats. You tingle and twitch as your entire body is deprived of oxygen. You struggle back to your feet.[roman type]";
	the nightshade kills in 1 turns from now;
At the time when the nightshade kills:
	end the story saying "[italic type]Your heart rolls to a stop as you slip into death, your whole body humming.[roman type]".
		
After going to The Gallery, display the boxed quotation
	"A hallowed thing— - to drop a life -
	Into the purple well— -
	Too plummetless— - that it return— -
	Eternity— until— -
	F 307 (1862) 271";

A tree is a kind of plant.
Understand "arbor" or "conifer" or "timber" as tree.
Understand "trees" or "arbors" or "conifers" or "timbers" as the plural of tree.
The description of a tree is usually "'I spy... something... green.' 'Tree?' 'ahh..' 'Ok, my turn. I spy... eh, a vertical log-' 'Tree.' 'Yeah.'";

Chapter 2 - Vivid Beginnings

Prologue is a Scene. Prologue begins when play begins. 
Prologue ends when Prologue Flag is zero.
Prologue Flag is a number that varies. Prologue Flag is one.
To end Prologue: now the Prologue Flag is zero.

Instead of looking when collecting names: do nothing.
Rule for printing the banner text when collecting names: do nothing.
Rule for constructing the status line when collecting names: do nothing.

Instead of looking when the gender of the player is unknown: do nothing.
Rule for printing the banner text when the gender of the player is unknown: do nothing.
Rule for constructing the status line when the gender of the player is unknown: do nothing.

When Prologue begins:
	say "Rosy mist departs around a falling man. Extravagant kinematics close his fate tightly. The edge of the canyon's shadow dances along uneven crags, casting a sharp shadow between lines of scarlet and thulian, traced down through cracks by a man now crumpled into a outcropped ravine. Some of the onlookers squirm at the sight; others are significantly more [italic type]moved[roman type] by it. Before too long, and after the catwalk underwent a thorough scrubbing down by the real heroes in this situation, the crowd thinned. Authorities came and went; nobody saw who shot him. the man and his killer were at the cliff's edge, and the outlook platform was more than halfway down into the canyon. There was nothing to be done for the poor man, so many began to leave the platform, in disgust or boredom.

	One woman didn't leave. She stood, transfixed by the coral and mauve stains on the rocks as a sunset of rainbows fell on the canyon. Evening faded the canyon's vibrance, but she still had them glowing within her: she had his colors in her blood, too. From that evening on, varicolored palettes of light would race through her mind, the tones and shades, she would keep for the rest of her days.

	'Adaline, let's go.'
	
	Gentiana, getting impatient, prodded at her friend. She had given Ada [italic type]more[roman type] than enough time to get out of her trance, and it was getting late. 'Come on, Adaline, we have to go.' Adaline absentmindedly stumbled away with her, as a ragged moon began it's path up through the sky.";
	Wait for any key;
	Clear the screen;
	display the boxed quotation "Vividity                                           ";
	show the current quotation;
	wait for any key;
	clear the screen;
	End Prologue;
	Now the command prompt is "What will your name be?  ";
	After reading a command when collecting names:
		now the player name is the substituted form of "[the player's command]" in title case;
		now the player forename is word number 1 in the player name;
		now the command prompt is "Are you male or female?  ";
		Reject the player's command;
		
After reading a command when the gender of the player is unknown:
	if the player's command includes "[gender]":
		now the command prompt is "> ";
		now the gender of the player is the gender understood;
		if the gender of the player is masculine, now the player is male;
		if the gender of the player is feminine, now the player is female;
		now the command prompt is "> ";
		clear the screen;
		say "[paragraph break]You shudder awake. If you were a bit more careful, rather, if the room was spinning even a [italic type]little[roman type] bit slower, you might've dodged the doorframe on your way to your porcelain friend. You won't remember why your temple hurts. You seem to wake up [italic type]again[roman type], only to find your face half-covered in the grime on your tiled floor. You begin to get up, but the visceral stack of mistakes you're popping off keep you down. You stagger to your feet, swaying a bit as you try to lock eyes with yourself in the mirror. Your eyes haven't focused yet, and you consider that you might not want to see yourself like this.[paragraph break]Do you look at yourself?  ";
		if the player consents:
			say "[line break][italic type]Dear lord.[roman type][paragraph break]It's less sobering, and more alarming. You turn to start the bath, and then look back at the mirror. You're emaciated, haggard, and -
			
			[italic type]You thrust your face into the running bathwater before you consciously identify what that was in the corner of your mouth.[roman type]
			
			The esophageal burning went away a while ago (you're afriad the nerves there were dissolved by the acid or have [italic type]just plainly given up[roman type]), but it's getting more persistent. You look veritably awful.";
		else:
			say "[line break]Good call. You're already on the verge of impending mental collapse; you don't need to feel [italic type]worse[roman type]. You avoid the mirror like it's a basilisk until you're overabundantly cleaner.";
	say "You make an earnest attempt to clean up. There's a lot of water and scraping, and it doesn't go well. [if the gender of the player is masculine]You shave a solid half of your face properly, and you're just going to have to deal with the fact that the short hairs around your whorl are going to feel weird every time there's wind.[else]You put concealer literally everywhere. You're just going to have to deal with the fact that there are colors on your face now that can't be corrected. Long pants are a foregone conclusion. You consider the surfeit of ways that mascara could go horribly wrong, and without a second thought you walk out of the room to your dresser.[end if]Nicer clothes will at least allow you to masquerade as a well-put-together human being.";
	move the player to the location;
	reject the player's command.

The Terrace is a region. Your Quarters, Outside Quarters, Seaside Cliff, Cliff's Edge, Forest Overlook, Outside Dwelling, Interior Dwelling, Road to the Canyon's Stairway, The Town of Harston, The Cablecar Company, Abandoned Amusement Park, and Harold's Utility Store are in the Terrace.

Your Quarters is a room. "[if visited]You return home. [end if]Your modest abode is a standard-issue dwelling, designed for the unusually harsh conditions that result from being so high up on the Terace. It is made of multiple alloys of metal, and consists of a central, dome-shaped room, and a number of other, more traditionally rectangular rooms branching off from it.[run paragraph on][no line break]". The backpack is in Your Quarters. "Your tattered backpack is here. You typically don't leave home without it.[run paragraph on]".

the door to your quarters is a door. It is outside from Your Quarters and inside from Outside Quarters.

Outside Quarters is northwest of Seaside Cliff. "You're outside your Quarters, which used to be quite well-kept. You haven't applied the sealant in months, and the wind-facing surface has become pitted and slightly rusty. The rails girding your catwalks look better, but the bluing is getting worn. Behind your house is a small dropoff. About half of your dome hangs over the edge, and there's a nice, shady area inside the supporting rods, with herringbone metal steps leading down and around it.[run paragraph on]".

[Like, one day a friar starts coughing, and it never [italic type]really[roman type] goes away, except, you don't have a bubonic friend, or any friends, and this is only going to be a terminal condition for you because you aren't going to stop....[italic type]Adaline was getting worse... was... it couldn't've been more than a week, right? That's about when she left...[roman font] You were actually taken aback when, about a month ago, Gentiana came back carrying her. She was despondent, she just didn't make that much sense. That is about when this all started, right? You have a hard time remembering. You eat something to get that awful taste out of your mouth. It's a horrible process at first because you can't simply throw it up again, you've got to suffer and keep it down until it digests, at least halfway. It's like stomach bootstrapping. This drawn-out agony you're in, [italic type]boy[roman type]. If she hadn't've left last month, you're pretty sure none of this would have happened to you. It just got to be really bad about a week after she came home like... you don't really know what was wrong with her. Her really odd behaviour started that day, and just like hers, your little nightmare [italic type]never really went away[roman type]. It's too far apart: the dopamine rush is so delayed, it's so far away from the agony that Pavlov really can't help you out. A few of your favorite, magical pills are on the counter, and you take one with your coffee. It isn't depression or pessimism at this point to assume that you're going to die if you don't find her, it's just a matter of realistic expectations. She's been gone for probably, about a week or so, to the best of your memory. You're going to need to be sharp to find her, too. You reflect some more after eating, and the mirror begins to tell you you're doing better than you feel. Colors slowly sneak into the room, getting richer as you light the burner again for some more coffee. You're beginning to wake up. You shower for a long time. It's not leisure, it's just a proportional amount of time, all things considered. The warmth comes alive, and the mirror looks you up and down, and seems to reflect positively on you, now. You've lost a few pounds, your teeth look whiter... The sun is getting warmer and brighter extremely quickly. [italic type]Why is it so warm, there's frost out there![roman type] You're excited. You're going to find Adaline today, and everything will be sunshine and rainbows. You'll grow old together and become rich and famous, which is, at least as it was explained to you, how this works.  [italic type]Oh right, that's what was wrong with her, she didn't seem to understand how life works.[roman type] You've waited way too long, you're not sure where the last month of your life went, but you're going to fix it all today.[end if]"] [Tierra Del Fuego, Patagonia, Argentina]

Seaside Cliff is a room. "The seaside terrace is far enough above the patchy trees and dells to afford a remarkable view of the ocean and sky. A ragged moon dusts some drying marshes to the southwest, and to the west lies a cascade of lavender and mahogany flora, gushing from marble cliffsides.[if unvisited] A serene breeze rolls over the terrace and eddies overtop the northwest trees, which are almost flush with the plateau.[end if]".

The leaflet is here. "A leaflet is held down by a rock, an edge fluttering in the breeze." The description is "The leaflet is quite short, and has a tear along the top edge. It reads '... the most amazing territory ever seen by mortals. No computer should be without one!' At the end is what looks like a serial number, [fixed letter spacing]69105[variable letter spacing]. Typical."

Cliff's Edge is southeast of Seaside Cliff. "There's enough of a wind coming up the edge of the cliff to lift a small animal. Looking down over the white and vaguely purple chalk, you see an isolated cove, locked on two sides by tall rocks. There is a sand dune in front of a ravine-like opening, which seems to run under the cliffs somewhere to the north." 

There are 5 nightshade in Cliff's Edge.
		
Forest Overlook is southwest of Seaside Cliff. "At a gentle angle, the ocean-facing side of the plateau slides down to form a nice, shady spot beneath the trees. From here, the gargantuan arbors string all the way up above the raised rock of the terrace. There are tufts of branches almost within reach at the edge of the cliff.". A round fruit is here. "Down along the cliff's edge, one of the more colorful trees seems to have dropped some round fruits to the canyon's surface." It is edible. The description is "This strange fruit is almost spherical. It's slightly translucent, and it's fuzzy skin seems to opalescently bounce light around inside it. It sloshes about when you move it, and it seems to move unusually slowly."

Outside Dwelling is south of Seaside Cliff. "Halfway to the edge of the plateau is a small, dome-like dwelling, with some paths running between it and a small garden behind it, and another area downhill. It is noisily rusted around the rounded main roof, but the seaside wind has somewhat polished the east hemisphere." A porthole is here. It is a door. The porthole is inside from Outside Dwelling and outside from Interior Dwelling. Understand "door / hatch / entrance" as porthole. [It is locked.] "The front porthole appears to be locked. It is quite sturdy, and there is a sizeable wheel at it's center." The rails are here. They are fixed in place. "The pathways are girded by brass and iron railings, which are sturdily fastened to the herringbone pathways." [Instead of going west, try going inside.]

Interior Dwelling is a room. "The interior of the main room is quite cozy. It is lit dimly, with globes of light forming a lurid image of the inside." The desk is here. It is a supporter. It is fixed in place. "There is a metal-rimmed desk here, with some illegible papers strewn across it's surface.". The set of drafting compasses are on the desk. A dirty bed is here. It is a bed. "The bed is unkempt, and has no pillow. It is raised an unusual distance off the floor."

Emily's Note is on the dirty bed. "There is an exceptionally old note here, with extremely fine and flowing writing on it." 
Instead of examining Emily's Note, display the boxed quotation
	"
	
	A solemn thing - it was - I said -
	A Woman - White - to be -
	And wear - if God should count me fit -
	Her blameless mystery -
	
	F 307 (1862) 271".

Road to the Canyon's Stairway is northeast of Seaside Cliff. "By some wonder of igneous intrusion, the northern edge of the Terrace has a set of 6 stair-like stone batholiths, all following the Terrace's ragged edge.With one exception, they even descend in order. An amalgam of small shops and transportation businesses have made themselves right at home on the terrace surface, and a small residential sector spreads down to the first step."

The Town of Harston is north of Road to the Canyon's Stairway. "This little boomtown has dug itself into the hard sandstone surface of the Terrace. Most of the shops are brimming with life, and the stone streets have been worn to the bare rock by thick rubber wheels and the foot traffic of a very busy people. The stores to the east are so crowded that you'd likely be injured if you tried to buy something there, but the west end is quieter. There is a utilities shop to the west, a closed, nondescript shop to the southwest, and a cablecar service to the northwest." The Utility Shop Door is a door. The Utility Shop Door is west of The Town of Harston and east of Harold's Utility Store. It is scenery. "The door is quite thin, considering the sorts of sandstorms that sometimes blow through here, but Harold doesn't seem too concerned."

Harold's Utility Store is a room. "A large, round man stands in a cacophony of fresh hiking supplies and tools which decrease in quality with the square of the distance from his admittedly long reach." A man called Harold is here. The indefinite article of Harold is "your local".
Every turn when the player can see Harold:
	if a random chance of 1 in 5 succeeds:
		say "Harold [one of]fidgets with a lantern's filament[or]busies himself with a new trinket[or]coughs a bit, and leans back in his squeaking chair[or]looks up at you for a moment, decides you aren't talking to him right now, and looks back down, muttering something about a soldiering board[or]sits back and reflects on his sea of little, material accomplishments[at random].";

The Cablecar Company is a room. "A large, round atrium opens to a chamber which sends and receives cars from a lower stop. The cars arrive in a wide, off-center slot in the dome, and the loading platform wraps around it."

The Cablecar Door is a door and scenery. The Cablecar Door is northwest of The Town of Harston and outside from The Cablecar Company. "This small business's door is welcoming and unassuming."

Abandoned Amusement Park is a room. "You stalk through the closed amusement park you remember so vividly from your childhood. It was a bustling, busy place, with all shapes and colors of people represented, walking around in what would else be socially unacceptable clothing. Those memories stand strong against the erosion of time, but seeing this place now, so broken as it is... it's quite unsettling.".

The Gallery is down from the Cablecar Company. "woah!"

Emily Dickinson is a woman. 
"A solemn thing - it was - I said -
A Woman - White - to be -
And wear - if God should count me fit -
Her blameless mystery -

[fixed letter spacing]F 307 (1862) 271[variable letter spacing]"

[S18.29 very interesting, peepholes and traveling boxes / inventory containers]


