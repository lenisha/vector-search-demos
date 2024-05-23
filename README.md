# Azure AI Search Labs 

## Steps for getting it running

1. Replace variables and Run `./setup/setup.sh` to create needed Azure services ( AI Search, Storage, AI Services Multi Account ) and upload data from data folder to Azure Storage

2. Create a .env with these variables (copy  from `.env-sample`) For simplicity we will use key based authentication 

```shell
AZURE_OPENAI_SERVICE=YOUR-SERVICE-NAME
AZURE_OPENAI_SERVICE_KEY=
AZURE_OPENAI_DEPLOYMENT_NAME=YOUR-OPENAI-DEPLOYMENT-NAME
AZURE_OPENAI_ADA_DEPLOYMENT=YOUR-EMBED-DEPLOYMENT-NAME
AZURE_SEARCH_SERVICE=YOUR-SEARCH-SERVICE-NAME
AZURE_SEARCH_SERVICE_KEY=
AZURE_COMPUTERVISION_SERVICE=YOUR-COMPUTERVISION-SERVICE-NAME
AZURE_COMPUTERVISION_SERVICE_KEY=
```

## Basic Azure AI Search Labs

Basic Azure Search Labs are based on MSLearn Path https://learn.microsoft.com/en-us/training/paths/implement-knowledge-mining-azure-cognitive-search/

|  |  | 
| ---- | ----------- |
| [01 - Data Import and Indexing ](./01-ai-search.md)| Index and Search Unstructured Data |
| [01a - Add BuiltIn Translation Skill ](./https://learn.microsoft.com/en-us/training/modules/implement-advanced-search-features-azure-cognitive-search/05-enhance-index-to-include-multiple-languages)| Enhance an index to include multiple languages |
| [02 - Add Custom Skill ](./02-ai-search-skill.md)||


## Vector Based AI Search Labs

|  |  | 
| ---- | ----------- |
| [10 - Import and Vectorize Data](./10-import-vectorize.md) | Load and Index Data using Integrated Vectorization |
| [11 - Embedding Lab](./11-vector_embeddings.ipynb)| Generate Various embeddings and closest Neigbors |
| [12 - Vector Search Lab](./12-vector-azure_ai_search.ipynb)| Use Azure SDK to query index utilizing integrated vectorization and by generating embeddings in the application |
| [13 - Keyword, Hybdid, Semantic Seach Lab](./13-vector-search_relevance.ipynb )| Use Azure SDK to query index and show relevance of the results with Keyword, Vector, Hybid, Semantic searches |
| [14 - Image Embeddings Search Lab](./14-vector-image_search.ipynb )| Generate Image embeddings and query them with Azure Search SDK |
| [15 - Vectorize and Push data Lab](./15-vector-azure-search-vector-python-sample.ipynb ) |  Vectorize and save dataset in JSON format and load into index using Push API |
| [16 - REST API Samples Lab](./16-rest-api.md )| Use Azure Search REST API Calls in Postmap to create and push data into index and perform queries |



### References
https://github.com/Azure-Samples/azure-search-comparison-tool

https://github.com/Azure-Samples/azure-search-knowledge-mining/tree/main/workshops

https://github.com/Azure/azure-search-vector-samples/blob/main/demo-python

https://techcommunity.microsoft.com/t5/ai-azure-ai-services-blog/announcing-the-public-preview-of-integrated-vectorization-in/