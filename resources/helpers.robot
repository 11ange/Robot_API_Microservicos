*** Settings ***
Documentation        Helpers

*** Keywords ***
Cria um novo parceiro
    [Arguments]                 ${parceiro}
    
    Apaga parceiro pelo nome    ${parceiro}[name]
    ${resposta}                 POST Partner        ${parceiro}
    ${partner_id}               Set Variable    ${resposta.json()}[partner_id]
    [Return]                    ${partner_id} 