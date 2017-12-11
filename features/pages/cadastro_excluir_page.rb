class CadastroExcluir < SitePrism::Page
    element :checkbox_input, "input[name='mass[]']", match: :first
    element :acao_btn, "a[id='delete_listview_top']"
    element :excluir_btn, "a[id='delete_listview_top']", match: :first

    def selecionar
        checkbox_input.click
    end

    def excluir
        acao_btn.click
        excluir_btn.click
    end
end