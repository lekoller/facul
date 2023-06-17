INSERT INTO mc_sgv_sac (
        nr_sac,
        nr_cliente,
        cd_produto,
        cd_funcionario,
        ds_detalhada_sac,
        dt_abertura_sac,
        hr_abertura_sac,
        dt_atendimento,
        hr_atendimento_sac,
        nr_tempo_total_sac,
        ds_detalhada_retorno_sac,
        tp_sac,
        st_sac,
        nr_indice_satisfacao
    )
VALUES (
        SQ_MC_SGV_SAC.NEXTVAL,
        12,
        15,
        10,
        'The product I received is not working properly. It is giving error messages on startup.',
        TO_DATE('2023-05-20', 'YYYY-MM-DD'),
        9,
        TO_DATE('2023-05-21', 'YYYY-MM-DD'),
        11,
        60,
        'The issue was resolved after contacting customer support. They provided me with a workaround to fix the problem.',
        'S',
        'A',
        4
    );

INSERT INTO mc_sgv_sac (
        nr_sac,
        nr_cliente,
        cd_produto,
        cd_funcionario,
        ds_detalhada_sac,
        dt_abertura_sac,
        hr_abertura_sac,
        dt_atendimento,
        hr_atendimento_sac,
        nr_tempo_total_sac,
        ds_detalhada_retorno_sac,
        tp_sac,
        st_sac,
        nr_indice_satisfacao
    )
VALUES (
        SQ_MC_SGV_SAC.NEXTVAL,
        1,
        1,
        1,
        'I have a question regarding the specifications of the product I purchased. Can you provide more details?',
        TO_DATE('2023-05-19', 'YYYY-MM-DD'),
        14,
        TO_DATE('2023-05-21', 'YYYY-MM-DD'),
        9,
        30,
        'The customer service representative promptly answered my question and provided me with the necessary information.',
        'D',
        'A',
        5
    );

INSERT INTO mc_sgv_sac (
        nr_sac,
        nr_cliente,
        cd_produto,
        cd_funcionario,
        ds_detalhada_sac,
        dt_abertura_sac,
        hr_abertura_sac,
        dt_atendimento,
        hr_atendimento_sac,
        nr_tempo_total_sac,
        ds_detalhada_retorno_sac,
        tp_sac,
        st_sac,
        nr_indice_satisfacao
    )
VALUES (
        SQ_MC_SGV_SAC.NEXTVAL,
        2,
        2,
        2,
        'I want to express my satisfaction with the product I purchased. It exceeded my expectations.',
        TO_DATE('2023-05-18', 'YYYY-MM-DD'),
        10,
        TO_DATE('2023-05-21', 'YYYY-MM-DD'),
        13,
        45,
        'I received excellent customer service throughout the purchasing process. The staff was helpful and friendly.',
        'E',
        'A',
        3
    );