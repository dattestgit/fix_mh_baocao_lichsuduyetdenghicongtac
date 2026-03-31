-- Author  : THITHUY
-- Purpose : Add data to table
-- Date    : 21/12/2018 1:52:50 PM

USE LEMONSYS

Declare @XmlContent xml,@XAMLContent xml
Set @XmlContent=N''''''
Set @XAMLContent=N''''''
IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0145 WITH(NOLOCK) WHERE MenuItemID = 'D84F1100')
INSERT INTO D00T0145(ModuleID, MenuItemID, MenuGroupID, DisplayOrder, PermissionScreenID, FormID, ProgramName, ProgramType, Parameters, LCode, IsBalance, SqlCheckForm, IsAnchor, IsCheckClosedBook, Disabled, XmlContent, XAMLContent)
VALUES (N'84',N'D84F1100',N'T',0,N'D84F1100',N'D84F1100',N'D84D1240',N'DLL',N'',N'',0,N'',0,0,0,@XmlContent,@XAMLContent)

ELSE
UPDATE D00T0145
SET ModuleID = N'84',MenuItemID = N'D84F1100',MenuGroupID = N'T',DisplayOrder = 0,PermissionScreenID = N'D84F1100',FormID = N'D84F1100',ProgramName = N'D84D1240',ProgramType = N'DLL',Parameters = N'',LCode = N'',IsBalance = 0,SqlCheckForm = N'',IsAnchor = 0,IsCheckClosedBook = 0,Disabled = 0,XmlContent = @XmlContent,XAMLContent = @XAMLContent
WHERE MenuItemID = 'D84F1100'


-- Author  : NGOCTAI
-- Purpose : Add data to table
-- Date    : 07/04/2020 4:44:50 PM
-- ID	   : 136055 

Set @XmlContent=N''''''
Set @XAMLContent=N''''''
IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0145 WITH(NOLOCK) WHERE MenuItemID = '8402050')
INSERT INTO D00T0145(ModuleID, MenuItemID, MenuGroupID, DisplayOrder, PermissionScreenID, FormID, ProgramName, ProgramType, Parameters, LCode, IsBalance, SqlCheckForm, IsAnchor, IsCheckClosedBook, Disabled, XmlContent, XAMLContent)
VALUES (N'84',N'8402050',N'T',0,N'D84F2050',N'D84F2050',N'D84D2050',N'WPF',N'',N'',0,N'',0,0,0,@XmlContent,@XAMLContent)

ELSE
UPDATE D00T0145
SET ModuleID = N'84',MenuItemID = N'8402050',MenuGroupID = N'T',DisplayOrder = 0,PermissionScreenID = N'D84F2050',FormID = N'D84F2050',ProgramName = N'D84D2050',ProgramType = N'WPF',Parameters = N'',LCode = N'',IsBalance = 0,SqlCheckForm = N'',IsAnchor = 0,IsCheckClosedBook = 0,Disabled = 0,XmlContent = @XmlContent,XAMLContent = @XAMLContent
WHERE MenuItemID = '8402050'


-- Author  : THAONGUYEN
-- Purpose : Add data to table
-- Date    : 19/05/2022 10:48:32 AM
-- ID	   : 214989 

Set @XmlContent=N''''''
Set @XAMLContent=N''''''
IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0145 WITH(NOLOCK) WHERE MenuItemID = '8402060')
INSERT INTO D00T0145(ModuleID, MenuItemID, MenuGroupID, DisplayOrder, PermissionScreenID, FormID, ProgramName, ProgramType, Parameters, LCode, IsBalance, SqlCheckForm, IsAnchor, IsCheckClosedBook, Disabled, XmlContent, XAMLContent)
VALUES (N'84',N'8402060',N'T',0,N'D84F2060',N'D84F2060',N'D84D2050',N'WPF',N'',N'',0,N'',0,0,0,@XmlContent,@XAMLContent)

ELSE
UPDATE D00T0145
SET ModuleID = N'84',MenuItemID = N'8402060',MenuGroupID = N'T',DisplayOrder = 0,PermissionScreenID = N'D84F2060',FormID = N'D84F2060',
ProgramName = N'D84D2050',ProgramType = N'WPF',Parameters = N'',LCode = N'',IsBalance = 0,SqlCheckForm = N'',IsAnchor = 0,IsCheckClosedBook = 0,
Disabled = 0,XmlContent = @XmlContent,XAMLContent = @XAMLContent
WHERE MenuItemID = '8402060'

-- Author  : Duong Khanh Linh
-- Purpose : Add data to table
-- Date    : 19/05/2022 10:01:43 AM
-- ID	   : 219203  


Set @XmlContent=N''''''
Set @XAMLContent=N''''''
IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0145 WITH(NOLOCK) WHERE MenuItemID = '8430100')
INSERT INTO D00T0145(ModuleID, MenuItemID, MenuGroupID, DisplayOrder, PermissionScreenID, FormID, ProgramName, ProgramType, Parameters, LCode, IsBalance, SqlCheckForm, IsAnchor, IsCheckClosedBook, Disabled, XmlContent, XAMLContent)
VALUES (N'84',N'8430100',N'I',0,N'D84F3010',N'D89F4000',N'D89D4951',N'DAF40',N'',N'',0,N'',0,0,0,@XmlContent,@XAMLContent)

ELSE
UPDATE D00T0145
SET ModuleID = N'84',MenuItemID = N'8430100',MenuGroupID = N'I',DisplayOrder = 0,PermissionScreenID = N'D84F3010',FormID = N'D89F4000',ProgramName = N'D89D4951',
ProgramType = N'DAF40',Parameters = N'',LCode = N'',IsBalance = 0,SqlCheckForm = N'',IsAnchor = 0,IsCheckClosedBook = 0,Disabled = 0,XmlContent = @XmlContent,XAMLContent = @XAMLContent
WHERE MenuItemID = '8430100'


-- Author  : KHATUAN
-- Purpose : Add data to table
-- Date    : 07/10/2022 11:33:07 AM
--ID: 244671


Set @XmlContent=N''''''
Set @XAMLContent=N''''''
IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0145 WITH(NOLOCK) WHERE MenuItemID = '8420001')
INSERT INTO D00T0145(ModuleID, MenuItemID, MenuGroupID, DisplayOrder, PermissionScreenID, FormID, ProgramName, ProgramType, Parameters, LCode, IsBalance, SqlCheckForm, IsAnchor, IsCheckClosedBook, Disabled, XmlContent, XAMLContent)
VALUES (N'84',N'8420001',N'T',0,N'D84F1200',N'D84F1200',N'D84D1050',N'WPF',N'',N'',0,N'',0,0,0,@XmlContent,@XAMLContent)

ELSE
UPDATE D00T0145
SET ModuleID = N'84',MenuItemID = N'8420001',MenuGroupID = N'T',DisplayOrder = 0,PermissionScreenID = N'D84F1200',FormID = N'D84F1200',ProgramName = N'D84D1050',
ProgramType = N'WPF',Parameters = N'',LCode = N'',IsBalance = 0,SqlCheckForm = N'',IsAnchor = 0,IsCheckClosedBook = 0,Disabled = 0,XmlContent = @XmlContent,XAMLContent = @XAMLContent
WHERE MenuItemID = '8420001'


--DAT tmh

Set @XmlContent=N''''''
Set @XAMLContent=N''''''

IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0145 WITH(NOLOCK) WHERE MenuItemID = '0140700')
INSERT INTO D00T0145(ModuleID, MenuItemID, MenuGroupID, DisplayOrder, PermissionScreenID, FormID, ProgramName, ProgramType, Parameters,
 LCode, IsBalance, SqlCheckForm, IsAnchor, IsCheckClosedBook, Disabled, XmlContent, XAMLContent)
VALUES (N'01',N'0140700',N'I',0,N'Z_D01F4070',N'D89F4000',N'D89D4951',N'DAF40',N'',N'',0,N'',0,0,0,@XmlContent,@XAMLContent)

ELSE
UPDATE D00T0145
SET ModuleID = N'01',MenuItemID = N'0140700',MenuGroupID = N'I',DisplayOrder = 0,PermissionScreenID = N'Z_D01F4070',FormID = N'D89F4000',
ProgramName = N'D89D4951',
ProgramType = N'DAF40',Parameters = N'',LCode = N'',IsBalance = 0,SqlCheckForm = N'',IsAnchor = 0,IsCheckClosedBook = 0,Disabled = 0,
XmlContent = @XmlContent,
XAMLContent = @XAMLContent
WHERE MenuItemID = '0140700'


select top 1 1 from LEMONSYS..D00T0145 WIH(NOLOCK) WHERE PermissionScreenID='Z_D01F4070'

select*from D00T0145 where MenuItemID='0140700'--co