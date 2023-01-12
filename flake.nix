{
  description = "Standards for Project Catalyst";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let 
          pkgs = import nixpkgs {
            inherit system;
          };

          mdbook-kroki = (import ./nix/mdbookPlugins/kroki.nix) { inherit pkgs; };
        in
        {
          devShells.default = pkgs.mkShell {
            nativeBuildInputs = with pkgs; [
              mdbook

              mdbook-kroki
              mdbook-admonish
              mdbook-open-on-gh
              mdbook-linkcheck 
            ];
          };
        }
      );
}
