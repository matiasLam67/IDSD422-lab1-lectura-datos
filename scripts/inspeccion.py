# python scripts/inspeccion.py
# inspeccion.py — Tipos, columna derivada e indicadores (Python)
# Completa los pasos marcados con TODO. Ejecuta desde la raíz del repositorio:
import pandas as pd

# TODO 1: carga data/ventas.csv

ventas = pd.read_csv("data/ventas.csv")

# TODO 2: imprime los tipos (dtypes) de cada columna
print("===== Tipos =====")
print("Columna:    Tipo:")
print(ventas.dtypes)
print("=================")

# TODO 3: crea la columna derivada "ticket" = ventas / clientes

ventas["ticket"] = (ventas["ventas"] / ventas["clientes"]).round(2)

# TODO 4: calcula e imprime:
#         - venta promedio por sucursal
print("===== Ventas por sucursal =====")
print(ventas[['sucursal', 'ticket']])
print("==============================")
#         - ticket promedio (ventas totales / clientes totales)
print("=== Ticket promedio ===")
print(8*" "+ f"{ventas['ventas'].sum()/ventas['clientes'].sum():.3f}")
print("========================")
#         - sucursal con mayor y menor venta
print("======================= Sucursal con mayores ventas =======================")
sucursalmax=ventas.loc[ventas['ventas'].idxmax(),"sucursal"]
sucursalmin=ventas.loc[ventas['ventas'].idxmin(),"sucursal"]

print(f"La sucursal con mayores ventas es la sucursal de {sucursalmax} con {ventas['ventas'].max()}")
print(f"La sucursal con menores ventas es la sucursal de {sucursalmin} con {ventas['ventas'].min()}")
print("===========================================================================")
#         - región con mayor venta total
print("============ Región con mayores ventas ===========")
print(f"La región con mayor ventas es la {ventas.groupby('region')['ventas'].sum().idxmax()} con {ventas.groupby('region')['ventas'].sum().max()}")
print("==================================================")