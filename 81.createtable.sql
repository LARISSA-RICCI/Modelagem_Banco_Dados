SELECT
    C.id_consulta AS ID_Consulta,
    C.data AS Data,             -- CORRIGIDO: nome correto da coluna
    C.hora AS Hora,             -- CORRIGIDO: nome correto da coluna
    P.nome_paciente AS Paciente,
    P.cpf AS CPF_Paciente,
    D.nome_dentista AS Dentista,
    PR.nome_procedimento AS Procedimento,
    PR.valor AS Valor_Unitario  -- CORRIGIDO: O valor é buscado da tabela PROCEDIMENTOS
FROM
    consulta C
JOIN
    paciente P ON C.id_paciente = P.id_paciente -- CORRIGIDO: Usando id_paciente, não id_cliente
JOIN
    dentista D ON C.id_dentista = D.id_dentista
JOIN
    consulta_procedimento CP ON C.id_consulta = CP.id_consulta
JOIN
    procedimentos PR ON CP.id_procedimento = PR.id_procedimento
ORDER BY
    C.data, C.hora;