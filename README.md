**replaced by flakes such as https://github.com/marcus7070/cq-flake**

# cq-nix
Nix expression showing how to pin CadQuery/CQ-editor to a specific commit from the cq-dev repo. I use these files within my own CadQuery projects to ensure they are reproducible across multiple computers and multiple releases of NixOS/nixpkgs.

## Python packages
Run `nix-shell` and you will be placed in an environment with the python packages `cadquery` and `OCP` available (and hopefully your IDE will pick them up and show completions and docstrings).

## CQ-editor
Run `nix-build -A cq-editor` and a symlink called `result` will be placed in the directory. Running `result/bin/cq-editor` will start CQ-editor.

## Docs
Run `nix-build -A doc` and a symlink called `result-doc` will be placed in the directory with the sphinx generated HTML docs for CadQuery. Note the build of the docs is currently broken on the CadQuery side.
