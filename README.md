# Our next paper

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

## Add references

Add any reference used in text inside the `references.bib` file in BibTeX format.

Add references inside the text using the `\cite{..}` tag, i.e. `\cite{bls381-12}` for the article named `bls381-12` inside the `references.bib` file.


## Build from source

Do an `apt-get install` of the following packages:
```
 texlive-extra-utils texlive-latex-recommended texlive-font-utils \
 texlive-fonts-extra texlive-latex-extra texlive-fonts-recommended \
 texlive-science poppler-utils epstool texlive-luatex \
 fonts-linuxlibertine fonts-inter fonts-ibm-plex
```

Then do `make` to build the latest `$(TARGET).pdf` from this repo.

Configure the GNUmakefile with the `TARGET` filename.
