SELECT DB_NAME() AS BaseActual;

-- TABLA Usuario

CREATE TABLE Usuarios (
    id_usuario INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    correo VARCHAR(150) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    fecha_registro DATETIME DEFAULT GETDATE()
);
GO

-- TABLA SALAS

CREATE TABLE Salas (
    id_sala INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    capacidad INT NOT NULL CHECK (capacidad > 0),
    estado VARCHAR(20) NOT NULL DEFAULT 'Disponible'
);
GO



-- TABLA RESERVAS


CREATE TABLE Reservas (
    id_reserva INT IDENTITY(1,1) PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_sala INT NOT NULL,
    fecha_inicio DATETIME2 NOT NULL,
    fecha_fin DATETIME2 NOT NULL,
    estado VARCHAR(20) NOT NULL DEFAULT 'Activa',

    CONSTRAINT FK_Reservas_Usuarios
        FOREIGN KEY (id_usuario)
        REFERENCES Usuarios(id_usuario),

    CONSTRAINT FK_Reservas_Salas
        FOREIGN KEY (id_sala)
        REFERENCES Salas(id_sala),

    CONSTRAINT CK_Reservas_Fechas
        CHECK (fecha_fin > fecha_inicio)
);
GO
