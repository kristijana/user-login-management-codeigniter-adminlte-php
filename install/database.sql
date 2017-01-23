

CREATE TABLE `permission` (
  `id` int(122) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(250) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


INSERT INTO permission VALUES
("1","Member","{\"users\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\"}}"),
("2","admin","{\"users\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\",\"all_create\":\"1\",\"all_read\":\"1\",\"all_update\":\"1\",\"all_delete\":\"1\"}}");




CREATE TABLE `setting` (
  `id` int(122) unsigned NOT NULL AUTO_INCREMENT,
  `keys` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;


INSERT INTO setting VALUES
("1","website","User Login and Management"),
("2","logo","logo.png"),
("3","favicon","favicon.ico"),
("4","SMTP_EMAIL",""),
("5","HOST",""),
("6","PORT",""),
("7","SMTP_SECURE",""),
("8","SMTP_PASSWORD",""),
("9","mail_setting","simple_mail"),
("10","company_name","Company Name"),
("11","crud_list","users"),
("12","EMAIL",""),
("13","UserModules","yes"),
("14","register_allowed","1"),
("15","email_invitation","1"),
("16","admin_approval","0"),
("17","user_type","[\"Member\"]");




CREATE TABLE `templates` (
  `id` int(121) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `template_name` varchar(255) DEFAULT NULL,
  `html` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


INSERT INTO templates VALUES
("1","forgot_pass","forgot_password","Forgot password","<html xmlns=\"http://www.w3.org/1999/xhtml\"><head>
("3","users","invitation","Invitation","<p>Hello <strong>{var_user_email}</strong></p>




CREATE TABLE `users` (
  `id` int(122) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(250) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `status` int(124) DEFAULT '1',
  `profile_pic` varchar(250) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL,
  `var_key` varchar(250) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `user_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;


INSERT INTO users VALUES ("1","admin","admin_fname","admin_lname","admin_fname","admin_email","admin_password","1","demo_pic.png","0","admin_create_date","","","","1");