

  Dado('que eu acesso a página principal') do                                   
    visit 'https://m2-stage.drogasil.com.br/customer/account/login' 
  end                                                                           
                                                                                
  Quando('eu faço login com {string} e {string}') do |email, senha|  
    @email = email        
    find('input[name=emailCpf]').set email 
    find('#password').set senha
    click_button 'faça seu login'

    Capybara.default_max_wait_time = 10
    
    
  end                                                                           
                                                                                
  Então('devo ser autenticado com sucesso') do                                  
    expect(page).to have_content @email
  end                                                                           
                                                                                
  Então('devo ver a seguinte mensagem {string}') do |mensagem|                    
    expect(page).to have_content mensagem
  end                                                                           