class LoginPage < SitePrism::Page
    set_url "/index.php?module=Users&action=Login"

    element :user_name, 'input[id=user_name]'
    element :user_password, 'input[id=user_password]'
    element :btn_login, 'input[id=bigbutton]'
    
    def login(user, password)        
        user_name.set(user)
        user_password.set(password)
        btn_login.click
    end    
end