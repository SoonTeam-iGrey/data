CREATE TABLE `domains` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);

INSERT INTO `domains` (`name`) VALUES ('backend'), ('frontend'), ('mobile developer'),
							('game developer'), ('data science'), ('machine learning'), ('quality assurance'),
                            ('devops'), ('cybersecurity'), ('database administrator'), ('networking'), ('embedded');