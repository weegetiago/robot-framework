*** Settings ***
Documentation    Essa suite testa no menu Eletronicos do site amazon 
Resource    amz_resources.robot
Test Setup    Abrir o navegador 
Test Teardown    Fechar o navegador 

*** Test Cases *** 

01 Caso de teste - Acesso ao menu "Eletronicos"
    [Documentation]    Esse teste verifica xpto.    
    [Tags]    menus                          
    Acessar a home do site amazon.com.br 
    Entrar no menu "Eletronicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
#     Verificar se o titulo da tela é "Eletrônicos e Tecnologia | amazon.com.br"
#     Verificar se aparece a categoria "Computadores e Informática"

# 01 Caso de teste - Pesquisa de produto
#     [Documentation]    Esse teste verifica xpto.    
#     [Tags]    busca_protudo lista_produtos   
#     Acessar a home do site amazon.com.br 
#     Digitar "Xbox" no campo de busca 
#     Clicar no botão de pesquisa 
#     O sistema deve listar o produto pesquisado (conferir um)