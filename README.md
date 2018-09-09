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

### Requirements (not complete)

#### Mac
TBC

#### Linux 
TBC

#### Windows
TBC

- Docker, either
  - Docker for Windows (Windows 10 Pro)
  - Docker Toolbox for Hyper-V (older Windows Pro)
  - Docker Toolbox with VirtualBox (older Windows Home)
  
- Enable symlinks on Windows
  - If using Docker Toolbox, you can do all Docker operation from within *Docker Quickstart Terminal*. You might need to run *Docker Quickstart Terminal* as Administrator
  
  - To use Command Prompt or PowerShell with Docker, you might need to enable symlinks by:
    1. Download [Polsedit](http://www.southsoftware.com/polsedit.zip) and add your user to the `SeCreateSymbolicLinkPrivilege` section
    2. Run Command Prompt or PowerShell with `Run as administrator`.