class Home < SitePrism::Page    
    element :menu_toogle, 'li[id=quickcreatetop]'
    element :menu_toogle_create, :xpath, '//*[@id="quickcreatetop"]/ul/li[7]/a'

    def entrar_cadastro 
        menu_toogle.click
        menu_toogle_create.click
    end

end
    
