#language: pt
#utf-8

 Funcionalidade: Cadastro de tasks
    Eu como usuario do sistema suite crm
    Quero controlar as tasks do sistema
    Para cadastrar, editar e excluir uma tarefa

    Contexto: 
    Dado realizo o login

    @cadastro
    Esquema do Cenario: Cadastrar Task
        Dado entrar na tela de cadastro
        Quando cadastrar os dados "<assunto>", "<contato>", "<descricao>", "<status>"       
        Entao enviar os dados

    Exemplos:
    | assunto | contato | descricao | status |
    | Nova Tarefa | Cosmo Rodrigo | Nova task Automatizada | In Progress|

    @editar
    Esquema do Cenario: Editar Task
        Dado que eu selecione um registro
        Quando alterar os dados "<data_inicio>", "<data_fim>", "<descricao>", "<status>"
        Entao confirmar se os dados foram alterados com sucesso

        Exemplos:
    | data_inicio | data_fim | descricao | status |
    | 12/10/2017 | 12/10/2017 | Editar task Automatizada | Completed|

    @excluir
    Cenario: Excluir Task
    Dado que eu selecione um registro na lista
    Quando excluir o registro
    Entao confirmar a exclusão do registro


