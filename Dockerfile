FROM uber/prototool:1.10.0

ENV GRPC_WEB_VERSION=1.2.1
RUN curl -sSL \
  https://github.com/grpc/grpc-web/releases/download/${GRPC_WEB_VERSION}/protoc-gen-grpc-web-${GRPC_WEB_VERSION}-linux-x86_64 \
  -o /usr/local/bin/protoc-gen-grpc-web && \
  chmod +x /usr/local/bin/protoc-gen-grpc-web

RUN apk add --no-cache nodejs nodejs-npm
RUN npm i -g --production grpc_tools_node_protoc_ts
