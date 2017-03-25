-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "cards" ------------------------------------
-- CREATE TABLE "cards" ----------------------------------------
CREATE TABLE `cards` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`subtheme_id` Int( 10 ) UNSIGNED NOT NULL,
	`position` Int( 11 ) NOT NULL,
	`show` TinyInt( 1 ) NOT NULL DEFAULT '1',
	`title` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`subtitle` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	`separator` VarChar( 7 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	`image` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	`text` Text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`parent` Int( 11 ) NULL COMMENT 'Если != null, тогда карта есть основной',
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	`type_id` Int( 10 ) UNSIGNED NULL,
	`test_id` Int( 11 ) NULL,
	`full_image` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`image_description` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`detail` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 9;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "clients" ----------------------------------
-- CREATE TABLE "clients" --------------------------------------
CREATE TABLE `clients` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`login` VarChar( 20 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`email` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	`password` VarChar( 32 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "clientspromocodes" ------------------------
-- CREATE TABLE "clientspromocodes" ----------------------------
CREATE TABLE `clientspromocodes` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`client_id` Int( 10 ) UNSIGNED NULL,
	`promocode_id` Int( 10 ) UNSIGNED NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "comments" ---------------------------------
-- CREATE TABLE "comments" -------------------------------------
CREATE TABLE `comments` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`user_id` Int( 10 ) UNSIGNED NOT NULL,
	`target_type` Int( 11 ) NOT NULL,
	`target_id` Int( 11 ) NOT NULL,
	`text` Text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "migrations" -------------------------------
-- CREATE TABLE "migrations" -----------------------------------
CREATE TABLE `migrations` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`migration` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`batch` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 33;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "password_resets" --------------------------
-- CREATE TABLE "password_resets" ------------------------------
CREATE TABLE `password_resets` ( 
	`email` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`token` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`created_at` Timestamp NULL )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "promocodes" -------------------------------
-- CREATE TABLE "promocodes" -----------------------------------
CREATE TABLE `promocodes` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`type` Int( 11 ) NOT NULL,
	`code` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`limit` Int( 11 ) NOT NULL DEFAULT '1',
	`note` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 5;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "subthemes" --------------------------------
-- CREATE TABLE "subthemes" ------------------------------------
CREATE TABLE `subthemes` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`theme_id` Int( 10 ) UNSIGNED NOT NULL,
	`title` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`description` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`image` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	`show` TinyInt( 1 ) NOT NULL DEFAULT '1',
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 5;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "tests" ------------------------------------
-- CREATE TABLE "tests" ----------------------------------------
CREATE TABLE `tests` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`question` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`answears` Text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`true_answears` Text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "themes" -----------------------------------
-- CREATE TABLE "themes" ---------------------------------------
CREATE TABLE `themes` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`title` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`subtitle` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	`image` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	`active` TinyInt( 1 ) NOT NULL DEFAULT '1',
	`voices` Int( 11 ) NOT NULL DEFAULT '0',
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	`show` TinyInt( 1 ) NOT NULL DEFAULT '1',
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "types" ------------------------------------
-- CREATE TABLE "types" ----------------------------------------
CREATE TABLE `types` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	`alies` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "users" ------------------------------------
-- CREATE TABLE "users" ----------------------------------------
CREATE TABLE `users` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`email` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`password` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`remember_token` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	`type` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `users_email_unique` UNIQUE( `email` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 6;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "voicelogs" --------------------------------
-- CREATE TABLE "voicelogs" ------------------------------------
CREATE TABLE `voicelogs` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`client_id` Int( 10 ) UNSIGNED NOT NULL,
	`theme_id` Int( 10 ) UNSIGNED NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "details" ----------------------------------
-- CREATE TABLE "details" --------------------------------------
CREATE TABLE `details` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`type` Int( 11 ) NOT NULL,
	`content` Text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	`position` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 8;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "references" -------------------------------
-- CREATE TABLE "references" -----------------------------------
CREATE TABLE `references` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`stringToSearch` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`position` Int( 11 ) NOT NULL,
	`detail` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "cards" ------------------------------------
INSERT INTO `cards`(`id`,`subtheme_id`,`position`,`show`,`title`,`subtitle`,`separator`,`image`,`text`,`parent`,`created_at`,`updated_at`,`type_id`,`test_id`,`full_image`,`image_description`,`detail`) VALUES ( '1', '1', '1', '1', 'Князи', 'ыь ьла ь', NULL, 'http://knowling.loc/update/30422.jpg', 'уцми муцмйгу мцурм умц умр цугмр гцурм', NULL, '2017-03-24 04:48:06', '2017-03-24 05:22:49', '2', NULL, 'http://knowling.loc/update/30422.jpg', 'бла бла бла бла', NULL );
INSERT INTO `cards`(`id`,`subtheme_id`,`position`,`show`,`title`,`subtitle`,`separator`,`image`,`text`,`parent`,`created_at`,`updated_at`,`type_id`,`test_id`,`full_image`,`image_description`,`detail`) VALUES ( '2', '3', '1', '0', 'Императоры', 'ыь ьла ь', NULL, 'http://knowling.loc/update/h30J5HeZpyk.jpg', 'блала бала ба ба аб а бла ла ал блала бал аб ал бла ал ал', NULL, '2017-03-24 05:27:50', '2017-03-24 05:27:50', '3', NULL, 'http://knowling.loc/update/h30J5HeZpyk.jpg', 'ьоычдыдчдычд', NULL );
INSERT INTO `cards`(`id`,`subtheme_id`,`position`,`show`,`title`,`subtitle`,`separator`,`image`,`text`,`parent`,`created_at`,`updated_at`,`type_id`,`test_id`,`full_image`,`image_description`,`detail`) VALUES ( '3', '1', '1', '1', 'Князи', 'smvdkskd ', NULL, 'http://knowling.loc/update/F393C97XiJA.jpg', 'nsvjndjvsndvjs', NULL, '2017-03-24 05:46:12', '2017-03-24 05:46:12', '3', NULL, 'http://knowling.loc/update/F393C97XiJA.jpg', 'dknjsndc', NULL );
INSERT INTO `cards`(`id`,`subtheme_id`,`position`,`show`,`title`,`subtitle`,`separator`,`image`,`text`,`parent`,`created_at`,`updated_at`,`type_id`,`test_id`,`full_image`,`image_description`,`detail`) VALUES ( '4', '1', '2', '1', 'Князи 3', 'kovkwve w wjiejwi ', NULL, 'http://knowling.loc/update/bleak_2-wallpaper-1366x768.jpg', 'ijewhvuwe ww jeh weh whe wj ', NULL, '2017-03-24 05:48:31', '2017-03-24 05:48:31', '2', NULL, 'http://knowling.loc/update/bleak_2-wallpaper-1366x768.jpg', 'sdvikavsn wd os dna', NULL );
INSERT INTO `cards`(`id`,`subtheme_id`,`position`,`show`,`title`,`subtitle`,`separator`,`image`,`text`,`parent`,`created_at`,`updated_at`,`type_id`,`test_id`,`full_image`,`image_description`,`detail`) VALUES ( '5', '1', '3', '1', 'Князи XII века', 'ортатрвбвфс ы л офыт фыв фв дв', NULL, 'http://knowling.loc/update/an_object-wallpaper-1366x768.jpg', 'цвмтйщм йу ргшур г ш', '3', '2017-03-24 06:09:32', '2017-03-24 08:55:44', '2', '3', 'http://knowling.loc/update/an_object-wallpaper-1366x768.jpg', 'лвшмщцмвот т оыфвм', NULL );
INSERT INTO `cards`(`id`,`subtheme_id`,`position`,`show`,`title`,`subtitle`,`separator`,`image`,`text`,`parent`,`created_at`,`updated_at`,`type_id`,`test_id`,`full_image`,`image_description`,`detail`) VALUES ( '7', '1', '4', '0', 'С вопросом', 'карточка', NULL, 'http://knowling.loc/update/hq-wallpapers_ru_space_51589_1920x1200.jpg', 'Карточка с вопросом', NULL, '2017-03-24 06:56:31', '2017-03-24 08:54:40', '2', '2', 'http://knowling.loc/update/hq-wallpapers_ru_space_51589_1920x1200.jpg', 'бла бла бла бла', NULL );
INSERT INTO `cards`(`id`,`subtheme_id`,`position`,`show`,`title`,`subtitle`,`separator`,`image`,`text`,`parent`,`created_at`,`updated_at`,`type_id`,`test_id`,`full_image`,`image_description`,`detail`) VALUES ( '8', '3', '2', '1', 'Блаааа', 'блаааа блаааа блаа', NULL, 'http://knowling.loc/update/28870.jpg', 'бла аб лав лыа лывт аоаьт выа ', NULL, '2017-03-24 08:05:57', '2017-03-24 10:18:24', '3', NULL, 'http://knowling.loc/update/extraction-wallpaper-1366x768.jpg', 'ывмыф т', '["3"]' );
-- ---------------------------------------------------------


-- Dump data of "clients" ----------------------------------
-- ---------------------------------------------------------


-- Dump data of "clientspromocodes" ------------------------
-- ---------------------------------------------------------


-- Dump data of "comments" ---------------------------------
-- ---------------------------------------------------------


-- Dump data of "migrations" -------------------------------
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '1', '2014_10_12_000000_create_users_table', '1' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '2', '2014_10_12_100000_create_password_resets_table', '1' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '3', '2017_03_18_130320_update_users_table', '1' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '4', '2017_03_18_130631_create_themes_table', '1' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '5', '2017_03_18_131044_create_subthemes_table', '2' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '6', '2017_03_18_131439_create_cards_table', '2' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '7', '2017_03_18_133018_create_types_table', '2' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '8', '2017_03_18_133125_create_tests_table', '2' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '9', '2017_03_18_133451_update_cards_table', '2' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '10', '2017_03_18_134020_create_promocodes_table', '3' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '11', '2017_03_18_134257_create_clients_table', '3' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '12', '2017_03_18_134424_create_clientspromocodes_table', '3' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '13', '2017_03_18_134628_create_comments_table', '3' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '14', '2017_03_18_134815_create_voicelogs_table', '3' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '15', '2017_03_18_135010_add_sub_cards_table', '4' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '16', '2017_03_19_152616_change_cards_table', '5' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '17', '2017_03_19_153241_change_types_table', '5' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '18', '2017_03_19_203600_change_detail_show_card', '6' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '19', '2017_03_19_203843_change_trueanswear_tests_table', '7' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '20', '2017_03_19_204017_change_themes_table', '7' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '21', '2017_03_19_204038_change_subthemes_table', '7' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '22', '2017_03_23_112538_change_types_tests_table', '8' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '23', '2017_03_23_113319_change_new_types_tests_table', '9' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '24', '2017_03_23_200602_create_details_table', '10' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '25', '2017_03_23_201141_create_references_table', '11' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '26', '2017_03_23_201531_change_details_table', '11' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '27', '2017_03_23_215956_change_details_cards_table', '12' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '28', '2017_03_23_220108_change_details_null_cards_table', '13' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '29', '2017_03_23_220234_change_parent_null_cards_table', '14' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '30', '2017_03_24_044255_change_test_null_cards_table', '15' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '31', '2017_03_24_053400_change_type_details_cards_table', '16' );
INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES ( '32', '2017_03_24_105049_change_type_details_references_table', '17' );
-- ---------------------------------------------------------


-- Dump data of "password_resets" --------------------------
-- ---------------------------------------------------------


-- Dump data of "promocodes" -------------------------------
INSERT INTO `promocodes`(`id`,`type`,`code`,`limit`,`note`,`created_at`,`updated_at`) VALUES ( '2', '0', 'tarkik21', '1', 'sfai najf nanfa najdf ', '2017-03-23 11:07:51', '2017-03-23 11:07:51' );
INSERT INTO `promocodes`(`id`,`type`,`code`,`limit`,`note`,`created_at`,`updated_at`) VALUES ( '3', '0', 'code 45', '1', 'fdoajfsi nafn adjf adfn', '2017-03-23 11:08:01', '2017-03-23 11:08:01' );
INSERT INTO `promocodes`(`id`,`type`,`code`,`limit`,`note`,`created_at`,`updated_at`) VALUES ( '4', '1', 'cTcqXy', '1', 'Коментарий', '2017-03-23 11:23:11', '2017-03-23 11:23:11' );
-- ---------------------------------------------------------


-- Dump data of "subthemes" --------------------------------
INSERT INTO `subthemes`(`id`,`theme_id`,`title`,`description`,`image`,`created_at`,`updated_at`,`show`) VALUES ( '1', '1', 'Рюрики', 'Славные князи', 'http://knowling.loc/update/battle_of_geonosis-wallpaper-1366x768.jpg', '2017-03-20 13:12:33', '2017-03-20 13:46:44', '1' );
INSERT INTO `subthemes`(`id`,`theme_id`,`title`,`description`,`image`,`created_at`,`updated_at`,`show`) VALUES ( '3', '2', 'Новая эра', 'Блаааа блаб блаб бла', 'http://knowling.loc/update/arrow___the_flash-wallpaper-1366x768.jpg', '2017-03-24 05:25:16', '2017-03-24 05:25:16', '1' );
INSERT INTO `subthemes`(`id`,`theme_id`,`title`,`description`,`image`,`created_at`,`updated_at`,`show`) VALUES ( '4', '1', 'Князи Руси', 'Бла блаб лбал балаб лаб лабалаб лаб ал бал бал', 'http://knowling.loc/update/destruio_nuclear-wallpaper-1366x768 (копія).jpg', '2017-03-24 05:26:53', '2017-03-24 05:26:53', '1' );
-- ---------------------------------------------------------


-- Dump data of "tests" ------------------------------------
INSERT INTO `tests`(`id`,`question`,`created_at`,`updated_at`,`answears`,`true_answears`) VALUES ( '1', 'Вопрос', '2017-03-24 06:56:29', '2017-03-24 06:56:29', '["\\u041e\\u0442\\u0432\\u0435\\u0442 1","\\u041e\\u0442\\u0432\\u0435\\u0442 2","\\u041e\\u0442\\u0432\\u0435\\u0442 3"]', '[1]' );
INSERT INTO `tests`(`id`,`question`,`created_at`,`updated_at`,`answears`,`true_answears`) VALUES ( '2', 'Вопрос', '2017-03-24 08:48:15', '2017-03-24 08:54:40', '["\\u041e\\u0442\\u0432\\u0435\\u0442 1","\\u041e\\u0442\\u0432\\u0435\\u0442 2","\\u041e\\u0442\\u0432\\u0435\\u0442 3","\\u041e\\u0442\\u0432\\u0435\\u0442 4"]', '[0,1,2]' );
INSERT INTO `tests`(`id`,`question`,`created_at`,`updated_at`,`answears`,`true_answears`) VALUES ( '3', 'Вопрос 2', '2017-03-24 08:55:44', '2017-03-24 08:55:44', '["\\u041e\\u0442\\u0432\\u0435\\u0442 1","\\u041e\\u0442\\u0432\\u0435\\u0442 2","\\u041e\\u0442\\u0432\\u0435\\u0442 3"]', '[1]' );
-- ---------------------------------------------------------


-- Dump data of "themes" -----------------------------------
INSERT INTO `themes`(`id`,`title`,`subtitle`,`image`,`active`,`voices`,`created_at`,`updated_at`,`show`) VALUES ( '1', 'Князи', 'Князи Руси', 'http://knowling.loc/update/interstellar-wallpaper-1366x768.jpg', '0', '0', '2017-03-20 11:59:36', '2017-03-20 22:10:41', '1' );
INSERT INTO `themes`(`id`,`title`,`subtitle`,`image`,`active`,`voices`,`created_at`,`updated_at`,`show`) VALUES ( '2', 'Императоры', 'Великолепные', 'http://knowling.loc/update/destruio_nuclear-wallpaper-1366x768 (копія).jpg', '1', '0', '2017-03-20 13:44:33', '2017-03-20 19:28:05', '1' );
-- ---------------------------------------------------------


-- Dump data of "types" ------------------------------------
INSERT INTO `types`(`id`,`name`,`created_at`,`updated_at`,`alies`) VALUES ( '2', 'Тип 1', '2017-03-23 19:46:09', '2017-03-23 19:46:09', 'type1' );
INSERT INTO `types`(`id`,`name`,`created_at`,`updated_at`,`alies`) VALUES ( '3', 'Тип 2', '2017-03-23 19:46:23', '2017-03-23 19:46:23', 'type2' );
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
INSERT INTO `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`,`type`) VALUES ( '1', 'tarkik', 'prokop.romanski@gmail.com', '$2y$10$gamahbV4T0lWjuWRDx6K1.L30CTiXZxWCLpWcJt4fwfFcBs5pLYq2', 'Hh7zm1jz8vX62Mw4JPUxW9V0XTDO0PJDCZ8APrlCVDiBB7NiBAkCkYzR5Puo', '2017-03-19 19:47:20', '2017-03-20 19:27:37', '0' );
INSERT INTO `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`,`type`) VALUES ( '4', 'manager', 'manager@g.net', '$2y$10$RmJQb39sN.Ae8J4sqPRXvutrSANr9JSx6jONDET9QYMFeZs4aJT7W', NULL, '2017-03-19 22:01:27', '2017-03-19 22:01:27', '1' );
-- ---------------------------------------------------------


-- Dump data of "voicelogs" --------------------------------
-- ---------------------------------------------------------


-- Dump data of "details" ----------------------------------
INSERT INTO `details`(`id`,`type`,`content`,`created_at`,`updated_at`,`position`) VALUES ( '1', '1', '["http:\\/\\/knowling.loc\\/update\\/bleak_2-wallpaper-1366x768.jpg"]', '2017-03-24 08:05:56', '2017-03-24 08:05:56', '1' );
INSERT INTO `details`(`id`,`type`,`content`,`created_at`,`updated_at`,`position`) VALUES ( '2', '3', 'бла бла бла', '2017-03-24 08:05:57', '2017-03-24 08:05:57', '2' );
INSERT INTO `details`(`id`,`type`,`content`,`created_at`,`updated_at`,`position`) VALUES ( '3', '1', '["http:\\/\\/knowling.loc\\/update\\/13995.jpg","http:\\/\\/knowling.loc\\/update\\/30422.jpg","http:\\/\\/knowling.loc\\/update\\/captain_america_civil_war-wallpaper-1366x768.jpg"]', '2017-03-24 09:55:42', '2017-03-24 10:18:24', '1' );
INSERT INTO `details`(`id`,`type`,`content`,`created_at`,`updated_at`,`position`) VALUES ( '4', '1', '[]', '2017-03-24 09:56:47', '2017-03-24 10:09:08', '1' );
INSERT INTO `details`(`id`,`type`,`content`,`created_at`,`updated_at`,`position`) VALUES ( '5', '3', 'вымьщывлмщдфылв', '2017-03-24 10:07:30', '2017-03-24 10:07:30', '2' );
INSERT INTO `details`(`id`,`type`,`content`,`created_at`,`updated_at`,`position`) VALUES ( '6', '2', 'вмошфомышвмо', '2017-03-24 10:49:39', '2017-03-24 10:49:39', '1' );
INSERT INTO `details`(`id`,`type`,`content`,`created_at`,`updated_at`,`position`) VALUES ( '7', '2', 'вмошфомышвмо', '2017-03-24 10:51:52', '2017-03-24 10:51:52', '1' );
-- ---------------------------------------------------------


-- Dump data of "references" -------------------------------
INSERT INTO `references`(`id`,`name`,`stringToSearch`,`position`,`detail`,`created_at`,`updated_at`) VALUES ( '1', 'Цитата', 'Цитаты великих', '2', '[7]', '2017-03-24 10:51:52', '2017-03-24 10:51:52' );
-- ---------------------------------------------------------


-- CREATE INDEX "cards_subtheme_id_foreign" ----------------
-- CREATE INDEX "cards_subtheme_id_foreign" --------------------
CREATE INDEX `cards_subtheme_id_foreign` USING BTREE ON `cards`( `subtheme_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "cards_test_id_foreign" --------------------
-- CREATE INDEX "cards_test_id_foreign" ------------------------
CREATE INDEX `cards_test_id_foreign` USING BTREE ON `cards`( `test_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "cards_type_id_foreign" --------------------
-- CREATE INDEX "cards_type_id_foreign" ------------------------
CREATE INDEX `cards_type_id_foreign` USING BTREE ON `cards`( `type_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "clientspromocodes_client_id_foreign" ------
-- CREATE INDEX "clientspromocodes_client_id_foreign" ----------
CREATE INDEX `clientspromocodes_client_id_foreign` USING BTREE ON `clientspromocodes`( `client_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "clientspromocodes_promocode_id_foreign" ---
-- CREATE INDEX "clientspromocodes_promocode_id_foreign" -------
CREATE INDEX `clientspromocodes_promocode_id_foreign` USING BTREE ON `clientspromocodes`( `promocode_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "comments_user_id_foreign" -----------------
-- CREATE INDEX "comments_user_id_foreign" ---------------------
CREATE INDEX `comments_user_id_foreign` USING BTREE ON `comments`( `user_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "password_resets_email_index" --------------
-- CREATE INDEX "password_resets_email_index" ------------------
CREATE INDEX `password_resets_email_index` USING BTREE ON `password_resets`( `email` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "password_resets_token_index" --------------
-- CREATE INDEX "password_resets_token_index" ------------------
CREATE INDEX `password_resets_token_index` USING BTREE ON `password_resets`( `token` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "subthemes_theme_id_foreign" ---------------
-- CREATE INDEX "subthemes_theme_id_foreign" -------------------
CREATE INDEX `subthemes_theme_id_foreign` USING BTREE ON `subthemes`( `theme_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "voicelogs_client_id_foreign" --------------
-- CREATE INDEX "voicelogs_client_id_foreign" ------------------
CREATE INDEX `voicelogs_client_id_foreign` USING BTREE ON `voicelogs`( `client_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "voicelogs_theme_id_foreign" ---------------
-- CREATE INDEX "voicelogs_theme_id_foreign" -------------------
CREATE INDEX `voicelogs_theme_id_foreign` USING BTREE ON `voicelogs`( `theme_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "cards_subtheme_id_foreign" -----------------
-- CREATE LINK "cards_subtheme_id_foreign" ---------------------
ALTER TABLE `cards`
	ADD CONSTRAINT `cards_subtheme_id_foreign` FOREIGN KEY ( `subtheme_id` )
	REFERENCES `subthemes`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "cards_type_id_foreign" ---------------------
-- CREATE LINK "cards_type_id_foreign" -------------------------
ALTER TABLE `cards`
	ADD CONSTRAINT `cards_type_id_foreign` FOREIGN KEY ( `type_id` )
	REFERENCES `types`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "clientspromocodes_client_id_foreign" -------
-- CREATE LINK "clientspromocodes_client_id_foreign" -----------
ALTER TABLE `clientspromocodes`
	ADD CONSTRAINT `clientspromocodes_client_id_foreign` FOREIGN KEY ( `client_id` )
	REFERENCES `clients`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "clientspromocodes_promocode_id_foreign" ----
-- CREATE LINK "clientspromocodes_promocode_id_foreign" --------
ALTER TABLE `clientspromocodes`
	ADD CONSTRAINT `clientspromocodes_promocode_id_foreign` FOREIGN KEY ( `promocode_id` )
	REFERENCES `promocodes`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "comments_user_id_foreign" ------------------
-- CREATE LINK "comments_user_id_foreign" ----------------------
ALTER TABLE `comments`
	ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY ( `user_id` )
	REFERENCES `users`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "subthemes_theme_id_foreign" ----------------
-- CREATE LINK "subthemes_theme_id_foreign" --------------------
ALTER TABLE `subthemes`
	ADD CONSTRAINT `subthemes_theme_id_foreign` FOREIGN KEY ( `theme_id` )
	REFERENCES `themes`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "voicelogs_client_id_foreign" ---------------
-- CREATE LINK "voicelogs_client_id_foreign" -------------------
ALTER TABLE `voicelogs`
	ADD CONSTRAINT `voicelogs_client_id_foreign` FOREIGN KEY ( `client_id` )
	REFERENCES `clients`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "voicelogs_theme_id_foreign" ----------------
-- CREATE LINK "voicelogs_theme_id_foreign" --------------------
ALTER TABLE `voicelogs`
	ADD CONSTRAINT `voicelogs_theme_id_foreign` FOREIGN KEY ( `theme_id` )
	REFERENCES `themes`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


