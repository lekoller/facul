-- Resposta do Comando SQL item a)

INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) 
VALUES ('COMERCIAL', 'A');
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


-- Resposta do Comando SQL item b)

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
  1, 
  'JOAO', 
  TO_DATE('01/01/2000', 'DD/MM/YYYY'), 
  'M', 
  'MASCULINO', 
  'GERENTE', 
  2000, 
  'joao@email.com', 
  'A', 
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
  DT_CADASTRAMENTO 
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
  TO_DATE('01/01/2020', 'DD/MM/YYYY') 
);
-- 1 row(s) inserted.

INSERT INTO MC_FUNCIONARIO(
  CD_DEPTO, 
  CD_GERENTE, 
  NM_FUNCIONARIO, 
  DS_CARGO, 
  VL_SALARIO, 
  DT_CADASTRAMENTO, 
  DT_NASCIMENTO
) VALUES (
  1, 
  1, 
  'VALERIA MESSA', 
  'ATENDENTE', 
  8750, 
  TO_DATE('15072021', 'DDMMYYYY'), 
  TO_DATE('11061990','DDMMYYYY')
);
-- inserted 1 row(s).

---------------------------------------------

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

INSERT INTO MC_FUNCIONARIO (
  CD_DEPTO, 
  CD_GERENTE, 
  NM_FUNCIONARIO, 
  DS_CARGO, 
  VL_SALARIO, 
  DT_CADASTRAMENTO, 
  DT_NASCIMENTO
) VALUES (
  2, 
  SEQ_CD_FUNCIONARIO.CURRVAL-1, 
  'Antonio Paredes', 
  'Analista Contábil senior', 
  6500, 
  TO_DATE('01012000','DDMMYYYY'), 
  TO_DATE('04051985','DDMMYYYY')
);
-- 1 row(s) inserted.

INSERT INTO MC_FUNCIONARIO (
  CD_DEPTO, 
  CD_GERENTE, 
  NM_FUNCIONARIO, 
  DS_CARGO, 
  VL_SALARIO, 
  DT_CADASTRAMENTO, 
  DT_NASCIMENTO
) VALUES (
  2, 
  SEQ_CD_FUNCIONARIO.CURRVAL-2, 
  'Carla Penha', 
  'Analista Contábil Jr.', 
  4500, 
  TO_DATE('01012000','DDMMYYYY'), 
  TO_DATE('24061991','DDMMYYYY')
);
-- 1 row(s) inserted.

---------------------------------------------

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, CD_GERENTE, NM_FUNCIONARIO, DS_CARGO, VL_SALARIO, DT_CADASTRAMENTO, DT_NASCIMENTO)
VALUES (3, 1, 'Bruno Santos', 'Gerente de Estoque', 8500, TO_DATE('01011990','DDMMYYYY'), TO_DATE('01011970','DDMMYYYY'));
-- 1 row(s) inserted.

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, CD_GERENTE, NM_FUNCIONARIO, DS_CARGO, VL_SALARIO, DT_CADASTRAMENTO, DT_NASCIMENTO)
VALUES (3, SEQ_CD_FUNCIONARIO.CURRVAL-1, 'Ana Paula Oliveira', 'Analista de Estoque', 3000, TO_DATE('14022020','DDMMYYYY'), TO_DATE('10022001','DDMMYYYY'));
-- 1 row(s) inserted.

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, CD_GERENTE, NM_FUNCIONARIO, DS_CARGO, VL_SALARIO, DT_CADASTRAMENTO, DT_NASCIMENTO)
VALUES (3, SEQ_CD_FUNCIONARIO.CURRVAL-2, 'Carla Silva', 'Assistente de Estoque', 2000, TO_DATE('0302198','DDMMYYYY'), TO_DATE('19011985','DDMMYYYY'));
-- 1 row(s) inserted.

---------------------------------------------

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, CD_GERENTE, NM_FUNCIONARIO, DS_CARGO, VL_SALARIO, DT_CADASTRAMENTO, DT_NASCIMENTO)
VALUES (4, 1, 'Fernanda Oliveira', 'Gerente Financeiro', 7850, TO_DATE('23052006','DDMMYYYY'), TO_DATE('12031989','DDMMYYYY'));
-- 1 row(s) inserted.

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, CD_GERENTE, NM_FUNCIONARIO, DS_CARGO, VL_SALARIO, DT_CADASTRAMENTO, DT_NASCIMENTO)
VALUES (4, SEQ_CD_FUNCIONARIO.CURRVAL-1, 'Diego Alves', 'Analista Financeiro', 4500, TO_DATE('13072007','DDMMYYYY'), TO_DATE('24061988','DDMMYYYY'));
-- 1 row(s) inserted.

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, CD_GERENTE, NM_FUNCIONARIO, DS_CARGO, VL_SALARIO, DT_CADASTRAMENTO, DT_NASCIMENTO)
VALUES (4, SEQ_CD_FUNCIONARIO.CURRVAL-2, 'Guilherme Santos', 'Assistente Financeiro', 2800, TO_DATE('01012000','DDMMYYYY'), TO_DATE('18042001','DDMMYYYY'));
-- 1 row(s) inserted.

---------------------------------------------

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, CD_GERENTE, NM_FUNCIONARIO, DS_CARGO, VL_SALARIO, DT_CADASTRAMENTO, DT_NASCIMENTO)
VALUES (5, 1, 'Luana Souza', 'Gerente de SAC', 7500, TO_DATE('11022023','DDMMYYYY'), TO_DATE('31031998','DDMMYYYY'));
-- 1 row(s) inserted.

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, CD_GERENTE, NM_FUNCIONARIO, DS_CARGO, VL_SALARIO, DT_CADASTRAMENTO, DT_NASCIMENTO)
VALUES (5, SEQ_CD_FUNCIONARIO.CURRVAL-1, 'João Silva', ' Analista de SAC', 4800, TO_DATE('13122017','DDMMYYYY'), TO_DATE('01011992','DDMMYYYY'));
-- 1 row(s) inserted.

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, CD_GERENTE, NM_FUNCIONARIO, DS_CARGO, VL_SALARIO, DT_CADASTRAMENTO, DT_NASCIMENTO)
VALUES (5, SEQ_CD_FUNCIONARIO.CURRVAL-2, 'Marcelo Almeida', 'Assistente de SAC', 5500, TO_DATE('25061999','DDMMYYYY'), TO_DATE('12121987','DDMMYYYY'));
-- 1 row(s) inserted.

---------------------------------------------

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, CD_GERENTE, NM_FUNCIONARIO, DS_CARGO, VL_SALARIO, DT_CADASTRAMENTO, DT_NASCIMENTO)
VALUES (6, 1, 'Pedro Rocha', 'Gerente de RH', 7500, TO_DATE('01012000','DDMMYYYY'), TO_DATE('04051985','DDMMYYYY'));
-- 1 row(s) inserted.

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, CD_GERENTE, NM_FUNCIONARIO, DS_CARGO, VL_SALARIO, DT_CADASTRAMENTO, DT_NASCIMENTO)
VALUES (6, SEQ_CD_FUNCIONARIO.CURRVAL-1, 'Nathalia Costa', 'Analista de RH', 5500, TO_DATE('14022020','DDMMYYYY'), TO_DATE('19081998','DDMMYYYY'));
-- 1 row(s) inserted.

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, CD_GERENTE, NM_FUNCIONARIO, DS_CARGO, VL_SALARIO, DT_CADASTRAMENTO, DT_NASCIMENTO)
VALUES (6, SEQ_CD_FUNCIONARIO.CURRVAL-2, 'Raquel Santos', 'Assistente de RH', 4500, TO_DATE('06062016','DDMMYYYY'), TO_DATE('05051985','DDMMYYYY'));
-- 1 row(s) inserted.

---------------------------------------------

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, CD_GERENTE, NM_FUNCIONARIO, DS_CARGO, VL_SALARIO, DT_CADASTRAMENTO, DT_NASCIMENTO)
VALUES (7, 1, 'Vanessa Rodrigues', 'Gerente de Logística', 7500, TO_DATE('01012021','DDMMYYYY'), TO_DATE('04081998','DDMMYYYY'));
-- 1 row(s) inserted.

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, CD_GERENTE, NM_FUNCIONARIO, DS_CARGO, VL_SALARIO, DT_CADASTRAMENTO, DT_NASCIMENTO)
VALUES (7, SEQ_CD_FUNCIONARIO.CURRVAL-1, 'Thiago Martins', 'Analista de Logística', 4500, TO_DATE('13051993','DDMMYYYY'), TO_DATE('10022001','DDMMYYYY'));
-- 1 row(s) inserted.

INSERT INTO MC_FUNCIONARIO (CD_DEPTO, CD_GERENTE, NM_FUNCIONARIO, DS_CARGO, VL_SALARIO, DT_CADASTRAMENTO, DT_NASCIMENTO)
VALUES (7, SEQ_CD_FUNCIONARIO.CURRVAL-2, 'Wagner Almeida', 'Assistente de Logística', 5500, TO_DATE('01012022','DDMMYYYY'), TO_DATE('13051999','DDMMYYYY'));
-- 1 row(s) inserted.



-- Resposta do Comando SQL item c)

INSERT ALL
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('ACRE', 'AC')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('ALAGOAS', 'AL')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('AMAPÁ', 'AP')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('AMAZONAS', 'AM')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('BAHIA', 'BA')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('CEARÁ', 'CE')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('DISTRITO FEDERAL', 'DF')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('ESPÍRITO SANTO', 'ES')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('GOIÁS', 'GO')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('MARANHÃO', 'MA')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('MATO GROSSO', 'MT')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('MATO GROSSO DO SUL', 'MS')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('MINAS GERAIS', 'MG')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('PARÁ', 'PA')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('PARAÍBA', 'PB')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('PARANÁ', 'PR')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('PERNAMBUCO', 'PE')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('PIAUÍ', 'PI')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('RIO DE JANEIRO', 'RJ')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('RIO GRANDE DO NORTE', 'RN')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('RIO GRANDE DO SUL', 'RS')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('RONDÔNIA', 'RO')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('RORAIMA', 'RR')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('SANTA CATARINA', 'SC')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('SÃO PAULO', 'SP')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('SERGIPE', 'SE')
  INTO MC_ESTADO (NM_ESTADO, SG_ESTADO) VALUES ('TOCANTINS', 'TO')
SELECT * FROM DUAL;
-- 27 row(s) inserted.

---------------------------------------------

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

INSERT INTO MC_CIDADE (NM_CIDADE, SG_ESTADO) VALUES ('SÃO PAULO', 'SP');
-- 1 row(s) inserted.

--------------------------------------------------------------

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

INSERT INTO MC_BAIRRO (NM_BAIRRO, CD_CIDADE) VALUES ('AMPARO', 10);
-- 1 row(s) inserted.

INSERT INTO MC_BAIRRO (NM_BAIRRO, CD_CIDADE) VALUES ('VILA PRUDENTE', 11);
-- 1 row(s) inserted.

--------------------------------------------------------------

-- Rua 2, 50 - Centro Político Administrativo, Cuiabá - MT, 78050970 1
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (1, 'Rua 2', 78050970);
-- 1 row(s) inserted.

-- R. R, 389 - Centro América, Cuiabá - MT, 78050-970 2
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (1, 'Rua R', 78050970);
-- 1 row(s) inserted.

-- Av. Gonçalo Botelho de Campos, 3035 - Cristo Rei, Várzea Grande - MT, 78118-568 3
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (2, 'Av. Gonçalo Botelho de Campos', 78118568);
-- 1 row(s) inserted.

-- Rua Peru, 11 - Cristo Rei, Várzea Grande - MT, 78118-550 4
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (2, 'Rua Peru', 78118550);
-- 1 row(s) inserted.

-- Av. Engenheiro Roberto Freire, 4330 - Ponta Negra, Natal - RN, 59092-000 5
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (3, 'Av. Engenheiro Roberto Freire', 59092000);
-- 1 row(s) inserted.

-- R. Dr. Manoel Augusto Bezerra de Araújo, 500 - Ponta Negra, Natal - RN, 59090-430 6
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (3, 'R. Dr. Manoel Augusto Bezerra de Araújo', 59090430);
-- 1 row(s) inserted.

-- Av. Alberto Maranhão, 1326 - Centro, Mossoró - RN, 59600-195 7
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (4, 'Av. Alberto Maranhão', 59600195);
-- 1 row(s) inserted.

-- Av. Augusto Severo, 86 - Centro, Mossoró - RN, 59600-150 8
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (4, 'Av. Augusto Severo', 59600150);
-- 1 row(s) inserted.

-- R. de São Francisco, 5 - Pelourinho, Salvador - BA, 40020-310 9
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (5, 'R. de São Francisco', 40020310);
-- 1 row(s) inserted.

-- R. Maciel de Baixo, 22 - Pelourinho, Salvador - BA, 40026-240 10
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (5, 'R. Maciel de Baixo', 40026240);
-- 1 row(s) inserted.

-- R. Comendador Gomes, 1559 - Tomba, Feira de Santana - BA, 44091-588 11
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (6, 'R. Comendador Gomes', 44091588);
-- 1 row(s) inserted.

-- Rua Vespaziano, 644 - Tomba, Feira de Santana - BA, 44091-166 12
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (6, 'Rua Vespaziano', 44091166);
-- 1 row(s) inserted.

-- R. Rio Grande do Norte, 1204 - Savassi, Belo Horizonte - MG, 30130-131 13
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (7, 'R. Rio Grande do Norte', 30130131);
-- 1 row(s) inserted.

-- Rua Professor Moraes, 306 - Savassi, Belo Horizonte - MG, 30150-370 14
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (7, 'Rua Professor Moraes', 30150370);
-- 1 row(s) inserted.

-- R. Nicarágua, 874 - Tibery, Uberlândia - MG, 38405-100 15
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (8, 'R. Nicarágua', 38405100);
-- 1 row(s) inserted.

-- Praça Sen. Camilo Chaves, 20 - Tibery, Uberlândia - MG, 38405-034 16
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (8, 'Praça Sen. Camilo Chaves', 38405034);
-- 1 row(s) inserted.

-- R. Alm. Tamandaré, 170 - Boa Viagem, Recife - PE, 51030-090 17
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (9, 'R. Alm. Tamandaré', 51030090);
-- 1 row(s) inserted.

-- Av. Boa Viagem, 3984 - Boa Viagem, Recife - PE, 51020-000 18
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (9, 'Av. Boa Viagem', 51020000);
-- 1 row(s) inserted.

-- R. do Amparo, 212 - Amparo, Olinda - PE, 53025-080 19
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (10, 'R. do Amparo', 53025080);
-- 1 row(s) inserted.

-- R. Cel. Joaquim Cavalcante, 530 - Amparo, Olinda - PE, 53025-010 20
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (10, 'R. Cel. Joaquim Cavalcante', 53025010);
-- 1 row(s) inserted.

-- R. Dr. Sanareli, 310 - Vila Prudente, São Paulo - SP, 03137-100 21
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES (11, 'R. Dr. Sanareli', 03137100);

-- Resposta do Comando SQL item d)

INSERT INTO MC_END_FUNC (
  CD_FUNCIONARIO, CD_LOGRADOURO, NR_END, DT_INICIO, ST_END
) VALUES (1, 1, 50, TO_DATE('01/01/2019', 'DD/MM/YYYY'), 'A');
-- 1 row(s) inserted.

INSERT INTO MC_END_FUNC (
  CD_FUNCIONARIO, CD_LOGRADOURO, NR_END, DT_INICIO, ST_END
) VALUES (2, 3, 3035, TO_DATE('01/01/2019', 'DD/MM/YYYY'), 'A');
-- 1 row(s) inserted.

INSERT INTO MC_END_FUNC (
  CD_FUNCIONARIO, CD_LOGRADOURO, NR_END, DT_INICIO, ST_END
) VALUES (3, 5, 4330, TO_DATE('01/01/2019', 'DD/MM/YYYY'), 'A');
-- 1 row(s) inserted.

-- e) Cadastre no mínimo 10 CLIENTES PESSOAS FÍSICAS e 5 CLIENTES PESSOA JÚRIDICA e associe no mínimo 1 endereço 
--    para cada cliente. Utilize nomes significativos e relevantes.

-- insert into MC_CLIENTE 10 persons

INSERT INTO MC_CLIENTE (
  NM_CLIENTE, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA
) VALUES ('João Figueira da Silva', 'A', 'jfs@email.com', '999399499', 'joaofs', '12qhasc');
-- 1 row(s) inserted.

INSERT INTO MC_CLI_FISICA (
  NR_CLIENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, NR_CPF
) 
SELECT NR_CLIENTE, TO_DATE('01/01/1990', 'DD/MM/YYYY'), 'M', 'Masculino', '12345678900'
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'João Figueira da Silva'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_END_CLI (
  NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END
)
SELECT NR_CLIENTE, 2, 389
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'João Figueira da Silva'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_CLIENTE (
  NM_CLIENTE, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA
) VALUES ('Maria Clementina da Silva', 'A', 'mcs@email.com', '929996999', 'mariacs', '244466666');
-- 1 row(s) inserted.

INSERT INTO MC_CLI_FISICA (
  NR_CLIENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, NR_CPF
) 
SELECT NR_CLIENTE, TO_DATE('01/01/1990', 'DD/MM/YYYY'), 'M', 'Masculino', '12345678900'
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Maria Clementina da Silva'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_END_CLI (
  NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END
)
SELECT NR_CLIENTE, 4, 11
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Maria Clementina da Silva'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_CLIENTE (
  NM_CLIENTE, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA
) VALUES ('José Alberto Gonçalves', 'A', 'jag@email.com', '999949979', 'joseag', 'inwenifwie');
-- 1 row(s) inserted.

INSERT INTO MC_CLI_FISICA (
  NR_CLIENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, NR_CPF
)
SELECT NR_CLIENTE, TO_DATE('01/01/1990', 'DD/MM/YYYY'), 'M', 'Masculino', '12345678900'
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'José Alberto Gonçalves'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_END_CLI (
  NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END
)
SELECT NR_CLIENTE, 6, 500
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'José Alberto Gonçalves'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_CLIENTE (
  NM_CLIENTE, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA
) VALUES ('Joana di Paola', 'A', 'jdp@email.com', '999199909', 'joanadipaola', 'huwgeuw');
-- 1 row(s) inserted.

INSERT INTO MC_CLI_FISICA (
  NR_CLIENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, NR_CPF
)
SELECT NR_CLIENTE, TO_DATE('01/01/1990', 'DD/MM/YYYY'), 'F', 'Feminino', '12345678900'
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Joana di Paola'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_END_CLI (
  NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END
)
SELECT NR_CLIENTE, 7, 1326
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Joana di Paola'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_CLIENTE (
  NM_CLIENTE, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA
) VALUES ('Marcos Guimarães', 'A', 'mg@email.com', '939999799', 'marcosg', 'u9ihwe');
-- 1 row(s) inserted.

INSERT INTO MC_CLI_FISICA (
  NR_CLIENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, NR_CPF
)
SELECT NR_CLIENTE, TO_DATE('01/01/1990', 'DD/MM/YYYY'), 'M', 'Masculino', '12345678900'
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Marcos Guimarães'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_END_CLI (
  NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END
)
SELECT NR_CLIENTE, 8, 86
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Marcos Guimarães'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_CLIENTE (
  NM_CLIENTE, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA
) VALUES ('Marcia da Silva', 'A', 'mds@email.com', '999994969', 'marciadS', 'ubwf8wie');
-- 1 row(s) inserted.

INSERT INTO MC_CLI_FISICA (
  NR_CLIENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, NR_CPF
)
SELECT NR_CLIENTE, TO_DATE('01/01/1990', 'DD/MM/YYYY'), 'F', 'Feminino', '12345678900'
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Marcia da Silva'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_END_CLI (
  NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END
)
SELECT NR_CLIENTE, 9, 5 
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Marcia da Silva'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_CLIENTE (
  NM_CLIENTE, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA
) VALUES ('João Manolo Oliveira', 'A', 'jmo@email.com', '959997999', 'joaoMO', 'bu8wuwb');
-- 1 row(s) inserted.

INSERT INTO MC_CLI_FISICA (
  NR_CLIENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, NR_CPF
)
SELECT NR_CLIENTE, TO_DATE('01/01/1990', 'DD/MM/YYYY'), 'M', 'Masculino', '12345678900'
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'João Manolo Oliveira'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_END_CLI (
  NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END
)
SELECT NR_CLIENTE, 10, 22
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'João Manolo Oliveira'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_CLIENTE (
  NM_CLIENTE, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA
) VALUES ('Jessica Camargo', 'A', 'jc@email.com', '992992999', 'maria_camargo', 'uh9nd');
-- 1 row(s) inserted.

INSERT INTO MC_CLI_FISICA (
  NR_CLIENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, NR_CPF
)
SELECT NR_CLIENTE, TO_DATE('01/01/1990', 'DD/MM/YYYY'), 'F', 'Feminino', '12345678900'
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Jessica Camargo'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_END_CLI (
  NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END
)
SELECT NR_CLIENTE, 11, 1559
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Jessica Camargo'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_CLIENTE (
  NM_CLIENTE, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA
) VALUES ('José Pedro de Camargo', 'A', 'jpc@email.com', '999979499', 'josepc', 'ihodns9');
-- 1 row(s) inserted.

INSERT INTO MC_CLI_FISICA (
  NR_CLIENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, NR_CPF
)
SELECT NR_CLIENTE, TO_DATE('01/01/1990', 'DD/MM/YYYY'), 'M', 'Masculino', '12345678900'
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'José Pedro de Camargo'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_END_CLI (
  NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END
)
SELECT NR_CLIENTE, 12, 644
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'José Pedro de Camargo'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_CLIENTE (
  NM_CLIENTE, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA
) VALUES ('Joana Figueira', 'A', 'jf@email.com', '999099989', 'joana', 'niaba98');
-- 1 row(s) inserted.

INSERT INTO MC_CLI_FISICA (
  NR_CLIENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, NR_CPF
)
SELECT NR_CLIENTE, TO_DATE('01/01/1990', 'DD/MM/YYYY'), 'F', 'Feminino', '12345678900'
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Joana Figueira'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_END_CLI (
  NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END
)
SELECT NR_CLIENTE, 13, 1204
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Joana Figueira'
FETCH FIRST 1 ROWS ONLY;

-- now, insert 5 companies

INSERT INTO MC_CLIENTE (
  NM_CLIENTE, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA
) VALUES ('Boring Company', 'A', 'bc@email.com', '999999999', 'bcompany', 'uabsb9a');
-- 1 row(s) inserted.

INSERT INTO MC_CLI_JURIDICA (
  NR_CLIENTE, NR_CNPJ
)
SELECT NR_CLIENTE, '12945678900000'
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Boring Company'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_END_CLI (
  NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END
)
SELECT NR_CLIENTE, 14, 306
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Boring Company'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_CLIENTE (
  NM_CLIENTE, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA
) VALUES ('Delirium Bar', 'A', 'delirium@bar.com', '999999999', 'delirium', 'jubeuq8');
-- 1 row(s) inserted.

INSERT INTO MC_CLI_JURIDICA (
  NR_CLIENTE, NR_CNPJ
)
SELECT NR_CLIENTE, '12345678900500'
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Delirium Bar'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_END_CLI (
  NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END
)
SELECT NR_CLIENTE, 15, 874
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Delirium Bar'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_CLIENTE (
  NM_CLIENTE, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA
) VALUES ('Hot Wheels', 'A', 'comercial@hotwheels.com', '999999999', 'hot_wheels', 'uq387gd');
-- 1 row(s) inserted.

INSERT INTO MC_CLI_JURIDICA (
  NR_CLIENTE, NR_CNPJ
)
SELECT NR_CLIENTE, '12345438900000'
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Hot Wheels'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_END_CLI (
  NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END
)
SELECT NR_CLIENTE, 16, 20
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Hot Wheels'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_CLIENTE (
  NM_CLIENTE, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA
) VALUES ('Jequiti', 'A', 'atendimento@jequiti.com', '999999999', 'jequiti', '9u92g83bu');
-- 1 row(s) inserted.

INSERT INTO MC_CLI_JURIDICA (
  NR_CLIENTE, NR_CNPJ
)
SELECT NR_CLIENTE, '12345678200000'
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Jequiti'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_END_CLI (
  NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END
)
SELECT NR_CLIENTE, 17, 170
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Jequiti'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_CLIENTE (
  NM_CLIENTE, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA
) VALUES ('Nasa', 'A', 'laboratorios@nasa.com', '999999999', 'nasa', 'ajbqibs');
-- 1 row(s) inserted.

INSERT INTO MC_CLI_JURIDICA (
  NR_CLIENTE, NR_CNPJ
)
SELECT NR_CLIENTE, '12345478900000'
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Nasa'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

INSERT INTO MC_END_CLI (
  NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END
)
SELECT NR_CLIENTE, 18, 3984
FROM MC_CLIENTE 
WHERE NM_CLIENTE = 'Nasa'
FETCH FIRST 1 ROWS ONLY;
-- 1 row(s) inserted.

-- f) Cadastre um novo cliente que já tenha um mesmo login já criado. (*Exiba a instrução SQL executada para realizar a tarefa e apresente o 
--    resultado dessa execução). Foi possível incluir esse novo cliente? Explique?

INSERT INTO MC_CLIENTE (
  NM_CLIENTE, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA
) VALUES ('Bitcoin Company', 'A', 'btcc@email.com', '999798929', 'bcompany', 'u3459a');
-- 1 row(s) inserted.

-- Resposta: Sim, foi possível incluir o novo cliente, pois a coluna NM_CLIENTE é única, ou seja, não pode haver dois clientes com o mesmo nome, porém, 
--           para a coluna NM_LOGIN não foi específicado, pelo modelo físico apresentado no enunciado, como portadora de constraint do tipo UNIQUE, 
--           deixando assim esta falha no sistema.

-- g) Cadastre as seguintes categorias para os produtos: 
--    Artesanato
--    Áudio
--    Brinquedos
--    Celular e Smartphone
--    Colchões
--    Esporte e Lazer
--    Ferramentas
--    Games
--    Informática
--    Livros
--    Pet Shop
--    TV
--    Utilidades Domésticas.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('P', 'Artesanato', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('P', 'Áudio', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('P', 'Brinquedos', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('P', 'Celular e Smartphone', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('P', 'Colchões', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('P', 'Esporte e Lazer', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('P', 'Ferramentas', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('P', 'Games', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('P', 'Informática', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('P', 'Livros', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('P', 'Pet Shop', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('P', 'TV', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('P', 'Utilidades Domésticas', 'A');
-- 1 row(s) inserted.

-- h) Cadastre as seguintes categorias para os vídeos: 
--    Instalação do produto
--    Uso no cotidiano
--    Comercial com personalidade
--    entre outros.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('V', 'Instalação do produto', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('V', 'Uso no cotidiano', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('V', 'Comercial com personalidade', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('V', 'Comercial simples', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('V', 'Review - Análise comparativa', 'A');
-- 1 row(s) inserted.

-- i) Cadastre 20 produtos e associe as categorias adequadas ao produto.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (1, '7891234567890', 'Caixa decorada com decoupage', 100, 'UN', 'A', 50, 'Caixa decorada com decoupage');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (2, '7891234567891', 'Fone de ouvido sem fio', 299.99, 'UN', 'A', 50, 'Fone de ouvido sem fio');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (3, '7891234567892', 'Quebra-cabeça de 500 peças', 39.90, 'UN', 'A', 50, 'Quebra-cabeça de 500 peças');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (4, '7891234567893', 'Smartphone Samsung Galaxy S21', 4299.00, 'UN', 'A', 50, 'Smartphone Samsung Galaxy S21');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (5, '7891234567894', 'Colchão de espuma de alta densidade', 899.90, 'UN', 'A', 50, 'Colchão de espuma de alta densidade');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (6, '7891234567895', 'Bicicleta de montanha aro 29', 2999.99, 'UN', 'A', 50, 'Bicicleta de montanha aro 29');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (7, '7891234567896', 'Kit de ferramentas com 100 peças', 250.99, 'UN', 'A', 50, 'Kit de ferramentas com 100 peças');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (8, '7891234567897', 'Jogo de videogame FIFA 23', 349.90, 'UN', 'A', 50, 'Jogo de videogame FIFA 23');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (9, '7891234567898', 'Notebook Dell Inspiron 15', 3500, 'UN', 'A', 30, 'Notebook Dell Inspiron 15');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (10, '7891234567899', 'Livro de receitas de bolos', 35.99, 'UN', 'A', 50, 'Livro de receitas de bolos');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (11, '7891234567800', 'Coleira de couro para cachorro', 29.90, 'UN', 'A', 50, 'Coleira de couro para cachorro');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (12, '7891234567801', 'Smart TV LG de 55 polegadas', 3500, 'UN', 'A', 50, 'Smart TV LG de 55 polegadas');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (13, '7891234567802', 'Jogo de panelas Tramontina de 5 peças', 250, 'UN', 'A', 40, 'Jogo de panelas Tramontina de 5 peças');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (1, '7891234567803', 'Colar artesanal de pedras', 35.90, 'UN', 'A', 50, 'Colar artesanal de pedras');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (2, '7891234567804', 'Caixa de som Bluetooth portátil', 250, 'UN', 'A', 30, 'Caixa de som Bluetooth portátil');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (3, '7891234567805', 'Boneca Baby Alive', 100, 'UN', 'A', 50, 'Boneca Baby Alive');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (4, '7891234567806', 'iPhone 13', 7500, 'UN', 'A', 50, 'iPhone 13');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (5, '7891234567807', 'Colchão de molas ensacadas', 800, 'UN', 'A', 50, 'Colchão de molas ensacadas');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (6, '7891234567808', 'Raquete de tênis de mesa profissional', 400, 'UN', 'A', 50, 'Raquete de tênis de mesa profissional');
-- 1 row(s) inserted.

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (7, '7891234567809', 'Serra circular de bancada', 950, 'UN', 'A', 50, 'Serra circular de bancada');
-- 1 row(s) inserted.

-- j) Cadastre 2 vídeos de produtos na tabela MC_SGV_PRODUTO_VIDEO e associe esses 2 vídeos em um único produto já cadastrado. 
--    Associe também as categorias adequadas ao vídeo.

INSERT INTO MC_SGV_PRODUTO_VIDEO (
  CD_PRODUTO, CD_CATEGORIA, TP_VIDEO_PROD, DS_PATH_VIDEO_PROD, ST_VIDEO_PROD
) VALUES (2, 14, 'MP4', 'C:\videos\video1.mp4', 'A');
-- 1 row(s) inserted.

INSERT INTO MC_SGV_PRODUTO_VIDEO (
  CD_PRODUTO, CD_CATEGORIA, TP_VIDEO_PROD, DS_PATH_VIDEO_PROD, ST_VIDEO_PROD
) VALUES (2, 15, 'MP4', 'C:\videos\video2.mp4', 'A');
-- 1 row(s) inserted.

-- k) Por fim, cadastre 5 visualizações de vídeos de produtos na tabela MC_SGV_VISUALIZACAO_VIDEO e associe a um cliente a seu critério.

INSERT INTO MC_SGV_VISUALIZACAO_VIDEO (
  NR_CLIENTE, CD_PRODUTO, DT_VISUALZACAO, NR_HORA_VISULIZACAO, NR_MINUTO_VIDEO, NR_SEGUNDO_VIDEO
) VALUES (1, 2, TO_DATE('01/01/2020', 'DD/MM/YYYY'), 10, 10, 10);
-- 1 row(s) inserted.

INSERT INTO MC_SGV_VISUALIZACAO_VIDEO (
  NR_CLIENTE, CD_PRODUTO, DT_VISUALZACAO, NR_HORA_VISULIZACAO, NR_MINUTO_VIDEO, NR_SEGUNDO_VIDEO
) VALUES (2, 2, TO_DATE('01/01/2020', 'DD/MM/YYYY'), 10, 10, 10);
-- 1 row(s) inserted.

INSERT INTO MC_SGV_VISUALIZACAO_VIDEO (
  NR_CLIENTE, CD_PRODUTO, DT_VISUALZACAO, NR_HORA_VISULIZACAO, NR_MINUTO_VIDEO, NR_SEGUNDO_VIDEO
) VALUES (3, 2, TO_DATE('01/01/2020', 'DD/MM/YYYY'), 10, 10, 10);
-- 1 row(s) inserted.

INSERT INTO MC_SGV_VISUALIZACAO_VIDEO (
  NR_CLIENTE, CD_PRODUTO, DT_VISUALZACAO, NR_HORA_VISULIZACAO, NR_MINUTO_VIDEO, NR_SEGUNDO_VIDEO
) VALUES (4, 2, TO_DATE('01/01/2020', 'DD/MM/YYYY'), 10, 10, 10);
-- 1 row(s) inserted.

INSERT INTO MC_SGV_VISUALIZACAO_VIDEO (
  NR_CLIENTE, CD_PRODUTO, DT_VISUALZACAO, NR_HORA_VISULIZACAO, NR_MINUTO_VIDEO, NR_SEGUNDO_VIDEO
) VALUES (5, 2, TO_DATE('01/01/2020', 'DD/MM/YYYY'), 10, 10, 10);
-- 1 row(s) inserted.

-- l) Confirme todas as transações pendentes (muito importante).

COMMIT;
-- Statement processed.

-- m) Cadastre uma categoria de produto com status I(nativo).

INSERT INTO MC_CATEGORIA_PROD (
  TP_CATEGORIA, DS_CATEGORIA, ST_CATEGORIA
) VALUES ('P', 'Farmácia', 'I');
-- 1 row(s) inserted.

-- n) Cadastre um produto com status I(nativo).

INSERT INTO MC_PRODUTO (
  CD_CATEGORIA, NR_CD_BARRAS_PROD, DS_PRODUTO, VL_UNITARIO, TP_EMBALAGEM, ST_PRODUTO, VL_PERC_LUCRO, DS_COMPLETA_PROD
) VALUES (8, '7891234736802', 'Mario Kart', 340, 'UN', 'I', 40, 'Mario Kart de Nintendo DS');
-- 1 row(s) inserted.

-- o) Selecione um específico funcionário e atualize o Cargo e aplique 12% de aumento de salário.

UPDATE MC_FUNCIONARIO
SET 
  VL_SALARIO = VL_SALARIO * 1.12,
  DS_CARGO = 'DIRETORA'
WHERE CD_FUNCIONARIO = 3;
-- 1 row(s) updated.

-- p) Atualize a descrição de uma categoria de produto a seu critério.

UPDATE MC_CATEGORIA_PROD SET DS_CATEGORIA = 'Cama, Mesa e Banho' WHERE CD_CATEGORIA = 5;
-- 1 row(s) updated.

-- q) Atualize o nome de um departamento a sua escolha, utilizando como filtro o nome do departamento antes de ser atualizado.

UPDATE MC_DEPTO SET NM_DEPTO = 'RH (RECURSOS HUMANOS)' WHERE NM_DEPTO = 'RECURSOS HUMANOS (RH)';
-- 1 row(s) updated.

-- r) Atualize a data de nascimento de um cliente pessoa física. Defina a nova data como sendo 18/05/2002.
-- TO_DATE('18/05/2002', 'DD/MM/YYYY')

UPDATE MC_CLI_FISICA SET DT_NASCIMENTO = TO_DATE('18/05/2002', 'DD/MM/YYYY') WHERE NR_CLIENTE = 4;
-- 1 row(s) updated.

-- s) Atualize a descrição de uma categoria de vídeo a seu critério.

UPDATE MC_CATEGORIA_PROD SET DS_CATEGORIA = 'Análise comparativa' WHERE CD_CATEGORIA = 18;
-- 1 row(s) updated.

-- t) Desative um funcionário colocando o status como I(nativo) e também a data de desligamento como sendo a data de hoje (sysdate).

UPDATE MC_FUNCIONARIO SET ST_FUNC = 'I', DT_DESLIGAMENTO = SYSDATE WHERE CD_FUNCIONARIO = 1;
-- 1 row(s) updated.

-- u) Cadastre um atendimento SAC na tabela MC_SGV_SAC. Após isso, utilize outro comando DML para atualizar a descrição detalhada de retorno do 
--    SAC feito pelo funcionário. Insira um conteúdo significativo. Não se esqueça de atualizar também a data e hora de atendimento e também  
--    acrescendo o número total de horas do atendimento SAC.

INSERT INTO MC_SGV_SAC (
  NR_CLIENTE, CD_PRODUTO, TP_SAC, DS_DETALHADA_SAC, DT_ABERTURA_SAC, HR_ABERTURA_SAC, ST_SAC
) VALUES (2, 2, 'R', 'O produto não está funcionando corretamente.', SYSDATE, 0, 'A');
-- 1 row(s) inserted.

UPDATE MC_SGV_SAC 
SET DS_DETALHADA_RETORNO_SAC = 
  'O produto foi enviado para a assistência técnica e o cliente será informado sobre o andamento do processo.',
  DT_ATENDIMENTO = SYSDATE,
  HR_ATENDIMENTO_SAC = 10,
  NR_TEMPO_TOTAL_SAC = 10
WHERE NR_SAC = 1;
-- 1 row(s) updated.

-- v) Selecione um endereço de cliente e coloque o status como I(nativo) e preencha a data de término como sendo a data de ontem. 
--    Utilize a função to_date para registrar esse novo valor da data.

UPDATE MC_END_CLI SET ST_END = 'I', DT_TERMINO = TO_DATE(SYSDATE - 1, 'DD/MM/YYYY') WHERE NR_CLIENTE = 1;
-- 1 row(s) updated.

-- w) Selecione um endereço de funcionário e coloque o status como I(nativo) e preencha a data de término como sendo a data de ontem. 
--    Utilize a função to_date para registrar esse novo valor da data.

UPDATE MC_END_FUNC SET ST_END = 'I', DT_TERMINO = TO_DATE(SYSDATE - 1, 'DD/MM/YYYY') WHERE CD_FUNCIONARIO = 1;
-- 1 row(s) updated.

-- x) Tente eliminar um estado que tenha uma cidade Cadastrada. Isso foi possível? Justifique o motivo?

DELETE FROM MC_ESTADO WHERE SG_ESTADO = 'MT';
-- ORA-02292: integrity constraint (SQL_BPQWJUNDLNTATDBQPWZKJKDSH.FK_MC_CIDADE_ESTADO) violated - child record found ORA-06512: at "SYS.DBMS_SQL", line 1721

-- Resposta: Não foi possível excluir o estado pois ele possui uma cidade cadastrada, logo tal deleção violaria a 'constraint' de chave estrangeira que faz 
--           referência ao estado na tabela da cidade, corrompendo o banco de dados. Trata-se de uma restrição que mantém a integridade referencial entre duas 
--           tabelas, garantindo que não haja registros órfãos na tabela filha. Quando uma tabela possui uma constraint de chave estrangeira, não é possível 
--           excluir registros da tabela pai que tenham registros associados na tabela filha. Para excluir o estado, é necessário excluir a cidade primeiro.

-- y) Selecione um produto e tente atualizar o status do produto com o status X. Isso foi possível? Justifique o motivo?

UPDATE MC_PRODUTO SET ST_PRODUTO = 'X' WHERE CD_PRODUTO = 1;
-- 1 row(s) updated.

-- Resposta: Sim, pois não fora especificado pelo enunciado a adição das 'contraints' de check da entrega anterior, não estando contido nesta proposta mais
--           flexível do modelo físico apresendado.

-- z) Confirme todas as transações pendentes.

COMMIT;
-- Statement processed.

