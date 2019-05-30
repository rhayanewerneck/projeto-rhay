ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
  {
    install.packages(new.pkg,
                     dependencies = TRUE,
                     repos = "https://cloud.r-project.org")
  }
  suppressPackageStartupMessages(sapply(pkg, require, character.only = TRUE))
}
############################################################
#                                                          #
#           Atenção usuários Windows! Instalem a           #
#            última versão do Rtools pelo link             #
#           (última versão: Rtools35.exe; data de          #
#                verificação: 27-05-2019):                 #
#       https://cran.r-project.org/bin/windows/Rtools/     #
#                                                          #
############################################################
ipak(packages_list <- c(
  "devtools",
  "bibtex",
  "vegan",
  "tidyverse",
  "readxl",
  "knitr",
  "rmarkdown",
  "pacman",
  "evaluate",
  "disgest",
  "highr",
  "markdown",
  "stringr",
  "yaml",
  "Rcpp",
  "htmltools",
  "caTools",
  "bitops",
  "jsonlite",
  "base64enc",
  "rprojroot"
)
)
pacman::p_load_gh(char = c(
  "crsh/citr", 
  "benmarwick/wordcountaddin",
  "ropensci/rcrossref",
  "sylvainschmitt/Cite",
  "kguidonimartins/minimalTemplate"
), 
install = TRUE, 
dependencies = TRUE)