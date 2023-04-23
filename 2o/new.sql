CREATE TABLE MC_PRODUTO (
    CD_PRODUTO NUMBER(10) NOT NULL,
    CD_CATEGORIA NUMBER NOT NULL,
    NR_CD_BARRAS_PROD VARCHAR2(50),
    DS_PRODUTO VARCHAR2(80) NOT NULL,
    VL_UNITARIO NUMBER(8,2) NOT NULL,
    TP_EMBALAGEM VARCHAR2(15),
    ST_PRODUTO CHAR(1),
    VL_PERC_LUCRO NUMBER(8,2),
    DS_COMPLETA_PROD VARCHAR2(4000) NOT NULL
);

CREATE TABLE MC_CATEGORIA_PROD (
    CD_CATEGORIA NUMBER NOT NULL,
    TP_CATEGORIA CHAR(1) NOT NULL,
    DS_CATEGORIA VARCHAR2(500) NOT NULL,
    DT_INICIO DATE,
    DT_TERMINO DATE,
    ST_CATEGORIA CHAR(1) NOT NULL
);

CREATE TABLE MC_SGV_PRODUTO_VIDEO (
    CD_PRODUTO NUMBER(10) NOT NULL,
    NR_SEQUENCIA NUMBER(3) NOT NULL,
    CD_CATEGORIA NUMBER NOT NULL,
    VD_PRODUTO BLOB,
    TP_VIDEO_PROD VARCHAR2(10),
    DS_PATH_VIDEO_PROD VARCHAR2(500),
    ST_VIDEO_PROD CHAR(1)
);

CREATE TABLE MC_SGV_SAC (
    NR_SAC NUMBER NOT NULL,
    NR_CLIENTE NUMBER(10) NOT NULL,
    CD_PRODUTO NUMBER(10) NOT NULL,
    CD_FUNCIONARIO NUMBER(10),
    DS_DETALHADA_SAC CLOB,
    DT_ABERTURA_SAC DATE,
    HR_ABERTURA_SAC NUMBER(2),
    DT_ATENDIMENTO DATE,
    HR_ATENDIMENTO_SAC NUMBER(2),
    NR_TEMPO_TOTAL_SAC NUMBER(10),
    DS_DETALHADA_RETORNO_SAC CLOB,
    TP_SAC CHAR(1) NOT NULL,
    ST_SAC CHAR(1),
    NR_INDICE_SATISFACAO NUMBER(2)
);

CREATE TABLE MC_FUNCIONARIO (
  CD_FUNCIONARIO NUMBER(10) NOT NULL,
  CD_DEPTO NUMBER(3) NOT NULL,
  CD_GERENTE NUMBER(10),
  NM_FUNCIONARIO VARCHAR2(160),
  DT_NASCIMENTO DATE NOT NULL,
  FL_SEXO_BIOLOGICO CHAR(1),
  DS_GENERO VARCHAR2(100),
  DS_CARGO VARCHAR2(80) NOT NULL,
  VL_SALARIO NUMBER(10,2),
  DS_EMAIL VARCHAR2(80),
  ST_FUNC CHAR(1),
  DT_CADASTRAMENTO DATE,
  DT_DESLIGAMENTO DATE
);

CREATE TABLE MC_DEPTO (
    CD_DEPTO NUMBER(3) NOT NULL,
    NM_DEPTO VARCHAR2(100) NOT NULL,
    ST_DEPTO CHAR(1) NOT NULL
);

CREATE TABLE MC_END_FUNC (
    CD_FUNCIONARIO NUMBER(10) NOT NULL,
    CD_LOGRADOURO NUMBER(10) NOT NULL,
    NR_END NUMBER(8) NOT NULL,
    DS_COMPLEMENTO_END VARCHAR2(80),
    DT_INICIO DATE NOT NULL,
    DT_TERMINO DATE,
    ST_END CHAR(1) NOT NULL
);

CREATE TABLE MC_LOGRADOURO (
    CD_LOGRADOURO NUMBER(10) NOT NULL,
    CD_BAIRRO NUMBER(8) NOT NULL,
    NM_LOGRADOURO VARCHAR2(160) NOT NULL,
    NR_CEP NUMBER(8)
);

CREATE TABLE MC_BAIRRO (
    CD_BAIRRO NUMBER(8) NOT NULL,
    CD_CIDADE NUMBER(8) NOT NULL,
    NM_BAIRRO VARCHAR2(45),
    NM_ZONA_BAIRRO VARCHAR2(20)
);

CREATE TABLE MC_CIDADE (
    CD_CIDADE NUMBER(8) NOT NULL,
    SG_ESTADO CHAR(2) NOT NULL,
    NM_CIDADE VARCHAR2(60) NOT NULL,
    CD_IBGE NUMBER(8),
    NR_DDD NUMBER(3)
);

CREATE TABLE MC_ESTADO (
    SG_ESTADO CHAR(2) NOT NULL,
    NM_ESTADO VARCHAR(30) NOT NULL
);

CREATE TABLE MC_END_CLI (
    NR_CLIENTE NUMBER(10) NOT NULL,
    CD_LOGRADOURO_CLI NUMBER(10) NOT NULL,
    NR_END NUMBER(8) NOT NULL,
    DS_COMPLEMENTO_END VARCHAR2(80),
    DT_INICIO DATE,
    DT_TERMINO DATE,
    ST_END CHAR(1)
);

CREATE TABLE MC_CLIENTE (
  NR_CLIENTE NUMBER(10) NOT NULL,
  NM_CLIENTE VARCHAR2(160) NOT NULL,
  QT_ESTRELAS NUMBER(1),
  VL_MEDIO_COMPRA NUMBER(10,2),
  ST_CLIENTE CHAR(1),
  DS_EMAIL VARCHAR2(100),
  NR_TELEFONE VARCHAR2(20),
  NM_LOGIN VARCHAR2(50) NOT NULL,
  DS_SENHA VARCHAR2(50) NOT NULL
);

CREATE TABLE MC_CLI_FISICA (
  NR_CLIENTE NUMBER(10) NOT NULL,
  DT_NASCIMENTO DATE NOT NULL,
  FL_SEXO_BIOLOGICO CHAR(1) NOT NULL,
  DS_GENERO VARCHAR2(100),
  NR_CPF VARCHAR2(14) NOT NULL
);

CREATE TABLE MC_CLI_JURIDICA (
  NR_CLIENTE NUMBER(10) NOT NULL,
  DT_FUNDACAO DATE,
  NR_CNPJ VARCHAR2(20),
  NR_INSCR_EST VARCHAR2(15)
);

CREATE TABLE MC_SGV_VISUALIZACAO_VIDEO (
  CD_VISUALIZACAO_VIDEO NUMBER(10) NOT NULL,
  NR_CLIENTE NUMBER(10),
  CD_PRODUTO NUMBER(10) NOT NULL,
  DT_VISUALZACAO DATE NOT NULL,
  NR_HORA_VISULIZACAO NUMBER(2) NOT NULL,
  NR_MINUTO_VIDEO NUMBER(2),
  NR_SEGUNDO_VIDEO NUMBER(2)
);

-- As tabelas MC_DEPTO (v), 
-- MC_FUNCIONARIO (v), 
-- MC_CIDADE (v), 
-- MC_BAIRRO (), 
-- MC_LOGRADOURO (v), 
-- MD_CLIENTE (v), 
-- MC_SGV_SAC(v) 
-- e MC_CATEGORIA (v), 
-- MC_PRODUTO (v), são indicadas para o uso conceito de SEQUENCE ou IDENTITY.  

-- MC_PRODUTO
ALTER TABLE MC_PRODUTO
ADD CONSTRAINT PK_MC_PRODUTO PRIMARY KEY (CD_PRODUTO);

CREATE SEQUENCE SEQ_CD_PRODUTO
START WITH 1
INCREMENT BY 1
NOCACHE;

ALTER TABLE MC_PRODUTO
MODIFY CD_PRODUTO DEFAULT SEQ_CD_PRODUTO.NEXTVAL;

-- MC_CATEGORIA_PROD
ALTER TABLE MC_CATEGORIA_PROD
ADD CONSTRAINT PK_MC_CATEGORIA PRIMARY KEY (CD_CATEGORIA);

CREATE SEQUENCE SEQ_CD_CATEGORIA
START WITH 1
INCREMENT BY 1
NOCACHE;

ALTER TABLE MC_CATEGORIA_PROD
MODIFY CD_CATEGORIA DEFAULT SEQ_CD_CATEGORIA.NEXTVAL;

-- MC_SGV_PRODUTO_VIDEO
ALTER TABLE MC_SGV_PRODUTO_VIDEO
ADD CONSTRAINT PK_MC_PRODUTO_IMAGEM PRIMARY KEY (NR_SEQUENCIA, CD_PRODUTO);

CREATE SEQUENCE SEQ_NR_SEQUENCIA
START WITH 1
INCREMENT BY 1
NOCACHE;

ALTER TABLE MC_SGV_PRODUTO_VIDEO
MODIFY NR_SEQUENCIA DEFAULT SEQ_NR_SEQUENCIA.NEXTVAL;

-- MC_SGV_SAC
ALTER TABLE MC_SGV_SAC
ADD CONSTRAINT PK_MC_SGV_SAC PRIMARY KEY (NR_SAC);

CREATE SEQUENCE SEQ_NR_SAC
START WITH 1
INCREMENT BY 1
NOCACHE;

ALTER TABLE MC_SGV_SAC
MODIFY NR_SAC DEFAULT SEQ_NR_SAC.NEXTVAL;

-- MC_FUNCIONARIO
ALTER TABLE MC_FUNCIONARIO
ADD CONSTRAINT PK_MC_FUNCIONARIO PRIMARY KEY (CD_FUNCIONARIO);

CREATE SEQUENCE SEQ_CD_FUNCIONARIO
START WITH 1
INCREMENT BY 1
NOCACHE;

ALTER TABLE MC_FUNCIONARIO
MODIFY CD_FUNCIONARIO DEFAULT SEQ_CD_FUNCIONARIO.NEXTVAL;

-- MC_DEPTO
ALTER TABLE MC_DEPTO
ADD CONSTRAINT PK_MC_DEPTO PRIMARY KEY (CD_DEPTO);

CREATE SEQUENCE SEQ_CD_DEPTO
START WITH 1
INCREMENT BY 1
NOCACHE;

ALTER TABLE MC_DEPTO
MODIFY CD_DEPTO DEFAULT SEQ_CD_DEPTO.NEXTVAL;

-- MC_END_FUNC
ALTER TABLE MC_END_FUNC
ADD CONSTRAINT PK_MC_END_FUNC_PK PRIMARY KEY (CD_FUNCIONARIO, CD_LOGRADOURO);

-- MC_LOGRADOURO
ALTER TABLE MC_LOGRADOURO
ADD CONSTRAINT PK_MC_LOGRADOURO PRIMARY KEY (CD_LOGRADOURO);

CREATE SEQUENCE SEQ_CD_LOGRADOURO
START WITH 1
INCREMENT BY 1
NOCACHE;

ALTER TABLE MC_LOGRADOURO
MODIFY CD_LOGRADOURO DEFAULT SEQ_CD_LOGRADOURO.NEXTVAL;

-- MC_BAIRRO
ALTER TABLE MC_BAIRRO
ADD CONSTRAINT PK_MC_BAIRRO PRIMARY KEY (CD_BAIRRO);

CREATE SEQUENCE SEQ_CD_BAIRRO
START WITH 1
INCREMENT BY 1
NOCACHE;

ALTER TABLE MC_BAIRRO
MODIFY CD_BAIRRO DEFAULT SEQ_CD_BAIRRO.NEXTVAL;

-- MC_CIDADE
ALTER TABLE MC_CIDADE
ADD CONSTRAINT PK_MC_CIDADE PRIMARY KEY (CD_CIDADE);

CREATE SEQUENCE SEQ_CD_CIDADE
START WITH 1
INCREMENT BY 1
NOCACHE;

ALTER TABLE MC_CIDADE
MODIFY CD_CIDADE DEFAULT SEQ_CD_CIDADE.NEXTVAL;

-- MC_ESTADO
ALTER TABLE MC_ESTADO
ADD CONSTRAINT PK_MC_ESTADO PRIMARY KEY (SG_ESTADO);

-- MC_END_CLI
ALTER TABLE MC_END_CLI
ADD CONSTRAINT PK_MC_END_CLI PRIMARY KEY (NR_CLIENTE, CD_LOGRADOURO_CLI);

ALTER TABLE MC_END_CLI
MODIFY ST_END DEFAULT 'A';

-- MC_CLIENTE
ALTER TABLE MC_CLIENTE
ADD CONSTRAINT PK_MC_CLIENTE PRIMARY KEY (NR_CLIENTE);

CREATE SEQUENCE SEQ_NR_CLIENTE
START WITH 1
INCREMENT BY 1
NOCACHE;

ALTER TABLE MC_CLIENTE
MODIFY NR_CLIENTE DEFAULT SEQ_NR_CLIENTE.NEXTVAL;

ALTER TABLE MC_CLIENTE
ADD CONSTRAINT UK_MC_CLIENTE_NOME_CLIENTE UNIQUE (NM_CLIENTE);

-- MC_CLI_FISICA
ALTER TABLE MC_CLI_FISICA
ADD CONSTRAINT PK_MC_CLI_FISICA PRIMARY KEY (NR_CLIENTE);

-- MC_CLI_JURIDICA
ALTER TABLE MC_CLI_JURIDICA
ADD CONSTRAINT PK_MC_CLI_JURIDICA PRIMARY KEY (NR_CLIENTE);

-- MC_SGV_VISUALIZACAO_VIDEO
ALTER TABLE MC_SGV_VISUALIZACAO_VIDEO
ADD CONSTRAINT PK_MC_SGV_VISUALIZACAO_VIDEO PRIMARY KEY (CD_VISUALIZACAO_VIDEO);

CREATE SEQUENCE SEQ_CD_VISUALIZACAO_VIDEO
START WITH 1
INCREMENT BY 1
NOCACHE;

ALTER TABLE MC_SGV_VISUALIZACAO_VIDEO
MODIFY CD_VISUALIZACAO_VIDEO DEFAULT SEQ_CD_VISUALIZACAO_VIDEO.NEXTVAL;

--- FK

-- MC_PRODUTO
ALTER TABLE MC_PRODUTO
ADD CONSTRAINT FK_MC_SUB_CATEGORIA_PROD FOREIGN KEY (CD_CATEGORIA)
REFERENCES MC_CATEGORIA_PROD (CD_CATEGORIA);

-- MC_SGV_PRODUTO_VIDEO
ALTER TABLE MC_SGV_PRODUTO_VIDEO
ADD CONSTRAINT FK_MC_PRODUTO_IMAGEM FOREIGN KEY (CD_PRODUTO)
REFERENCES MC_PRODUTO (CD_PRODUTO);

ALTER TABLE MC_SGV_PRODUTO_VIDEO
ADD CONSTRAINT FK_MC_CATEGORIA_VIDEO FOREIGN KEY (CD_CATEGORIA)
REFERENCES MC_CATEGORIA_PROD (CD_CATEGORIA);

-- MC_SGV_SAC
ALTER TABLE MC_SGV_SAC
ADD CONSTRAINT FK_MC_CLIENTE_SGV_SAC FOREIGN KEY (NR_CLIENTE)
REFERENCES MC_CLIENTE (NR_CLIENTE);

ALTER TABLE MC_SGV_SAC
ADD CONSTRAINT FK_MC_PRODUTO_SGV_SAC FOREIGN KEY (CD_PRODUTO)
REFERENCES MC_PRODUTO (CD_PRODUTO);

ALTER TABLE MC_SGV_SAC
ADD CONSTRAINT FK_MC_FUNCIONARIO_SGV_SAC FOREIGN KEY (CD_FUNCIONARIO)
REFERENCES MC_FUNCIONARIO (CD_FUNCIONARIO);

-- MC_FUNCIONARIO
ALTER TABLE MC_FUNCIONARIO
ADD CONSTRAINT FK_MC_DEPTO_FUNC FOREIGN KEY (CD_DEPTO)
REFERENCES MC_DEPTO (CD_DEPTO);

ALTER TABLE MC_FUNCIONARIO
ADD CONSTRAINT FK_MC_FUNC_SUPERIOR FOREIGN KEY (CD_GERENTE)
REFERENCES MC_FUNCIONARIO (CD_FUNCIONARIO);

-- MC_END_FUNC
ALTER TABLE MC_END_FUNC
ADD CONSTRAINT FK_MC_END_FUNC_LOGRADOURO FOREIGN KEY (CD_LOGRADOURO)
REFERENCES MC_LOGRADOURO (CD_LOGRADOURO);

ALTER TABLE MC_END_FUNC
ADD CONSTRAINT FK_MC_END_FUNC FOREIGN KEY (CD_FUNCIONARIO)
REFERENCES MC_FUNCIONARIO (CD_FUNCIONARIO);

-- MC_LOGRADOURO
ALTER TABLE MC_LOGRADOURO
ADD CONSTRAINT FK_MC_LOGRADOURO_BAIRRO FOREIGN KEY (CD_BAIRRO)
REFERENCES MC_BAIRRO (CD_BAIRRO);


ALTER TABLE MC_BAIRRO
ADD CONSTRAINT FK_MC_BAIRRO_CIDADE FOREIGN KEY (CD_CIDADE)
REFERENCES MC_CIDADE (CD_CIDADE);

ALTER TABLE MC_CIDADE
ADD CONSTRAINT FK_MC_CIDADE_ESTADO FOREIGN KEY (SG_ESTADO)
REFERENCES MC_ESTADO (SG_ESTADO);

ALTER TABLE MC_END_CLI
ADD CONSTRAINT FK_MC_CLIENTE_END FOREIGN KEY (NR_CLIENTE) REFERENCES MC_CLIENTE(NR_CLIENTE);

ALTER TABLE MC_END_CLI
ADD CONSTRAINT FK_MC_LOGRADOURO_END FOREIGN KEY (CD_LOGRADOURO_CLI) REFERENCES MC_LOGRADOURO(CD_LOGRADOURO);

ALTER TABLE MC_CLI_FISICA
ADD CONSTRAINT FK_MC_CLIENTE_FISICA FOREIGN KEY (NR_CLIENTE) REFERENCES MC_CLIENTE(NR_CLIENTE);

ALTER TABLE MC_CLI_JURIDICA
ADD CONSTRAINT FK_MC_CLIENTE_JURIDICA FOREIGN KEY (NR_CLIENTE) REFERENCES MC_CLIENTE(NR_CLIENTE);

ALTER TABLE MC_SGV_VISUALIZACAO_VIDEO
ADD CONSTRAINT FK_MC_CLIENTE_VISUALIZ_VIDEO FOREIGN KEY (NR_CLIENTE) REFERENCES MC_CLIENTE(NR_CLIENTE);

ALTER TABLE MC_SGV_VISUALIZACAO_VIDEO
ADD CONSTRAINT FK_MC_PRODUTO_VISUALIZACAO FOREIGN KEY (CD_PRODUTO) REFERENCES MC_PRODUTO(CD_PRODUTO);