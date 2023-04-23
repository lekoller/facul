-- a) Crie uma consulta SQL por meio do comando SELECT que exiba informações das categorias de produto e respectivos 
--    produtos de cada categoria.  Exiba as seguintes informações: código e nome da categoria, código e descrição do 
--    produto, valor unitário, tipo de embalagem e percentual do lucro de cada produto. Caso exista alguma categoria 
--    sem produto, favor exibir a categoria e deixar os dados do produto em branco. Classifique a consulta em ordem 
--    de categoria e nome de produto de forma ascendente. 

SELECT c.CD_CATEGORIA, c.DS_CATEGORIA, p.CD_PRODUTO, p.DS_PRODUTO, p.VL_UNITARIO, p.TP_EMBALAGEM, p.VL_PERC_LUCRO
FROM MC_CATEGORIA_PROD c
LEFT JOIN MC_PRODUTO p ON c.CD_CATEGORIA = p.CD_CATEGORIA
ORDER BY c.DS_CATEGORIA, p.DS_PRODUTO ASC;
-- 27 rows selected.

-- b) Crie uma instrução SQL que exiba os dados dos clientes pessoas físicas. Exiba as seguintes informações: código e nome do cliente, e-mail, telefone, 
--    login, data de nascimento, dia da semana de nascimento, anos de vida, sexo biológico e CPF.

SELECT c.NR_CLIENTE, c.NM_CLIENTE, c.DS_EMAIL, c.NR_TELEFONE, c.NM_LOGIN, cf.DT_NASCIMENTO, TO_CHAR(cf.DT_NASCIMENTO, 'DAY'), 
       TRUNC(MONTHS_BETWEEN(SYSDATE, cf.DT_NASCIMENTO)/12) AS ANOS_VIDA, cf.FL_SEXO_BIOLOGICO, cf.NR_CPF
FROM MC_CLIENTE c
INNER JOIN MC_CLI_FISICA cf ON c.NR_CLIENTE = cf.NR_CLIENTE;
-- 10 rows selected.


-- c) Crie uma instrução SQL que exiba os dados dos clientes pessoa jurídica. Exiba as seguintes informações: código e nome do cliente, e-mail, 
--    telefone, login, data de fundação, dia da semana da fundação, anos de vida da empresa e CNPJ. 

SELECT c.NR_CLIENTE, c.NM_CLIENTE, c.DS_EMAIL, c.NR_TELEFONE, c.NM_LOGIN, cj.DT_FUNDACAO, TO_CHAR(cj.DT_FUNDACAO, 'DAY'), 
       TRUNC(MONTHS_BETWEEN(SYSDATE, cj.DT_FUNDACAO)/12) AS ANOS_VIDA, cj.NR_CNPJ
FROM MC_CLIENTE c
INNER JOIN MC_CLI_JURIDICA cj ON c.NR_CLIENTE = cj.NR_CLIENTE;
-- 5 rows selected.

-- d) Exiba as seguintes informações da tabela de visualização dos vídeos dos produtos: código do produto, nome do produto, data e hora de 
--    visualização do produto. Exiba essas informações classificadas pela data e hora mais recente. 

SELECT v.CD_PRODUTO, p.DS_PRODUTO, v.DT_VISUALZACAO, v.NR_HORA_VISULIZACAO, v.NR_MINUTO_VIDEO
FROM MC_SGV_VISUALIZACAO_VIDEO v
INNER JOIN MC_PRODUTO p ON v.CD_PRODUTO = p.CD_PRODUTO
ORDER BY v.DT_VISUALZACAO DESC, v.NR_HORA_VISULIZACAO DESC, v.NR_MINUTO_VIDEO DESC, v.NR_SEGUNDO_VIDEO DESC;
-- 5 rows selected.
