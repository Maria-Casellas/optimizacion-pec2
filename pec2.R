library(plotly)

# Función 
f <- function(x, y) {
  (1 - x)^2 + 100 * (y - x^2)^2
}

# Malla de puntos
x <- seq(-2, 2, length.out = 100)
y <- seq(-2, 3, length.out = 100)
grid <- expand.grid(x = x, y = y)
z <- matrix(f(grid$x, grid$y), nrow = 100, ncol = 100, byrow = TRUE)


plot_ly(x = ~x, y = ~y, z = ~z) %>%
  add_surface() %>%
  layout(title = "Función de Rosenbrock",
         scene = list(
           xaxis = list(title = "x"),
           yaxis = list(title = "y"),
           zaxis = list(title = "f(x, y)")
         ))
