# nix/modules/nixos.nix — auto-generated from flate2.caixa.lisp
# description: ""
{ config, lib, pkgs, ... }:
let
  cfg = config.services.flate2;
in {
  options.services.flate2 = {
    enable = lib.mkEnableOption "flate2";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.flate2 or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
