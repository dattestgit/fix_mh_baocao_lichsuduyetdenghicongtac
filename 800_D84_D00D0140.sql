


USE LEMONSYS
ALTER TABLE LEMONSYS.DBO.D00T0141 DISABLE TRIGGER ALL


-- Author  : NGOCTAI
-- Purpose : Add data to table
-- Date    : 07/04/2020 4:44:50 PM
-- ID	   : 136055 

IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0140 WITH(NOLOCK) WHERE ScreenID = 'D84F2050')
INSERT INTO D00T0140(ScreenID, ScreenName, ModuleID, DateEntered, DateLastModified, CreatedUser, ModifiedUser, ScreenNameEnglish, OrderNo, ScreenType, ScreenNameVietNamese, RelationScreenID, ScreenNameVietNameseU, ScreenNameEnglishU, IsLemonWeb, FormActive, Level, IsLW4, FormActiveLW4, FormCallLW4, Disabled, DeviceType)
VALUES (N'D84F2050',N'Thay ¢¤?i ng§¥`i duy£?t cho ch§´ng t§` d¥? dang',N'D84','04/07/2020','04/07/2020',N'LEMONADMIN',N'LEMONADMIN',N'Change user for pending vouchers',20,N'T',N'Thay ñoâ?i ngöô`i duyeâ?t cho chö´ng tö` dô? dang',N'',N'Thay đổi người duyệt cho chứng từ dở dang',N'Change user for pending vouchers',0,N'',0,0,N'',N'',0,N'D')

ELSE
UPDATE D00T0140
SET ScreenID = N'D84F2050',ScreenName = N'Thay ¢¤?i ng§¥`i duy£?t cho ch§´ng t§` d¥? dang',ModuleID = N'D84',DateEntered = '04/07/2020',DateLastModified = '04/07/2020',CreatedUser = N'LEMONADMIN',ModifiedUser = N'LEMONADMIN',ScreenNameEnglish = N'Change user for pending vouchers',OrderNo = 20,ScreenType = N'T',ScreenNameVietNamese = N'Thay ñoâ?i ngöô`i duyeâ?t cho chö´ng tö` dô? dang',RelationScreenID = N'',ScreenNameVietNameseU = N'Thay đổi người duyệt cho chứng từ dở dang',ScreenNameEnglishU = N'Change user for pending vouchers',IsLemonWeb = 0,FormActive = N'',Level = 0,IsLW4 = 0,FormActiveLW4 = N'',FormCallLW4 = N'',DeviceType = N'D'
WHERE ScreenID = 'D84F2050'


-- Author  : THAONGUYEN
-- Purpose : Add data to table
-- Date    : 19/05/2022 10:01:43 AM
-- ID	   : 214989 


IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0140 WITH(NOLOCK) WHERE ScreenID = 'D84F2060')
INSERT INTO D00T0140(ScreenID, ScreenName, ModuleID, DateEntered, DateLastModified, CreatedUser, ModifiedUser, ScreenNameEnglish, OrderNo, ScreenType, ScreenNameVietNamese, RelationScreenID, ScreenNameVietNameseU, ScreenNameEnglishU, IsLemonWeb, FormActive, Level, IsLW4, FormActiveLW4, FormCallLW4, Disabled, DeviceType)
VALUES (N'D84F2060',N'Xe´t §u ti£n theo vai tro`',N'D84','05/19/2022','05/19/2022',N'LEMONADMIN',N'LEMONADMIN',N'Priority consideration by role',30,N'T',N'Xe´t öu tieân theo vai tro`',N'',N'Xét ưu tiên theo vai trò',N'Priority consideration by role',0,N'',0,0,N'',N'',1,N'D')

ELSE
UPDATE D00T0140
SET ScreenID = N'D84F2060',ScreenName = N'Xe´t §u ti£n theo vai tro`',ModuleID = N'D84',DateEntered = '05/19/2022',DateLastModified = '05/19/2022',CreatedUser = N'LEMONADMIN',ModifiedUser = N'LEMONADMIN',ScreenNameEnglish = N'Priority consideration by role',OrderNo = 30,ScreenType = N'T',ScreenNameVietNamese = N'Xe´t öu tieân theo vai tro`',RelationScreenID = N'',ScreenNameVietNameseU = N'Xét ưu tiên theo vai trò',ScreenNameEnglishU = N'Priority consideration by role',IsLemonWeb = 0,FormActive = N'',Level = 0,IsLW4 = 0,FormActiveLW4 = N'',FormCallLW4 = N'',DeviceType = N'D'
WHERE ScreenID = 'D84F2060'

-- Author  : Duong Khanh Linh
-- Purpose : Add data to table
-- Date    : 19/05/2022 10:01:43 AM
-- ID	   : 219203  


IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0140 WITH(NOLOCK) WHERE ScreenID = 'D84F3010')
INSERT INTO D00T0140(ScreenID, ScreenName, ModuleID, DateEntered, DateLastModified, CreatedUser, ModifiedUser, ScreenNameEnglish, OrderNo, ScreenType, ScreenNameVietNamese, RelationScreenID, ScreenNameVietNameseU, ScreenNameEnglishU, IsLemonWeb, FormActive, Level, IsLW4, FormActiveLW4, FormCallLW4, Disabled, DeviceType)
VALUES (N'D84F3010',N'Truy v¡´n li?ch s§? duy£?t',N'D84','10/03/2022','10/03/2022',N'LEMONADMIN',N'LEMONADMIN',N'Demand to view the statistical query of rejected vouchers',0,N'I',N'Truy vaâ´n li?ch sö? duyeâ?t',N'',N'Truy vấn lịch sử duyệt',N'Demand to view the statistical query of rejected vouchers',0,N'',0,0,N'',N'',1,N'D')

ELSE
UPDATE D00T0140
SET ScreenID = N'D84F3010',ScreenName = N'Truy v¡´n li?ch s§? duy£?t',ModuleID = N'D84',DateEntered = '10/03/2022',DateLastModified = '10/03/2022',CreatedUser = N'LEMONADMIN',ModifiedUser = N'LEMONADMIN',ScreenNameEnglish = N'Demand to view the statistical query of rejected vouchers',OrderNo = 0,ScreenType = N'I',ScreenNameVietNamese = N'Truy vaâ´n li?ch sö? duyeâ?t',RelationScreenID = N'',ScreenNameVietNameseU = N'Truy vấn lịch sử duyệt',ScreenNameEnglishU = N'Demand to view the statistical query of rejected vouchers',IsLemonWeb = 0,FormActive = N'',Level = 0,IsLW4 = 0,FormActiveLW4 = N'',FormCallLW4 = N'',DeviceType = N'D'
WHERE ScreenID = 'D84F3010'


-- Author  : KHATUAN
-- Purpose : Add data to table
-- Date    : 07/10/2022 11:31:41 AM
--ID : 244671

IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0140 WITH(NOLOCK) WHERE ScreenID = 'D84F1200')
INSERT INTO D00T0140(ScreenID, ScreenName, ModuleID, DateEntered, DateLastModified, CreatedUser, ModifiedUser, ScreenNameEnglish, OrderNo, ScreenType, ScreenNameVietNamese, RelationScreenID, ScreenNameVietNameseU, ScreenNameEnglishU, IsLemonWeb, FormActive, Level, IsLW4, FormActiveLW4, FormCallLW4, Disabled, DeviceType)
VALUES (N'D84F1200',N'ïy quyÒn duyÖt cho ng§éi khÀc',N'D84','11/06/2015','11/06/2015',N'LEMONADMIN',N'LEMONADMIN',N'Approval Authorization',1200,N'L',N'UÛy quyeàn duyeät cho ngöôøi khaùc',N'',N'Ủy quyền duyệt cho người khác',N'Approval Authorization for Others',0,N'D84F1200',0,1,N'W84F1200',N'',0,N'D')

ELSE
UPDATE D00T0140
SET ScreenID = N'D84F1200',ScreenName = N'ïy quyÒn duyÖt cho ng§éi khÀc',ModuleID = N'D84',DateEntered = '11/06/2015',DateLastModified = '11/06/2015',CreatedUser = N'LEMONADMIN',ModifiedUser = N'LEMONADMIN',ScreenNameEnglish = N'Approval Authorization',OrderNo = 1200,ScreenType = N'L',ScreenNameVietNamese = N'UÛy quyeàn duyeät cho ngöôøi khaùc',RelationScreenID = N'',ScreenNameVietNameseU = N'Ủy quyền duyệt cho người khác',ScreenNameEnglishU = N'Approval Authorization for Others',IsLemonWeb = 0,FormActive = N'D84F1200',Level = 0,IsLW4 = 1,FormActiveLW4 = N'W84F1200',FormCallLW4 = N'',DeviceType = N'D'
WHERE ScreenID = 'D84F1200'



--dat tmh

IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0140 WITH(NOLOCK) WHERE ScreenID = 'Z_D01F4070')
INSERT INTO D00T0140(ScreenID, ScreenName, ModuleID, DateEntered, DateLastModified, CreatedUser, ModifiedUser, ScreenNameEnglish, OrderNo, 
ScreenType, ScreenNameVietNamese, RelationScreenID, ScreenNameVietNameseU, ScreenNameEnglishU, IsLemonWeb, FormActive, Level, IsLW4, FormActiveLW4, 
FormCallLW4, Disabled, DeviceType)
VALUES (N'Z_D01F4070',N'Lịch sử duyệt đề nghị công tác',N'D01','03/30/2026','03/30/2026',N'LEMONADMIN',N'LEMONADMIN',N'Business Trip Request Approval History Report',0,N'I',N'Lịch sử duyệt đề nghị công tác',
N'',N'Lịch sử duyệt đề nghị công tác',
N'Business Trip Request Approval History Report',0,N'',0,0,N'',N'',0,N'D')

ELSE
UPDATE D00T0140
SET ScreenID = N'Z_D01F4070',ScreenName = N'Lịch sử duyệt đề nghị công tác',ModuleID = N'D01',DateEntered = '03/30/2026',DateLastModified = '03/30/2026',
CreatedUser = N'LEMONADMIN',ModifiedUser = N'LEMONADMIN',ScreenNameEnglish = N'Business Trip Request Approval History Report',
OrderNo = 0,ScreenType = N'I',ScreenNameVietNamese = N'Lịch sử duyệt đề nghị công tác',RelationScreenID = N'',ScreenNameVietNameseU =
 N'Lịch sử duyệt đề nghị công tác',ScreenNameEnglishU = N'Business Trip Request Approval History Report',IsLemonWeb = 0,
 FormActive = N'',
 Level = 0,IsLW4 = 0,FormActiveLW4 = N'',FormCallLW4 = N'',
 DeviceType = N'D'
WHERE ScreenID = 'Z_D01F4070'


---

ALTER TABLE LEMONSYS.DBO.D00T0141 ENABLE TRIGGER ALL

------------------------------------------------------------------------------
select top 1 1 from LEMONSYS..D00T0140 WIH(NOLOCK) WHERE ScreenID='Z_D01F4070'
select*from D00T0140 where ScreenID='Z_D01F4070'
select*from D00T0141 WHERE ScreenID='Z_D01F4070'

