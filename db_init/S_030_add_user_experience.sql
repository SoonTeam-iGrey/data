CREATE TABLE `experience` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `user_id` int NOT NULL,
  `domain_id` int NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `experience_company_fk_idx` (`company_id`),
  KEY `experience_users_fk_idx` (`user_id`),
  KEY `experience_domain_fk_idx` (`domain_id`),
  CONSTRAINT `experience_company_fk` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `experience_domain_fk` FOREIGN KEY (`domain_id`) REFERENCES `domains` (`id`),
  CONSTRAINT `experience_users_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `experience_skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `skill_id` int NOT NULL,
  `experience_id` int NOT NULL,
  `updated_on` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `experience_skills_skill_fk_idx` (`skill_id`),
  KEY `experience_skills_experience_fk` (`experience_id`),
  CONSTRAINT `experience_skills_experience_fk` FOREIGN KEY (`experience_id`) REFERENCES `experience` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `experience_skills_skill_fk` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;