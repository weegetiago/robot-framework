*** Settings ***
Documentation    Documentação API:  https://fakerestapi.azurewebsites.net/index.html  
Resource    ../resources/Books_resources.robot  
Suite Setup    Conectar a minha API

*** Test Cases ***
01 - Lista todos os livros 
    Requisitar todos os livros
    Confere status code "200"
    Confere o reason "OK"
    Confere se retorna uma lista com "200" itens

02 - Lista um dos livros
    Requisitar o livro "15"
    Confere status code "200"  
    Confere o reason "OK"   
    Confere se retornou o dados corretos do livro "15"