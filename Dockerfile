FROM bitriseio/docker-android:latest

# JAVA 8

RUN add-apt-repository -y ppa:openjdk-r/ppa
RUN apt-get update -qq
RUN apt-get install -y openjdk-8-jdk
RUN update-java-alternatives -s /usr/lib/jvm/java-1.8.0-openjdk-amd64
RUN javac -version

CMD bitrise -version
