# Curso de Flutter no Balta.io by Gabuldev
O objetivo desse curso é ensinar sobre o consumo de API Rest da melhor forma possível, aprendendo a fazer toda a comunicação em um incrível aplicativo de blog.

## O que vamos aprender?
- Conexão com o protocolo __HTTP__
- Criar um cliente __HTTP__
- Para o projeto, iremos aprender utilizando o package __Dio__
- Os métodos __POST__, __GET__, __PUT__, __DELETE__
- Tratamento de exceções
- Criar uma única instância do cliente http
- Criar um __interceptor__ para ajudar a ver os logs das chamadas
- Comunicação do cliente http resultando em modificações na tela. Exemplo: ficar em loading, exibir o error e renderizar a tela de sucesso.

## O projeto
- Vamos utilizar o padrão MVC (Model, View, Controller)
- Para gerenciar o estado, iremos utilizar o ChangeNotifier
- Vamos separar o projeto por feature.

### Estrutura
    features
        home
            home_controller.dart
            home_view.dart
    shared
        widgets
        utils
        services
        models
        user_model.dart 

### Consumo de dados via API REST

Vamos comunicar com a API desenvolvida no curso de .NET backend na plataforma Balta.io.
Aqui embaixo,você vai encontrar as rotas e os exemplos de json existentes na API para facilitar o seu desenvolvimento.

#### Users

```json
GET - /user
RESPONSE - {
    "id": "UDSFD",
    "name": "Lorem Ipsum",
    "profileUrl": "http://image",
    "createdAt": "2022-01-01-19:00",//DATETIME
    "email": "email@email.com",
    "bio": "Flutter Developer" 
}

GET - /users
RESPONSE - [
     {
        "id": "UFSDF",
        "name": "Name",
        "profileUrl": "Profile",
    },
     {
        "id": "UFSDF",
        "name": "Name",
        "profileUrl": "Profile",
    }
]

PUT - /user/:id
BODY - {
     "name": "Novo nome",
     "email":"novoemail@email.com",
     "password": "novasenha",
     "profileUrl": "novaurl"
}
RESPONSE - {
    "success": true,
    "message": "Usuário atualizado com sucesso"
}

GET - /users/followers/:userId
RESPONSE - [
    {
        "id": "UFSDF",
        "name": "Name",
        "profileUrl": "Profile",
    },    {
        "id": "UFSDF",
        "name": "Name",
        "profileUrl": "Profile",
    }
]

POST - /user/follow/:userId
BODY - {
    "userId": "id"
}
RESPONSE - {
    "success": true,
    "message": "Agora você segue o usuário x"
}


POST - /user/unfollow/:userId
BODY - {
    "userId": "id"
}
RESPONSE - {
    "success": true,
     "message": "Você deixou de seguir o usuário x"
}

```

#### POSTS

```json
GET - /posts
PARAMS - {
    "filter":"", //"by-user","news" , "trending"
    //Busca baseado no que o usuário digitar
    "search": "Android"
 }
RESPONSE - {
    "title": "Title post",
    "tags": ["android","flutter"],
    "readTime": "5 min",
    "photoUrl": "http://image/com",
    "hasReadLater": false,
    "author": {
        "id": "UFSDF",
        "name": "Name",
        "profileUrl": "Profile",
    }
}

GET - /post/content/:id
RESPONSE - {
    "photoUrl": "photoUrl",
    "title": "Lorem",
    "author": {
        "id": "UFSDF",
        "name": "Name",
        "profileUrl": "Profile",
    },
    "tags": ["Tech","Android", "iOS"],
    "content": "Lorem Ipsum is simply...",
    "images": ["https://image"],
    "hasReadLater": false,
}

POST - /post
Body - {
    "userId": "userId",
    "content": "fsafasdfasdf",
    "photoUrl": "http://image.com",
    "images": ["http://image.com","http://image.com"],
    "title": "Title",
    "tags": ["tags",],
    "fieldOfInterest": ["Flutter", "Android"]
}
Response - {
    "success": true,
    "message": "Seu artigo foi publicado com sucesso!"
}


```


<h2>📝 Licença</h2>

<p>
   Esse repositório está sobre a Licença GNU General Public License v3.0, e você pode vê-la no arquivo <a href="https://github.com/caneto/calculator-app/blob/main/LICENSE">LICENSE</a> para mais detalhes. 😉
</p>



[![Linkedin Badge](https://img.shields.io/badge/-Carlos%20Alberto-292929?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/canetorj/)](https://www.linkedin.com/in/canetorj/)
            