#language:pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um Usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados

    Contexto: Página principal
        Dado que eu acesso a página principal

    @logout
    Cenário: Usuário deve ser autorizado

        Quando eu faço login com "michele.oliveira@ftdata.com.br" e "123456"
        Então devo ser autenticado com sucesso
        E devo ver a seguinte mensagem "Olá, michele"

    Esquema do Cenário: Tentativa de login

        Quando eu faço login com "<email>" e "<senha>"
        Então devo ver a seguinte mensagem "<alerta>"

        Exemplos:
        |      email      |  senha  |           alerta           |
        | eu@papito.io    | xpto123 | Senha inválida             |
        | eu@teste.com    |  123456 | Usuário não cadastrado     |
        | caiqueteste.com |  123456 | Email incorreto ou ausente |

    
    #Cenario: Senha errada

     #   Quando eu faço login com "eu@papito.io" e "xpto123"
      #  Então devo ver a seguinte mensagem "Senha inválida"

    #Cenario: Usuário não existe

     #   Quando eu faço login com "eu@teste.com" e "123456"
      #  Então devo ver a seguinte mensagem "Usuário não cadastrado"

    #Cenario: Email incorreto

     #   Quando eu faço login com "caiqueteste.com" e "123456"
      #  Então devo ver a seguinte mensagem "Email incorreto ou ausente"
    