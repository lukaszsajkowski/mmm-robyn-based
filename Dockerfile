FROM rocker/rstudio

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
      bash-completion \
      curl \
      libxml2-dev \
      libcairo2-dev \
      libsqlite-dev \
      libmariadbd-dev \
      libmariadbclient-dev \
      libpq-dev \
      libssh2-1-dev \
      unixodbc-dev \
      libigraph0-dev \
    && install2.r --error \
      --deps TRUE \
      tidyverse \
      dplyr \
      devtools \
      formatR \
      remotes \
      reticulate

USER rstudio

COPY install.R /home/rstudio/install.R
COPY demo.R /home/rstudio/demo.R

RUN Rscript /home/rstudio/install.R


USER root