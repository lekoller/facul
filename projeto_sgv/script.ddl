-- Generated by Oracle SQL Developer Data Modeler 4.1.3.901
--   at:        2023-03-19 17:23:17 BRT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




DROP TABLE T_SGV_CATEGORIA CASCADE CONSTRAINTS ;

DROP TABLE T_SGV_CHAMADO CASCADE CONSTRAINTS ;

DROP TABLE T_SGV_CLASSIFICACAO CASCADE CONSTRAINTS ;

DROP TABLE T_SGV_CLIENTE CASCADE CONSTRAINTS ;

DROP TABLE T_SGV_FUNCIONARIO CASCADE CONSTRAINTS ;

DROP TABLE T_SGV_PESSOA_JURIDICA CASCADE CONSTRAINTS ;

DROP TABLE T_SGV_PRODUTO CASCADE CONSTRAINTS ;

DROP TABLE T_SGV_VENDA CASCADE CONSTRAINTS ;

DROP TABLE T_SGV_VENDA_PRODUTO CASCADE CONSTRAINTS ;

DROP TABLE T_SGV_VIDEO CASCADE CONSTRAINTS ;

DROP TABLE T_SGV_VISUALIZACAO CASCADE CONSTRAINTS ;

DROP TABLE T_SVG_PESSOA_FISICA CASCADE CONSTRAINTS ;

CREATE TABLE T_SGV_CATEGORIA
  (
    id_categoria INTEGER NOT NULL ,
    ds_categoria VARCHAR2 (255) NOT NULL ,
    st_categoria CHAR (1) NOT NULL ,
    dt_inicio    DATE NOT NULL ,
    dt_termino   DATE
  ) ;
COMMENT ON COLUMN T_SGV_CATEGORIA.ds_categoria
IS
  'Descricao da categoria.' ;
  COMMENT ON COLUMN T_SGV_CATEGORIA.dt_inicio
IS
  'Data de inicio da categoria.' ;
  COMMENT ON COLUMN T_SGV_CATEGORIA.dt_termino
IS
  'Data do termino da categoria.' ;
ALTER TABLE T_SGV_CATEGORIA ADD CONSTRAINT CK_SGV_CATEGORIA_ST CHECK (ST_CATEGORIA == A || ST_CATEGORIA == I) ;
ALTER TABLE T_SGV_CATEGORIA ADD CONSTRAINT PK_SGV_CATEGORIA PRIMARY KEY ( id_categoria ) ;
ALTER TABLE T_SGV_CATEGORIA ADD CONSTRAINT UN_SGV_CATEGORIA_DESC UNIQUE ( ds_categoria ) ;


CREATE TABLE T_SGV_CHAMADO
  (
    cd_cliente     VARCHAR2 (128) NOT NULL ,
    id_produto     INTEGER NOT NULL ,
    id_chamado     NUMBER (10) NOT NULL ,
    cd_funcionario INTEGER ,
    cd_tipo        NUMBER (1) NOT NULL ,
    st_chamado     CHAR (1) NOT NULL ,
    tx_chamado     VARCHAR2 (4000) NOT NULL ,
    dt_abertura    DATE NOT NULL ,
    dt_atendimento DATE ,
    dt_fechamento  DATE ,
    vl_satisfacao  INTEGER ,
    vl_duracao_h   INTEGER
  ) ;
ALTER TABLE T_SGV_CHAMADO ADD CONSTRAINT CK_SGV_CHAM_ST CHECK (ST_CHAMADO           == A || ST_CHAMADO == E || ST_CHAMADO == C || ST_CHAMADO == F || ST_CHAMADO == X) ;
ALTER TABLE T_SGV_CHAMADO ADD CONSTRAINT CK_SGV_CHAM_VL_SATSF CHECK (VL_SATISFACAO >= 1 VL_SATISFACAO <= 10) ;
ALTER TABLE T_SGV_CHAMADO ADD CONSTRAINT CK_SGV_CHAMA_CD_TIPO CHECK (CD_TIPO        == 1 || CD_TIPO == 2) ;
ALTER TABLE T_SGV_CHAMADO ADD CONSTRAINT PK_SGV_CHAMADO PRIMARY KEY ( id_chamado, id_produto, cd_cliente ) ;


CREATE TABLE T_SGV_CLASSIFICACAO
  (
    id_classificacao INTEGER NOT NULL ,
    ds_classificacao VARCHAR2 (255) NOT NULL
  ) ;
ALTER TABLE T_SGV_CLASSIFICACAO ADD CONSTRAINT PK_SGV_CLASSIFICACAO PRIMARY KEY ( id_classificacao ) ;
ALTER TABLE T_SGV_CLASSIFICACAO ADD CONSTRAINT UN_SGV_CLASS_DS UNIQUE ( ds_classificacao ) ;


CREATE TABLE T_SGV_CLIENTE
  (
    cd_cliente  VARCHAR2 (128) NOT NULL ,
    nm_cliente  VARCHAR2 (255) NOT NULL ,
    st_cliente  CHAR (1) NOT NULL ,
    vl_login    VARCHAR2 (255) NOT NULL ,
    vl_senha    VARCHAR2 (128) NOT NULL ,
    qt_estrelas INTEGER ,
    nr_ddd      NUMBER (2) ,
    nr_telefone NUMBER (9)
  ) ;
COMMENT ON COLUMN T_SGV_CLIENTE.cd_cliente
IS
  'Cõdigo identificador do cliente.' ;
  COMMENT ON COLUMN T_SGV_CLIENTE.nm_cliente
IS
  'Nome do cliente' ;
  COMMENT ON COLUMN T_SGV_CLIENTE.qt_estrelas
IS
  'Quantidade de estrelas do cliente.' ;
  COMMENT ON COLUMN T_SGV_CLIENTE.nr_ddd
IS
  'Cõdigo de DDD do numero de telefone do cliente.' ;
  COMMENT ON COLUMN T_SGV_CLIENTE.nr_telefone
IS
  'Numero do telefone do cliente.' ;
ALTER TABLE T_SGV_CLIENTE ADD CONSTRAINT PK_SGV_CLIENTE PRIMARY KEY ( cd_cliente ) ;


CREATE TABLE T_SGV_FUNCIONARIO
  (
    cd_funcionario  INTEGER NOT NULL ,
    nm_funcionario  VARCHAR2 (255) NOT NULL ,
    cd_cpf          NUMBER (11) NOT NULL ,
    dt_nascimento   DATE NOT NULL ,
    nr_ddd          NUMBER (2) NOT NULL ,
    nr_telefone     NUMBER (9) NOT NULL ,
    vl_email        VARCHAR2 (255) NOT NULL ,
    nm_cargo        VARCHAR2 (255) NOT NULL ,
    nm_departamento VARCHAR2 (255)
  ) ;
COMMENT ON COLUMN T_SGV_FUNCIONARIO.cd_funcionario
IS
  'Codigo do funcionario.' ;
  COMMENT ON COLUMN T_SGV_FUNCIONARIO.nm_funcionario
IS
  'Nome do funcionario.' ;
  COMMENT ON COLUMN T_SGV_FUNCIONARIO.cd_cpf
IS
  'Numero do CPF.' ;
  COMMENT ON COLUMN T_SGV_FUNCIONARIO.dt_nascimento
IS
  'Data de nascimento do funcionario.' ;
  COMMENT ON COLUMN T_SGV_FUNCIONARIO.nr_ddd
IS
  'Nũmero de DDD do telefone do funcionario.' ;
  COMMENT ON COLUMN T_SGV_FUNCIONARIO.nr_telefone
IS
  'Numero de telefone do funcionario com DDD.' ;
  COMMENT ON COLUMN T_SGV_FUNCIONARIO.vl_email
IS
  'Email do funcionario.' ;
  COMMENT ON COLUMN T_SGV_FUNCIONARIO.nm_cargo
IS
  'Nome do cargo do funcionario.' ;
ALTER TABLE T_SGV_FUNCIONARIO ADD CONSTRAINT PK_SGV_FUNCIONARIO PRIMARY KEY ( cd_funcionario ) ;
ALTER TABLE T_SGV_FUNCIONARIO ADD CONSTRAINT UN_SGV_FUNC_CPF UNIQUE ( cd_cpf ) ;


CREATE TABLE T_SGV_PESSOA_JURIDICA
  (
    cd_cliente   VARCHAR2 (128) NOT NULL ,
    id_pj        INTEGER NOT NULL ,
    cd_cnpj      NUMBER (14) ,
    cd_inscr_est VARCHAR2 (32) ,
    dt_fundacao  DATE
  ) ;
CREATE UNIQUE INDEX T_SGV_PESSOA_JURIDICA__IDX ON T_SGV_PESSOA_JURIDICA
  (
    cd_cliente ASC
  )
  ;
ALTER TABLE T_SGV_PESSOA_JURIDICA ADD CONSTRAINT PK_SGV_PESSOA_JURIDICA PRIMARY KEY ( id_pj, cd_cliente ) ;


CREATE TABLE T_SGV_PRODUTO
  (
    id_produto   INTEGER NOT NULL ,
    id_categoria INTEGER ,
    nm_produto   VARCHAR2 (255) NOT NULL ,
    ds_normal    VARCHAR2 (255) NOT NULL ,
    ds_completa  VARCHAR2 (4000) NOT NULL ,
    vl_preco_unit FLOAT (6) NOT NULL ,
    st_produto CHAR (1) NOT NULL ,
    cd_ean13   VARCHAR2 (13)
  ) ;
COMMENT ON COLUMN T_SGV_PRODUTO.id_produto
IS
  'Identificador ũnico da entidade Produto.' ;
  COMMENT ON COLUMN T_SGV_PRODUTO.nm_produto
IS
  'Nome do produto.' ;
  COMMENT ON COLUMN T_SGV_PRODUTO.ds_normal
IS
  'Descricao normal do produto.' ;
  COMMENT ON COLUMN T_SGV_PRODUTO.ds_completa
IS
  'Descricao completa do produto.' ;
  COMMENT ON COLUMN T_SGV_PRODUTO.vl_preco_unit
IS
  'Preco unitãrio do produto.' ;
  COMMENT ON COLUMN T_SGV_PRODUTO.cd_ean13
IS
  'Codigo de barras do produto padrao EAN13.' ;
ALTER TABLE T_SGV_PRODUTO ADD CONSTRAINT CK_SGV_PROD_ST CHECK (ST_PRODUTO == A || ST_PRODUTO == B) ;
ALTER TABLE T_SGV_PRODUTO ADD CONSTRAINT PK_SGV_PRODUTO PRIMARY KEY ( id_produto ) ;
ALTER TABLE T_SGV_PRODUTO ADD CONSTRAINT UN_SGV_PROD_DESC UNIQUE ( ds_normal ) ;


CREATE TABLE T_SGV_VENDA
  (
    cd_cliente VARCHAR2 (128) NOT NULL ,
    id_venda   INTEGER NOT NULL ,
    vl_montante FLOAT NOT NULL ,
    st_venda        CHAR (1) NOT NULL ,
    cd_metodo_pagto CHAR (1) NOT NULL ,
    dt_abertura     DATE NOT NULL ,
    dt_pagamento    DATE ,
    dt_entrega      DATE ,
    dt_cancelamento DATE ,
    cd_nota_fiscal  VARCHAR2 (255) ,
    nr_parcelas     INTEGER
  ) ;
COMMENT ON COLUMN T_SGV_VENDA.st_venda
IS
  'Status da venda.' ;
  COMMENT ON COLUMN T_SGV_VENDA.cd_metodo_pagto
IS
  'Cõdigo de mẽtodo de pagamento: V para credito a vista, P para credito parcelado, X para pix e B para boleto.' ;
  COMMENT ON COLUMN T_SGV_VENDA.dt_abertura
IS
  'Data e hora do inicio da compra.' ;
  COMMENT ON COLUMN T_SGV_VENDA.nr_parcelas
IS
  'Numero de parcelas para pagamento a prazo.' ;
ALTER TABLE T_SGV_VENDA ADD CONSTRAINT CK_SGV_VENDA_ST CHECK (ST_VENDA                 == A || ST_VENDA == P || ST_VENDA == E || ST_VENDA == C) ;
ALTER TABLE T_SGV_VENDA ADD CONSTRAINT CK_SGV_VENDA_M_PAGTO CHECK (CD_METODO_PAGAMENTO == V || CD_METODO_PAGAMENTO == P || CD_METODO_PAGAMENTO == X || CD_METODO_PAGAMENTO == B) ;
ALTER TABLE T_SGV_VENDA ADD CONSTRAINT PK_SGV_VENDA PRIMARY KEY ( id_venda, cd_cliente ) ;


CREATE TABLE T_SGV_VENDA_PRODUTO
  (
    cd_cliente       VARCHAR2 (128) NOT NULL ,
    id_venda         INTEGER NOT NULL ,
    id_produto       INTEGER NOT NULL ,
    cd_venda_produto VARCHAR2 (128) NOT NULL ,
    qt_produto       INTEGER NOT NULL
  ) ;
ALTER TABLE T_SGV_VENDA_PRODUTO ADD CONSTRAINT PK_SGV_VENDA_PRODUTO PRIMARY KEY ( cd_venda_produto, id_venda, cd_cliente, id_produto ) ;


CREATE TABLE T_SGV_VIDEO
  (
    id_produto       INTEGER NOT NULL ,
    id_video         INTEGER NOT NULL ,
    id_classificacao INTEGER NOT NULL ,
    st_video         CHAR (1) NOT NULL ,
    vl_video BLOB
  ) ;
COMMENT ON COLUMN T_SGV_VIDEO.st_video
IS
  'Status que identifica o video como ativo ou inativo.' ;
  COMMENT ON COLUMN T_SGV_VIDEO.vl_video
IS
  'Conteudo do video.' ;
ALTER TABLE T_SGV_VIDEO ADD CONSTRAINT CK_SGV_VIDEO_ST CHECK (ST_VIDEO == A || ST_VIDEO == B) ;
ALTER TABLE T_SGV_VIDEO ADD CONSTRAINT PK_SGV_VIDEO PRIMARY KEY ( id_video, id_produto ) ;


CREATE TABLE T_SGV_VISUALIZACAO
  (
    id_produto      INTEGER NOT NULL ,
    id_video        INTEGER NOT NULL ,
    id_visualizacao INTEGER NOT NULL ,
    cd_cliente      VARCHAR2 (128) ,
    dt_visualizacao DATE
  ) ;
ALTER TABLE T_SGV_VISUALIZACAO ADD CONSTRAINT PK_SGV_VISUALIZACAO PRIMARY KEY ( id_visualizacao, id_produto, id_video ) ;


CREATE TABLE T_SVG_PESSOA_FISICA
  (
    cd_cliente    VARCHAR2 (128) NOT NULL ,
    id_pf         INTEGER NOT NULL ,
    nm_cpf        NUMBER NOT NULL ,
    dt_nascimento DATE NOT NULL ,
    cd_sexo       CHAR (1) NOT NULL ,
    vl_genero     VARCHAR2 (255)
  ) ;
COMMENT ON COLUMN T_SVG_PESSOA_FISICA.cd_sexo
IS
  'Sexo biolõgico do cliente pessoa fĩsica.' ;
  COMMENT ON COLUMN T_SVG_PESSOA_FISICA.vl_genero
IS
  'Genero do cliente pessoa fisica' ;
CREATE UNIQUE INDEX T_SVG_PESSOA_FISICA__IDX ON T_SVG_PESSOA_FISICA
  (
    cd_cliente ASC
  )
  ;
ALTER TABLE T_SVG_PESSOA_FISICA ADD CONSTRAINT CK_SVG_PF_SEXO CHECK (CD_SEXO == M || CD_SEXO == F) ;
ALTER TABLE T_SVG_PESSOA_FISICA ADD CONSTRAINT PK_SVG_PESSOA_FISICA PRIMARY KEY ( id_pf, cd_cliente ) ;


ALTER TABLE T_SGV_CHAMADO ADD CONSTRAINT FK_SGV_CHAM_CLIENTE FOREIGN KEY ( cd_cliente ) REFERENCES T_SGV_CLIENTE ( cd_cliente ) ;

ALTER TABLE T_SGV_CHAMADO ADD CONSTRAINT FK_SGV_CHAM_FUNC FOREIGN KEY ( cd_funcionario ) REFERENCES T_SGV_FUNCIONARIO ( cd_funcionario ) ;

ALTER TABLE T_SGV_CHAMADO ADD CONSTRAINT FK_SGV_CHAM_PROD FOREIGN KEY ( id_produto ) REFERENCES T_SGV_PRODUTO ( id_produto ) ;

ALTER TABLE T_SGV_PESSOA_JURIDICA ADD CONSTRAINT FK_SGV_PJ_CLIENTE FOREIGN KEY ( cd_cliente ) REFERENCES T_SGV_CLIENTE ( cd_cliente ) ;

ALTER TABLE T_SGV_PRODUTO ADD CONSTRAINT FK_SGV_PROD_CATEG FOREIGN KEY ( id_categoria ) REFERENCES T_SGV_CATEGORIA ( id_categoria ) ;

ALTER TABLE T_SGV_VENDA_PRODUTO ADD CONSTRAINT FK_SGV_VENDAPROD_PROD FOREIGN KEY ( id_produto ) REFERENCES T_SGV_PRODUTO ( id_produto ) ;

ALTER TABLE T_SGV_VENDA_PRODUTO ADD CONSTRAINT FK_SGV_VENDAPROD_VENDA FOREIGN KEY ( id_venda, cd_cliente ) REFERENCES T_SGV_VENDA ( id_venda, cd_cliente ) ;

ALTER TABLE T_SGV_VENDA ADD CONSTRAINT FK_SGV_VENDA_CLIENTE FOREIGN KEY ( cd_cliente ) REFERENCES T_SGV_CLIENTE ( cd_cliente ) ;

ALTER TABLE T_SGV_VIDEO ADD CONSTRAINT FK_SGV_VIDEO_CLASS FOREIGN KEY ( id_classificacao ) REFERENCES T_SGV_CLASSIFICACAO ( id_classificacao ) ;

ALTER TABLE T_SGV_VIDEO ADD CONSTRAINT FK_SGV_VIDEO_PROD FOREIGN KEY ( id_produto ) REFERENCES T_SGV_PRODUTO ( id_produto ) ;

ALTER TABLE T_SGV_VISUALIZACAO ADD CONSTRAINT FK_SGV_VISUAL_CLIENTE FOREIGN KEY ( cd_cliente ) REFERENCES T_SGV_CLIENTE ( cd_cliente ) ;

ALTER TABLE T_SGV_VISUALIZACAO ADD CONSTRAINT FK_SGV_VISUAL_VIDEO FOREIGN KEY ( id_video, id_produto ) REFERENCES T_SGV_VIDEO ( id_video, id_produto ) ;

ALTER TABLE T_SVG_PESSOA_FISICA ADD CONSTRAINT FK_SVG_PF_CLIENTE FOREIGN KEY ( cd_cliente ) REFERENCES T_SGV_CLIENTE ( cd_cliente ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            12
-- CREATE INDEX                             2
-- ALTER TABLE                             38
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
