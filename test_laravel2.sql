/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.5-10.1.38-MariaDB : Database - test_laravel2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_07_29_095214_create_tasks_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `tasks` */

DROP TABLE IF EXISTS `tasks`;

CREATE TABLE `tasks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tasks` */

insert  into `tasks`(`id`,`title`,`description`,`created_at`,`updated_at`) values (1,'New task','Task Description','2019-07-30 09:01:39','2019-07-30 09:01:39'),(2,'Work Pressure','I dont have any work.','2019-07-30 09:03:13','2019-07-30 09:03:13');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`username`,`email`,`password`,`token`,`active`,`remember_token`,`created_at`,`updated_at`) values (1,'aaaa','aaaa','satyamoorti@usindia.com','$2y$10$CDlwi7YvyD21qTQSISDUseoUuC7i0jZSTT240jz9jri1dXiyYPn1u','jT46DEFkis15XPQhTLa4LEKjggAUz2SyG2CAaNq41564472913',1,'uaiCaCKqh9OQtAZXzqj4wPPqZQ5KS4K1cMLdwWvmEbdXKfRu6B5cQb3jSV5l','2019-07-30 07:48:33','2019-07-30 07:48:33'),(5,'bbbb','bbbb','abc@usindia.com','$2y$10$luLmSx7AYhhVbDtt2S24ueGdbBPnphoBy/GyrDpadGoxLaQsWrPOi','sZDLM202rQkh0oYoKteEzV3vRPwEA5jQXUb8KMHK1564473660',1,NULL,'2019-07-30 08:01:00','2019-07-30 08:01:00'),(6,'cccc','cccc','ccc@usindia.com','$2y$10$5i7cQj5oNY7j4V9DZqtFhuc.bUGVmXdgJh.UYKipLOBFWjkHtVVka','FInHdiHj5OjyQcWPEk9s75rIinGDQeR4RG8RnugM1564474644',1,NULL,'2019-07-30 08:17:24','2019-07-30 08:17:24'),(7,'dddd','dddd','ddd@usindia.com','$2y$10$Tvk.rWG1gE1Eh.pmbI1UGOnNb7Zlag/.55OTlXO4dLPzeG6cmCABO','YelqA9iXtZhSJvH8g3tM03EsHvs1dLD6vFwZ13zZ1564479186',0,NULL,'2019-07-30 09:33:06','2019-07-30 09:33:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
