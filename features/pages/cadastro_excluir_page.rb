class CadastroExcluir < SitePrism::Page
    element :checkbox_input, "input[name='mass[]']", match: :first
    element :acao_btn, "li[id=actionLinkTop]"
    element :excluir_btn, "input[id='delete_button']"

    def selecionar
        checkbox_input.click
    end

    def excluir
        acao_btn.click
    end
end