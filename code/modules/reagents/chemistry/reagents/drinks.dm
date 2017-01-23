/datum/reagent/consumable/drink/orangejuice
	name = "Orange juice"
	id = "orangejuice"
	description = "Both delicious AND rich in Vitamin C, what more do you need?"
	color = "#E78108" // rgb: 231, 129, 8
	drink_icon = "glass_orange"
	drink_name = "Glass of Orange juice"
	drink_desc = "Vitamins! Yay!"

/datum/reagent/consumable/drink/orangejuicde/on_mob_life(mob/living/M)
	if(M.getOxyLoss() && prob(30))
		M.adjustOxyLoss(-1*REAGENTS_EFFECT_MULTIPLIER)
	..()

/datum/reagent/consumable/drink/tomatojuice
	name = "Tomato Juice"
	id = "tomatojuice"
	description = "Tomatoes made into juice. What a waste of big, juicy tomatoes, huh?"
	color = "#731008" // rgb: 115, 16, 8
	drink_icon = "glass_red"
	drink_name = "Glass of Tomato juice"
	drink_desc = "Are you sure this is tomato juice?"

/datum/reagent/consumable/drink/tomatojuice/on_mob_life(mob/living/M)
	if(M.getFireLoss() && prob(20))
		M.adjustFireLoss(-1)
	..()

/datum/reagent/consumable/drink/limejuice
	name = "Lime Juice"
	id = "limejuice"
	description = "The sweet-sour juice of limes."
	color = "#365E30" // rgb: 54, 94, 48
	drink_icon = "glass_green"
	drink_name = "Glass of Lime juice"
	drink_desc = "A glass of sweet-sour lime juice."

/datum/reagent/consumable/drink/limejuice/on_mob_life(mob/living/M)
	if(M.getToxLoss() && prob(20))
		M.adjustToxLoss(-1)
	..()

/datum/reagent/consumable/drink/carrotjuice
	name = "Carrot juice"
	id = "carrotjuice"
	description = "It is just like a carrot but without crunching."
	color = "#973800" // rgb: 151, 56, 0
	drink_icon = "carrotjuice"
	drink_name = "Glass of  carrot juice"
	drink_desc = "It is just like a carrot but without crunching."

/datum/reagent/consumable/drink/carrotjuicde/on_mob_life(mob/living/M)
	M.AdjustEyeBlurry(-1)
	M.AdjustEyeBlind(-1)
	switch(current_cycle)
		if(1 to 20)
			//nothing
		if(21 to INFINITY)
			if(prob(current_cycle-10))
				M.disabilities &= ~NEARSIGHTED
	..()

/datum/reagent/consumable/drink/doctor_delight
	name = "The Doctor's Delight"
	id = "doctorsdelight"
	description = "A gulp a day keeps the MediBot away. That's probably for the best."
	reagent_state = LIQUID
	color = "#FF8CFF" // rgb: 255, 140, 255
	drink_icon = "doctorsdelightglass"
	drink_name = "Doctor's Delight"
	drink_desc = "A healthy mixture of juices, guaranteed to keep you healthy until the next toolboxing takes place."

/datum/reagent/consumable/drink/doctors_delight/on_mob_life(mob/living/M)
	if(M.getToxLoss() && prob(20))
		M.adjustToxLoss(-1)
	..()

/datum/reagent/consumable/drink/triple_citrus
	name = "Triple Citrus"
	id = "triple_citrus"
	description = "A refreshing mixed drink of orange, lemon and lime juice."
	reagent_state = LIQUID
	color = "#23A046"
	drink_icon = "triplecitrus"
	drink_name = "Glass of Triplecitrus Juice"
	drink_desc = "As colorful and healthy as it is delicious."

/datum/reagent/consumable/drink/triple_citrus/reaction_mob(mob/living/M, method=TOUCH, volume)
	if(method == INGEST)
		M.adjustToxLoss(-rand(1,2))

/datum/reagent/consumable/drink/berryjuice
	name = "Berry Juice"
	id = "berryjuice"
	description = "A delicious blend of several different kinds of berries."
	color = "#863333" // rgb: 134, 51, 51
	drink_icon = "berryjuice"
	drink_name = "Glass of berry juice"
	drink_desc = "Berry juice. Or maybe its jam. Who cares?"

/datum/reagent/consumable/drink/poisonberryjuice
	name = "Poison Berry Juice"
	id = "poisonberryjuice"
	description = "A tasty juice blended from various kinds of very deadly and toxic berries."
	color = "#863353" // rgb: 134, 51, 83
	drink_icon = "poisonberryjuice"
	drink_name = "Glass of poison berry juice"
	drink_desc = "A glass of deadly juice."

/datum/reagent/consumable/drink/poisonberryjuice/on_mob_life(mob/living/M)
	M.adjustToxLoss(1)
	..()

/datum/reagent/consumable/drink/watermelonjuice
	name = "Watermelon Juice"
	id = "watermelonjuice"
	description = "Delicious juice made from watermelon."
	color = "#863333" // rgb: 134, 51, 51

/datum/reagent/consumable/drink/lemonjuice
	name = "Lemon Juice"
	id = "lemonjuice"
	description = "This juice is VERY sour."
	color = "#863333" // rgb: 175, 175, 0
	drink_icon = "lemonglass"
	drink_name = "Glass of lemonjuice"
	drink_desc = "Sour..."

/datum/reagent/consumable/drink/grapejuice
	name = "Grape Juice"
	id = "grapejuice"
	description = "This juice is known to stain shirts."
	color = "#993399" // rgb: 153, 51, 153

/datum/reagent/consumable/drink/banana
	name = "Banana Juice"
	id = "banana"
	description = "The raw essence of a banana."
	color = "#863333" // rgb: 175, 175, 0
	drink_icon = "banana"
	drink_name = "Glass of banana juice"
	drink_desc = "The raw essence of a banana. HONK"

/datum/reagent/consumable/drink/banana/on_mob_life(mob/living/M)
	if((ishuman(M) && M.job in list("Clown") ) || issmall(M))
		M.adjustBruteLoss(-1)
		M.adjustFireLoss(-1)
	..()

/datum/reagent/consumable/drink/nothing
	name = "Nothing"
	id = "nothing"
	description = "Absolutely nothing."
	drink_icon = "nothing"
	drink_name = "Nothing"
	drink_desc = "Absolutely nothing."

/datum/reagent/consumable/drink/nothing/on_mob_life(mob/living/M)
	if(ishuman(M) && M.job in list("Mime"))
		M.adjustBruteLoss(-1)
		M.adjustFireLoss(-1)
	..()

/datum/reagent/consumable/drink/potato_juice
	name = "Potato Juice"
	id = "potato"
	description = "Juice of the potato. Bleh."
	nutriment_factor = 2 * REAGENTS_METABOLISM
	color = "#302000" // rgb: 48, 32, 0
	drink_icon = "glass_brown"
	drink_name = "Glass of  potato juice"
	drink_desc = "Who in the hell requests this? Gross!"

/datum/reagent/consumable/drink/milk
	name = "Milk"
	id = "milk"
	description = "An opaque white liquid produced by the mammary glands of mammals."
	color = "#DFDFDF" // rgb: 223, 223, 223
	drink_icon = "glass_white"
	drink_name = "Glass of milk"
	drink_desc = "White and nutritious goodness!"

/datum/reagent/consumable/drink/milk/on_mob_life(mob/living/M)
	if(M.getBruteLoss() && prob(20))
		M.adjustBruteLoss(-1)
	if(holder.has_reagent("capsaicin"))
		holder.remove_reagent("capsaicin", 2)
	..()

/datum/reagent/consumable/drink/milk/soymilk
	name = "Soy Milk"
	id = "soymilk"
	description = "An opaque white liquid made from soybeans."
	color = "#DFDFC7" // rgb: 223, 223, 199
	drink_name = "Glass of soy milk"
	drink_desc = "White and nutritious soy goodness!"

/datum/reagent/consumable/drink/milk/cream
	name = "Cream"
	id = "cream"
	description = "The fatty, still liquid part of milk. Why don't you mix this with sum scotch, eh?"
	color = "#DFD7AF" // rgb: 223, 215, 175
	drink_name = "Glass of cream"
	drink_desc = "Ewwww..."

/datum/reagent/consumable/drink/milk/chocolate_milk
	name = "Chocolate milk"
	id ="chocolate_milk"
	description = "Chocolate-flavored milk, tastes like being a kid again."
	color = "#85432C"

/datum/reagent/consumable/drink/hot_coco
	name = "Hot Chocolate"
	id = "hot_coco"
	description = "Made with love! And coco beans."
	nutriment_factor = 3 * REAGENTS_METABOLISM
	color = "#403010" // rgb: 64, 48, 16
	adj_temp_hot = 5
	drink_icon = "hot_coco"
	drink_name = "Glass of hot coco"
	drink_desc = "Delicious and cozy"

/datum/reagent/consumable/drink/coffee
	name = "Coffee"
	id = "coffee"
	description = "Coffee is a brewed drink prepared from roasted seeds, commonly called coffee beans, of the coffee plant."
	color = "#482000" // rgb: 72, 32, 0
	nutriment_factor = 0
	adj_dizzy = -5
	adj_drowsy = -3
	adj_sleepy = -2
	adj_temp_hot = 25
	overdose_threshold = 45
	addiction_chance = 1 // It's true.
	heart_rate_increase = 1
	drink_icon = "glass_brown"
	drink_name = "Glass of coffee"
	drink_desc = "Don't drop it, or you'll send scalding liquid and glass shards everywhere."

/datum/reagent/consumable/drink/coffee/on_mob_life(mob/living/M)
	if(holder.has_reagent("frostoil"))
		holder.remove_reagent("frostoil", 5)
	if(prob(50))
		M.AdjustParalysis(-1)
		M.AdjustStunned(-1)
		M.AdjustWeakened(-1)
	..()

/datum/reagent/consumable/drink/coffee/overdose_process(mob/living/M, severity)
	if(volume > 45)
		M.Jitter(5)

/datum/reagent/consumable/drink/coffee/icecoffee
	name = "Iced Coffee"
	id = "icecoffee"
	description = "Coffee and ice, refreshing and cool."
	color = "#102838" // rgb: 16, 40, 56
	adj_temp_hot = 0
	adj_temp_cool = 5
	drink_icon = "icedcoffeeglass"
	drink_name = "Iced Coffee"
	drink_desc = "A drink to perk you up and refresh you!"

/datum/reagent/consumable/drink/coffee/soy_latte
	name = "Soy Latte"
	id = "soy_latte"
	description = "A nice and tasty beverage while you are reading your hippie books."
	color = "#664300" // rgb: 102, 67, 0
	adj_sleepy = 0
	adj_temp_hot = 5
	drink_icon = "soy_latte"
	drink_name = "Soy Latte"
	drink_desc = "A nice and refrshing beverage while you are reading."

/datum/reagent/consumable/drink/coffee/soy_latte/on_mob_life(mob/living/M)
	..()
	M.SetSleeping(0)
	if(M.getBruteLoss() && prob(20))
		M.adjustBruteLoss(-1)

/datum/reagent/consumable/drink/coffee/cafe_latte
	name = "Cafe Latte"
	id = "cafe_latte"
	description = "A nice, strong and tasty beverage while you are reading."
	color = "#664300" // rgb: 102, 67, 0
	adj_sleepy = 0
	adj_temp_hot = 5
	drink_icon = "cafe_latte"
	drink_name = "Cafe Latte"
	drink_desc = "A nice, strong and refreshing beverage while you are reading."

/datum/reagent/consumable/drink/coffee/cafe_latte/on_mob_life(mob/living/M)
	..()
	M.SetSleeping(0)
	if(M.getBruteLoss() && prob(20))
		M.adjustBruteLoss(-1)

/datum/reagent/consumable/drink/coffee/cafe_latte/cafe_mocha
	name = "Cafe Mocha"
	id = "cafe_mocha"
	description = "The perfect blend of coffe, milk, and chocolate."
	color = "#673629"
	drink_name = "Cafe Mocha"
	drink_desc = "The perfect blend of coffe, milk, and chocolate."

/datum/reagent/consumable/drink/tea
	name = "Tea"
	id = "tea"
	description = "Tasty black tea: It has antioxidants. It's good for you!"
	color = "#101000" // rgb: 16, 16, 0
	nutriment_factor = 0
	adj_dizzy = -2
	adj_drowsy = -1
	adj_sleepy = -3
	adj_temp_hot = 20
	drink_icon = "glass_brown"
	drink_name = "Glass of Tea"
	drink_desc = "A glass of hot tea. Perhaps a cup with a handle would have been smarter?"

/datum/reagent/consumable/drink/tea/on_mob_life(mob/living/M)
	if(M.getToxLoss() && prob(20))
		M.adjustToxLoss(-1)
	..()

/datum/reagent/consumable/drink/tea/icetea
	name = "Iced Tea"
	id = "icetea"
	description = "No relation to a certain rap artist/ actor."
	color = "#104038" // rgb: 16, 64, 56
	adj_temp_hot = 0
	adj_temp_cool = 5
	drink_icon = "icetea"
	drink_name = "Iced Tea"
	drink_desc = "No relation to a certain rap artist/ actor."

/datum/reagent/consumable/drink/bananahonk
	name = "Banana Mama"
	id = "bananahonk"
	description = "A drink from Clown Heaven."
	color = "#664300" // rgb: 102, 67, 0
	drink_icon = "bananahonkglass"
	drink_name = "Banana Honk"
	drink_desc = "A drink from Banana Heaven."

/datum/reagent/consumable/drink/bananahonk/on_mob_life(mob/living/M)
	if((ishuman(M) && M.job in list("Clown") ) || issmall(M))
		M.adjustBruteLoss(-1)
		M.adjustFireLoss(-1)
	..()

/datum/reagent/consumable/drink/silencer
	name = "Silencer"
	id = "silencer"
	description = "A drink from Mime Heaven."
	color = "#664300" // rgb: 102, 67, 0
	drink_icon = "silencerglass"
	drink_name = "Silencer"
	drink_desc = "A drink from mime Heaven."

/datum/reagent/consumable/drink/silencer/on_mob_life(mob/living/M)
	if(ishuman(M) && M.job in list("Mime"))
		M.adjustBruteLoss(-1)
		M.adjustFireLoss(-1)
	..()