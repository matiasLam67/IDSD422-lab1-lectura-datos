# inspeccion.R — Tipos, columna derivada e indicadores (R)
# Completa los pasos marcados con TODO. Ejecuta desde la raíz del repositorio:
#   Rscript scripts/inspeccion.R

# TODO 1: Carga data/ventas.csv
ventas_df <- read.csv("data/ventas.csv")

# TODO 2: Imprime la estructura (str) para ver los tipos
#         (fija si region llegó como character o factor)
print("=== Estructura del Data Frame ===")
str(ventas_df)

# TODO 3: Crea la columna derivada "ticket" = ventas / clientes
ventas_df$ticket <- ventas_df$ventas / ventas_df$clientes

# TODO 4: Calcula e imprime indicadores
print("=== Venta promedio por sucursal ===")
venta_prom_sucursal <- aggregate(ventas ~ sucursal, data = ventas_df, FUN = mean)
print(venta_prom_sucursal)

print("=== Ticket promedio global ===")
ticket_promedio <- sum(ventas_df$ventas) / sum(ventas_df$clientes)
print(ticket_promedio)

print("=== Sucursal con mayor y menor venta ===")
sucursal_mayor <- ventas_df$sucursal[which.max(ventas_df$ventas)]
sucursal_menor <- ventas_df$sucursal[which.min(ventas_df$ventas)]
cat("Mayor venta:", sucursal_mayor, "\n")
cat("Menor venta:", sucursal_menor, "\n")

print("=== Región con mayor venta total ===")
venta_por_region <- aggregate(ventas ~ region, data = ventas_df, FUN = sum)
region_mayor <- venta_por_region$region[which.max(venta_por_region$ventas)]
cat("Región con mayor venta total:", region_mayor, "\n")