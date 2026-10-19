# leer_csv.R — Cargar el reporte CSV del ERP (R)
# Completa los pasos marcados con TODO. Ejecuta desde la raíz del repositorio:
#   Rscript scripts/leer_csv.R

# TODO 1: carga data/ventas.csv con readr::read_csv en un data.frame
if (!require("readr")) install.packages("readr")
library(readr)

ventas_csv <- as.data.frame(read_csv("data/ventas.csv"))

# TODO 2: imprime las dimensiones (dim) del data.frame
print("=== Dimensiones del data.frame (filas, columnas) ===")
print(dim(ventas_csv))

# TODO 3: imprime las primeras filas (head) para revisar las columnas
print("=== Primeras filas del archivo CSV ===")
print(head(ventas_csv))
