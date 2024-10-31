```
cd golem/test-components
golem-cli component add --component-name shopping-cart shopping-cart.wasm
```

Note down the component id, and update it in in api_definition.json

Then ,

```
golem-cli api-definition add api-definition.json

```