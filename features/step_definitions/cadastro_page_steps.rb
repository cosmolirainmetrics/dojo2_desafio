
Dado("realizo o login") do                                                         
  @login.load
  @login.login('will', 'will')     
end       

Dado("entrar na tela de cadastro") do                                                 
  @home.entrar_cadastro
end                                                                                   
                                                                                      
Quando("cadastrar os dados {string}, {string}, {string}, {string}") do |assunto, contato, descricao, status|
  @cadastro.cadastrar(assunto, contato, descricao, status)               
end                                                                                                                                                                       
                                                                                      
Entao("enviar os dados") do                                                           
  pending # Write code here that turns the phrase above into concrete actions         
end                                                                                   
                                                                                      