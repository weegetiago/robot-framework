*** Settings ***
Documentation    Essa suite testa no menu Eletronicos do site amazon 
Resource    amz_resources.robot
Test Setup    Abrir o navegador 
Test Teardown    Fechar o navegador 

*** Test Cases *** 

01 Caso de teste - Acesso ao menu "Eletronicos"
    [Documentation]    Esse teste faz validações no menu Eletrônicos e Tecnologia.    
    [Tags]    menus                          
    Acessar a pagina "https://www.amazon.com.br/"   
    Entrar no menu "Eletronicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o titulo da tela é "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"  
    Verificar se aparece a categoria "Tablets"
 
 02 Caso de teste - Pesquisa de produto
     [Documentation]    Esse teste faz validações na pesquisa da pagina.    
     [Tags]    busca_protudo lista_produtos   
     Acessar a pagina "https://www.amazon.com.br/"  
     Digitar "Xbox" no campo de busca 
     Clicar no botão "pesquisar" 
     O sistema deve listar o produto "Xbox"