# creates pkgs with cq-dev overlay
{}:
let
  # change these two lines to move to a different version of cq-dev (ie. cadquery and cq-editor)
  rev = "b5539e12cc3f1ea2b83ad621f88be67bf5cdacf7";
  sha256 = "1s1a5y680mx32061saga9wfiicby17r5i82s977v0wxy3zwy2xcn";

  pkgs0 = import <nixpkgs> { };
  cq-dev = pkgs0.fetchFromGitHub {
    owner = "marcus7070";
    repo = "cq-dev";
    inherit rev sha256;
    fetchSubmodules = true;
  };
  overlay = cq-dev + "/overlay.nix";
in
  import <nixpkgs> {
    overlays = [ (import overlay) ];
  }
