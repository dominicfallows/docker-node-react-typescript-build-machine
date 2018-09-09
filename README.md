# docker-node-react-typescript-build-machine
Local Ubuntu development environment for parity across machines, for Node, React, React Native and TypeScript

## Commands

| Action | Shortcut Command | Docker Compose Command |
|--------|------------------|------------------------|
| To create the build console for the first time, or after updates | `yarn build`| `docker-compose build` |
| To start the build console | `yarn start` or `yarn up` | `docker-compose up -d` |
| To stop the build console | `yarn stop` or `yarn down` | `docker-compose stop` and `docker-compose down` |
| To connect to the build console | `yarn bash` | `docker-compose exec buildconsole bash` |
| To list containers and their status | `yarn ps` | `docker-compose ps` |