echo "Running test 2..."
dart2native -k aot main.dart > /dev/null
dartaotruntime main.aot > /dev/null & 
appId=$!
sleep 2
response=$(curl --write-out %{http_code} --silent --output /dev/null localhost:4040)
kill -9 $appId
rm main.aot
echo "Test 02 - Status ${response}"
