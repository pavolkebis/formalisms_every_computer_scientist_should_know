# use nushell instead of sh:
set shell := ["nu.exe", "-c"]

# serve a version with hot reload
serve-lectures:
	watchexec --exts tex tectonic main.tex

# serve a version with hot reload for solutions
serve-solutions:
    watchexec --exts tex tectonic solutions/main.tex

serve-all:
    just serve &
    just serve-solutions &