--ex7

-- Atualiza especialidade do nutricionista 1 para "Nutrição Esportiva Avançada"
UPDATE Nutricionista
SET Especialidade = 'Nutrição Esportiva Avançada'
WHERE ID_Nutricionista = 1;

-- Atualiza tempo de experiência do nutricionista 2 para 7 anos
UPDATE Nutricionista
SET Tempo_Experiencia = 7
WHERE ID_Nutricionista = 2;

-- Exclui nutricionista 3
DELETE FROM Nutricionista
WHERE ID_Nutricionista = 3;

-- Atualiza data de nascimento do paciente 1 para "1980-02-03"
UPDATE Paciente
SET Data_Nascimento = '1980-02-03'
WHERE ID_Paciente = 1;

-- Atualiza telefone do paciente 2 para "(48) 9876-5432"
UPDATE Paciente
SET Telefone = '(48) 9876-5432'
WHERE ID_Paciente = 2;

-- Exclui paciente 2
DELETE FROM Paciente
WHERE ID_Paciente = 2;

-- Atualiza data da consulta 1 para "18/06/2024"
UPDATE Consulta
SET Data_Consulta = '18/06/2024'
WHERE ID_Consulta = 1;

-- Atualiza observações da consulta 2 para "Revisão do plano alimentar"
UPDATE Consulta
SET Observacoes = 'Revisão do plano alimentar'
WHERE ID_Consulta = 2;

-- Exclui consulta 3
DELETE FROM Consulta
WHERE ID_Consulta = 3;
