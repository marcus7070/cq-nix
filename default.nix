# this file should build cq-editor

let
  pkgs = import ./cq-pkgs.nix { };
in {
  cq-editor = pkgs.cq-editor;
  doc = pkgs.python3Packages.cadquery.override { documentation = true; };
  }
