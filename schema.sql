CREATE TABLE IF NOT EXISTS Category (
    CategoryID INT NOT NULL AUTO_INCREMENT,
    CategoryName VARCHAR(255) NOT NULL,
    Description TEXT,
    PRIMARY KEY (CategoryID),
    UNIQUE (CategoryName)
);

CREATE TABLE IF NOT EXISTS Supplier (
    SupplierID INT NOT NULL AUTO_INCREMENT,
    SupplierName VARCHAR(255) NOT NULL,
    SupplierWebsite VARCHAR(2048),
    Notes TEXT,
    PRIMARY KEY (SupplierID)
);

CREATE TABLE IF NOT EXISTS Item (
    ItemID INT NOT NULL AUTO_INCREMENT,
    ItemName VARCHAR(255) NOT NULL,
    Description TEXT,
    UnitOfMeasure VARCHAR(50),
    CategoryID INT NOT NULL,
    SupplierID INT NOT NULL,
    ProductURL VARCHAR(2048),
    PRIMARY KEY (ItemID),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);