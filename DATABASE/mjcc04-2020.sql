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

insert  into `filedata`(`fileid`,`keys`,`file`,`filekey`,`fkey`,`title`) values ('97470','Texas,Hospital,Inpatient,Discharge,Public','���=f\Z��Z�Mhٍ�w2霌\nj��H����?�t�����J�<y�.�B/5�g=�WK)>֨��때�Z��gm5[��ݩ�[��W��_�u-��A�{5A̘8s$��kIp��jv���\n\0YE-�1ZF&5�r��\n��L[�����l�އʦ��1m�;�OM�7���N��\0�Ň�е�����4K} �G�ŗ:lݞ(\Z�ʒ�ל3����&N}HHI�ٍ�[�*_@OV��b�|��`\n<O�!F\ruHP{%�P�Y�j�A�A݂��kaa����?ca{�+~]X{�J�1��9 �\r�j*�\'������Kb��*4�e�a��_CC����UV�J�������Xm�G�oԮLxJd�>�\'d.о��x�SM8!\r��Ҹ������K�\"KV�>3�9�g!Q�V�N/4:���R~�}�����nv�,w�J`H��en��PVpٕ��J\"��i6�z*� .���2���XA�0P���O�,Y�n�u��@Hzx�o��<ۦ�?�����ɤ!�0�D��v�8�6#�2?�Z��B�t��\0~�1kȒ<��Л�y\n�����[�@��5�Rv2�`�:A\"��.�~\\�\Z{�tO��q��%���.ǖ�}K�^�/�K��01n��$kk��ymi����BZV1\01��g��đa�f��e̦[�4,�_����v��[\\��r������R!���ͯ�ս�뼕�]Y=n��|��oB@M���?�~}.>+�����%�\'�j����k���D��)','[B@dc7c63','�H��°)5�����G�','Texas Hospital Inpatient Discharge Public'),('97799','Agency,Health care,Research,Quality','ғgm#�=?<��(V�6d����\rq�9�[ ���:B\r��%���2�Ѭr��QmXCB^z�@��iM^zVq��R��-�\r_� �5�f�b����W��n����]�����r�B�i�\0����$MJcx\n�`\Z�u�����R\r�,�R�d�|�cI���\\����f���lzr�iE���8�1�L�f�g���B�����^��x�&�#�Yd��^>����7��٫�;ݦ�06���`$ɰ�GL��̲�P�����g�!���ʂB�sv��Ds��hW,�OMz��{��5b��������+�\\�%����y�4۵(h�.�띫\"����~Զn�f��Y}_̉`իD`+�@(ݱ*B�ֱ�p��p�*\\`(�o\\SP7,��0�mV�O�Z�H]�7����K��lD�Eu/p��f�u�[Zu��B��CW���Ͽ����/�apT��d�(כd���V���������kbOpHs�-������~�i��:�����L 桒֍{�}������.K��6�)�6��U�c��pON��K���E�Jx=�Nd��~J�p�R\Z z���\Z��QZT0�����h-*N�Z|>��O�+!��gj�.-� �\n���Rj�<�����0Ng�<�����������<i˪��HT��~.-�[8?7��#F[�_*�W%U�t�����`�P\\h>�܃����%6�|��3E6<\'������[���ᦼ�ىP�}e�Y~y�O>�:��?�����cڞ�6��Y�a�m���fN*�*m�d�\Z��Ag��F;��ȥqK���[��Gk�','[B@1327598','{ʖ[��:0��M!���','Agency for Health care Research and Quality'),('71817','Heritage,Health care,Prize','U�6sA�U�!p��]7.�������E�j���}Y��y�Q/Mb�Xa!r�nH���\Z|-���+Usr�՞)�R�Rw�8�z7��Vg�\ZT\n#(�x��}�%Al����<� �����h������������~�(�q��芇f��R�a[_J�+FH\"\\��oXÈ�d����e(^�OE�8\ZF�{��A�u�N.��\\L��Wb\\Ʌ|����������7ԝN�V���y�ZkK�V��c�bMm��%��!����/	�;�w+��\r�-��қ� �q5ܨ7�3x��_7�&��\n8m�nٮߧL�\0���q�L�Mzo_�$1BG��:5�e��B�����&�a%I^�at�m���-$^�Cѭ���Wp�C�%r�F���Z���򋒧*5e�S���yg&�F��lbG7�g�e��C�Ð��HB�V ����)��ߖ�������[2��%Q�K��V�\'`H��W7�<5c:�Z���]b�R~;����j����m4nF҄�`��','[B@a31d13','W0i�a����}~-vy','Heritage Health care Prize'),('77611','Pandemic,viral,disease,harmfull','��\rO�K�\nW�o�j�\r�⃉!�Z{uWna6LʽAibSYL����%tZg!ĥ�0���\0Z?�K�\Z�M�V�\n.C�ǘ���1�x���ش5�Cy�a��US�%�؝f���k�E���K��0)�Z�n�2���Si�[��q.4�]�4H���e#t��Ϩ�;IW�*�����,(&�lSҳ׀��P��ؐf���:󖡾���~�Ւ�T\0�\'e~�L��s�E��� YJ�b-�Gk�|��F)��M2���{��z�5�НlN�d����Ls_x�ٺ�?��y�y�\Z��^ˮ�+ѯx=/ɸr�U�AAtGH��lB43yOx�e��ҵǭ@C\\N �\"�;>�n>��n@sd�z���	 �e���xÃ\0��X����cq̼��t\\E��3���Z�3xr/F�d\n�l��q�N�C(����}�Q�����&g�2y��^�_bB^$<H	���>��V�NOSQ�����2��Ca+��r�S/�\\�W�ˌz<hÉ75���%���O�a)h�\"�Z���3��\\������A��_��C���)8}LeJP�j�s��@J�7�q7,�:(�\\�?�E��;��\"��#9�:���$5��]�p��\"���h��&I���D��JK6_��&�','[B@313869c0','��[o�:��*hS&M?','Covid-19');

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
