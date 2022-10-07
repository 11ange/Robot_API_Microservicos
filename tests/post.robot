*** Settings ***
Documentation       POST /partners
Resource            ${EXECDIR}/resources/base.robot

*** Test Cases ***
Deve criar um novo parceiro
    ${parceiro}      Cria novo parceiro

    Apaga parceiro pelo nome    ${parceiro}[name]

    ${response}     POST Partner        ${parceiro}

    Status Should Be    201

    # Log To Console      ${response.json()}[partner_id]
    ${resultado}    Busca parceiro pelo nome    ${parceiro}[name]    
    # Log To Console  ${resultado}[0][_id]

    Should Be Equal     ${response.json()}[partner_id]  ${resultado}[_id]

Deve retornar que já existe o parceiro

    ${parceiro}      Cria parceiro duplicado
    
    Apaga parceiro pelo nome    ${parceiro}[name]
    
    POST Partner        ${parceiro}

    ${response}     POST Partner        ${parceiro}

    Status Should Be    409

    Should Be Equal     ${response.json()}[message]     Duplicate company name