Feature: i18n
Como um usuário
Quero poder acessar a aplicação em ingles americano e em português brasileiro
Para que a aplicação possa ser usada com facilidade nos EUA e no Brasil.

Cenário: Tradução completa
Dado que o usuário acessou a aplicação
Quando a aplicação carregar
Então o sistema deve exibir todos os textos de forma dinâmica entre inglês americano ou em português brasileiro

Cenário: Tradução incompleta
Dado que o usuário acessou a aplicação
Quando a aplicação carregar
Então o sistema deve exibir os textos não traduzidos em inglês