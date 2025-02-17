Tabla_mortalidad <- data.frame(
  Motivo_de_muerte = c("Falla sistema urinario", "Neoplasia", "Infeccioso",
                       "Trauma", "Falla sistema vascular", "Muerte tabla", 
                       "Cuerpo extraño"),
  `0 a 4 años` = c(16, 13, 23, 19, 4, 3, 1),
  `5 a 9 años` = c(33, 33, 15, 5, 6, 3, 5),
  `10 a 14 años` = c(47, 50, 13, 3, 9, 1, 0),
  `15 años o más` = c(43, 37, 2, 2, 2, 0, 0)
)

colnames(Tabla_mortalidad) <- c(
  "Motivo de muerte", "0 a 4 años", "5 a 9 años", "10 a 14 años", "15 años o más"
)

p_load("kableExtra")

p_load("DT")

p_load("gt")

p_load("formattable")

Tabla_mortalidad %>%
  gt() %>%
  
  # Cambiar color de fondo de toda la tabla
  tab_style(
    style = list(cell_fill(color = "#FFC0CB")),  # Fondo rosa (#FF69B4)
    locations = cells_body()
  ) %>%
  
  # Cambiar color de fondo y negrita en los encabezados
  tab_style(
    style = list(cell_fill(color = "#FFFFFF"), cell_text(color = "#000000", weight = "bold")),
    locations = cells_column_labels()
  ) %>%
  
  # Aplicar negrita a la primera columna
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(columns = 1)  # Negrita en la primera columna
  ) %>%
  
  # Aplicar fondo blanco a la primera columna
  tab_style(
  style = cell_fill(color = "#FFFFFF"),  # Fondo blanco (#FFFFFF)
  locations = cells_body(columns = 1) # Aplicar solo a la primera columna
  )


 