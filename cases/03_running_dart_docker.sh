echo "Running test 3..."
docker build -f dart.dockerfile -t dart-docker-test-03 . > /dev/null
docker run -p 4040:4040 --name dart-docker-test-03 -d dart-docker-test-03 > /dev/null
sleep 3
response=$(curl --write-out %{http_code} --silent --output /dev/null localhost:4040)
docker container stop dart-docker-test-03 > /dev/null
docker container rm dart-docker-test-03 > /dev/null
docker rmi dart-docker-test-03 > /dev/null
echo "Test 03 - Status ${response}"
