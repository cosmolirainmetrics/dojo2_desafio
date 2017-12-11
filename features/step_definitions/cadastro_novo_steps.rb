
Dado("realizo o login") do                                                         
  @login.load
  @login.login('will', 'will')     
end       

Dado("entrar na tela de cadastro") do                                                 
  @home.entrar_cadastro
end                                                                                   
                                                                                      
Quando("cadastrar os dados {string}, {string}, {string}, {string}") do |assunto, contato, descricao, status|
  @nome = assunto.upcase
  @cadastro.cadastrar(assunto, contato, descricao, status)               
end                                                                                                                                                                       
                                                                                      
Entao("enviar os dados") do                                                           
  expect(@cadastro.assunto_cadastro.text).to eq @nome
end                                                                                   
                                                                                      