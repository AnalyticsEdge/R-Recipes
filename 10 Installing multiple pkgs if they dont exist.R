requiredPackages = c('caret','psych', 'shiny','shinydashboard')
for(p in requiredPackages)
{
  if(!require(p,character.only = TRUE)) 
    {
      install.packages(p)
      print(paste(p,"installed successfully"))
      library(p,character.only = TRUE)
    }
  else{print(paste(p , "library already installed"))}
}
print("List of the attached packages in your session: " )
search()
