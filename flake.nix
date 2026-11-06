{
  description = "Amphiseum Website";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    mk-script.url = "github:givikuna/nix-mkScript";
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        nativeBuildInputs =
          (with pkgs; [
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
