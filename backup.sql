-- MySQL dump 10.13  Distrib 8.3.0, for macos12.6 (x86_64)
--
-- Host: localhost    Database: sharetribe_development
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `active_sessions`
--

DROP TABLE IF EXISTS `active_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_sessions` (
  `id` binary(16) NOT NULL,
  `person_id` varchar(22) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `community_id` int NOT NULL,
  `refreshed_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_sessions_on_person_id` (`person_id`),
  KEY `index_active_sessions_on_community_id` (`community_id`),
  KEY `index_active_sessions_on_refreshed_at` (`refreshed_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_sessions`
--

LOCK TABLES `active_sessions` WRITE;
/*!40000 ALTER TABLE `active_sessions` DISABLE KEYS */;
INSERT INTO `active_sessions` VALUES (_binary '\��idd���ĳ\�T�','HzH84qLj_RFlFqNPYui7vw',6,'2024-04-27 15:47:11','2024-04-27 15:47:11','2024-04-27 15:47:11'),(_binary '\����龽�ĳ\�T�','HzH84qLj_RFlFqNPYui7vw',6,'2024-05-01 19:07:17','2024-04-27 16:02:46','2024-05-01 19:07:17'),(_binary '\�\��\�j��ĳ\�T�','HzH84qLj_RFlFqNPYui7vw',6,'2024-05-01 20:02:30','2024-05-01 20:02:30','2024-05-01 20:02:30'),(_binary '\��y�Ƚĳ\�T�','HzH84qLj_RFlFqNPYui7vw',6,'2024-05-01 20:22:04','2024-05-01 20:22:04','2024-05-01 20:22:04');
/*!40000 ALTER TABLE `active_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_attachments`
--

DROP TABLE IF EXISTS `active_storage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_attachments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint NOT NULL,
  `blob_id` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  KEY `index_active_storage_attachments_on_blob_id` (`blob_id`),
  CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_attachments`
--

LOCK TABLES `active_storage_attachments` WRITE;
/*!40000 ALTER TABLE `active_storage_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_storage_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_blobs`
--

DROP TABLE IF EXISTS `active_storage_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_blobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `byte_size` bigint NOT NULL,
  `checksum` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `service_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_blobs_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_blobs`
--

LOCK TABLES `active_storage_blobs` WRITE;
/*!40000 ALTER TABLE `active_storage_blobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_storage_blobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_variant_records`
--

DROP TABLE IF EXISTS `active_storage_variant_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_variant_records` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blob_id` bigint NOT NULL,
  `variation_digest` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_variant_records_uniqueness` (`blob_id`,`variation_digest`),
  CONSTRAINT `fk_rails_993965df05` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_variant_records`
--

LOCK TABLES `active_storage_variant_records` WRITE;
/*!40000 ALTER TABLE `active_storage_variant_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_storage_variant_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2024-04-27 09:50:34','2024-04-27 09:50:34'),('schema_sha1','627924824863850e763d293bb006a8638f0b5083','2024-04-27 09:50:34','2024-04-27 09:50:34');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_tokens`
--

DROP TABLE IF EXISTS `auth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT 'unsubscribe',
  `person_id` varchar(255) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `usages_left` int DEFAULT NULL,
  `last_use_attempt` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_auth_tokens_on_token` (`token`) USING BTREE,
  KEY `index_on_person_id` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_tokens`
--

LOCK TABLES `auth_tokens` WRITE;
/*!40000 ALTER TABLE `auth_tokens` DISABLE KEYS */;
INSERT INTO `auth_tokens` VALUES (17,'m-tcwrSCxow','login','HzH84qLj_RFlFqNPYui7vw','2024-04-27 15:57:10',0,'2024-04-27 15:47:11','2024-04-27 15:47:10','2024-04-27 15:47:11');
/*!40000 ALTER TABLE `auth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing_agreements`
--

DROP TABLE IF EXISTS `billing_agreements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_agreements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `paypal_account_id` int NOT NULL,
  `billing_agreement_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `paypal_username_to` varchar(255) NOT NULL,
  `request_token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_billing_agreements_on_paypal_account_id` (`paypal_account_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_agreements`
--

LOCK TABLES `billing_agreements` WRITE;
/*!40000 ALTER TABLE `billing_agreements` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing_agreements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_id` int DEFAULT NULL,
  `start_on` date DEFAULT NULL,
  `end_on` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `per_hour` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_bookings_on_transaction_id` (`transaction_id`) USING BTREE,
  KEY `index_bookings_on_per_hour` (`per_hour`),
  KEY `index_bookings_on_start_time` (`start_time`),
  KEY `index_bookings_on_end_time` (`end_time`),
  KEY `index_bookings_on_transaction_start_on_end_on_per_hour` (`transaction_id`,`start_on`,`end_on`,`per_hour`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `community_id` int DEFAULT NULL,
  `sort_priority` int DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_categories_on_community_id` (`community_id`) USING BTREE,
  KEY `index_categories_on_parent_id` (`parent_id`) USING BTREE,
  KEY `index_categories_on_url` (`url`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (22,NULL,NULL,'2024-04-27 15:47:09','2024-04-27 15:47:09',6,NULL,'default-category');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_custom_fields`
--

DROP TABLE IF EXISTS `category_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_custom_fields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `custom_field_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_category_custom_fields_on_category_id_and_custom_field_id` (`category_id`,`custom_field_id`) USING BTREE,
  KEY `index_category_custom_fields_on_custom_field_id` (`custom_field_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_custom_fields`
--

LOCK TABLES `category_custom_fields` WRITE;
/*!40000 ALTER TABLE `category_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_listing_shapes`
--

DROP TABLE IF EXISTS `category_listing_shapes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_listing_shapes` (
  `category_id` int NOT NULL,
  `listing_shape_id` int NOT NULL,
  UNIQUE KEY `unique_listing_shape_category_joins` (`listing_shape_id`,`category_id`) USING BTREE,
  KEY `index_category_listing_shapes_on_category_id` (`category_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_listing_shapes`
--

LOCK TABLES `category_listing_shapes` WRITE;
/*!40000 ALTER TABLE `category_listing_shapes` DISABLE KEYS */;
INSERT INTO `category_listing_shapes` VALUES (22,12),(22,13);
/*!40000 ALTER TABLE `category_listing_shapes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_translations`
--

DROP TABLE IF EXISTS `category_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id_with_locale` (`category_id`,`locale`) USING BTREE,
  KEY `index_category_translations_on_category_id` (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_translations`
--

LOCK TABLES `category_translations` WRITE;
/*!40000 ALTER TABLE `category_translations` DISABLE KEYS */;
INSERT INTO `category_translations` VALUES (23,22,'en','Default category','2024-04-27 15:47:09','2024-04-27 15:47:09',NULL);
/*!40000 ALTER TABLE `category_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout_accounts`
--

DROP TABLE IF EXISTS `checkout_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkout_accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id_or_personal_id` varchar(255) DEFAULT NULL,
  `merchant_id` varchar(255) NOT NULL,
  `merchant_key` varchar(255) NOT NULL,
  `person_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout_accounts`
--

LOCK TABLES `checkout_accounts` WRITE;
/*!40000 ALTER TABLE `checkout_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkout_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author_id` varchar(255) DEFAULT NULL,
  `listing_id` int DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `community_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_listing_id` (`listing_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` binary(16) NOT NULL,
  `ident` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `use_domain` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `settings` text,
  `consent` varchar(255) DEFAULT NULL,
  `transaction_agreement_in_use` tinyint(1) DEFAULT '0',
  `email_admins_about_new_members` tinyint(1) DEFAULT '0',
  `use_fb_like` tinyint(1) DEFAULT '0',
  `real_name_required` tinyint(1) DEFAULT '1',
  `automatic_newsletters` tinyint(1) DEFAULT '1',
  `join_with_invite_only` tinyint(1) DEFAULT '0',
  `allowed_emails` mediumtext,
  `users_can_invite_new_users` tinyint(1) DEFAULT '1',
  `private` tinyint(1) DEFAULT '0',
  `label` varchar(255) DEFAULT NULL,
  `show_date_in_listings_list` tinyint(1) DEFAULT '0',
  `all_users_can_add_news` tinyint(1) DEFAULT '1',
  `custom_frontpage_sidebar` tinyint(1) DEFAULT '0',
  `event_feed_enabled` tinyint(1) DEFAULT '1',
  `slogan` varchar(255) DEFAULT NULL,
  `description` text,
  `country` varchar(255) DEFAULT NULL,
  `members_count` int DEFAULT '0',
  `user_limit` int DEFAULT NULL,
  `monthly_price_in_euros` float DEFAULT NULL,
  `logo_file_name` varchar(255) DEFAULT NULL,
  `logo_content_type` varchar(255) DEFAULT NULL,
  `logo_file_size` int DEFAULT NULL,
  `logo_updated_at` datetime DEFAULT NULL,
  `cover_photo_file_name` varchar(255) DEFAULT NULL,
  `cover_photo_content_type` varchar(255) DEFAULT NULL,
  `cover_photo_file_size` int DEFAULT NULL,
  `cover_photo_updated_at` datetime DEFAULT NULL,
  `small_cover_photo_file_name` varchar(255) DEFAULT NULL,
  `small_cover_photo_content_type` varchar(255) DEFAULT NULL,
  `small_cover_photo_file_size` int DEFAULT NULL,
  `small_cover_photo_updated_at` datetime DEFAULT NULL,
  `custom_color1` varchar(255) DEFAULT NULL,
  `custom_color2` varchar(255) DEFAULT NULL,
  `slogan_color` varchar(6) DEFAULT NULL,
  `description_color` varchar(6) DEFAULT NULL,
  `stylesheet_url` varchar(255) DEFAULT NULL,
  `stylesheet_needs_recompile` tinyint(1) DEFAULT '0',
  `service_logo_style` varchar(255) DEFAULT 'full-logo',
  `currency` varchar(3) NOT NULL,
  `facebook_connect_enabled` tinyint(1) DEFAULT '0',
  `minimum_price_cents` int DEFAULT NULL,
  `hide_expiration_date` tinyint(1) DEFAULT '1',
  `facebook_connect_id` varchar(255) DEFAULT NULL,
  `facebook_connect_secret` varchar(255) DEFAULT NULL,
  `google_analytics_key` varchar(255) DEFAULT NULL,
  `google_maps_key` varchar(64) DEFAULT NULL,
  `name_display_type` varchar(255) DEFAULT 'first_name_with_initial',
  `twitter_handle` varchar(255) DEFAULT NULL,
  `use_community_location_as_default` tinyint(1) DEFAULT '0',
  `preproduction_stylesheet_url` varchar(255) DEFAULT NULL,
  `show_category_in_listing_list` tinyint(1) DEFAULT '0',
  `default_browse_view` varchar(255) DEFAULT 'grid',
  `wide_logo_file_name` varchar(255) DEFAULT NULL,
  `wide_logo_content_type` varchar(255) DEFAULT NULL,
  `wide_logo_file_size` int DEFAULT NULL,
  `wide_logo_updated_at` datetime DEFAULT NULL,
  `listing_comments_in_use` tinyint(1) DEFAULT '0',
  `show_listing_publishing_date` tinyint(1) DEFAULT '0',
  `require_verification_to_post_listings` tinyint(1) DEFAULT '0',
  `show_price_filter` tinyint(1) DEFAULT '0',
  `price_filter_min` int DEFAULT '0',
  `price_filter_max` int DEFAULT '100000',
  `automatic_confirmation_after_days` int DEFAULT '14',
  `favicon_file_name` varchar(255) DEFAULT NULL,
  `favicon_content_type` varchar(255) DEFAULT NULL,
  `favicon_file_size` int DEFAULT NULL,
  `favicon_updated_at` datetime DEFAULT NULL,
  `default_min_days_between_community_updates` int DEFAULT '7',
  `listing_location_required` tinyint(1) DEFAULT '0',
  `custom_head_script` text,
  `custom_body_script` text,
  `custom_css_script` text,
  `follow_in_use` tinyint(1) NOT NULL DEFAULT '1',
  `logo_processing` tinyint(1) DEFAULT NULL,
  `wide_logo_processing` tinyint(1) DEFAULT NULL,
  `cover_photo_processing` tinyint(1) DEFAULT NULL,
  `small_cover_photo_processing` tinyint(1) DEFAULT NULL,
  `favicon_processing` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `end_user_analytics` tinyint(1) DEFAULT '0',
  `show_slogan` tinyint(1) DEFAULT '1',
  `show_description` tinyint(1) DEFAULT '1',
  `hsts_max_age` int DEFAULT NULL,
  `footer_theme` int DEFAULT '0',
  `footer_copyright` text,
  `footer_enabled` tinyint(1) DEFAULT '0',
  `logo_link` varchar(255) DEFAULT NULL,
  `google_connect_enabled` tinyint(1) DEFAULT NULL,
  `google_connect_id` varchar(255) DEFAULT NULL,
  `google_connect_secret` varchar(255) DEFAULT NULL,
  `linkedin_connect_enabled` tinyint(1) DEFAULT NULL,
  `linkedin_connect_id` varchar(255) DEFAULT NULL,
  `linkedin_connect_secret` varchar(255) DEFAULT NULL,
  `pre_approved_listings` tinyint(1) DEFAULT '0',
  `allow_free_conversations` tinyint(1) DEFAULT '1',
  `email_admins_about_new_transactions` tinyint(1) DEFAULT '0',
  `show_location` tinyint(1) DEFAULT '1',
  `fuzzy_location` tinyint(1) DEFAULT '0',
  `recaptcha_site_key` varchar(255) DEFAULT NULL,
  `recaptcha_secret_key` varchar(255) DEFAULT NULL,
  `enable_social_share_buttons` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_communities_on_uuid` (`uuid`),
  KEY `index_communities_on_domain` (`domain`) USING BTREE,
  KEY `index_communities_on_ident` (`ident`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (6,_binary '\��g?_���ĳ\�T�','lllivo',NULL,0,'2024-04-27 15:47:07','2024-04-29 19:46:07','---\nlocales:\n- en\n','SHARETRIBE1.0',0,0,0,1,1,0,NULL,1,0,NULL,0,1,0,1,NULL,NULL,'AC',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'full-logo','USD',0,100,1,NULL,NULL,NULL,NULL,'first_name_with_initial',NULL,0,NULL,0,'grid',NULL,NULL,NULL,NULL,0,0,0,0,0,100000,14,NULL,NULL,NULL,NULL,7,0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,0,1,1,NULL,0,'',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,1,0,NULL,NULL,0);
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community_customizations`
--

DROP TABLE IF EXISTS `community_customizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community_customizations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_id` int DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `blank_slate` text,
  `welcome_email_content` text,
  `how_to_use_page_content` mediumtext,
  `about_page_content` mediumtext,
  `terms_page_content` mediumtext,
  `privacy_page_content` mediumtext,
  `signup_info_content` text,
  `private_community_homepage_content` mediumtext,
  `verification_to_post_listings_info_content` mediumtext,
  `search_placeholder` varchar(255) DEFAULT NULL,
  `transaction_agreement_label` varchar(255) DEFAULT NULL,
  `transaction_agreement_content` mediumtext,
  `social_media_title` varchar(255) DEFAULT NULL,
  `social_media_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `search_meta_title` varchar(255) DEFAULT NULL,
  `search_meta_description` text,
  `listing_meta_title` varchar(255) DEFAULT NULL,
  `listing_meta_description` text,
  `category_meta_title` varchar(255) DEFAULT NULL,
  `category_meta_description` text,
  `profile_meta_title` varchar(255) DEFAULT NULL,
  `profile_meta_description` text,
  PRIMARY KEY (`id`),
  KEY `index_community_customizations_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community_customizations`
--

LOCK TABLES `community_customizations` WRITE;
/*!40000 ALTER TABLE `community_customizations` DISABLE KEYS */;
INSERT INTO `community_customizations` VALUES (13,6,'en','Lllivo',NULL,NULL,'2024-04-27 15:47:08','2024-04-27 15:47:08',NULL,NULL,'<h1>How it works</h1><div>Here you can find information about how Lllivo works.</div>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `community_customizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community_memberships`
--

DROP TABLE IF EXISTS `community_memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community_memberships` (
  `id` int NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) NOT NULL,
  `community_id` int NOT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `consent` varchar(255) DEFAULT NULL,
  `invitation_id` int DEFAULT NULL,
  `last_page_load_date` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'accepted',
  `can_post_listings` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_community_memberships_on_person_id` (`person_id`) USING BTREE,
  KEY `index_community_memberships_on_community_id` (`community_id`) USING BTREE,
  KEY `community_person_status` (`community_id`,`person_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community_memberships`
--

LOCK TABLES `community_memberships` WRITE;
/*!40000 ALTER TABLE `community_memberships` DISABLE KEYS */;
INSERT INTO `community_memberships` VALUES (11,'HzH84qLj_RFlFqNPYui7vw',6,1,'2024-04-27 15:47:10','2024-04-27 15:47:12','SHARETRIBE1.0',NULL,'2024-04-27 15:47:10','accepted',0);
/*!40000 ALTER TABLE `community_memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community_social_logos`
--

DROP TABLE IF EXISTS `community_social_logos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community_social_logos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `community_id` bigint DEFAULT NULL,
  `image_file_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `image_file_size` int DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `image_processing` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_community_social_logos_on_community_id` (`community_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community_social_logos`
--

LOCK TABLES `community_social_logos` WRITE;
/*!40000 ALTER TABLE `community_social_logos` DISABLE KEYS */;
/*!40000 ALTER TABLE `community_social_logos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community_translations`
--

DROP TABLE IF EXISTS `community_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_id` int NOT NULL,
  `locale` varchar(16) NOT NULL,
  `translation_key` varchar(255) NOT NULL,
  `translation` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_community_translations_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community_translations`
--

LOCK TABLES `community_translations` WRITE;
/*!40000 ALTER TABLE `community_translations` DISABLE KEYS */;
INSERT INTO `community_translations` VALUES (24,6,'en','4e657243-b6b7-44e4-a7cb-12e13e235a65','Renting out without online payment','2024-04-27 15:47:09','2024-04-27 15:47:09'),(25,6,'en','99e73250-ae79-4b55-bcc4-42d1a239504f','Rent','2024-04-27 15:47:09','2024-04-27 15:47:09'),(26,6,'en','cd4204b8-f857-4208-ad2b-a88ecd3aa48a','Renting out with online payment','2024-04-27 15:47:09','2024-04-27 15:47:09'),(27,6,'en','4bbc12e9-7dec-4e06-8c3e-d4ae57a541c8','Rent','2024-04-27 15:47:09','2024-04-27 15:47:09');
/*!40000 ALTER TABLE `community_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_requests`
--

DROP TABLE IF EXISTS `contact_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `plan_type` varchar(255) DEFAULT NULL,
  `marketplace_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_requests`
--

LOCK TABLES `contact_requests` WRITE;
/*!40000 ALTER TABLE `contact_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `listing_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_message_at` datetime DEFAULT NULL,
  `community_id` int DEFAULT NULL,
  `starting_page` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_conversations_on_community_id` (`community_id`) USING BTREE,
  KEY `index_conversations_on_last_message_at` (`last_message_at`) USING BTREE,
  KEY `index_conversations_on_listing_id` (`listing_id`) USING BTREE,
  KEY `index_conversations_on_starting_page` (`starting_page`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_names`
--

DROP TABLE IF EXISTS `custom_field_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_field_names` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `custom_field_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `locale_index` (`custom_field_id`,`locale`) USING BTREE,
  KEY `index_custom_field_names_on_custom_field_id` (`custom_field_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_names`
--

LOCK TABLES `custom_field_names` WRITE;
/*!40000 ALTER TABLE `custom_field_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_option_selections`
--

DROP TABLE IF EXISTS `custom_field_option_selections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_field_option_selections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `custom_field_value_id` int DEFAULT NULL,
  `custom_field_option_id` int DEFAULT NULL,
  `listing_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_custom_field_option_selections_on_custom_field_option_id` (`custom_field_option_id`) USING BTREE,
  KEY `index_selected_options_on_custom_field_value_id` (`custom_field_value_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_option_selections`
--

LOCK TABLES `custom_field_option_selections` WRITE;
/*!40000 ALTER TABLE `custom_field_option_selections` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_option_selections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_option_titles`
--

DROP TABLE IF EXISTS `custom_field_option_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_field_option_titles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `custom_field_option_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `locale_index` (`custom_field_option_id`,`locale`) USING BTREE,
  KEY `index_custom_field_option_titles_on_custom_field_option_id` (`custom_field_option_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_option_titles`
--

LOCK TABLES `custom_field_option_titles` WRITE;
/*!40000 ALTER TABLE `custom_field_option_titles` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_option_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_options`
--

DROP TABLE IF EXISTS `custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_field_options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `custom_field_id` int DEFAULT NULL,
  `sort_priority` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_custom_field_options_on_custom_field_id` (`custom_field_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_options`
--

LOCK TABLES `custom_field_options` WRITE;
/*!40000 ALTER TABLE `custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_values`
--

DROP TABLE IF EXISTS `custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_field_values` (
  `id` int NOT NULL AUTO_INCREMENT,
  `custom_field_id` int DEFAULT NULL,
  `listing_id` int DEFAULT NULL,
  `text_value` text,
  `numeric_value` float DEFAULT NULL,
  `date_value` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `delta` tinyint(1) NOT NULL DEFAULT '1',
  `person_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_custom_field_values_on_listing_id` (`listing_id`) USING BTREE,
  KEY `index_custom_field_values_on_type` (`type`) USING BTREE,
  KEY `index_custom_field_values_on_person_id` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_values`
--

LOCK TABLES `custom_field_values` WRITE;
/*!40000 ALTER TABLE `custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `sort_priority` int DEFAULT NULL,
  `search_filter` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `community_id` int DEFAULT NULL,
  `required` tinyint(1) DEFAULT '1',
  `min` float DEFAULT NULL,
  `max` float DEFAULT NULL,
  `allow_decimals` tinyint(1) DEFAULT '0',
  `entity_type` int DEFAULT '0',
  `public` tinyint(1) DEFAULT '0',
  `assignment` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_custom_fields_on_community_id` (`community_id`) USING BTREE,
  KEY `index_custom_fields_on_search_filter` (`search_filter`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delayed_jobs`
--

DROP TABLE IF EXISTS `delayed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delayed_jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `priority` int DEFAULT '0',
  `attempts` int DEFAULT '0',
  `handler` text,
  `last_error` text,
  `run_at` datetime DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `locked_by` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `queue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_delayed_jobs_on_attempts_and_run_at_and_priority` (`attempts`,`run_at`,`priority`) USING BTREE,
  KEY `index_delayed_jobs_on_locked_created` (`locked_at`,`created_at`) USING BTREE,
  KEY `delayed_jobs_priority` (`priority`,`run_at`) USING BTREE,
  KEY `delayed_jobs_pending_polling` (`failed_at`,`priority`,`run_at`,`queue`,`locked_at`,`locked_by`)
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delayed_jobs`
--

LOCK TABLES `delayed_jobs` WRITE;
/*!40000 ALTER TABLE `delayed_jobs` DISABLE KEYS */;
INSERT INTO `delayed_jobs` VALUES (343,1,3,'--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: DelayedPaperclip::ProcessJob\n  job_id: 38a47a05-a057-47f8-b8ad-7ddf6ae9783e\n  provider_job_id:\n  queue_name: default\n  priority: 1\n  arguments:\n  - ListingImage\n  - 5\n  - image\n  executions: 0\n  exception_executions: {}\n  locale: en\n  timezone: UTC\n  enqueued_at: \'2024-05-01T20:14:18Z\'\n','Access Denied\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/seahorse/client/plugins/raise_response_errors.rb:17:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/plugins/sse_cpk.rb:24:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/plugins/dualstack.rb:27:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/plugins/accelerate.rb:56:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/aws-sdk-core/plugins/checksum_algorithm.rb:111:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/aws-sdk-core/plugins/jsonvalue_converter.rb:22:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/aws-sdk-core/plugins/idempotency_token.rb:19:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/aws-sdk-core/plugins/param_converter.rb:26:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/seahorse/client/plugins/request_callback.rb:71:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/aws-sdk-core/plugins/response_paging.rb:12:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/seahorse/client/plugins/response_target.rb:24:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/seahorse/client/request.rb:72:in `send_request\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/client.rb:12369:in `put_object\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:64:in `block in put_object\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:53:in `block in open_file\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:53:in `open\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:53:in `open_file\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:63:in `put_object\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:45:in `upload\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/customizations/object.rb:440:in `upload_file\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/bundler/gems/paperclip-39dd2db10062/lib/paperclip/storage/s3.rb:379:in `block in flush_writes\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/bundler/gems/paperclip-39dd2db10062/lib/paperclip/storage/s3.rb:352:in `each\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/bundler/gems/paperclip-39dd2db10062/lib/paperclip/storage/s3.rb:352:in `flush_writes\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/bundler/gems/paperclip-39dd2db10062/lib/paperclip/attachment.rb:246:in `save\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_paperclip-3.0.1/lib/delayed_paperclip/attachment.rb:67:in `save\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/bundler/gems/paperclip-39dd2db10062/lib/paperclip/attachment.rb:351:in `reprocess!\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_paperclip-3.0.1/lib/delayed_paperclip/attachment.rb:53:in `process_delayed!\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_paperclip-3.0.1/lib/delayed_paperclip.rb:28:in `process_job\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_paperclip-3.0.1/lib/delayed_paperclip/process_job.rb:11:in `perform\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/execution.rb:48:in `block in perform_now\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:117:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/rails/active_job.rb:22:in `block in perform\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-ruby-4.15.0/lib/airbrake-ruby/benchmark.rb:13:in `measure\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/rails/active_job.rb:21:in `perform\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/rails/active_job.rb:45:in `block (2 levels) in <module:ActiveJob>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/Projects/res/sharetribe/config/initializers/i18n.rb:74:in `with_locale\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/translation.rb:9:in `block (2 levels) in <module:Translation>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/core_ext/time/zones.rb:66:in `use_zone\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/timezones.rb:9:in `block (2 levels) in <module:Timezones>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/instrumentation.rb:21:in `block in instrument\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/notifications.rb:203:in `block in instrument\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/notifications/instrumenter.rb:24:in `instrument\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/notifications.rb:203:in `instrument\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/instrumentation.rb:31:in `instrument\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/instrumentation.rb:14:in `block (2 levels) in <module:Instrumentation>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/logging.rb:22:in `block in tag_logger\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/tagged_logging.rb:99:in `block in tagged\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/tagged_logging.rb:37:in `tagged\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/tagged_logging.rb:99:in `tagged\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/logging.rb:22:in `tag_logger\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/logging.rb:15:in `block (2 levels) in <module:Logging>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:137:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/execution.rb:47:in `perform_now\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/execution.rb:25:in `block in execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:117:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/railtie.rb:47:in `block (4 levels) in <class:Railtie>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/execution_wrapper.rb:91:in `wrap\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/reloader.rb:72:in `block in wrap\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/execution_wrapper.rb:91:in `wrap\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/reloader.rb:71:in `wrap\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/railtie.rb:46:in `block (3 levels) in <class:Railtie>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:137:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/execution.rb:23:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/queue_adapters/delayed_job_adapter.rb:42:in `perform\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/backend/base.rb:81:in `block in invoke_job\'\n/Users/macbookpro/Projects/res/sharetribe/config/initializers/delayed_job.rb:10:in `block (2 levels) in <class:DelayedJobLoggerPlugin>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/delayed_job.rb:13:in `block (3 levels) in <class:Airbrake>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-ruby-4.15.0/lib/airbrake-ruby/benchmark.rb:13:in `measure\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/delayed_job.rb:11:in `block (2 levels) in <class:Airbrake>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:66:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/backend/base.rb:78:in `invoke_job\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:230:in `block (2 levels) in run\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/timeout-0.3.2/lib/timeout.rb:189:in `block in timeout\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/timeout-0.3.2/lib/timeout.rb:196:in `timeout\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:230:in `block in run\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/3.2.0/benchmark.rb:311:in `realtime\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:229:in `run\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:312:in `block in reserve_and_run_one_job\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:66:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:312:in `reserve_and_run_one_job\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:213:in `block in work_off\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:212:in `times\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:212:in `work_off\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:175:in `block (4 levels) in start\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/3.2.0/benchmark.rb:311:in `realtime\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:174:in `block (3 levels) in start\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:66:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:173:in `block (2 levels) in start\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:172:in `loop\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:172:in `block in start\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/plugins/clear_locks.rb:7:in `block (2 levels) in <class:ClearLocks>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:66:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:171:in `start\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/tasks.rb:9:in `block (2 levels) in <main>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:281:in `block in execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:281:in `each\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:281:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/rake.rb:19:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:219:in `block in invoke_with_call_chain\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:199:in `synchronize\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:199:in `invoke_with_call_chain\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:188:in `invoke\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:160:in `invoke_task\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:116:in `block (2 levels) in top_level\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:116:in `each\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:116:in `block in top_level\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:125:in `run_with_threads\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:110:in `top_level\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:83:in `block in run\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:186:in `standard_exception_handling\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:80:in `run\'\nbin/rake:4:in `<main>\'','2024-05-01 20:14:53',NULL,'2024-05-01 20:14:59',NULL,'2024-05-01 20:14:18','2024-05-01 20:14:59','default'),(344,1,3,'--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: DelayedPaperclip::ProcessJob\n  job_id: 88ce36cc-dae0-484e-88e7-0a48c7d6a43f\n  provider_job_id:\n  queue_name: default\n  priority: 1\n  arguments:\n  - ListingImage\n  - 6\n  - image\n  executions: 0\n  exception_executions: {}\n  locale: en\n  timezone: UTC\n  enqueued_at: \'2024-05-01T20:14:24Z\'\n','Access Denied\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/seahorse/client/plugins/raise_response_errors.rb:17:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/plugins/sse_cpk.rb:24:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/plugins/dualstack.rb:27:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/plugins/accelerate.rb:56:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/aws-sdk-core/plugins/checksum_algorithm.rb:111:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/aws-sdk-core/plugins/jsonvalue_converter.rb:22:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/aws-sdk-core/plugins/idempotency_token.rb:19:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/aws-sdk-core/plugins/param_converter.rb:26:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/seahorse/client/plugins/request_callback.rb:71:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/aws-sdk-core/plugins/response_paging.rb:12:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/seahorse/client/plugins/response_target.rb:24:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/seahorse/client/request.rb:72:in `send_request\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/client.rb:12369:in `put_object\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:64:in `block in put_object\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:53:in `block in open_file\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:53:in `open\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:53:in `open_file\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:63:in `put_object\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:45:in `upload\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/customizations/object.rb:440:in `upload_file\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/bundler/gems/paperclip-39dd2db10062/lib/paperclip/storage/s3.rb:379:in `block in flush_writes\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/bundler/gems/paperclip-39dd2db10062/lib/paperclip/storage/s3.rb:352:in `each\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/bundler/gems/paperclip-39dd2db10062/lib/paperclip/storage/s3.rb:352:in `flush_writes\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/bundler/gems/paperclip-39dd2db10062/lib/paperclip/attachment.rb:246:in `save\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_paperclip-3.0.1/lib/delayed_paperclip/attachment.rb:67:in `save\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/bundler/gems/paperclip-39dd2db10062/lib/paperclip/attachment.rb:351:in `reprocess!\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_paperclip-3.0.1/lib/delayed_paperclip/attachment.rb:53:in `process_delayed!\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_paperclip-3.0.1/lib/delayed_paperclip.rb:28:in `process_job\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_paperclip-3.0.1/lib/delayed_paperclip/process_job.rb:11:in `perform\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/execution.rb:48:in `block in perform_now\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:117:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/rails/active_job.rb:22:in `block in perform\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-ruby-4.15.0/lib/airbrake-ruby/benchmark.rb:13:in `measure\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/rails/active_job.rb:21:in `perform\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/rails/active_job.rb:45:in `block (2 levels) in <module:ActiveJob>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/Projects/res/sharetribe/config/initializers/i18n.rb:74:in `with_locale\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/translation.rb:9:in `block (2 levels) in <module:Translation>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/core_ext/time/zones.rb:66:in `use_zone\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/timezones.rb:9:in `block (2 levels) in <module:Timezones>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/instrumentation.rb:21:in `block in instrument\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/notifications.rb:203:in `block in instrument\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/notifications/instrumenter.rb:24:in `instrument\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/notifications.rb:203:in `instrument\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/instrumentation.rb:31:in `instrument\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/instrumentation.rb:14:in `block (2 levels) in <module:Instrumentation>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/logging.rb:22:in `block in tag_logger\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/tagged_logging.rb:99:in `block in tagged\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/tagged_logging.rb:37:in `tagged\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/tagged_logging.rb:99:in `tagged\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/logging.rb:22:in `tag_logger\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/logging.rb:15:in `block (2 levels) in <module:Logging>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:137:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/execution.rb:47:in `perform_now\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/execution.rb:25:in `block in execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:117:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/railtie.rb:47:in `block (4 levels) in <class:Railtie>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/execution_wrapper.rb:91:in `wrap\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/reloader.rb:72:in `block in wrap\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/execution_wrapper.rb:91:in `wrap\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/reloader.rb:71:in `wrap\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/railtie.rb:46:in `block (3 levels) in <class:Railtie>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:137:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/execution.rb:23:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/queue_adapters/delayed_job_adapter.rb:42:in `perform\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/backend/base.rb:81:in `block in invoke_job\'\n/Users/macbookpro/Projects/res/sharetribe/config/initializers/delayed_job.rb:10:in `block (2 levels) in <class:DelayedJobLoggerPlugin>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/delayed_job.rb:13:in `block (3 levels) in <class:Airbrake>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-ruby-4.15.0/lib/airbrake-ruby/benchmark.rb:13:in `measure\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/delayed_job.rb:11:in `block (2 levels) in <class:Airbrake>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:66:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/backend/base.rb:78:in `invoke_job\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:230:in `block (2 levels) in run\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/timeout-0.3.2/lib/timeout.rb:189:in `block in timeout\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/timeout-0.3.2/lib/timeout.rb:196:in `timeout\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:230:in `block in run\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/3.2.0/benchmark.rb:311:in `realtime\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:229:in `run\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:312:in `block in reserve_and_run_one_job\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:66:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:312:in `reserve_and_run_one_job\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:213:in `block in work_off\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:212:in `times\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:212:in `work_off\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:175:in `block (4 levels) in start\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/3.2.0/benchmark.rb:311:in `realtime\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:174:in `block (3 levels) in start\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:66:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:173:in `block (2 levels) in start\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:172:in `loop\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:172:in `block in start\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/plugins/clear_locks.rb:7:in `block (2 levels) in <class:ClearLocks>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:66:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:171:in `start\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/tasks.rb:9:in `block (2 levels) in <main>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:281:in `block in execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:281:in `each\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:281:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/rake.rb:19:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:219:in `block in invoke_with_call_chain\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:199:in `synchronize\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:199:in `invoke_with_call_chain\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:188:in `invoke\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:160:in `invoke_task\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:116:in `block (2 levels) in top_level\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:116:in `each\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:116:in `block in top_level\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:125:in `run_with_threads\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:110:in `top_level\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:83:in `block in run\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:186:in `standard_exception_handling\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:80:in `run\'\nbin/rake:4:in `<main>\'','2024-05-01 20:14:54',NULL,'2024-05-01 20:14:59',NULL,'2024-05-01 20:14:24','2024-05-01 20:14:59','default'),(345,1,3,'--- !ruby/object:ActiveJob::QueueAdapters::DelayedJobAdapter::JobWrapper\njob_data:\n  job_class: DelayedPaperclip::ProcessJob\n  job_id: 6958e8fc-2443-473c-b6c5-8d227c9a65d9\n  provider_job_id:\n  queue_name: default\n  priority: 1\n  arguments:\n  - ListingImage\n  - 7\n  - image\n  executions: 0\n  exception_executions: {}\n  locale: en\n  timezone: UTC\n  enqueued_at: \'2024-05-01T20:14:52Z\'\n','Access Denied\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/seahorse/client/plugins/raise_response_errors.rb:17:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/plugins/sse_cpk.rb:24:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/plugins/dualstack.rb:27:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/plugins/accelerate.rb:56:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/aws-sdk-core/plugins/checksum_algorithm.rb:111:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/aws-sdk-core/plugins/jsonvalue_converter.rb:22:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/aws-sdk-core/plugins/idempotency_token.rb:19:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/aws-sdk-core/plugins/param_converter.rb:26:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/seahorse/client/plugins/request_callback.rb:71:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/aws-sdk-core/plugins/response_paging.rb:12:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/seahorse/client/plugins/response_target.rb:24:in `call\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-core-3.130.2/lib/seahorse/client/request.rb:72:in `send_request\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/client.rb:12369:in `put_object\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:64:in `block in put_object\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:53:in `block in open_file\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:53:in `open\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:53:in `open_file\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:63:in `put_object\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/file_uploader.rb:45:in `upload\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/aws-sdk-s3-1.114.0/lib/aws-sdk-s3/customizations/object.rb:440:in `upload_file\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/bundler/gems/paperclip-39dd2db10062/lib/paperclip/storage/s3.rb:379:in `block in flush_writes\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/bundler/gems/paperclip-39dd2db10062/lib/paperclip/storage/s3.rb:352:in `each\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/bundler/gems/paperclip-39dd2db10062/lib/paperclip/storage/s3.rb:352:in `flush_writes\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/bundler/gems/paperclip-39dd2db10062/lib/paperclip/attachment.rb:246:in `save\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_paperclip-3.0.1/lib/delayed_paperclip/attachment.rb:67:in `save\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/bundler/gems/paperclip-39dd2db10062/lib/paperclip/attachment.rb:351:in `reprocess!\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_paperclip-3.0.1/lib/delayed_paperclip/attachment.rb:53:in `process_delayed!\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_paperclip-3.0.1/lib/delayed_paperclip.rb:28:in `process_job\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_paperclip-3.0.1/lib/delayed_paperclip/process_job.rb:11:in `perform\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/execution.rb:48:in `block in perform_now\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:117:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/rails/active_job.rb:22:in `block in perform\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-ruby-4.15.0/lib/airbrake-ruby/benchmark.rb:13:in `measure\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/rails/active_job.rb:21:in `perform\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/rails/active_job.rb:45:in `block (2 levels) in <module:ActiveJob>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/Projects/res/sharetribe/config/initializers/i18n.rb:74:in `with_locale\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/translation.rb:9:in `block (2 levels) in <module:Translation>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/core_ext/time/zones.rb:66:in `use_zone\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/timezones.rb:9:in `block (2 levels) in <module:Timezones>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/instrumentation.rb:21:in `block in instrument\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/notifications.rb:203:in `block in instrument\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/notifications/instrumenter.rb:24:in `instrument\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/notifications.rb:203:in `instrument\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/instrumentation.rb:31:in `instrument\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/instrumentation.rb:14:in `block (2 levels) in <module:Instrumentation>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/logging.rb:22:in `block in tag_logger\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/tagged_logging.rb:99:in `block in tagged\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/tagged_logging.rb:37:in `tagged\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/tagged_logging.rb:99:in `tagged\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/logging.rb:22:in `tag_logger\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/logging.rb:15:in `block (2 levels) in <module:Logging>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:137:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/execution.rb:47:in `perform_now\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/execution.rb:25:in `block in execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:117:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/railtie.rb:47:in `block (4 levels) in <class:Railtie>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/execution_wrapper.rb:91:in `wrap\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/reloader.rb:72:in `block in wrap\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/execution_wrapper.rb:91:in `wrap\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/reloader.rb:71:in `wrap\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/railtie.rb:46:in `block (3 levels) in <class:Railtie>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `instance_exec\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:126:in `block in run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-6.1.7.3/lib/active_support/callbacks.rb:137:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/execution.rb:23:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activejob-6.1.7.3/lib/active_job/queue_adapters/delayed_job_adapter.rb:42:in `perform\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/backend/base.rb:81:in `block in invoke_job\'\n/Users/macbookpro/Projects/res/sharetribe/config/initializers/delayed_job.rb:10:in `block (2 levels) in <class:DelayedJobLoggerPlugin>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/delayed_job.rb:13:in `block (3 levels) in <class:Airbrake>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-ruby-4.15.0/lib/airbrake-ruby/benchmark.rb:13:in `measure\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/delayed_job.rb:11:in `block (2 levels) in <class:Airbrake>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:66:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/backend/base.rb:78:in `invoke_job\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:230:in `block (2 levels) in run\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/timeout-0.3.2/lib/timeout.rb:189:in `block in timeout\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/timeout-0.3.2/lib/timeout.rb:196:in `timeout\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:230:in `block in run\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/3.2.0/benchmark.rb:311:in `realtime\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:229:in `run\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:312:in `block in reserve_and_run_one_job\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:66:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:312:in `reserve_and_run_one_job\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:213:in `block in work_off\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:212:in `times\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:212:in `work_off\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:175:in `block (4 levels) in start\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/3.2.0/benchmark.rb:311:in `realtime\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:174:in `block (3 levels) in start\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:66:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:173:in `block (2 levels) in start\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:172:in `loop\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:172:in `block in start\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/plugins/clear_locks.rb:7:in `block (2 levels) in <class:ClearLocks>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block (2 levels) in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:61:in `block in initialize\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:79:in `block in add\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:66:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/lifecycle.rb:40:in `run_callbacks\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/worker.rb:171:in `start\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/delayed_job-4.1.10/lib/delayed/tasks.rb:9:in `block (2 levels) in <main>\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:281:in `block in execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:281:in `each\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:281:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/airbrake-10.0.6/lib/airbrake/rake.rb:19:in `execute\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:219:in `block in invoke_with_call_chain\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:199:in `synchronize\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:199:in `invoke_with_call_chain\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/task.rb:188:in `invoke\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:160:in `invoke_task\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:116:in `block (2 levels) in top_level\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:116:in `each\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:116:in `block in top_level\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:125:in `run_with_threads\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:110:in `top_level\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:83:in `block in run\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:186:in `standard_exception_handling\'\n/Users/macbookpro/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/rake-13.0.6/lib/rake/application.rb:80:in `run\'\nbin/rake:4:in `<main>\'','2024-05-01 20:15:27',NULL,'2024-05-01 20:15:32',NULL,'2024-05-01 20:14:52','2024-05-01 20:15:32','default');
/*!40000 ALTER TABLE `delayed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain_setups`
--

DROP TABLE IF EXISTS `domain_setups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domain_setups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `community_id` bigint DEFAULT NULL,
  `domain` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `error` text,
  `critical_error` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_domain_setups_on_domain` (`domain`),
  UNIQUE KEY `index_domain_setups_on_community_id` (`community_id`),
  KEY `index_domain_setups_on_state_and_updated_at` (`state`,`updated_at`),
  KEY `index_domain_setups_on_critical_error` (`critical_error`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_setups`
--

LOCK TABLES `domain_setups` WRITE;
/*!40000 ALTER TABLE `domain_setups` DISABLE KEYS */;
INSERT INTO `domain_setups` VALUES (1,6,'example.com','check-pending',NULL,NULL,'2024-04-27 16:25:26','2024-04-27 16:25:26');
/*!40000 ALTER TABLE `domain_setups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) DEFAULT NULL,
  `community_id` int NOT NULL,
  `address` varchar(255) NOT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `send_notifications` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_emails_on_address_and_community_id` (`address`,`community_id`) USING BTREE,
  KEY `index_emails_on_person_id` (`person_id`) USING BTREE,
  KEY `index_emails_on_address` (`address`) USING BTREE,
  KEY `index_emails_on_community_id` (`community_id`) USING BTREE,
  KEY `index_emails_on_confirmation_token` (`confirmation_token`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (12,'HzH84qLj_RFlFqNPYui7vw',6,'ali.hassan.mirzaa@gmail.com','2024-04-27 15:47:10',NULL,'sIK4vvrtrYenfeEQ','2024-04-27 15:47:10','2024-04-27 15:47:10',1);
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `export_task_results`
--

DROP TABLE IF EXISTS `export_task_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `export_task_results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `file_file_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `file_content_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `file_file_size` int DEFAULT NULL,
  `file_updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_on_token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export_task_results`
--

LOCK TABLES `export_task_results` WRITE;
/*!40000 ALTER TABLE `export_task_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `export_task_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favors`
--

DROP TABLE IF EXISTS `favors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `owner_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `payment` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `status` varchar(255) DEFAULT 'enabled',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favors`
--

LOCK TABLES `favors` WRITE;
/*!40000 ALTER TABLE `favors` DISABLE KEYS */;
/*!40000 ALTER TABLE `favors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature_flags`
--

DROP TABLE IF EXISTS `feature_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feature_flags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_id` int NOT NULL,
  `person_id` varchar(255) DEFAULT NULL,
  `feature` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_feature_flags_on_community_id_and_person_id` (`community_id`,`person_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature_flags`
--

LOCK TABLES `feature_flags` WRITE;
/*!40000 ALTER TABLE `feature_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `feature_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedbacks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text,
  `author_id` varchar(255) DEFAULT NULL,
  `url` varchar(2048) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_handled` int DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `community_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filters` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) DEFAULT NULL,
  `keywords` text,
  `category` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters`
--

LOCK TABLES `filters` WRITE;
/*!40000 ALTER TABLE `filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follower_relationships`
--

DROP TABLE IF EXISTS `follower_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follower_relationships` (
  `id` int NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) NOT NULL,
  `follower_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_follower_relationships_on_person_id_and_follower_id` (`person_id`,`follower_id`) USING BTREE,
  KEY `index_follower_relationships_on_follower_id` (`follower_id`) USING BTREE,
  KEY `index_follower_relationships_on_person_id` (`person_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follower_relationships`
--

LOCK TABLES `follower_relationships` WRITE;
/*!40000 ALTER TABLE `follower_relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `follower_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitation_unsubscribes`
--

DROP TABLE IF EXISTS `invitation_unsubscribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invitation_unsubscribes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `community_id` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_invitation_unsubscribes_on_community_id` (`community_id`),
  KEY `index_invitation_unsubscribes_on_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation_unsubscribes`
--

LOCK TABLES `invitation_unsubscribes` WRITE;
/*!40000 ALTER TABLE `invitation_unsubscribes` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitation_unsubscribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitations`
--

DROP TABLE IF EXISTS `invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invitations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `community_id` int DEFAULT NULL,
  `usages_left` int DEFAULT NULL,
  `valid_until` datetime DEFAULT NULL,
  `information` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `inviter_id` varchar(255) DEFAULT NULL,
  `message` text,
  `email` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_invitations_on_code` (`code`) USING BTREE,
  KEY `index_invitations_on_inviter_id` (`inviter_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitations`
--

LOCK TABLES `invitations` WRITE;
/*!40000 ALTER TABLE `invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `owner_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `payment` int DEFAULT NULL,
  `status` varchar(255) DEFAULT 'enabled',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kassi_events`
--

DROP TABLE IF EXISTS `kassi_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kassi_events` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `receiver_id` varchar(255) DEFAULT NULL,
  `realizer_id` varchar(255) DEFAULT NULL,
  `eventable_type` varchar(255) DEFAULT NULL,
  `eventable_id` bigint DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_kassi_events_on_eventable` (`eventable_type`,`eventable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kassi_events`
--

LOCK TABLES `kassi_events` WRITE;
/*!40000 ALTER TABLE `kassi_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `kassi_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kassi_events_people`
--

DROP TABLE IF EXISTS `kassi_events_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kassi_events_people` (
  `person_id` varchar(255) DEFAULT NULL,
  `kassi_event_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kassi_events_people`
--

LOCK TABLES `kassi_events_people` WRITE;
/*!40000 ALTER TABLE `kassi_events_people` DISABLE KEYS */;
/*!40000 ALTER TABLE `kassi_events_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_page_versions`
--

DROP TABLE IF EXISTS `landing_page_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_page_versions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_id` int NOT NULL,
  `version` int NOT NULL,
  `released` datetime DEFAULT NULL,
  `content` mediumtext NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_landing_page_versions_on_community_id_and_version` (`community_id`,`version`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_page_versions`
--

LOCK TABLES `landing_page_versions` WRITE;
/*!40000 ALTER TABLE `landing_page_versions` DISABLE KEYS */;
INSERT INTO `landing_page_versions` VALUES (8,6,1,NULL,'{\"settings\":{\"marketplace_id\":6,\"locale\":\"en\",\"sitename\":\"lllivo\"},\"page\":{\"twitter_handle\":{\"type\":\"marketplace_data\",\"id\":\"twitter_handle\"},\"twitter_image\":{\"type\":\"assets\",\"id\":\"default_hero_background\"},\"facebook_image\":{\"type\":\"assets\",\"id\":\"default_hero_background\"},\"title\":{\"type\":\"marketplace_data\",\"id\":\"page_title\"},\"description\":{\"type\":\"marketplace_data\",\"id\":\"description\"},\"publisher\":{\"type\":\"marketplace_data\",\"id\":\"name\"},\"copyright\":{\"type\":\"marketplace_data\",\"id\":\"name\"},\"facebook_site_name\":{\"type\":\"marketplace_data\",\"id\":\"name\"},\"google_site_verification\":{\"value\":\"CHANGEME\"}},\"sections\":[{\"id\":\"hero\",\"kind\":\"hero\",\"variation\":{\"type\":\"marketplace_data\",\"id\":\"search_type\"},\"title\":{\"type\":\"marketplace_data\",\"id\":\"slogan\"},\"subtitle\":{\"type\":\"marketplace_data\",\"id\":\"description\"},\"background_image\":{\"type\":\"assets\",\"id\":\"default_hero_background\"},\"background_image_variation\":\"dark\",\"search_button\":{\"type\":\"translation\",\"id\":\"search_button\"},\"search_path\":{\"type\":\"path\",\"id\":\"search\"},\"search_placeholder\":{\"type\":\"marketplace_data\",\"id\":\"search_placeholder\"},\"search_location_with_keyword_placeholder\":{\"type\":\"marketplace_data\",\"id\":\"search_location_with_keyword_placeholder\"},\"signup_path\":{\"type\":\"path\",\"id\":\"signup\"},\"signup_button\":{\"type\":\"translation\",\"id\":\"signup_button\"},\"search_button_color\":{\"type\":\"marketplace_data\",\"id\":\"primary_color\"},\"search_button_color_hover\":{\"type\":\"marketplace_data\",\"id\":\"primary_color_darken\"},\"signup_button_color\":{\"type\":\"marketplace_data\",\"id\":\"primary_color\"},\"signup_button_color_hover\":{\"type\":\"marketplace_data\",\"id\":\"primary_color_darken\"},\"cta_button_type\":\"default\",\"button_title\":null,\"button_path\":null},{\"id\":\"footer\",\"kind\":\"footer\",\"theme\":\"logo\",\"social_media_icon_color\":{\"type\":\"marketplace_data\",\"id\":\"primary_color\"},\"social_media_icon_color_hover\":{\"type\":\"marketplace_data\",\"id\":\"primary_color_darken\"},\"links\":[],\"social\":[{\"service\":\"facebook\",\"url\":\"\"},{\"service\":\"twitter\",\"url\":\"\"},{\"service\":\"instagram\",\"url\":\"\"},{\"service\":\"youtube\",\"url\":\"\"},{\"service\":\"googleplus\",\"url\":\"\"},{\"service\":\"linkedin\",\"url\":\"\"},{\"service\":\"pinterest\",\"url\":\"\"},{\"service\":\"soundcloud\",\"url\":\"\"},{\"service\":\"tiktok\",\"url\":\"\"}],\"copyright\":\"\",\"logo\":{\"type\":\"marketplace_data\",\"id\":\"logo\"}}],\"composition\":[{\"section\":{\"type\":\"sections\",\"id\":\"hero\"}},{\"section\":{\"type\":\"sections\",\"id\":\"footer\"}}],\"assets\":[{\"id\":\"default_hero_background\",\"src\":\"default_hero_background.jpg\",\"content_type\":\"image/jpeg\"}]}','2024-04-27 17:30:30','2024-04-27 17:30:30');
/*!40000 ALTER TABLE `landing_page_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_pages`
--

DROP TABLE IF EXISTS `landing_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_id` int NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `released_version` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_landing_pages_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_pages`
--

LOCK TABLES `landing_pages` WRITE;
/*!40000 ALTER TABLE `landing_pages` DISABLE KEYS */;
INSERT INTO `landing_pages` VALUES (4,6,0,NULL,'2024-04-27 17:30:29');
/*!40000 ALTER TABLE `landing_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_blocked_dates`
--

DROP TABLE IF EXISTS `listing_blocked_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listing_blocked_dates` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `listing_id` bigint DEFAULT NULL,
  `blocked_at` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_listing_blocked_dates_on_listing_id_and_blocked_at` (`listing_id`,`blocked_at`),
  KEY `index_listing_blocked_dates_on_listing_id` (`listing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_blocked_dates`
--

LOCK TABLES `listing_blocked_dates` WRITE;
/*!40000 ALTER TABLE `listing_blocked_dates` DISABLE KEYS */;
/*!40000 ALTER TABLE `listing_blocked_dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_comments`
--

DROP TABLE IF EXISTS `listing_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listing_comments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `author_id` varchar(255) DEFAULT NULL,
  `listing_id` int DEFAULT NULL,
  `content` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `is_read` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_comments`
--

LOCK TABLES `listing_comments` WRITE;
/*!40000 ALTER TABLE `listing_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `listing_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_followers`
--

DROP TABLE IF EXISTS `listing_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listing_followers` (
  `person_id` varchar(255) DEFAULT NULL,
  `listing_id` int DEFAULT NULL,
  KEY `index_listing_followers_on_listing_id` (`listing_id`) USING BTREE,
  KEY `index_listing_followers_on_person_id` (`person_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_followers`
--

LOCK TABLES `listing_followers` WRITE;
/*!40000 ALTER TABLE `listing_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `listing_followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_images`
--

DROP TABLE IF EXISTS `listing_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listing_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `listing_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `image_processing` tinyint(1) DEFAULT NULL,
  `image_downloaded` tinyint(1) DEFAULT '0',
  `error` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `author_id` varchar(255) DEFAULT NULL,
  `position` int DEFAULT '0',
  `email_image_file_name` varchar(255) DEFAULT NULL,
  `email_image_content_type` varchar(255) DEFAULT NULL,
  `email_image_file_size` int DEFAULT NULL,
  `email_image_updated_at` datetime DEFAULT NULL,
  `email_hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_listing_images_on_listing_id` (`listing_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_images`
--

LOCK TABLES `listing_images` WRITE;
/*!40000 ALTER TABLE `listing_images` DISABLE KEYS */;
INSERT INTO `listing_images` VALUES (5,15,'2024-05-01 20:14:18','2024-05-01 20:14:18','Screenshot_2024-02-02_at_12.16.01_PM.png','image/png',590815,'2024-05-01 20:14:18',1,1,NULL,NULL,NULL,'HzH84qLj_RFlFqNPYui7vw',1,NULL,NULL,NULL,NULL,NULL),(6,15,'2024-05-01 20:14:24','2024-05-01 20:14:24','Screenshot_2024-02-06_at_1.00.50_PM.png','image/png',81450,'2024-05-01 20:14:24',1,1,NULL,NULL,NULL,'HzH84qLj_RFlFqNPYui7vw',2,NULL,NULL,NULL,NULL,NULL),(7,15,'2024-05-01 20:14:52','2024-05-01 20:14:52','Screenshot_2024-02-02_at_12.16.01_PM.png','image/png',590815,'2024-05-01 20:14:52',1,1,NULL,NULL,NULL,'HzH84qLj_RFlFqNPYui7vw',3,NULL,NULL,NULL,NULL,NULL),(8,16,'2024-05-01 20:36:06','2024-05-01 20:36:14','Screenshot_2024-02-02_at_12.20.33_PM.png','image/png',552606,'2024-05-01 20:36:10',0,1,NULL,784,1148,'HzH84qLj_RFlFqNPYui7vw',1,NULL,NULL,NULL,NULL,NULL),(9,16,'2024-05-01 20:36:24','2024-05-01 20:36:30','Screenshot_2024-02-02_at_12.16.01_PM.png','image/png',464473,'2024-05-01 20:36:25',0,1,NULL,1600,299,'HzH84qLj_RFlFqNPYui7vw',2,NULL,NULL,NULL,NULL,NULL),(10,17,'2024-05-02 17:14:42','2024-05-02 17:15:14','Screenshot_2024-02-02_at_12.16.01_PM.png','image/png',464473,'2024-05-02 17:15:10',0,1,NULL,1600,299,'HzH84qLj_RFlFqNPYui7vw',1,NULL,NULL,NULL,NULL,NULL),(11,17,'2024-05-02 17:14:45','2024-05-02 17:15:18','Screenshot_2024-02-02_at_12.20.33_PM.png','image/png',552606,'2024-05-02 17:15:14',0,1,NULL,784,1148,'HzH84qLj_RFlFqNPYui7vw',2,NULL,NULL,NULL,NULL,NULL),(12,17,'2024-05-02 17:15:32','2024-05-02 17:15:44','Screenshot_2024-02-02_at_12.16.01_PM.png','image/png',464473,'2024-05-02 17:15:37',0,1,NULL,1600,299,'HzH84qLj_RFlFqNPYui7vw',3,NULL,NULL,NULL,NULL,NULL),(13,17,'2024-05-02 17:15:35','2024-05-02 17:15:49','Screenshot_2024-02-25_at_10.10.54_PM.png','image/png',98780,'2024-05-02 17:15:44',0,1,NULL,700,934,'HzH84qLj_RFlFqNPYui7vw',4,NULL,NULL,NULL,NULL,NULL),(14,17,'2024-05-02 17:15:40','2024-05-02 17:15:58','Screenshot_2024-02-25_at_10.31.02_PM.png','image/png',178238,'2024-05-02 17:15:49',0,1,NULL,1600,774,'HzH84qLj_RFlFqNPYui7vw',5,NULL,NULL,NULL,NULL,NULL),(15,17,'2024-05-02 17:15:43','2024-05-02 17:16:03','Screenshot_2024-02-25_at_4.01.50_PM.png','image/png',59632,'2024-05-02 17:15:58',0,1,NULL,666,596,'HzH84qLj_RFlFqNPYui7vw',6,NULL,NULL,NULL,NULL,NULL),(16,17,'2024-05-02 17:15:47','2024-05-02 17:16:08','Screenshot_2024-02-25_at_10.10.54_PM.png','image/png',98780,'2024-05-02 17:16:03',0,1,NULL,700,934,'HzH84qLj_RFlFqNPYui7vw',7,NULL,NULL,NULL,NULL,NULL),(17,17,'2024-05-02 17:15:53','2024-05-02 17:16:11','Screenshot_2024-02-25_at_4.01.50_PM.png','image/png',59632,'2024-05-02 17:16:08',0,1,NULL,666,596,'HzH84qLj_RFlFqNPYui7vw',8,NULL,NULL,NULL,NULL,NULL),(18,17,'2024-05-02 17:16:00','2024-05-02 17:16:16','Screenshot_2024-05-02_at_1.40.20_PM.png','image/png',109740,'2024-05-02 17:16:11',0,1,NULL,1600,795,'HzH84qLj_RFlFqNPYui7vw',9,NULL,NULL,NULL,NULL,NULL),(19,17,'2024-05-02 17:16:05','2024-05-02 17:16:19','Screenshot_2024-05-02_at_9.03.13_PM.png','image/png',76,'2024-05-02 17:16:16',0,1,NULL,14,32,'HzH84qLj_RFlFqNPYui7vw',10,NULL,NULL,NULL,NULL,NULL),(20,17,'2024-05-02 17:16:13','2024-05-02 17:16:21','Screenshot_2024-05-02_at_9.03.13_PM.png','image/png',76,'2024-05-02 17:16:19',0,1,NULL,14,32,'HzH84qLj_RFlFqNPYui7vw',11,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `listing_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_shapes`
--

DROP TABLE IF EXISTS `listing_shapes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listing_shapes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_id` int NOT NULL,
  `transaction_process_id` int NOT NULL,
  `price_enabled` tinyint(1) NOT NULL,
  `shipping_enabled` tinyint(1) NOT NULL,
  `availability` varchar(32) DEFAULT 'none',
  `name` varchar(255) NOT NULL,
  `name_tr_key` varchar(255) NOT NULL,
  `action_button_tr_key` varchar(255) NOT NULL,
  `sort_priority` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `multicol_index` (`community_id`,`deleted`,`sort_priority`) USING BTREE,
  KEY `index_listing_shapes_on_community_id` (`community_id`) USING BTREE,
  KEY `index_listing_shapes_on_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_shapes`
--

LOCK TABLES `listing_shapes` WRITE;
/*!40000 ALTER TABLE `listing_shapes` DISABLE KEYS */;
INSERT INTO `listing_shapes` VALUES (12,6,17,1,0,'none','renting-out-without-online-payment','4e657243-b6b7-44e4-a7cb-12e13e235a65','99e73250-ae79-4b55-bcc4-42d1a239504f',0,'2024-04-27 15:47:09','2024-04-27 15:47:09',0),(13,6,19,1,0,'booking','renting-out-with-online-payment','cd4204b8-f857-4208-ad2b-a88ecd3aa48a','4bbc12e9-7dec-4e06-8c3e-d4ae57a541c8',0,'2024-04-27 15:47:09','2024-04-27 15:47:09',0);
/*!40000 ALTER TABLE `listing_shapes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_units`
--

DROP TABLE IF EXISTS `listing_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listing_units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit_type` varchar(32) NOT NULL,
  `quantity_selector` varchar(32) NOT NULL,
  `kind` varchar(32) NOT NULL,
  `name_tr_key` varchar(64) DEFAULT NULL,
  `selector_tr_key` varchar(64) DEFAULT NULL,
  `listing_shape_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_listing_units_on_listing_shape_id` (`listing_shape_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_units`
--

LOCK TABLES `listing_units` WRITE;
/*!40000 ALTER TABLE `listing_units` DISABLE KEYS */;
INSERT INTO `listing_units` VALUES (13,'day','day','time',NULL,NULL,12,'2024-04-27 15:47:09','2024-04-27 15:47:09'),(14,'night','night','time',NULL,NULL,13,'2024-04-27 15:47:09','2024-04-27 15:47:09');
/*!40000 ALTER TABLE `listing_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_working_time_slots`
--

DROP TABLE IF EXISTS `listing_working_time_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listing_working_time_slots` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `listing_id` int DEFAULT NULL,
  `week_day` int DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `till` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_listing_working_time_slots_on_listing_id` (`listing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_working_time_slots`
--

LOCK TABLES `listing_working_time_slots` WRITE;
/*!40000 ALTER TABLE `listing_working_time_slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `listing_working_time_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listings`
--

DROP TABLE IF EXISTS `listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` binary(16) NOT NULL,
  `community_id` int NOT NULL,
  `author_id` varchar(255) DEFAULT NULL,
  `category_old` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `times_viewed` int DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updates_email_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `sort_date` datetime DEFAULT NULL,
  `listing_type_old` varchar(255) DEFAULT NULL,
  `description` text,
  `origin` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `valid_until` datetime DEFAULT NULL,
  `delta` tinyint(1) NOT NULL DEFAULT '1',
  `open` tinyint(1) DEFAULT '1',
  `share_type_old` varchar(255) DEFAULT NULL,
  `privacy` varchar(255) DEFAULT 'private',
  `comments_count` int DEFAULT '0',
  `subcategory_old` varchar(255) DEFAULT NULL,
  `old_category_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `share_type_id` int DEFAULT NULL,
  `listing_shape_id` int DEFAULT NULL,
  `transaction_process_id` int DEFAULT NULL,
  `shape_name_tr_key` varchar(255) DEFAULT NULL,
  `action_button_tr_key` varchar(255) DEFAULT NULL,
  `price_cents` int DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `unit_type` varchar(32) DEFAULT NULL,
  `quantity_selector` varchar(32) DEFAULT NULL,
  `unit_tr_key` varchar(64) DEFAULT NULL,
  `unit_selector_tr_key` varchar(64) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `require_shipping_address` tinyint(1) DEFAULT '0',
  `pickup_enabled` tinyint(1) DEFAULT '0',
  `shipping_price_cents` int DEFAULT NULL,
  `shipping_price_additional_cents` int DEFAULT NULL,
  `availability` varchar(32) DEFAULT 'none',
  `per_hour_ready` tinyint(1) DEFAULT '0',
  `state` varchar(255) DEFAULT 'approved',
  `approval_count` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_listings_on_uuid` (`uuid`),
  KEY `index_listings_on_new_category_id` (`category_id`) USING BTREE,
  KEY `person_listings` (`community_id`,`author_id`) USING BTREE,
  KEY `index_listings_on_community_id` (`community_id`) USING BTREE,
  KEY `index_listings_on_listing_shape_id` (`listing_shape_id`) USING BTREE,
  KEY `index_listings_on_category_id` (`old_category_id`) USING BTREE,
  KEY `index_listings_on_open` (`open`) USING BTREE,
  KEY `index_on_author_id_and_deleted` (`author_id`,`deleted`),
  KEY `community_author_deleted` (`community_id`,`author_id`,`deleted`),
  KEY `index_listings_on_state` (`state`),
  KEY `listings_homepage_query` (`community_id`,`open`,`state`,`deleted`,`valid_until`,`sort_date`),
  KEY `listings_updates_email` (`community_id`,`open`,`state`,`deleted`,`valid_until`,`updates_email_at`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listings`
--

LOCK TABLES `listings` WRITE;
/*!40000 ALTER TABLE `listings` DISABLE KEYS */;
INSERT INTO `listings` VALUES (14,_binary '\�\�\�\�_���ĳ\�T�',6,'HzH84qLj_RFlFqNPYui7vw',NULL,'test',0,NULL,'2024-05-01 20:10:11','2024-05-01 20:10:11','2024-05-01 20:10:11',NULL,'2024-05-01 20:10:11',NULL,'test','johar town',NULL,NULL,1,1,NULL,'private',0,NULL,NULL,22,NULL,12,17,'4e657243-b6b7-44e4-a7cb-12e13e235a65','99e73250-ae79-4b55-bcc4-42d1a239504f',1000,'USD',NULL,'day','day',NULL,NULL,0,0,0,NULL,NULL,'none',0,'approved',0),(15,_binary '\�\��\�\�X�~ĳ\�T�',6,'HzH84qLj_RFlFqNPYui7vw',NULL,'test',0,NULL,'2024-05-01 20:15:30','2024-05-01 20:15:30','2024-05-01 20:15:30',NULL,'2024-05-01 20:15:30',NULL,'test','lahore',NULL,NULL,1,1,NULL,'private',0,NULL,NULL,22,NULL,12,17,'4e657243-b6b7-44e4-a7cb-12e13e235a65','99e73250-ae79-4b55-bcc4-42d1a239504f',10000,'USD',NULL,'day','day',NULL,NULL,0,0,0,NULL,NULL,'none',0,'approved',0),(16,_binary '\���$���_ĳ\�T�',6,'HzH84qLj_RFlFqNPYui7vw',NULL,'test',0,NULL,'2024-05-01 20:37:01','2024-05-01 20:37:01','2024-05-01 20:37:01',NULL,'2024-05-01 20:37:01',NULL,'test','narowal',NULL,NULL,1,1,NULL,'private',0,NULL,NULL,22,NULL,12,17,'4e657243-b6b7-44e4-a7cb-12e13e235a65','99e73250-ae79-4b55-bcc4-42d1a239504f',10000,'USD',NULL,'day','day',NULL,NULL,0,0,0,NULL,NULL,'none',0,'approved',0),(17,_binary '\���v��oĳ\�T�',6,'HzH84qLj_RFlFqNPYui7vw',NULL,'test ',0,NULL,'2024-05-02 17:16:18','2024-05-02 17:16:18','2024-05-02 17:16:21',NULL,'2024-05-02 17:16:18',NULL,'test','lahore',NULL,NULL,1,1,NULL,'private',0,NULL,NULL,22,NULL,12,17,'4e657243-b6b7-44e4-a7cb-12e13e235a65','99e73250-ae79-4b55-bcc4-42d1a239504f',10000,'USD',NULL,'day','day',NULL,NULL,0,0,0,NULL,NULL,'none',0,'approved',0);
/*!40000 ALTER TABLE `listings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `google_address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `listing_id` int DEFAULT NULL,
  `person_id` varchar(255) DEFAULT NULL,
  `location_type` varchar(255) DEFAULT NULL,
  `community_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_locations_on_community_id` (`community_id`) USING BTREE,
  KEY `index_locations_on_listing_id` (`listing_id`) USING BTREE,
  KEY `index_locations_on_person_id` (`person_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (16,31.4697,74.2728,'Johar Town, Lahore, Punjab, Pakistan','Johar Town, Lahore, Punjab, Pakistan','2024-05-01 20:10:11','2024-05-01 20:10:11',14,NULL,'origin_loc',NULL),(17,31.5204,74.3587,'Lahore, Punjab, Pakistan','Lahore, Punjab, Pakistan','2024-05-01 20:15:30','2024-05-01 20:15:30',15,NULL,'origin_loc',NULL),(18,32.1014,74.88,'Narowal, Punjab, Pakistan','Narowal, Punjab, Pakistan','2024-05-01 20:37:01','2024-05-01 20:37:01',16,NULL,'origin_loc',NULL),(19,31.5204,74.3587,'Lahore, Punjab, Pakistan','Lahore, Punjab, Pakistan','2024-05-02 17:16:18','2024-05-02 17:16:18',17,NULL,'origin_loc',NULL);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_configurations`
--

DROP TABLE IF EXISTS `marketplace_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_configurations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_id` int NOT NULL,
  `main_search` varchar(255) NOT NULL DEFAULT 'keyword',
  `distance_unit` varchar(255) NOT NULL DEFAULT 'metric',
  `limit_priority_links` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `limit_search_distance` tinyint(1) NOT NULL DEFAULT '1',
  `display_about_menu` tinyint(1) NOT NULL DEFAULT '1',
  `display_contact_menu` tinyint(1) NOT NULL DEFAULT '1',
  `display_invite_menu` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_marketplace_configurations_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_configurations`
--

LOCK TABLES `marketplace_configurations` WRITE;
/*!40000 ALTER TABLE `marketplace_configurations` DISABLE KEYS */;
INSERT INTO `marketplace_configurations` VALUES (6,6,'keyword','metric',NULL,'2024-04-27 15:47:10','2024-04-27 15:47:10',0,1,1,1);
/*!40000 ALTER TABLE `marketplace_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_plans`
--

DROP TABLE IF EXISTS `marketplace_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_plans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_id` int NOT NULL,
  `status` varchar(22) DEFAULT NULL,
  `features` text,
  `member_limit` int DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_marketplace_plans_on_community_id` (`community_id`) USING BTREE,
  KEY `index_marketplace_plans_on_created_at` (`created_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_plans`
--

LOCK TABLES `marketplace_plans` WRITE;
/*!40000 ALTER TABLE `marketplace_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_sender_emails`
--

DROP TABLE IF EXISTS `marketplace_sender_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_sender_emails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `verification_status` varchar(32) NOT NULL,
  `verification_requested_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_marketplace_sender_emails_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_sender_emails`
--

LOCK TABLES `marketplace_sender_emails` WRITE;
/*!40000 ALTER TABLE `marketplace_sender_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_sender_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_setup_steps`
--

DROP TABLE IF EXISTS `marketplace_setup_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_setup_steps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_id` int NOT NULL,
  `slogan_and_description` tinyint(1) NOT NULL DEFAULT '0',
  `cover_photo` tinyint(1) NOT NULL DEFAULT '0',
  `filter` tinyint(1) NOT NULL DEFAULT '0',
  `paypal` tinyint(1) NOT NULL DEFAULT '0',
  `listing` tinyint(1) NOT NULL DEFAULT '0',
  `invitation` tinyint(1) NOT NULL DEFAULT '0',
  `stripe` tinyint(1) DEFAULT '0',
  `payment` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_marketplace_setup_steps_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_setup_steps`
--

LOCK TABLES `marketplace_setup_steps` WRITE;
/*!40000 ALTER TABLE `marketplace_setup_steps` DISABLE KEYS */;
INSERT INTO `marketplace_setup_steps` VALUES (3,6,0,0,0,0,1,0,0,0);
/*!40000 ALTER TABLE `marketplace_setup_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_trials`
--

DROP TABLE IF EXISTS `marketplace_trials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_trials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_id` int NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_marketplace_trials_on_community_id` (`community_id`) USING BTREE,
  KEY `index_marketplace_trials_on_created_at` (`created_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_trials`
--

LOCK TABLES `marketplace_trials` WRITE;
/*!40000 ALTER TABLE `marketplace_trials` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_trials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_link_translations`
--

DROP TABLE IF EXISTS `menu_link_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_link_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menu_link_id` int DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_menu_link_translations_on_menu_link_id` (`menu_link_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_link_translations`
--

LOCK TABLES `menu_link_translations` WRITE;
/*!40000 ALTER TABLE `menu_link_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_link_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_links`
--

DROP TABLE IF EXISTS `menu_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `sort_priority` int DEFAULT '0',
  `entity_type` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_menu_links_on_community_and_sort` (`community_id`,`sort_priority`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_links`
--

LOCK TABLES `menu_links` WRITE;
/*!40000 ALTER TABLE `menu_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mercury_images`
--

DROP TABLE IF EXISTS `mercury_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mercury_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mercury_images`
--

LOCK TABLES `mercury_images` WRITE;
/*!40000 ALTER TABLE `mercury_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `mercury_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `conversation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_messages_on_conversation_id` (`conversation_id`) USING BTREE,
  KEY `index_messages_on_sender_id` (`sender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_permissions`
--

DROP TABLE IF EXISTS `order_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `paypal_account_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `request_token` varchar(255) DEFAULT NULL,
  `paypal_username_to` varchar(255) NOT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `verification_code` varchar(255) DEFAULT NULL,
  `onboarding_id` varchar(36) DEFAULT NULL,
  `permissions_granted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_permissions_on_paypal_account_id` (`paypal_account_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_permissions`
--

LOCK TABLES `order_permissions` WRITE;
/*!40000 ALTER TABLE `order_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participations`
--

DROP TABLE IF EXISTS `participations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) DEFAULT NULL,
  `conversation_id` int DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `is_starter` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_sent_at` datetime DEFAULT NULL,
  `last_received_at` datetime DEFAULT NULL,
  `feedback_skipped` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_participations_on_conversation_id` (`conversation_id`) USING BTREE,
  KEY `index_participations_on_person_id` (`person_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participations`
--

LOCK TABLES `participations` WRITE;
/*!40000 ALTER TABLE `participations` DISABLE KEYS */;
/*!40000 ALTER TABLE `participations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_settings`
--

DROP TABLE IF EXISTS `payment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `community_id` int NOT NULL,
  `payment_gateway` varchar(64) DEFAULT NULL,
  `payment_process` varchar(64) DEFAULT NULL,
  `commission_from_seller` int DEFAULT NULL,
  `minimum_price_cents` int DEFAULT NULL,
  `minimum_price_currency` varchar(3) DEFAULT NULL,
  `minimum_transaction_fee_cents` int DEFAULT NULL,
  `minimum_transaction_fee_currency` varchar(3) DEFAULT NULL,
  `confirmation_after_days` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `api_client_id` varchar(255) DEFAULT NULL,
  `api_private_key` varchar(255) DEFAULT NULL,
  `api_publishable_key` varchar(255) DEFAULT NULL,
  `api_verified` tinyint(1) DEFAULT NULL,
  `api_visible_private_key` varchar(255) DEFAULT NULL,
  `api_country` varchar(255) DEFAULT NULL,
  `commission_from_buyer` int DEFAULT NULL,
  `minimum_buyer_transaction_fee_cents` int DEFAULT NULL,
  `minimum_buyer_transaction_fee_currency` varchar(3) DEFAULT NULL,
  `key_encryption_padding` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_payment_settings_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_settings`
--

LOCK TABLES `payment_settings` WRITE;
/*!40000 ALTER TABLE `payment_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_accounts`
--

DROP TABLE IF EXISTS `paypal_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paypal_accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) DEFAULT NULL,
  `community_id` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `payer_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `active` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_paypal_accounts_on_community_id` (`community_id`) USING BTREE,
  KEY `index_paypal_accounts_on_payer_id` (`payer_id`) USING BTREE,
  KEY `index_paypal_accounts_on_person_id` (`person_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_accounts`
--

LOCK TABLES `paypal_accounts` WRITE;
/*!40000 ALTER TABLE `paypal_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_ipn_messages`
--

DROP TABLE IF EXISTS `paypal_ipn_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paypal_ipn_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `body` text,
  `status` varchar(64) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_ipn_messages`
--

LOCK TABLES `paypal_ipn_messages` WRITE;
/*!40000 ALTER TABLE `paypal_ipn_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_ipn_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_payments`
--

DROP TABLE IF EXISTS `paypal_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paypal_payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `payer_id` varchar(64) NOT NULL,
  `receiver_id` varchar(64) NOT NULL,
  `merchant_id` varchar(255) NOT NULL,
  `order_id` varchar(64) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `currency` varchar(8) NOT NULL,
  `order_total_cents` int DEFAULT NULL,
  `authorization_id` varchar(64) DEFAULT NULL,
  `authorization_date` datetime DEFAULT NULL,
  `authorization_expires_date` datetime DEFAULT NULL,
  `authorization_total_cents` int DEFAULT NULL,
  `payment_id` varchar(64) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_total_cents` int DEFAULT NULL,
  `fee_total_cents` int DEFAULT NULL,
  `payment_status` varchar(64) NOT NULL,
  `pending_reason` varchar(64) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `commission_payment_id` varchar(64) DEFAULT NULL,
  `commission_payment_date` datetime DEFAULT NULL,
  `commission_status` varchar(64) NOT NULL DEFAULT 'not_charged',
  `commission_pending_reason` varchar(64) DEFAULT NULL,
  `commission_total_cents` int DEFAULT NULL,
  `commission_fee_total_cents` int DEFAULT NULL,
  `commission_retry_count` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_paypal_payments_on_transaction_id` (`transaction_id`) USING BTREE,
  UNIQUE KEY `index_paypal_payments_on_authorization_id` (`authorization_id`) USING BTREE,
  UNIQUE KEY `index_paypal_payments_on_order_id` (`order_id`) USING BTREE,
  KEY `index_paypal_payments_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_payments`
--

LOCK TABLES `paypal_payments` WRITE;
/*!40000 ALTER TABLE `paypal_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_process_tokens`
--

DROP TABLE IF EXISTS `paypal_process_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paypal_process_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `process_token` varchar(64) NOT NULL,
  `community_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `op_completed` tinyint(1) NOT NULL DEFAULT '0',
  `op_name` varchar(64) NOT NULL,
  `op_input` text,
  `op_output` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_paypal_process_tokens_on_process_token` (`process_token`) USING BTREE,
  UNIQUE KEY `index_paypal_process_tokens_on_transaction` (`transaction_id`,`community_id`,`op_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_process_tokens`
--

LOCK TABLES `paypal_process_tokens` WRITE;
/*!40000 ALTER TABLE `paypal_process_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_process_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_refunds`
--

DROP TABLE IF EXISTS `paypal_refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paypal_refunds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `paypal_payment_id` int DEFAULT NULL,
  `currency` varchar(8) DEFAULT NULL,
  `payment_total_cents` int DEFAULT NULL,
  `fee_total_cents` int DEFAULT NULL,
  `refunding_id` varchar(64) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_paypal_refunds_on_refunding_id` (`refunding_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_refunds`
--

LOCK TABLES `paypal_refunds` WRITE;
/*!40000 ALTER TABLE `paypal_refunds` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_refunds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_tokens`
--

DROP TABLE IF EXISTS `paypal_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paypal_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_id` int NOT NULL,
  `token` varchar(64) DEFAULT NULL,
  `transaction_id` int DEFAULT NULL,
  `payment_action` varchar(32) DEFAULT NULL,
  `merchant_id` varchar(255) NOT NULL,
  `receiver_id` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_quantity` int DEFAULT NULL,
  `item_price_cents` int DEFAULT NULL,
  `currency` varchar(8) DEFAULT NULL,
  `express_checkout_url` varchar(255) DEFAULT NULL,
  `shipping_total_cents` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_paypal_tokens_on_token` (`token`) USING BTREE,
  KEY `index_paypal_tokens_on_community_id` (`community_id`) USING BTREE,
  KEY `index_paypal_tokens_on_transaction_id` (`transaction_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_tokens`
--

LOCK TABLES `paypal_tokens` WRITE;
/*!40000 ALTER TABLE `paypal_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `id` varchar(22) NOT NULL,
  `uuid` binary(16) NOT NULL,
  `community_id` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_admin` int DEFAULT '0',
  `locale` varchar(255) DEFAULT 'fi',
  `preferences` text,
  `active_days_count` int DEFAULT '0',
  `last_page_load_date` datetime DEFAULT NULL,
  `test_group_number` int DEFAULT '1',
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `legacy_encrypted_password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `password_salt` varchar(255) DEFAULT NULL,
  `given_name` varchar(255) DEFAULT NULL,
  `family_name` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `description` text,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `image_processing` tinyint(1) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `authentication_token` varchar(255) DEFAULT NULL,
  `community_updates_last_sent_at` datetime DEFAULT NULL,
  `min_days_between_community_updates` int DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `cloned_from` varchar(22) DEFAULT NULL,
  `google_oauth2_id` varchar(255) DEFAULT NULL,
  `linkedin_id` varchar(255) DEFAULT NULL,
  UNIQUE KEY `index_people_on_username_and_community_id` (`username`,`community_id`) USING BTREE,
  UNIQUE KEY `index_people_on_uuid` (`uuid`),
  UNIQUE KEY `index_people_on_email` (`email`) USING BTREE,
  UNIQUE KEY `index_people_on_facebook_id_and_community_id` (`facebook_id`,`community_id`) USING BTREE,
  UNIQUE KEY `index_people_on_reset_password_token` (`reset_password_token`) USING BTREE,
  KEY `index_people_on_authentication_token` (`authentication_token`) USING BTREE,
  KEY `index_people_on_community_id` (`community_id`) USING BTREE,
  KEY `index_people_on_facebook_id` (`facebook_id`) USING BTREE,
  KEY `index_people_on_id` (`id`) USING BTREE,
  KEY `index_people_on_username` (`username`) USING BTREE,
  KEY `index_people_on_google_oauth2_id` (`google_oauth2_id`),
  KEY `index_people_on_community_id_and_google_oauth2_id` (`community_id`,`google_oauth2_id`),
  KEY `index_people_on_linkedin_id` (`linkedin_id`),
  KEY `index_people_on_community_id_and_linkedin_id` (`community_id`,`linkedin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES ('HzH84qLj_RFlFqNPYui7vw',_binary '\��h�g���ĳ\�T�',6,'2024-04-27 15:47:10','2024-05-01 20:22:04',0,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_listing_new_comment: true\nemail_listing_updated: true\nemail_from_admins: true\n',0,NULL,1,'alih',NULL,'$2a$10$LueWfO30E1cH/y/QfllNyuJTN6IuMT3w1XGGjVLGJR.jVa0cFGgDy',NULL,NULL,NULL,NULL,4,'2024-05-01 20:22:04','2024-05-01 20:02:30','::1','::1',NULL,'Ali','Hassan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_comments`
--

DROP TABLE IF EXISTS `person_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_comments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `author_id` varchar(255) DEFAULT NULL,
  `target_person_id` varchar(255) DEFAULT NULL,
  `text_content` text,
  `grade` int DEFAULT NULL,
  `task_type` varchar(255) DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `kassi_event_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_comments`
--

LOCK TABLES `person_comments` WRITE;
/*!40000 ALTER TABLE `person_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_conversations`
--

DROP TABLE IF EXISTS `person_conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_conversations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) DEFAULT NULL,
  `conversation_id` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `is_read` int DEFAULT '0',
  `last_sent_at` datetime DEFAULT NULL,
  `last_received_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_conversations`
--

LOCK TABLES `person_conversations` WRITE;
/*!40000 ALTER TABLE `person_conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_interesting_listings`
--

DROP TABLE IF EXISTS `person_interesting_listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_interesting_listings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) DEFAULT NULL,
  `listing_id` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_interesting_listings`
--

LOCK TABLES `person_interesting_listings` WRITE;
/*!40000 ALTER TABLE `person_interesting_listings` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_interesting_listings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_read_listings`
--

DROP TABLE IF EXISTS `person_read_listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_read_listings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) DEFAULT NULL,
  `listing_id` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_read_listings`
--

LOCK TABLES `person_read_listings` WRITE;
/*!40000 ALTER TABLE `person_read_listings` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_read_listings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20080806070738'),('20080807071903'),('20080807080513'),('20080808095031'),('20080815075550'),('20080818091109'),('20080818092139'),('20080821103835'),('20080825064927'),('20080825114546'),('20080828104013'),('20080828104239'),('20080919122825'),('20080925100643'),('20080925100743'),('20080925103547'),('20080925103759'),('20080925112423'),('20080925114309'),('20080929102121'),('20081008115110'),('20081009160751'),('20081010114150'),('20081024154431'),('20081024182346'),('20081024183444'),('20081103092143'),('20081104070403'),('20081118145857'),('20081121084337'),('20081202140109'),('20081205142238'),('20081215145238'),('20081216060503'),('20090119114525'),('20090218112317'),('20090219094209'),('20090225073742'),('20090323121824'),('20090330064443'),('20090330070210'),('20090330072036'),('20090401181848'),('20090401184511'),('20090401185039'),('20090402144456'),('20090403093157'),('20090406081353'),('20090414142556'),('20090415085812'),('20090415130553'),('20090415131023'),('20090424093506'),('20090424100145'),('20090618112730'),('20090629113838'),('20090629131727'),('20090701065350'),('20090701110931'),('20090713130351'),('20090729124418'),('20090730093917'),('20090730094216'),('20090731134028'),('20090821075949'),('20090904120242'),('20090907155717'),('20091006112446'),('20091028095545'),('20091028131201'),('20091109161516'),('20100322132547'),('20100505110646'),('20100707105549'),('20100721120037'),('20100721123825'),('20100721124444'),('20100726071811'),('20100727102551'),('20100727103659'),('20100729112458'),('20100729124210'),('20100729141955'),('20100729142416'),('20100730120601'),('20100730132825'),('20100809090550'),('20100809120502'),('20100813161213'),('20100817115816'),('20100818102743'),('20100819114104'),('20100820122449'),('20100902135234'),('20100902142325'),('20100908112841'),('20100909105810'),('20100909114132'),('20100920075651'),('20100921155612'),('20100922081110'),('20100922102321'),('20100922122740'),('20100923074241'),('20100927150547'),('20101007131610'),('20101007131827'),('20101013115208'),('20101013124056'),('20101026082126'),('20101027103753'),('20101028151541'),('20101103154108'),('20101103161641'),('20101103163019'),('20101109131431'),('20101116105410'),('20101124104905'),('20101125150638'),('20101126093026'),('20101201105920'),('20101201133429'),('20101203115308'),('20101203115634'),('20101213152125'),('20101216150725'),('20101216151447'),('20101216152952'),('20110308172759'),('20110308192757'),('20110321103604'),('20110322141439'),('20110322151957'),('20110325120932'),('20110412075940'),('20110414105702'),('20110414124938'),('20110421075758'),('20110428134543'),('20110529110417'),('20110629135331'),('20110704123058'),('20110704144650'),('20110707163036'),('20110728110124'),('20110808110217'),('20110808161514'),('20110817123457'),('20110819111416'),('20110819123636'),('20110909072646'),('20110912061834'),('20110912064526'),('20110912065222'),('20110913080622'),('20110914080549'),('20110914115824'),('20110915084232'),('20110915101535'),('20111111140246'),('20111111154416'),('20111111162432'),('20111114122125'),('20111114122315'),('20111116144337'),('20111116164728'),('20111116182825'),('20111123071116'),('20111123071850'),('20111124174508'),('20111210165312'),('20111210165854'),('20111210170231'),('20111211175403'),('20111228153911'),('20120104224115'),('20120105162140'),('20120113091548'),('20120121091558'),('20120206052931'),('20120208145336'),('20120210171827'),('20120303113202'),('20120303125412'),('20120303152837'),('20120303172713'),('20120510094327'),('20120510175152'),('20120514001557'),('20120514050302'),('20120516204538'),('20120518203511'),('20120522162329'),('20120522183329'),('20120526021050'),('20120614052244'),('20120625211426'),('20120628121713'),('20120704072606'),('20120705135703'),('20120705140109'),('20120710084323'),('20120711140918'),('20120718031225'),('20120730024756'),('20120907010347'),('20120907023525'),('20120908052908'),('20120909143322'),('20120929084903'),('20120929091629'),('20121023050946'),('20121105115053'),('20121203142830'),('20121212145626'),('20121214083430'),('20121218125831'),('20121220133808'),('20121229224803'),('20130103081705'),('20130103125240'),('20130103145816'),('20130104071929'),('20130104122958'),('20130105153450'),('20130107095027'),('20130110222425'),('20130123163722'),('20130123164653'),('20130124150000'),('20130208085827'),('20130212104852'),('20130213150133'),('20130213160145'),('20130217121320'),('20130218070405'),('20130305095824'),('20130306172327'),('20130309142322'),('20130317162509'),('20130318083721'),('20130318084043'),('20130318085152'),('20130319162158'),('20130319163113'),('20130320093549'),('20130322171458'),('20130323143126'),('20130325143038'),('20130325153817'),('20130325161150'),('20130325165508'),('20130325174608'),('20130325181741'),('20130326160252'),('20130328124654'),('20130328155825'),('20130329080756'),('20130329081612'),('20130331095134'),('20130331144047'),('20130331200801'),('20130405114540'),('20130418172231'),('20130418173835'),('20130423173017'),('20130424180017'),('20130424183653'),('20130425140120'),('20130514214222'),('20130517133311'),('20130520092054'),('20130520092357'),('20130520103753'),('20130520125924'),('20130520140756'),('20130520172713'),('20130521122031'),('20130521124342'),('20130521171401'),('20130521225614'),('20130531072349'),('20130605074725'),('20130607165451'),('20130710084408'),('20130718104939'),('20130719093816'),('20130719113330'),('20130724065048'),('20130724070139'),('20130729081847'),('20130807083847'),('20130815072527'),('20130815073546'),('20130815075659'),('20130815101112'),('20130823110113'),('20130902140027'),('20130910133213'),('20130917094727'),('20130920121927'),('20130925071631'),('20130925081815'),('20130926070322'),('20130926121237'),('20130930080143'),('20131024081428'),('20131028110133'),('20131028154626'),('20131028183014'),('20131030130320'),('20131031072301'),('20131031093809'),('20131101183938'),('20131104090808'),('20131107124835'),('20131107125413'),('20131108091824'),('20131108113632'),('20131108113650'),('20131111140902'),('20131112115307'),('20131112115308'),('20131112115435'),('20131114112955'),('20131119085439'),('20131119085625'),('20131122175753'),('20131126113141'),('20131126131750'),('20131126134024'),('20131126184439'),('20131128074254'),('20131128074910'),('20131128094614'),('20131128094758'),('20131128094839'),('20131128103251'),('20131128143205'),('20131129095727'),('20131202140547'),('20131203072124'),('20131204091623'),('20131204103910'),('20131206163837'),('20131209073416'),('20131209133946'),('20131210155502'),('20131212065037'),('20131214142413'),('20131214143004'),('20131214143005'),('20131220084742'),('20131220104804'),('20131220104805'),('20131227080454'),('20131227081256'),('20140102125702'),('20140102141643'),('20140102144755'),('20140102145633'),('20140102150134'),('20140102153949'),('20140103084331'),('20140103131350'),('20140106114557'),('20140109091819'),('20140109093432'),('20140109143257'),('20140109190928'),('20140116131654'),('20140123141906'),('20140124095930'),('20140124141214'),('20140128094422'),('20140128094642'),('20140128095047'),('20140129081030'),('20140204082210'),('20140205092212'),('20140205101011'),('20140205121010'),('20140206103152'),('20140207133412'),('20140219160247'),('20140219162023'),('20140222080916'),('20140223190922'),('20140223202734'),('20140223210213'),('20140224150322'),('20140224151953'),('20140225143012'),('20140226074348'),('20140226074445'),('20140226074710'),('20140226074751'),('20140226121423'),('20140227102627'),('20140228164206'),('20140228164428'),('20140228165024'),('20140301074143'),('20140303131213'),('20140304135448'),('20140306083247'),('20140312145533'),('20140312150455'),('20140314132659'),('20140318131351'),('20140319182117'),('20140324073247'),('20140328124957'),('20140328133415'),('20140402070713'),('20140402070714'),('20140411121926'),('20140415092507'),('20140415093234'),('20140417084647'),('20140417085905'),('20140417162548'),('20140417235732'),('20140422120515'),('20140425080207'),('20140425080603'),('20140425080731'),('20140425081001'),('20140425111235'),('20140428132517'),('20140428134415'),('20140507104933'),('20140507105154'),('20140509115747'),('20140512062911'),('20140516095154'),('20140519102507'),('20140519123344'),('20140519132638'),('20140519164823'),('20140523082452'),('20140526064017'),('20140530105841'),('20140530115044'),('20140530115433'),('20140604075725'),('20140604135743'),('20140610115132'),('20140610115217'),('20140611094552'),('20140611094703'),('20140612084036'),('20140613132734'),('20140623112935'),('20140701081453'),('20140701135724'),('20140701140655'),('20140703074142'),('20140703075424'),('20140710125950'),('20140710131146'),('20140711094414'),('20140724084559'),('20140724093459'),('20140724123125'),('20140805102757'),('20140811133602'),('20140811133603'),('20140811133605'),('20140811133606'),('20140811144528'),('20140812065415'),('20140815055023'),('20140815085018'),('20140819054528'),('20140819134039'),('20140819134055'),('20140820132249'),('20140829075839'),('20140829113807'),('20140901082541'),('20140901130206'),('20140902095905'),('20140903111344'),('20140903112203'),('20140903120109'),('20140909074331'),('20140912084032'),('20140912115758'),('20140925093828'),('20140925095608'),('20140925111706'),('20140925112419'),('20140929090537'),('20140930064120'),('20140930064130'),('20140930064140'),('20140930064150'),('20140930064160'),('20140930064170'),('20140930064180'),('20140930064185'),('20140930064190'),('20140930064200'),('20140930074731'),('20140930083026'),('20141001065955'),('20141001070716'),('20141001113744'),('20141003113756'),('20141006100239'),('20141006114330'),('20141007144442'),('20141009083833'),('20141015062240'),('20141015071419'),('20141015080454'),('20141015135248'),('20141015135601'),('20141015150328'),('20141017080930'),('20141020113323'),('20141020225349'),('20141022084419'),('20141022190428'),('20141023120743'),('20141023141235'),('20141023150700'),('20141028080346'),('20141028104522'),('20141028104537'),('20141029090632'),('20141029121848'),('20141029121945'),('20141030140809'),('20141102192640'),('20141104213501'),('20141111183125'),('20141112131736'),('20141113204444'),('20141117165348'),('20141203095726'),('20141204084648'),('20141205094929'),('20141216132850'),('20141216132851'),('20141217152335'),('20141218082446'),('20141219205556'),('20141222130455'),('20150103143459'),('20150107155205'),('20150116125629'),('20150121124432'),('20150121130521'),('20150128113129'),('20150202112254'),('20150204124735'),('20150204124802'),('20150205155400'),('20150205155519'),('20150206125017'),('20150206151234'),('20150212125111'),('20150213091223'),('20150213092629'),('20150213094110'),('20150224140913'),('20150225081656'),('20150225082144'),('20150225122608'),('20150226124214'),('20150226130928'),('20150226131628'),('20150303134630'),('20150303140556'),('20150304074313'),('20150304084451'),('20150311073502'),('20150311100232'),('20150311111824'),('20150311113118'),('20150316084339'),('20150316135852'),('20150316140016'),('20150316140637'),('20150316151552'),('20150316173800'),('20150317080017'),('20150317122824'),('20150317142931'),('20150319121616'),('20150320091305'),('20150320144657'),('20150323085034'),('20150323152147'),('20150324072928'),('20150324112018'),('20150324112042'),('20150324112053'),('20150324112658'),('20150324114726'),('20150325164209'),('20150327075649'),('20150330072934'),('20150330093441'),('20150330094735'),('20150331103317'),('20150331105616'),('20150331112417'),('20150401071256'),('20150401072129'),('20150401140830'),('20150402090934'),('20150402111115'),('20150403101215'),('20150407123639'),('20150407124816'),('20150407130810'),('20150407131139'),('20150413104519'),('20150413134627'),('20150415092447'),('20150416112541'),('20150416134422'),('20150420072530'),('20150420083201'),('20150426113955'),('20150429155804'),('20150507082447'),('20150507084754'),('20150507165715'),('20150508141500'),('20150512082544'),('20150512083212'),('20150512083411'),('20150512083842'),('20150518120830'),('20150518123758'),('20150519124846'),('20150520104604'),('20150520130243'),('20150520131057'),('20150527091815'),('20150527133928'),('20150528120338'),('20150528120717'),('20150608135024'),('20150608140024'),('20150608144130'),('20150609084012'),('20150612104320'),('20150622080657'),('20150630082932'),('20150630122552'),('20150729062045'),('20150729062215'),('20150731115141'),('20150731115426'),('20150731115742'),('20150804113139'),('20150804114651'),('20150805084232'),('20150806114405'),('20150806114717'),('20150807141947'),('20150821131310'),('20150821131616'),('20150825120916'),('20150825121715'),('20150825122606'),('20150828094836'),('20150902090425'),('20150902103231'),('20151008090106'),('20151008130725'),('20151022180225'),('20151022180242'),('20151022183133'),('20151102084029'),('20151202062609'),('20151204083028'),('20151209102951'),('20151215071150'),('20151230071554'),('20151230095128'),('20151231083524'),('20160119092239'),('20160119092534'),('20160120112839'),('20160126134509'),('20160126141249'),('20160209172619'),('20160209183917'),('20160216084624'),('20160223083004'),('20160223084741'),('20160229114242'),('20160311070106'),('20160322103154'),('20160322103155'),('20160322103156'),('20160407103437'),('20160407132641'),('20160408061218'),('20160408070000'),('20160408070005'),('20160420100304'),('20160420200020'),('20160420200030'),('20160420200040'),('20160420200050'),('20160420200060'),('20160420200065'),('20160420200066'),('20160420200080'),('20160420200090'),('20160420200100'),('20160420200110'),('20160422074608'),('20160422075215'),('20160422094212'),('20160422094431'),('20160422094536'),('20160422114240'),('20160422114747'),('20160422123125'),('20160422123211'),('20160425144703'),('20160427113446'),('20160509111922'),('20160511130006'),('20160518060235'),('20160608130531'),('20160609070256'),('20160609080700'),('20160609081158'),('20160614071055'),('20160615145518'),('20160627063918'),('20160708084933'),('20160728102918'),('20160728130503'),('20160816083020'),('20160816083028'),('20160816083349'),('20160816083607'),('20160816123633'),('20160817130729'),('20160817140558'),('20160818090814'),('20160818110351'),('20160818111044'),('20160818111724'),('20160823073938'),('20160823115429'),('20160823120425'),('20160823120704'),('20160823120845'),('20160831054404'),('20160831054544'),('20160831054909'),('20160831054910'),('20160902103712'),('20160902104733'),('20160907095103'),('20160908091353'),('20160913110411'),('20160913112734'),('20160914070509'),('20160914071634'),('20160914072428'),('20160914072601'),('20160920081409'),('20160920102506'),('20160920102507'),('20160920103321'),('20160921130544'),('20160926111847'),('20160928080048'),('20160928080819'),('20160929114326'),('20160929124124'),('20160930070122'),('20161004141208'),('20161006074506'),('20161012132850'),('20161018090313'),('20161018090314'),('20161018090517'),('20161018093208'),('20161018100657'),('20161018105036'),('20161018105521'),('20161019125057'),('20161023074355'),('20161101104218'),('20161101124317'),('20161101124829'),('20161102101418'),('20161102101419'),('20161102193340'),('20161103063652'),('20161107092030'),('20161107105050'),('20161107112025'),('20161107131859'),('20161107132513'),('20161107141257'),('20161109094513'),('20170216134444'),('20170220123526'),('20170309104456'),('20170313201104'),('20170314075755'),('20170613153959'),('20170613153960'),('20170613153961'),('20170613153965'),('20170616114938'),('20170626065542'),('20170629113013'),('20170630085303'),('20170703123959'),('20170704120024'),('20170704121638'),('20170705132856'),('20170706020608'),('20170707053914'),('20170707053915'),('20170707104010'),('20170707130931'),('20170710081759'),('20170711064018'),('20170728065012'),('20170801125553'),('20170814125622'),('20170817035830'),('20171023070523'),('20171107063241'),('20171117062422'),('20171128122539'),('20171129152027'),('20171207073027'),('20171207075640'),('20180108061342'),('20180108093607'),('20180514083133'),('20180518073348'),('20180523121344'),('20180524075239'),('20180524081429'),('20180717122957'),('20180720044534'),('20180720065907'),('20180723115548'),('20180904075653'),('20181012065625'),('20181024094615'),('20181029064728'),('20181029132748'),('20181031072643'),('20181106212306'),('20181211125306'),('20181219090801'),('20181221120927'),('20190104083132'),('20190108075512'),('20190111072711'),('20190111122204'),('20190114141250'),('20190115083941'),('20190121064002'),('20190208032229'),('20190213073532'),('20190213082646'),('20190227111355'),('20190228084827'),('20190305112030'),('20190319114719'),('20190319122745'),('20190627055931'),('20190705083608'),('20190705100256'),('20190717105844'),('20190718081745'),('20190904115045'),('20190920113245'),('20191016061908'),('20191016064022'),('20200109145736'),('20200127120611'),('20200131111643'),('20200213130051'),('20200224080321'),('20200303075727'),('20200312062151'),('20200312112018'),('20201012091009'),('20201218151444'),('20201221132459'),('20210108111345'),('20210129114823'),('20210517131520'),('20211124070123'),('20220414125846'),('20220414125847'),('20220929080535'),('20221006100641'),('20221006100754'),('20230405115307');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `data` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sessions_on_session_id` (`session_id`) USING BTREE,
  KEY `index_sessions_on_updated_at` (`updated_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_addresses`
--

DROP TABLE IF EXISTS `shipping_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_id` int NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state_or_province` varchar(255) DEFAULT NULL,
  `street1` varchar(255) DEFAULT NULL,
  `street2` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `country_code` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shipping_addresses_on_transaction_id` (`transaction_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_addresses`
--

LOCK TABLES `shipping_addresses` WRITE;
/*!40000 ALTER TABLE `shipping_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_links` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `community_id` int DEFAULT NULL,
  `provider` int DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sort_priority` int DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_social_links_on_community_id` (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_links`
--

LOCK TABLES `social_links` WRITE;
/*!40000 ALTER TABLE `social_links` DISABLE KEYS */;
INSERT INTO `social_links` VALUES (10,6,0,'https://google.com',0,1,'2024-04-29 19:46:07','2024-04-29 19:46:07'),(11,6,1,'https://twitter.com',0,1,'2024-04-29 19:46:07','2024-04-29 19:46:48'),(12,6,2,'https://google.com',0,1,'2024-04-29 19:46:07','2024-04-29 19:46:48'),(13,6,3,'',0,0,'2024-04-29 19:46:07','2024-04-29 19:46:07'),(14,6,4,'',0,0,'2024-04-29 19:46:07','2024-04-29 19:46:07'),(15,6,5,'',0,0,'2024-04-29 19:46:07','2024-04-29 19:46:07'),(16,6,6,'',0,0,'2024-04-29 19:46:07','2024-04-29 19:46:07'),(17,6,7,'',0,0,'2024-04-29 19:46:07','2024-04-29 19:46:07'),(18,6,8,'',0,0,'2024-04-29 19:46:07','2024-04-29 19:46:07');
/*!40000 ALTER TABLE `social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripe_accounts`
--

DROP TABLE IF EXISTS `stripe_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_accounts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) DEFAULT NULL,
  `community_id` int DEFAULT NULL,
  `stripe_seller_id` varchar(255) DEFAULT NULL,
  `stripe_bank_id` varchar(255) DEFAULT NULL,
  `stripe_customer_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `api_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_stripe_accounts_on_community_id` (`community_id`),
  KEY `index_stripe_accounts_on_person_id` (`person_id`),
  KEY `index_stripe_accounts_on_api_version` (`api_version`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripe_accounts`
--

LOCK TABLES `stripe_accounts` WRITE;
/*!40000 ALTER TABLE `stripe_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `stripe_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripe_payments`
--

DROP TABLE IF EXISTS `stripe_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_payments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `community_id` int DEFAULT NULL,
  `transaction_id` int DEFAULT NULL,
  `payer_id` varchar(255) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `sum_cents` int DEFAULT NULL,
  `commission_cents` int DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `stripe_charge_id` varchar(255) DEFAULT NULL,
  `stripe_transfer_id` varchar(255) DEFAULT NULL,
  `fee_cents` int DEFAULT NULL,
  `real_fee_cents` int DEFAULT NULL,
  `subtotal_cents` int DEFAULT NULL,
  `transfered_at` datetime DEFAULT NULL,
  `available_on` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `buyer_commission_cents` int DEFAULT '0',
  `stripe_payment_intent_id` varchar(255) DEFAULT NULL,
  `stripe_payment_intent_status` varchar(255) DEFAULT NULL,
  `stripe_payment_intent_client_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripe_payments`
--

LOCK TABLES `stripe_payments` WRITE;
/*!40000 ALTER TABLE `stripe_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `stripe_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grade` float DEFAULT NULL,
  `text` text,
  `author_id` varchar(255) DEFAULT NULL,
  `participation_id` int DEFAULT NULL,
  `transaction_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_testimonials_on_author_id` (`author_id`) USING BTREE,
  KEY `index_testimonials_on_receiver_id` (`receiver_id`) USING BTREE,
  KEY `index_testimonials_on_transaction_id` (`transaction_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_process_tokens`
--

DROP TABLE IF EXISTS `transaction_process_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_process_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `process_token` binary(16) DEFAULT NULL,
  `community_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `op_completed` tinyint(1) NOT NULL DEFAULT '0',
  `op_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `op_input` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `op_output` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_paypal_process_tokens_on_transaction` (`transaction_id`,`community_id`,`op_name`),
  UNIQUE KEY `index_transaction_process_tokens_on_process_token` (`process_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_process_tokens`
--

LOCK TABLES `transaction_process_tokens` WRITE;
/*!40000 ALTER TABLE `transaction_process_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_process_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_processes`
--

DROP TABLE IF EXISTS `transaction_processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_processes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_id` int DEFAULT NULL,
  `process` varchar(32) NOT NULL,
  `author_is_seller` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_transaction_process_on_community_id` (`community_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_processes`
--

LOCK TABLES `transaction_processes` WRITE;
/*!40000 ALTER TABLE `transaction_processes` DISABLE KEYS */;
INSERT INTO `transaction_processes` VALUES (17,6,'none',1,'2024-04-27 15:47:09','2024-04-27 15:47:09'),(18,6,'none',0,'2024-04-27 15:47:09','2024-04-27 15:47:09'),(19,6,'preauthorize',1,'2024-04-27 15:47:09','2024-04-27 15:47:09');
/*!40000 ALTER TABLE `transaction_processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_transitions`
--

DROP TABLE IF EXISTS `transaction_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_transitions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `to_state` varchar(255) DEFAULT NULL,
  `metadata` text,
  `sort_key` int DEFAULT '0',
  `transaction_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `most_recent` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_transaction_transitions_on_sort_key_and_conversation_id` (`sort_key`,`transaction_id`) USING BTREE,
  KEY `index_transaction_transitions_on_conversation_id` (`transaction_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_transitions`
--

LOCK TABLES `transaction_transitions` WRITE;
/*!40000 ALTER TABLE `transaction_transitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_transitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `starter_id` varchar(255) NOT NULL,
  `starter_uuid` binary(16) NOT NULL,
  `listing_id` int NOT NULL,
  `listing_uuid` binary(16) NOT NULL,
  `conversation_id` int DEFAULT NULL,
  `automatic_confirmation_after_days` int NOT NULL,
  `community_id` int NOT NULL,
  `community_uuid` binary(16) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `starter_skipped_feedback` tinyint(1) DEFAULT '0',
  `author_skipped_feedback` tinyint(1) DEFAULT '0',
  `last_transition_at` datetime DEFAULT NULL,
  `current_state` varchar(255) DEFAULT NULL,
  `commission_from_seller` int DEFAULT NULL,
  `minimum_commission_cents` int DEFAULT '0',
  `minimum_commission_currency` varchar(255) DEFAULT NULL,
  `payment_gateway` varchar(255) NOT NULL DEFAULT 'none',
  `listing_quantity` int DEFAULT '1',
  `listing_author_id` varchar(255) NOT NULL,
  `listing_author_uuid` binary(16) NOT NULL,
  `listing_title` varchar(255) DEFAULT NULL,
  `unit_type` varchar(32) DEFAULT NULL,
  `unit_price_cents` int DEFAULT NULL,
  `unit_price_currency` varchar(8) DEFAULT NULL,
  `unit_tr_key` varchar(64) DEFAULT NULL,
  `unit_selector_tr_key` varchar(64) DEFAULT NULL,
  `payment_process` varchar(31) DEFAULT 'none',
  `delivery_method` varchar(31) DEFAULT 'none',
  `shipping_price_cents` int DEFAULT NULL,
  `availability` varchar(32) DEFAULT 'none',
  `booking_uuid` binary(16) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `commission_from_buyer` int DEFAULT NULL,
  `minimum_buyer_fee_cents` int DEFAULT '0',
  `minimum_buyer_fee_currency` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_transactions_on_listing_id` (`listing_id`) USING BTREE,
  KEY `index_transactions_on_conversation_id` (`conversation_id`) USING BTREE,
  KEY `index_transactions_on_community_id` (`community_id`) USING BTREE,
  KEY `index_transactions_on_last_transition_at` (`last_transition_at`) USING BTREE,
  KEY `transactions_on_cid_and_deleted` (`community_id`,`deleted`) USING BTREE,
  KEY `index_transactions_on_deleted` (`deleted`) USING BTREE,
  KEY `index_transactions_on_starter_id` (`starter_id`) USING BTREE,
  KEY `index_transactions_on_listing_author_id` (`listing_author_id`) USING BTREE,
  KEY `community_starter_state` (`community_id`,`starter_id`,`current_state`),
  KEY `index_transactions_on_listing_id_and_current_state` (`listing_id`,`current_state`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-05  1:17:26
