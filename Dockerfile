FROM rocker/rstudio

# install packrat
RUN R -e 'install.packages("packrat", repos="http://cran.rstudio.com", dependencies=TRUE, lib="/usr/local/lib/R/site-library");'

USER rstudio

WORKDIR /home/rstudio/project

# copy lock file & install deps
COPY --chown=rstudio:rstudio packrat/packrat.* packrat/
RUN R -e 'packrat::restore();'

# copy the rest of the directory
COPY --chown=rstudio:rstudio . .

USER root

RUN chown rstudio.rstudio /home/rstudio/project
