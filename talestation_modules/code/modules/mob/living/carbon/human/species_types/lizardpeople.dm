// -- Lizardperson species additions --

/datum/species/lizard
	species_traits = list(MUTCOLORS, EYECOLOR, LIPS, HAS_FLESH, HAS_BONE, HAIR)

/datum/species/lizard
	species_speech_sounds = list('talestation_modules/sound/voice/lizard_1.ogg' = 80, \
						'talestation_modules/sound/voice/lizard_2.ogg' = 80, \
						'talestation_modules/sound/voice/lizard_3.ogg' = 80)
	species_speech_sounds_ask = list()
	species_speech_sounds_exclaim = list()

/datum/species/lizard/prepare_human_for_preview(mob/living/carbon/human/human)
	human.dna.features["mcolor"] = sanitize_hexcolor(COLOR_DARK_LIME)

	var/obj/item/organ/external/frills/frills = human.getorgan(/obj/item/organ/external/frills)
	frills?.set_sprite("Short")

	var/obj/item/organ/external/horns/horns = human.getorgan(/obj/item/organ/external/horns)
	horns?.set_sprite("Simple")

	human.update_body()
	human.update_body_parts(update_limb_data = TRUE)
