def cria_novo_parceiro():
    partner = {
        'name': 'Pizzas Papito',
        'email': 'contato@papito.com.br',
        'whatsapp': '61994408818',
        'business': 'Restaurante'
    }
    return partner


def cria_parceiro_duplicado():
    partner = {
        'name': 'Pizzas Papito2',
        'email': 'contato2@papito.com.br',
        'whatsapp': '61123456789',
        'business': 'Conveniência'
    }
    return partner


def cria_lista_parceiros():
    lista_parceiros = [
        {
            'name': 'Pizzas Zezinho',
            'email': 'zezinho@nada.com.br',
            'whatsapp': '44123456789',
            'business': 'Restaurante'
        },
        {
            'name': 'Mercadinho do Carlos',
            'email': 'carlos@carlos.com.br',
            'whatsapp': '11123456789',
            'business': 'Supermercado'
        },
        {
            'name': 'Adega do Bebum',
            'email': 'contato@bebum.com',
            'whatsapp': '22123456789',
            'business': 'Conveniência'
        }
    ]
    return lista_parceiros

def habilita_parceiro():
    partner = {
        'name': 'Restaturante do Papito',
        'email': 'contato@alguma.com.br',
        'whatsapp': '11123456789',
        'business': 'Restaurante'
    }
    return partner

def apaga_parceiro():
    partner = {
        'name': 'Adega do Papito',
        'email': 'contato@adega.com.br',
        'whatsapp': '44123456789',
        'business': 'Conveniência'
    }
    return partner