# Hurl test

Test out [hurl](https://hurl.dev/) without installing it on your local machine using Docker.

## Usage

Clone this repo, and then build the Docker image:

```bash
~$ docker build -t {user}/hurl -f Dockerfile .
```
Run the container and attach bind mount. This makes stuff in the `hurls` directory available in the running container:

```bash
docker run -ti -v path/to/hurl-test/hurls:/hurls {user}/hurl
```

From the bash prompt in the container, you can run a hurl thusly: `hurl hurls/test.hurl`. Adding new `.hurl` files into the `hurls` directory on the host makes them available in the running container.

More [usage example](https://hurl.dev/docs/samples.html) on the hurl website.