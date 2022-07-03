# Migrator
To use the migrator you should run the docker file like this:

``` sh
docker run -it \
	--rm \
	-v $(pwd)/migrations:/var/app/migrations:z \
	--network <networkname> \
	migrator <networkname> <port> <user> <pass> <dbname>
```
