-- Author  : THITHUY
-- Purpose : Add data to table
-- Date    : 21/12/2018 1:55:58 PM

USE LEMONSYS

IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0500 WITH(NOLOCK) WHERE DataID = 'MenuItemID' AND SKey = 'D84F1100')
INSERT INTO D00T0500(DataID, SKey, NKey, Desc01, Desc84, Desc86, Desc81, DescZ1, DescZ2, DescZ3, ModuleID, MTableName, MFieldName)
VALUES (N'MenuItemID',N'D84F1100',0,N'Approval Workflows',N'Quy trình duyệt',N'',N'',N'',N'',N'',N'D84',N'D00T0140',N'MenuItemID')

ELSE
UPDATE D00T0500
SET DataID = N'MenuItemID',SKey = N'D84F1100',NKey = 0,Desc01 = N'Approval Workflows',Desc84 = N'Quy trình duyệt',Desc86 = N'',Desc81 = N'',DescZ1 = N'',DescZ2 = N'',DescZ3 = N'',ModuleID = N'D84',MTableName = N'D00T0140',MFieldName = N'MenuItemID'
WHERE DataID = 'MenuItemID' AND SKey = 'D84F1100'


-- Author  : NGOCTAI
-- Purpose : Add data to table
-- Date    : 07/04/2020 4:44:50 PM
-- ID	   : 136055 


IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0500 WITH(NOLOCK) WHERE DataID = 'MenuItemID' AND SKey = '8402050')
INSERT INTO D00T0500(DataID, SKey, NKey, Desc01, Desc84, Desc86, Desc81, DescZ1, DescZ2, DescZ3, ModuleID, MTableName, MFieldName)
VALUES (N'MenuItemID',N'8402050',0,N'Change user for pending vouchers',N'Thay đổi người duyệt cho chứng từ dở dang',N'',N'',N'',N'',N'',N'D84',N'D00T0145',N'MenuItemID')

ELSE
UPDATE D00T0500
SET DataID = N'MenuItemID',SKey = N'8402050',NKey = 0,Desc01 = N'Change user for pending vouchers',Desc84 = N'Thay đổi người duyệt cho chứng từ dở dang',Desc86 = N'',Desc81 = N'',DescZ1 = N'',DescZ2 = N'',DescZ3 = N'',ModuleID = N'D84',MTableName = N'D00T0145',MFieldName = N'MenuItemID'
WHERE DataID = 'MenuItemID' AND SKey = '8402050'



-- Author  : THAONGUYEN
-- Purpose : Add data to table
-- Date    : 19/05/2022 10:06:18 AM
-- ID	   : 214989


IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0500 WITH(NOLOCK) WHERE DataID = 'MenuItemID' AND SKey = '8402060')
INSERT INTO D00T0500(DataID, SKey, NKey, Desc01, Desc84, Desc86, Desc81, DescZ1, DescZ2, DescZ3, ModuleID, MTableName, MFieldName)
VALUES (N'MenuItemID',N'8402060',0,N'Priority consideration by role',N'Xét ưu tiên theo vai trò',N'',N'',N'',N'',N'',N'D84',N'D00T0145',N'MenuItemID')

ELSE
UPDATE D00T0500
SET DataID = N'MenuItemID',SKey = N'8402060',NKey = 0,Desc01 = N'Priority consideration by role',Desc84 = N'Xét ưu tiên theo vai trò',Desc86 = N'',Desc81 = N'',DescZ1 = N'',DescZ2 = N'',DescZ3 = N'',ModuleID = N'D84',MTableName = N'D00T0145',MFieldName = N'MenuItemID'
WHERE DataID = 'MenuItemID' AND SKey = '8402060'

-- Author  : Duong Khanh Linh
-- Purpose : Add data to table
-- Date    : 19/05/2022 10:01:43 AM
-- ID	   : 219203 

IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0500 WITH(NOLOCK) WHERE DataID = 'MenuItemID' AND SKey = '8430100')
INSERT INTO D00T0500(DataID, SKey, NKey, Desc01, Desc84, Desc86, Desc81, DescZ1, DescZ2, DescZ3, ModuleID, MTableName, MFieldName)
VALUES (N'MenuItemID',N'8430100',0,N'Demand to view the statistical query of rejected vouchers',N'Truy vấn lịch sử duyệt',N'',N'',N'',N'',N'',N'D84',N'D00T0145',N'MenuItemID')

ELSE
UPDATE D00T0500
SET DataID = N'MenuItemID',SKey = N'8430100',NKey = 0,Desc01 = N'Demand to view the statistical query of rejected vouchers',Desc84 = N'Truy vấn lịch sử duyệt',Desc86 = N'',Desc81 = N'',DescZ1 = N'',DescZ2 = N'',DescZ3 = N'',ModuleID = N'D84',MTableName = N'D00T0145',MFieldName = N'MenuItemID'
WHERE DataID = 'MenuItemID' AND SKey = '8430100'


-- Author  : KHATUAN
-- Purpose : Add data to table
-- Date    : 07/10/2022 11:33:49 AM
-- ID : 244671



IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0500 WITH(NOLOCK) WHERE DataID = 'MenuItemID' AND SKey = '8420001')
INSERT INTO D00T0500(DataID, SKey, NKey, Desc01, Desc84, Desc86, Desc81, DescZ1, DescZ2, DescZ3, ModuleID, MTableName, MFieldName)
VALUES (N'MenuItemID',N'8420001',0,N'Approval Authorization for Others',N'Uỷ quyền duyệt',N'',N'',N'',N'',N'',N'D84',N'D00T0140',N'MenuItemID')

ELSE
UPDATE D00T0500
SET DataID = N'MenuItemID',SKey = N'8420001',NKey = 0,Desc01 = N'Approval Authorization for Others',Desc84 = N'Uỷ quyền duyệt',Desc86 = N'',Desc81 = N'',DescZ1 = N'',DescZ2 = N'',DescZ3 = N'',ModuleID = N'D84',MTableName = N'D00T0140',MFieldName = N'MenuItemID'
WHERE DataID = 'MenuItemID' AND SKey = '8420001'




--dat tmh

IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0500 WITH(NOLOCK) WHERE DataID = 'MenuItemID' AND SKey = '0140700')
INSERT INTO D00T0500(DataID, SKey, NKey, Desc01, Desc84, Desc86, Desc81, DescZ1, DescZ2, DescZ3, ModuleID, MTableName, MFieldName)
VALUES (N'MenuItemID',N'0140700',0,N'Business Trip Request Approval History Report',N'Lịch sử duyệt đề nghị công tác',N'',N'',N'',N'',N'',N'D01',
N'D00T0145',N'MenuItemID')

ELSE
UPDATE D00T0500
SET DataID = N'MenuItemID',SKey = N'0140700',NKey = 1,Desc01 = N'Business Trip Request Approval History Report',
Desc84 = N'Lịch sử duyệt đề nghị công tác',Desc86 = N'',Desc81 = N'',DescZ1 = N'',DescZ2 = N'',DescZ3 = N'',ModuleID = N'D01',MTableName = N'D00T0145',
MFieldName = N'MenuItemID'
WHERE DataID = 'MenuItemID' AND SKey = '0140700'


