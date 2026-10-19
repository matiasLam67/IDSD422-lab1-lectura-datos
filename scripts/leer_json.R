# leer_json.R — Cargar el reporte JSON de la API (R)
# Completa los pasos marcados con TODO. Ejecuta desde la raíz del repositorio:
#   Rscript scripts/leer_json.R

# TODO 1: carga data/ventas.json con jsonlite::fromJSON
if (!require("jsonlite")) {
  install.packages("jsonlite", repos = "https://cloud.r-project.org")
}

library(jsonlite)

datos_json <- fromJSON("data/ventas.json")

# TODO 2: convierte el resultado en data.frame si hace falta
ventas_json <- as.data.frame(datos_json)

# TODO 3: imprime las dimensiones (dim) y las primeras filas (head)
print("=== Dimensiones del data.frame (filas, columnas) ===")
print(dim(ventas_json))

print("=== Primeras filas del archivo JSON ===")
print(head(ventas_json))