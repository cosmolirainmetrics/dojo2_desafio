Dado("que eu selecione um registro") do                                                                           
    @home.entrar_cadastro_editar
    @editar.selecionar_registro
  end                                                                                                               
                                                                                                                    
  Quando("alterar os dados {string}, {string}, {string}, {string}") do |data_inicio, data_fim, descricao, status|          
    @editar.editar_dados(data_inicio, data_fim, descricao, status)
  end                                                                                                               
                                                                                                                    
  Entao("confirmar se os dados foram alterados com sucesso") do                                                     
    @editar.salvar_dados                    
  end                                                                                                               
                                                                                                                    