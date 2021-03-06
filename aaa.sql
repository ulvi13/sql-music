USE [music1]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 5/7/2019 10:20:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Countries] [nvarchar](60) NULL,
 CONSTRAINT [PK__Country__3213E83F1BC0DBF3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[favouritesong]    Script Date: 5/7/2019 10:20:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[favouritesong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[song_name] [int] NULL,
	[user_name] [int] NULL,
 CONSTRAINT [PK__favourit__3213E83F5EEE398F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[janr]    Script Date: 5/7/2019 10:20:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[janr](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1) NULL,
	[janr_id] [int] NULL,
 CONSTRAINT [PK__janr__3213E83F9A712AAC] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[janr_to_music]    Script Date: 5/7/2019 10:20:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[janr_to_music](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[janr_id] [int] NULL,
	[music_id] [int] NULL,
 CONSTRAINT [PK_janr_to_music] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[listener]    Script Date: 5/7/2019 10:20:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[listener](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[music_id] [int] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK__listener__3213E83FA9863DE2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[music]    Script Date: 5/7/2019 10:20:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[music](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[musiclong] [int] NULL,
	[launch] [datetime] NULL,
	[signer_id] [int] NULL,
 CONSTRAINT [PK__music__3213E83FD7AF7170] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Signer]    Script Date: 5/7/2019 10:20:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Signer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NULL,
	[Birthdate] [date] NULL,
 CONSTRAINT [PK__Signer__3213E83F023E9AB2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 5/7/2019 10:20:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](60) NULL,
	[surname] [nvarchar](60) NULL,
	[birthdate] [int] NULL,
	[user_email] [nvarchar](60) NULL,
	[country_id] [int] NULL,
 CONSTRAINT [PK__user__3213E83F476669E3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([id], [Countries]) VALUES (1, N'okjki')
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[favouritesong] ON 

INSERT [dbo].[favouritesong] ([id], [song_name], [user_name]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[favouritesong] OFF
SET IDENTITY_INSERT [dbo].[music] ON 

INSERT [dbo].[music] ([id], [name], [musiclong], [launch], [signer_id]) VALUES (1, N'Mirrors', 45, CAST(N'2000-02-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[music] ([id], [name], [musiclong], [launch], [signer_id]) VALUES (2, N'dfggf', 44, CAST(N'2015-05-14T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[music] OFF
SET IDENTITY_INSERT [dbo].[Signer] ON 

INSERT [dbo].[Signer] ([id], [Fullname], [Birthdate]) VALUES (1, N'asdsad]', CAST(N'2000-05-20' AS Date))
INSERT [dbo].[Signer] ([id], [Fullname], [Birthdate]) VALUES (2, N'jhg', CAST(N'2003-04-10' AS Date))
SET IDENTITY_INSERT [dbo].[Signer] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [name], [surname], [birthdate], [user_email], [country_id]) VALUES (1, N'jhfhg', N'bnv jhvhj', 2000, N'uhuhu', 1)
SET IDENTITY_INSERT [dbo].[users] OFF
ALTER TABLE [dbo].[favouritesong]  WITH CHECK ADD  CONSTRAINT [FK_favourite song_music] FOREIGN KEY([song_name])
REFERENCES [dbo].[music] ([id])
GO
ALTER TABLE [dbo].[favouritesong] CHECK CONSTRAINT [FK_favourite song_music]
GO
ALTER TABLE [dbo].[janr_to_music]  WITH CHECK ADD  CONSTRAINT [FK_janr_to_music_janr] FOREIGN KEY([janr_id])
REFERENCES [dbo].[janr] ([id])
GO
ALTER TABLE [dbo].[janr_to_music] CHECK CONSTRAINT [FK_janr_to_music_janr]
GO
ALTER TABLE [dbo].[janr_to_music]  WITH CHECK ADD  CONSTRAINT [FK_janr_to_music_music] FOREIGN KEY([music_id])
REFERENCES [dbo].[music] ([id])
GO
ALTER TABLE [dbo].[janr_to_music] CHECK CONSTRAINT [FK_janr_to_music_music]
GO
ALTER TABLE [dbo].[listener]  WITH CHECK ADD  CONSTRAINT [FK_listener_music] FOREIGN KEY([music_id])
REFERENCES [dbo].[music] ([id])
GO
ALTER TABLE [dbo].[listener] CHECK CONSTRAINT [FK_listener_music]
GO
ALTER TABLE [dbo].[listener]  WITH CHECK ADD  CONSTRAINT [FK_listener_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[listener] CHECK CONSTRAINT [FK_listener_user]
GO
ALTER TABLE [dbo].[music]  WITH CHECK ADD  CONSTRAINT [FK_music_Signer] FOREIGN KEY([signer_id])
REFERENCES [dbo].[Signer] ([id])
GO
ALTER TABLE [dbo].[music] CHECK CONSTRAINT [FK_music_Signer]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_user_Country] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_user_Country]
GO
