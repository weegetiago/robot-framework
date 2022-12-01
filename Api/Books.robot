*** Settings ***
Documentation    Documentação API:  https://fakerestapi.azurewebsites.net/index.html  
Resource    Booka_resources.robot  
Suite Setup    Conectar a minha API

*** Test Cases ***
Lista todos os livros 
    Get todos os livros