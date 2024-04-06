CREATE TABLE Inventario(
    InventarioId INT AUTO_INCREMENT,
    ModeloAuto VARCHAR(50),
    Precio VARCHAR(50),
    Existencias VARCHAR(50),
    PRIMARY KEY(InventarioId)
);
CREATE TABLE Vendedor(
    VendedorId INT AUTO_INCREMENT,
    Nombre VARCHAR(50),
    APaterno VARCHAR(50),
    AMaterno VARCHAR(50),
    PRIMARY KEY(VendedorId)
);
CREATE TABLE Cliente(
    ClienteId INT AUTO_INCREMENT,
    Nombre VARCHAR(50),
    APaterno VARCHAR(50),
    AMaterno VARCHAR(50),
    Telefono VARCHAR(10),
    Direccion VARCHAR(50),
    PRIMARY KEY(ClienteId)
);
CREATE TABLE Venta(
    VentaId INT AUTO_INCREMENT,
    Fecha DATE,
    ClienteId INT AUTO_INCREMENT,
    VendedorId INT AUTO_INCREMENT,
    InventarioId INT AUTO_INCREMENT,
    PRIMARY KEY(VentaId)
    CONSTRAINT fk_VentaCliente
    FOREIGN KEY (ClienteId) REFERENCES Cliente(ClienteId)
    CONSTRAINT fk_VentaVendedor
    FOREIGN KEY (VendedorId) REFERENCES Vendedor(VendedorId)
    CONSTRAINT fk_VentaInventario
    FOREIGN KEY (InventarioId) REFERENCES Inventario(InventarioId)
);