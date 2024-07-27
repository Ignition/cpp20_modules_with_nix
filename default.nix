{ pkgs ? import <nixpkgs> {} }:

pkgs.llvmPackages_17.stdenv.mkDerivation {
  pname = "your-app";
  version = "1.0.0";

  src = ./.;

  nativeBuildInputs = [
    pkgs.cmake
    pkgs.ninja
  ];

  meta = {
    description = "Your C++ application description";
    license = "MIT"; # Adjust according to your license
    maintainers = with pkgs.lib.maintainers; [ ];
  };
}
