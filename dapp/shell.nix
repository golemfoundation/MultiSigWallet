# shell.nix
let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
in

pkgs.mkShell {
  buildInputs = [
	  pkgs.nodejs-8_x
    pkgs.git
  ];
}
