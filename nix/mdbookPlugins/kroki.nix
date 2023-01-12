{ pkgs }:

with pkgs;

rustPlatform.buildRustPackage rec {
  pname = "mdbook-kroki-preprocessor";
  version = "0.1.2";

  src = fetchCrate {
    inherit pname version;
    sha256 = "sha256-hcfJ9oHksTtbrSRQkL7/hyKuA0LfDpPPfIaWeD7a3Fk=";
  };

  cargoHash = "sha256-IKwDWymAQ1OMQN8Op+DcvqPikoLdOz6lltbhCgOAles=";

  buildInputs = [
    openssl
  ];

  nativeBuildInputs = [
    pkg-config
    openssl
  ];
}
