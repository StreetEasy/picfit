{
  "port": 8080,
  "storage": {
    "src": {
      "type": "s3",
      "access_key_id": "$AWS_ACCESS_KEY_ID",
      "secret_access_key": "$AWS_SECRET_ACCESS_KEY",
      "bucket_name": "$SRC_BUCKET_NAME",
      "acl": "public-read",
      "region": "us-east-1",
      "location": ""
    },
    "dst": {
      "type": "s3",
      "access_key_id": "$AWS_ACCESS_KEY_ID",
      "secret_access_key": "$AWS_SECRET_ACCESS_KEY",
      "bucket_name": "$DST_BUCKET_NAME",
      "acl": "public-read",
      "region": "us-east-1",
      "location": "test"
    }
  },
  "kvstore": {
    "type": "redis",
    "host": "$REDIS_HOST",
    "port": "6379",
    "password": "",
    "db": 0
  },
  "options": {
    "quality": 70
  },
  "shard": {
    "width": 2,
    "depth": 2
  }
}
