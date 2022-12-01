*** Settings ***
Documentation    Documentação API:  https://fakerestapi.azurewebsites.net/index.html  
Resource    Books_resources.robot  
Suite Setup    Conectar a minha API

*** Test Cases ***
Lista todos os livros 
    Get todos os livros
    Confere status code "200"
    Confere o reason "OK"
    Confere se retorna uma lista com "200" itens