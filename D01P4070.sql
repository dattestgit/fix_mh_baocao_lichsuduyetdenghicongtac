
-- D01P4070          
-- <Summary>          
----           
-- <Param>          
----           
-- <Return>          
----           
-- <Reference>          
---- D01/Thong ke va phan tich/ Bao cao lich su duyet de nghi cong tac          
-- <History>          
---- Create on 31/03/2026 by DATNGUYEN (305397 ): Bo sung bao cao lich su duyet de nghi cong tac              
---- EXEC D01P4070 '@','','','01','Object',0,'','',0,'','','',''           
-- <Example>          
---- D8492070          
ALTER PROCEDURE D01P4070          
(           
 @DivisionID    VARCHAR(50)  = '',          
 @UserID     VARCHAR(50)  = '',          
 @HostID     VARCHAR(50)  = '',          
 @Language    VARCHAR(2)  = '',          
 @DataType    VARCHAR(1000) = '',          
 @IsPeriod    TINYINT   = 0,          
 @StrPeriodFrom   VARCHAR(50)  = '',          
 @StrPeriodTo   VARCHAR(50)  = '',          
 @IsDate     TINYINT   = 0,          
 @StrDateFrom   VARCHAR(100) = '',          
 @StrDateTo    VARCHAR(100) = '',           
 @StrApprovalFlowID  VARCHAR (8000) = '',          
 @StrAStatusID   VARCHAR(100) = '',          
 @StrModuleID   VARCHAR(100) = '',          
 @StrTransactionID  VARCHAR(100) = ''          
           
)           
AS           
SET NOCOUNT ON          
          
DECLARE @TranMonth INT,           
  @TranYear INT,          
  @TranMonthTo INT,           
  @TranYearTo INT,          
  @DateFrom  VARCHAR(50)='',          
  @DateTo   VARCHAR(50)='',          
  @SQL0 NVARCHAR(MAX) = '',          
  @SQL1 NVARCHAR(MAX) = '',          
  @sSQL NVARCHAR(MAX) = '',          
  @PeriodFrom  DECIMAL(28,8),          
  @PeriodTo  DECIMAL(28,8),          
  @ExchangeRateVND DECIMAL(28,8),          
  @ExchangeRateUSD DECIMAL(28,8),          
  @BaseCurrencyID   NVARCHAR(MAX) = ''          
          
SET @StrDateFrom = CONVERT(DATETIME,@StrDateFrom,103)          
SET @StrDateTo  = CONVERT(DATETIME,@StrDateTo,103)          
           
          
SELECT   @PeriodFrom  = RIGHT(RTRIM(@StrPeriodFrom), 4)*100 + LEFT(LTRIM(@StrPeriodFrom), 2)          
SELECT   @PeriodTo  = RIGHT(RTRIM(@StrPeriodTo), 4)*100 + LEFT(LTRIM(@StrPeriodTo), 2)          
select   @BaseCurrencyID = BaseCurrencyID FROM D91T0025          
          
--select @ExchangeRate          
          
IF @DataType = 'Period' --Do nguon doi tuong          
BEGIN          
 Select  Distinct REPLACE(STR(TranMonth, 2), ' ', '0') + '/'+ STR(TranYear, 4) AS PeriodID , TranMonth, TranYear                
 From  D03T9999 WITH(NOLOCK)               
 Order By TranYear DESC, TranMonth DESC          
END          
-- Danh sach cot, -- Load Data Grid          
IF @DataType IN ('AddCol', 'LoadGrid')          
BEGIN          
 -- Danh sach cot          
 IF @DataType = 'AddCol'          
 BEGIN          
  SET @sSQL = N'          
  CREATE TABLE #StructTable          
  (          
     DisplayOrder  INT IDENTITY(1, 1),          
     Level   TINYINT,           
     ParentNodeID  VARCHAR(50),          
     CaptionID  VARCHAR(50),          
     CaptionName  NVARCHAR(500),          
     FieldName  VARCHAR(50),          
     Length   INT,              
     DataType   VARCHAR(50),          
     ControlType  VARCHAR(50),          
     DataFormat  VARCHAR(50),          
     Expression  VARCHAR(1000),          
     DefaultValues VARCHAR(1000),          
     SumFooter  VARCHAR(50),          
     IsHide   TINYINT DEFAULT(0),          
     DatatypeServer VARCHAR(50),          
     Fix nvarchar (50)           
  )          
          
           
          
  INSERT INTO #StructTable (Level, ParentNodeID, CaptionID, CaptionName, FieldName, Length, DataType, ControlType,DataFormat, Expression, DefaultValues,SumFooter,IsHide, DatatypeServer,Fix)          
  VALUES               
    (0,'''',   ''VoucherNo'',  N''Số phiếu đề nghị công tác'',    ''VoucherNo'',   200,''S'',''T'','''','''','''',''0'',0,''NVARCHAR(1000)'',''''),              
    (0,'''',   ''EmployeeName'', N''Nhân viên đề nghị công tác'',    ''EmployeeName'',  300,''S'',''T'','''','''','''',''0'',0,'' NVARCHAR(1000)'',''''),          
    (0,'''',   ''ApprovalDate'', N''Ngày duyệt'',   ''ApprovalDate'',  120,''S'',''T'','''','''','''',''0'',0,''VARCHAR(50)'',''''),           
    (0,'''',   ''ApproverName'', N''Người duyệt'',  ''ApproverName'', 200,''S'',''T'','''','''','''',''0'',0,''NVARCHAR(1000)'',''''),        
	(0,'''',   ''ApprovalStatusName'',  N''Trạng thái phiếu'',  ''ApprovalStatusName'',   150,''S'',''T'','''','''','''',''0'',0,''NVARCHAR(1000)'','''')        
        
  '          

  
     
  SET @SQL1 =  N'          
          
   -- Truy xuat du lieu          
   SELECT  *           
   FROM  #StructTable           
   ORDER BY DisplayOrder          
  '          
 END          
 -- Load Data Grid          
 IF @DataType = 'LoadGrid'          
 BEGIN          
     
       
  SET @SQL1 = N'          
   SELECT ROW_NUMBER() OVER(ORDER BY ApprovalDate) AS Priority, T01.VoucherID, T01.VoucherNo,          
     CASE WHEN ApprovalStatus = 1 THEN CONVERT(BIT, 1) ELSE CONVERT(BIT, 0) END AS IsApproval,           
     CASE WHEN ApprovalStatus = 100 THEN CONVERT(BIT, 1) ELSE CONVERT(BIT, 0) END AS IsNotApproval,           
     CASE WHEN ApprovalStatus = 0 THEN CONVERT(BIT, 1) ELSE CONVERT(BIT, 0) END AS IsUnApproval,           
     CASE WHEN ApprovalStatus = 1 THEN N''Duyệt'' ELSE CASE WHEN ApprovalStatus = 100 THEN N''Từ chối'' ELSE N''Chưa duyệt'' END END AS ApprovalStatusName,           
     UserNameU AS ApproverName,           
     ApprovalDate, ApprovalNotesU ApproveNotes, BatchID, ApprovalLevel, T00.ModuleID, T130.ModuleNameU AS ModuleName,           
     T00.TransactionID, T03.TransactionName84U AS TransactionName,  T00.ApprovalFlowID, T00.ApprovalFlowNameU AS ApprovalFlowName ,          
     CONVERT(VARCHAR(50),'''')  EmployeeID,           
     CONVERT(NVARCHAR(100),'''') EmployeeName,          
      
     T01.VoucherDate          
  INTO  #D84T2050          
  FROM  D84T2050 T01 WITH(NOLOCK)          
  LEFT JOIN  D84T1100 T00 WITH (NOLOCK)          
  ON   T01.ApprovalFlowID = T00.ApprovalFlowID          
  LEFT JOIN LEMONSYS..D00T0130 T130          
   ON  T00.ModuleID = T130.ModuleID          
  LEFT JOIN D84V1101 T03          
   ON  T00.ModuleID = T03.ModuleID AND T00.TransactionID = T03.TransactionID          
  LEFT JOIN LEMONSYS..D00T0030 T030          
  ON   T01.ApproverID = T030.UserID          
          
  WHERE  (1=1)        
  AND T00.ModuleID = ''D01''
  AND T00.TransactionID = ''D01F9144'' 
          
  '+CASE WHEN @StrAStatusID = '%' OR @StrAStatusID = '' THEN '' ELSE 'AND T01.ApprovalStatus =  '''+@StrAStatusID+''' ' END+'          
  '+CASE WHEN @IsPeriod = 1 then ' AND LEFT(CONVERT(VARCHAR,T01.ApprovalDate,112),6) BETWEEN '+LTRIM(STR(@PeriodFrom))+' AND '+LTRIM(STR(@PeriodTo))+' '           
   ELSE ' AND CONVERT(VARCHAR,T01.ApprovalDate,112) BETWEEN '+convert(varchar,convert(datetime,@StrDateFrom,103),112)+' AND '+convert(varchar,convert(datetime,@StrDateTo,103),112)+'   '           
  END +'          
            
  ORDER BY ApprovalDate           
              
            
  UPDATE   T1          
  SET    T1.EmployeeID = T2.EmployeeID          
  FROM   #D84T2050 T1          
  INNER JOIN D01T5015 T2          
  ON    T1.VoucherID = T2.VoucherID          
          
  UPDATE   T1          
  SET    T1.EmployeeName = O.ObjectNameU          
  FROM   #D84T2050 T1          
  INNER JOIN  OBJECT O          
  ON    T1.EmployeeID = O.ObjectID          
  AND    O.ObjectTypeID = ''NV''          
          
  SELECT     VoucherNo,
    EmployeeName,
    ApprovalDate,
    ApproverName,
    ApprovalStatusName
  FROM #D84T2050          
  ORDER BY ApprovalDate           
          
   '          
 END          
END   

       
--PRINT @sSQL          
--PRINT @SQL0          
--PRINT @SQL1          
EXEC (@sSQL+@SQL0 + @SQL1)          
          