{ pkgs }:

with pkgs;

rustPlatform.buildRustPackage rec {
  pname = "mdbook-regex-replacer";  
  version = "0.1.0";  

  src = fetchCrate {
    inherit pname version;
    sha256 = lib.fakeSha256;  
  };

  cargoHash = lib.fakeHash;
}
