# Adding a cart content
~/projects/resolve/golem/target/debug/golem-cli api-deployment delete localhost:9006
~/projects/resolve/golem/target/debug/golem-cli api-definition update  ~/projects/resolve/golem-worker-gateway-examples/html/api-definition.yaml --def-format yaml
~/projects/resolve/golem/target/debug/golem-cli api-deployment deploy --host localhost:9006 --definition html-example/0.0.37
curl -X POST -H "Content-Type: application/json" -d @/Users/afsalthaj/projects/resolve/golem-worker-gateway-examples/html/request.json http://localhost:9006/v37/1/add-item
http://localhost:9006/v37/1/get-cart-contents
