*** Settings ***
Documentation       PUT /partners
Resource            ${EXECDIR}/resources/base.robot

*** Test Cases ***
Deve habilitar um parceiro
    ${parceiro}         Habilita Parceiro

    ${partner_id}       Cria um novo parceiro   ${parceiro}

    ${resposta}         Habilita Partners       ${partner_id}
    Status Should Be    200

Deve retornar 404 ao tentar habilitar um parceiro inexistente
    ${parceiro}         Cria novo parceiro

    ${partner_id}       Cria um novo parceiro   ${parceiro}

    Apaga parceiro pelo nome    ${parceiro}[name]

    ${resposta}         Habilita Partners       ${partner_id}
    Status Should Be    404

Deve desabilitar um parceiro
    ${parceiro}         Habilita Parceiro

    ${partner_id}       Cria um novo parceiro   ${parceiro}

    Habilita Partners   ${partner_id}
    ${resposta}         Desabilita Partners    ${partner_id}
    Status Should Be    200

Deve retornar 404 ao tentar desabilitar um parceiro inexistente
    ${parceiro}         Cria novo parceiro

    ${partner_id}       Cria um novo parceiro   ${parceiro}

    Apaga parceiro pelo nome    ${parceiro}[name]

    ${resposta}         Desabilita Partners       ${partner_id}
    Status Should Be    404