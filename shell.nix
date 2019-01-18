with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "latex-env";
  env = buildEnv { name = name; paths = buildInputs; };

  buildInputs = let
    texlive-custom = texlive.combine {
      inherit (texlive) scheme-small collection-langgerman latexmk
      amsmath
      eulervm
      cm-super
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
  ];

  shellHook = ''
    export NIX_SHELL_NAME="${name}"
  '';
}
