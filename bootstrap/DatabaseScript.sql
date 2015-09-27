Create DATABASE GasAgency;

USE GasAgency

CREATE TABLE OperationMaster(OperationTypeId int,OperationType varchar(15),CreateDate date not null);
CREATE TABLE DeliveryMaster(DeliveryId int,DeliveryName varchar(50),CreateDate date not null);
CREATE TABLE CylinderCategory(CategoryId int,CategoryName varchar(25),CreateDate date not null);
CREATE TABLE Account(Id int primary key,UserId int,UserName varchar(25),Password varchar(25),Address varchar(250),CreateDate date not null,UpdateDate date);
CREATE TABLE InvoiceTypeMaster(InvoiceTypeId int,InvoiceType varchar(25),CreateDate date not null);
CREATE TABLE CylinderTypeMaster(CylinderTypeId int,CylinderType varchar(150),CreateDate date not null,UpdateDate date);
CREATE TABLE CurrentTransaction(Id int primary key,CylinderTypeId int,CylinderCategoryId int,OperationTypeId int,DeliveryId int,Quantity int,Comments varchar(150),CreateDate date not null,UpdateDate date,IsDelete SMALLINT);
CREATE TABLE StockDetails(StockId int primary key,CylinderTypeId  int,CylinderCategoryId int,Quantity int,CreateDate date not null,UpdateDate date);
CREATE TABLE InvoiceDetails(Id Primary key,InvoiceId varchar(75),InvoiceValue float,InvoiceDate date,QtyCommodity int,QtySubDomestic int,QtyNonSubDomestic int,QtyNonDomesticSmall int,QtyNonDomesticLarge int,InvoiceTypeId int,CreateDate date,UpdateDate date);
