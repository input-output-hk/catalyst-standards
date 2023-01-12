# Use this template to add a new rust package (check first to see if it exists in nixpkgs at search.nixos.org)
# Import it into the flake, add it to nativeBuildInputs, then run `nix develop`
# It will cause errors due to invalid hashes, you can use the error messages to get the correct hash
#
# Make sure you `git add` any new files, as they will cause "no such file or directory" errors if not checked into git

{ pkgs }:

with pkgs;

rustPlatform.buildRustPackage rec {
  pname = "<package name>";  # as it appears on crates.io
  version = "1.2.3";  # as it appears on crates.io

  src = fetchCrate {
    inherit pname version;
    sha256 = lib.fakeSha256;  # copy the value from the error into a string
  };

  cargoHash = lib.fakeHash;
}
