# Main SQL File

CREATE TABLE IF NOT EXISTS `char_kill_log` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`killer_name` VARCHAR(25) NOT NULL,
	`killer_id` INT(11) NOT NULL,
	`killed_name` VARCHAR(25) NOT NULL,
	`killed_id` INT(11) NOT NULL,
	`map` VARCHAR(16) NOT NULL DEFAULT '',
	`skill` INT(11) NOT NULL DEFAULT '0',
	`map_type` TINYINT(2) NOT NULL DEFAULT '0',
	PRIMARY KEY  (`id`),
	INDEX `killer_id` (`killer_id`),
	INDEX `killed_id` (`killed_id`)
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `eBG_bg_rankings` (
	`char_id` INT(11) NOT NULL,
	`score` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`max_damage` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
	`damage` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
	`damage_received` BIGINT(20) NOT NULL DEFAULT '0',
	`boss_damage` BIGINT(20) NOT NULL DEFAULT '0',
	`kills` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`deaths` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`healing` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`healing_fail` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`sp_used` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`hp_potions` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`sp_potions` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`red_gemstones` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`blue_gemstones` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`yellow_gemstones` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`poison_bottles` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`acid_demostration` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`acid_demostration_fail` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`support_skills` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`support_skills_fail` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`spiritb_used` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`ammo_used` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`zeny_used` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY  (`char_id`)
);

CREATE TABLE IF NOT EXISTS `eBG_woe_rankings` (
	`char_id` INT(11) NOT NULL,
	`score` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`max_damage` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
	`damage` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
	`damage_received` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
	`emperium` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`barricade` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`guardian` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`gstone` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`emperium_dmg` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
	`barricade_dmg` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
	`guardian_dmg` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
	`gstone_dmg` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
	`kills` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`deaths` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`healing` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`healing_fail` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`sp_used` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`hp_potions` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`sp_potions` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`red_gemstones` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`blue_gemstones` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`yellow_gemstones` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`poison_bottles` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`acid_demostration` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`acid_demostration_fail` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`support_skills` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`support_skills_fail` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`spiritb_used` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`ammo_used` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`zeny_used` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY  (`char_id`)
);

CREATE TABLE IF NOT EXISTS `eBG_dom` (
	`char_id` INT(11) NOT NULL,
	`wins` INT(11) NOT NULL DEFAULT '0',
	`loss` INT(11) NOT NULL DEFAULT '0',
	`tie` INT(11) NOT NULL DEFAULT '0',
	`off_kill` INT(11) NOT NULL DEFAULT '0',
	`def_kill` INT(11) NOT NULL DEFAULT '0',
	`bases` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY  (`char_id`)
);


CREATE TABLE IF NOT EXISTS `eBG_rush` (
	`char_id` INT(11) NOT NULL,
	`wins` INT(11) NOT NULL DEFAULT '0',
	`loss` INT(11) NOT NULL DEFAULT '0',
	`emp_captured` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY  (`char_id`)
);

CREATE TABLE IF NOT EXISTS `eBG_conq` (
	`char_id` INT(11) NOT NULL,
	`wins` INT(11) NOT NULL DEFAULT '0',
	`loss` INT(11) NOT NULL DEFAULT '0',
	`emperium` INT(11) NOT NULL DEFAULT '0',
	`barricade` INT(11) NOT NULL DEFAULT '0',
	`guardian` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY  (`char_id`)
);

CREATE TABLE IF NOT EXISTS `eBG_sc` (
	`char_id` INT(11) NOT NULL,
	`wins` INT(11) NOT NULL DEFAULT '0',
	`loss` INT(11) NOT NULL DEFAULT '0',
	`tie` INT(11) NOT NULL DEFAULT '0',
	`steals` INT(11) NOT NULL DEFAULT '0',
	`captures` INT(11) NOT NULL DEFAULT '0',
	`drops` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY  (`char_id`)
);

CREATE TABLE IF NOT EXISTS `eBG_tdm` (
	`char_id` INT(11) NOT NULL,
	`wins` INT(11) NOT NULL DEFAULT '0',
	`loss` INT(11) NOT NULL DEFAULT '0',
	`tie` INT(11) NOT NULL DEFAULT '0',
	`kills` INT(11) NOT NULL DEFAULT '0',
	`deaths` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY  (`char_id`)
);

CREATE TABLE IF NOT EXISTS `eBG_eos` (
	`char_id` INT(11) NOT NULL,
	`wins` INT(11) NOT NULL DEFAULT '0',
	`loss` INT(11) NOT NULL DEFAULT '0',
	`tie` INT(11) NOT NULL DEFAULT '0',
	`flags` INT(11) NOT NULL DEFAULT '0',
	`bases` INT(11) NOT NULL DEFAULT '0',	
	PRIMARY KEY  (`char_id`)
);

CREATE TABLE IF NOT EXISTS `eBG_ti` (
	`char_id` INT(11) NOT NULL,
	`wins` INT(11) NOT NULL DEFAULT '0',
	`loss` INT(11) NOT NULL DEFAULT '0',
	`tie` INT(11) NOT NULL DEFAULT '0',
	`skulls` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY  (`char_id`)
);

CREATE TABLE IF NOT EXISTS `eBG_boss` (
	`char_id` INT(11) NOT NULL,
	`wins` INT(11) NOT NULL DEFAULT '0',
	`loss` INT(11) NOT NULL DEFAULT '0',
	`tie` INT(11) NOT NULL DEFAULT '0',
	`flag` INT(11) NOT NULL DEFAULT '0',
	`killed` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY  (`char_id`)
);

CREATE TABLE IF NOT EXISTS `eBG_ctf` (
	`char_id` INT(11) NOT NULL,
	`wins` INT(11) NOT NULL DEFAULT '0',
	`loss` INT(11) NOT NULL DEFAULT '0',
	`tie` INT(11) NOT NULL DEFAULT '0',
	`taken` INT(11) NOT NULL DEFAULT '0',
	`onhand` INT(11) NOT NULL DEFAULT '0',
	`drops` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY  (`char_id`)
);

CREATE TABLE IF NOT EXISTS `eBG_leader` (
	`char_id` INT(11) NOT NULL,
	`wins` INT(11) NOT NULL DEFAULT '0',
	`loss` INT(11) NOT NULL DEFAULT '0',
	`tie` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY  (`char_id`)
);

CREATE TABLE IF NOT EXISTS `eBG_main` (
	`char_id` INT(11) NOT NULL,
	`wins` INT(11) NOT NULL DEFAULT '0',
	`loss` INT(11) NOT NULL DEFAULT '0',
	`tie` INT(11) NOT NULL DEFAULT '0',
	`points` INT(11) NOT NULL DEFAULT '0',
	`rank_points` INT(11) NOT NULL DEFAULT '0',
	`rank_games` INT(11) NOT NULL DEFAULT '0',
	`total_rank_games` INT(11) NOT NULL DEFAULT '0',
	`daymonth` MEDIUMINT(5) NOT NULL DEFAULT '0',
	PRIMARY KEY  (`char_id`)
);

