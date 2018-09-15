# Docker with Node, React (CRA, CRNA) and TypeScript - Build Machine

Local Ubuntu development environment for parity across machines, for Node, React, React Native and TypeScript

## Commands

This repo has a few shortcut commands, which trigger docker-compose commands. This is to standardize the experience across environments (Windows autocomplete woes etc). You can use either the shortcuts or the docker-compose commands.

| Action | Shortcut Command | Docker Compose Command |
|--------|------------------|------------------------|
| To create the build console for the first time, or after updates | `yarn build`| `docker-compose build` |
| To start the build console | `yarn start` or `yarn up` | `docker-compose up -d` |
| To stop the build console but not remove the container or networks created | `yarn stop` | `docker-compose stop` |
| To stop the build console and remove the container and networks created | `yarn down` | `docker-compose down` |
| To connect to the build console terminal | `yarn bash` | `docker-compose exec buildconsole bash` |
| To list containers and their status | `yarn ps` | `docker-compose ps` |
| To see the container logs | `yarn logs` | `docker-compose logs` |

## Requirements

- [Docker CE](https://docs.docker.com/install/) - for Mac, Linux or Windows 10 Pro
- [Docker Toolbox](https://docs.docker.com/toolbox/overview/) for Windows 10 Home or older Windows

## `/data` Shared Folder

We bind the `/data` shared from the repo to `/data` path on the running container. I either put projects directly into this folder, or symlink them into this folder from other locatoins on my devices. Gitignore is setup to ignore any folder/file (other that `/data/README.me`) so you'll have to handle Git yourself from within projects you put in `/data`.

Note, on Windows, you will need to enable symlinks before you can create them in `/data`. This is now possible on Windows 10 by enabling Developer Mode then using [mklink](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/mklink) - for folders I have tested using a directory hard link (a Directory Junction) for example `mklink /j .\data\ProjectFolder c:\Users\user1\ProjectFolder`.