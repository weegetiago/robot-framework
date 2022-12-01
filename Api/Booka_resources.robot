*** Settings ***
Library    RequestsLibrary 
Library    Collections  

*** Variables ***
${BaseUrl}    https://fakerestapi.azurewebsites.net/api/

*** Keywords ***
Conectar a minha API
    Create Session    fakeAPI    ${BaseUrl}


 Get todos os livros   
     ${RESPONSE}    Get Request    fakeAPI    Books 
     Log    ${RESPONSE.text}