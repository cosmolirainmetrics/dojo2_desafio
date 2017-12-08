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




