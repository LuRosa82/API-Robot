*** Settings ***
Resource    ../resources/recursos.resource
Resource    ../resources/variaveis.resource

*** Test Cases ***
CT1 - Incluir diretoria
     Create API Session
     Login de acesso
     Criar palavras rondomicas para diretoria
     Incluir diretoria
CT2 - Diretoria com números
     Create API Session
     Login de acesso
     Diretoria com números
CT3 - Diretoria com caracteres@
     Create API Session
     Login de acesso
     Diretoria com caracteres@
CT4 - Diretoria em branco
     Create API Session
     Login de acesso
     Diretoria em branco
CT5 - Diretoria com letras maiúsculas
     Create API Session
     Login de acesso
     Criar palavras rondomicas para diretoria
     Diretoria com letras maiúsculas
CT6 - Diretoria com letras minúsculas
     Create API Session
     Login de acesso
     Criar palavras rondomicas para diretoria
     Diretoria com letras minúsculas
CT7 - Diretoria com caracteres especial &
     Create API Session
     Login de acesso
     Criar palavras rondomicas para diretoria
     Diretoria com caracteres especial &

