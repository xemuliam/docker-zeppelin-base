FROM       openjdk:8-alpine
MAINTAINER Viacheslav Kalashnikov <xemuliam@gmail.com>
ARG        DIST_MIRROR=http://archive.apache.org/dist/zeppelin
ARG        VERSION=0.6.2
ENV        ZPLIN_HOME=/opt/zeppelin
RUN        apk update && apk add --upgrade curl && \
           mkdir -p ${ZPLIN_HOME} && \
           curl ${DIST_MIRROR}/zeppelin-${VERSION}/zeppelin-${VERSION}-bin-all.tgz | tar xvz -C ${ZPLIN_HOME} && \
           mv ${ZPLIN_HOME}/zeppelin-${VERSION}-bin-all/* ${ZPLIN_HOME} && \
           rm -rf *.tar.gz && \
           apk del curl && \
           rm -rf /var/cache/apk/*
EXPOSE     8080 8443
WORKDIR    ${ZPLIN_HOME}
CMD        ./bin/zeppelin.sh
