*** Settings ***
Resource    ../resources/recursos.resource
Resource    ../resources/variaveis.resource

*** Test Cases ***
Cenário com POST: Cadastrar um novo usuário com sucesso
    Create API Session  #puxa do Login
    Login de acesso     #puxa do Login
    Criar um novo usuário
    Cadastrar um usuário
