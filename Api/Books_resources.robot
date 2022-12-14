*** Settings ***
Documentation    Documentação API:  https://fakerestapi.azurewebsites.net/index.html  
Library    RequestsLibrary 
Library    Collections  

*** Variables ***
${BaseUrl}    https://fakerestapi.azurewebsites.net/api/v1/

&{BOOK_15}    id=${15}
...    title=Book 15
...    pageCount=${1500}

*** Keywords ***
Conectar a minha API
     Create Session    fakeAPI    ${BaseUrl}    

Alterar o titulo do livro "${ID_LIVRO}" para "${TITLE_LIVRO}"
     ${HEADERS}    Create Dictionary    content-type=application/json 
     ${RESPONSE}    PUT On Session    fakeAPI    Books/${ID_LIVRO}
     ...                             data={"id": "${ID_LIVRO}","title": "${TITLE_LIVRO}","description": "Velejador","pageCount": 690,"excerpt": "Magna in elite dolore aliquam lorem clita blandit acusam dolore erat magna diam. Erat kasd stet.","publishDate": "2022-12-11T14:12:34.562Z"}
     ...                             headers=${HEADERS}                                          
     Log    ${RESPONSE.text}
     Set Test Variable    ${RESPONSE}

Cadastrar um novo livro
     ${HEADERS}    Create Dictionary    content-type=application/json 
     ${RESPONSE}    POST On Session    fakeAPI    Books
     ...                             data={"id": 2322,"title": "Tiago Weege","description": "Velejador","pageCount": 690,"excerpt": "Magna in elite dolore aliquam lorem clita blandit acusam dolore erat magna diam. Erat kasd stet.","publishDate": "2022-12-11T14:12:34.562Z"}
     ...                             headers=${HEADERS}                                          
     Log    ${RESPONSE.text}
     Set Test Variable    ${RESPONSE}

Requisitar todos os livros   
     ${RESPONSE}    GET On Session    fakeAPI    Books 
     Log    ${RESPONSE.text}
     Set Test Variable    ${RESPONSE} 
   
Requisitar o livro "${ID_LIVRO}"  
     ${RESPONSE}    GET On Session    fakeAPI    Books/${ID_LIVRO} 
     Log    ${RESPONSE.text}
     Set Test Variable    ${RESPONSE}    

Confere status code "${STATUSCODE_DESEJADO}"
    Should Be Equal As Strings     ${RESPONSE.status_code}    ${STATUSCODE_DESEJADO}

Confere o reason "${REASON_DESEJADO}"     
    Should Be Equal As Strings    ${RESPONSE.reason}     ${REASON_DESEJADO}

Confere se retorna uma lista com "${QTDE}" itens
    Length Should Be    ${RESPONSE.json()}    ${QTDE} 

Confere se retornou o dados corretos do livro "${ID_LIVRO}"
    Dictionary Should Contain Item     ${RESPONSE.json()}      id    ${BOOK_15.id}  
    Dictionary Should Contain Item     ${RESPONSE.json()}      title    ${BOOK_15.title}
    Dictionary Should Contain Item     ${RESPONSE.json()}      pageCount    ${BOOK_15.pageCount}  
    Should Not Be Empty    ${RESPONSE.json()["description"]}
    Should Not Be Empty    ${RESPONSE.json()["excerpt"]}
    Should Not Be Empty    ${RESPONSE.json()["publishDate"]}