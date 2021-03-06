FROM maven:3-jdk-8
RUN wget http://ftp.kddilabs.jp/infosystems/apache/atlas/2.0.0/apache-atlas-2.0.0-sources.tar.gz
RUN tar xzf apache-atlas-2.0.0-sources.tar.gz
WORKDIR /apache-atlas-sources-2.0.0
RUN pwd && mvn clean -DskipTests install
RUN mvn clean -DskipTests package -Pdist
