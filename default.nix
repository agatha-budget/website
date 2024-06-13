{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
buildInputs = [
jekyll rubyPackages.github-pages go-task
];
shellHook = ''
        export PATH="$PWD/node_modules/.bin/:$PATH"
    '';

}
