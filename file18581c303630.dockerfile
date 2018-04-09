FROM rocker/r-ver:3.4.4
LABEL maintainer="Huiyan"
RUN export DEBIAN_FRONTEND=noninteractive; apt-get -y update \
  && apt-get install -y git-core \
	libapparmor-dev \
	libcurl4-openssl-dev \
	libssh2-1-dev \
	libssl-dev \
	libxml2-dev \
	make \
	pandoc \
	pandoc-citeproc \
	python-minimal \
	zlib1g-dev
RUN ["install2.r", "assertthat", "base64enc", "bindr", "bindrcpp", "broom", "cellranger", "cli", "colorspace", "crayon", "curl", "data.table", "devtools", "digest", "dplyr", "feather", "forcats", "foreign", "futile.logger", "futile.options", "git2r", "glue", "gmailr", "gtable", "haven", "hms", "httpuv", "httr", "jsonlite", "keras", "knitr", "lambda.r", "lattice", "lazyeval", "lubridate", "magrittr", "Matrix", "mnormt", "modelr", "munsell", "nlme", "openssl", "pillar", "pkgconfig", "plyr", "psych", "purrr", "R6", "Rcpp", "readr", "readxl", "remotes", "reshape2", "rstudioapi", "rvest", "semver", "stringi", "stringr", "sys", "tibble", "tidyr", "tidyverse", "utf8", "whisker", "xml2", "yaml", "zeallot"]
RUN ["installGithub.r", "hadley/scales@d76791529be802ff84bf9a343347335d58e03b1f", "jimhester/withr@79d7b0da9f08e853b3195101c09d291f98bba5f3", "MarkEdmondson1234/memoise@a33b5121b0f8cd924c055b2dcda81ecaa0db343d", "rstudio/reticulate@319341c3d58b5390758459f208ec5acd2d625867", "rstudio/tensorflow@77d77ba5d99f0d997ee8306d49a301ddd8bcb7d6", "rstudio/tfruns@282de31443a650f47a19c1ef530fdf969f66f399", "tidyverse/ggplot2@39e4a3bdb910a0344e2f75a5ade2e4f27e263a62", "tidyverse/rlang@1b8181697d0d13284538fe5ce3962c4c8d946ae4", "wch/harbor@4e6ce36dee3571f95a6c8ee7010e298e94bcd976"]
WORKDIR /payload/
CMD ["R"]
