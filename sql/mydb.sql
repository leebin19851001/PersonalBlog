-- MySQL dump 10.13  Distrib 5.7.28, for Win64 (x86_64)
--
-- Host: localhost    Database: my_blog
-- ------------------------------------------------------
-- Server version	5.7.28-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `views` int(11) NOT NULL,
  `tags` varchar(256) NOT NULL,
  `ctime` int(11) NOT NULL,
  `utime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ctime` (`ctime`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (13,'这是测试标题','<div style=\"background-color:#f1f1f1; border:1px solid #ccc;\" class=\"w-e-toolbar\" id=\"toolbar-elem32771844266661887\"><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-header\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-bold\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-text-heigh\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-font\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-italic\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-underline\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-strikethrough\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-pencil2\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-paint-brush\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-link\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-list2\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-paragraph-left\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-quotes-left\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-happy\"></i>\n        </div><div class=\"w-e-menu\" id=\"w-e-img2570306140112879\" style=\"z-index:10001;\"><i class=\"w-e-icon-image\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-table2\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-play\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-terminal\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-undo\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-redo\"></i>\n        </div></div><div style=\"border:1px solid #ccc; border-top:none; height:300px; z-index:10000;\" class=\"w-e-text-container\"><div contenteditable=\"true\" style=\"width:100%; height:100%;\" class=\"w-e-text\" id=\"text-elem010594957318944553\"><p>大沙发沙发四方达手动阀阿斯顿发发达阿三</p></div></div>',0,'aaa,bbb,ccc',1572163756,1572163756),(14,'第二个标题','<div style=\"background-color:#f1f1f1; border:1px solid #ccc;\" class=\"w-e-toolbar\" id=\"toolbar-elem32771844266661887\"><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-header\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-bold\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-text-heigh\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-font\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-italic\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-underline\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-strikethrough\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-pencil2\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-paint-brush\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-link\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-list2\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-paragraph-left\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-quotes-left\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-happy\"></i>\n        </div><div class=\"w-e-menu\" id=\"w-e-img2570306140112879\" style=\"z-index:10001;\"><i class=\"w-e-icon-image\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-table2\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-play\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-terminal\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-undo\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-redo\"></i>\n        </div></div><div style=\"border:1px solid #ccc; border-top:none; height:300px; z-index:10000;\" class=\"w-e-text-container\"><div contenteditable=\"true\" style=\"width:100%; height:100%;\" class=\"w-e-text\" id=\"text-elem010594957318944553\"><p>大沙发沙发四方达手动阀阿斯顿发发达阿三adfasdfafasdf</p></div></div>',1,'aaa,bbb,ccc,eee',1572163794,1572163794),(19,'友谊天长地久','<div style=\"background-color:#f1f1f1; border:1px solid #ccc;\" class=\"w-e-toolbar\" id=\"toolbar-elem013119715773350471\"><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-header\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-bold\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-text-heigh\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-font\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-italic\"></i>\n        </div><div class=\"w-e-menu w-e-active\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-underline\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-strikethrough\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-pencil2\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-paint-brush\"></i><div class=\"w-e-droplist\" style=\"margin-top:31px; width:120px; display:none;\"><p class=\"w-e-dp-title\">背景色</p><ul class=\"w-e-block\"><li class=\"w-e-item\"><i style=\"color:#000000;\" class=\"w-e-icon-paint-brush\"></i></li><li class=\"w-e-item\"><i style=\"color:#eeece0;\" class=\"w-e-icon-paint-brush\"></i></li><li class=\"w-e-item\"><i style=\"color:#1c487f;\" class=\"w-e-icon-paint-brush\"></i></li><li class=\"w-e-item\"><i style=\"color:#4d80bf;\" class=\"w-e-icon-paint-brush\"></i></li><li class=\"w-e-item\"><i style=\"color:#c24f4a;\" class=\"w-e-icon-paint-brush\"></i></li><li class=\"w-e-item\"><i style=\"color:#8baa4a;\" class=\"w-e-icon-paint-brush\"></i></li><li class=\"w-e-item\"><i style=\"color:#7b5ba1;\" class=\"w-e-icon-paint-brush\"></i></li><li class=\"w-e-item\"><i style=\"color:#46acc8;\" class=\"w-e-icon-paint-brush\"></i></li><li class=\"w-e-item\"><i style=\"color:#f9963b;\" class=\"w-e-icon-paint-brush\"></i></li><li class=\"w-e-item\"><i style=\"color:#ffffff;\" class=\"w-e-icon-paint-brush\"></i></li></ul></div></div><div class=\"w-e-menu w-e-active\" style=\"z-index:10001;\"><i class=\"w-e-icon-link\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-list2\"></i><div class=\"w-e-droplist\" style=\"margin-top:31px; width:120px; display:none;\"><p class=\"w-e-dp-title\">设置列表</p><ul class=\"w-e-list\"><li class=\"w-e-item\"><span><i class=\"w-e-icon-list-numbered\"></i> 有序列表</span></li><li class=\"w-e-item\"><span><i class=\"w-e-icon-list2\"></i> 无序列表</span></li></ul></div></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-paragraph-left\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-quotes-left\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-happy\"></i>\n        </div><div class=\"w-e-menu\" id=\"w-e-img22541595559779504\" style=\"z-index:10001;\"><i class=\"w-e-icon-image\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-table2\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-play\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-terminal\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-undo\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-redo\"></i>\n        </div></div><div style=\"border:1px solid #ccc; border-top:none; height:300px; z-index:10000;\" class=\"w-e-text-container\"><div contenteditable=\"true\" style=\"width:100%; height:100%;\" class=\"w-e-text\" id=\"text-elem17300571151060473\"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;不论在<a href=\"http://www.duwenzhang.com/wenzhang/shenghuosuibi/\">生活</a>中还是网络里，人人都会有<a href=\"http://www.duwenzhang.com/huati/pengyou/index1.html\">朋友</a>。如果没有朋<a href=\"http://www.duwenzhang.com/wenzhang/youqingwenzhang/\">友情</a>，生活就不会有悦耳的和音，就如死水一滩；友情无处不在，它伴随你左右，萦绕在你身边，和你共渡一生。<br></p><p>&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;友情，是雨季中的一把小伞，它撑起了一个晴朗的天空；友情，是风雪之夜的一杯淡茶，它能将寒意驱走，带来<a href=\"http://www.duwenzhang.com/huati/wennuan/index1.html\">温暖</a>；友情，是迷途中的一盏灯，它在你<a href=\"http://www.duwenzhang.com/huati/mishi/index1.html\">迷失</a>时给你方向……<a href=\"http://www.duwenzhang.com/wenzhang/renshengzheli/\">人生</a>漫漫，若能<a href=\"http://www.duwenzhang.com/huati/yongyou/index1.html\">拥有</a>一段地久天长的相知相伴的友情，<a href=\"http://www.duwenzhang.com/huati/shengming/index1.html\">生命</a>亦无憾。<br></p></div></div>',2,'友情,散文,小说',1572164306,1572164306),(20,'这是什么','<div style=\"background-color:#f1f1f1; border:1px solid #ccc;\" class=\"w-e-toolbar\" id=\"toolbar-elem05234090306086836\"><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-header\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-bold\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-text-heigh\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-font\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-italic\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-underline\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-strikethrough\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-pencil2\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-paint-brush\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-link\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-list2\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-paragraph-left\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-quotes-left\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-happy\"></i>\n        </div><div class=\"w-e-menu\" id=\"w-e-img5259411652623578\" style=\"z-index:10001;\"><i class=\"w-e-icon-image\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-table2\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\"><i class=\"w-e-icon-play\"></i></div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-terminal\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-undo\"></i>\n        </div><div class=\"w-e-menu\" style=\"z-index:10001;\">\n            <i class=\"w-e-icon-redo\"></i>\n        </div></div><div style=\"border:1px solid #ccc; border-top:none; height:300px; z-index:10000;\" class=\"w-e-text-container\"><div contenteditable=\"true\" style=\"width:100%; height:100%;\" class=\"w-e-text\" id=\"text-elem8123208237336295\"><p>ECMAScript v3 规定，replace() 方法的参数 replacement 可以是函数而不是字符串。在这种情况下，每个匹配都调用该函数，它返回的字符串将作为替换文本使用。该函数的第一个参数是匹配模式的字符串。接下来的参数是与模式中的子表达式匹配的字符串，可以有 0 个或多个这样的参数。接下来的参数是一个整数，声明了匹配在 stringObject 中出现的位置。最后一个参数是 stringObject 本身&nbsp;&nbsp;<br></p></div></div>',0,'JS',1572166844,1572166844),(26,'正则表达式','<p>js中replace方法与java中的replace方法相同，主要做替换。</p><p>　　表达式：stringObj.replace(rgExp, replaceText)<br>　　参数<br>　　stringObj<br>　　必选项。要执行该替换的 String 对象或字符串文字。该字符串不会被 replace 方法修改。<br>　　rgExp</p><p><br>　　必选项。为包含正则表达式模式或可用标志的正则表达式对象。也可以是 String 对象或文字。</p>',19,'前端,js',1572168502,1572168502),(27,'正则表达式','<p>js中replace方法与java中的replace方法相同，主要做替换。</p><p>　　表达式：stringObj.replace(rgExp, replaceText)<br>　　参数<br>　　stringObj<br>　　必选项。要执行该替换的 String 对象或字符串文字。该字符串不会被 replace 方法修改。<br>　　rgExp</p><p><br>　　必选项。为包含正则表达式模式或可用标志的正则表达式对象。也可以是 String 对象或文字。</p>',0,'前端,js',1572168743,1572168743),(28,'正则表达式','<p>js中replace方法与java中的replace方法相同，主要做替换。</p><p>　　表达式：stringObj.replace(rgExp, replaceText)<br>　　参数<br>　　stringObj<br>　　必选项。要执行该替换的 String 对象或字符串文字。该字符串不会被 replace 方法修改。<br>　　rgExp</p><p><br>　　必选项。为包含正则表达式模式或可用标志的正则表达式对象。也可以是 String 对象或文字。</p>',13,'前端,js',1572168745,1572168745),(29,'来一个js主题的','<p><strong>JavaScript 是属于 HTML 和 Web 的编程语言。</strong></p><p><strong>编程令计算机完成您需要它们做的工作。</strong></p><p><strong>JavaScript 很容易学习。</strong></p><p><strong>本教程涵盖 JavaScript 基础和高级教程。</strong></p>',0,'js',1572253719,1572253719),(30,'来一个js主题的','<p><strong>JavaScript 是属于 HTML 和 Web 的编程语言。</strong></p><p><strong>编程令计算机完成您需要它们做的工作。</strong></p><p><strong>JavaScript 很容易学习。</strong></p><p><strong>本教程涵盖 JavaScript 基础和高级教程。</strong></p>',0,'js',1572253723,1572253723),(31,'来一个js主题的','<p><strong>JavaScript 是属于 HTML 和 Web 的编程语言。</strong></p><p><strong>编程令计算机完成您需要它们做的工作。</strong></p><p><strong>JavaScript 很容易学习。</strong></p><p><strong>本教程涵盖 JavaScript 基础和高级教程。</strong></p>',0,'js',1572253724,1572253724),(32,'来一个js主题的','<p><strong>JavaScript 是属于 HTML 和 Web 的编程语言。</strong></p><p><strong>编程令计算机完成您需要它们做的工作。</strong></p><p><strong>JavaScript 很容易学习。</strong></p><p><strong>本教程涵盖 JavaScript 基础和高级教程。</strong></p>',7,'js',1572253769,1572253769),(33,'博主介绍','<p>大扎好，我系大彬子。</p><p>从此开始逗逼博客之旅，今公告天下！</p>',0,'自我介绍,',1572269279,1572269279);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `parent_name` varchar(64) DEFAULT '0',
  `user_name` varchar(64) NOT NULL,
  `comments` varchar(256) NOT NULL,
  `email` varchar(128) NOT NULL,
  `ctime` int(11) NOT NULL,
  `utime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_blog_id` (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,28,-1,NULL,'panda','nihao','1346654646@qq.com',1572184984,1572184984),(2,28,-1,NULL,'dog','hello panda','12121212@qq.com',1572186609,1572186609),(3,28,-1,NULL,'pig','are you ok?','1234546456@qq.com',1572186766,1572186766),(4,28,-1,NULL,'panda','nihao','999999@qq.com',1572186883,1572186883),(5,28,-1,NULL,'dog','safasdfasf','11111@qq.com',1572186962,1572186962),(6,28,5,'0','tel','nihao ','77777@qq.com',1572190070,1572190070),(7,28,3,'0','dog','are you pig?','1111@qq.com',1572190263,1572190263),(8,28,7,'dog','monkey','nihao dog','1111@qq.com',1572190631,1572190631),(9,-1,-1,'0','dog','nihao','11111@qq.com',1572191924,1572191924),(10,-2,-1,'0','monkey','nihao','33333@qq.com',1572192456,1572192456),(11,32,-1,'0','panda','adjfladjflaksjdflasdjlasfjl','1111111@qq.com',1572260538,1572260538),(12,26,-1,'0','','牛皮','',1572268447,1572268447),(13,-2,-1,'0','','你个渣渣','',1572268800,1572268800),(14,-2,13,'','panda','你个渣渣','',1572270262,1572270262);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `every_day`
--

DROP TABLE IF EXISTS `every_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `every_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `ctime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ctime` (`ctime`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `every_day`
--

LOCK TABLES `every_day` WRITE;
/*!40000 ALTER TABLE `every_day` DISABLE KEYS */;
INSERT INTO `every_day` VALUES (4,'真正的美丽，不是青春的容颜，而是绽放的心灵。在人生旅途上保持一份童趣和闲心，珍惜当下，把美好轻轻呈现。心快乐了人生就幸福了，心宽了烦恼自然就少了，日子自然就顺了，人生也就圆融自在了。',1572111109),(5,'何文亮， 你的电脑有问题，别找借口\n                                          ------李斌',1572268679),(6,'何文亮， 你的电脑有问题，别找借口\n                                          ------李斌',1572268684),(7,'何文亮， 你的电脑有问题，别找借口\n                                          ------李斌',1572268740),(8,'孤单是一个人的狂欢，狂欢是一群人的孤单。',1572269621),(9,'孤单是一个人的狂欢，狂欢是一群人的孤单。',1572269623),(10,'孤单是一个人的狂欢，狂欢是一群人的孤单。',1572269630),(11,'孤单是一个人的狂欢，狂欢是一群人的孤单。',1572269633);
/*!40000 ALTER TABLE `every_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_blog_mapping`
--

DROP TABLE IF EXISTS `tag_blog_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_blog_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `ctime` int(11) NOT NULL,
  `utime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ug_tag_id_blog_id` (`tag_id`,`blog_id`),
  KEY `idx_tag_id` (`tag_id`),
  KEY `idx_blog_id` (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_blog_mapping`
--

LOCK TABLES `tag_blog_mapping` WRITE;
/*!40000 ALTER TABLE `tag_blog_mapping` DISABLE KEYS */;
INSERT INTO `tag_blog_mapping` VALUES (5,2,13,1572163756,1572163756),(6,3,13,1572163756,1572163756),(7,1,13,1572163756,1572163756),(8,1,14,1572163794,1572163794),(9,3,14,1572163794,1572163794),(10,2,14,1572163794,1572163794),(11,5,14,1572163794,1572163794),(19,6,19,1572164306,1572164306),(20,10,19,1572164306,1572164306),(21,9,19,1572164306,1572164306),(22,11,20,1572166844,1572166844),(34,11,26,1572168502,1572168502),(35,18,26,1572168502,1572168502),(36,18,27,1572168743,1572168743),(37,11,27,1572168743,1572168743),(38,18,28,1572168745,1572168745),(39,11,28,1572168745,1572168745),(40,11,29,1572253719,1572253719),(41,11,30,1572253723,1572253723),(42,11,31,1572253724,1572253724),(43,11,32,1572253769,1572253769),(44,19,33,1572269279,1572269279);
/*!40000 ALTER TABLE `tag_blog_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(64) NOT NULL,
  `ctime` int(11) NOT NULL,
  `utime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_nq` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'aaa',1572162411,1572162411),(2,'ccc',1572162411,1572162411),(3,'bbb',1572162411,1572162411),(5,'eee',1572163794,1572163794),(6,'友情',1572163970,1572163970),(9,'散文',1572164306,1572164306),(10,'小说',1572164306,1572164306),(11,'JS',1572166844,1572166844),(18,'前端',1572168502,1572168502),(19,'自我介绍',1572269279,1572269279);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-29 15:49:56
