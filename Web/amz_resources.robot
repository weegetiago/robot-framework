*** Settings ***
Library    SeleniumLibrary
Library    Telnet

*** Variables ***
${MENU_ELETRONICOS}    //*[@id="nav-xshop"]/a[8]
${LOGO_AMAZON}    nav-logo-sprites
${PAGE_ELETRONICOS}    //*[@id="nav-subnav"]/a[1]/span
${TEXTO_TITULO_PAGE_ELETRONICOS}    ELETRÔNICOS
${INPUT_PESQUISA}    twotabsearchtextbox 
${BOTAO_PESQUISAR}    nav-search-submit-button


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador    
    Capture Page Screenshot
    Close Browser

Acessar a pagina "${URL}"     
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LOGO_AMAZON}

Entrar no menu "Eletronicos"
     Click Element    locator=${MENU_ELETRONICOS} 

Verificar se aparece a frase "${TITULO}"     
    Wait Until Element Is Visible    locator=//span[@class='a-size-base a-color-base apb-browse-refinements-indent-1 a-text-bold'][contains(.,'${TITULO}')]
    Wait Until Page Contains    text=${TEXTO_TITULO_PAGE_ELETRONICOS}

Verificar se o titulo da tela é "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${CATEGORIA}"
    Wait Until Element Is Visible    locator=//span[@dir='auto'][contains(.,'${CATEGORIA}')]

Digitar "${PRODUTO}" no campo de busca   
    Input Text    locator=${INPUT_PESQUISA}    text=${PRODUTO} 

Clicar no botão "pesquisar" 
    Click Button    locator=${BOTAO_PESQUISAR}

O sistema deve listar o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${PRODUTO}')]   