*** Settings ***
Library    SeleniumLibrary
Library    Telnet

*** Variables ***
${BORWSER}    chrome
${MENU_ELETRONICOS}    //*[@id="nav-xshop"]/a[8]
${LOGO_AMAZON}    nav-logo-sprites
${PAGE_ELETRONICOS}    //*[@id="nav-subnav"]/a[1]/span
${TEXTO_TITULO_PAGE_ELETRONICOS}    ELETRÔNICOS
${INPUT_PESQUISA}    twotabsearchtextbox 
${BOTAO_PESQUISAR}    nav-search-submit-button

*** Keywords ***
# STEPS
Abrir o navegador
    Open Browser    browser=${BORWSER}
    Maximize Browser Window

Fechar o navegador    
    Capture Page Screenshot
    Close Browser

# DADO
Dado que estou na pagina "${URL}"     
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LOGO_AMAZON}

# QUANDO 
Quando digitar "${PRODUTO}" no campo de busca
    Input Text    locator=${INPUT_PESQUISA}    text=${PRODUTO} 

Quando acessar o menu "Eletronicos"
     Click Element    locator=${MENU_ELETRONICOS} 

# ENTAO
Entao deve exibir o texto "${TITULO}"     
    Wait Until Element Is Visible    locator=//span[@class='a-size-base a-color-base apb-browse-refinements-indent-1 a-text-bold'][contains(.,'${TITULO}')]
    Wait Until Page Contains    text=${TEXTO_TITULO_PAGE_ELETRONICOS}

Entao deve exibir o titulo "${TITULO}"
    Title Should Be    title=${TITULO}

Entao deve listar o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${PRODUTO}')]     

# E 
E deve exibir a categoria "${CATEGORIA}"
    Wait Until Element Is Visible    locator=//span[@dir='auto'][contains(.,'${CATEGORIA}')]

E clicar no botão "pesquisar" 
    Click Button    locator=${BOTAO_PESQUISAR}     