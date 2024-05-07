CREATE TABLE `EmpresaParceira` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `setor` varchar(255),
  `localizacao` varchar(255)
);

CREATE TABLE `Tecnologia` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `area` varchar(255)
);

CREATE TABLE `UsoTecnologia` (
  `id` int PRIMARY KEY,
  `empresa_id` int,
  `tecnologia_id` int
);

CREATE TABLE `Colaborador` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `cargo` varchar(255),
  `empresa_id` int
);

ALTER TABLE `UsoTecnologia` ADD FOREIGN KEY (`empresa_id`) REFERENCES `EmpresaParceira` (`id`);

ALTER TABLE `UsoTecnologia` ADD FOREIGN KEY (`tecnologia_id`) REFERENCES `Tecnologia` (`id`);

ALTER TABLE `Colaborador` ADD FOREIGN KEY (`empresa_id`) REFERENCES `EmpresaParceira` (`id`);
