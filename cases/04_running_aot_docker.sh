echo "Running test 4..."
docker build -f aot.dockerfile -t dart-docker-test-04 . > /dev/null
docker run -p 4040:4040 --name dart-docker-test-04 -d dart-docker-test-04 > /dev/null
sleep 3
response=$(curl --write-out %{http_code} --silent --output /dev/null localhost:4040)
docker container stop dart-docker-test-04 > /dev/null
docker container rm dart-docker-test-04 > /dev/null
docker rmi dart-docker-test-04 > /dev/null
echo "Test 04 - Status ${response}"
