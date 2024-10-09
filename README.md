# Formalisms Every Computer Scientist Should Know at ISTA 2023

This repo contains LaTeX transcription of the classes.
There are also [Lean formalizations of the classes](https://github.com/madvorak/fecssk). 

## Contributions

1. Type your class in a separate TeX file `class_X.tex`.
2. Link to it in `main.tex` adding `\input{class_X.tex}`.
3. Whenever you are finished, push to the repository.

If you need new packages, add them in `header.tex`.
If you need new macros, add them to your chapter, enclosed by `{{` and `}}` to make your definitions local.
See `class_3.tex` for examples of macros.

Compilation of the pdf is automatic through GitHub Actions.

## Building the PDF

This repository contains a `justfile` that can be used to build the PDF using
[`tectonic`](https://tectonic-typesetting.github.io/en-US/) and [`watchexec`](https://github.com/watchexec/watchexec).
With these dependencies installed, you can run 

```shell
$ just serve
```
in the root of the repository to
build the PDF and watch for changes.

By default, `just` uses the **Windows version** of [`nushell`](https://www.nushell.sh/) (`nu.exe`) to run the commands, this behavior can be overwritten by
launching `just` with the `--shell` flag, e.g.

```shell
$ just --shell zsh serve`.
```

