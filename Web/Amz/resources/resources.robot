*** Settings ***
Library    SeleniumLibrary
Library    Telnet
Test Setup    Abrir o navegador 
Test Teardown    Fechar o navegador 

*** Variables ***
${BORWSER}    chrome

*** Keywords ***
# STEPS
Abrir o navegador
    Open Browser    browser=${BORWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser