# OpenSearch + Fluentd Docker


## Sanity Test

Test if opensearch cluster is running:

```bash
$ curl https://localhost:9200 -ku 'admin:admin'
```

## Filter

Without filter:

```json
{
  "_index": "fluentd",
  "_id": "ky4pxYoBTugAmAGSfxyM",
  "_version": 1,
  "_score": 0,
  "_source": {
    "container_id": "2e1129ed355d3c9893c18051d3c3a922c5ad072c97dad8e1ae8aa1096e68dee7",
    "container_name": "/go-opensearch-app-1",
    "source": "stdout",
    "log": "{\"time\":\"2023-09-24T03:08:57.251701368Z\",\"level\":\"INFO\",\"msg\":\"hello world\",\"path\":\"/\",\"tags\":[\"GET\"]}",
    "tag": "docker.myapp"
  }
}
```

With filter:

```json
{
  "_index": "fluentd",
  "_id": "rC4sxYoBTugAmAGSlBxt",
  "_version": 1,
  "_score": 0,
  "_source": {
    "source": "stdout",
    "log": "{\"time\":\"2023-09-24T03:12:02.773679294Z\",\"level\":\"INFO\",\"msg\":\"hello world\",\"path\":\"/\",\"tags\":[\"GET\"]}",
    "container_id": "2e1129ed355d3c9893c18051d3c3a922c5ad072c97dad8e1ae8aa1096e68dee7",
    "container_name": "/go-opensearch-app-1",
    "level": "INFO",
    "msg": "hello world",
    "path": "/",
    "tags": [
      "GET"
    ],
    "tag": "docker.myapp"
  }
}
```

Useful Links:
- https://github.com/fluent/fluent-plugin-opensearch
- https://opensearch.org/docs/latest/install-and-configure/install-opensearch/docker/
- https://github.com/fluent/fluent-plugin-opensearch/blob/main/README.Troubleshooting.md#cannot-send-events-to-opensearch
- https://docs.fluentd.org/container-deployment/docker-compose
