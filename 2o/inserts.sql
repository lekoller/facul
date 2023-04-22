-- oracle db insert queries:
-- 1. insert into table mc_depto

-- a) Para essa etapa de instruções DML, analise as recomendações abaixo e para cada solicitação, escreva a instrução SQL que resolva as ocorrências abaixo: Popular a tabela DEPARTAMENTO, inserindo no mínimo 7 departamentos, conforme sugestão abaixo: 

INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES ('COMERCIAL', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES ('CONTABILIDADE', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES ('ESTOQUE', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES ('FINANCEIRO', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES ('SAC (SERVIÇO DE ATENDIMENTO AO CLIENTE)', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES ('RECURSOS HUMANOS (RH)', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES ('LOGISTICA', 'A');
-- 1 row(s) inserted.

-- b) Popular a tabela FUNCIONARIO, inserindo no mínimo 3 (três) funcionários para cada departamento criado.

INSERT INTO MC_FUNCIONARIO (
  CD_DEPTO, 
  NM_FUNCIONARIO, 
  DT_NASCIMENTO, 
  FL_SEXO_BIOLOGICO, 
  DS_GENERO, 
  DS_CARGO, 
  VL_SALARIO, 
  DS_EMAIL, 
  ST_FUNC, 
  DT_CADASTRAMENTO, 
  DT_DESLIGAMENTO
) VALUES (
  1, 
  'JOAO', 
  TO_DATE('01/01/2000', 'DD/MM/YYYY'), 
  'M', 
  'MASCULINO', 
  'GERENTE', 
  2000, 
  'joao@email.com', 
  'A', 
  TO_DATE('01/01/2000', 'DD/MM/YYYY'), 
  TO_DATE('01/01/2000', 'DD/MM/YYYY')
);
-- 1 row(s) inserted.

INSERT INTO MC_FUNCIONARIO (
  CD_DEPTO, 
  NM_FUNCIONARIO, 
  CD_GERENTE,
  DT_NASCIMENTO, 
  FL_SEXO_BIOLOGICO, 
  DS_GENERO, 
  DS_CARGO, 
  VL_SALARIO, 
  DS_EMAIL, 
  ST_FUNC, 
  DT_CADASTRAMENTO, 
  DT_DESLIGAMENTO
) VALUES (
  1, 
  'JOAQUIM', 
  1,
  TO_DATE('01/01/2000', 'DD/MM/YYYY'), 
  'M', 
  'MASCULINO', 
  'ATENDENTE', 
  1000, 
  'joaquim@email.com', 
  'A', 
  TO_DATE('01/01/2020', 'DD/MM/YYYY'), 
  TO_DATE('01/01/2021', 'DD/MM/YYYY')
);
-- 1 row(s) inserted.

INSERT INTO MC_FUNCIONARIO (
  CD_DEPTO, 
  NM_FUNCIONARIO, 
  DT_NASCIMENTO, 
  FL_SEXO_BIOLOGICO, 
  DS_GENERO, 
  DS_CARGO, 
  VL_SALARIO, 
  DS_EMAIL, 
  ST_FUNC, 
  DT_CADASTRAMENTO
) VALUES (
  2, 
  'CLARA', 
  TO_DATE('01/01/2000', 'DD/MM/YYYY'), 
  'F', 
  'FEMININO', 
  'GERENTE', 
  3000, 
  'clara@email.com', 
  'A', 
  TO_DATE('01/01/2020', 'DD/MM/YYYY') 
);
-- 1 row(s) inserted.

-- c) Popular todos os ESTADOS do Brasil. Selecione 5 Estados a seu critério e associe no mínimo 2 cidades para cada Estado. 
--    Para cada cidade, associe no mínimo 1 bairro e para cada bairro, associe 2 endereços. 
--    Utilize nomes significativos e coerentes, de acordo com a base do Correio. 

-- Acre (AC)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('ACRE', 'AC');
-- 1 row(s) inserted.

-- Alagoas (AL)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('ALAGOAS', 'AL');
-- 1 row(s) inserted.

-- Amapá (AP)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('AMAPÁ', 'AP');
-- 1 row(s) inserted.

-- Amazonas (AM)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('AMAZONAS', 'AM');
-- 1 row(s) inserted.

-- Bahia (BA)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('BAHIA', 'BA');
-- 1 row(s) inserted.

-- Ceará (CE)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('CEARÁ', 'CE');
-- 1 row(s) inserted.

-- Distrito Federal (DF)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('DISTRITO FEDERAL', 'DF');
-- 1 row(s) inserted.

-- Espírito Santo (ES)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('ESPÍRITO SANTO', 'ES');
-- 1 row(s) inserted.

-- Goiás (GO)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('GOIÁS', 'GO');
-- 1 row(s) inserted.

-- Maranhão (MA)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('MARANHÃO', 'MA');
-- 1 row(s) inserted.

-- Mato Grosso (MT)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('MATO GROSSO', 'MT');
-- 1 row(s) inserted.

-- Mato Grosso do Sul (MS)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('MATO GROSSO DO SUL', 'MS');
-- 1 row(s) inserted.

-- Minas Gerais (MG)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('MINAS GERAIS', 'MG');
-- 1 row(s) inserted.

-- Pará (PA)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('PARÁ', 'PA');
-- 1 row(s) inserted.

-- Paraíba (PB)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('PARAÍBA', 'PB');
-- 1 row(s) inserted.

-- Paraná (PR)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('PARANÁ', 'PR');
-- 1 row(s) inserted.

-- Pernambuco (PE)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('PERNAMBUCO', 'PE');
-- 1 row(s) inserted.

-- Piauí (PI)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('PIAUÍ', 'PI');
-- 1 row(s) inserted.

-- Rio de Janeiro (RJ)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('RIO DE JANEIRO', 'RJ');
-- 1 row(s) inserted.

-- Rio Grande do Norte (RN)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('RIO GRANDE DO NORTE', 'RN');
-- 1 row(s) inserted.

-- Rio Grande do Sul (RS)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('RIO GRANDE DO SUL', 'RS');
-- 1 row(s) inserted.

-- Rondônia (RO)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('RONDÔNIA', 'RO');
-- 1 row(s) inserted.

-- Roraima (RR)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('RORAIMA', 'RR');
-- 1 row(s) inserted.

-- Santa Catarina (SC)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('SANTA CATARINA', 'SC');
-- 1 row(s) inserted.

-- São Paulo (SP)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('SÃO PAULO', 'SP');
-- 1 row(s) inserted.

-- Sergipe (SE)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('SERGIPE', 'SE');
-- 1 row(s) inserted.

-- Tocantins (TO)
INSERT INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('TOCANTINS', 'TO');
-- 1 row(s) inserted.


INSERT INTO MC_CIDADE (NM_CIDADE, SG_ESTADO) VALUES ('CUIABÁ', 'MT');
-- 1 row(s) inserted.

INSERT INTO MC_CIDADE (NM_CIDADE, SG_ESTADO) VALUES ('VÁRZEA GRANDE', 'MT');
-- 1 row(s) inserted.

INSERT INTO MC_CIDADE (NM_CIDADE, SG_ESTADO) VALUES ('NATAL', 'RN');
-- 1 row(s) inserted.

INSERT INTO MC_CIDADE (NM_CIDADE, SG_ESTADO) VALUES ('MOSSORÓ', 'RN');
-- 1 row(s) inserted.

INSERT INTO MC_CIDADE (NM_CIDADE, SG_ESTADO) VALUES ('SALVADOR', 'BA');
-- 1 row(s) inserted.

INSERT INTO MC_CIDADE (NM_CIDADE, SG_ESTADO) VALUES ('FEIRA DE SANTANA', 'BA');
-- 1 row(s) inserted.

INSERT INTO MC_CIDADE (NM_CIDADE, SG_ESTADO) VALUES ('BELO HORIZONTE', 'MG');
-- 1 row(s) inserted.

INSERT INTO MC_CIDADE (NM_CIDADE, SG_ESTADO) VALUES ('UBERLÂNDIA', 'MG');
-- 1 row(s) inserted.

INSERT INTO MC_CIDADE (NM_CIDADE, SG_ESTADO) VALUES ('RECIFE', 'PE');
-- 1 row(s) inserted.

INSERT INTO MC_CIDADE (NM_CIDADE, SG_ESTADO) VALUES ('OLINDA', 'PE');
-- 1 row(s) inserted.


INSERT INTO MC_BAIRRO (NM_BAIRRO, CD_CIDADE) VALUES ('CENTRO POLÍTICO ADMINISTRATIVO (CPA)', 1);
-- 1 row(s) inserted.

INSERT INTO MC_BAIRRO (NM_BAIRRO, CD_CIDADE) VALUES ('CRISTO REI', 2);
-- 1 row(s) inserted.

INSERT INTO MC_BAIRRO (NM_BAIRRO, CD_CIDADE) VALUES ('PONTA NEGRA', 3);
-- 1 row(s) inserted.

INSERT INTO MC_BAIRRO (NM_BAIRRO, CD_CIDADE) VALUES ('CENTRO', 4);
-- 1 row(s) inserted.

INSERT INTO MC_BAIRRO (NM_BAIRRO, CD_CIDADE) VALUES ('PELOURINHO', 5);
-- 1 row(s) inserted.

INSERT INTO MC_BAIRRO (NM_BAIRRO, CD_CIDADE) VALUES ('TOMBA', 6);
-- 1 row(s) inserted.

INSERT INTO MC_BAIRRO (NM_BAIRRO, CD_CIDADE) VALUES ('SAVASSI', 7);
-- 1 row(s) inserted.

INSERT INTO MC_BAIRRO (NM_BAIRRO, CD_CIDADE) VALUES ('TIBERY', 8);
-- 1 row(s) inserted.

INSERT INTO MC_BAIRRO (NM_BAIRRO, CD_CIDADE) VALUES ('BOA VIAGEM', 9);
-- 1 row(s) inserted.

INSERT INTO MC_BAIRRO (NM_BAIRRO, CD_CIDADE) VALUES ('SÍTIO HISTÓRICO', 10);
-- 1 row(s) inserted.


INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (1, 'Rua 2', 78053775);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (1, 'Rua 2', 78050970);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (2, 'R. F-1', 78118570);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (2, 'Av. Brasil', 78117030);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (3, 'Av. Engenheiro Roberto Freire', 59090425);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (3, 'R. Dr. Manoel Augusto Bezerra de Araújo', 59090430);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (4, 'R. Alfredo Fernandes', 59600135);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (4, 'Av. Augusto Severo', 59600150);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (5, 'R. de São Francisco', 40020310);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (5, 'R. Maciel de Baixo', 40026240);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (6, 'R. M Ltm Parque Diplomata', 44096614);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (6, 'Rua Vespaziano', 44091166);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (7, 'R. Sergipe', 30130171);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (7, 'Rua Professor Moraes', 30150370);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (8, 'R. Nicarágua', 38405100);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (8, 'Praça Sen. Camilo Chaves', 38405038);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (9, 'R. Alm. Tamandaré', 51030090);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (9, 'Av. Boa Viagem', 51021100);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (10, 'R. do Amparo', 53070410);
-- 1 row(s) inserted.

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (10, 'R. do Sol', 53120000);
-- 1 row(s) inserted.
