CREATE SEQUENCE SEQ_SGV_CATEGORIA_ID START 1;
CREATE SEQUENCE SEQ_SGV_CLASSIFICACAO_ID START 1;
CREATE SEQUENCE SEQ_SGV_FUNCIONARIO_CD START 1;
CREATE SEQUENCE SEQ_SGV_PESSOA_FISICA_ID START 1;
CREATE SEQUENCE SEQ_SGV_PESSOA_JURIDICA_ID START 1;
CREATE SEQUENCE SEQ_SGV_PRODUTO_ID START 1;
CREATE SEQUENCE SEQ_SGV_VENDA_ID START 1;
CREATE SEQUENCE SEQ_SGV_VIDEO_ID START 1;
CREATE SEQUENCE SEQ_SGV_VISUALIZACAO_ID START 1;

ALTER TABLE T_SGV_CATEGORIA ALTER COLUMN id_categoria SET DEFAULT nextval('SEQ_SGV_CATEGORIA_ID');
ALTER TABLE T_SGV_CLASSIFICACAO ALTER COLUMN id_classificacao SET DEFAULT nextval('SEQ_SGV_CLASSIFICACAO_ID');
ALTER TABLE T_SGV_FUNCIONARIO ALTER COLUMN cd_funcionario SET DEFAULT nextval('SEQ_SGV_FUNCIONARIO_CD');
ALTER TABLE T_SGV_PESSOA_FISICA ALTER COLUMN id_pf SET DEFAULT nextval('SEQ_SGV_PESSOA_FISICA_ID');
ALTER TABLE T_SGV_PESSOA_JURIDICA ALTER COLUMN id_pj SET DEFAULT nextval('SEQ_SGV_PESSOA_JURIDICA_ID');
ALTER TABLE T_SGV_PRODUTO ALTER COLUMN id_produto SET DEFAULT nextval('SEQ_SGV_PRODUTO_ID');
ALTER TABLE T_SGV_VENDA ALTER COLUMN id_venda SET DEFAULT nextval('SEQ_SGV_VENDA_ID');
ALTER TABLE T_SGV_VIDEO ALTER COLUMN id_video SET DEFAULT nextval('SEQ_SGV_VIDEO_ID');
ALTER TABLE T_SGV_VISUALIZACAO ALTER COLUMN id_visualizacao SET DEFAULT nextval('SEQ_SGV_VISUALIZACAO_ID');

ALTER TABLE T_SGV_CHAMADO ALTER COLUMN id_chamado ADD GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1 MAXVALUE 9999999999);