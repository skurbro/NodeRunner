# SHARDEUM

```bash
curl -s https://raw.githubusercontent.com/skurbro/NodeRunner/main/Shardeum/setup.sh | bash
```

### LOGS

```bash
docker logs -f --tail=250 shardeum-validator
```


### Delete Node

```bash
cd $HOME/.shardeum && ./cleanup.sh && cd
```

```bash
rm -rf $HOME/.shardeum/
```