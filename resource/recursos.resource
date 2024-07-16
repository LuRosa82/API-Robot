*** Settings ***
Library   SeleniumLibrary
Library   Collections
Library   String
Library   RequestsLibrary
Resource  ../resource/variaveis.resource


*** Keywords ***
Create API Session
    ${headers}    Create Dictionary    accept=application/json    Content-Type=application/json
    Create Session    alias=APISuits  url=https://Suits.qacoders-academy.com.br  
    headers=${headers}

Login de acesso  
   ${body}    Create Dictionary    mail=${mail}    password=${password}   
   Log  ${body}
   Create API Session   
   ${response}=    Set Variable    
   ${response}=POST On Session  alias=APISuits  url=/api/login json=${body}
   Log  ${response.json()}
   Set Test Variable    ${TOKEN}     ${response.json()["token"]}

Validar o token e gravar em um header de autorização
   ${headers}  Create Dictionary  Authorization=Bearer ${TOKEN}
   ${response}  GET On Session   alias=APISuits   url=/api/validateToken  headers=${headers}
    Log    ${response.content}
    Log   ${TOKEN}

Criar um novo usuário 
    ${palavra_randomica}=    Generate Random String    8    chars=[LETTERS]
    ${palavra_randomica}=    Convert To Lower Case    ${palavra_randomica}
    ${cpf_randomico}=        Generate Random String   11    chars=[NUMBERS]
    Set Test Variable        ${CPF}                    ${cpf_randomico}
    Set Test Variable        ${EMAIL_TEST}              ${palavra_randomica}@hotmail.com

Cadastrar um usuario
    ${headers}=  Create Dictionary      Authorization=${TOKEN}
    ${body}    Create Dictionary        fullName=${fullName}   mail=${EMAIL_TEST} 
    ...    password=${password}  confirmPassword=${password}   accessProfile=${accessProfile}      cpf=${CPF}
    Log  ${body}
   Create API Session
    ${response}  POST On Session   alias=APISuits   url=/api/user 
    ...  json=${body}    headers=${headers}    expected_status=201
    Log  ${response.json()}
    Set Test Variable    ${ID_USUARIO}   ${response.json()['user']['_id']}
    Set Test Variable    ${ID_USUARIO}   ${response.json()}

Listar usuários
    ${headers}=    Create Dictionary    Authorization=${token} 
    ${response}   GET On Session   alias=APISuits   url=/api/user  headers=${headers}
    Log   ${response.json()}
    Set Test Variable    ${ID_USUARIO}   ${response.json()} 

