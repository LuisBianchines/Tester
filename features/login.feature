#language:pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerencias minhas tarefas
    Sendo um Usuario
    Posso acessar o sistema com meu email e senha previamente cadastrados.

    Cenario: Usuario deve ser autorizado

        Dado que eu acesso a página principal
        Quando eu faço login com "eu@eu.io" e "12345"
        Então devo ser autenticado com sucesso
        E devo ver a seguinte mensagem "Olá, Fernando"

    Cenario: Senha errada

        Dado que eu acesso a página principal
        Quando eu faço login com "eu@eu.io" e "12sf5"
        Então devo ver a seguinte mensagem "Senha inválida"  

    Cenario: Usuário não existe

        Dado que eu acesso a página principal
        Quando eu faço login com "eu@eu.net" e "12345"
        Então devo ver a seguinte mensagem "Usuário não cadastrado."

    Cenario: Email incorreto

        Dado que eu acesso a página principal
        Quando eu faço login com "eueu.io" e "12345"
        Então devo ver a seguinte mensagem "Email incorreto ou ausente."

