USE [8Aug_MIPL]
GO
/****** Object:  Schema [SMS]    Script Date: 11/13/2018 9:19:38 AM ******/
CREATE SCHEMA [SMS]
GO
/****** Object:  StoredProcedure [SMS].[usp_Delete_AttendanceDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Delete_AttendanceDetails]
@flag bit output,-- return 0 for fail,1 for success
@Attendance_Id int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY
   Delete from SMS.Attendance Where Attendance_Id=@Attendance_Id set @flag=1; 
   IF @@TRANCOUNT > 0
   BEGIN commit TRANSACTION;
   END
END TRY
BEGIN CATCH
   IF @@TRANCOUNT > 0
    BEGIN rollback TRANSACTION; 
  END
  set @flag=0; 
END CATCH 
END 

GO
/****** Object:  StoredProcedure [SMS].[usp_Delete_FeesDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Delete_FeesDetails]
@flag bit output,-- return 0 for fail,1 for success
@Invoice_Id int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY
   Delete from SMS.Fees Where [Invoice_Id]=@Invoice_Id set @flag=1; 
   IF @@TRANCOUNT > 0
   BEGIN commit TRANSACTION;
   END
END TRY
BEGIN CATCH
   IF @@TRANCOUNT > 0
    BEGIN rollback TRANSACTION; 
  END
  set @flag=0; 
END CATCH 
END 
GO
/****** Object:  StoredProcedure [SMS].[usp_Delete_GradeDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Delete_GradeDetails]
@flag bit output,-- return 0 for fail,1 for success
@Grade_Id int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY
   Delete from SMS.Grade Where [Grade_Id]=@Grade_Id set @flag=1; 
   IF @@TRANCOUNT > 0
   BEGIN commit TRANSACTION;
   END
END TRY
BEGIN CATCH
   IF @@TRANCOUNT > 0
    BEGIN rollback TRANSACTION; 
  END
  set @flag=0; 
END CATCH 
END 
GO
/****** Object:  StoredProcedure [SMS].[usp_Delete_StudentDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Delete_StudentDetails]
@flag bit output,-- return 0 for fail,1 for success
@StudentId int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY
   Delete from SMS.Student Where [Student_Id]=@StudentId set @flag=1; 
   IF @@TRANCOUNT > 0
   BEGIN commit TRANSACTION;
   END
END TRY
BEGIN CATCH
   IF @@TRANCOUNT > 0
    BEGIN rollback TRANSACTION; 
  END
  set @flag=0; 
END CATCH 
END
GO
/****** Object:  StoredProcedure [SMS].[usp_Delete_TeacherDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Delete_TeacherDetails]
@flag bit output,-- return 0 for fail,1 for success
@Teacher_Id int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY
   Delete from SMS.Teacher Where Teacher_Id= @Teacher_Id set @flag=1; 
   IF @@TRANCOUNT > 0
   BEGIN commit TRANSACTION;
   END
END TRY
BEGIN CATCH
   IF @@TRANCOUNT > 0
    BEGIN rollback TRANSACTION; 
  END
  set @flag=0; 
END CATCH 
END 

GO
/****** Object:  StoredProcedure [SMS].[usp_Delete_Users]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Delete_Users]

@UserID int
AS

   Delete from SMS.Users Where Users_id=@UserID  
return 0
GO
/****** Object:  StoredProcedure [SMS].[usp_DeleteSMS0_Login_Details]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [SMS].[usp_DeleteSMS0_Login_Details]

@uname varchar(20)
AS

   Delete from SMS.Users Where User_Name =@uname 
GO
/****** Object:  StoredProcedure [SMS].[usp_Fetch_FeesDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Fetch_FeesDetails]
As
Select * from SMS.Fees ORDER By Invoice_Id 
GO
/****** Object:  StoredProcedure [SMS].[usp_FetchAll_AttendanceDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_FetchAll_AttendanceDetails]
As
Select * from SMS.Attendance ORDER By Attendance_Id 
GO
/****** Object:  StoredProcedure [SMS].[usp_FetchAll_GradeDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_FetchAll_GradeDetails]
As
Select * from SMS.Grade ORDER By  [Grade_Id]
GO
/****** Object:  StoredProcedure [SMS].[usp_FetchAll_StudentDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_FetchAll_StudentDetails]
As
Select * from SMS.Student ORDER By [Student_Id]
GO
/****** Object:  StoredProcedure [SMS].[usp_FetchAll_TeacherDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_FetchAll_TeacherDetails]
As
Select * from SMS.Teacher ORDER By Teacher_Id
GO
/****** Object:  StoredProcedure [SMS].[usp_FetchAllDetails_Users]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [SMS].[usp_FetchAllDetails_Users]
As
Select * from SMS.Users ORDER By Users_id 
GO
/****** Object:  StoredProcedure [SMS].[usp_FetchByDateandGrade_AttendanceDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_FetchByDateandGrade_AttendanceDetails]
@flag bit output,-- return 0 for fail,1 for success
@Date date,
@grade_id int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY
     select a.date as Date, a.attended as Status, s.grade_id as GradeID, a.student_id as StudentID, s.student_name as StudentName from SMS.Attendance a  Join SMS.Student S
    on a.Student_id = S.Student_Id where a.date = @Date and s.grade_id =@grade_id
   IF @@TRANCOUNT > 0
   BEGIN commit TRANSACTION;
   END
END TRY
BEGIN CATCH
   IF @@TRANCOUNT > 0
    BEGIN rollback TRANSACTION; 
  END
  set @flag=0; 
END CATCH 
END
GO
/****** Object:  StoredProcedure [SMS].[usp_FetchByGradeName_ReportFees]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_FetchByGradeName_ReportFees]
@flag bit output,-- return 0 for fail,1 for success
@grade_Id int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY
  select f.student_id as StudentId, s.student_name as StudentName, s.contact as Contact, f.status as Status, f.fees_amount as FeeAmount, s.grade_id as GradeId from sms.fees f join sms.student s on
 f.Student_id=s.Student_id  where grade_id =@grade_Id and f.status ='0'

   IF @@TRANCOUNT > 0
   BEGIN commit TRANSACTION;
   END
END TRY
BEGIN CATCH
   IF @@TRANCOUNT > 0
    BEGIN rollback TRANSACTION; 
  END
  set @flag=0; 
END CATCH 
END 
GO
/****** Object:  StoredProcedure [SMS].[usp_FetchById_AttendanceDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_FetchById_AttendanceDetails]
@flag bit output,-- return 0 for fail,1 for success
@Attendance_Id int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY
   select * from SMS.Attendance Where Attendance_Id=@Attendance_Id set @flag=1; 
   IF @@TRANCOUNT > 0
   BEGIN commit TRANSACTION;
   END
END TRY
BEGIN CATCH
   IF @@TRANCOUNT > 0
    BEGIN rollback TRANSACTION; 
  END
  set @flag=0; 
END CATCH 
END 
GO
/****** Object:  StoredProcedure [SMS].[usp_FetchById_FeesDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_FetchById_FeesDetails]
@flag bit output,-- return 0 for fail,1 for success
@Invoice_Id int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY
   Select * from SMS.Fees Where [Invoice_Id]=@Invoice_Id set @flag=1; 
   IF @@TRANCOUNT > 0
   BEGIN commit TRANSACTION;
   END
END TRY
BEGIN CATCH
   IF @@TRANCOUNT > 0
    BEGIN rollback TRANSACTION; 
  END
  set @flag=0; 
END CATCH 
END 
GO
/****** Object:  StoredProcedure [SMS].[usp_FetchById_GradeDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_FetchById_GradeDetails]
@flag bit output,-- return 0 for fail,1 for success
@Grade_Id int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY
   select * from SMS.Grade Where [Grade_Id]=@Grade_Id set @flag=1; 
   IF @@TRANCOUNT > 0
   BEGIN commit TRANSACTION;
   END
END TRY
BEGIN CATCH
   IF @@TRANCOUNT > 0
    BEGIN rollback TRANSACTION; 
  END
  set @flag=0; 
END CATCH 
END 


select g.Grade_Id, g.[Description], g.grade_name, t.Name, t.Teacher_Id  from SMS.Grade g join SMS.Teacher t on g.ClassTeacher = t.Teacher_Id; 
GO
/****** Object:  StoredProcedure [SMS].[usp_FetchById_GradeJoinTeacerDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [SMS].[usp_FetchById_GradeJoinTeacerDetails]
@flag bit output,-- return 0 for fail,1 for success
@Grade_Id int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY
   
select g.Grade_Id, g.[Description], g.grade_name, g.ClassTeacher, t.Name, t.Teacher_Id 
 from SMS.Grade g join SMS.Teacher t on g.ClassTeacher = t.Teacher_Id Where [Grade_Id]=@Grade_Id set @flag=1; 
   IF @@TRANCOUNT > 0
   BEGIN commit TRANSACTION;
   END
END TRY
BEGIN CATCH
   IF @@TRANCOUNT > 0
    BEGIN rollback TRANSACTION; 
  END
  set @flag=0; 
END CATCH 
END 
GO
/****** Object:  StoredProcedure [SMS].[usp_FetchById_StudentDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [SMS].[usp_FetchById_StudentDetails]
-- return 0 for fail,1 for success
@StudentId int
AS
   Select * From SMS.Student Where [Student_Id]=@StudentId 
GO
/****** Object:  StoredProcedure [SMS].[usp_FetchById_TeacherDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_FetchById_TeacherDetails]
@flag bit output,-- return 0 for fail,1 for success
@Teacher_Id int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY
   Select * From SMS.Teacher Where [Teacher_Id]=@Teacher_Id set @flag=1; 
   IF @@TRANCOUNT > 0
   BEGIN commit TRANSACTION;
   END
END TRY
BEGIN CATCH
   IF @@TRANCOUNT > 0
    BEGIN rollback TRANSACTION; 
  END
  set @flag=0; 
END CATCH 
END 
GO
/****** Object:  StoredProcedure [SMS].[usp_FetchById_UserDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [SMS].[usp_FetchById_UserDetails]
@flag bit output,-- return 0 for fail,1 for success
@User_Id int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY
   Select * From SMS.Users Where [Users_id]=@User_Id set @flag=1; 
   IF @@TRANCOUNT > 0
   BEGIN commit TRANSACTION;
   END
END TRY
BEGIN CATCH
   IF @@TRANCOUNT > 0
    BEGIN rollback TRANSACTION; 
  END
  set @flag=0; 
END CATCH 
END 
GO
/****** Object:  StoredProcedure [SMS].[usp_FetchByStudentId_FeesDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_FetchByStudentId_FeesDetails]
@flag bit output,-- return 0 for fail,1 for success
@Invoice_Id int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY
     select G.Invoice_Id, g.student_Id, g.status , G.[Fees_Amount], G.[Payment_Date], S.[Student_Name] 
 from SMS.Fees G  Join SMS.Student S
    on G.Student_id = S.Student_Id
	where G.Invoice_id = @Invoice_Id 
   IF @@TRANCOUNT > 0
   BEGIN commit TRANSACTION;
   END
END TRY
BEGIN CATCH
   IF @@TRANCOUNT > 0
    BEGIN rollback TRANSACTION; 
  END
  set @flag=0; 
END CATCH 
END

GO
/****** Object:  StoredProcedure [SMS].[usp_FetchInvoiceByStudentId_FeesDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [SMS].[usp_FetchInvoiceByStudentId_FeesDetails]
@flag bit output,-- return 0 for fail,1 for success
@Student_Id int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY
     select G.Invoice_Id, g.student_Id, g.status , G.[Fees_Amount], G.[Payment_Date], S.[Student_Name] 
 from SMS.Fees G  Join SMS.Student S
    on G.Student_id = S.Student_Id
	where G.Student_id = @Student_Id 
   IF @@TRANCOUNT > 0
   BEGIN commit TRANSACTION;
   END
END TRY
BEGIN CATCH
   IF @@TRANCOUNT > 0
    BEGIN rollback TRANSACTION; 
  END
  set @flag=0; 
END CATCH 
END

GO
/****** Object:  StoredProcedure [SMS].[usp_Grade_Count]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

   create PROCEDURE [SMS].[usp_Grade_Count]
AS
   select count(*) as Total_Grade from sms.Grade
GO
/****** Object:  StoredProcedure [SMS].[usp_GradeJoinTeacherDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_GradeJoinTeacherDetails]

   AS
select g.Grade_Id, g.[Description],t.Name
 from SMS.Grade g join SMS.Teacher t on g.ClassTeacher = t.Teacher_Id 
GO
/****** Object:  StoredProcedure [SMS].[usp_Insert_AttendanceDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Insert_AttendanceDetails]
@flag bit output,-- return 0 for fail,1 for success
@Student_id int,
@Date date,
@Attended char(7)
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY 
Insert into SMS.Attendance([Student_id],[Date],[Attended]) Values(@Student_id,@Date,@Attended)
 set @flag=1;
IF @@TRANCOUNT > 0
 BEGIN commit TRANSACTION;
 END
 END TRY 
BEGIN CATCH
IF @@TRANCOUNT > 0
 BEGIN rollback TRANSACTION;
 END
 set @flag=0;
 END CATCH
END 

GO
/****** Object:  StoredProcedure [SMS].[usp_Insert_FeesDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Insert_FeesDetails]
@flag bit output,-- return 0 for fail,1 for success
@Invoice_Id int,
@Payment_Date date,
@Student_id int,
@Fees_Amount int,
@Status int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY 
Insert into [SMS].[Fees]([Invoice_Id],[Payment_Date],[Student_id],[Fees_Amount],[Status]) Values(@Invoice_Id,@Payment_Date,@Student_id,@Fees_Amount,@Status)
 set @flag=1;
IF @@TRANCOUNT > 0
 BEGIN commit TRANSACTION;
 END
 END TRY 
BEGIN CATCH
IF @@TRANCOUNT > 0
 BEGIN rollback TRANSACTION;
 END
 set @flag=0;
 END CATCH
END 
GO
/****** Object:  StoredProcedure [SMS].[usp_Insert_GradeDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Insert_GradeDetails]
@flag bit output,-- return 0 for fail,1 for success
@Grade_Id int,
@Grade_Name char(5),
@Description varchar(40),
@ClassTeacher int
AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY 
Insert into SMS.Grade([Grade_Id],[Grade_Name],[Description],[ClassTeacher]) Values(@Grade_Id,@Grade_Name,@Description,@ClassTeacher)
 set @flag=1;
IF @@TRANCOUNT > 0
 BEGIN commit TRANSACTION;
 END
 END TRY 
BEGIN CATCH
IF @@TRANCOUNT > 0
 BEGIN rollback TRANSACTION;
 END
 set @flag=0;
 END CATCH
END 
GO
/****** Object:  StoredProcedure [SMS].[usp_Insert_StudentDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Insert_StudentDetails]
@Student_Name varchar(25),
@Gender char(6),
@DOB date,
@Blood_Group char(5),
@Contact numeric(10,0),
@Address varchar(50),
@Grade_Id int
AS
Insert into 
SMS.Student([Student_Name],[Gender],[DOB],[Blood_Group],[Contact],[Address],[Grade_Id])
Values(@Student_Name,@Gender,@DOB,@Blood_Group,@Contact,@Address,@Grade_Id)
Return 0;

GO
/****** Object:  StoredProcedure [SMS].[usp_Insert_TeacherDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Insert_TeacherDetails]
-- return 0 for fail,1 for success
@Name varchar(20),
@Gender char(6),
@DOB date,
@Blood_Group char(5),
@Contact numeric(10,0),
@Email nvarchar(25),
@Address varchar(50)
AS
Insert into SMS.Teacher([Name],[Gender],[DOB],[Blood_Group],[Contact],[Email],[Address])
 Values
(@Name,@Gender,@DOB,@Blood_Group,@Contact,@Email,@Address)
GO
/****** Object:  StoredProcedure [SMS].[usp_Insert_Users]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Insert_Users]
@UserName varchar(50),
@UserPassword varchar(20),
@UserRole varchar(30)
AS
Insert into SMS.Users(User_Name, Password, Role) Values(@UserName,@UserPassword,@UserRole)
 return 0

GO
/****** Object:  StoredProcedure [SMS].[usp_InsertSMS1_Login_Details]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_InsertSMS1_Login_Details]
@flag bit output,-- return 0 for fail,1 for success

@uName varchar(20),
@password varchar(6)

AS
BEGIN
 BEGIN TRANSACTION 
 BEGIN TRY 
Insert into [SMS].[Login]([username],[password1])
 Values
(@uName,@password)
 set @flag=1;
IF @@TRANCOUNT > 0
 BEGIN commit TRANSACTION;
 END
 END TRY 
BEGIN CATCH
IF @@TRANCOUNT > 0
 BEGIN rollback TRANSACTION;
 END
 set @flag=0;
 END CATCH
END; 


GO
/****** Object:  StoredProcedure [SMS].[usp_InsertSMS2_Login_Details]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [SMS].[usp_InsertSMS2_Login_Details]

@uName varchar(20),
@password varchar(6)

AS

Insert into [SMS].[Login]([username],[password1])
 Values
(@uName,@password)
GO
/****** Object:  StoredProcedure [SMS].[usp_Student_Count]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Student_Count]
AS
   select count(*) as Total_Student from sms.student
GO
/****** Object:  StoredProcedure [SMS].[usp_StudentGradeJoin]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_StudentGradeJoin]

@grade_name varchar(20)

AS
select s.student_id, s.student_name, g.grade_id, g.grade_name
from sms.grade g join sms.student s
on g.Grade_Id = s.grade_id
where g.Grade_Name = @grade_name
GO
/****** Object:  StoredProcedure [SMS].[usp_Teacher_Count]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Teacher_Count]
-- return 0 for fail,1 for success
AS
   select count(*) as Total_Teacher from sms.teacher
GO
/****** Object:  StoredProcedure [SMS].[usp_Update_AttendanceDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Update_AttendanceDetails]
 @flag bit output,-- return 0 for fail,1 for success
@Attendance_Id int,
@Student_id int,
@Date date,
@Attended char(5)
 AS
 BEGIN
  BEGIN TRANSACTION 
   BEGIN TRY
	 Update SMS.Attendance set Date=@Date, Attended=@Attended
	 Where Attendance_Id=@Attendance_Id 
	 set @flag=1; 
	 IF @@TRANCOUNT > 0
	 	 BEGIN commit TRANSACTION;
		 END
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
		BEGIN rollback TRANSACTION; 
		END
		set @flag=0;
	END CATCH
END 
GO
/****** Object:  StoredProcedure [SMS].[usp_Update_FeesDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Update_FeesDetails]-- return 0 for fail,1 for success
 @Invoice_Id int,
@Payment_Date dateTime,
@Student_id int,
@Fees_Amount int,
@Status int
 AS
	 Update [SMS].[Fees] set  [Status]=@Status, [Payment_Date]=@Payment_Date ,[Student_id]=@Student_id,[Fees_Amount]=@Fees_Amount
	 Where [Invoice_Id]=@Invoice_Id 
	

GO
/****** Object:  StoredProcedure [SMS].[usp_Update_GradeDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Update_GradeDetails]
@flag bit output,-- return 0 for fail,1 for success
@Grade_Id int,
@Grade_Name char(5),
@Description varchar(40),
@ClassTeacher int
 AS
 BEGIN
  BEGIN TRANSACTION 
   BEGIN TRY
	 Update SMS.Grade set [Grade_Name]=@Grade_Name, [Description]=@Description, [ClassTeacher]=@ClassTeacher
	 Where  [Grade_Id]=@Grade_Id
	 set @flag=1; 
	 IF @@TRANCOUNT > 0
	 	 BEGIN commit TRANSACTION;
		 END
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
		BEGIN rollback TRANSACTION; 
		END
		set @flag=0;
	END CATCH
END 

GO
/****** Object:  StoredProcedure [SMS].[usp_Update_StudentDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Update_StudentDetails]
 @flag bit output,-- return 0 for fail,1 for success
 @Student_Id int,
 @Student_Name varchar(25),
 @Gender char(6),
 @DOB date,
 @Blood_Group char(5),
 @Contact numeric(10,0),
 @Address varchar(50),
 @Grade_Id int
 AS
 BEGIN
  BEGIN TRANSACTION 
   BEGIN TRY
	 Update SMS.Student 
	 set
		[Student_Name] =@Student_Name,
		[Gender]=@Gender,
		[DOB]=@DOB,
		[Blood_Group]=@Blood_Group,
		[Contact]=@Contact,
		[Address]=@Address,
		[Grade_Id] = @Grade_Id
	Where [Student_Id]=@Student_Id 
	 set @flag=1; 
	 IF @@TRANCOUNT > 0
	 	 BEGIN commit TRANSACTION;
		 END
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
		BEGIN rollback TRANSACTION; 
		END
		set @flag=0;
	END CATCH
END 
GO
/****** Object:  StoredProcedure [SMS].[usp_Update_TeacherDetails]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Update_TeacherDetails]
 @flag bit output,-- return 0 for fail,1 for success
 @Teacher_Id int,
 @Name varchar(25),
 @Gender char(6),
 @DOB date,
 @Blood_Group char(5),
 @Contact bigint,
 @Email nvarchar(25),
 @Address varchar(50)
 AS
 BEGIN
  BEGIN TRANSACTION 
   BEGIN TRY
	 Update SMS.Teacher set Gender = @Gender, Address=@Address
	 Where Teacher_Id = @Teacher_Id 
	 set @flag=1; 
	 IF @@TRANCOUNT > 0
	 	 BEGIN commit TRANSACTION;
		 END
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
		BEGIN rollback TRANSACTION; 
		END
		set @flag=0;
	END CATCH
END 
GO
/****** Object:  StoredProcedure [SMS].[usp_Update_Users]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_Update_Users]

 @UserID int,
 @UserName varchar(50),
@UserPassword varchar(20),
@UserRole varchar(30)
 AS

	 Update SMS.Users set User_Name=@UserName, Password=@UserPassword, Role=@UserRole
	 Where Users_id=@UserID
return 0
GO
/****** Object:  StoredProcedure [SMS].[usp_UpdateSMS0_Login_Details]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SMS].[usp_UpdateSMS0_Login_Details]

 @uName varchar(20),
 @password varchar(20),
 @role varchar(20)
 
 AS

	 Update SMS.Users set User_Name = @uName, Password=@password
	 Where Role=@role 
GO
/****** Object:  StoredProcedure [SMS].[usp_User_Count]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
     create PROCEDURE [SMS].[usp_User_Count]
AS
   select count(*) as Total_Users from sms.Users
GO
/****** Object:  StoredProcedure [SMS].[usp_ValidateSMS0_Login_Details]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [SMS].[usp_ValidateSMS0_Login_Details]

@uName varchar(20),
@password varchar,
@role varchar(20)

AS
 Select * from SMS.users where User_Name = @uName and Password = @password and Role=@role
GO
/****** Object:  StoredProcedure [SMS].[usp_ValidateSMS2_Login_Details]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [SMS].[usp_ValidateSMS2_Login_Details]

@uName varchar(20),
@password varchar

AS
 Select * from SMS.login where username = @uName and password1 = @password  

GO
/****** Object:  StoredProcedure [SMS].[usp_ValidateSMS3_Login_Details]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [SMS].[usp_ValidateSMS3_Login_Details]

@uName varchar(20),
@password varchar,
@role varchar(20)

AS
 Select * from SMS.users where User_Name = @uName and Passwrod = @password and Role=@role
GO
/****** Object:  Table [SMS].[Attendance]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SMS].[Attendance](
	[Date] [date] NULL,
	[Attended] [varchar](8) NULL,
	[Attendance_Id] [int] IDENTITY(100,1) NOT NULL,
	[Student_id] [int] NULL,
 CONSTRAINT [attendance_pk] PRIMARY KEY CLUSTERED 
(
	[Attendance_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SMS].[Fees]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SMS].[Fees](
	[Payment_Date] [date] NULL,
	[Fees_Amount] [int] NULL,
	[Invoice_Id] [int] IDENTITY(100,1) NOT NULL,
	[Status] [int] NOT NULL,
	[Student_id] [int] NULL,
 CONSTRAINT [fees_pk] PRIMARY KEY CLUSTERED 
(
	[Invoice_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [SMS].[Grade]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SMS].[Grade](
	[Grade_Name] [char](5) NULL,
	[Description] [varchar](40) NULL,
	[Grade_Id] [int] IDENTITY(100,1) NOT NULL,
	[ClassTeacher] [int] NULL,
 CONSTRAINT [grade_pk] PRIMARY KEY CLUSTERED 
(
	[Grade_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SMS].[Login]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SMS].[Login](
	[username] [varchar](20) NULL,
	[password1] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SMS].[Student]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SMS].[Student](
	[Student_Name] [varchar](25) NULL,
	[Gender] [char](6) NULL,
	[DOB] [date] NULL,
	[Blood_Group] [char](5) NULL,
	[Contact] [numeric](10, 0) NULL,
	[Address] [varchar](50) NULL,
	[Student_Id] [int] IDENTITY(100,1) NOT NULL,
	[Grade_Id] [int] NULL,
 CONSTRAINT [Student_pk] PRIMARY KEY CLUSTERED 
(
	[Student_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SMS].[Teacher]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SMS].[Teacher](
	[Name] [varchar](25) NULL,
	[Gender] [char](6) NULL,
	[DOB] [date] NULL,
	[Blood_Group] [char](5) NULL,
	[Contact] [numeric](10, 0) NULL,
	[Email] [nvarchar](25) NULL,
	[Address] [varchar](50) NULL,
	[Teacher_Id] [int] IDENTITY(100,1) NOT NULL,
 CONSTRAINT [teacher_pk] PRIMARY KEY CLUSTERED 
(
	[Teacher_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SMS].[Users]    Script Date: 11/13/2018 9:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SMS].[Users](
	[User_Name] [varchar](20) NULL,
	[Password] [varchar](25) NULL,
	[Role] [varchar](10) NULL,
	[Users_id] [int] IDENTITY(100,1) NOT NULL,
 CONSTRAINT [users_pk] PRIMARY KEY CLUSTERED 
(
	[Users_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [SMS].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK__Attendanc__Stude__11F6358E] FOREIGN KEY([Student_id])
REFERENCES [SMS].[Student] ([Student_Id])
GO
ALTER TABLE [SMS].[Attendance] CHECK CONSTRAINT [FK__Attendanc__Stude__11F6358E]
GO
ALTER TABLE [SMS].[Fees]  WITH CHECK ADD FOREIGN KEY([Student_id])
REFERENCES [SMS].[Student] ([Student_Id])
GO
ALTER TABLE [SMS].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Grade] FOREIGN KEY([Grade_Id])
REFERENCES [SMS].[Grade] ([Grade_Id])
GO
ALTER TABLE [SMS].[Grade] CHECK CONSTRAINT [FK_Grade_Grade]
GO
ALTER TABLE [SMS].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Grade1] FOREIGN KEY([Grade_Id])
REFERENCES [SMS].[Grade] ([Grade_Id])
GO
ALTER TABLE [SMS].[Grade] CHECK CONSTRAINT [FK_Grade_Grade1]
GO
ALTER TABLE [SMS].[Student]  WITH CHECK ADD FOREIGN KEY([Grade_Id])
REFERENCES [SMS].[Grade] ([Grade_Id])
GO
