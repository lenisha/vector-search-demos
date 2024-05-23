export url=YOUR_SEARCH_URL
export admin_key=YOUR_ADMIN_KEY

echo -----
echo Updating the skillset...
curl -X PUT $url/skillsets/margies-skillset?api-version=2024-03-01-Preview -H "Content-Type: application/json" -H "api-key: $admin_key" -d @update-skillset.json


echo -----
echo Updating the index...
curl -X PUT $url/indexes/margies-index?api-version=2024-03-01-Preview -H "Content-Type: application/json" -H "api-key: $admin_key" -d @update-index.json



echo -----
echo Updating the indexer...
curl -X PUT $url/indexers/margies-indexer?api-version=2024-03-01-Preview -H "Content-Type: application/json" -H "api-key: $admin_key" -d @update-indexer.json

echo -----
echo Resetting the indexer
curl -X POST $url/indexers/margies-indexer/reset?api-version=2024-03-01-Preview -H "Content-Type: application/json" -H "Content-Length: 0" -H "api-key: $admin_key" 



echo -----
echo Rerunning the indexer
 curl -X POST $url/indexers/margies-indexer/run?api-version=2024-03-01-Preview -H "Content-Type: application/json" -H "Content-Length: 0" -H "api-key: $admin_key" 

