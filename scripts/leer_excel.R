
# leer_excel.R — Cargar el consolidado Excel de finanzas (R)
# Completa los pasos marcados con TODO. Ejecuta desde la raíz del repositorio:
#   Rscript scripts/leer_excel.R

# TODO 1: carga data/ventas.xlsx con readxl::read_excel indicando la hoja
if (!require("readxl")) install.packages("readxl")
library(readxl)

ventas_excel <- as.data.frame(
  read_excel("data/ventas.xlsx", sheet = "ventas")
)

# TODO 2: imprime las dimensiones (dim) y las primeras filas (head)
print("=== Dimensiones del data.frame (filas, columnas) ===")
print(dim(ventas_excel))

print("=== Primeras filas del archivo Excel ===")
print(head(ventas_excel))