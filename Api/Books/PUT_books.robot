*** Settings ***
Documentation    Documentação API:  https://fakerestapi.azurewebsites.net/index.html  
Resource    Books_resources.robot  
Suite Setup    Conectar a minha API

*** Test Cases ***
01 - Alterar um livro 
    Alterar o titulo do livro "15" para "Tiago Weege"
    Confere status code "200"
    Confere o reason "OK"
    Requisitar o livro "15"
    Confere se retornou o dados corretos do livro "15"
