#Basic scatterplot
install.packages("plotly")
library(plotly)

#plotly - For interactive plots



plot_ly(z= volcano, type ="surface")


fig <- plot_ly(data = iris, 
               x = ~Sepal.Length, 
               y = ~Petal.Length)
fig
# ~ tilt operator - to define relationship
# x is dependent variable, y is independent variable


#styled scatterplot
library(plotly)

fig <- plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length,
               marker = list(size = 10,
                             color = 'rgba(255, 182, 193, .9)', 
                             line = list(color = 'rgba(152, 0, 0, .8)',
                                         width = 2)))
fig
#In order to make markers distinct, you can add a border to the markers. 
#This can be achieved by adding the line
# rgba value allows us to add an opacity value in the range 0 to 1


fig <- plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length,
               marker = list(size = 10,
                             color = 'rgba(255, 182, 193, .9)', 
                             line = list(color = 'rgba(152, 167, 178, .8)',
                                         width = 2)))
fig

fig <- fig %>% layout(title = 'Styled Scatter Plot')

fig




#adding color and symbols to data
View(iris)

fig <- plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length, type = 'scatter',
               mode = 'markers', symbol = ~Species, symbols = c('circle','x','o'),
               color = I('black'), marker = list(size = 10))

fig


#Using dataset diamonds and displaying color, size using column values of carat
View(diamonds)
d <- diamonds[sample(nrow(diamonds), 1000), ]
View(d)

fig <- plot_ly(
  d, x = ~carat, y = ~price,
  color = ~carat, size = ~carat
)

fig
