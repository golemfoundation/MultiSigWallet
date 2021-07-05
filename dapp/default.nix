# default.nix
let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
in

pkgs.buildEnv {
  name = "multisig-dapp-build";
  buildInputs = [
	  pkgs.nodejs-8_x
    pkgs.git
  ];
}
