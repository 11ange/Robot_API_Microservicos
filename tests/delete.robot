*** Settings ***
Documentation       DELETE /partners
Resource            ${EXECDIR}/resources/base.robot

*** Test Cases ***
Deve apagar um parceiro
    ${parceiro}         Apaga Parceiro

    ${partner_id}       Cria um novo parceiro   ${parceiro}

    Apaga Partners      ${partner_id}
    Status Should Be    204

Deve retornar 404 ao tentar apagar um parceiro inexistente
    ${parceiro}         Apaga parceiro

    ${partner_id}       Cria um novo parceiro   ${parceiro}

    Apaga parceiro pelo nome    ${parceiro}[name]

    Apaga Partners      ${partner_id}
    Status Should Be    404