# docker-images

## (Everything is WIP right now)

[vala-lang on docker hub](https://hub.docker.com/u/valalang)

The eventual goal of this repo is to provide high quality, up-to-date, docker images with multiple compiler versions and distros:

Target vala versions:
- Current stable (0.46.0)
- LTS (0.40.16)

Target distros:
- Ubuntu
    - bionic (18.04)
    - disco (19.04)
- Elementary
    - Juno
- Fedora
    - latest (30)
    - rawhide (32)
- Alpine
    - latest

Once these have been created, the next goal is to become Docker-official, so that users can do `docker run --rm -it vala:latest`.
