docker run -it --rm --name jekyll -p 4000:4000 -v $PWD:/src jekyll/jekyll jekyll build -s /src -d /src/docs "$@"
