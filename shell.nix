with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "latex-env";
  env = buildEnv { name = name; paths = buildInputs; };

  buildInputs = let
    texlive-custom = texlive.combine {
      inherit (texlive) scheme-small collection-langgerman latexmk
      amsmath
      cm-super
      siunitx
      enumitem
      minted fvextra ifplatform framed
      bibtex biblatex logreq xstring
      pgfplots
      adjustbox collectbox
      ;
    };
  in [
    gnumake
    texlive-custom
    python3Packages.pygments
    gnuplot
    ghostscript
  ];

  shellHook = ''
    export NIX_SHELL_NAME="${name}"
  '';
}
