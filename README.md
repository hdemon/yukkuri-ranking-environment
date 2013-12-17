## Build a virtual machine to development

### 1. fill public key

edit `./chef/data_bugs/users/yukkuri.json` and fill `public_key` in your public key string.

```
{
  "id":"yukkuri",
  "public_key": "fill your public key string in this space"
}
```

### 2. provision

```
vagrant up
knife solo prepare vagrant@127.0.0.1 -p 2222
knife solo cook vagrant@127.0.0.1 -p 2222
ssh yukkuri@127.0.0.1 -p 2222 -i ~/.ssh/id_rsa.yukkuri
```
