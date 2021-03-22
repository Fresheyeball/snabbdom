{ outputs = { self, nixpkgs, utils }:
    utils.mkShell
      ({ pkgs, ... }: with pkgs;
        { buildInputs =
            [ nodePackages.node2nix
              nodePackages.npm
            ];

          shellHook = ''alias node2nix="node2nix -d -l package-lock.json"'';
        }
      )
      nixpkgs;
}
