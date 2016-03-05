# generate the various dockerfile git branches

dockerfile-gen -g \
  --remote ocl,https://github.com/ocamllabs/opam-repo-dev.git \
  --compilers 4.02.3+afl,4.02.1+modular-implicits-ber,4.02.1+multicore,4.03.0+effects+native \
  --distros debian-stable \
  utop mirage
