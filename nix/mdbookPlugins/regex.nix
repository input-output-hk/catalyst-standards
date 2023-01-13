{ pkgs }:

with pkgs;

rustPlatform.buildRustPackage rec {
  pname = "mdbook-regex";  
  version = "0.0.1";  

  src = fetchFromGitHub {
    owner = "cameron1024";
    repo = "mdbook-regex";
    rev = "6234ca571db72cafbc88ed3b1c53373d35eb0595";
    sha256 = "sha256-j1Dbgk42GRuCG2BmtyhYL1zYeiPvDz/VYhL/VHDmVPM=";  
  };

  cargoHash = "sha256-ANgMYvmuX0nVI9Y1QlwchfOlrvhlcd6qYeRvueG4PLI=";

}
