#!/bin/sh

Rscript -e "install.packages(c('learnr'))" && \
Rscript -e "remotes::install_github('avouacr/learnr-sparkr')" && \
Rscript -e "learnr.sparkr::launch_workshop(file = system.file('sparkr-tutorial.Rmd', package = 'learnr.sparkr'), port = 8787, host = '0.0.0.0')"
