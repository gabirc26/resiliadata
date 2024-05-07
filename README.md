# resiliadata

Desenvolvendo um banco de dados que irá armazenar dados
importantes que será utilizado pelo sistema RESILIADATA

O sistema irá auxiliar na avaliação de quais são as tecnologias que as empresas parceiras
estão utilizando e quem são seus colaboradores

Vamos ter o cadastro de empresas parceiras, cadastro de tecnologias com a opção de
selecionar a área (webdev, dados, marketing, etc.), uma tabela para registrar quais
tecnologias as empresas estão utilizando e uma tabela para cadastro de colaboradores.

#1. Quais são as entidades necessárias?

Entidades necessárias:
Empresa Parceira
Tecnologia
Uso de Tecnologia
Colaborador

#2. Quais são os principais campos e seus respectivos tipos?

Empresa Parceira:
ID: inteiro (chave primária)
Nome: texto
Setor: texto
Localização: texto

Tecnologia:
ID: inteiro (chave primária)
Nome: texto
Área: texto

Uso de Tecnologia:
ID: inteiro (chave primária)
ID da Empresa: inteiro (chave estrangeira referenciando Empresa Parceira)
ID da Tecnologia: inteiro (chave estrangeira referenciando Tecnologia)

Colaborador:
ID: inteiro (chave primária)
Nome: texto
Cargo: texto
ID da Empresa: inteiro (chave estrangeira referenciando Empresa Parceira)

#3. Como essas entidades estão relacionadas?

Uma Empresa Parceira pode utilizar várias tecnologias, então há uma relação de "um para muitos" entre Empresa Parceira e Uso de Tecnologia.
Uma Tecnologia pode ser utilizada por várias empresas, então há uma relação de "um para muitos" entre Tecnologia e Uso de Tecnologia.
Um Colaborador pertence a uma única Empresa Parceira, então há uma relação de "um para muitos" entre Empresa Parceira e Colaborador.

#4. Simule 2 registros para cada entidade.

Empresa Parceira:
ID | Nome           | Setor        | Localização
----------------------------------------------
1  | Empresa A      | Tecnologia   | São Paulo
2  | Empresa B      | Marketing    | Rio de Janeiro

Tecnologia:
ID | Nome           | Área
----------------------------
1  | Python         | Desenvolvimento de Software
2  | SQL            | Banco de Dados

Uso de Tecnologia:
ID | ID da Empresa | ID da Tecnologia
-------------------------------------
1  | 1             | 1
2  | 1             | 2
3  | 2             | 2

Colaborador:
ID | Nome           | Cargo           | ID da Empresa
-----------------------------------------------------
1  | João           | Desenvolvedor   | 1
2  | Maria          | Analista        | 2

