#!/bin/sh

R -e "install.packages(c('learnr'))"
R -e "remotes::install_github('avouacr/learnr-sparkr')"
R -e "learnr.sparkr::launch_workshop(file = system.file('sparkr-tutorial.Rmd', package = 'learnr.sparkr'), port = 8787, host = '0.0.0.0')"
