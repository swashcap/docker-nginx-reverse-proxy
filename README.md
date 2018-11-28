# Docker NGINX Reverse Proxy

_A reverse proxy experiment using [Docker's NGINX image](https://hub.docker.com/_/nginx/)._

## How it Works

1. The server, written with [Koa](https://koajs.com) in
   [TypeScript](https://www.typescriptlang.org), exists at _src/index.ts_
2. Running `npm run build` builds the server and outputs it at _lib/index.js_.
   This server runs on the host machine via:

     ```shell
     npm start
     ```
3. The Docker NGINX image configures a server with self-signed SSL certificates
   to serve the host machine's server at <https://localhost:443> (see
   _Dockerfile_ for details). This is image is built and run by the handy
   _scripts/run.sh_.

## Running

Ensure a recent version of [Node.js](https://nodejs.org/en/) and
[Docker](https://www.docker.com) are installed.

1. Clone the repository
2. Install the dependencies with npm:

    ```shell
    npm install
    ```
3. Run the server (`npm start`)
4. Run the Docker container (`./scripts/run.sh`)
5. Visit <https://localhost:443>: a "Hello, world!" text response should be
   visible.
6. Stop the Docker container (`./scripts/stop.sh`)

## Testing

Confirm the entire setup works by running:

```shell
./scripts/test.sh
```
