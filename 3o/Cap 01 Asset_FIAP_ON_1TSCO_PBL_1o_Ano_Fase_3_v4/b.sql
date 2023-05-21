DECLARE
    CURSOR one_dot_three_cursor IS
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
    FOR a_line IN one_dot_three_cursor LOOP
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
            estado.sg_estado,
            estado.nm_estado
        INTO
            v_sg_estado,
            v_nm_estado
        FROM
            mc_end_cli end_cli
        JOIN
            mc_logradouro logr
        ON
            end_cli.cd_logradouro_cli = logr.cd_logradouro
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
            cidade.sg_estado = estado.sg_estado
        WHERE
            end_cli.nr_cliente = a_line.nr_cliente;

        -- Calculate VL_ICMS_PRODUTO
        pf0110.fun_mc_gera_aliquota_media_icms_estado(v_sg_estado, v_vl_icms_produto);
        -- system.fun_mc_gera_aliquota_media_icms_estado(v_sg_estado, v_vl_icms_produto);

        v_vl_icms_produto := (v_vl_icms_produto / 100) * a_line.vl_unitario;

        -- Insert the data into MC_SGV_OCORRENCIA_SAC
        INSERT INTO mc_sgv_ocorrencia_sac (
            nr_ocorrencia_sac,
            dt_abertura_sac,
            hr_abertura_sac,
            ds_tipo_classificacao_sac,
            cd_produto,
            ds_produto,
            vl_unitario_produto,
            vl_perc_lucro,
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
            v_tipo_classificacao_sac,
            a_line.cd_produto,
            a_line.ds_produto,
            a_line.vl_unitario,
            a_line.vl_perc_lucro,
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