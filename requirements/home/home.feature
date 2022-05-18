Feature: Home
Como um usuário
Quero poder acessar a home da aplicação
Para que eu possa ver meus dados e dos meus amigos do GitHub

Cenário: Dados Obtidos da API
Dado que o cliente acessou a home
Quando a home carregar
Então o sistema deve exibir os dados obtidos para o usuário

Cenário: Erro ao Buscar Dados da API
Dado que o cliente acessou a home
Quando a home carregar
Então o sistema deve retornar uma mensagem de erro