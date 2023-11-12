CREATE TABLE `Clienti` (
  `idClienti` int unsigned NOT NULL AUTO_INCREMENT,
  `Frontend` int DEFAULT NULL,
  `Backend` int DEFAULT NULL,
  `MobileDev` int DEFAULT NULL,
  `GameDev` int DEFAULT NULL,
  `DataScience` int DEFAULT NULL,
  `AI` int DEFAULT NULL,
  `QA` int DEFAULT NULL,
  `DevOps` int DEFAULT NULL,
  `Cybersecurity` int DEFAULT NULL,
  `DBAdmin` int DEFAULT NULL,
  `Networking` int DEFAULT NULL,
  `Embedded` int DEFAULT NULL,
  PRIMARY KEY (`idClienti`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;