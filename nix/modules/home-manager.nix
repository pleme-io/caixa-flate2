# nix/modules/home-manager.nix — auto-generated from flate2.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.flate2; in {
  options.programs.flate2 = {
    enable = lib.mkEnableOption "flate2";
    package = lib.mkOption { type = lib.types.package; default = pkgs.flate2 or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
