# function takes package names and attempt to load them, or install them if loading fails.
package_chckload <- function(x){
    for(i in x){
        #  require returns TRUE invisibly if it was able to load package
        if(!require(i, character.only=TRUE)){
            #  if package was not able to be loaded then re-install
            install.packages(i, dependencies=TRUE)
            #  load package after installing
            require(i, character.only=TRUE)
        }
    }
}

# list all packages considered necessary for checking
packageList = c('Amelia', 'DBI', 'dbplyr', 'dplyr', 'forecast', "forecastHybrid",
                'ggplot2', 'imputeR', 'janitor', 'knitr', 'lubridate', 
                'odbc', 'openxlsx', 'purrr', 'readxl', 'reshape2', 'rstudioapi',
                'stringr', 'tcltk', 'tidyr', 'tidyverse', 'tinytex',
                'zoo')

# then try/install packages...
package_chckload(packageList)
