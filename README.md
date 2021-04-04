# README
Library for requesting to API with Ruby on Rails

## API Document
### Rails API proto
/api/v1/users

**Servers**  
http://localhost:3000/

## Users  
**GET** /api/v1/users/:id  

Parameters  
*id*  

Responses   applicatiom/json 

```

{
    "status": "SUCCESS",
    "data": {
        "id": 3,
        "name": "username2",
        "age": 29,
        "address": "dummy-address",
        "sex": 1,
        "created_at": "2021-04-04T02:22:20.000Z",
        "updated_at": "2021-04-04T02:22:20.000Z"
    }
}

```


**POST** api/v1/users/

Request body  applicatiom/json  

Example Value

```

{
    "user": {
        "name": "username",
        "age": 29,
        "address": "dummy-address",
        "sex": 1
    }
}

```
