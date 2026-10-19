# leer_json.py — Cargar el reporte JSON de la API (Python)
# Completa los pasos marcados con TODO. Ejecuta desde la raíz del repositorio:
#   python scripts/leer_json.py

# TODO 1: importa json y pandas
import pandas as pd
import json
# TODO 2: carga data/ventas.json con json.load
ventas_json=json.load(open("data/ventas.json"))
# TODO 3: convierte la lista de diccionarios en un DataFrame
ventas_df=pd.DataFrame(ventas_json)

# TODO 4: imprime las dimensiones y las primeras filas
print("===== Dimensiones =====")
a,b = ventas_df.shape
print(f"Filas: {a} Columnas: {b}")
print("===== Primeras filas =====")
print(ventas_df.head())