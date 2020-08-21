# Docker Proxy Example

docker run --init --rm -it -v $(pwd):/tmp -P -p 4010:4010 --name prismProxy  stoplight/prism:latest proxy -h 0.0.0.0 "/tmp/todos.v1.json" https://todos.stoplight.io --errors

# CLI Proxy Example

prism proxy todos.v1.json https://todos.stoplight.io --errors

# Docker Mock Example

docker run --init --rm -it -v $(pwd):/tmp -P -p 4010:4010 --name prism  stoplight/prism:latest mock -h 0.0.0.0 "/tmp/todos.v1.json"

# CLI Mock Example

prism mock todos.v1.json

# Send requests to the Prism server

curl --request GET \
--url ttp://127.0.0.1:4010/todos

http GET ttp://127.0.0.1:4010/todos