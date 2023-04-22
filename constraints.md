[v] - (PRODUTO) Para essa coluna status do produto, crie uma restrição do tipo check constraint, permitindo apenas o conteúdo A ou I.

[v] - (PRODUTO) A descrição normal do produto deve ser única e a sugestão aqui é criar uma constraint do tipo UNIQUE para essa coluna.

[v] - (CATEGORIA) A descrição da categoria do produto deve ser única e a sugestão aqui é criar uma constraint do tipo UNIQUE para essa coluna.

[ ] ? Visualização não pode ser criada para vídeos inativos (I) CAN DO

[v] - Os chamados de dúvidas e sugestões devem conter uma chave única, do tipo numérica com tamanho máximo de 10 números e que possa ser utilizada como SEQUENCE ou IDENTITY

[v] - Todo chamado tem um status, que permite saber em que situação ele se encontra. Os principais status são: “A” (aberto), o primeiro status criado no início; “E” (em atendimento); “C” (cancelado)”; “F” (fechado com sucesso); “X” (fechado com insatisfação do cliente), conforme for evoluindo o atendimento. Sendo assim esse status é informação obrigatória.

[v] - Todo chamado dever ter um índice de satisfação, computado como um valor simples de 1 a 10, onde 1 refere-se ao cliente menos satisfeito e 10 o cliente mais satisfeito. 

[v] - Todo chamado deve ser classificado em 2 tipos: Tipo 1: Sugestão e Tipo 2: Reclamação. Essa informação é obrigatória.

[v] - O número do CPF do funcionário deve ser único e a sugestão aqui é criar uma constraint do tipo UNIQUE para essa coluna.

[v] - sexo biológico (conteúdo obrigatório) CLIENTE (M - F)
