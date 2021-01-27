FROM docker.elastic.co/logstash/logstash:7.10.2
COPY vendor/ /opt/logstash/vendor/
RUN logstash-plugin install logstash-output-jdbc

RUN rm -f /usr/share/logstash/pipeline/logstash.conf
COPY pipeline/ /usr/share/logstash/pipeline/
# COPY config/ /usr/share/logstash/config/

