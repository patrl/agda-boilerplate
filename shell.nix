{ nixpkgs ? import <nixpkgs> {} }:
let
  inherit (nixpkgs) pkgs;
  myAgda = pkgs.agda.withPackages (p: [ p.standard-library ]);
in
pkgs.stdenv.mkDerivation {
  name = "agda-env";
  buildInputs = [
    myAgda
  ];
}
