USE wanwan;

DROP TABLE IF EXISTS `users`;

CREATE TABLE IF NOT EXISTS `users` (
  `id` BINARY(16) NOT NULL,
  `name` VARCHAR(15) NOT NULL,
  `account_name` VARCHAR(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `auto_increment` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`name`),
  KEY (`account_name`),
  KEY (`updated_at`),
  UNIQUE KEY (`auto_increment`)
);
