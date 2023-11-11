DROP TABLE IF EXISTS `user_skills_tracking`;
CREATE TABLE `user_skills_tracking` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `timestamp` datetime NOT NULL,
  `domain_id` int NOT NULL,
  `domain_score_theoretical` double NOT NULL,
  `domain_score_practical` double NOT NULL,
  `experience_months` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `user_tracking_domain_fk_idx` (`domain_id`),
  KEY `user_tracking_users_fk_idx` (`user_id`),
  CONSTRAINT `user_tracking_domain_fk` FOREIGN KEY (`domain_id`) REFERENCES `domains` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `user_tracking_users_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;