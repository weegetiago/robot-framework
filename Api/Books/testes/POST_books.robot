*** Settings ***
Documentation    Documentação API:  https://fakerestapi.azurewebsites.net/index.html  
Resource    ../resources/Books_resources.robot  
Suite Setup    Conectar a minha API

*** Test Cases ***
01 - Cadastro de livro
    Cadastrar um novo livro
    Confere status code "200"
    Confere o reason "OK"
