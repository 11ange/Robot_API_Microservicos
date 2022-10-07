*** Settings ***
Documentation       Conexoes com o banco de dados
Library             RobotMongoDBLibrary.Delete
Library             RobotMongoDBLibrary.Find

*** Variables ***
&{MONGO_URI}        connection=mongodb+srv://bugereats:xCG8Ln9AGR4DgBDQ@cluster0.6ljgbgm.mongodb.net/?retryWrites=true&w=majority    database=test   collection=partner

*** Keywords ***
Apaga parceiro pelo nome
    [Arguments]    ${nome_parceiro}

    ${filtro}       Create Dictionary
    ...             name=${nome_parceiro}

    DeleteOne       ${MONGO_URI}        ${filtro}

Busca parceiro pelo nome
    [Arguments]    ${nome_parceiro}

    ${filtro}       Create Dictionary
    ...             name=${nome_parceiro}

    ${resultado}    Find    ${MONGO_URI}    ${filtro}

    [Return]        ${resultado}[0]