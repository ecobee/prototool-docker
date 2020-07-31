# prototool

> Extended [uber/prototool](https://github.com/uber/prototool) docker image with support for generating .d.ts (TypeScript) for grpc-node.

## Configuration

Example `prototool.yaml` wich generates both NodeJS and browser code:

```yaml
protoc:
  version: 3.11.0
lint:
  group: uber2
generate:
  plugins:
    # Node
    - name: js
      flags: import_style=commonjs,binary
      output: ../gen/node
    - name: ts
      flags: service=grpc-node
      output: ../gen/node
      path: protoc-gen-ts
    - name: grpc
      output: ../gen/node
      path: grpc_node_plugin
    # Browser
    - name: js
      flags: import_style=commonjs
      output: ../gen/web
    - name: grpc-web
      flags: import_style=commonjs+dts,mode=grpcwebtext
      output: ../gen/web
      path: protoc-gen-grpc-web
```

## How to use

```bash
docker run --rm -v "$(pwd):/work" citilink/prototool:latest prototool generate
```

## Documentation

For more information please refer to the [original documentation](https://github.com/uber/prototool/blob/dev/docs/docker.md).
