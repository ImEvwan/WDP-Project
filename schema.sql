CREATE TABLE IF NOT EXISTS Category (
    CategoryID INT NOT NULL AUTO_INCREMENT,
    CategoryName VARCHAR(255) NOT NULL UNIQUE,
    Description TEXT,
    PRIMARY KEY (CategoryID)
);

CREATE TABLE IF NOT EXISTS Supplier (
    SupplierID INT NOT NULL AUTO_INCREMENT,
    SupplierName VARCHAR(255) NOT NULL UNIQUE,
    SupplierWebsite VARCHAR(2048),
    Notes TEXT,
    PRIMARY KEY (SupplierID)
);

CREATE TABLE IF NOT EXISTS Item (
    ItemID INT NOT NULL AUTO_INCREMENT,
    ItemName VARCHAR(255) NOT NULL,
    Description TEXT,
    UnitOfMeasure VARCHAR(50),
    CategoryID INT NULL,
    SupplierID INT NOT NULL,
    ProductURL VARCHAR(2048),

    PRIMARY KEY (ItemID),

    FOREIGN KEY (CategoryID)
        REFERENCES Category(CategoryID),

    FOREIGN KEY (SupplierID)
        REFERENCES Supplier(SupplierID)
);

CREATE TABLE IF NOT EXISTS User (
    UserID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Username VARCHAR(255) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    PRIMARY KEY (UserID)
);