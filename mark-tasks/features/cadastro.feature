#language:pt

Funcionalidade: Cadastro
    Sendo um usuario que precisa controlar minhas atividades
    Posso me cadastrar com meus dados pessoais
    Para que possa ter um controle e gerenciamento dessas atividades

    # Cenario: Cadastro simples
    #     Dado que eu acessei o sistema
    #     E preencho o campo nome com "Cintia"
    #     E preencho o campo email com "cinthya_brito@yahoo.com.br"
    #     E preencho o campo senha com "cbrito80"
    #     Quando clico em OK
    #     Entao o cadastro é realizado com sucesso

    # Cenario: Cadastro Simples
    #     Dados que eu acessei o cadastro
    #     E meus nome é "Cintia"
    #     E meu email é "cinthya_brito@yahoo.com.br"
    #     E minha senha será "12345"
    #     Quando faço o cadastro com estes dados
    #     Então eu redireciono para o painel de tarefas

    Cenário: Cadastro Simples
        Dado que eu acessei a pagina de cadastro
        E possuo os seguinte dados:
            | Nome  | Cintia                     |
            | Email | cinthya_brito@yahoo.com.br |
            | Senha | 123456                     |
        Quando faço o meu cadastro
        Então sou redirecionado para o painel de tarefas

    Cenário: Email não enviado
        Dado que eu acessei a pagina de cadastro
        E possuo os seguinte dados:
            | Nome  | Cintia |
            | Email |        |
            | Senha | 123456 |
        Quando faço o meu cadastro
        Então devo ver uma mensagem de alerta "Email é obrigatório."
    
    Cenário: Senha não informada
        Dado que eu acessei a pagina de cadastro
        E possuo os seguinte dados:
            | Nome  | Cintia                     |
            | Email | cinthya_brito@yahoo.com.br |
            | Senha |                            |
        Quando faço o meu cadastro
        Então devo ver uma mensagem de alerta "Sua senha deve ser pelo menos 6 caracteres."
    
    Cenário: Mínimo de caracteres para senha
        Dado que eu acessei a pagina de cadastro
        E possuo os seguinte dados:
            | Nome  | Cintia                     |
            | Email | cinthya_brito@yahoo.com.br |
            | Senha | 12345                      |
        Quando faço o meu cadastro
        Então devo ver uma mensagem de alerta "Sua senha deve ser pelo menos 6 caracteres."
