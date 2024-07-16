*** Settings ***
Resource    ../resources/recursos.resource
Resource    ../resources/variaveis.resource

*** Test Cases ***
CT1 - Incluir departamento
    Create API Session
    Login de acesso
    Criar palavras rondomicas para departamento
    Incluir departamento

CT2 - Departamento com números
     Create API Session
     Login de acesso
     Departamento com números
CT3 - Departamento com caracteres@
     Create API Session
     Login de acesso
     Departamento com caracteres@
CT4 - Departamento em branco
     Create API Session
     Login de acesso
     Departamento em branco
CT5 - Departamento com letras maiúsculas
     Create API Session
     Login de acesso
     Criar palavras rondomicas para departamento
     Departamento com letras maiúsculas
CT6 - Departamento com letras minúsculas
     Create API Session
     Login de acesso
     Criar palavras rondomicas para departamento
     Departamento com letras minúsculas
CT7 - Departamento com caracteres especial &
     Create API Session
     Login de acesso
     Criar palavras rondomicas para departamento
     Departamento com caracteres especial &
CT8 - Departamento com 50 caracteres
     Create API Session
     Login de acesso
     Criar palavras rondomicas para departamento
     Departamento com 50 caracteres
CT9 - Departamento com 51 caracteres
     Create API Session
     Login de acesso
     Departamento com 51 caracteres

