"Dinner Service" by jtoyama19


The Hot station is a room. It is east of the Prep station. It is north of the Plating station.   Sous vide Ribeye is a thing in the hot station. The description is "A 12oz ribeye steak cooked to a perfect medium rare." Pomme puree is a thing in the hot station. The description is "Pomme puree: essentialy mashed potatoes." 

The Prep station is a room. It is west of the Hot station. It is north of the cold station. it is south of the Walk-in. it is east of the Wine Cellar. 


The cold station is a room. The Cold station is south of the Prep station. It is west of the Plating station. 
Roasted beets is a thing in the Cold station. The description is "A mixture of multi-colored beets that have been roasted in the oven." Vanilla custard is a thing in the Cold station. The description is "A velvety vanilla cream custard." 

The plating station is a room. it is south of the Hot station. It is west of the Break room. It is east of the Cold station. The Beet Salad description is scenery in the Plating station. The description is "Roasted beet salad: ROASTED BEETS tossed with youg SPRING GREENS topped with a BALSAMIC dressing, toasted WALNUTS and GOAT CHEESE." The Ribeye description is scenery in the Plating station. The description is "A sous vide RIBEYE, accompanied by POMME PUREE, and sautéed HERICOTS VERTS topped with a COGNAC BUTTER SAUCE." The Creme Brulee description is scenery in the Plating station. The description is "Madagascar vanilla bean CUSTARD bruleed with whole CANE SUGAR and topped with mixed seasonal FRUIT." 

Balsamic dressing is a thing in the Plating station. The description is "A dark vinaigrette with a distinct intense flavor." Walnuts are a thing in the plating station. The description is " Lightly toasted walnuts chopped into small pieces. A good way to add a different texture to salads." Cognac butter sauce is a thing in the Plating station. The description is "A rich and creamy butter sauce reduction with cognac. It is a wonderful topping for steak." Whole cane sugar is a thing in the Plating station. The description is "An organic suger with a light amber color. The grains are much larger than that of regular white suger." 

The Break room is a room. It is east of the plating station. 

The Walk-in is a room. it is north of the Prep station. Young spring greens is a thing in the walk-in. The description is "A mixture of young spinach, baby arugula, and lettuce. Perfect for a salad to start any meal."  Goat cheese is a thing in the walk-in. The description is "A super creamy cheese with a unique flavor. The color is prestine white and it is wonderful in salads." Hericot verts is a thing in the Walk-in. The description is "Vibrant green french green beans. A little longer and thinner than the average supermarket variety."  Mixed seasonal fruit is a thing in the Walk-in. The description is "A mixture of the freshest fruit that the farmers market has to offer."

The Wine cellar is a room. Wine case is scenery in the Wine cellar. It is a closed and openable container. It is locked and lockable. the description is "A case made from wood and glass pannels. Inside are the best and mose expensive wines in the restaurant." Fine white wine is a thing in the wine case. The description is "A fine white wine imported from France."  Fine red wine is a thing in the wine case. The description is "A fine red wine imported from Italy." Champagne is a thing in the wine case. The description is "A superior champagne imported from France. It is the perfect way to finish off a wonderful meal." The Wine cellar key unlocks the wine case.

The Pass is a room. It is south of the Plating station. 
The Restaurant manager is in the Pass. The description of the manager is "A rather short french man in his late thirties. He is very tightly wound and he takes his job very seriously." The wine cellar key is a thing held by the Restaurant manager.  
The menu is a thing carried by the manager. the description is "Printed in a small font it reads: App is a roasted beet salad. Dinner is a ribeye steak. Dessert is a creme brulee. The first two dishes will be served with a fine red wine and dessert will be served with champagne."
The printed name of menu is "Special Menu" 

The pickup table is scenery in the pass. 

 Instead of asking Manager about "wine cellar key":
	try asking Manager about "key" instead.
Instead of asking Manager about "cellar key":
	try asking Manager about "key" instead.

Talking to is an action applying to one visible thing.
 Understand "Talk to [Manager]" or "Converse with [Manager]" as talking to. 
Instead of talking to the manager:
say "'What do you want!?' he snapps [paragraph break] 'If you need something ask for it.'"

	
Instead of asking Manager about "key":
	If manager is carrying key:
		say "'Excuse me, could I have the wine cellar key?', you ask. [paragraph break] 'Here' he replies as he tosses me the key.";
		move key to player;
	otherwise:
		say "The manager seems angry and snaps 'I already gave you the key'." 
		

Instead of asking Manager about "special menu":
	try asking Manager about "menu" instead.
	
Instead of asking Manager about "menu":
	If manager is carrying menu:
		say "'Hey, whats the special menu for today?' you ask. [paragraph break] 'You should already know it' he snaps back as he reaches into his jacket pocket and hands me the menu. 'Here.'";
		move menu to player;
	otherwise:
		say "The manager seems angry and says 'I already gave you the special menu now go do what your payed to do'."
		
Instead of asking Manager about something:
	say "The manager just frowns at you which you take as a sign to get back to work."
	

The counter is a supporter in the plating station. 

The prep plate is a supporter on the counter. 



Understand "plate" as prepping.
Prepping is an action applying to nothing.
Understand "plate app" and "plate dinner" and "plate dessert" as prepping.

The prepping action has an object called the Substance.
app, dinner, and dessert are edible things. [not that you'll be eating them!]

Setting action variables for prepping:
	let X be a list of objects;
	repeat with item running through things on plate:
		add item to X;
	sort X;
	repeat through the Table of Recipes:
		let Y be the ingredient list entry;
		sort Y;
		if X is Y:
			now the Substance is the result entry.
			
Table of Recipes
ingredient list	result
{beet, dressing, cheese, greens, walnuts, red wine}	app
{ribeye, puree, verts, sauce}	dinner
{custard, sugar, fruit, champagne}	dessert



Check prepping:
	If Substance is nothing:
		say "This is not a correct combination for any of the special menu dishes. [line break]You should try again.";
		stop the action.
		
Carry out prepping:
	say "You put together [list of things on plate].";
	repeat with item running through things on plate:
		remove item from play;
	move the Substance to the player.	
	
Report prepping:
	say "You now have a [a Substance] properly plated. Now take it to the pass!"
