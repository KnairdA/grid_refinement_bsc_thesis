{ pkgs ? import <nixpkgs> { }, ... }:

pkgs.stdenv.mkDerivation rec {
  name = "latex-env";
  env = pkgs.buildEnv { name = name; paths = buildInputs; };

  buildInputs = let
    texlive-custom = pkgs.texlive.combine {
      inherit (pkgs.texlive) scheme-small collection-langgerman latexmk
      amsmath
      abstract
      cm-super
      xpatch
      siunitx
      enumitem
      minted fvextra ifplatform framed
      bibtex biblatex logreq xstring
      pgfplots
      adjustbox collectbox
      ;
    };
  in with pkgs; [
    gnumake
    texlive-custom biber
    python3Packages.pygments
    gnuplot
    ghostscript
  ];

  shellHook = ''
    export NIX_SHELL_NAME="${name}"
  '';
}
