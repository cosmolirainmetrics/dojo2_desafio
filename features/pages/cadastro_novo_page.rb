class CadastroPage < SitePrism::Page
    element :assunto_input, "input[id=name]"
    element :contato_name_input, "input[id=contact_name]"
    element :descricao_text_area, "textarea[id=description]"
    element :status_select, "select[id=status]"
    element :assunto_cadastro, '.module-title-text'
    element :salvar_btn, :button, 'SAVE', match: :first

    def cadastrar(nome, contato, descricao, status)
        assunto_input.set(nome)
        contato_name_input.set(contato)
        descricao_text_area.set(descricao)
        status_select.select status
        salvar_btn.click
    end
end