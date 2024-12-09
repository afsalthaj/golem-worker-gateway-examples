# Adding a cart content
~/projects/resolve/golem/target/debug/golem-cli api-deployment delete localhost:9006
~/projects/resolve/golem/target/debug/golem-cli api-definition update  ~/projects/resolve/golem-worker-gateway-examples/html/api-definition.yaml --def-format yaml
~/projects/resolve/golem/target/debug/golem-cli api-deployment deploy --host localhost:9006 --definition html-example/0.0.1
curl -X POST -H "Content-Type: application/json" -d @/Users/afsalthaj/projects/resolve/golem-worker-gateway-examples/html/request.json http://localhost:9006/v37/1/add-item
http://localhost:9006/v37/1/get-cart-contents


# Security Scheme addition
./target/debug/golem-cli api-security-scheme create --scheme.id shopping-cart-security-scheme --provider.type google --client.id $GOOGLE_CLIENT_ID --client.secret $GOOGLE_CLIENT_SECRET --redirect.url http://localhost:9006/auth/callback --scopes openid,email,profile

# Get the used component
~/projects/resolve/golem/target/debug/golem-cli component get --component-name afsal

# For Loop and Loop Reduction
# i.e, same example

# CORS
curl -X GET http://localhost:9006/v1/afsal/hello -v

# Component Constraints Demo
~/projects/resolve/golem/target/debug/golem-cli component update --component-name afsal test-components/auction.wasm

