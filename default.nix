{ pkgs, lib, config, ... }:

let
  cfg = config.services.httpServer;
  types = lib.types;
in
{
  options.services.httpServer = {
    enable = lib.mkEnableOption ''
      Add HTTP server service.
    '';

    port = lib.mkOption {
      type = types.port;
      default = 8000;
      description = ''
        The TCP port to accept connections.
      '';
    };
  };

  config = lib.mkIf cfg.enable {
    processes.httpServer = {
      exec = "${pkgs.python3}/bin/python -m http.server ${toString cfg.port}";
    };
  };
}
