FROM fluent/fluentd:v1.16-debian-armhf-1

USER root

# OpenSearch client 2.x.x
RUN fluent-gem install fluent-plugin-opensearch -v 1.1.0

USER fluent

ENTRYPOINT ["tini",  "--", "/bin/entrypoint.sh"]

CMD ["fluentd"]
