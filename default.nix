with (import <nixpkgs> {});
let
  env = bundlerEnv {
    name = "site agatha";
    inherit ruby;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
  };
in stdenv.mkDerivation {
  name = "site-agatha";
  buildInputs = [env ruby bundler];
}


# source : https://matthewrhone.dev/jekyll-in-nixos