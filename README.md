# r-docker-ex
A simple example of using R with docker


This repo was used to build a simple Docker example for [this article](https://rviews.rstudio.com/2018/01/18/package-management-for-reproducible-r-code/) on RViews.

If you have Docker installed on your system, you can execute [`./simple-ex.sh`](./simple-ex.sh) to build and launch a docker image based on the [packrat.lock](packrat/packrat.lock) file.

If you want to use the project locally, you can open the [RProject file](docker-ex.Rproj) or run `packrat::restore()` to download dependent packages.
