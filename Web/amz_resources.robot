*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com.br/ 
${MENU_ELETRONICOS}    //*[@id="nav-xshop"]/a[8]
${LOGO_AMAZON}    nav-logo-sprites
${PAGE_ELETRONICOS}    //*[@id="nav-subnav"]/a[1]/span
${TEXTO_TITULO_PAGE_ELETRONICOS}    ELETRÔNICOS

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador    
    Close Browser

Acessar a home do site amazon.com.br     
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS} 

 Entrar no menu "Eletronicos"
     Click Element    locator=${MENU_ELETRONICOS} 

Verificar se aparece a frase "Eletrônicos e Tecnologia"     
    Wait Until Element Is Visible    locator=${PAGE_ELETRONICOS} 
    Wait Until Page Contains    text=${TEXTO_TITULO_PAGE_ELETRONICOS}
    