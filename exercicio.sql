--exercícios 1_2_4

CREATE TABLE Nutricionista (
    ID_Nutricionista SERIAL PRIMARY KEY,
    CRN VARCHAR(20) UNIQUE NOT NULL,
    Especialidade VARCHAR(50) NOT NULL,
    Tempo_Experiencia INTEGER NOT NULL
);

CREATE TABLE Paciente (
    ID_Paciente SERIAL PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Data_Nascimento DATE NOT NULL,
    CPF VARCHAR(15) UNIQUE NOT NULL,
    Telefone VARCHAR(20) NOT NULL,
    Email VARCHAR(50) NOT NULL
);

CREATE TABLE Consulta (
    ID_Consulta SERIAL PRIMARY KEY,
    ID_Nutricionista INTEGER NOT NULL REFERENCES Nutricionista(ID_Nutricionista),
    ID_Paciente INTEGER NOT NULL REFERENCES Paciente(ID_Paciente),
    Data_Consulta DATE NOT NULL,
    Observacoes TEXT
);

--ex2

-- Exclui tabela Consulta (dependente)
DROP TABLE Consulta;

-- Exclui tabela Paciente (dependente)
DROP TABLE Paciente;

-- Exclui tabela Nutricionista (mestre)
DROP TABLE Nutricionista;

--ex3

-- Insere nutricionista 1
INSERT INTO Nutricionista (CRN, Especialidade, Tempo_Experiencia)
VALUES ('123456-RN', 'Nutrição Esportiva', 10);

-- Insere nutricionista 2
INSERT INTO Nutricionista (CRN, Especialidade, Tempo_Experiencia)
VALUES ('789012-RN', 'Nutrição Infantil', 5);

-- Insere nutricionista 3
INSERT INTO Nutricionista (CRN, Especialidade, Tempo_Experiencia)
VALUES ('345678-RN', 'Nutrição Clínica', 15);

-- Insere paciente 1
INSERT INTO Paciente (Nome, Data_Nascimento, CPF, Telefone, Email)
VALUES ('Ana Silva', '01/01/1985', '123.456.789-00', '(48) 9999-9999', 'ana.silva@email.com');

-- Insere paciente 2
INSERT INTO Paciente (Nome, Data_Nascimento, CPF, Telefone, Email)
VALUES ('João Souza', '15/07/1990', '987.654.321-00', '(48) 8888-8888', 'joao.souza@email.com');

-- Insere paciente 3
INSERT INTO Paciente (Nome, Data_Nascimento, CPF, Telefone, Email)
VALUES ('Maria Oliveira', '24/12/1970', '000.111.222-33', '(48) 7777-7777', 'maria.oliveira@email.com');

-- Insere consulta 1
INSERT INTO Consulta (ID_Nutricionista, ID_Paciente, Data_Consulta, Observacoes)
VALUES (1, 1, '17/06/2024', 'Consulta de acompanhamento nutricional');

-- Insere consulta 2
INSERT INTO Consulta (ID_Nutricionista, ID_Paciente, Data_Consulta, Observacoes)
VALUES (2, 2, '20/06/2024', 'Avaliação nutricional e plano alimentar');

-- Insere consulta 3
INSERT INTO Consulta (ID_Nutricionista, ID_Paciente, Data_Consulta, Observacoes)
VALUES (3, 3, '24/06/2024', 'Orientação nutricional para perda de peso');

--ex6
-- Relaciona consulta 1 com paciente 1 e nutricionista 1
UPDATE Consulta
SET ID_Paciente = 1, ID_Nutricionista = 1
WHERE ID_Consulta = 1;

-- Relaciona consulta 2 com paciente 2 e nutricionista 2
UPDATE Consulta
SET ID_Paciente = 2, ID_Nutricionista = 2
WHERE ID_Consulta = 2;

-- Relaciona consulta 3 com paciente 3 e nutricionista 3
UPDATE Consulta
SET ID_Paciente = 3, ID_Nutricionista = 3
WHERE ID_Consulta = 3;


