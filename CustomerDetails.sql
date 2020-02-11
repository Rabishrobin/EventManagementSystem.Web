--------------Customer Details Table---------------------
CREATE TABLE CustomerDetails
(
   ID VARCHAR(20) PRIMARY KEY,
   MailID VARCHAR(25) UNIQUE,
   Password VARCHAR(15) NOT NULL,
   FirstName VARCHAR(20) NOT NULL, 
   LastName VARCHAR(20) NOT NULL, 
   MobileNumber BIGINT NOT NULL,
   DateOfBirth DATE NOT NULL,
   Gender VARCHAR(10) NOT NULL
)

-------------------------------------------------------------------------------------------------------------------
--Stored procedure to insert user details
CREATE PROCEDURE SP_Insert_Customer
(  
   @ID VARCHAR(20),
   @MailID VARCHAR(25),
   @Password VARCHAR(15),
   @FirstName VARCHAR(20), 
   @LastName VARCHAR(20), 
   @MobileNumber BIGINT,
   @DateOfBirth DATE,
   @Gender VARCHAR(10)
)  
AS  
BEGIN  
    INSERT INTO CustomerDetails(ID, MailID, Password, FirstName, LastName, MobileNumber, DateOfBirth, Gender)
		VALUES (@ID, @MailID, @Password, @FirstName, @LastName, @MobileNumber, @DateOfBirth, @Gender);
END

-------------------------------------------------------------------------------------------------------------------
--Stored procedure to delete user details
CREATE PROCEDURE SP_Delete_Customer
(  
   @ID VARCHAR(20)
)  
AS  
BEGIN  
    DELETE CustomerDetails WHERE ID = @ID
END

-------------------------------------------------------------------------------------------------------------------
--Stored procedure to retrive all user details
CREATE PROCEDURE SP_Display_Customer
(  
   @ID VARCHAR(20),
   @MailID VARCHAR(25),
   @Password VARCHAR(15),
   @FirstName VARCHAR(20), 
   @LastName VARCHAR(20), 
   @MobileNumber BIGINT,
   @DateOfBirth DATE,
   @Gender VARCHAR(10)
)  
AS  
BEGIN  
	SELECT ID, MailID, Password, FirstName, LastName, MobileNumber, DateOfBirth, Gender FROM CustomerDetails
END  

-------------------------------------------------------------------------------------------------------------------
--Stored procedure to update user password

CREATE PROCEDURE SP_Update_Password
(  
   @ID VARCHAR(20),
   @Password VARCHAR(15)
)  
AS  
BEGIN  
	UPDATE CustomerDetails SET Password = @Password WHERE ID = @ID
END

-------------------------------------------------------------------------------------------------------------------
--Stored procedure to update user first name
CREATE PROCEDURE SP_Update_FirstName
(  
   @ID VARCHAR(20),
   @FirstName VARCHAR(20)
)  
AS  
BEGIN  
	UPDATE CustomerDetails SET FirstName = @FirstName WHERE ID = @ID
END  

-------------------------------------------------------------------------------------------------------------------
--Stored procedure to update user last name

CREATE PROCEDURE SP_Update_LastName
(  
   @ID VARCHAR(20),
   @LastName VARCHAR(20)
)  
AS  
BEGIN  
	UPDATE CustomerDetails SET LastName = @LastName WHERE ID = @ID
END

-------------------------------------------------------------------------------------------------------------------
--Stored procedure to update user mobile number

CREATE PROCEDURE SP_Update_MobileNumber
(  
   @ID VARCHAR(20),
   @MobileNumber BIGINT
)  
AS  
BEGIN  
	UPDATE CustomerDetails SET MobileNumber = @MobileNumber WHERE ID = @ID
END

-------------------------------------------------------------------------------------------------------------------
--Stored procedure to update user DOB

CREATE PROCEDURE SP_Update_DOB
(
   @ID VARCHAR(20),
   @DOB DATE
)  
AS  
BEGIN  
	UPDATE CustomerDetails SET DateOfBirth = @DOB WHERE ID = @ID
END

-------------------------------------------------------------------------------------------------------------------
--Stored procedure to update user gender

CREATE PROCEDURE SP_Update_Gender
(
   @ID VARCHAR(20),
   @Gender VARCHAR(10)
)  
AS  
BEGIN  
	UPDATE CustomerDetails SET Gender = @Gender WHERE ID = @ID
END

-------------------------------------------------------------------------------------------------------------------
--Stored procedure to update user DOB

CREATE PROCEDURE SP_Retrive_MailId
(
   @MailID VARCHAR(25)
)  
AS  
BEGIN  
	SELECT MailID FROM CustomerDetails
END
