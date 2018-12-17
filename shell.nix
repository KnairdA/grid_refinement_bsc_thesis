with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "latex-env";
  env = buildEnv { name = name; paths = buildInputs; };

  buildInputs = let
    texlive-custom = texlive.combine {
      inherit (texlive) scheme-small collection-langgerman latexmk
      amsmath
      cm-super
      bibtex biblatex logreq xstring
      ;
    };
  in [
    gnumake
    texlive-custom
  ];

  shellHook = ''
    export NIX_SHELL_NAME="${name}"
  '';
}
