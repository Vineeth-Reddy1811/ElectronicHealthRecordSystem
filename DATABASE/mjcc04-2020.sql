/*
SQLyog Community v8.71 
MySQL - 5.5.30 : Database - mjcc04_2020
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mjcc04_2020` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mjcc04_2020`;

/*Table structure for table `filedata` */

DROP TABLE IF EXISTS `filedata`;

CREATE TABLE `filedata` (
  `fileid` varchar(100) DEFAULT NULL,
  `keys` varchar(250) DEFAULT NULL,
  `file` longblob,
  `filekey` varchar(255) DEFAULT NULL,
  `fkey` mediumblob,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `filedata` */

insert  into `filedata`(`fileid`,`keys`,`file`,`filekey`,`fkey`,`title`) values ('97470','Texas,Hospital,Inpatient,Discharge,Public','¢ìÁ=f\Zõ£ZáMhÙw2éœŒ\nj‘ÇHëõğÖ?€tïŠï’ÌJ<y–.÷B/5Ûg=ÙWK)>Ö¨€¡ë•ŒZ¶Ôgm5[°Éİ©¾[›¹W¬£_éºu-‹ï¦Aå{5AÌ˜8s$Ğ­kIp±àjv®—\n\0YE-ø1ZF&5ûr®œ\nÖúL[ĞûÍ÷lÊŞ‡Ê¦…ª1må“;˜OM×7•Ì§NŒ\0¬Å‡ŒĞµ‚¡ûÓ4K} ëGïÅ—:lİ(\ZûÊ’£×œ3²ƒªŒ&N}HHIÙÙ[Ä*_@OVô¶b’|¿ñ`\n<Oò!F\ruHP{%ÍP•YjAùAİ‚·„kaaçüÁ£?ca{ß+~]X{ˆJ²1üğ—9 Ô\rÛj*Ì\'‡ã¹«ãKb¸Ï*4™eóaˆÊ_CCèÑğUVîJ¤¤¸‰÷§›XmÔGêoÔ®LxJd‚>¶\'d.Ğ¾ŒãxÒSM8!\rƒÕÒ¸¾ èüìK¦\"KV’>3‡9¯g!QøVİN/4:Ÿ›ÕR~†}øèô“nvÿ,wÄJ`Hƒ«en¡ÊPVpÙ•ıŒJ\"ƒèƒi6òz*Û .¨¨˜2ı³ÛXAÔ0PŸÚáOª,Y—n˜uŞõ@Hzx£oçÊ<Û¦ã?Ûõ¥ÇÉ¤!Ç0“DƒÛvæ8æ6#À2?ÖZÓÆBÀtÓ†\0~ı1kÈ’<ÁÔĞ›Éy\nÀçÏ[Ş@÷å‰5„Rv2“`Û:A\"åñ.è~\\À\Z{³tOÙÃq§%ƒ³Ù.Ç–©}K˜^£/ÓKé†01nßŞ$kk÷ìymi©™œºBZV1\01š×gïÄÄ‘açf©úeÌ¦[½4,×_Ìßv¦Î[\\ŒñrŸ‡÷«íÄR!Õ×Í¯Õ½´ë¼•Â]Y=n‘˜|–ÓoB@M›¬ç?À~}.>+ˆ˜ªıæ%ÿ\'ájÆĞÿúkÀû–DŸÇ)','[B@dc7c63','£H„¯Â°)5Üíø”GÑ','Texas Hospital Inpatient Discharge Public'),('97799','Agency,Health care,Research,Quality','Ò“gm#í=?<–À(Vƒ6dÛÈúÖ\rqƒ9”[ İÑÍ:B\rÜÔ%ü‘Ô2ŸÑ¬ršQmXCB^zá@õÈiM^zVq¬ûRÿ-¼\r_î ¼5ëfşbú±™æWŠ»nı¡…Ú]õ³‚Éá¿r†Bãiï\0©¼ì¨ä$MJcx\n`\Zèuà¯²¸ëR\rÇ,ÿRÔd¶|¦cI„ÒŞ\\ı«¬ŒfáúúlzriEĞû´81»LÆf€gÓûˆBšÎÜ¨“^x¾&ª#ÚYdÊ^>¥€ƒ‘7µÙ«;İ¦ã06÷Æğ`$É°èGLúï’Ì²íPºÄËØágš!‹ØÊ‚BÉsvİÉDs«±hW,‹OMzñ°â…{œ¦5b—ÿ»³›ÎÜ+Ø\\¼%›¯ƒÛy4Ûµ(h±.àë«\"›í­¨—ª~Ô¶nöf“œY}_Ì‰`Õ«D`+—@(İ±*BùÖ±ópÒåpñ*\\`(ìo\\SP7,°À0¹mVÓOãZôH]7«ú­¹KîÉlDõEu/p¸¦fØu§[Zu£¬Bâ–CWÀáşÏ¿ÃãÑ/ƒapTèİd¼(×›dı‰¨V¢Ïêœã“áÇkbOpHsË-ö“¤Şé~çi…Ì:¢üûšİL æ¡’Ö{¹}±™×ÛùÏ.K’µ6…)¸6¶çU¡c”‚pONŸÃKÖ÷æ¬EÖJx=±Nd¬è~JÒp§R\Z z¤¹ï€\Z¿ñQZT0ğ¶ı»‹h-*N´Z|>»ÛO+!¸İgjö.-‚ ë\n„œ¶RjÄ<®¼åüÅ0Ng¾<°ûö‰¥±Éà¼<iËª¶ÎHTëÀ~.-Î[8?7í¯#F[—_*ËW%U të¡ïŠîŠœ`ŞP\\h>¯ÜƒÙ¸¸ÿ%6Ğ|Ìæ£3E6<\'”úú“[›²©á¦¼©Ù‰P½}e¸Y~y“O>Ğ:†Í?‚å‘İ‹©cÚï6’õYûa¹m¬¿ãfN*à*m dË\Zÿó…Ag×ÕF;®È¥qK­¸•[…•Gkã','[B@1327598','{Ê–[·±:0¬òM!äü©','Agency for Health care Research and Quality'),('71817','Heritage,Health care,Prize','U©6sA¨U²!p…ş]7.•©Äş‚¨EÛjäèÇ}YªÊy«Q/Mb­Xa!r nHºÿ\Z|-¦®—+Usr°Õ)ÙRĞRwÚ8‘z7·‚Vg\ZT\n#(ÆxØÉ}‘%AlÈÑù<í ã¡î›œ«hÉÈóÁ›´ÊûÊíÁÀ~Ë(ÆqöÓèŠ‡f¢R¯a[_Jå+FH\"\\ı­oXÃˆÊd‹–ûÂe(^µOE¯8\ZF®{ƒAªuæN.€Ñ\\L”ÄWb\\É…|»£ ÿˆ„â…¹ç7ÔNó‘·VÁ»èy“ZkK¢VõÇc¢bMm½¿%¤Û!¶è…ß/	¢;áwïƒ•+–ğ\r¬-âÁÒ›˜ œq5Ü¨7ì3x¡¯_7µ&÷Ò\n8mñŒnÙ®ß§L\0ëÀŠq‚LâMzo_Ê$1BGÉ²:5–eºÊB³ùúé&Ùa%I^…atàmìßø-$^ÁCÑ­Ë–¾WpÊCÓ%rî¢F¿¦‚ZÄÙä¼ò‹’§*5e‰S¯÷±yg&õFµÀlbG7ÄgÛe©ğ²CäÃ³öHBöV ŒØÈÚ)¬Òß–¤§úÉûÉ[2 ¤%QˆK¿æV„\'`Hş÷W7ğ<5c:’ZùÓË]b¿R~;½–ÏÇj›¬óÅm4nFÒ„”`¢é','[B@a31d13','W0i½a„™¡}~-vy','Heritage Health care Prize'),('77611','Pandemic,viral,disease,harmfull','á\rOáKù\nWøoËj·\r÷âƒ‰!ÂZ{uWna6LÊ½AibSYLï¼õ¡Î%tZg!Ä¥Ò0ôÀû\0Z?ÏK\ZM¢V¹\n.C¿Ç˜¿ŠÊ1ïx‚€òØ´5çCyıaÕÒUSñ‹…%ÉØfŠëôkêEÇÙÈK•›0)õZ‘nŒ2†á”èSiô[€q.4›]¦4H†”e#tƒ÷Ï¨¶;IW‹*Ÿ¢ÎÒÖ,(&¸lSÒ³×€ÆäPÜöØf¯¨¦:ó–¡¾´©~âÕ’¼T\0Ø\'e~îLõ£sÜEÌó‚´Û YJ’b-İGkå|®F)®¢M2Šœ÷{¯Ùz«5äĞlNd°ŒÅÔLs_xÙÙº©?ÑÍyßyü\Z»¡^Ë®©+Ñ¯x=/É¸r UàAAtGH…ÕlB43yOxÖeˆÖÒµÇ­@C\\N ›\"ä;>n>Êén@sdÄzÛù´	 ·e¶İûxÃƒ\0»ÜXºµÀ¬cqÌ¼ıÍt\\E”›3ÌÌüZÌ3xr/FÑd\nÆlşæqâNÙC(˜˜ÿÄ}ĞQÍé²üÙ&gÅ2y±”^«_bB^$<H	ÜõÔ>²ÏVŒNOSQ®Œ¥Ôé‚2ÕÏCa+¼™rßS/¶\\¯WüËŒz<hÃ‰75šœ%ï÷Oêa)hì\"ˆZ®ñÁ3íİ\\ø˜‰òø»A››_­ĞCÂóÎ)8}LeJPójñ‡€s­´@JÜ7üq7,â:(©\\¶?ÊEÿé;•¶\"ñÿ#9à:ÿ£$5—Ø]«pü\" ãñ´hŠÖ&Iô¾DôÔJK6_œ€&ş','[B@313869c0','å÷[oŸ:û®*hS&M?','Covid-19');

/*Table structure for table `requests` */

DROP TABLE IF EXISTS `requests`;

CREATE TABLE `requests` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `fid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `requests` */

/*Table structure for table `responses` */

DROP TABLE IF EXISTS `responses`;

CREATE TABLE `responses` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `fid` varchar(100) DEFAULT NULL,
  `fkey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `responses` */

insert  into `responses`(`rid`,`email`,`fid`,`fkey`) values (2,'Ricky@gmail.com','77611','[B@313869c0');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`name`,`email`,`mobile`,`gender`,`password`,`status`) values ('John','John@gmail.com','9985999985','male','123','new user'),('Ricky','Ricky@gmail.com','7845124578','Male','1234','new user');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
