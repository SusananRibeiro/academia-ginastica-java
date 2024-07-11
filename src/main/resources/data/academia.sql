-- INSERT Alunos
INSERT INTO tb_alunos (bairro, cpf, data_de_nascimento, nome) VALUES ('Bairro Teste', '012.345.678-99', '2000-03-02', 'Nome Teste 1');
INSERT INTO tb_alunos (bairro, cpf, data_de_nascimento, nome) VALUES ('Bairro Teste', '012.345.678-10', '2000-03-02', 'Nome Teste 2');

-- INSERT Avaliação
INSERT INTO tb_avaliacoes (altura_atual, data_da_avaliacao, peso_atual , aluno_id) VALUES (1.70, '2020-01-20', 90.5, 1);
INSERT INTO tb_avaliacoes (altura_atual, data_da_avaliacao, peso_atual , aluno_id) VALUES (1.60, '2020-01-21', 80.5, 3);

-- INSERT Matricula
INSERT INTO tb_matriculas (data_da_matricula, aluno_id) VALUES ('2020-01-20', 1);
INSERT INTO tb_matriculas (data_da_matricula, aluno_id) VALUES ('2020-01-21', 3);

-- Consultar tabelas
SELECT * FROM tb_alunos;
SELECT * FROM tb_avaliacoes;
SELECT * FROM tb_matriculas;

/*
DROP TABLE tb_alunos;
DROP TABLE tb_avaliacoes;
DROP TABLE tb_matriculas; 
 */

-- UPDATE tb_alunos SET delete_at = NULL WHERE id = 3;