*** Settings ***
Documentation       GET /partners
Resource            ${EXECDIR}/resources/base.robot

Suite Setup         Cria lista de parceiros

*** Test Cases ***
Deve retornar uma lista de parceiros
    ${resposta}             GET Partners
    Status Should Be        200

    ${tamanho}              Get Length      ${resposta.json()}
    Should Be True          ${tamanho} > 0

Deve buscar um parceiro pelo nome
    ${resposta}             Busca Partners    bebum
    Status Should Be        200

    ${tamanho}              Get Length      ${resposta.json()}
    Should Be True          ${tamanho} == 1

# Gancho para os testes acima
*** Keywords ***
Cria lista de parceiros
    ${lista_parceiros}      Cria Lista Parceiros
    FOR  ${p}  IN  @{lista_parceiros}
        # Apaga parceiro pelo nome    ${lista_parceiros}[name]
        POST Partner    ${p}
    END