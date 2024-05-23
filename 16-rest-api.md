# Rest API for Azure AI Search 

 - Import [Vector Search Postman Collection](./Vector%20Search%20QuickStart.postman_collection.json)
 - Create environment and populate  env variables, search api with `2024-03-01-preview`


 Example Vector Search

 ```json
 {
     "vectorQueries":[ {
        "vector": [
            -0.009154141,
             0.018708462,
            -0.02178128, ...
            -0.00086512347
        ],
        "fields": "contentVector",
        "k": 5,
        "kind":"vector",
        "exhaustive": true
      }
    ],
    "search": "what azure services support full text search",
    "select": "title, content, category",
    "queryType": "semantic",
    "semanticConfiguration": "my-semantic-config",
    "queryLanguage": "en-us",
    "captions": "extractive",
    "answers": "extractive",
    "filter": "category eq 'Databases'",
    "top": "10"
}
 ```


  Example Vector Search with Integrated Vectorization

  ```json
  {
    "vectorQueries":[ {
        "text": "full text search",
        "fields": "contentVector",
        "k": 5,
        "kind":"text",
        "exhaustive": true
      }
    ],
    "search": "search",
    "select": "title, content, category",
    "queryType": "semantic",
    "semanticConfiguration": "my-semantic-config",
    "queryLanguage": "en-us",
    "captions": "extractive",
    "answers": "extractive",
    "top": "10"
}
  ```
