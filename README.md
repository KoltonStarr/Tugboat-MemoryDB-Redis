# Tugboat-MemoryDB-Redis
All things to do with MemoryDB and Redis! This project is designed to help you quickly get up and running with MemoryDB for Redis.

This project really has 2 parts to it:
- Local testing and tom-foolery with standalone Redis. 
- Configuring and deploying a MemoryDB with Redis cluser in your AWS account. 

## Pre-requisites
- You must have the Docker engine installed and running on the host machine you are using(local or remote). 
- You must have an AWS account. 
- You must have your AWS CLI configured on your host machine with an IAM role that has the appropriate access to MemoryDB.

## Project Overview & File Tour
The ```/local-data``` directory acts as a mounted volume for the redis server running in a container. It essentially acts as a dummy data folder 
for testing and experimentation.

The ```set-file-data``` is an executable. It is a simple program that uses the Redis SDK to connect to the Redis server to show how you can store the contents of a file as a value to a redis key. You can store straight binary or some encoded representation of it like base64. 

If you are interested in ivestigating the source code of the aformentioned executable then take a peek inside the ```/_set-file-data-src``` directory.

## Getting Started Locally with Redis
Installing and using Redis locally in a Docker container is the easiest way to get started. 

This project uses the [Redis Stack](https://redis.io/docs/install/install-stack/) to fully utilize the Redis Insights UI that comes pre-installed 
along with several other useful features of Redis.

To run the Redis Stack use the **run-redis.sh** script. If you have not already done so, run ```chmod +x run-redis.sh``` to 
give executable permissions to the script. You must also provide a container name for the script. Here is an example:

```./run-redis.sh my_redis_server```

To enter into a Redis CLI session use the **./redis-cli** script and provide the name of the container that you provided in the previous step. Here is an example: 

```./redis-cli.sh my_redis_server```

## Basic Redis Commands
Use SET and GET to work with basic string types. This includes binary data. 

- ```SET name Kolton```
- ```SET page_header "<h1> Ahoy Maties! </h1>"```
- If you want to see how file data can be set as a value then run ```./set-file-data```. It will upload the base64 representation of the badge PNG and set it as a value for a key named: "Image"

Use HSET and HGET to work with hashes. 


