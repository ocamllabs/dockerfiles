FROM ocaml/opam:debian-stable_ocaml-4.02.3
RUN sudo -u opam sh -c "opam remote add ocl https://github.com/ocamllabs/opam-repo-dev.git" && \
  sudo -u opam sh -c "opam switch 4.02.1+multicore" && \
  sudo -u opam sh -c "opam depext -u utop mirage" && \
  sudo -u opam sh -c "opam install -y -j 2 -v utop mirage"