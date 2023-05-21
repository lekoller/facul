-- a)
DECLARE
    CURSOR one_dot_three_a_cursor IS
    SELECT 
          sac.nr_sac -- Número da ocorrência do SAC
        , sac.dt_abertura_sac -- Data de abertura do SAC
        , sac.hr_abertura_sac -- Hora de abertura do SAC
        , sac.tp_sac -- Tipo do SAC
        , pro.cd_produto -- Código do produto
        , pro.ds_produto -- Nome do produto
        , pro.vl_unitario -- Valor unitário do produto
        , pro.vl_perc_lucro -- Percentual do lucro unitáro do produto
        , cli.nr_cliente -- Número do cliente
        , cli.nm_cliente -- Nome do cliente
    FROM
        mc_sgv_sac sac
    JOIN
        mc_produto pro
    ON
        sac.cd_produto = pro.cd_produto
    JOIN
        mc_cliente cli
    ON
        sac.nr_cliente = cli.nr_cliente;
BEGIN
    FOR a_line IN one_dot_three_a_cursor LOOP
        dbms_output.put_line('Número da ocorrência do SAC: ' || a_line.nr_sac);
        dbms_output.put_line('Data de abertura do SAC: ' || a_line.dt_abertura_sac);
        dbms_output.put_line('Hora de abertura do SAC: ' || a_line.hr_abertura_sac);
        dbms_output.put_line('Tipo do SAC: ' || a_line.tp_sac);
        dbms_output.put_line('Código do produto: ' || a_line.cd_produto);
        dbms_output.put_line('Nome do produto: ' || a_line.ds_produto);
        dbms_output.put_line('Valor unitário do produto: ' || a_line.vl_unitario);
        dbms_output.put_line('Percentual do lucro unitário do produto: ' || a_line.vl_perc_lucro);
        dbms_output.put_line('Número do cliente: ' || a_line.nr_cliente);
        dbms_output.put_line('Nome do cliente: ' || a_line.nm_cliente);
    END LOOP;
END;
/

-- b)
DECLARE
    CURSOR one_dot_three_a_cursor IS
        SELECT 
            sac.nr_sac, -- Número da ocorrência do SAC
            sac.dt_abertura_sac, -- Data de abertura do SAC
            sac.hr_abertura_sac, -- Hora de abertura do SAC
            sac.tp_sac, -- Tipo do SAC
            pro.cd_produto, -- Código do produto
            pro.ds_produto, -- Nome do produto
            pro.vl_unitario, -- Valor unitário do produto
            pro.vl_perc_lucro, -- Percentual do lucro unitário do produto
            cli.nr_cliente, -- Número do cliente
            cli.nm_cliente -- Nome do cliente
        FROM
            mc_sgv_sac sac
        JOIN
            mc_produto pro
        ON
            sac.cd_produto = pro.cd_produto
        JOIN
            mc_cliente cli
        ON
            sac.nr_cliente = cli.nr_cliente;

    v_tipo_classificacao_sac VARCHAR2(100);
    v_vl_unitario_lucro_produto NUMBER;
    v_sg_estado mc_estado.sg_estado%TYPE;
    v_nm_estado mc_estado.nm_estado%TYPE;
    v_vl_icms_produto NUMBER;

BEGIN
    FOR a_line IN one_dot_three_a_cursor LOOP
        -- Transform TP_SAC into DS_TIPO_CLASSIFICACAO_SAC
        CASE a_line.tp_sac
            WHEN 'S' THEN
                v_tipo_classificacao_sac := 'SUGESTÃO';
            WHEN 'D' THEN
                v_tipo_classificacao_sac := 'DÚVIDA';
            WHEN 'E' THEN
                v_tipo_classificacao_sac := 'ELOGIO';
            ELSE
                v_tipo_classificacao_sac := 'CLASSIFICAÇÃO INVÁLIDA';
        END CASE;

        -- Calculate VL_UNITARIO_LUCRO_PRODUTO
        v_vl_unitario_lucro_produto := (a_line.vl_perc_lucro / 100) * a_line.vl_unitario;

        -- Retrieve SG_ESTADO and NM_ESTADO
        SELECT
            end_cli.sg_estado,
            end_cli.nm_estado
        INTO
            v_sg_estado,
            v_nm_estado
        FROM
            mc_end_cli end_cli
        JOIN
            mc_logradouro logr
        ON
            end_cli.nr_endereco = logr.nr_endereco
        JOIN
            mc_bairro bairro
        ON
            logr.cd_bairro = bairro.cd_bairro
        JOIN
            mc_cidade cidade
        ON
            bairro.cd_cidade = cidade.cd_cidade
        JOIN
            mc_estado estado
        ON
            cidade.cd_estado = estado.cd_estado
        WHERE
            end_cli.nr_cliente = a_line.nr_cliente;

        -- Calculate VL_ICMS_PRODUTO
        SELECT
            pf0110.fun_mc_gera_aliquota_media_icms_estado(v_sg_estado)
        INTO
            v_vl_icms_produto
        FROM
            dual;

        v_vl_icms_produto := (v_vl_icms_produto / 100) * a_line.vl_unitario;

        -- Insert the data into MC_SGV_OCORRENCIA_SAC
        INSERT INTO mc_sgv_ocorrencia_sac (
            nr_sac,
            dt_abertura_sac,
            hr_abertura_sac,
            tp_sac,
            ds_tipo_classificacao_sac,
            cd_produto,
            ds_produto,
            vl_unitario,
            vl_unitario_lucro_produto,
            nr_cliente,
            nm_cliente,
            sg_estado,
            nm_estado,
            vl_icms_produto
        )
        VALUES (
            a_line.nr_sac,
            a_line.dt_abertura_sac,
            a_line.hr_abertura_sac,
            a_line.tp_sac,
            v_tipo_classificacao_sac,
            a_line.cd_produto,
            a_line.ds_produto,
            a_line.vl_unitario,
            v_vl_unitario_lucro_produto,
            a_line.nr_cliente,
            a_line.nm_cliente,
            v_sg_estado,
            v_nm_estado,
            v_vl_icms_produto
        );

        COMMIT;
    END LOOP;
END;
/


CREATE OR REPLACE PROCEDURE fun_mc_gera_aliquota_media_icms_estado(p_sg_estado IN VARCHAR2, p_aliquota OUT NUMBER) IS
BEGIN
    IF p_sg_estado = 'AC' THEN
        p_aliquota := 17.0;
    ELSIF p_sg_estado = 'AL' THEN
        p_aliquota := 18.0;
    ELSIF p_sg_estado = 'AM' THEN
        p_aliquota := 18.0;
    ELSIF p_sg_estado = 'AP' THEN
        p_aliquota := 18.0;
    ELSIF p_sg_estado = 'BA' THEN
        p_aliquota := 18.0;
    ELSIF p_sg_estado = 'CE' THEN
        p_aliquota := 18.0;
    ELSIF p_sg_estado = 'DF' THEN
        p_aliquota := 18.0;
    ELSIF p_sg_estado = 'ES' THEN
        p_aliquota := 17.0;
    ELSIF p_sg_estado = 'GO' THEN
        p_aliquota := 17.0;
    ELSIF p_sg_estado = 'MA' THEN
        p_aliquota := 18.0;
    ELSIF p_sg_estado = 'MG' THEN
        p_aliquota := 18.0;
    ELSIF p_sg_estado = 'MS' THEN
        p_aliquota := 17.0;
    ELSIF p_sg_estado = 'MT' THEN
        p_aliquota := 17.0;
    ELSIF p_sg_estado = 'PA' THEN
        p_aliquota := 17.0;
    ELSIF p_sg_estado = 'PB' THEN
        p_aliquota := 18.0;
    ELSIF p_sg_estado = 'PE' THEN 
        p_aliquota := 18.0;
    ELSIF p_sg_estado = 'PI' THEN
        p_aliquota := 18.0;
    ELSIF p_sg_estado = 'PR' THEN
        p_aliquota := 18.0;
    ELSIF p_sg_estado = 'RJ' THEN
        p_aliquota := 20.0;
    ELSIF p_sg_estado = 'RN' THEN
        p_aliquota := 18.0;
    ELSIF p_sg_estado = 'RO' THEN
        p_aliquota := 17.5;
    ELSIF p_sg_estado = 'RR' THEN
        p_aliquota := 17.0;
    ELSIF p_sg_estado = 'RS' THEN
        p_aliquota := 18.0;
    ELSIF p_sg_estado = 'SC' THEN
        p_aliquota := 17.0;
    ELSIF p_sg_estado = 'SE' THEN
        p_aliquota := 18.0;
    ELSIF p_sg_estado = 'SP' THEN
        p_aliquota := 18.0;
    ELSIF p_sg_estado = 'TO' THEN
        p_aliquota := 18.0;
    ELSE
        p_aliquota := 4.0;
    END IF;
END;
/

