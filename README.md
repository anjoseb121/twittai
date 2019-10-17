# Twittai

# API DOCS

## Get user information

URL: `http://localhost:3000/api/v1/users/:id`  
METHOD: `GET`  
Params:  

- `id: integer, user id`

Example Response:
```
{
    "id": 2,
    "email": "anjose.121+23@gmail.com",
    "followers": [
        {
            "id": 1,
            "email": "anjose.121@gmail.com",
            "created_at": "2019-10-17T15:13:44.319Z",
            "updated_at": "2019-10-17T15:13:44.319Z"
        }
    ],
    "following_users": [
        {
            "id": 1,
            "email": "anjose.121@gmail.com",
            "created_at": "2019-10-17T15:13:44.319Z",
            "updated_at": "2019-10-17T15:13:44.319Z"
        }
    ],
    "tweets": [
        {
            "id": 1,
            "content": "Example",
            "created_at": "2019-10-17T16:16:53.268Z",
            "user_profile": "http://localhost:3000/api/v1/users/2"
        }
    ]
}
```

## Get user timeline

URL: `http://localhost:3000/api/v1/users/:id/timeline?sort=recent`  
METHOD: `GET`  
Params:  

- `id: integer, user id`
- `sort: string, optional, "recent"`

Example Response:
```
[
    {
        "id": 2,
        "content": "Example 23",
        "created_at": "2019-10-17T16:18:20.177Z",
        "user_profile": "http://localhost:3000/api/v1/users/2"
    },
    {
        "id": 1,
        "content": "Example",
        "created_at": "2019-10-17T16:16:53.268Z",
        "user_profile": "http://localhost:3000/api/v1/users/2"
    }
]
```

## Get user followers

URL: `http://localhost:3000/api/v1/users/:id/followers`  
METHOD: `GET`  
Params:  

- `id: integer, user id`

Example Response:
```
[
    {
        "id": 2,
        "email": "anjose.121+23@gmail.com",
        "followers": [
            {
                "id": 1,
                "email": "anjose.121@gmail.com",
                "created_at": "2019-10-17T15:13:44.319Z",
                "updated_at": "2019-10-17T15:13:44.319Z"
            }
        ],
        "following_users": [
            {
                "id": 1,
                "email": "anjose.121@gmail.com",
                "created_at": "2019-10-17T15:13:44.319Z",
                "updated_at": "2019-10-17T15:13:44.319Z"
            }
        ],
        "tweets": [
            {
                "id": 1,
                "content": "Example",
                "created_at": "2019-10-17T16:16:53.268Z",
                "user_profile": "http://localhost:3000/api/v1/users/2"
            },
            {
                "id": 2,
                "content": "Example 23",
                "created_at": "2019-10-17T16:18:20.177Z",
                "user_profile": "http://localhost:3000/api/v1/users/2"
            }
        ]
    }
]
```

## Get user tweets

URL: `http://localhost:3000/api/v1/users/:id/tweets`  
METHOD: `GET`  
Params:  

- `id: integer, user id`

Example Response:
```
[
    {
        "id": 3,
        "content": "Example 23",
        "created_at": "2019-10-17T16:40:27.323Z",
        "user_profile": "http://localhost:3000/api/v1/users/1"
    }
]
```

## Follow user

URL: `http://localhost:3000/api/v1/users/:id/follow?id_dest=:id_dest`  
METHOD: `GET`  
Params:  

- `id: integer, user id`
- `id_dest: integer, user destination id`

Example Response:
```
{
    "message": "Success!"
}
```

Error Response:
```
{
    "message": "Already following"
}
```

## Unfollow user

URL: `http://localhost:3000/api/v1/users/:id/unfollow?id_dest=:id_dest`  
METHOD: `GET`  
Params:  

- `id: integer, user id`
- `id_dest: integer, user destination id`

Example Response:
```
{
    "message": "Success!"
}
```

Error Response:
```
{
    "message": "Already following"
}
```


## Create tweet

URL: `http://localhost:3000/api/v1/users/:user_id/tweets?content=Example23`  
METHOD: `POST`  
Params:  

- `user_id: integer, user id`
- `content: string, Tweet content text`

Example Response:
```
{
    "id": 4,
    "content": "Example 23",
    "created_at": "2019-10-17T17:06:54.508Z",
    "user_profile": "http://localhost:3000/api/v1/users/1"
}
```
