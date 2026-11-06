{
  description = "Amphiseum Website";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
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
          ])
          ++ (
            with pkgs;
            with beamPackages;
            [
              beamPackages.erlang
              beamPackages.rebar3
            ]
          );
      };
    };
}
