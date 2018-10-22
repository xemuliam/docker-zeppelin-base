FROM       alpine:3.8
MAINTAINER Viacheslav Kalashnikov <xemuliam@gmail.com>
ARG        DIST_MIRROR=http://archive.apache.org/dist/zeppelin
ARG        VERSION=0.8.0
ENV        ZEPPELIN_HOME=/opt/zeppelin \
           JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk \
           PATH=$PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
RUN        apk add --no-cache bash curl jq openjdk8 && \
           mkdir -p ${ZEPPELIN_HOME} && \
           curl ${DIST_MIRROR}/zeppelin-${VERSION}/zeppelin-${VERSION}-bin-all.tgz | tar xvz -C ${ZEPPELIN_HOME} && \
           mv ${ZEPPELIN_HOME}/zeppelin-${VERSION}-bin-all/* ${ZEPPELIN_HOME} && \
           rm -rf ${ZEPPELIN_HOME}/zeppelin-${VERSION}-bin-all && \
           rm -rf *.tgz
EXPOSE     8080 8443
VOLUME     ${ZEPPELIN_HOME}/logs \
           ${ZEPPELIN_HOME}/notebook
WORKDIR    ${ZEPPELIN_HOME}
CMD        ./bin/zeppelin.sh run
