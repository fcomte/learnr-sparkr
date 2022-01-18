FROM inseefrlab/rstudio:r4.1.1-spark3.2.0

# Learnr
RUN R -e "install.packages(c('learnr'))"
RUN Rscript -e 'remotes::install_gitlab("avouacr/learnr-sparkr", host = "git.lab.sspcloud.fr")'
EXPOSE 8181
CMD  ["R", "-e", "learnr.sparkr::launch_workshop(file = system.file('atelier/atelier.Rmd', package = 'learnr.sparkr'), port = 8181, host = '0.0.0.0')"]
