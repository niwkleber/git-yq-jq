FROM mikefarah/yq:4.25.1@sha256:4ba63ff5b8a446ff932628041bfd5a8be5b99af0720e7a5f6319c3afafcf4d65 AS yq

FROM alpine:3.15.4@sha256:a777c9c66ba177ccfea23f2a216ff6721e78a662cd17019488c417135299cd89
COPY --from=yq /usr/bin/yq /usr/bin/yq

RUN apk add git jq