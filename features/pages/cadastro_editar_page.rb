class CadastroEditar < SitePrism::Page
    element :data_inicio_input, "input[id='date_start_date']"
    element :data_vencimento_input, "input[id='date_due_date']"
    element :descricao_text_area, "textarea[id='description']"
    element :status_select, "select[id='status']"
    element :filtro_btn, :xpath, '//*[@id="pagination"]/td/table/tbody/tr/td[1]/ul[3]/li/a', match: :first
    element :busca_btn, :xpath, '//*[@id="edit-102c00a9-ca2f-4bad-f511-59e74f3192d4"]'
    element :salvar_btn, :xpath, '//*[@id="SAVE"]', match: :first
    element :nomeEditado, 'h2.module-title-text'

    assunto = 'Nova Tarefa'

    def selecionar_registro
        busca_btn.click        
    end

    def editar_dados(data_inicio, data_fim, descricao, status)
        data_inicio_input.set(data_inicio)
        data_vencimento_input.set(data_fim)
        descricao_text_area.set(descricao)
        status_select.select status
    end

    def salvar_dados
        salvar_btn.click
    end
end