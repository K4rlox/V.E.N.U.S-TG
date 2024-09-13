/datum/dna/transfer_identity(mob/living/carbon/destination, transfer_SE, transfer_species)
	var/old_size = destination.dna.features["body_size"]
	. = ..()
	destination.update_size(get_size(destination), old_size)

/mob/living/carbon/human/hardset_dna(unique_identity, list/mutation_index, list/default_mutation_genes, newreal_name, newblood_type, datum/species/mrace, newfeatures, list/mutations, force_transfer_mutations)
	var/old_size = dna.features["body_size"]
	. = ..()
	update_size(get_size(src), old_size)

/datum/dna/copy_dna(datum/dna/new_dna)
	. = ..()
	if(holder)
		holder.adjust_mobsize(get_size(holder))

/mob/living/carbon/set_species(datum/species/mrace, icon_update, pref_load, list/override_features, list/override_mutantparts, list/override_markings)
	. = ..()
	adjust_mobsize(get_size(src))

/datum/preference/choiced/species/apply_to_human(mob/living/carbon/human/target, value, datum/preferences/prefs)
	. = ..()
	target.adjust_mobsize(get_size(target))
