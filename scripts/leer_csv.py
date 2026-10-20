# leer_csv.py — Cargar el reporte CSV del ERP (Python)
# Completa los pasos marcados con TODO. Ejecuta desde la raíz del repositorio:
#   python scripts/leer_csv.py

# TODO 1: importa pandas y carga data/ventas.csv en un DataFrame
import pandas as pd
ventas_csv=pd.read_csv("data/ventas.csv")
# TODO 2: imprime las dimensiones (filas, columnas) del DataFrame
print("===== Dimensiones =====")
a,b = ventas_csv.shape
print(f"Filas: {a} Columnas: {b}")
# TODO 3: imprime las primeras filas para revisar las columnas
print(ventas_csv.head())