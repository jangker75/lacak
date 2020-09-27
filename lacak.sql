/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `cms_apicustom`;
/*!40000 ALTER TABLE `cms_apicustom` DISABLE KEYS */;
INSERT INTO `cms_apicustom` (`id`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `created_at`, `updated_at`, `method_type`, `parameters`, `responses`) VALUES
	(3, 'login', 'user', 'detail', NULL, NULL, NULL, NULL, 'Login User', NULL, NULL, NULL, NULL, 'get', 'a:2:{i:0;a:5:{s:4:"name";s:3:"nik";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:1;a:5:{s:4:"name";s:8:"password";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}}', 'a:3:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";N;s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:3:"nik";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:4:"nama";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}}'),
	(5, 'reqqr', 'user', 'detail', NULL, NULL, NULL, NULL, 'Request QR', NULL, NULL, NULL, NULL, 'get', 'a:2:{i:0;a:5:{s:4:"name";s:3:"nik";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:1;a:5:{s:4:"name";s:5:"token";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"0";s:4:"used";s:1:"1";}}', 'a:1:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:7:"integer";s:8:"subquery";N;s:4:"used";s:1:"1";}}'),
	(6, 'scan_tenant', 'lacak', 'save_add', NULL, NULL, NULL, NULL, 'Scan Tenant', NULL, NULL, NULL, NULL, 'post', 'a:2:{i:0;a:5:{s:4:"name";s:3:"nik";s:4:"type";s:6:"custom";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:1;a:5:{s:4:"name";s:5:"qr_id";s:4:"type";s:6:"custom";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}}', 'a:1:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";N;s:4:"used";s:1:"1";}}'),
	(7, 'daftaruser', 'user', 'save_add', NULL, NULL, NULL, NULL, 'Register User', NULL, NULL, NULL, NULL, 'post', 'a:3:{i:0;a:5:{s:4:"name";s:3:"nik";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:1;a:5:{s:4:"name";s:8:"password";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:2;a:5:{s:4:"name";s:4:"nama";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}}', 'a:1:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";N;s:4:"used";s:1:"1";}}'),
	(8, 'get_user_data', 'user', 'detail', NULL, NULL, NULL, NULL, 'Get User Data', NULL, NULL, NULL, NULL, 'get', 'a:1:{i:0;a:5:{s:4:"name";s:5:"token";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}}', 'a:1:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";N;s:4:"used";s:1:"1";}}'),
	(9, 'login_tenant', 'user_tenant', 'detail', NULL, NULL, NULL, NULL, 'Login Tenant', NULL, NULL, NULL, NULL, 'get', 'a:2:{i:0;a:5:{s:4:"name";s:8:"username";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:1;a:5:{s:4:"name";s:8:"password";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}}', 'a:1:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";N;s:4:"used";s:1:"1";}}'),
	(10, 'get_tenant_data', 'tenant', 'detail', NULL, NULL, NULL, NULL, 'Get Tenant Data', NULL, NULL, NULL, NULL, 'get', 'a:1:{i:0;a:5:{s:4:"name";s:5:"token";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}}', 'a:1:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";N;s:4:"used";s:1:"1";}}'),
	(11, 'scan_visitor', 'lacak', 'save_add', NULL, NULL, NULL, NULL, 'Scan Visitor', NULL, NULL, NULL, NULL, 'post', 'a:2:{i:0;a:5:{s:4:"name";s:8:"username";s:4:"type";s:6:"custom";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:1;a:5:{s:4:"name";s:5:"qr_id";s:4:"type";s:6:"custom";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}}', 'a:1:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";N;s:4:"used";s:1:"1";}}');
/*!40000 ALTER TABLE `cms_apicustom` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `cms_apikey`;
/*!40000 ALTER TABLE `cms_apikey` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apikey` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `cms_dashboard`;
/*!40000 ALTER TABLE `cms_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_dashboard` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `cms_email_queues`;
/*!40000 ALTER TABLE `cms_email_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_email_queues` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `cms_email_templates`;
/*!40000 ALTER TABLE `cms_email_templates` DISABLE KEYS */;
INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
	(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-04-27 03:24:47', NULL),
	(2, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-05-06 08:57:02', NULL),
	(3, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-05-07 05:42:39', NULL);
/*!40000 ALTER TABLE `cms_email_templates` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `cms_logs`;
/*!40000 ALTER TABLE `cms_logs` DISABLE KEYS */;
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
	(1, '10.10.10.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://10.10.10.70:8056/arsipv2/public/admin/login', 'admin@ptartha.com login with IP Address 10.10.10.13', '', 1, '2020-07-17 15:30:35', NULL),
	(2, '10.10.10.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://10.10.10.70:8056/arsipv2/public/admin/box/add-save', 'Add New Data Reino Virzan R at Box Draft', '', 1, '2020-07-17 15:32:13', NULL),
	(3, '10.10.10.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://10.10.10.70:8056/arsipv2/public/admin/box_detail/add-save', 'Add New Data SHM at List Bantex', '', 1, '2020-07-17 15:32:47', NULL),
	(4, '10.10.10.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://10.10.10.70:8056/arsipv2/public/admin/box/edit-save/3', 'Update data PUTRA at Box Draft', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cabang_id</td><td>1</td><td>79</td></tr><tr><td>client_id</td><td>1</td><td>82</td></tr><tr><td>unit_kerja_id</td><td>58</td><td>48</td></tr><tr><td>lokasi_vault_id</td><td>1</td><td>13</td></tr><tr><td>status_id</td><td>1</td><td></td></tr><tr><td>status_approve</td><td>1</td><td></td></tr><tr><td>tgl_pemindahan</td><td>22 Januari 2019 </td><td>22 Januari 2019</td></tr></tbody></table>', 1, '2020-07-17 15:34:51', NULL),
	(5, '10.10.10.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://10.10.10.70:8056/arsipv2/public/admin/logout', 'admin@ptartha.com logout', '', 1, '2020-07-17 15:57:21', NULL),
	(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost:8056/arsipv2/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-07-20 13:29:41', NULL),
	(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost:8056/arsipv2/public/admin/box/action-selected', 'Delete data 2,1 at Box Draft', '', 1, '2020-07-20 15:14:14', NULL),
	(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost:8056/arsipv2/public/admin/boxfinal/action-selected', 'Delete data 4,3 at Box Final', '', 1, '2020-07-20 15:14:36', NULL),
	(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost:8056/arsipv2/public/admin/box/add-save', 'Add New Data TATANG at Box Draft', '', 1, '2020-07-20 15:31:19', NULL),
	(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost:8056/arsipv2/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-07-21 13:36:54', NULL),
	(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost:8056/arsipv2/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-07-22 11:04:57', NULL),
	(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost:8056/arsipv2/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-07-22 15:50:26', NULL),
	(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost:8056/arsipv2/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-07-23 15:06:22', NULL),
	(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost:8056/arsipv2/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-07-27 15:31:25', NULL),
	(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsipv2/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-08-06 13:06:24', NULL),
	(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost:8056/arsipv2/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-08-07 10:01:42', NULL),
	(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost:8056/arsipv2/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-08-07 15:14:48', NULL),
	(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost:8056/arsipv2/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-08-09 18:37:05', NULL),
	(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost:8056/arsipv2/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-08-10 13:54:33', NULL),
	(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost:8056/arsipv2/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-08-13 11:51:57', NULL),
	(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost:8056/arsipv2/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-08-14 09:18:32', NULL),
	(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost:8056/arsipv2/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-08-14 13:30:41', NULL),
	(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-08-26 02:05:12', NULL),
	(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-08-26 16:30:05', NULL),
	(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-08-27 08:29:20', NULL),
	(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-08-27 13:59:54', NULL),
	(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/user/add-save', 'Add New Data TAUFIK at Users', '', 1, '2020-08-27 15:30:53', NULL),
	(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-08-28 15:28:19', NULL),
	(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-08-29 06:49:59', NULL),
	(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/user/edit-save/1', 'Update data TAUFIK at Users', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nik</td><td>312003012</td><td>123123</td></tr><tr><td>password</td><td>$2y$10$gq4kgFYtHfSS6b4yeNSdueJ5cZMUC6sC7T.GIGTaaMHudYTxWHZGy</td><td></td></tr><tr><td>token</td><td></td><td></td></tr></tbody></table>', 1, '2020-08-29 13:02:32', NULL),
	(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-08-30 05:16:04', NULL),
	(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/tenant/add-save', 'Add New Data Mall Artha Gading at Daftar Lokasi', '', 1, '2020-08-30 14:07:44', NULL),
	(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-08-31 03:09:57', NULL),
	(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-09-01 02:13:19', NULL),
	(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/user/edit-save/1', 'Update data TAUFIK at Daftar User', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$gq4kgFYtHfSS6b4yeNSdueJ5cZMUC6sC7T.GIGTaaMHudYTxWHZGy</td><td>$2y$10$213aw4OX0sXLy9JpffFoGehOf6MXpUfyHkny/DDvIZYq9CbIu6DQ2</td></tr><tr><td>token</td><td></td><td></td></tr><tr><td>nikhash</td><td>$2y$10$6Q710zgkCSfBQEimR90/dO8d7Gsr8qDlDMxMGDBHpJ880r8E9yXXa</td><td></td></tr></tbody></table>', 1, '2020-09-01 03:34:35', NULL),
	(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-09-03 02:35:19', NULL),
	(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-09-03 15:20:52', NULL),
	(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-09-04 04:22:54', NULL),
	(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-09-05 11:31:17', NULL),
	(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/user/edit-save/4', 'Update data Tarno at Daftar User', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$gpwEyP7kkiXtm.b4ntCZfOIl.btDmqiQrMzbh2FJkiuZPcaCReuEO</td><td>$2y$10$x7O.WC2V7YtqBPRqFzQg8.2iJbwWQHrDP5.HEA7nkxK3jp1RJNnxy</td></tr><tr><td>token</td><td></td><td></td></tr><tr><td>nikhash</td><td></td><td></td></tr></tbody></table>', 1, '2020-09-05 12:37:35', NULL),
	(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/arsip/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-09-06 01:57:43', NULL),
	(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-09-06 02:17:59', NULL),
	(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-09-06 02:24:28', NULL),
	(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/module_generator/delete/12', 'Delete data Box Draft at Module Generator', '', 1, '2020-09-06 02:25:45', NULL),
	(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/module_generator/delete/13', 'Delete data Box Final at Module Generator', '', 1, '2020-09-06 02:25:48', NULL),
	(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/module_generator/delete/15', 'Delete data Cabang at Module Generator', '', 1, '2020-09-06 02:25:51', NULL),
	(47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/module_generator/delete/16', 'Delete data Client at Module Generator', '', 1, '2020-09-06 02:25:53', NULL),
	(48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/module_generator/delete/25', 'Delete data History Update Bantex at Module Generator', '', 1, '2020-09-06 02:25:58', NULL),
	(49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/module_generator/delete/17', 'Delete data History Update Box at Module Generator', '', 1, '2020-09-06 02:26:01', NULL),
	(50, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/module_generator/delete/18', 'Delete data Jenis Dokumen at Module Generator', '', 1, '2020-09-06 02:26:04', NULL),
	(51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/module_generator/delete/14', 'Delete data List Bantex at Module Generator', '', 1, '2020-09-06 02:26:08', NULL),
	(52, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/module_generator/delete/19', 'Delete data Lokasi Vault at Module Generator', '', 1, '2020-09-06 02:26:11', NULL),
	(53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/module_generator/delete/24', 'Delete data Report at Module Generator', '', 1, '2020-09-06 02:26:17', NULL),
	(54, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/module_generator/delete/23', 'Delete data Unit Kerja at Module Generator', '', 1, '2020-09-06 02:26:19', NULL),
	(55, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/menu_management/delete/11', 'Delete data Box at Menu Management', '', 1, '2020-09-06 02:26:33', NULL),
	(56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/menu_management/delete/12', 'Delete data Master Data at Menu Management', '', 1, '2020-09-06 02:26:36', NULL),
	(57, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/user_tenant/add-save', 'Add New Data Mall Artha Gading - Pintu 1 at User Tenant', '', 1, '2020-09-06 02:41:10', NULL),
	(58, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-09-06 09:50:03', NULL),
	(59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/user/action-selected', 'Delete data 12,11,10,9,8,7,6,5,4,3,2 at Daftar User', '', 1, '2020-09-06 09:58:24', NULL),
	(60, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/tenant/add-save', 'Add New Data Margo City at Daftar Lokasi', '', 1, '2020-09-06 10:03:39', NULL),
	(61, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/lacak/action-selected', 'Delete data 29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10 at Lacak', '', 1, '2020-09-06 10:15:47', NULL),
	(62, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/lacak/action-selected', 'Delete data 9,8,7,6,5,4,3,2,1 at Lacak', '', 1, '2020-09-06 10:15:53', NULL),
	(63, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/lacak/action-selected', 'Delete data 32,31,30 at Lacak', '', 1, '2020-09-06 10:17:03', NULL),
	(64, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/menu_management/edit-save/18', 'Update data Daftar Users at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Users</td><td>Daftar Users</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2020-09-06 10:35:38', NULL),
	(65, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/menu_management/edit-save/19', 'Update data Daftar Lokasi Tenant at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Daftar Lokasi</td><td>Daftar Lokasi Tenant</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2020-09-06 10:35:53', NULL),
	(66, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/menu_management/edit-save/18', 'Update data List Users at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Daftar Users</td><td>List Users</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2020-09-06 10:36:11', NULL),
	(67, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/user_tenant/add-save', 'Add New Data Margo City - Pintu Utara at User Tenant', '', 1, '2020-09-06 10:39:08', NULL),
	(68, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/user_tenant/edit-save/1', 'Update data Mall Artha Gading - Pintu 1 at User Tenant', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>username</td><td>pintu1@gading.com</td><td>ARTHA123</td></tr><tr><td>password</td><td>$2y$10$ELM15ljZ2xtKgAhbs92bOukRsY4OMGxjttOLcJDweFAee9Y5ALY9.</td><td>$2y$10$XMTIcGFwadF9SNeXYlW4ceu2UV3XV7ArbWRD6x0MOQByiKjltWxKS</td></tr></tbody></table>', 1, '2020-09-06 10:39:22', NULL),
	(69, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/user_tenant/edit-save/2', 'Update data Margo City - Pintu Utara at User Tenant', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>token</td><td>$2y$10$svTzFKQFTCiNhuwVWyc8qOslYrSuYcz2fLFQ8lIgcS1VlgGNuYxKG</td><td></td></tr><tr><td>password</td><td>$2y$10$qSPsBEyR5e53eDI/KMB2a.RpD06oDlJE9mA4htXPO2oirmz6cPtmu</td><td>$2y$10$Pi/PcIwPpAk292XjVJtwWOJbgK.0bujLCUvs8FWjW1/hg.LvVxbuu</td></tr></tbody></table>', 1, '2020-09-06 15:34:56', NULL),
	(70, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/menu_management/edit-save/20', 'Update data User Scanner Tenant at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>User Tenant</td><td>User Scanner Tenant</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>11</td><td></td></tr></tbody></table>', 1, '2020-09-06 15:44:12', NULL),
	(71, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/menu_management/edit-save/10', 'Update data Dashboard at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-09-06 15:46:22', NULL),
	(72, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/menu_management/edit-save/17', 'Update data Lacak at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2020-09-06 15:46:29', NULL),
	(73, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/menu_management/edit-save/18', 'Update data List Users at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2020-09-06 15:46:36', NULL),
	(74, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/menu_management/edit-save/19', 'Update data Daftar Lokasi Tenant at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2020-09-06 15:46:44', NULL),
	(75, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/menu_management/edit-save/20', 'Update data User Scanner Tenant at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>11</td><td></td></tr></tbody></table>', 1, '2020-09-06 15:46:52', NULL),
	(76, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/users/delete/2', 'Delete data Admin MDS at Users Management', '', 1, '2020-09-06 15:47:08', NULL),
	(77, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/users/add-save', 'Add New Data Admin Lacak at Users Management', '', 1, '2020-09-06 15:47:41', NULL),
	(78, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/user/edit-save/1', 'Update data TAUFIK at Daftar User', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$213aw4OX0sXLy9JpffFoGehOf6MXpUfyHkny/DDvIZYq9CbIu6DQ2</td><td>$2y$10$0MpmhBKZRKRiaR5SDSDHLuKSmpc/LvYHQxw5Blm9Lgu0fCnuvXXcy</td></tr><tr><td>status_check</td><td>Check-Out</td><td></td></tr><tr><td>last_checkin_date</td><td>2020-09-06 23:17:31</td><td></td></tr><tr><td>last_checkin_tenant</td><td>1</td><td></td></tr><tr><td>last_checkout_date</td><td>2020-09-06 23:17:43</td><td></td></tr><tr><td>last_checkout_tenant</td><td>1</td><td></td></tr><tr><td>token</td><td>$2y$10$2KJx03kCjIJNRWEj0BQkpOzbp4Wzer4Lnt6PXekryVpz3L7c4p08a</td><td></td></tr><tr><td>nikhash</td><td>$2y$10$Na4xWTWLM8wI/S4pNbN.NOnBU5Rsrcd2C/MdN.FlLNquvDj0k.BUG</td><td></td></tr></tbody></table>', 1, '2020-09-06 16:26:43', NULL),
	(79, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/lacak/action-selected', 'Delete data 45,44,43,42,41,40,39,38,37,36,35,34,33 at Lacak', '', 1, '2020-09-06 16:40:36', NULL),
	(80, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/user/edit-save/13', 'Update data Taufik Hidayatullah at Daftar User', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$0616F7tlLhb/uh2Wvs1ilOcmgla70hhZzhrxeIcC9NDblqQm9suJu</td><td>$2y$10$8C9CsVKCOa7rf/jtnb7XXem6rmfR.lrHGb1PVgA1KRSd0ff1C1k/e</td></tr><tr><td>status_check</td><td></td><td></td></tr><tr><td>last_checkin_date</td><td></td><td></td></tr><tr><td>last_checkin_tenant</td><td></td><td></td></tr><tr><td>last_checkout_date</td><td></td><td></td></tr><tr><td>last_checkout_tenant</td><td></td><td></td></tr><tr><td>token</td><td>$2y$10$LgQtJLWVaHiV.JZlLZpJoe5.AyGScNH5Kv7pPueNyEXCARpfgykM6</td><td></td></tr><tr><td>nikhash</td><td>$2y$10$ME9fQjd.p6ZoWrwaoo7Wg.iYGi.f5T7hULei8MQ7/30i1vJ9q8DO6</td><td></td></tr></tbody></table>', 1, '2020-09-06 16:53:30', NULL),
	(81, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-09-07 03:14:06', NULL),
	(82, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/lacak/action-selected', 'Delete data 55,54,53,52,51,50,49,48,47,46 at Lacak', '', 1, '2020-09-07 03:15:08', NULL),
	(83, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/logout', 'admin@ptartha.com logout', '', 1, '2020-09-07 04:08:15', NULL),
	(84, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/login', 'admin@lacak.com login with IP Address ::1', '', 3, '2020-09-07 04:08:18', NULL),
	(85, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/logout', 'admin@lacak.com logout', '', 3, '2020-09-07 04:08:31', NULL),
	(86, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-09-07 04:08:35', NULL),
	(87, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/login', 'admin@ptartha.com login with IP Address ::1', '', 1, '2020-09-07 14:42:43', NULL),
	(88, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'http://localhost/lacak-corona/public/admin/user_tenant/edit-save/2', 'Update data Margo City - Pintu Utara at User Scanner Tenant', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>token</td><td>$2y$10$GZR4uApt0wYq6kVjPKMF/u41rd/EFo1aCGw94/a/2l/vUCv6aLGNK</td><td></td></tr><tr><td>password</td><td>$2y$10$Pi/PcIwPpAk292XjVJtwWOJbgK.0bujLCUvs8FWjW1/hg.LvVxbuu</td><td>$2y$10$cJWX5xIBasi.RCEHg8mKx.BMOzeUplKeV5MrmvYiaZQer.Jlt31xS</td></tr></tbody></table>', 1, '2020-09-07 14:42:55', NULL);
/*!40000 ALTER TABLE `cms_logs` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `cms_menus`;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;
INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
	(10, 'Dashboard', 'Route', 'AdminDashboardControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 1, 1, 5, '2020-04-27 04:32:53', '2020-09-06 15:46:22'),
	(17, 'Lacak', 'Route', 'AdminLacakControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 8, '2020-08-26 02:17:44', '2020-09-06 15:46:29'),
	(18, 'List Users', 'Route', 'AdminUserControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 9, '2020-08-27 15:30:08', '2020-09-06 15:46:36'),
	(19, 'Daftar Lokasi Tenant', 'Route', 'AdminTenantControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 10, '2020-08-30 14:06:35', '2020-09-06 15:46:44'),
	(20, 'User Scanner Tenant', 'Route', 'AdminUserTenantControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 11, '2020-09-06 02:03:20', '2020-09-06 15:46:52');
/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `cms_menus_privileges`;
/*!40000 ALTER TABLE `cms_menus_privileges` DISABLE KEYS */;
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
	(12, 9, 1),
	(16, NULL, 1),
	(19, 11, 2),
	(20, 11, 1),
	(21, 1, 2),
	(22, 1, 1),
	(23, 2, 2),
	(24, 2, 1),
	(25, 12, 2),
	(26, 12, 1),
	(27, 5, 2),
	(28, 5, 1),
	(29, 4, 2),
	(30, 4, 1),
	(31, 8, 2),
	(32, 8, 1),
	(33, 7, 2),
	(34, 7, 1),
	(37, 6, 2),
	(38, 6, 1),
	(39, 13, 1),
	(42, 14, 1),
	(43, 3, 2),
	(44, 3, 1),
	(45, 15, 1),
	(46, 16, 1),
	(55, 10, 3),
	(56, 10, 1),
	(57, 17, 3),
	(58, 17, 1),
	(59, 18, 3),
	(60, 18, 1),
	(61, 19, 3),
	(62, 19, 1),
	(63, 20, 3),
	(64, 20, 1);
/*!40000 ALTER TABLE `cms_menus_privileges` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `cms_moduls`;
/*!40000 ALTER TABLE `cms_moduls` DISABLE KEYS */;
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2020-04-27 03:24:47', NULL, NULL),
	(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2020-04-27 03:24:47', NULL, NULL),
	(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2020-04-27 03:24:47', NULL, NULL),
	(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2020-04-27 03:24:47', NULL, NULL),
	(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2020-04-27 03:24:47', NULL, NULL),
	(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2020-04-27 03:24:47', NULL, NULL),
	(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2020-04-27 03:24:47', NULL, NULL),
	(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2020-04-27 03:24:47', NULL, NULL),
	(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2020-04-27 03:24:47', NULL, NULL),
	(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2020-04-27 03:24:47', NULL, NULL),
	(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2020-04-27 03:24:47', NULL, NULL),
	(12, 'Box Draft', 'fa fa-glass', 'box', 'box', 'AdminBoxController', 0, 0, '2020-04-27 03:27:46', NULL, '2020-09-06 02:25:45'),
	(13, 'Box Final', 'fa fa-glass', 'boxfinal', 'box', 'AdminBoxfinalController', 0, 0, '2020-04-27 03:31:06', NULL, '2020-09-06 02:25:48'),
	(14, 'List Bantex', 'fa fa-glass', 'box_detail', 'box_detail', 'AdminBoxDetailController', 0, 0, '2020-04-27 03:39:42', NULL, '2020-09-06 02:26:08'),
	(15, 'Cabang', 'fa fa-glass', 'cabang', 'cabang', 'AdminCabangController', 0, 0, '2020-04-27 03:41:37', NULL, '2020-09-06 02:25:51'),
	(16, 'Client', 'fa fa-glass', 'client', 'client', 'AdminClientController', 0, 0, '2020-04-27 03:41:52', NULL, '2020-09-06 02:25:53'),
	(17, 'History Update Box', 'fa fa-glass', 'history_update_box', 'history_update_box', 'AdminHistoryUpdateBoxController', 0, 0, '2020-04-27 03:42:25', NULL, '2020-09-06 02:26:01'),
	(18, 'Jenis Dokumen', 'fa fa-glass', 'jenis_dokumen', 'jenis_dokumen', 'AdminJenisDokumenController', 0, 0, '2020-04-27 03:43:27', NULL, '2020-09-06 02:26:04'),
	(19, 'Lokasi Vault', 'fa fa-glass', 'lokasi_vault', 'lokasi_vault', 'AdminLokasiVaultController', 0, 0, '2020-04-27 03:43:42', NULL, '2020-09-06 02:26:11'),
	(20, 'Dashboard', 'fa fa-glass', 'dashboad', 'box', 'AdminDashboadController', 0, 0, '2020-04-27 03:44:48', NULL, '2020-04-27 04:32:31'),
	(21, 'Dashboard', 'fa fa-glass', 'dashboard', 'box', 'AdminDashboardController', 0, 0, '2020-04-27 04:32:52', NULL, NULL),
	(22, 'test', 'fa fa-glass', 'box22', 'box', 'AdminBox22Controller', 0, 0, '2020-05-06 08:10:06', NULL, '2020-05-07 06:41:55'),
	(23, 'Unit Kerja', 'fa fa-glass', 'unit_kerja', 'unit_kerja', 'AdminUnitKerjaController', 0, 0, '2020-05-14 01:40:56', NULL, '2020-09-06 02:26:19'),
	(24, 'Report', 'fa fa-files-o', 'report', 'box', 'AdminReportController', 0, 0, '2020-07-16 14:52:49', NULL, '2020-09-06 02:26:17'),
	(25, 'History Update Bantex', 'fa fa-glass', 'historyupdatebantex', 'box_detail', 'AdminHistoryupdatebantexController', 0, 0, '2020-07-17 09:38:13', NULL, '2020-09-06 02:25:58'),
	(26, 'Lacak', 'fa fa-glass', 'lacak', 'lacak', 'AdminLacakController', 0, 0, '2020-08-26 02:17:44', NULL, NULL),
	(27, 'Daftar User', 'fa fa-glass', 'user', 'user', 'AdminUserController', 0, 0, '2020-08-27 15:30:08', NULL, NULL),
	(28, 'Daftar Lokasi', 'fa fa-glass', 'tenant', 'tenant', 'AdminTenantController', 0, 0, '2020-08-30 14:06:35', NULL, NULL),
	(29, 'User Scanner Tenant', 'fa fa-glass', 'user_tenant', 'user_tenant', 'AdminUserTenantController', 0, 0, '2020-09-06 02:03:20', NULL, NULL);
/*!40000 ALTER TABLE `cms_moduls` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `cms_notifications`;
/*!40000 ALTER TABLE `cms_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_notifications` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `cms_privileges`;
/*!40000 ALTER TABLE `cms_privileges` DISABLE KEYS */;
INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
	(1, 'Super Administrator', 1, 'skin-green-light', '2020-04-27 03:24:47', NULL),
	(3, 'Admin', 0, 'skin-yellow-light', NULL, NULL);
/*!40000 ALTER TABLE `cms_privileges` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `cms_privileges_roles`;
/*!40000 ALTER TABLE `cms_privileges_roles` DISABLE KEYS */;
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
	(31, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
	(32, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
	(33, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
	(34, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
	(35, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
	(36, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
	(37, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
	(38, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
	(39, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
	(40, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
	(41, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
	(42, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
	(43, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
	(44, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
	(45, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
	(46, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
	(47, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
	(48, 1, 1, 1, 1, 1, 3, 28, NULL, NULL),
	(49, 1, 1, 1, 1, 1, 3, 27, NULL, NULL),
	(50, 1, 0, 1, 0, 1, 3, 21, NULL, NULL),
	(51, 1, 0, 1, 0, 1, 3, 26, NULL, NULL),
	(52, 1, 1, 1, 1, 1, 3, 29, NULL, NULL),
	(53, 1, 1, 1, 1, 1, 3, 4, NULL, NULL);
/*!40000 ALTER TABLE `cms_privileges_roles` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `cms_settings`;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
	(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2020-04-27 03:24:47', NULL, 'Login Register Style', 'Login Background Color'),
	(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2020-04-27 03:24:47', NULL, 'Login Register Style', 'Login Font Color'),
	(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2020-04-27 03:24:47', NULL, 'Login Register Style', 'Login Background Image'),
	(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2020-04-27 03:24:47', NULL, 'Email Setting', 'Email Sender'),
	(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2020-04-27 03:24:47', NULL, 'Email Setting', 'Mail Driver'),
	(6, 'smtp_host', '', 'text', NULL, NULL, '2020-04-27 03:24:47', NULL, 'Email Setting', 'SMTP Host'),
	(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2020-04-27 03:24:47', NULL, 'Email Setting', 'SMTP Port'),
	(8, 'smtp_username', '', 'text', NULL, NULL, '2020-04-27 03:24:47', NULL, 'Email Setting', 'SMTP Username'),
	(9, 'smtp_password', '', 'text', NULL, NULL, '2020-04-27 03:24:47', NULL, 'Email Setting', 'SMTP Password'),
	(10, 'appname', 'LACAK', 'text', NULL, NULL, '2020-04-27 03:24:47', NULL, 'Application Setting', 'Application Name'),
	(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2020-04-27 03:24:47', NULL, 'Application Setting', 'Default Paper Print Size'),
	(12, 'logo', 'uploads/2020-05/12201c70405a634a50b4fcc41902430a.png', 'upload_image', NULL, NULL, '2020-04-27 03:24:47', NULL, 'Application Setting', 'Logo'),
	(13, 'favicon', 'uploads/2020-04/cd83da5f2a549fa219320758c5b4d4a7.png', 'upload_image', NULL, NULL, '2020-04-27 03:24:47', NULL, 'Application Setting', 'Favicon'),
	(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2020-04-27 03:24:47', NULL, 'Application Setting', 'API Debug Mode'),
	(15, 'google_api_key', NULL, 'text', NULL, NULL, '2020-04-27 03:24:47', NULL, 'Application Setting', 'Google API Key'),
	(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2020-04-27 03:24:47', NULL, 'Application Setting', 'Google FCM Key');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `cms_statistics`;
/*!40000 ALTER TABLE `cms_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistics` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `cms_statistic_components`;
/*!40000 ALTER TABLE `cms_statistic_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistic_components` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `cms_users`;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
	(1, 'Super Admin', 'uploads/1/2020-07/person_icon.jpg', 'admin@ptartha.com', '$2y$10$FH7KfDfi.1XThWDpx6ZfPeACTs0bIPG36QLqEscF1QG4qYT0HhWAu', 1, '2020-04-27 03:24:47', '2020-07-14 09:13:17', 'Active'),
	(3, 'Admin Lacak', 'uploads/1/2020-09/person_icon.jpg', 'admin@lacak.com', '$2y$10$DIm8RLitrb.2JDYe9Emh0.xNDrRjX3V61trWBgSLlIe73sPhCGrNu', 3, '2020-09-06 15:47:41', NULL, NULL);
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `lacak` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `timescan` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tenant_id` int(11) DEFAULT NULL,
  `user_tenant_id` int(11) DEFAULT NULL,
  `status` varchar(150) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

DELETE FROM `lacak`;
/*!40000 ALTER TABLE `lacak` DISABLE KEYS */;
INSERT INTO `lacak` (`id`, `created_at`, `updated_at`, `timescan`, `tenant_id`, `user_tenant_id`, `status`, `user_id`) VALUES
	(56, '2020-09-07 10:17:04', '2020-09-07 10:17:04', '2020-09-07 10:17:04', 2, NULL, 'Check-In', 13),
	(57, '2020-09-07 21:00:12', '2020-09-07 21:00:12', '2020-09-07 21:00:12', 1, NULL, 'Check-In', 1);
/*!40000 ALTER TABLE `lacak` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
	(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
	(3, '2016_08_07_151210_add_table_cms_logs', 1),
	(4, '2016_08_07_151211_add_details_cms_logs', 1),
	(5, '2016_08_07_152014_add_table_cms_privileges', 1),
	(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
	(7, '2016_08_07_152320_add_table_cms_settings', 1),
	(8, '2016_08_07_152421_add_table_cms_users', 1),
	(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
	(10, '2016_08_07_154624_add_table_cms_moduls', 1),
	(11, '2016_08_17_225409_add_status_cms_users', 1),
	(12, '2016_08_20_125418_add_table_cms_notifications', 1),
	(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
	(14, '2016_09_16_035347_add_group_setting', 1),
	(15, '2016_09_16_045425_add_label_setting', 1),
	(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
	(17, '2016_10_01_141740_add_method_type_apicustom', 1),
	(18, '2016_10_01_141846_add_parameters_apicustom', 1),
	(19, '2016_10_01_141934_add_responses_apicustom', 1),
	(20, '2016_10_01_144826_add_table_apikey', 1),
	(21, '2016_11_14_141657_create_cms_menus', 1),
	(22, '2016_11_15_132350_create_cms_email_templates', 1),
	(23, '2016_11_15_190410_create_cms_statistics', 1),
	(24, '2016_11_17_102740_create_cms_statistic_components', 1),
	(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `tenant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `qr_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

DELETE FROM `tenant`;
/*!40000 ALTER TABLE `tenant` DISABLE KEYS */;
INSERT INTO `tenant` (`id`, `created_at`, `updated_at`, `nama`, `alamat`, `kota`, `qr_id`) VALUES
	(1, '2020-08-30 14:07:44', '2020-08-31 10:17:34', 'Mall Artha Gading', 'Jalan boulevard raya', 'Jakarta Utara', 'A10000123'),
	(2, '2020-09-06 10:03:39', '2020-09-06 17:04:10', 'Margo City', 'Jalan Margonda depok', 'DEPOK', 'ABCD1234');
/*!40000 ALTER TABLE `tenant` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nik` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status_check` varchar(100) DEFAULT NULL,
  `last_checkin_date` timestamp NULL DEFAULT NULL,
  `last_checkin_tenant` int(11) DEFAULT NULL,
  `last_checkout_date` timestamp NULL DEFAULT NULL,
  `last_checkout_tenant` int(11) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `nikhash` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `created_at`, `updated_at`, `nik`, `nama`, `password`, `status_check`, `last_checkin_date`, `last_checkin_tenant`, `last_checkout_date`, `last_checkout_tenant`, `token`, `nikhash`) VALUES
	(1, '2020-08-27 15:30:53', '2020-09-08 09:22:14', '123123', 'TAUFIK', '$2y$10$0MpmhBKZRKRiaR5SDSDHLuKSmpc/LvYHQxw5Blm9Lgu0fCnuvXXcy', 'Check-In', '2020-09-07 21:00:12', 1, '2020-09-07 10:14:43', 1, '$2y$10$/37EQWd5nQgfOQ3H8.PJZOcMnbLnFn5h0mIBCEGWHASBKOLhZo8Ki', '$2y$10$OfM/WFfL27t2eZCWMUMjzOZ0fYqOdip9GEHK8vgMe0y0qdUEvUFtO'),
	(13, '2020-09-06 17:01:39', '2020-09-07 10:28:18', '3172041905930005', 'Taufik Hidayatullah', '$2y$10$8C9CsVKCOa7rf/jtnb7XXem6rmfR.lrHGb1PVgA1KRSd0ff1C1k/e', 'Check-In', '2020-09-07 10:17:04', 2, NULL, NULL, '$2y$10$Kpx7rmJleZeeLyf2zOTwO.3.NuiCcjH/t34HGo9k4diDZezQGY5.W', '$2y$10$.mkYl8XwYnsnLr0iKZLwle7DqjL6qV/uJrP0Xj7E03F46bNs/PYxS'),
	(14, '2020-09-07 09:36:28', '2020-09-07 09:36:47', '4321', 'INDRA', '$2y$10$eXMk2jAcGHy7TF0Ka4iuXevByWuONtZ2WWSOsZ.q9G33OUhoqgMJi', NULL, NULL, NULL, NULL, NULL, '$2y$10$I39.kddv8B3PKv2jL7vlWODtdIvxm51ahmH1NeJ/9A6xNkOrK4cvm', '$2y$10$2ok.UhO50cDRRmW.1v5BJumUSNBQ/GHBwcTsmCmgQz6LGtXp.k3be');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `user_tenant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_tenant` int(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

DELETE FROM `user_tenant`;
/*!40000 ALTER TABLE `user_tenant` DISABLE KEYS */;
INSERT INTO `user_tenant` (`id`, `created_at`, `updated_at`, `id_tenant`, `nama`, `token`, `username`, `password`) VALUES
	(1, '2020-09-06 02:41:10', '2020-09-06 22:29:07', 1, 'Mall Artha Gading - Pintu 1', '$2y$10$1rl7ftieyycKNpXmyd1ilu8tWiSOgZySzmF2PjRpCs3E3rqg8bL.W', 'ARTHA123', '$2y$10$XMTIcGFwadF9SNeXYlW4ceu2UV3XV7ArbWRD6x0MOQByiKjltWxKS'),
	(2, '2020-09-06 10:39:08', '2020-09-07 21:44:05', 2, 'Margo City - Pintu Utara', '$2y$10$/8MWXPR6C3SpivKSq.gBG.DtQ67qYzNqVlHPpBYu1Qwj1yXfz4sGa', 'MARGO123', '$2y$10$cJWX5xIBasi.RCEHg8mKx.BMOzeUplKeV5MrmvYiaZQer.Jlt31xS');
/*!40000 ALTER TABLE `user_tenant` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
