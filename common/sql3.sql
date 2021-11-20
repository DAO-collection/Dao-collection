-- MySQL dump 10.13  Distrib 8.0.26, for macos11.3 (x86_64)
--
-- Host: localhost    Database: go-blog
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Current Database: `go-blog`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `go-blog` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `go-blog`;

--
-- Table structure for table `z_categories`
--

DROP TABLE IF EXISTS `z_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类名',
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类别名',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'seo描述',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT '父类ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `z_categories_display_name_index` (`display_name`),
  KEY `z_categories_parent_id_index` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_categories`
--

LOCK TABLES `z_categories` WRITE;
/*!40000 ALTER TABLE `z_categories` DISABLE KEYS */;
INSERT INTO `z_categories` VALUES (1,'default','默认分类','默认的分类',0,'2021-11-07 04:37:12','2021-11-07 04:37:12'),(2,'DAO Week','DAO Week','DAO Week',0,'2021-11-07 07:24:38','2021-11-07 07:24:38');
/*!40000 ALTER TABLE `z_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_links`
--

DROP TABLE IF EXISTS `z_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '友链名',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '友链链接',
  `order` int NOT NULL COMMENT '排序',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_links`
--

LOCK TABLES `z_links` WRITE;
/*!40000 ALTER TABLE `z_links` DISABLE KEYS */;
INSERT INTO `z_links` VALUES (1,'test link','http://mattboldt.github.io/typed.js/docs/',1,'2021-11-07 07:34:24','2021-11-07 07:34:24');
/*!40000 ALTER TABLE `z_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_migrations`
--

DROP TABLE IF EXISTS `z_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_migrations`
--

LOCK TABLES `z_migrations` WRITE;
/*!40000 ALTER TABLE `z_migrations` DISABLE KEYS */;
INSERT INTO `z_migrations` VALUES (2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_12_26_144328_create_users_table',1),(4,'2018_12_26_145106_create_posts_table',1),(5,'2018_12_26_145124_create_categories_table',1),(6,'2018_12_26_145200_create_tags_table',1),(7,'2018_12_26_145222_create_post_tag_table',1),(8,'2018_12_26_145240_create_post_cate_table',1),(9,'2018_12_26_145258_create_post_views_table',1),(10,'2018_12_26_145340_create_systems_table',1),(11,'2018_12_26_145355_create_links_table',1);
/*!40000 ALTER TABLE `z_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_password_resets`
--

DROP TABLE IF EXISTS `z_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `z_password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_password_resets`
--

LOCK TABLES `z_password_resets` WRITE;
/*!40000 ALTER TABLE `z_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `z_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_post_cate`
--

DROP TABLE IF EXISTS `z_post_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_post_cate` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL COMMENT '文章ID',
  `cate_id` int NOT NULL COMMENT '分类ID',
  PRIMARY KEY (`id`),
  KEY `z_post_cate_post_id_index` (`post_id`),
  KEY `z_post_cate_cate_id_index` (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_post_cate`
--

LOCK TABLES `z_post_cate` WRITE;
/*!40000 ALTER TABLE `z_post_cate` DISABLE KEYS */;
INSERT INTO `z_post_cate` VALUES (1,1,2),(2,2,1),(3,3,1);
/*!40000 ALTER TABLE `z_post_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_post_tag`
--

DROP TABLE IF EXISTS `z_post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_post_tag` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL COMMENT '文章ID',
  `tag_id` int NOT NULL COMMENT '标签ID',
  PRIMARY KEY (`id`),
  KEY `z_post_tag_post_id_index` (`post_id`),
  KEY `z_post_tag_tag_id_index` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_post_tag`
--

LOCK TABLES `z_post_tag` WRITE;
/*!40000 ALTER TABLE `z_post_tag` DISABLE KEYS */;
INSERT INTO `z_post_tag` VALUES (1,1,1),(2,2,1),(3,2,2),(4,3,2);
/*!40000 ALTER TABLE `z_post_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_post_views`
--

DROP TABLE IF EXISTS `z_post_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_post_views` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL COMMENT '文章ID',
  `num` int NOT NULL COMMENT '阅读次数',
  PRIMARY KEY (`id`),
  KEY `z_post_views_post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_post_views`
--

LOCK TABLES `z_post_views` WRITE;
/*!40000 ALTER TABLE `z_post_views` DISABLE KEYS */;
INSERT INTO `z_post_views` VALUES (1,1,6),(2,2,2),(3,3,5);
/*!40000 ALTER TABLE `z_post_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_posts`
--

DROP TABLE IF EXISTS `z_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'uid',
  `user_id` int NOT NULL COMMENT '用户ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `summary` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '摘要',
  `original` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '原文章内容',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章内容',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章密码',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `z_posts_user_id_index` (`user_id`),
  KEY `z_posts_uid_index` (`uid`),
  KEY `z_posts_title_index` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_posts`
--

LOCK TABLES `z_posts` WRITE;
/*!40000 ALTER TABLE `z_posts` DISABLE KEYS */;
INSERT INTO `z_posts` VALUES (1,'76g36QJr',1,'测试文章1','测试测试111111','主要功能有:\n文章发布和修改\n文章回收站和撤回\n文章分类\n文章标签\n网站信息自由设置\n文章支持markdown\n★ 网站静态文件可自由配置本地或 CDN\n★ 可上传图片,可选择上传至服务器或 七牛 或 两者同时\n自由添加友链和管理友链顺序\n采用github的issue功能作为评论系统,界面优美且方便其他用户留言和通知\n★ 定时备份数据和静态资源\n★ 备份数据邮件发送至邮箱','<p>主要功能有:\n文章发布和修改\n文章回收站和撤回\n文章分类\n文章标签\n网站信息自由设置\n文章支持markdown\n★ 网站静态文件可自由配置本地或 CDN\n★ 可上传图片,可选择上传至服务器或 七牛 或 两者同时\n自由添加友链和管理友链顺序\n采用github的issue功能作为评论系统,界面优美且方便其他用户留言和通知\n★ 定时备份数据和静态资源\n★ 备份数据邮件发送至邮箱</p>\n','',NULL,'2021-11-07 07:25:41','2021-11-07 07:25:41'),(2,'5XvdNg2m',1,'测试文章2','多标签测试文章','主要代码是 golang+vue+HTML+CSS+MySQL\n后端代码是基于golang的gin框架封装成的一个自用的包 https://github.com/izghua/zgh\n后台代码是基于vue的iviewUI组件开发的后台, https://github.com/izghua/go-blog-backend\n前台是基于HTML+CSS,展示页面 https://www.iphpt.com\n缓存用的redis\n数据库用的是 MySQL\n配置文件用的 yaml\n安装方法\ngo-blog安装教程\n\n关于go-blog的配置文件解析\n\n历史\n本站起始于2015年,最开始由zblog开源框架搭建\n\n在2016年,我利用PHP的Laravel框架 重构了前后端所有代码!\n\n界面: http://php.iphpt.com\n代码: https://github.com/xzghua/laravel-5-myblog\n','<p>主要代码是 golang+vue+HTML+CSS+MySQL\n后端代码是基于golang的gin框架封装成的一个自用的包 <a href=\"https://github.com/izghua/zgh\" rel=\"nofollow\">https://github.com/izghua/zgh</a>\n后台代码是基于vue的iviewUI组件开发的后台, <a href=\"https://github.com/izghua/go-blog-backend\" rel=\"nofollow\">https://github.com/izghua/go-blog-backend</a>\n前台是基于HTML+CSS,展示页面 <a href=\"https://www.iphpt.com\" rel=\"nofollow\">https://www.iphpt.com</a>\n缓存用的redis\n数据库用的是 MySQL\n配置文件用的 yaml\n安装方法\ngo-blog安装教程</p>\n\n<p>关于go-blog的配置文件解析</p>\n\n<p>历史\n本站起始于2015年,最开始由zblog开源框架搭建</p>\n\n<p>在2016年,我利用PHP的Laravel框架 重构了前后端所有代码!</p>\n\n<p>界面: <a href=\"http://php.iphpt.com\" rel=\"nofollow\">http://php.iphpt.com</a>\n代码: <a href=\"https://github.com/xzghua/laravel-5-myblog\" rel=\"nofollow\">https://github.com/xzghua/laravel-5-myblog</a></p>\n','',NULL,'2021-11-07 07:26:58','2021-11-07 07:26:58'),(3,'91vwVymr',1,'测试文章3','图文测试图文测试','Go语言使用Bcrypt实现加密或验证登录密码\n\nBcrypt 就是一款加密工具，它生成的密文是60位的，而且每次加密生成的值是不一样的。\nMD5 加密后的值是32位的，且每次加密后的密文都是一样的。\n保存密码，一般我们都推荐使用 Bcrypt 进行加密，而不使用 MD5.\n\nBcrypt 加密后的值举例：\n![我是图片](https://www.asset3.org/images/home-screen-phone.png)','<p>Go语言使用Bcrypt实现加密或验证登录密码</p>\n\n<p>Bcrypt 就是一款加密工具，它生成的密文是60位的，而且每次加密生成的值是不一样的。\nMD5 加密后的值是32位的，且每次加密后的密文都是一样的。\n保存密码，一般我们都推荐使用 Bcrypt 进行加密，而不使用 MD5.</p>\n\n<p>Bcrypt 加密后的值举例：\n<img src=\"https://www.asset3.org/images/home-screen-phone.png\" alt=\"我是图片\"/></p>\n','',NULL,'2021-11-07 07:33:12','2021-11-07 07:33:12');
/*!40000 ALTER TABLE `z_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_systems`
--

DROP TABLE IF EXISTS `z_systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_systems` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `theme` tinyint NOT NULL DEFAULT '0' COMMENT '主题',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '网站title',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '网站关键字',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '网站描述',
  `record_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '备案号',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_systems`
--

LOCK TABLES `z_systems` WRITE;
/*!40000 ALTER TABLE `z_systems` DISABLE KEYS */;
INSERT INTO `z_systems` VALUES (1,0,'DAO Collection','DAO Portal','A collection for all DAOs','000-0000','2021-11-07 07:33:25','2021-11-07 07:33:25');
/*!40000 ALTER TABLE `z_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_tags`
--

DROP TABLE IF EXISTS `z_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标签名',
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标签别名',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'seo描述',
  `num` int NOT NULL DEFAULT '0' COMMENT '被使用次数',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `z_tags_display_name_index` (`display_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_tags`
--

LOCK TABLES `z_tags` WRITE;
/*!40000 ALTER TABLE `z_tags` DISABLE KEYS */;
INSERT INTO `z_tags` VALUES (1,'Financial','Financial','Financial',2,'2021-11-07 07:23:52','2021-11-07 07:26:58'),(2,'Entertainment','Entertainment','Entertainment',2,'2021-11-07 07:24:06','2021-11-07 07:33:12');
/*!40000 ALTER TABLE `z_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_users`
--

DROP TABLE IF EXISTS `z_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '用户状态 0创建,1正常',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `z_users_email_unique` (`email`),
  KEY `z_users_email_index` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_users`
--

LOCK TABLES `z_users` WRITE;
/*!40000 ALTER TABLE `z_users` DISABLE KEYS */;
INSERT INTO `z_users` VALUES (1,'admin','a@aa.net',1,'2021-11-08 16:00:00','$2a$10$wtJie2Wc93SqCCri5u/f4uZX7ATSSyMxlrCTEkPmNHLl9Oa0QdLim',NULL,'2021-11-07 07:21:46','2021-11-07 07:21:46'),(2,'aaa','a@aba.net',1,NULL,'$2a$10$W6bLFZWFw7zGyawdMw0q/e2cG1eB3sObihqTTzBpOk5WbDwUhf63.','','2021-11-07 08:13:01','2021-11-07 08:13:01'),(3,'aadd','a@ab3a.net',1,NULL,'$2a$10$yoc/TMUDV74W6tOa483KAeKo5xPzKmNRPTE3ixTnRd.nVChLc57ge','','2021-11-07 08:42:45','2021-11-07 08:42:45');
/*!40000 ALTER TABLE `z_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-07 19:40:11


-- name
-- image
-- dao_tag independent tag table
-- start_time
-- members
-- community_activities  ??
-- key_contributors 
-- introduction
-- token_name
-- token_link
-- token_holders
-- treasury 
-- AUM 
-- voting
-- forum
-- website
-- twitter
-- discord
-- wiki
-- how_to_join (string)

DROP TABLE IF EXISTS `z_dao_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_dao_posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'uid',
  `user_id` int NOT NULL COMMENT '用户ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'dao-name',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'img-url',
  `members` int NOT NULL DEFAULT '0' COMMENT 'member number',
  `key_contributors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'a text list',
  `token_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name string',
  `token_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'url',
  `token_holders` int NOT NULL DEFAULT '0' COMMENT 'numbers',
  `treasury` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'link',
  `AUM` int NOT NULL DEFAULT '0' COMMENT 'aum number',
  `voting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'link',
  `forum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'link',
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'link',
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'link',
  `discord` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'link',
  `wiki` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'link',
  `summary` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '摘要',
  `introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'dao内容',
  `how_to_join` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'how-to-join',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `z_dao_posts_user_id_index` (`user_id`),
  KEY `z_dao_posts_uid_index` (`uid`),
  KEY `z_dao_posts_title_index` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `z_dao_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z_dao_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标签名',
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标签别名',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'seo描述',
  `num` int NOT NULL DEFAULT '0' COMMENT '被使用次数',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `z_dao_tags_display_name_index` (`display_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- article:
-- title
-- content
-- image
-- publish_date
-- minutes_read

-- evnet:
-- title
-- content
-- image
-- publish_date
-- minutes_read

