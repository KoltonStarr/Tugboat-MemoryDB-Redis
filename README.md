# Tugboat-MemoryDB-Redis
All things to do with MemoryDB and Redis!

## Context 
Installing and using Redis locally in a Docker container seemed the easiest thing to do. 

This project uses the [Redis Stack](https://redis.io/docs/install/install-stack/) to fully utilize the Redis Insights UI that comes pre-installed 
along with several other useful features of Redis. 

## Getting Started
To run the Redis Stack use the **run-redis.sh** script. If you have no already done so, run ```chmod +x run-redis.sh``` to 
give executable permissions to the script. You must also provide a container name for the script. Here is an example:

```./run-redis.sh redis_server```

To enter into a Redis CLI session use the **./redis-cli** script and provide the name of the container that you provided in the previous step. Here is an example: 

```./redis-cli.sh redis_server```

## Basic Commands
Use SET and GET to work with basic string types. This includes binary data. 

- ```SET name Kolton```
- ```SET image ```
- ```SET page_header "<h1> Ahoy Maties! </h1>"```

use HSET and HGET to work with hashes. 


