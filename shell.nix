# this file should create an environment with cadquery

let 
  pkgs = import ./cq-pkgs.nix { };
in
  pkgs.mkShell {
    buildInputs = [
      pkgs.python3Packages.cadquery
      pkgs.python3Packages.ocp
    ];
  }
