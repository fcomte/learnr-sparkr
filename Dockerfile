FROM inseefrlab/rstudio:r4.1.1-spark3.2.0

# Learnr
RUN R -e "install.packages(c('learnr'))"
RUN Rscript -e 'remotes::install_gitlab("avouacr/learnr-sparkr", host = "git.lab.sspcloud.fr")'

EXPOSE 8787
ADD entrypoint.sh /data/entrypoint.sh
RUN chmod +x /data/entrypoint.sh
ENTRYPOINT [ "/data/entrypoint.sh" ]
