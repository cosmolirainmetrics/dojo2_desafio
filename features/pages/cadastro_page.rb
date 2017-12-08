class CadastroPage < SitePrism::Page
    element :subject_input, "input[id=name]"
    element :contact_name_input, "input[id=contact_name]"
    element :description_text_area, "textarea[id=description]"
    element :status_select, "select[id=status]"

    def cadastrar(nome, contato, descricao, status)
        subject_input.set(nome)
        contact_name_input.set(contato)
        description_text_area.set(descricao)
        status_select.select status
    end
end