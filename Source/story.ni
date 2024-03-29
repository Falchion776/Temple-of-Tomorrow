"Temple of Tomorrow" by Falchion776

[CONTROLS]
[North, South, East, West, Inside, Outside - (n,s,e,w,in,out) ]
[Inventory - (i) ]
[Look - (l) ]
[Buy - ]
[TALK ???]

[MECHANICS]
[instead of going to ROOM: DO SOMETHING]
[end the story.]
[The strongbox is a locked container. The little steel key unlocks the strongbox. ]
[Price is a kind of value. $10.99 specifies a price. A thing has a price. The price of a thing is usually $0.00. After examining something for sale, say "It can be yours for [the price of the noun]."  - SEE 9.4: FORZEN ASSETS]

[IDEAS]
[The Player has gold and a few starting items that they'll need to use/sell/trade to get into the Temple.]
[The Temple Exterior is hidden in the Forest of Vandor and the player needs to do something to find the Temple.]
[The Witch's Hut is hidden in Sunset Swamp and the player needs to do something to find the Hut.]
[The Temple Doors are locked. The players needs to obtain the Temple Key from the Witch.]
[Glasses of Read Languages that allow you read the Archway which has a clue about how to open the temple.]
[Different kinds of fruit/vegatbles to purchase at the farmer's market. Including magic peach.]
[https://ganelson.github.io/inform-website/book/RB_7_5.html]
[A Day for Fresh Sushi]
[https://intfiction.org/t/help-buying-things-when-they-are-in-a-container/53690]

The player wears cloak. The description of the cloak is "Your old travelling cloak. It has served you well for many years.".
The player carries coin purse. The description of the coin purse is "A new coin sack the Professor gave you for your expidition.".
A gold coin is in the coin purse. The description of the gold coin is “A shiny gold coin. Commonly used as currency everywhere on Luzalis. You should be able to get some change for it”.

The Inn is a room. The description of the Inn is "[if unvisited]Having arrived late in town last night, today is your first day to explore the village of Eastridge and find out more about the Temple of Tomorrow. The Professor did not give you a specific location so from this point on its up to you to locate the temple and recover the Binding Shield. [end if]You find yourself on the steps of the Eastridge's inn. It's an unremarkable building starting to fall into disarry. From here you can see almost the entire village as most of Eastridge is contained on a single road. The Bar is inside. To the North is the General Store. To the South is the Farmer's Market."

The Bar is inside of Inn. "The Bar is empty. Despite your early start, the Bar remains absent of locals. Only the barkeep, Renford Gerard, remains. Chairs remain on top of the tables and bar itself looks freshly cleaned. Your Private Room is upstaris. The rest of the town is outside."

In the bar is a man called Renford Gerard. 
Every turn when the player can see Renford Gerard: say "The barkeep watches you while cleaning a few dirty dishes."

The Private Room is up from the Bar. "A plain yet clean room. You've travelled light so there's very little clutter left in the room. The Bar is downstairs."

The General Store is north of the Inn. The description of the General Store is "The largest building in town. From the windows you can see cluttered rows of various tools, farming supplies, and simple goods. [if unvisited]You're not sure if there will be anything useful to you unless you check inside. [end if] The Store Counter is inside. To the North is the North Roadway. To the South is the Inn."

The Store Counter is inside of General Store. "DESCRIPTION"

In the Store Counter is a man called Ilbert Drogo. 
Every turn when the player can see Ilbert Drogo: say "The shopkeep smirks at you and says: 'What are you buyin'?'"
Ilbert Drogo carries the Lense of Read Language and the Magic Bow.
Instead of giving the gold coin to Ilbert Drogo:
	say "You glance back and forth between the Lense of Read Language and the Magic Bow indescively."
Instead of buying the Lense of Read Language:
	If the player carries the gold coin:
		now Ilbert Drogo carries the gold coin;
		now the player carries the Lense of Read Language;
		now the player carries the silver coin;
		say "The shopkeep chuckles and says: 'Thank you.'";
	otherwise: 
		say "You don't have the gold to purchase the Lense of Read Magic.".
Instead of buying the Magic Bow:
	if the player carries the gold coin:
		now Ilbert Drogo carries the gold coin;
		now the player carries the Magic Bow;
		now the player carries the silver coin;
		say "The shopkeep chuckles and says: 'Thank you.'";
	otherwise: 
		say "You don't have the gold to purchase the Magic Bow.".
[Need different dialogue if the player had already bought the item]

The Farmer's Market is south of the Inn. "A score of stalls line the road. Despite being the busiest part of town, only a dozen people mill about the market. The energy is low, but in a relaxed war of people just going about their everyday. "

In the Farmer's Market is a man called Crazy Joe. 
Every turn when the player can see Crazy Joe: say "Glancing around the market you spot a lone stall selling peaches. As you lock eyes with the vendor you meet a soul that has gone mad."
Crazy Joe carries a Peach, a silver coin, and a bronze coin. The Peach is edible.
Instead of giving the gold coin to Crazy Joe:
	now Crazy Joe carries the gold coin;
	now the player carries the Peach;
	now the player carries the silver coin;
	say "After handing you some change, Crazy Joe cackled with delight at his shiny new golden coin." 
Instead of giving the silver coin to Crazy Joe:
	now Crazy Joe carries the silver coin;
	now the player carries the Peach;
	now the player carries the bronze coin;
	say "After handing you some change, Crazy Joe cackled with delight at his shiny new silvery coin." 
Instead of giving the bronze coin to Crazy Joe:
	now Crazy Joe carries the bronze coin;
	now the player carries the Peach;
	say "Crazy Joe cackled with delight at his shiny new bronze coin." 
Instead of buying the Peach:
	if the player carries the bronze coin, try giving the bronze coin to Crazy Joe;
	if the player carries the silver coin, try giving the silver coin to Crazy Joe;
	if the player carries the gold coin, try giving the gold coin to Crazy Joe;
	otherwise say "You have no money."
[You can still buy the peach after you already have one so I need to add a check for that, but otherwise the change system works.]

The Village Gates is south of Farmer's Market. "The Village Gates are simple wooden structures more for keeping wild animals at bay than bandits or the Horde. Oaken walls extend from either side encompassing the village. The only other object of intrest here is an old stonearchway "

In the Village Gates is a man called Beyton Betan. 
Every turn when the player can see Beyton Betan: say "The Captain of the Guard is currently standing watch. You can feel his glaze following you."

[[if HASITEM] reading: _.[end if]. [if DOESNOTHAVEITEM] a strange, unreadable language is incribed upon it.[end if] To the South if the Roadway. To the North is Farmer's Market.]

The South Roadway is south of Village Gates. "From the outisde, the village is nothing impressive, seemingly just another town in what should be a long line of farmering towns. However, thanks to the Horde, this town is the farthest north settlement still in existence. The closest town, Cereshold, is nearly a week long journey back south. And though you wish to return to cilvilzation you still have work to do here. To the North is the Village Gates. To the West is Sunset Swamp."

The Sunset Swamp is west of South Roadway. "As you leave the town and enter into the swamp the smell, unnoticeable from inside the town walls, hits your nostrils and makes you pause for a moment before you recover and continue on. The bugs start to swarm you as plunge deeper into the dense folege and slimy muck."

[No direction because I want some king of fog/zelda 1 lost woods style secrete here]

The Small Pond is west of Sunset Swamp. "Navigating your way through the mysterious swamp you come upon a small hut. It's an old wooden strcutre, built over a small pond and hoisted above the water by stilts. It’s close enough to the edge of the swamp that with a few simple hops across the swamp you can make it to the hut. The Witch's Hut is Inside. To the East is Sunset Swamp."

The Witch's Hut is inside of the Small Pond. "As you enter the hut it takes a moment for your eyes to adjust to the darkness. You find a cluttered, homey space. In the center of the hut is a large, black, cauldron currently cold and empty. The walls of the hut are covered with shelves of knick knacks and what seem to be spell ingredients."

In the Witch's Hut is a woman called the Witch. 
Instead of examining the Witch for the first time:
	now the printed name of the Witch is "Maeve Greenwood";
	now the Witch is proper-named;
	say "You peer at the Witch a bit more closely and realize that it's Maeve Greenwood." 
Understand "Maeve Greenwood" as the Witch when the Witch is proper-named.
Every turn when the player can see the Witch: say "From out of the darkness off the corner a old dragonborn woman leans forward in her chair and slash you a toothy grin."
[I still want to edit this so that the player learns more about Maeve through rumors in the town, but for a moment it works fine in character since the player is supposed to be Sabrina Kalla.]

The North Roadway is north of General Store. "As you step out beyond the walls of village you come to a realization. With each step you take you get closer and closer to Rema, the old imperial capital. No dubt the ruins are crawling with member of the Horde, but still, you can't help but shake off the feeling nostalgia. To the East is the Forest of Vandor. To the South is the General Store."

The Forest of Vandor is east of North Roadway. "Stepping off the road you enter the treeline and with it the mystical forest of Vandor. Quickly the light of the day fades as the dense canopy envlopes you. There is no trail to follow, just your instincts.[if unvisited] Breifly you pause, considering all the tall tales you've heard of otherworldly creatures that stalk the brush, strange lights and shapes that trap lost hunters, and mysterious and often cruel fey that are rumored to live at the heart of the forest. You shake off your fears, this close to the edge of the woods you shouldn't run into anything too unusual, but just in case you begin to walk ever so slightly faster.[end if] All around you is an endless vista of oak and pine."

[No direction because I want some king of fog/zelda 1 lost woods style secrete here]

The Temple Exterior is northeast of Forest of Vandor. "You your march through the forest continues, you finaly spot a clearing. Dashing forward you come across old foundations and ruins of what you assume to be a town. As you navigate your way around the ruins you come to one building still standing. It appears to be a simple one level story building with a church-like aesthetic, but without the stained glass windows or tall towers that you would normally see on a church. This is it. This is the Temple of Tomorrow."

[As you approach the entrance you find the temple has a large obsidian door with a single pyramid lock in it.]