// Default type
/datum/reagent/consumable/cum/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	. = ..()

	// Check for semen-based quirks
	handle_secretion_quirks(affected_mob)

// Female type
/datum/reagent/consumable/femcum/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	. = ..()

	// Check for semen-based quirks
	handle_secretion_quirks(affected_mob)

// Proc for Concubus and D4C
/datum/reagent/consumable/proc/handle_secretion_quirks(mob/living/carbon/affected_mob)
	// Check for Concubus quirk
	if(HAS_TRAIT(affected_mob, TRAIT_CONCUBUS))
		// Add nutrition
		affected_mob.adjust_nutrition(nutriment_factor)

		// Continue processing
		current_cycle++

	// Check for D4C craving trait
	if(HAS_TRAIT(affected_mob,TRAIT_DUMB_CUM_CRAVE))
		// Define quirk entry
		var/datum/quirk/dumb_for_cum/quirk_target = locate() in affected_mob.quirks

		// Remove reset timer
		quirk_target?.uncrave()
