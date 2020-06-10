echo "Running test 1..."
dart main.dart > /dev/null &
appId=$!
sleep 2
response=$(curl --write-out %{http_code} --silent --output /dev/null localhost:4040)
kill -9 $appId
echo "Test 01 - Status ${response}"