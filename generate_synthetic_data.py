import pandas as pd
import random

# Generar datos sintéticos para la encuesta a clientes
def generate_client_survey_data(num_records):
    data = {
        "Frecuencia de Compra": [random.choice(["Diariamente", "Semanalmente", "Mensualmente", "Ocasionalmente"]) for _ in range(num_records)],
        "Tipo de Sistema Preferido": [random.choice(["Aplicación móvil", "Sitio web", "Aplicación de escritorio"]) for _ in range(num_records)],
        "Servicios Deseados": [random.choice(["Navegación por catálogo de productos", "Agregar y eliminar productos del carrito", "Proceso de pago seguro", "Registro y autenticación de usuarios", "Notificaciones por correo electrónico", "Historial de pedidos", "Otros"]) for _ in range(num_records)],
        "Importancia de Notificaciones": [random.choice(["Muy importante", "Importante", "Poco importante", "No es importante"]) for _ in range(num_records)]
    }
    return pd.DataFrame(data)

# Generar datos sintéticos para la entrevista a empleados
def generate_employee_interview_data(num_records):
    data = {
        "Funcionalidades Esenciales": [random.choice(["Actualización de stock", "Visualización de productos", "Gestión de categorías", "Otros"]) for _ in range(num_records)],
        "Tipo de Sistema Preferido": [random.choice(["Aplicación móvil", "Sitio web", "Aplicación de escritorio"]) for _ in range(num_records)],
        "Importancia de Historial de Pedidos": [random.choice(["Muy importante", "Importante", "Poco importante", "No es importante"]) for _ in range(num_records)],
        "Otros Servicios Deseados": [random.choice(["Notificaciones de nuevos pedidos", "Actualización del estado de los pedidos", "Reportes de ventas", "Otros"]) for _ in range(num_records)]
    }
    return pd.DataFrame(data)

# Generar y exportar los datos
client_survey_data = generate_client_survey_data(200)
employee_interview_data = generate_employee_interview_data(30)

client_survey_data.to_excel("c:\\www\\corhuila\\analisis-sistemas-2025-a-g1\\client_survey_data.xlsx", index=False)
employee_interview_data.to_excel("c:\\www\\corhuila\\analisis-sistemas-2025-a-g1\\employee_interview_data.xlsx", index=False)

print("Datos sintéticos generados y exportados a Excel.")
