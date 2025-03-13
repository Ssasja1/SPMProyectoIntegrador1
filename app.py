from flask import Flask, render_template
import mysql.connector

app = Flask(__name__)

# Función para conectar a la base de datos
def get_db_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="root",
        database="spm_pi_db"
    )

@app.route('/')
def index():
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM usuarios")  # Asegúrate de que la tabla 'students' existe
    usuarios = cursor.fetchall()
    cursor.close()
    conn.close()
    return render_template('index.html', usuarios=usuarios)

if __name__ == '__main__':
    app.run(host="0.0.0.0",port=5000,debug=True)