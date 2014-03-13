CREATE TABLE [dbo].[off_line_tocken](
	[tocken_id] [varchar](8) NOT NULL,
	[usr_id] [varchar](9) NOT NULL,
	[date_to_day] [int] NULL,
	[date_to_month] [int] NULL,
	[date_to_year] [int] NULL,
	[token_info] [text] NULL,
 CONSTRAINT [PK_off_line_tocken] PRIMARY KEY CLUSTERED 
(
	[tocken_id] ASC,
	[usr_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]