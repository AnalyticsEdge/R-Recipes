# Show count on top of bar in geom_bar()

ggplot(diamonds, aes(x = cut)) +
  geom_bar() + 
  geom_text(stat='count', aes(label=..count..), vjust=-0.2)
# Change the value of vjust as per need
