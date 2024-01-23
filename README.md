# Tugboat-MemoryDB-Redis
All things to do with MemoryDB and Redis!

## Overview 
Installing and using Redis locally in a Docker container seemed the easiest thing to do. 

This project uses the [Redis Stack](https://redis.io/docs/install/install-stack/) to fully utilize the Redis Insights UI that comes pre-installed 
along with several other useful features of Redis. 

The ```/local-data``` directory acts as a mounted volume for the redis server running in a container. It essentially acts as a dummy data folder 
for testing and experimentation.

The ```/ex-binary-data-value``` directory is the golang source code (which uses the golang Redis SDK) for the executuable: ```set-file-data```. It is a simple program that can show how you can use the contents of a file as a value to a redis key. You can store straight binary or some encoded representation of it like base64. 

## Getting Started
To run the Redis Stack use the **run-redis.sh** script. If you have no already done so, run ```chmod +x run-redis.sh``` to 
give executable permissions to the script. You must also provide a container name for the script. Here is an example:

```./run-redis.sh redis_server```

To enter into a Redis CLI session use the **./redis-cli** script and provide the name of the container that you provided in the previous step. Here is an example: 

```./redis-cli.sh redis_server```

## Basic Commands
Use SET and GET to work with basic string types. This includes binary data. 

- ```SET name Kolton```
- ```SET page_header "<h1> Ahoy Maties! </h1>"```
- If you want to see how file data can be set as a value then run ```./set-file-data```. It will upload the base64 representation of the badge PNG and set it as a value for a key named: "Image"

Use HSET and HGET to work with hashes. 


