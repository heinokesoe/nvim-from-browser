## Nvim From Browser

#### This is the containerized neovim that can be used from anywhere with browser. You can also directly download or upload files from browser to it with trz and tsz.

### Usage

#### With podman-compose

```yaml
version: "3"
services:
  nvim:
    image: docker.io/heinokesoe/nvim:latest
    container_name: nvim
    ports:
      - "3000:3000"
    volumes:
      # if you want to use with your own config or without configuring neovim, uncomment this
      # - ./config:/root/.config
      - ./local:/root/.local
      - ./workspace:/root/workspace
    # if you want to use with reverse proxy, uncomment this but you will have to use with ssl to work trz and tsz for transferring files
    # environment:
    #   - REVERSE_PROXY=true
    hostname: nvim
    restart: unless-stopped
```

### NOTE
- Transferring files with trz and tsz will only work with browsers that support File System Access API. You can see this [here](https://developer.mozilla.org/en-US/docs/Web/API/File_System_Access_API#browser_compatibility).

### Github Repositories that I used for this project
- [tsl0922/ttyd](https://github.com/tsl0922/ttyd)
- [trzsz/trzsz-go](https://github.com/trzsz/trzsz-go)
