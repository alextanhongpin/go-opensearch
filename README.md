# OpenSearch + Fluentd Docker


## Sanity Test

Test if opensearch cluster is running:

```bash
$ curl https://localhost:9200 -ku 'admin:admin'
```

Useful Links:
- https://github.com/fluent/fluent-plugin-opensearch
- https://opensearch.org/docs/latest/install-and-configure/install-opensearch/docker/
- https://github.com/fluent/fluent-plugin-opensearch/blob/main/README.Troubleshooting.md#cannot-send-events-to-opensearch
- https://docs.fluentd.org/container-deployment/docker-compose
