/datum/click_handler
//	var/mob_type
	var/species
	var/mouse_icon
	var/handler_name
	var/one_use_flag = 1//drop client.CH after succes ability use

/datum/click_handler/proc/mob_check(mob/living/carbon/human/user) //Check can mob use a ability
	return

/datum/click_handler/proc/use_ability(mob/living/carbon/human/user,atom/target) //Check can mob use a ability
	return

/datum/click_handler/human/mob_check(mob/living/carbon/human/user)
	if(ishuman(user))
		if(user.species.name == src.species)
			return 1
	return 0

/datum/click_handler/human/use_ability(mob/living/carbon/human/user,atom/target)
	return

/datum/click_handler/human/arachna_bite
//	mob_type = /mob/living/carbon/human
	species = "Arachna"
	handler_name = "Poison Bite"

/datum/click_handler/human/arachna_bite/use_ability(mob/living/carbon/human/user,atom/target)
	return user.try_bite(target)

/datum/click_handler/human/arachna_leap
//	mob_type = /mob/living/carbon/human
	species = "Arachna"
	handler_name = "Arachna Jump"

/datum/click_handler/human/arachna_leap/use_ability(mob/living/carbon/human/user,atom/target)
	return user.arachna_jump(target)

//Changeling CH

/datum/click_handler/changeling/mob_check(mob/living/carbon/human/user)
	if(ishuman(user) && user.mind && user.mind.changeling)
		return 1
	return 0

/datum/click_handler/changeling/use_ability(mob/living/carbon/human/user,atom/target) //Check can mob use a ability
	return

/datum/click_handler/changeling/changeling_lsdsting
	handler_name = "Hallucination Sting"

/datum/click_handler/changeling/changeling_lsdsting/use_ability(mob/living/carbon/human/user,atom/target)
	return user.changeling_lsdsting(target)

/datum/click_handler/changeling/changeling_silence_sting
	handler_name = "Silence Sting"

/datum/click_handler/changeling/changeling_silence_sting/use_ability(mob/living/carbon/human/user,atom/target)
	return user.changeling_silence_sting(target)


/datum/click_handler/changeling/changeling_blind_sting
	handler_name = "Blind Sting"

/datum/click_handler/changeling/changeling_blind_sting/use_ability(mob/living/carbon/human/user,atom/target)
	return user.changeling_blind_sting(target)

/datum/click_handler/changeling/changeling_deaf_sting
	handler_name = "Deaf Sting"

/datum/click_handler/changeling/changeling_deaf_sting/use_ability(mob/living/carbon/human/user,atom/target)
	return user.changeling_deaf_sting(target)

/datum/click_handler/changeling/changeling_paralysis_sting
	handler_name = "Paralysis Sting"

/datum/click_handler/changeling/changeling_paralysis_sting/use_ability(mob/living/carbon/human/user,atom/target)
	return user.changeling_paralysis_sting(target)

/*/datum/click_handler/changeling/changeling_paralysis_sting
	handler_name = "Transformation Sting"

/datum/click_handler/changeling/changeling_paralysis_sting/use_ability(mob/living/carbon/human/user,atom/target)
	return user.changeling_paralysis_sting(target)*/

/*/datum/click_handler/changeling/changeling_unfat_sting
	handler_name = "Unfat Sting"

/datum/click_handler/changeling/changeling_unfat_sting/use_ability(mob/living/carbon/human/user,atom/target)
	return user.changeling_unfat_sting(target)*/

/datum/click_handler/changeling/changeling_DEATHsting
	handler_name = "Death Sting"

/datum/click_handler/changeling/changeling_DEATHsting/use_ability(mob/living/carbon/human/user,atom/target)
	return user.changeling_DEATHsting(target)

/datum/click_handler/changeling/changeling_extract_dna_sting
	handler_name = "Extract DNA Sting"

/datum/click_handler/changeling/changeling_extract_dna_sting/use_ability(mob/living/carbon/human/user,atom/target)
	return user.changeling_extract_dna_sting(target)