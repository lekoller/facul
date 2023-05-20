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
