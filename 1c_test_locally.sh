export $(xargs < .env)
echo $server_hostname
echo $http_path

curl -X POST "http://localhost:9000/2015-03-31/functions/function/invocations" -d "{\"server_hostname\": \"$server_hostname\", \"http_path\": \"$http_path\", \"access_token\": \"$access_token\"}" |jq .
