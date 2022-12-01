*** Settings ***
Documentation    Documentação API:  https://fakerestapi.azurewebsites.net/index.html  
Library    RequestsLibrary 
Library    Collections  

*** Variables ***
${BaseUrl}    https://fakerestapi.azurewebsites.net/api/v1/

*** Keywords ***
Conectar a minha API
    Create Session    fakeAPI    ${BaseUrl}

Get todos os livros   
     ${RESPONSE}    Get Request    fakeAPI    books 
     Log    ${RESPONSE.text}
     Set Test Variable    ${RESPONSE} 

Confere status code "${STATUSCODE_DESEJADO}"
    Should Be Equal As Strings     ${RESPONSE.status_code}    ${STATUSCODE_DESEJADO}

Confere o reason "${REASON_DESEJADO}"     
    Should Be Equal As Strings    ${RESPONSE.reason}     ${REASON_DESEJADO}

Confere se retorna uma lista com "${QTDE}" itens
    Length Should Be    ${RESPONSE.json()}    ${QTDE}    