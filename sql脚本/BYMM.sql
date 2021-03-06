USE [BYMM]
GO
/****** Object:  Table [dbo].[T_User]    Script Date: 08/04/2015 11:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_User](
	[userID] [varchar](20) NOT NULL,
	[userName] [varchar](50) NULL,
	[userPassword] [varchar](50) NULL,
	[userGroup] [varchar](50) NULL,
 CONSTRAINT [PK_T_user] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'gly管理员、yh用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_User', @level2type=N'COLUMN',@level2name=N'userGroup'
GO
/****** Object:  Table [dbo].[T_Scraping]    Script Date: 08/04/2015 11:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Scraping](
	[mNum] [varchar](150) NOT NULL,
	[mName] [varchar](150) NULL,
	[mCategory] [varchar](150) NULL,
	[mPrice] [float] NULL,
	[mDate] [datetime] NULL,
	[applicant_name] [varchar](150) NULL,
	[applicant_id] [varchar](150) NULL,
	[applicant_tel] [varchar](150) NULL,
	[applicant_dept] [varchar](150) NULL,
	[applicant_dept_tel] [varchar](150) NULL,
	[agent_name] [varchar](150) NULL,
 CONSTRAINT [PK_T_Scraping_1] PRIMARY KEY CLUSTERED 
(
	[mNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Scraping', @level2type=N'COLUMN',@level2name=N'mName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Scraping', @level2type=N'COLUMN',@level2name=N'mCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Scraping', @level2type=N'COLUMN',@level2name=N'mDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Scraping', @level2type=N'COLUMN',@level2name=N'applicant_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Scraping', @level2type=N'COLUMN',@level2name=N'applicant_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Scraping', @level2type=N'COLUMN',@level2name=N'applicant_tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Scraping', @level2type=N'COLUMN',@level2name=N'applicant_dept'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Scraping', @level2type=N'COLUMN',@level2name=N'agent_name'
GO
/****** Object:  Table [dbo].[T_InUsing]    Script Date: 08/04/2015 11:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_InUsing](
	[mNum] [varchar](150) NOT NULL,
	[mName] [varchar](150) NULL,
	[mCategory] [varchar](150) NULL,
	[mPrice] [float] NULL,
	[oSDate] [datetime] NULL,
	[owner] [varchar](150) NULL,
	[owner_id] [varchar](150) NULL,
	[owner_tel] [varchar](150) NULL,
	[owner_dept] [varchar](150) NULL,
	[owner_dept_tel] [varchar](150) NULL,
	[agent_name] [varchar](150) NULL,
 CONSTRAINT [PK_InUsing] PRIMARY KEY CLUSTERED 
(
	[mNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备序列号，唯一标实' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_InUsing', @level2type=N'COLUMN',@level2name=N'mNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_InUsing', @level2type=N'COLUMN',@level2name=N'mName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备所属类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_InUsing', @level2type=N'COLUMN',@level2name=N'mCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出库日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_InUsing', @level2type=N'COLUMN',@level2name=N'oSDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前使用者（持有者）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_InUsing', @level2type=N'COLUMN',@level2name=N'owner'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'持有者工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_InUsing', @level2type=N'COLUMN',@level2name=N'owner_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'持有者联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_InUsing', @level2type=N'COLUMN',@level2name=N'owner_tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'持有者所属部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_InUsing', @level2type=N'COLUMN',@level2name=N'owner_dept'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'持有者所属部门电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_InUsing', @level2type=N'COLUMN',@level2name=N'owner_dept_tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_InUsing', @level2type=N'COLUMN',@level2name=N'agent_name'
GO
/****** Object:  Table [dbo].[T_InStocking]    Script Date: 08/04/2015 11:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_InStocking](
	[mNum] [varchar](150) NOT NULL,
	[mName] [varchar](150) NULL,
	[mCategory] [varchar](150) NULL,
	[mPrice] [float] NULL,
	[iSDate] [datetime] NULL,
 CONSTRAINT [PK_Stocking] PRIMARY KEY CLUSTERED 
(
	[mNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物资序列号，唯一标示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_InStocking', @level2type=N'COLUMN',@level2name=N'mNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_InStocking', @level2type=N'COLUMN',@level2name=N'mName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_InStocking', @level2type=N'COLUMN',@level2name=N'mCategory'
GO
/****** Object:  Table [dbo].[T_Fixed]    Script Date: 08/04/2015 11:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Fixed](
	[mNum] [varchar](150) NOT NULL,
	[mName] [varchar](150) NULL,
	[mCategory] [varchar](150) NULL,
	[mPrice] [float] NULL,
	[mDate] [datetime] NULL,
	[applicant_name] [varchar](150) NULL,
	[applicant_id] [varchar](150) NULL,
	[applicant_tel] [varchar](150) NULL,
	[applicant_dept] [varchar](150) NULL,
	[applicant_dept_tel] [varchar](150) NULL,
	[agent_name] [varchar](150) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Fixed', @level2type=N'COLUMN',@level2name=N'mName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Fixed', @level2type=N'COLUMN',@level2name=N'mCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Fixed', @level2type=N'COLUMN',@level2name=N'mDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Fixed', @level2type=N'COLUMN',@level2name=N'applicant_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Fixed', @level2type=N'COLUMN',@level2name=N'applicant_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Fixed', @level2type=N'COLUMN',@level2name=N'applicant_tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Fixed', @level2type=N'COLUMN',@level2name=N'applicant_dept'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_Fixed', @level2type=N'COLUMN',@level2name=N'agent_name'
GO
/****** Object:  Table [dbo].[T_ApplyFix]    Script Date: 08/04/2015 11:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_ApplyFix](
	[mNum] [varchar](150) NOT NULL,
	[mName] [varchar](150) NULL,
	[mCategory] [varchar](150) NULL,
	[mPrice] [float] NULL,
	[mDate] [datetime] NULL,
	[applicant_name] [varchar](150) NULL,
	[applicant_id] [varchar](150) NULL,
	[applicant_tel] [varchar](150) NULL,
	[applicant_dept] [varchar](150) NULL,
	[applicant_dept_tel] [varchar](150) NULL,
	[agent_name] [varchar](150) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ApplyFix', @level2type=N'COLUMN',@level2name=N'mName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ApplyFix', @level2type=N'COLUMN',@level2name=N'mCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报废日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ApplyFix', @level2type=N'COLUMN',@level2name=N'mDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ApplyFix', @level2type=N'COLUMN',@level2name=N'applicant_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ApplyFix', @level2type=N'COLUMN',@level2name=N'applicant_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ApplyFix', @level2type=N'COLUMN',@level2name=N'applicant_tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ApplyFix', @level2type=N'COLUMN',@level2name=N'applicant_dept'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_ApplyFix', @level2type=N'COLUMN',@level2name=N'agent_name'
GO
