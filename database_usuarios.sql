USE spm_pi_db;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido_paterno VARCHAR(50),
    apellido_materno VARCHAR(50),
    correo VARCHAR(100),
    edad INT,
    peso FLOAT,
    altura FLOAT,
    frecuencia_cardiaca_reposo INT,
    frecuencia_cardiaca_max INT,
    tiempo_prueba_seg INT,
    distancia_prueba_m INT
);

INSERT INTO usuarios (nombre, apellido_paterno, apellido_materno, correo, edad, peso, altura, frecuencia_cardiaca_reposo, frecuencia_cardiaca_max, tiempo_prueba_seg, distancia_prueba_m)
VALUES
('Carlos', 'González', 'Martínez', 'gonzalez.martinez@example.com', 30, 75.5, 1.75, 60, 180, 600, 3000),
('Ana', 'López', 'Hernández', 'lopez.hernandez@example.com', 25, 68.0, 1.65, 65, 185, 580, 2900),
('Luis', 'Ramírez', 'Torres', 'ramirez.torres@example.com', 40, 82.3, 1.80, 70, 175, 620, 3100),
('María', 'Pérez', 'Gómez', 'perez.gomez@example.com', 22, 60.2, 1.60, 58, 190, 550, 2800),
('Jorge', 'Sánchez', 'Morales', 'sanchez.morales@example.com', 35, 90.1, 1.85, 72, 170, 640, 3200);

SELECT * FROM usuarios;
