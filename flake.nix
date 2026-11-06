{
  description = "Amphiseum Website";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    mk-script.url = "github:givikuna/nix-mkScript";
  };

  outputs =
    {
      self,
      nixpkgs,
      mk-script,
    }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };

      mkScript = mk-script.lib.mkScript pkgs { };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        nativeBuildInputs = [
          (mkScript "dev-start" "dev-scripts/dev-start.elv")
        ]
        ++ (with pkgs; [
          gleam

          elvish
        ])
        ++ (
          with pkgs;
          with beamPackages;
          [
            beamPackages.erlang
            beamPackages.rebar3
          ]
        );

        # buildInputs = [ ];
      };
    };
}
