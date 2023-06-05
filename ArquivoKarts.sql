CREATE DATABASE IF NOT EXISTS diagrama_karts;

-- -----------------------------------------------------
-- Table `fornecedor`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `fornecedor` (
  `cpnj` INT(14) NOT NULL,
  `nome_empresa` VARCHAR(80) NOT NULL,
  `cep` INT(8) NOT NULL,
  `telefone` INT(13) NOT NULL,
  PRIMARY KEY (`cpnj`) 
);

-- -----------------------------------------------------
-- Table `karts`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `karts` (
  `id_kart` INT NOT NULL,
  `cor` VARCHAR(45) NOT NULL,
  `modelo` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `ano` DATETIME(4) NOT NULL,
  `quantidade` INT(3) NOT NULL,
  `data_entrada` DATETIME(8) NOT NULL,
  `fornecedor_cpnj` INT(14) NOT NULL,
  PRIMARY KEY (`id_kart`) AUTO_INCREMENT,
  CONSTRAINT `fk_karts_fornecedor` FOREIGN KEY (`fornecedor_cpnj`) REFERENCES `fornecedor` (`cpnj`)
);

-- -----------------------------------------------------
-- Table `funcionarios`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `funcionarios` (
  `matricula` INT(11) NOT NULL,
  `cpf` INT(11) NOT NULL,
  `nome_completo` VARCHAR(80) NOT NULL,
  `data_nascimento` DATETIME(8) NOT NULL,
  `cargo` VARCHAR(80) NOT NULL,
  `senha` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`matricula`)
);

-- -----------------------------------------------------
-- Table `clientes`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `clientes` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nome_completo` VARCHAR(80) NOT NULL,
  `data_nascimento` DATETIME(8) NOT NULL,
  `cnpj` INT(12) NULL,
  `cpf` INT(11) NULL,
  PRIMARY KEY (`id_cliente`) AUTO_INCREMENT
);

-- -----------------------------------------------------primeiro_nome
-- Table `vendas`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `vendas` (
  `id_vendas` INT NOT NULL,
  `data_venda` DATETIME(8) NOT NULL,
  `funcionarios_matricula` INT(11) NOT NULL,
  `clientes_id_cliente` INT NOT NULL,
  cnpj `valor_total` FLOAT NOT NULL,
  PRIMARY KEY (`id_vendas`) AUTO_INCREMENT,
  CONSTRAINT `fk_vendas_funcionarios1` FOREIGN KEY (`funcionarios_matricula`) REFERENCES `funcionarios` (`matricula`) CONSTRAINT `fk_vendas_clientes1` FOREIGN KEY (`clientes_id_cliente`) REFERENCES `clientes` (`id_cliente`)
);

-- -----------------------------------------------------
-- Table `compras`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `compras` (
  `id_compras` INT NOT NULL,
  `karts_id_kart` INT NOT NULL,
  `vendas_id_vendas` INT NOT NULL,
  `quantidade` INT(3) NOT NULL,
  `data_compra` DATETIME(8) NOT NULL,
  PRIMARY KEY (`id_compras`) AUTO_INCREMENT,
  CONSTRAINT `fk_karts_has_vendas_karts1` FOREIGN KEY (`karts_id_kart`) REFERENCES `karts` (`id_kart`) CONSTRAINT `fk_karts_has_vendas_vendas1` FOREIGN KEY (`vendas_id_vendas`) REFERENCES `vendas` (`id_vendas`)
);

-- -----------------------------------------------------
-- Inserção na tabela `fornecedor`
-- -----------------------------------------------------
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (80584893791417, 'Abatz', '49035-296', '6506447239');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (64736926484180, 'Twimbo', '44924-008', '3635163605');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (50334467586818, 'Flashpoint', '49999-075', '2068416395');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (81683216606938, 'Cogibox', '52686-342', '7913256347');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (91724407837430, 'Yozio', '0904-6406', '8682875918');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (48325581286317, 'Roodel', '0268-1525', '3537142129');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (36180840066057, 'Rhynyx', '43353-742', '9405819849');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (93542953589069, 'Zoomcast', '67544-237', '3866805240');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (48147696534048, 'Wordify', '49999-115', '8117217713');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (32239849297317, 'Aivee', '53808-0659', '5856170489');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (90181543011687, 'Devshare', '54879-011', '3556628496');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (70974820940272, 'Roombo', '59779-578', '6262375809');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (41606908027094, 'Zoomlounge', '55926-0022', '4463193975');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (42055734180419, 'Twitterworks', '53808-0239', '1424783332');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (56060251629096, 'Twitternation', '51293-605', '1386882578');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (83031077871639, 'Dablist', '57520-0411', '3763186120');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (43035458657167, 'Skimia', '52125-373', '5562895336');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (58136182163095, 'Dabjam', '60505-2968', '6537143543');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (48855449897432, 'Rhycero', '0409-1778', '6931943391');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (401702561542, 'Youspan', '48951-1123', '9043971032');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (96160704771023, 'Bluezoom', '63736-013', '4095751345');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (51663115717740, 'Abata', '0904-6340', '4554635940');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (28324356754189, 'Buzzdog', '49817-0050', '4525835317');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (85892187158679, 'Edgeblab', '10544-109', '1378607778');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (94817259501371, 'Bluezoom', '49288-0254', '2082167447');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (58283210604843, 'Layo', '43419-381', '4541381139');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (58484734206621, 'Mydeo', '68752-022', '2317011831');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (87218138265292, 'Fadeo', '55312-120', '6402389537');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (909186396275, 'Plambee', '35617-399', '1047685030');
insert into fornecedor (cnpj, nome_empresa, cep, telefone) values (36354525738385, 'Brainsphere', '54575-907', '2748911289');
-- -----------------------------------------------------
-- Inserção na tabela `karts`
-- -----------------------------------------------------
INSERT INTO
  karts
-- -----------------------------------------------------
-- Inserção na tabela `funcionarios`
-- -----------------------------------------------------
INSERT INTO
  funcionarios
-- -----------------------------------------------------
-- Inserção na tabela `clientes`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Inserção na tabela `vendas`
-- -----------------------------------------------------
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (1, '27/09/2022', '8503418452', 82680227009705, 8159998674.37);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (2, '03/04/2023', '9742754691', 24568883057582, 764244939.85);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (3, '11/08/2022', '6599752993', 76452950016284, 272262174.82);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (4, '02/04/2023', '5130261011', 98363411531040, 3213125493.95);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (5, '28/05/2023', '4709128685', 83186021330051, 5482808083.24);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (6, '17/06/2022', '8315247514', 61045853799452, 5797926834.34);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (7, '10/03/2023', '5196450025', 40166273804472, 355085856.32);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (8, '13/08/2022', '3398167195', 16116503161752, 5413373978.15);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (9, '10/11/2022', '6691712560', 1323413885212, 8798686109.97);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (10, '05/06/2022', '7142025115', 95840728542690, 6655506880.27);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (11, '26/09/2022', '0848123603', 91658815664731, 4956400002.22);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (12, '23/12/2022', '0666976570', 9817016847843, 2312281434.8);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (13, '01/04/2023', '3431682707', 37092220765241, 3517187789.61);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (14, '05/09/2022', '6225905855', 17561860775952, 6243798008.05);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (15, '02/09/2022', '8967246315', 68904837517791, 9534734937.47);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (16, '23/04/2023', '9134291695', 89144143201580, 7969371286.72);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (17, '25/08/2022', '9140561534', 24119198727533, 9008908578.47);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (18, '06/02/2023', '8079447314', 78494478228590, 1294402072.52);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (19, '30/05/2022', '5078391037', 31921526487208, 6351031789.66);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (20, '23/10/2022', '0182052028', 28368586634887, 8068853115.82);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (21, '26/09/2022', '4099528731', 58929016400725, 4627051168.93);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (22, '13/01/2023', '1020220198', 49610907791725, 5711988075.55);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (23, '14/12/2022', '2310749125', 43034635162442, 3770189731.62);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (24, '03/09/2022', '1599194058', 13366979919959, 1629897965.17);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (25, '25/10/2022', '7678151756', 64545837242891, 7595088082.27);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (1, '30/03/2023', '8343012380', 73203598635029, 9277055738.3);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (2, '09/10/2022', '5726586565', 87274178494125, 5337484351.75);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (3, '25/01/2023', '3013759321', 78635864102755, 535763656.24);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (4, '03/04/2023', '0551065141', 26706593324870, 5208066119.15);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (5, '28/06/2022', '8658578097', 45917445060943, 9545492224.97);

-- -----------------------------------------------------
-- Inserção na tabela `compras`
-- -----------------------------------------------------
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (58415041953343, 54806524944779, 70, 1484667778317, '27/05/2001');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (70786975411112, 59526398541733, 21, 49626798224043, '08/01/1986');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (13072940984189, 70685098851839, 75, 25738416752463, '25/03/1979');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (55704062019270, 89025783792831, 97, 46639324457635, '07/11/1979');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (13349478920963, 20171495491977, 99, 37028244530380, '03/09/1998');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (64576095128972, 46720142934651, 56, 62407669966959, '24/12/1978');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (34557448879703, 76447243377627, 51, 18811700501211, '11/05/1964');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (33182586897352, 79385631908707, 52, 82320400093082, '08/09/1959');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (59493980023057, 61136477133093, 52, 37792381977843, '08/06/1953');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (82083321913067, 89350417131030, 53, 87260707206999, '04/03/2016');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (11379647670528, 58211999907932, 62, 37366307165576, '07/05/1987');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (44675962816694, 23880280559043, 14, 82292302187746, '11/05/1971');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (95759870228334, 34233692883056, 79, 32054586536063, '12/12/2021');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (74381305834178, 32059950710114, 71, 96915046428203, '10/04/1959');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (41997193761465, 77271042821853, 68, 37307592767081, '23/05/2009');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (63756765087987, 30050983702585, 77, 95468196232288, '27/08/1967');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (70960638022294, 81752419462964, 93, 74508030118631, '22/12/1991');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (48573405898186, 39339096947470, 20, 42829799254130, '13/11/1995');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (82853045936132, 74642185224041, 70, 57314467593545, '19/12/1982');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (66213682877141, 60535499531100, 63, 6730543417450, '22/09/1957');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (31244933016292, 43033533953154, 52, 92459335879680, '08/09/1979');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (29445497277257, 21996003263362, 92, 51815950285434, '05/02/1981');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (4123919502089, 67009105282257, 34, 6601274780695, '19/12/1974');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (59969996420722, 43188729322560, 81, 93787275361720, '22/09/2017');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (30103766219782, 93841364793794, 15, 51051134305448, '17/05/2013');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (33492306317786, 3834119292331, 11, 49570758221600, '12/06/1990');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (74723998387464, 24963725906623, 96, 30254658192872, '24/02/2015');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (84057092116704, 43521078486401, 94, 42852102950553, '20/09/1997');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (29533180795721, 63032493220775, 66, 33964699983894, '07/09/1998');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (93943958416838, 77096094569864, 11, 80863929041076, '07/04/1996');


  --Update
    
--------------------------------------------------------
-- Atualização na tabela `clientes`
-- -----------------------------------------------------

  UPDATE clintes SET nome_completo= "Amanda Alves de Lima" WHERE id_cliente IN (20);
  UPDATE clintes SET nome_completo= "Gabriele Ribeiro" WHERE id_cliente IN (21);
  UPDATE clintes SET nome_completo= "Pietro Hofferman" WHERE id_cliente IN (22); 
  UPDATE clintes SET nome_completo= "Lucas Lemes" WHERE id_cliente IN (23); 
  UPDATE clintes SET nome_completo= "Guilherme Almeida" WHERE id_cliente IN (24); 
  UPDATE clintes SET nome_completo= "Lucas Oliveira" WHERE id_cliente IN (25); 
  
--------------------------------------------------------
-- Atualização na tabela `fornecedor`
-- -----------------------------------------------------

 --Delete

-- -----------------------------------------------------
-- DELETE na tabela `Cliente`
-- -----------------------------------------------------

   DELETE FROM clientes WHERE id_cliente = 30;
   DELETE FROM clientes WHERE id_cliente = 29;
   DELETE FROM clientes WHERE id_cliente = 28;
   DELETE FROM clientes WHERE id_cliente = 27;
   DELETE FROM clientes WHERE id_cliente = 26; 

-- -----------------------------------------------------
-- DELETE na tabela `fornecedor`
-- -----------------------------------------------------

   DELETE FROM fornecedor WHERE id_fornecedor = 30;
   DELETE FROM fornecedor WHERE id_fornecedor = 29;
   DELETE FROM fornecedor WHERE id_fornecedor = 28;
   DELETE FROM fornecedor WHERE id_fornecedor = 27;
   DELETE FROM fornecedor WHERE id_fornecedor = 26;
 
-- -----------------------------------------------------
-- DELETE na tabela `kart`
-- -----------------------------------------------------
 
   DELETE FROM kart WHERE id_kart = 30;
   DELETE FROM kart WHERE id_kart = 29;
   DELETE FROM kart WHERE id_kart = 28;
   DELETE FROM kart WHERE id_kart = 27;
   DELETE FROM kart WHERE id_kart = 26;

-- -----------------------------------------------------
-- DELETE na tabela `funcionarios`
-- -----------------------------------------------------

   DELETE FROM funcionario WHERE id_funcionario = 30;
   DELETE FROM funcionario WHERE id_funcionario = 29;
   DELETE FROM funcionario WHERE id_funcionario = 28;
   DELETE FROM funcionario WHERE id_funcionario = 27;
   DELETE FROM funcionario WHERE id_funcionario = 26;

-- -----------------------------------------------------
-- DELETE na tabela `compras`
-- -----------------------------------------------------

   DELETE FROM compras WHERE id_compras = 30;
   DELETE FROM compras WHERE id_compras = 29;
   DELETE FROM compras WHERE id_compras = 28;
   DELETE FROM compras WHERE id_compras = 27;
   DELETE FROM compras WHERE id_compras = 26;

-- -----------------------------------------------------
-- DELETE na tabela `vendas`
-- -----------------------------------------------------   

   DELETE FROM vendas WHERE id_vendas = 30;
   DELETE FROM vendas WHERE id_vendas = 29;
   DELETE FROM vendas WHERE id_vendas = 28;
   DELETE FROM vendas WHERE id_vendas = 27;
   DELETE FROM vendas WHERE id_vendas = 26
<<<<<<< Updated upstream
=======
   
>>>>>>> Stashed changes
