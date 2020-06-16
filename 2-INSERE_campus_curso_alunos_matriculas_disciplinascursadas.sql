-- desc campus;
insert into campus(nome)
    	values ('São José');
-- select * from campus;

-- desc aluno;
insert into aluno(ldap, nome, documento, telefone, email)
    	values
     	(
    	'gustavo.pms1990',
    	'Gustavo Paulo Medeiros da Silva',
    	'1287567497',
    	'99999999',
    	'gustavo@bcd.ifsc.edu.br'
    	),  

     	(
    	'giulio.c',
    	'Giulio Cruz de Oliveira',
    	'1234567890',
    	'96298059',
    	'goliveira@ifsc.edu.br'
    	),  

     	(
    	'angelo.d',
    	'Angelo Damasio Machado',
    	'2345678901',
    	'90234567',
    	'amachado@ifsc.edu.br'
    	),     
     	(
    	'gustavo.m',
    	'Gustavo Matos',
    	'3456789012',
    	'82569087',
    	'gmatos@ifsc.edu.br'
    	),               
     	(
    	'jean.m',
    	'Jean Michel Souza Sant\'Ana',
    	'4567890123',
    	'88567687',
    	'jsantana@ifsc.edu.br'
    	),              
       	(
    	'mathias.s',
    	'Mathias Silva da Rosa',
    	'5678901234',
    	'8564576',
    	'mrosa@ifsc.edu.br'
    	), 
        (
    	'helenLuciany.c',
    	'HelenLuciany Chechinel',
    	'6789012345',
    	'85642342',
    	'hchechinel@ifsc.edu.br'
    	), 
        (
     	'mathias.h',
     	'Mathias Hillesheim',
    	'7890123456',
    	'8243546',
    	'mhillesheim@ifsc.edu.br'
    	),   
        (
       	'daniel.c',
       	'Daniel Cabral Correa',
    	'8901234567',
    	'85443344',
    	'dcorrea@ifsc.edu.br'
    	), 
        (
       	'daniel.t',
       	'Daniel Tatsch',
    	'9012345678',
    	'82687866',
    	'dtatsch@ifsc.edu.br'
    	),
		(
       	'diego.b',
       	'Diego Bitencourt',
    	'0123456789',
    	'84678788',
    	'dbitencourt@ifsc.edu.br'
    	);
-- select * from aluno;


-- desc curso;
insert into curso(numero, CHmin, CHmax, nome, campus)
    	values
    	(
    	'290',
    	'216',
    	'612',
    	'Engenharia de Telecomunicações', 
        (select idcampus from campus where nome = 'São José')
    	);
-- select * from curso;


-- desc matricula;
insert into matricula(numero, aluno, curso)
    	values
    	(
    	'1310002320',
    	(select idaluno from aluno where documento = '1234567890'),   	 
    	(select idcurso from curso where nome = 'Engenharia de Telecomunicações')   	 
    	),
        -- exemplo de aluno da oitava fase
		(
    	'1310002321',
    	(select idaluno from aluno where documento = '2345678901'),   	 
    	(select idcurso from curso where nome = 'Engenharia de Telecomunicações')   	 
    	),
        -- exemplo de aluno da segunda fase
		(
    	'1310002322',
    	(select idaluno from aluno where documento = '3456789012'),   	 
    	(select idcurso from curso where nome = 'Engenharia de Telecomunicações')   	 
    	),
        -- exemplo de aluno da primeira fase
        (
        '1310002323',
    	(select idaluno from aluno where documento = '4567890123'),   	 
    	(select idcurso from curso where nome = 'Engenharia de Telecomunicações')   	 
    	),
        -- exemplo de aluno da decima fase
        (
        '1310002324',
    	(select idaluno from aluno where documento = '5678901234'),   	 
    	(select idcurso from curso where nome = 'Engenharia de Telecomunicações')   	 
    	),
        -- exemplo de aluno da nona fase
        (
        '1310002325',
    	(select idaluno from aluno where documento = '6789012345'),   	 
    	(select idcurso from curso where nome = 'Engenharia de Telecomunicações')   	 
    	),
        -- exemplo de aluno da setima fase
        (
        '1310002326',
    	(select idaluno from aluno where documento = '7890123456'),   	 
    	(select idcurso from curso where nome = 'Engenharia de Telecomunicações')   	 
    	),
        -- exemplo de aluno da sexta fase
        (
        '1310002327',
    	(select idaluno from aluno where documento = '8901234567'),   	 
    	(select idcurso from curso where nome = 'Engenharia de Telecomunicações')   	 
    	),
        -- exemplo de aluno da quinta fase
        (
        '1310002328',
    	(select idaluno from aluno where documento = '9012345678'),   	 
    	(select idcurso from curso where nome = 'Engenharia de Telecomunicações')   	 
    	),
        -- exemplo de aluno da quarta fase
        (
        '1310002329',
    	(select idaluno from aluno where documento = '0123456789'),   	 
    	(select idcurso from curso where nome = 'Engenharia de Telecomunicações')   	 
    	);
        -- exemplo de aluno da terceira fase
        
-- select * from matricula;

-- desc disciplinascursadas;
insert into disciplinascursadas(matricula, disciplina)
    	values
    	(
    	(select idmatricula from matricula where numero = '1310002321'),
    	(select iddisciplina from disciplina where codigo = 'DES29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002321'),
    	(select iddisciplina from disciplina where codigo = 'CAL29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002321'),
    	(select iddisciplina from disciplina where codigo = 'ELI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002321'),
    	(select iddisciplina from disciplina where codigo = 'LOG29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002321'),
    	(select iddisciplina from disciplina where codigo = 'PJI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002321'),
    	(select iddisciplina from disciplina where codigo = 'FSC29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002321'),
    	(select iddisciplina from disciplina where codigo = 'GAL29001') 
    	);
 insert into disciplinascursadas(matricula, disciplina)
    	values
    	(
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'DES29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'CAL29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'ELI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'LOG29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'PJI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'FSC29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'GAL29001') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'CAL29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'QMC29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'CIE29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'FSC29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'ALG29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'PRG29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'CAL29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'QMC29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'CIE29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'ELA29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'CIL29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'PRG29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'MEC29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'CAL29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'RED29004') 
    	),        
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'ELA29004') 
    	),
	    (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'MIC29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'POO29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'MPQ29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'EST29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'RED29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'FSC29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'SOP29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'SIS29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'FEN29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'PRE29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'ANT29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'STD29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'DLP29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'SIS29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'PJI29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'PTG29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'RTX29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'MTG29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'DLP29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'PSD29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'COM29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'BCD29008') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'STE29008') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'PJI29008') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'COM29008') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'PTC29008') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'CSF29008') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'ADM29008') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'ECO29009') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'SUS29009') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'SMU29009') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'ADS29009') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'STC29009') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'CRF29009') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002323'),
    	(select iddisciplina from disciplina where codigo = 'TCC29010')
        );       
 insert into disciplinascursadas(matricula, disciplina)
    	values
    	(
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'DES29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'CAL29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'ELI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'LOG29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'PJI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'FSC29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'GAL29001') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'CAL29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'QMC29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'CIE29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'FSC29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'ALG29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'PRG29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'CAL29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'QMC29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'CIE29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'ELA29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'CIL29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002328'),
    	(select iddisciplina from disciplina where codigo = 'PRG29003') 
    	);            
 insert into disciplinascursadas(matricula, disciplina)
    	values
    	(
    	(select idmatricula from matricula where numero = '1310002329'),
    	(select iddisciplina from disciplina where codigo = 'DES29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002329'),
    	(select iddisciplina from disciplina where codigo = 'CAL29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002329'),
    	(select iddisciplina from disciplina where codigo = 'ELI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002329'),
    	(select iddisciplina from disciplina where codigo = 'LOG29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002329'),
    	(select iddisciplina from disciplina where codigo = 'PJI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002329'),
    	(select iddisciplina from disciplina where codigo = 'FSC29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002329'),
    	(select iddisciplina from disciplina where codigo = 'GAL29001') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002329'),
    	(select iddisciplina from disciplina where codigo = 'CAL29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002329'),
    	(select iddisciplina from disciplina where codigo = 'QMC29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002329'),
    	(select iddisciplina from disciplina where codigo = 'CIE29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002329'),
    	(select iddisciplina from disciplina where codigo = 'FSC29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002329'),
    	(select iddisciplina from disciplina where codigo = 'ALG29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002329'),
    	(select iddisciplina from disciplina where codigo = 'PRG29002') 
    	);       
  insert into disciplinascursadas(matricula, disciplina)
    	values
    	(
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'DES29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'CAL29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'ELI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'LOG29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'PJI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'FSC29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'GAL29001') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'CAL29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'QMC29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'CIE29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'FSC29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'ALG29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'PRG29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'CAL29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'QMC29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'CIE29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'ELA29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'CIL29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'PRG29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'MEC29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'CAL29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'RED29004') 
    	),        
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'ELA29004') 
    	),
	    (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'MIC29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002327'),
    	(select iddisciplina from disciplina where codigo = 'POO29004') 
    	);              
  insert into disciplinascursadas(matricula, disciplina)
    	values
    	(
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'DES29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'CAL29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'ELI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'LOG29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'PJI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'FSC29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'GAL29001') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'CAL29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'QMC29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'CIE29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'FSC29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'ALG29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'PRG29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'CAL29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'QMC29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'CIE29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'ELA29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'CIL29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'PRG29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'MEC29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'CAL29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'RED29004') 
    	),        
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'ELA29004') 
    	),
	    (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'MIC29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'POO29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'MPQ29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'EST29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'RED29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'FSC29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'SOP29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002326'),
    	(select iddisciplina from disciplina where codigo = 'SIS29005') 
    	);              
 insert into disciplinascursadas(matricula, disciplina)
    	values
    	(
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'DES29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'CAL29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'ELI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'LOG29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'PJI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'FSC29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'GAL29001') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'CAL29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'QMC29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'CIE29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'FSC29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'ALG29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'PRG29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'CAL29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'QMC29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'CIE29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'ELA29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'CIL29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'PRG29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'MEC29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'CAL29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'RED29004') 
    	),        
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'ELA29004') 
    	),
	    (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'MIC29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'POO29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'MPQ29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'EST29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'RED29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'FSC29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'SOP29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'SIS29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'FEN29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'PRE29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'ANT29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'STD29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'DLP29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'SIS29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002325'),
    	(select iddisciplina from disciplina where codigo = 'PJI29006') 
    	);               
 insert into disciplinascursadas(matricula, disciplina)
    	values
    	(
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'DES29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'CAL29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'ELI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'LOG29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'PJI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'FSC29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'GAL29001') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'CAL29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'QMC29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'CIE29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'FSC29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'ALG29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'PRG29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'CAL29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'QMC29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'CIE29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'ELA29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'CIL29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'PRG29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'MEC29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'CAL29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'RED29004') 
    	),        
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'ELA29004') 
    	),
	    (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'MIC29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'POO29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'MPQ29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'EST29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'RED29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'FSC29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'SOP29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'SIS29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'FEN29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'PRE29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'ANT29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'STD29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'DLP29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'SIS29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'PJI29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'PTG29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'RTX29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'MTG29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'DLP29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'PSD29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'COM29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'BCD29008') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'STE29008') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'PJI29008') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'COM29008') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'PTC29008') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'CSF29008') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002324'),
    	(select iddisciplina from disciplina where codigo = 'ADM29008') 
    	);               
 insert into disciplinascursadas(matricula, disciplina)
    	values
    	(
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'DES29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'CAL29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'ELI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'LOG29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'PJI29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'FSC29001') 
        ),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'GAL29001') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'CAL29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'QMC29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'CIE29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'FSC29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'ALG29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'PRG29002') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'CAL29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'QMC29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'CIE29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'ELA29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'CIL29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'PRG29003') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'MEC29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'CAL29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'RED29004') 
    	),        
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'ELA29004') 
    	),
	    (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'MIC29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'POO29004') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'MPQ29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'EST29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'RED29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'FSC29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'SOP29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'SIS29005') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'FEN29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'PRE29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'ANT29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'STD29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'DLP29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'SIS29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'PJI29006') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'PTG29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'RTX29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'MTG29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'DLP29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'PSD29007') 
    	),
        (
    	(select idmatricula from matricula where numero = '1310002320'),
    	(select iddisciplina from disciplina where codigo = 'COM29007') 
    	);               
-- select * from disciplinascursadas;



-- select * from disciplina;






