*** Settings ***
Documentation       Camada de serviços
Library             RequestsLibrary

*** Variables ***
${BASE_URL}         http://localhost:3333/partners
&{HEADER}           Content-Type=application/json       auth_user=qa        auth_password=ninja

*** Keywords ***
POST Partner
    [Arguments]     ${payload}

    ${response}     POST        ${BASE_URL}     
    ...             json=${payload}
    ...             headers=${HEADER}
    ...             expected_status=any

    [Return]        ${response}

GET Partners
    ${response}     GET        ${BASE_URL}     
    ...             headers=${HEADER}
    ...             expected_status=any

    [Return]        ${response}

Busca Partners
    [Arguments]     ${nome}

    ${query}        Create Dictionary       name=${nome}

    ${response}     GET        ${BASE_URL}
    ...             params=${query}
    ...             headers=${HEADER}
    ...             expected_status=any

    [Return]        ${response}

Habilita Partners
    [Arguments]     ${partner_id}

    ${response}     PUT        ${BASE_URL}/${partner_id}/enable
    ...             headers=${HEADER}
    ...             expected_status=any

    [Return]        ${response}

Desabilita Partners
    [Arguments]     ${partner_id}

    ${response}     PUT        ${BASE_URL}/${partner_id}/disable
    ...             headers=${HEADER}
    ...             expected_status=any

    [Return]        ${response}

Apaga Partners
    [Arguments]     ${partner_id}

    ${response}     DELETE        ${BASE_URL}/${partner_id}
    ...             headers=${HEADER}
    ...             expected_status=any

    [Return]        ${response} 