FROM uber/prototool:1.10.0

RUN apk add --no-cache nodejs nodejs-npm
RUN npm i -g --production grpc_tools_node_protoc_ts
