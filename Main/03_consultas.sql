USE biblioteca;

SELECT 
l.titulo
, l.numeroEdicao
, l.editora
, l.anoPublicacao
,COUNT(e.ISBN_livro) AS N_exemplares
,COUNT(b.codigoEmprestimo) as N_emprestimos
  FROM livro as l
  INNER JOIN exemplar e ON e.ISBN_livro = l.ISBN
  LEFT JOIN emprestimo b ON b.codigoExemplar = e.codigoExemplar
  GROUP BY l.titulo
  ORDER BY N_emprestimos DESC
  ;

SELECT a.nome
, COUNT(DISTINCT au.ISBN_livro) QNT_Livros 
, COUNT(b.codigoEmprestimo) N_emprestimos
FROM autor a
INNER JOIN autoria au ON au.id_autor = a.id
INNER JOIN livro l ON au.ISBN_livro = l.ISBN
INNER JOIN exemplar e ON e.ISBN_livro = l.ISBN
LEFT JOIN emprestimo b ON b.codigoExemplar = e.codigoExemplar
GROUP BY a.nome 
ORDER BY N_emprestimos DESC
;

SELECT COUNT(m.id) total_multas
,SUM(m.taxaAtraso*m.diasAtraso) soma_Multas
, (SELECT SUM(m.taxaAtraso*m.diasAtraso) FROM multa m WHERE m.diasAtraso > 0 AND m.pago = TRUE) pagas
, (SELECT SUM(m.taxaAtraso*m.diasAtraso) FROM multa m WHERE m.diasAtraso > 0 AND m.pago = FALSE) receber
FROM multa m
WHERE m.diasAtraso > 0
;



SELECT u.nome
,u.email
,t.telefone
,SUM(DISTINCT m.diasAtraso * m.taxaAtraso) multas
 FROM usuario u
 JOIN telefone t ON t.usuario_id = u.id
 JOIN emprestimo e ON e.id_usuario = u.id 
 JOIN multa m ON m.codigoEmprestimo = e.codigoEmprestimo
 WHERE m.pago = FALSE
 GROUP BY u.nome
 ORDER BY multas DESC
;

SELECT u.nome
,t.telefone 
,u.email
,l.titulo
,e.dataEmprestimo 
,DATE_ADD(e.dataEmprestimo, INTERVAL e.diasEmprestado DAY) dataLimite,
DATEDIFF(NOW(), DATE_ADD(e.dataEmprestimo, INTERVAL e.diasEmprestado DAY)) as diasAtraso
FROM usuario u
JOIN telefone t ON t.usuario_id = u.id
JOIN emprestimo e ON e.id_usuario = u.id 
JOIN exemplar ex ON ex.codigoExemplar = e.codigoExemplar
JOIN livro l ON l.ISBN = ex.ISBN_livro
WHERE DATEDIFF(NOW(), DATE_ADD(e.dataEmprestimo, INTERVAL e.diasEmprestado DAY)) > 0 
ORDER BY u.nome ASC
;