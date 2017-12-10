class Home < SitePrism::Page    
    element :menu_toogle, 'li[id=quickcreatetop]'
    element :menu_toogle_create, :xpath, '//*[@id="quickcreatetop"]/ul/li[7]/a'
    element :menu_nav_activities, 'a[id=grouptab_3]'
    element :menu_nav_activities_task, :xpath, '//*[@id="moduleTab_6_Tasks"]'

    def entrar_cadastro 
        menu_toogle.click
        menu_toogle_create.click
    end

    def entrar_cadastro_editar
        menu_nav_activities.click
        menu_nav_activities_task.click

    end

end
    
