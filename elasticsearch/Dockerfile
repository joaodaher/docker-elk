FROM elasticsearch:5

ENV ES_JAVA_OPTS="-Des.path.conf=/etc/elasticsearch"

RUN elasticsearch-plugin install --batch x-pack

ADD ./plugins/hunspell /usr/share/elasticsearch/config/
ADD ./plugins/analysis-phonetic-5.1.1.zip /tmp
RUN elasticsearch-plugin install file:///tmp/analysis-phonetic-5.1.1.zip

CMD ["-E", "network.host=0.0.0.0", "-E", "discovery.zen.minimum_master_nodes=1"]
