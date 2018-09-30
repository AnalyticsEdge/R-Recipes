requiredPackages = c('caret', 'e1071',
                     'tidyverse', 'lubridate','mice', 
                     'prophet', 'zoo', 'forecast')
for(p in requiredPackages)
{
  if(!require(p,character.only = TRUE)) 
  {
    install.packages(p,dependencies=TRUE, repos='http://cran.rstudio.com/')
    print(paste(p,"installed successfully"))
    library(p,character.only = TRUE)
  }
  else{print(paste(p , "library already installed"))}
}
print("List of the attached packages in your session: " )
search()
