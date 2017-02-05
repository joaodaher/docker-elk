# Elastic
FROM joaodaher/br-elasticsearch:latest

MAINTAINER Joao Daher <joao.daher.neto@gmail.com>

ADD ./elasticsearch/config/ /usr/share/elasticsearch/config/

CMD ["-E", "network.host=0.0.0.0", "-E", "discovery.zen.minimum_master_nodes=1"]

# Kibana

FROM kibana:5

RUN kibana-plugin install x-pack

ADD ./kibana/config/ /etc/kibana/

RUN chown -R kibana /usr/share/kibana/optimize/
