*** Settings ***
Documentation    Essa suite testa a pagina da amazon 
Resource    amz_resources.robot
Test Setup    Abrir o navegador 
Test Teardown    Fechar o navegador 

*** Test Cases *** 
01 Caso de teste - Pesquisa de produto
    [Documentation]    Esse teste faz validações na pesquisa da pagina. Testa mais de um cenário no mesmo caso de teste.    
    [Tags]    busca_protudo lista_produtos 
    [Template]    01 Caso de teste - Pesquisa de produto
    #PRODUTO    #URL
    Vasco       https://www.amazon.com.br/ 
    Xbox        https://www.amazon.com.br/
    Ps5         https://www.amazon.com.br/   

02 Caso de teste - Acesso ao menu "Eletronicos"
    [Documentation]    Esse teste faz validações no menu Eletrônicos e Tecnologia.    
    [Tags]    menus      
    Dado que estou na pagina "https://www.amazon.com.br/"
    Quando acessar o menu "Eletronicos" 
    Entao deve exibir o texto "Eletrônicos e Tecnologia"
    E deve exibir a categoria "Computadores e Informática"
    E deve exibir a categoria "Tablets" 
 
