Dado("que eu selecione um registro na lista") do
    @home.entrar_cadastro_editar
    @excluir.selecionar
    
  end
  
  Quando("excluir o registro") do
    @excluir.excluir
  end
  
  Entao("confirmar a exclusão do registro") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  