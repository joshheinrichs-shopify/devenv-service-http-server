# devenv-service-http-server

A simple example of defining a custom devenv service.

## usage

```yml
# devenv.yaml
inputs:
  devenv-service-http-server:
    url: github:joshheinrichs-shopify/devenv-service-http-server
```

```nix
# devenv.nix
{ pkgs, lib, config, inputs, ... }:
{
  imports = [
    inputs.devenv-service-http-server.service
  ];

  services.httpServer.enable = true;
}
```
