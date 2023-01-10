*** Settings ***
Documentation    Documentação API:  https://fakerestapi.azurewebsites.net/index.html  
Resource    Books_resources.robot  
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
    
03 - Cadastro de livro
    Cadastrar um novo livro
    Confere status code "200"
    Confere o reason "OK"

04 - Alterar um livro 
    Alterar o titulo do livro "15" para "Tiago Weege"
    Confere status code "200"
    Confere o reason "OK"
    Requisitar o livro "15"
    Confere se retornou o dados corretos do livro "15"


05 - Delerar um livro 
    Deleta o livro "5"
    Confere status code "200"
