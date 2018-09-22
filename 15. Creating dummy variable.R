# To create dummy variables using dplyr

# meta is the dataframe that is passed through the pipe to the mutate function
# mutate creates a variabel v that has value 1, surface var is the categorical column which needs to 
# be converted into dummy columns and is renamed as sf
# spread creates the dummy variables based as key = values from sf as 1 and fills missing values with 0

meta_sur <- meta %>%  
            mutate(v = 1, sf = surface) %>%   
            spread(sf, v, fill = 0)         # missing values will be replaced with fill value
View(meta_sur)

# The surface var is not dropped and needs to be removed manually:
df$surface <- NULL


# To create dummy variables using model.matrix:
df_surface <- model.matrix(~ surface - 1 , meta)
View(df_surface)

# The surface variable is dropped automatically
