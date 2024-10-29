/datum/quirk/jiggly_ass
	name = "Buns of Thunder"
	desc = "That pants-stretching, seat-creaking, undie-devouring butt of yours is as satisfying as it is difficult to keep balanced when smacked!"
	value = 0
	gain_text = span_purple("Your butt feels extremely smackable.")
	lose_text = span_purple("Your butt no longer feels like it needs smacking.")
	medical_record_text = "Patient is endowed with a superior posterior."
	mob_trait = TRAIT_JIGGLY_ASS
	icon = FA_ICON_CAKE
	mail_goodies = list (
		/obj/item/food/cake = 1 // You know why
	)
	COOLDOWN_DECLARE(wiggle_cooldown)

/datum/quirk/jiggly_ass/add()
	// Add status effect
	quirk_holder.apply_status_effect(/datum/status_effect/quirk_jiggly_ass)

/datum/quirk/jiggly_ass/remove()
	// Remove status effect
	quirk_holder.remove_status_effect(/datum/status_effect/quirk_jiggly_ass)

// Examine text status effect
/datum/status_effect/quirk_jiggly_ass
	id = "quirk_jiggly_ass"
	duration = -1
	alert_type = null

// Set effect examine text
/datum/status_effect/quirk_jiggly_ass/get_examine_text()
	return span_purple("[owner.p_Their()] butt could use a firm smack.")

/datum/mood_event/butt_slap
	description = span_purple("Smacking that butt felt extremely satisfying!\n")
	mood_change = 3
	timeout = 2 MINUTES

/datum/mood_event/butt_slapped
	description = span_purple("My jiggly butt was finally smacked, so satisfying!\n")
	mood_change = 3
	timeout = 2 MINUTES
