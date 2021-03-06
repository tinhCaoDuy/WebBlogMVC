USE [blog]
GO
/****** Object:  Table [dbo].[NGUOIDANGKI]    Script Date: 12/06/2019 19:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDANGKI](
	[MANGUOIDANGKI] [int] IDENTITY(1,1) NOT NULL,
	[EMAIL] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANGUOIDANGKI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[EMAIL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NGUOIDANGKI] ON
INSERT [dbo].[NGUOIDANGKI] ([MANGUOIDANGKI], [EMAIL], [SDT]) VALUES (1, N'dfnguyenhoanganh@gmail.com', N'0904453423')
INSERT [dbo].[NGUOIDANGKI] ([MANGUOIDANGKI], [EMAIL], [SDT]) VALUES (2, N'hoangvan1999@yahoo.com', N'0984523444')
INSERT [dbo].[NGUOIDANGKI] ([MANGUOIDANGKI], [EMAIL], [SDT]) VALUES (7, N'truonggiang741999@gmail.com', N'0868889709')
INSERT [dbo].[NGUOIDANGKI] ([MANGUOIDANGKI], [EMAIL], [SDT]) VALUES (8, N'gfd@fg', N'09444534545')
SET IDENTITY_INSERT [dbo].[NGUOIDANGKI] OFF
/****** Object:  Table [dbo].[MAILFORM]    Script Date: 12/06/2019 19:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAILFORM](
	[MAMAIL] [int] IDENTITY(1,1) NOT NULL,
	[MAILFROM] [nvarchar](300) NULL,
	[MAILSUBJECT] [nvarchar](1000) NOT NULL,
	[MAILBODY] [nvarchar](3000) NOT NULL,
	[THOIGIAN] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAMAIL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MAILFORM] ON
INSERT [dbo].[MAILFORM] ([MAMAIL], [MAILFROM], [MAILSUBJECT], [MAILBODY], [THOIGIAN]) VALUES (1, N'ádf', N'sdf', N'sdf', CAST(0x5C400B00 AS Date))
INSERT [dbo].[MAILFORM] ([MAMAIL], [MAILFROM], [MAILSUBJECT], [MAILBODY], [THOIGIAN]) VALUES (2, N'sdf', N'sdf', N'sdf', CAST(0x5C400B00 AS Date))
INSERT [dbo].[MAILFORM] ([MAMAIL], [MAILFROM], [MAILSUBJECT], [MAILBODY], [THOIGIAN]) VALUES (3, N'fdasdf', N'ádf', N'ádf', CAST(0x65400B00 AS Date))
INSERT [dbo].[MAILFORM] ([MAMAIL], [MAILFROM], [MAILSUBJECT], [MAILBODY], [THOIGIAN]) VALUES (4, N'Blog-G', N'Bài viết mới Từ Blog G', N'Firefox tròn 15 tuổi: trỗi dậy, gục ngã và cuộc phục hưng về quyền riêng tư. để xem vui lòng truy cập link http://localhost:9999/BLOG/contents/31.htm', CAST(0x65400B00 AS Date))
SET IDENTITY_INSERT [dbo].[MAILFORM] OFF
/****** Object:  Table [dbo].[FILES]    Script Date: 12/06/2019 19:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FILES](
	[MAFILE] [int] IDENTITY(1,1) NOT NULL,
	[TENFILE] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK__FILES__E6DE4A954316F928] PRIMARY KEY CLUSTERED 
(
	[MAFILE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__FILES__531425DF45F365D3] UNIQUE NONCLUSTERED 
(
	[TENFILE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FILES] ON
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (7, N'5gwirelesstechnologynetworkcon-4564-3241-1573009108_140x84.jpg')
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (8, N'874ee132-0002-11ea-ab68-c2fa11-5837-4526-1573009108.png')
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (24, N'9.PNG')
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (9, N'baithuocchuathanlarge-1572621546488470334053-crop-15726215518852108047225.jpg')
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (10, N'cachtoiuuwifi.jpg')
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (11, N'l1qyedv-1572854343087184029940-crop-1572854352585350561921.jpg')
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (12, N'photo-1-1546505307889433142180-1572621734866714318770.jpg')
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (13, N'photo-1-15726198855531410028291.jpg')
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (14, N'photo-1-15728541057191957415246.jpg')
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (15, N'photo-1-1572854145669468080262.jpg')
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (18, N'photo-1-15737153071001422994168.jpg')
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (19, N'photo-1-1573715310279545300618.jpg')
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (23, N'photo-1-15737153138131305066501.jpg')
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (16, N'photo1572619882518-1572619882833-crop-15726198886001494732648.jpg')
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (20, N'photo-2-15737153102961734579625.jpg')
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (21, N'photo-3-1573715310298905086556.jpg')
INSERT [dbo].[FILES] ([MAFILE], [TENFILE]) VALUES (22, N'photo-4-15737153103021459627984.jpg')
SET IDENTITY_INSERT [dbo].[FILES] OFF
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 12/06/2019 19:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[MADANHMUC] [nvarchar](50) NOT NULL,
	[TENDANHMUC] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__DANHMUC__804E28847F60ED59] PRIMARY KEY CLUSTERED 
(
	[MADANHMUC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DANHMUC] ([MADANHMUC], [TENDANHMUC]) VALUES (N'CNTT', N'Công Nghệ Thông Tin')
INSERT [dbo].[DANHMUC] ([MADANHMUC], [TENDANHMUC]) VALUES (N'cs', N'danh')
INSERT [dbo].[DANHMUC] ([MADANHMUC], [TENDANHMUC]) VALUES (N'LIFE', N'Chuyện cuộc sống')
/****** Object:  Table [dbo].[THONGBAO]    Script Date: 12/06/2019 19:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGBAO](
	[MANGUOIDANGKI] [int] NOT NULL,
	[MAMAIL] [int] NOT NULL,
	[MATHONGBAO] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_THONGBAO] PRIMARY KEY CLUSTERED 
(
	[MATHONGBAO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[THONGBAO] ON
INSERT [dbo].[THONGBAO] ([MANGUOIDANGKI], [MAMAIL], [MATHONGBAO]) VALUES (7, 3, 1)
INSERT [dbo].[THONGBAO] ([MANGUOIDANGKI], [MAMAIL], [MATHONGBAO]) VALUES (7, 4, 2)
SET IDENTITY_INSERT [dbo].[THONGBAO] OFF
/****** Object:  Table [dbo].[BAIVIET]    Script Date: 12/06/2019 19:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAIVIET](
	[MABAIVIET] [int] IDENTITY(1,1) NOT NULL,
	[MADANHMUC] [nvarchar](50) NOT NULL,
	[TIEUDE] [nvarchar](300) NOT NULL,
	[MOTA] [nvarchar](1000) NOT NULL,
	[HINHMT] [nvarchar](300) NULL,
	[THOIGIAN] [date] NULL,
	[NOIDUNG] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__BAIVIET__98A21B4B239E4DCF] PRIMARY KEY CLUSTERED 
(
	[MABAIVIET] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BAIVIET] ON
INSERT [dbo].[BAIVIET] ([MABAIVIET], [MADANHMUC], [TIEUDE], [MOTA], [HINHMT], [THOIGIAN], [NOIDUNG]) VALUES (1, N'LIFE', N'Có một cuộc khủng hoảng quy mô toàn cầu liên quan đến chất lỏng quý nhất trên cơ thể người: 60% quốc gia không thể đáp ứng đủ', N'Gần 120 quốc gia đang phải trải qua cơn khủng hoảng này, và đó chưa phải là số liệu cuối cùng.', N'photo1572619882518-1572619882833-crop-15726198886001494732648.jpg', CAST(0x55400B00 AS Date), N'<p>Chất lỏng chúng ta nhắc đến ở đây chính là máu!</p>

<p>Khi Karl Landsteiner đưa ra quy tắc nhóm máu và các kháng nguyên, người ta gọi đó là phát kiến vĩ đại nhất kỷ nguyên loài người. Nhờ những quy tắc này, con người đã có thể truyền máu một cách an toàn hơn, từ đó cứu sống vô số bệnh nhân từ sản phụ sinh con, người bị tai nạn, cho đến các trường hợp mắc chứng thiếu máu và bệnh nhân bị ung thư.</p>

<p>Nhưng giờ đây, câu chuyện truyền máu đang bước vào một cơn khủng hoảng với quy mô toàn cầu. Theo như báo cáo mới nhất từ tạp chí The Lancet Haematology, toàn thế giới đang rơi vào tình trạng thiếu hụt máu trầm trọng, với ít nhất 60% các quốc gia đang không có đủ máu để cứu người.</p>

<p>Thông thường, nguồn cung máu được lấy từ những tình nguyện viên khỏe mạnh, sẵn sàng hiến máu khi cần. Tuy nhiên, nguồn này thường không ổn định và khó lòng đáp ứng nhu cầu ngày càng tăng.&nbsp;</p>

<p>Đứng trước tình trạng này, các chuyên gia từ ĐH Washington (Hoa Kỳ) quyết định thực hiện một nghiên cứu liên quan, nhằm xác nhận thực trạng thiếu hụt máu trên phạm vi toàn thế giới và tìm ra giải pháp cho nó.</p>

<p>Bằng cách ước tính số lượng máu cần để điều trị một số loại bệnh trên thế giới, họ kết luận được rằng có đến 61% quốc gia hiện nay không có đủ nguồn cung đáp ứng nhu cầu truyền máu. Trong đó, tại phía trung, đông và tây vùng Hạ Sahara của châu Phi; châu Đại Dương và Nam Á, gần như toàn bộ các quốc gia đều rơi vào tình trạng này (ngoài trừ Úc),</p>

<p>Tổng cộng, có 119/195 quốc gia hiện đang thiếu máu. Trung bình, mỗi quốc gia thiếu khoảng 1849 đơn vị máu trên 100.000 người dân. Đặc biệt, tình trạng này cực kỳ phổ biến ở các nước có thu nhập trung bình và thấp, bất chấp thực tế rằng những quốc gia này có nhu cầu truyền máu thấp hơn so với nước có thu nhập cao.</p>

<p><img alt="" src="/BLOG/files/photo-1-15726198855531410028291.jpg" style="height:100%; width:100%" /></p>

<p>Trên thực tế, các quốc gia giàu có thường đòi hỏi lượng máu nhiều hơn nhằm điều trị cho những ca mắc bệnh tim hoặc chấn thương hoặc tai nạn nghiêm trọng. Còn các nước thu nhập thấp, lượng máu cần truyền để dành cho bệnh lao, bệnh hô hấp, thậm chí là thiếu hụt vi chất như sắt.</p>

<p>Cũng theo các chuyên gia, tổ chức Y tế thế giới WHO hiện tại đang đánh giá quá thấp vấn đề này. WHO hiện đang đặt mục tiêu 10 - 20 người hiến máu trên mỗi 1000 người dân, nhưng sự thực là 195 quốc gia trên thế giới đều phải vượt xa tỉ lệ này mới đáp ứng đủ nhu cầu truyền máu. Như tại Đông Âu, ít nhất cũng phải 40 người hiến trên 1000 người.</p>

<p>Đan Mạch hiện là quốc gia có nguồn cung máu lớn nhất - 14.704 đơn vị/100.000 người. Nhưng với các quốc gia như Ấn Độ, Madagascar, Nam Sudan... cầu đang vượt cung tới ít nhất 75 lần.</p>

<p>Nicholas Roberts - tác giả nghiên cứu cho biết báo cáo này còn nhiều hạn chế, nên có thể họ cũng chưa đánh giá đúng độ nghiêm trọng của câu chuyện này. Dù vậy, Roberts mong rằng nó sẽ mang lại thông tin hữu ích cho các nhà lập pháp và chuyên gia y tế, để sớm có những giải pháp phù hợp hơn.</p>
')
INSERT [dbo].[BAIVIET] ([MABAIVIET], [MADANHMUC], [TIEUDE], [MOTA], [HINHMT], [THOIGIAN], [NOIDUNG]) VALUES (2, N'LIFE', N'Rất nhiều người Việt đang "đầu độc" lá gan bằng một thói quen tưởng vô hại', N'Hiện nay, rất nhiều người Việt đang có thói quen tự dùng thuốc nam, thuốc Đông y để thải độc gan mà không hay biết có thể gây ngộ độc cho gan.', N'baithuocchuathanlarge-1572621546488470334053-crop-15726215518852108047225.jpg', CAST(0x55400B00 AS Date), N'<h3><strong>Hỏng gan vì thuốc Nam và ăn kiêng</strong></h3>

<p>Mới đây, khoa cấp cứu, Bệnh viện Bạch Mai tiếp nhận một trường hợp bệnh nhân bị suy gan cấp nguy kịch tới tính mạng sau khi uống thuốc Nam và ăn gạo lứt muối mè.</p>

<p>Theo&nbsp;<strong>bác sĩ Ngô Đức Hùng</strong>, Khoa Cấp cứu, Bệnh viện Bạch Mai, bệnh nhân trên có tiền sử&nbsp;xơ gan&nbsp;ở mức độ trung bình. Nếu bệnh nhân điều trị tốt có thể ổn định được nhiều năm.</p>

<p>Tuy nhiên, bệnh nhân đã nghe theo lời giới thiệu của người quen đặt mua thuốc Nam uống và kết hợp với ăn kiêng muối mè gạo lứt. Sau một thời gian thực hiện bệnh nhân đã rơi vào tình trạng suy gan cấp, hôn mê gan và được gia đình đưa đi cấp cứu.</p>

<p>Bệnh nhân đã được chạy gan nhân tạo, lọc máu để hấp phụ hết chất độc trong máu. May mắn bệnh nhân còn đáp ứng và qua khỏi cơn nguy kịch. Tuy nhiên, mức độ xơ gan của bệnh nhân tăng lên</p>

<p>.<img alt="" src="/BLOG/files/photo-1-1546505307889433142180-1572621734866714318770.jpg" style="height:100%; width:100%" /></p>

<p><strong>PGS.TS Trịnh Thị Ngọc</strong>, Phó Chủ tịch Hội gan mật Việt Nam,&nbsp;nguyên Trưởng Khoa Truyền nhiễm, Bệnh viện Bạch Mai cho biết, tại khoa truyền nhiễm không hiếm gặp những trường hợp bệnh nhân bị ngộ độc gan cấp dẫn tới hôn mê gan và tử vong do dùng thuốc Nam, thuốc Đông y không có nguồn gốc.</p>

<p>Những bệnh nhân này thường đã có tổn thương gan như: viêm gan, xơ gan. Nhưng chỉ vì tự ý dùng thuốc Nam, thuốc Đông y khiến cho bệnh chuyển biến nặng nguy kịch tới tính mạng thậm chí tử vong.</p>

<p><em>&quot;</em><em>Bản thân thuốc Đông Y, thuốc lá, thuốc Nam không có nguồn gốc thường có các chất bảo quản ảnh hưởng tới gan. Những bệnh nhân đã có tổn thương gan uống các loại thuốc này khiến gan sẽ dễ dàng bị ngộ độc cấp&quot;,&nbsp;<strong>PGS&nbsp;</strong></em><strong>Ngọc</strong>&nbsp;nói.</p>

<p>Gan là một cơ quan khá đặc biệt trong cơ thể, số lượng tế bào gan rất lớn tới hàng trăm tỷ tế bào. Khi một tế bào gan chết đi sẽ có tế bào khác thay thế. Vì vậy, bệnh nhân dù đã bị xơ ở mức độ trung bình nhưng kiểm soát tốt bệnh nhân vẫn có thể sống bình thường. Bệnh về gan chỉ thể hiện khi gan đã suy kiệt.</p>

<p><strong>PGS Ngọc</strong>&nbsp;khuyến cáo, người dân tuyệt đối không nên dùng các loại thuốc Nam, thuốc Đông y không rõ nguồn gốc dẫn tới hỏng gan, xơ gan mất bù. Thận trọng khi dùng thuốc điều trị khi chưa có chỉ định của bác sĩ, vì có thể ảnh hưởng tới chức năng gan.</p>

<h3><strong>Cảnh giác với bệnh lý gan mật</strong></h3>

<p><strong>PGS Ngọc</strong>&nbsp;cho hay, bệnh lý gan của Việt Nam trong những năm gần đây ngày càng tăng lên do rất nhiều nguyên nhân.</p>

<p>- Tỷ lệ viêm gan B, C tại Việt Nam rất cao trong cộng đồng, gây ra xơ gan và&nbsp;ung thư gan</p>

<p>- Do nhiễm độc: hóa chất, thuốc trừ sâu, thuốc tây, thuốc Đông y, thuốc Nam, rượu bia, chuyển hóa (gan nhiễm mỡ)...</p>

<p>- Nhiễm trùng &ndash; Ký sinh trùng: Nhiễm trùng huyết, nhiễm trùng đường mật, sán lá gan&hellip;</p>

<p>- Viêm gan tự miễn: Cơ thể tự sinh ra tế bào chống lại tế bào gan.</p>

<p>Để bảo vệ lá gan&nbsp;<strong>PGS Ngọc</strong>&nbsp;khuyến cáo mỗi người dân nên có ý thức tầm soát bệnh lý gan 6 tháng/lần. Một số triệu chứng gợi lý cần nghĩ tới bệnh lý gan như sau:</p>

<p>- Ăn kém</p>

<p>- Mắt vàng</p>

<p>- Đau tức hạ sườn phải, đau tăng khi vận động</p>

<p>- Chán ăn</p>

<p>- Buồn nôn</p>

<p>- Nước tiểu màu sẫm</p>

<p>Ngoài ra, người dân cần phải tự bảo vệ sức khỏe của mình bằng cách có chế độ nghỉ ngơi hợp lý, ăn uống đúng giờ giấc, hạn chế sử dụng đồ ăn có chứa nhiều chất béo và đồ uống có cồn... Khi có triệu chứng gợi ý tới bệnh lý gan, nên đến cơ sở y tế để được chẩn đoán và điều trị sớm, giúp bảo vệ lá gan khỏe mạnh.</p>
')
INSERT [dbo].[BAIVIET] ([MABAIVIET], [MADANHMUC], [TIEUDE], [MOTA], [HINHMT], [THOIGIAN], [NOIDUNG]) VALUES (10, N'CNTT', N'8 Thứ trong nhà làm sóng wifi yếu đi mà chúng ta không biết!', N'Dù bạn dùng wifi ở ngay cạnh router nhưng vì sao vẫn kết nối chập chờn?????', N'cachtoiuuwifi.jpg', CAST(0x55400B00 AS Date), N'<p>Vì có những vật dụng trong nhà làm&nbsp;sóng wifi&nbsp;yếu đi mà chúng ta không biết. Bạn không nên đặt router wifi gần những đồ vật sau đây:</p>

<p><strong>1/ Bề mặt và đồ dùng bằng kim loại</strong></p>

<p>Kim loại là chất dẫn điện, có nghĩa nó hấp thụ điện. Vì router wifi giải phóng sóng điện từ nên gặp kim loại trong nhà sẽ ngăn sóng lan rộng. Nếu bạn muốn kết nối internet không gặp sự cố, thì cần phải đặt router cách xa đồ vật bằng kim loại.</p>

<p><strong>2/ Tường gạch và đá</strong></p>

<p>Một số loại tường ngăn tín hiệu wifi. Các vật liệu phổ biến ngăn kết nối wifi là: đá cẩm thạch, xi măng, bê tông, thạch cao và gạch. Cho nên, trong nhà nhiều tầng thường bị sóng wifi yếu ở mỗi tầng. Để khắc phục, bạn hãy đặt router chỗ thoáng đãng cách xa tường và dùng thêm bộ khuếch đại sóng wifi.</p>

<p><strong>3/ Gương</strong></p>

<p>Gương cũng phản hồi tín hiệu từ router. Nó như lá chắn làm cho kết nối internet gián đoạn. Nếu đặt gương cạnh router wifi, nó làm cho cường độ tín hiệu yếu đi và không ổn định.</p>

<p><strong>4/ Tủ lạnh và máy giặt</strong></p>

<p>Theo nguyên tắc chung, các thiết bị điện có đường ống dẫn nước sẽ kỵ với tín hiệu wifi. Nước giữ lại một phần năng lượng của sóng không dây, gây ảnh hưởng xấu đến chất lượng kết nối internet.</p>

<p><strong>5/ Đèn màu nhấp nháy</strong></p>

<p>Đèn màu nhấp nháy có thể làm tín hiệu wifi yếu đi. Những con chip nhấp nháy tạo ra từ trường tương tác với sóng điện từ router phát ra. Bạn hãy đặt router cách xa đèn màu trang trí trong nhà.</p>

<p><strong>6/ Màn hình nhỏ</strong></p>

<p>Những màn hình nhỏ phát ra ở tần số 2,4 GHz, giống như wifi. Nên 2 hoặc nhiều thiết bị kết nối không dây truyền cùng tần số, sẽ gửi dữ liệu qua không khí thay cho truyền sóng. Màn hình nhỏ thường yêu cầu kết nối mạng để hoạt động nên hãy tránh đặt nó gần router.</p>

<p><strong>7/ Máy bay điều khiển từ xa</strong></p>

<p>Máy bay điều khiển từ xa cũng hoạt động ở tần số 2,4 GHz, nhưng không phải tất cả đều gây nhiễu. Nó phụ thuộc vào lượng điện năng mà mỗi máy bay cần.</p>

<p><strong>8/ Lò vi sóng</strong></p>

<p>Lò vi sóng có phổ tần số tương tự như wifi. Bạn hãy đặt router cao hơn lò vi sóng, sẽ làm giảm ảnh hưởng xấu đến sóng wifi.</p>

<p><em><strong>Ngoài ra, có nhiều biện pháp khác nhau làm sóng wifi trong nhà mạnh hơn mà bạn có thể thực hiện.</strong></em></p>

<p><strong>Các cách làm sóng wifi mạnh hơn</strong></p>

<p>1. Dựa vào kiến thức trên để đặt router ở chỗ thích hợp.</p>

<p>2. Luôn cập nhật router.</p>

<p>3. Dùng ăng-ten mạnh hơn.</p>

<p>4. Mã hóa wifi, bảo vệ nó bằng một mật khẩu mạnh để người ngoài không đoán ra được, tránh bị dùng trộm.</p>

<p>5. Mua bộ khuếch đại wifi, còn được gọi là bộ mở rộng wifi.</p>

<p>6. Sử dụng các công nghệ wifi mới nhất và hiện đại nhất.</p>

<p>7. Băng thông rộng hoạt động ở tần số 5 GHz thường cung cấp kết nối nhanh hơn nhiều so với các băng tần khác, bởi vì nó thông thoáng hơn băng tần 2,4 GHz.</p>

<p>8. Cài đặt lại router bằng bản cập nhật mới.</p>

<p><strong><em>Nguồn bài và ảnh: Bright Side</em></strong></p>
')
INSERT [dbo].[BAIVIET] ([MABAIVIET], [MADANHMUC], [TIEUDE], [MOTA], [HINHMT], [THOIGIAN], [NOIDUNG]) VALUES (16, N'CNTT', N'AMD, kẻ luôn nằm chiếu dưới, đang trở thành một thế lực đe dọa cả Intel và Nvidia', N'AMD chỉ là anh chàng tí hon so với Intel và Nvidia, nhưng lại đang đe dọa cả hai gã khổng lồ này.', N'l1qyedv-1572854343087184029940-crop-1572854352585350561921.jpg', CAST(0x56400B00 AS Date), N'<p>Trong cuộc chiến với Intel, thì AMD trông giống như anh chàng David tí hon đứng trước gã khổng lồ Goliath. Và kẻ giành chiến thắng cuối cùng chưa chắc đã là gã khổng lồ. Vừa mới đây, AMD đã công bố kết quả kinh doanh Q3/2019 của mình, mà theo CEO Lisa Wu thì những con số này khiến bà thực sự rất hài lòng.</p>

<p>Doanh thu của AMD đạt 1,8 tỷ USD, cao nhất kể từ năm 2005 đến nay. AMD cũng dự đoán kết quả kinh doanh quý tiếp theo sẽ vẫn khởi sắc, tăng trưởng 48% so với cùng kỳ năm ngoái để đạt 2,1 tỷ USD. Giá cổ phiếu của nhà sản xuất chip cũng đã tăng gấp 15 lần kể từ năm 2015.</p>

<img alt="CEO Lisa Wu của AMD trong buổi họp công bố kế quả kinh doanh Q3/2019" src="/BLOG/files/photo-1-15728541057191957415246.jpg" style="height:100%; width:100%" />
<div style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">CEO Lisa Wu của AMD trong buổi họp công bố kế quả kinh doanh Q3/2019</div>

<p>&nbsp;</p>

<p>Mặc dù có tầm vóc nhỏ bé, nhưng AMD vẫn tỏ rõ sự quan trọng của mình trong ngành công nghiệp chất bán dẫn, so kè cùng lúc với cả hai gã khổng lồ Intel và Nvidia.</p>

<p>Bộ vi xử lý CPU của AMD là chip đa năng, có thể sử dụng cho trung tâm dữ liệu, máy tính để bàn và máy tính xách tay, cạnh tranh với Intel - gã khổng lồ có doanh thu 78 tỷ USD trong năm 2018 và là nhà sản xuất chip lớn thứ 2 thế giới. Bộ vi xử lý đồ họa GPU của AMD hỗ trợ chơi game, xử lý tính toán trong trung tâm dữ liệu, trí tuệ nhân tạo và machine learning, cạnh tranh với Nvidia - doanh thu năm ngoái đạt 11,7 tỷ USD, gần gấp đôi so với AMD.</p>

<p>Trong đó, chiến trường khốc liệt nhất chính là đối đầu với Intel. Cho đến nay, Intel vẫn gần như độc quyền thị trường CPU. Theo Mercury Research, Intel chiếm 92,4% thị phần CPU cho máy tính và 99,2% thị phần CPU cho máy chủ, trong năm 2015. Tuy nhiên gần đây, thị phần của AMD đã tăng lên 14,7% đối với CPU cho máy tính, và 3,1% thị phần cho máy chủ.</p>

<p>Có hai nguyên nhân chính dẫn đến sự hồi sinh mạnh mẽ của AMD trước sự lấn át của gã khổng lồ Intel. Đầu tiên đó là những sản phẩm có chất lượng tốt hơn. Năm 2012, AMD đã thuê lại Jim Keller, một nhà thiết kế chip có nhiều kinh nghiệm và đã từng làm việc tại Apple.</p>

<p>AMD từ lâu đã sử dụng chiến lược cạnh tranh bằng giá, những con chip của AMD thường rẻ hơn nhiều so với Intel, nhưng hiệu năng cũng kém xa. Nhưng những con chip mới đây của Jim Keller, được ra mắt hồi năm 2017, không chỉ rẻ mà còn có hiệu năng không thua kém, thậm chí vượt mặt chip của Intel.</p>

<p><img alt="" src="/BLOG/files/photo-1-1572854145669468080262.jpg" style="height:100%; width:100%" /></p>

<p>&nbsp;</p>

<p>Những con chip Zen mới đã giúp AMD giành được một loạt hợp đồng với các đối tác lớn, như Microsoft và Sony (cho máy chơi game mới), Google (trung tâm dữ liệu) và Cray (siêu máy tính).</p>

<p>Lý do thứ hai đến từ Intel. Trong khi những con chip AMD liên tục cải tiến và gia tăng hiệu năng, Intel lại liên tục vấp ngã. Tiến trình sản xuất chip xử lý mới của Intel hứa hẹn mang đến hiệu năng ấn tượng hơn, nhưng đã liên tục bị hoãn lại. Khiến cho Intel vẫn phải sử dụng những kiến trúc cũ trên những bộ vi xử lý mới nhất của mình. AMD đã ký hợp đồng sản xuất với TSMC, nhà sản xuất chip đến từ Đài Bắc (Trung Quốc) với những công nghệ và dây chuyền tiên tiến hơn cả Intel.</p>

<p>Sự hồi sinh của AMD cũng là một tin vui đối với người tiêu dùng. Bởi sự cạnh tranh khiến cho Intel bắt buộc phải thay đổi, khi mà trước đây các sản phẩm của Intel luôn có giá thành cao. Tuy nhiên gần đây, Intel đã phải giảm giá các chip xử lý CPU mới để có thể cạnh tranh được với AMD. Dự kiến dòng chip xử lý mới nhất của Intel sẽ ra mắt vào tháng 11 này, và có giá bán rất phải chăng.</p>

<p>Intel đã ở trên ngai vàng quá lâu, mà quên mất rằng sự thay đổi và tiến bộ là điều kiện sống còn trong ngành công nghiệp công nghệ cao này. Những bằng chứng sống như Nokia hay BlackBerry có thể cho thấy rằng mọi gã khổng lồ đều có thể bị đánh bại. Vì vậy AMD hoàn toàn có thể tin vào một ngày sẽ lật đổ Intel, nếu cứ tiếp tục giữ vững phong độ như hiện nay.</p>

<p><em>Tham khảo:&nbsp;economist</em></p>
')
INSERT [dbo].[BAIVIET] ([MABAIVIET], [MADANHMUC], [TIEUDE], [MOTA], [HINHMT], [THOIGIAN], [NOIDUNG]) VALUES (28, N'CNTT', N'Mỹ lo mạng 5G của Trung Quốc ''chia rẽ thế giới''', N'Người đứng đầu FCC cho rằng việc tạo ra 5G kết hợp chính sách kiểm duyệt gắt gao của Trung Quốc có thể gây tác động tiêu cực đến Internet.', N'5gwirelesstechnologynetworkcon-4564-3241-1573009108_140x84.jpg', CAST(0x58400B00 AS Date), N'<p>&quot;Chúng tôi không muốn Internet bị Balkan hóa&quot;, Chủ tịch Ủy ban Truyền thông Liên bang Mỹ (FCC) Ajit Pai phát biểu tại Hội đồng Quan hệ đối ngoại (CFR) ở New York (Mỹ) hôm 5/11. &quot;Sự nổi bật của Trung Quốc trong công nghệ không dây 5G thế hệ mới không chỉ đe dọa đến an ninh Mỹ, mà còn có thể dẫn đến sự chia rẽ mạng Internet hết sức nguy hiểm&quot;.</p>

<img alt="" src="/BLOG/files/874ee132-0002-11ea-ab68-c2fa11-5837-4526-1573009108.png" style="height:100%; width:100%" />
<div style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">Chủ tịch FCC Ajit Pai. Ảnh:&nbsp;<em>Bloomberg</em></div>

<p>Ông Pai nhắc đến vấn đề Balkan hóa (Balkanised) - một từ địa chính trị để chỉ quá trình chia cắt một vùng hay một nước thành những vùng hay nước nhỏ hơn thường thù nghịch hay không hợp tác với nhau. Theo&nbsp;<em>SCMP</em>, ý của chủ tịch FCC là rất rõ ràng, trong đó lo ngại Mỹ - Trung sẽ tiếp tục đối đầu về công nghệ di động trong tương lai.</p>

<p>Thực tế, bài phát biểu của ông Pai cũng lộ rõ sự lo lắng này. &quot;Bạn không cần phải tìm ra bằng chứng cho thấy chính quyền Trung Quốc sẽ sử dụng sức ảnh hưởng ngày càng tăng của mình trong thương mại toàn cầu để thúc đẩy lợi ích của chính mình&quot;, ông Pai nói. &quot;Tôi lo kết quả cuối cùng (những tiến bộ về công nghệ của Trung Quốc) về cơ bản sẽ tạo ra thế đối lập, với một phiên bản tự do và bản còn lại được xây dựng bởi chính quyền Trung Quốc bị kiểm duyệt nặng nề. Điều đó thực sự không may mắn cho người dùng&quot;.</p>

<p>Cùng với đó, Pai ám chỉ sự xuất hiện của các công ty công nghệ Trung Quốc dưới danh nghĩa &quot;lực lượng toàn cầu&quot;, đặc biệt là sự trỗi dậy mạnh mẽ của Huawei - gã khổng lồ viễn thông của đất nước tỷ dân, là nhà cung cấp thiết bị 5G lớn nhất thế giới.</p>

<p>Từ lâu, chính quyền Tổng thống Donald Trump coi các sản phẩm của Huawei là &quot;mối đe dọa an ninh quốc gia&quot;, đồng thời liệt vào danh sách thực thể hồi tháng 5. Tuy nhiên, hãng nhiều lần phủ nhận cáo buộc, đồng thời vẫn tích cực hoạt động ở nhiều lĩnh vực, mà mới nhất là hỗ trợ ba nhà khai thác viễn thông China Mobile, China Telecom và China Unicom cùng bắt tay để cùng cung cấp mạng 5G&nbsp;lớn nhất trên thế giới.</p>

<p>Trước đó, trong một bài phát biểu trên&nbsp;<em>WSJ</em>, ông Pai cũng cho rằng việc cho phép các thiết bị viễn thông 5G Trung Quốc lắp đặt ở Mỹ có thể &quot;mở ra cơ hội kiểm duyệt, giám sát, gián điệp và những hành động gây hại khác&quot;.</p>

<p>Ngoài ra, người đứng đầu FCC cũng tiết lộ việc dành riêng nguồn lực để triển khai 5G tại Mỹ và đảm bảo quốc gia này vẫn tiên phong trong công nghệ kết nối không dây thế hệ mới. Chúng vẫn ưu tiên sự an toàn, bảo mật và mang tới các tiện ích cho người dùng.</p>

<p><strong>Bảo Lâm&nbsp;</strong>(theo&nbsp;<em>SCMP</em>)</p>

<p>&nbsp;</p>
')
INSERT [dbo].[BAIVIET] ([MABAIVIET], [MADANHMUC], [TIEUDE], [MOTA], [HINHMT], [THOIGIAN], [NOIDUNG]) VALUES (31, N'LIFE', N'Firefox tròn 15 tuổi: trỗi dậy, gục ngã và cuộc phục hưng về quyền riêng tư.', N'Trình duyệt của Mozilla ra mắt ngày 9/11/2004, trở thành một hiện tượng trước khi thất thủ trước Chrome. Nay Firefox đã trở lại để bảo vệ quyền riêng tư và tự do của người dùng.', N'photo-1-15737153138131305066501.jpg', CAST(0x64400B00 AS Date), N'<p>Có thể bạn đang đọc bài viết này trên trình duyệt Google Chrome (hoặc một trình duyệt nhân Chromium), vốn đang nắm 65% thị phần toàn cầu (và khoảng 50% tại Mỹ, nơi nó sinh ra). Chỉ khoảng 4-5% người duyệt web hiện sử dụng Firefox, trình duyệt mã nguồn mở do Mozilla Foundation (trụ sở tại California) phát triển. Nhưng thế giới web nay đã khác nhiều so với khi Firefox ra mắt 15 năm về trước, và trình duyệt này đang trên đà hồi sinh nhanh chóng.</p>

<p><img alt="" src="/BLOG/files/photo-1-15737153071001422994168.jpg" style="border-style:solid; border-width:1px; height:100%; width:100%" /></p>

<p>Phiên bản Firefox đầu tiên</p>

<p>Firefox không chỉ mang đến những ý tưởng của tương lai. Nó được xây dựng nên từ nền tảng bảo mật, và bước chân vào cuộc chiến khi IE6, trình duyệt đi kèm với Windows XP, đang vướng phải một cuộc khủng hoảng bảo mật. &quot;<em>Trình duyệt mà hầu hết mọi người đang dùng thời đó là một mối đe dọa bảo mật</em>&quot; &ndash; Baker nói. Chính phủ Mỹ thậm chí còn cảnh báo người tiêu dùng về những mối nguy bảo mật đi cùng với IE, vô tình tạo ra thời cơ hoàn hảo để Firefox vùng lên.</p>

<p>Hơn cả bảo mật, Firefox còn mang lại một giao diện đơn giản, dễ tiếp cận, hiệu năng nhanh nhạy, và giàu tính năng. Nó đã giúp tính năng duyệt web theo tab trở nên phổ biến từ lâu trước khi Microsoft nhận ra giá trị của tính năng đó. Firefox còn tăng cường hỗ trợ các công nghệ như JavaScript (phát minh bởi đồng sáng lập Mozilla, Brendan Eich) và các chuẩn như CSS vốn cho phép các trang web hoạt động nhất quán không lệ thuộc trình duyệt, cũng như các phần mở rộng giúp trình duyệt có khả năng tùy biến gần như vô hạn. Những lợi ích của việc chuyển sang Firefox là quá hiển nhiên, và bản thân việc chuyển đổi cũng dễ dàng, nên nhiều người chẳng nề hà gì.</p>

<p><strong><em>&quot;Có một số lĩnh vực mà Firefox không thỏa mãn được, thị phần IE vẫn độc tôn, và web vẫn là một nơi ít hấp dẫn hơn nhiều</em>&quot;</strong> &ndash; Harry McCracken viết nhân ngày sinh nhật 5 năm của Firefox vào năm 2009.</p>

<p>Bản chất máu lửa, phi lợi nhuận của Firefox xuất phát từ gốc rễ của tập đoàn tạo ra nó. Firefox khởi nguồn từ Netscape &ndash; nhà phát triển trình duyệt từng một thời thống trị thị trường, thực hiện đợt IPO lớn đầu tiên trong kỷ nguyên Internet (vào năm 1995). Bản thân Netscape lại được tạo ra bởi các nhà sáng lập Mosaic, trình duyệt web lớn đầu tiên. Năm 1998, Netscape công bố rằng mã nguồn cho trình duyệt của mình sẽ được mở, dưới một dự án với tên gọi Mozilla &ndash; kết hợp giữa Mosaic và Godzilla (logo nguyên gốc hình chú khủng long màu đỏ được thiết kế bởi họa sỹ đường phố Shepard Fairey, sau này là người vẽ nên tấm poster &quot;Hope&quot; nổi tiếng của Tổng thống Obama).</p>

<p>Năm 1999, gã khổng lồ Internet là AOL thâu tóm Netscape và để công ty chết dần như bao cuộc thâu tóm khác trước đây. Nhưng nhờ Mozilla Project, công nghệ đằng sau vẫn trường tồn. Dự án này ban đầu tạo ra một trình duyệt có tên Mozilla. Phiên bản sau này có tên Firefox được dẫn dắt bởi Joe Hewitt, Dave Hyatt, và Blake Ross &ndash; tuy nhiên trước đó, nó có một vài tên khác là Phoenix và Firebird, nhưng vướng phải một số vấn đề về thương hiệu.</p>

<p><img alt="" src="/BLOG/files/photo-1-1573715310279545300618.jpg" style="height:100%; width:100%" /></p>

<p>Firefox vào lần sinh nhật thứ 5</p>

<p><strong>Những ngày đen tối</strong></p>

<p>Năm 2009 đánh dấu giai đoạn đỉnh cao, để rồi từ đó Firefox&hellip;ngã &quot;sấp mặt&quot; đến nay vẫn chưa hồi phục được nguyên trạng. Nguyên nhân của sự tụt dốc được gói gọn trong một từ: Chrome. Trình duyệt của Google nhảy vào thị trường vào năm 2008, với giao diện đơn giản hơn và trải nghiệm duyệt web nhanh hơn.</p>

<p><strong>&quot;<em>Những phiên bản ban đầu của Chrome quả thực tốt hơn. Tôi thừa nhận điều đó</em>&quot;</strong> &ndash; Baker nói.</p>

<p>Google đã đầu tư mạnh vào công nghệ mới làm cốt lõi cho trình duyệt, gọi là &quot;engine&quot;, khiến nó hiệu quả hơn nhiều. Trong khi đó, Firefox được xây dựng trên một nền tảng code đã già cỗi, không thể cạnh tranh được.</p>

<p>Rõ ràng Google có ngân sách cực lớn phục vụ cho phát triển và marketing sản phẩm. Và khi các smartphone hiện đại xuất hiện, Google cũng là công ty sở hữu nền tảng di động lớn nhất thế giới, mang lại cho Chrome lợi thế tích hợp sẵn mà IE đã có trên PC vào những năm 1990. Apple có lợi thế tương tự trên iPhone, iPad, và Mac, cho phép trình duyệt Safari trở thành trình duyệt web phổ biến thứ hai trên thế giới (với khoảng 16% thị phần). Và không như Microsoft 15 năm về trước, Google và Apple không thỏa mãn và ngừng cải tiến trình duyệt của họ sau khi đã nắm trong tay thị phần lớn nói trên.</p>

<p><strong><em>(Trước khi Chrome ra mắt, Google đã rất hào hứng với Firefox, đến mức hãng này quảng bá cho trình duyệt ngay trên trang chủ của bộ máy tìm kiếm của mình. Ngay cả khi đã giới thiệu Chrome vào năm 2008, công ty vẫn tiếp tục giúp Firefox kiếm thêm chút đỉnh thông qua một thỏa thuận biến Google thành bộ máy tìm kiếm mặc định trong Firefox, và doanh thu quảng cáo sẽ được chia sẻ với Mozilla. Năm 2017, Mozilla thu về hơn 500 triệu USD từ quảng cáo, trong đó Google trở lại là đối tác chính sau một thời gian hợp tác với Yahoo).</em></strong></p>

<p>Sự sụp đổ của Firefox xảy đến giữa lúc Mozilla đang gặp rắc rối với một loạt những sản phẩm thất bại. Năm 2004, hãng tung ra trình quản lý email Thunderbird, nhưng nó chưa bao giờ đủ sức đối chọi với gã khổng lồ Microsoft Outlook. Năm 2013, Mozilla thách thức Android/iOS với một hệ điều hành di động nhẹ cân mang tên Firefox OS. Một loạt các mẫu điện thoại cài hệ điều hành này xuất hiện, nhưng không thu hút được sự chú ý của công chúng, và Firefox OS bị hủy bỏ vào năm 2017.</p>

<p>Một vài ứng dụng đặc biệt khác của Mozilla may mắn sống sót, như phần mềm theo dõi lỗi Bugzilla. Nhưng Mozilla là một công ty chuyên tập trung phát triển trình duyệt web, và trình duyệt web của họ thì không thực sự tốt như mong đợi.</p>

<p><img alt="" src="/BLOG/files/photo-2-15737153102961734579625.jpg" style="border-style:solid; border-width:1px; height:100%; width:100%" /></p>

<p>Firefox Quantum</p>

<p><strong>Bước nhảy lượng tử</strong></p>

<p><strong><em>&quot;Tôi nghĩ đã có lúc chúng tôi trở nên tự mãn</em>&quot;</strong> &ndash; Selena Deckelmann, một kỹ sư gia nhập Mozilla vào năm 2012 và hiện là giám đốc cấp cao của Firefox, cho biết. Công việc đầu tiên của Deckelmann là phân tích các bản báo cáo lỗi mà trình duyệt tạo ra khi có gì đó sai sót, nên cô rõ ràng có trách nhiệm hàng đầu trước sự thất bại của sản phẩm. Sự tụt dốc của Firefox đã cho thấy mặt trái của một nỗ lực phi lợi nhuận, thực hiện bởi những tình nguyện viên. Không có những áp lực kinh doanh như phải làm hài lòng các cổ đông, một tổ chức có thể đánh mất tư tưởng cạnh tranh.</p>

<p>Trong số các vấn đề mà Firefox gặp phải là việc trình duyệt này không bắt kịp những tiến bộ trong phần cứng máy tính hiện đại, bao gồm khả năng chạy các tiến trình song song trên nhiều nhân CPU và card đồ họa. Mozilla đã bắt tay thực hiện hàng loạt cải tiến nhỏ, nhưng phải đến cuối năm 2016, phó giám đốc kỹ thuật của Mozilla là David Bryant mới công bố một thay đổi lớn: một engine trình duyệt mới mang tên Quantum.</p>

<p>Phiên bản Firefox đầu tiên dựa trên Quantum ra mắt tháng 11/2017, hứa hẹn sẽ nhanh gấp đôi so với người tiền nhiệm. Đó chắc chắn là một cải thiện lớn, và đã nhận được những đánh giá xuất sắc, nhưng quan trọng nhất, Quantum đã đưa Firefox trở lại cuộc đua công bằng với Chrome.</p>

<p><strong>Quyền riêng tư là trên hết</strong></p>

<p><img alt="" src="/BLOG/files/photo-3-1573715310298905086556.jpg" style="border-style:solid; border-width:1px; height:100%; width:100%" /></p>

<p>Tốt như đối thủ là vẫn chưa đủ để có thể giành chiến thắng từ tay một kẻ đang dẫn đầu thị trường. Nhưng Firefox hoàn toàn &quot;ăn đứt&quot; Chrome về cách nó bảo vệ quyền riêng tư người dùng. Nếu như quá trình chuyển tiếp lên Quantum đã giúp tốc độ của hai trình duyệt trở nên ngang bằng, Mozilla còn giới thiệu một loạt các công nghệ nhằm ngăn các nhà quảng cáo, các mạng xã hội, và thậm chí là các nhà cung cấp dịch vụ Internet theo dõi và tạo hồ sơ về cá nhân bạn.</p>

<p>Quyền riêng tư có lẽ là lĩnh vực mà Chrome chẳng thèm cạnh tranh với Firefox. Khối tài sản khổng lồ của Google đến từ quảng cáo trực tuyến &ndash; một hoạt động dựa trên quá trình thu thập càng nhiều thông tin về người dùng càng tốt, trên càng nhiều thiết bị càng tốt. Hạn chế tiến trình đó, dù bằng cách nào, cũng sẽ đe dọa đến mô hình kinh doanh cốt lõi của hãng.</p>

<p>Ngược lại, Mozilla là một tổ chức phi lợi nhuận, hoạt động dựa trên những ý tưởng tân tiến được Baker soạn thảo trong Mozilla Manifesto (Tuyên ngôn của Mozilla) vào năm 2007. Mozilla Manifesto vạch ra 10 nguyên tắc xoay quanh những khái niệm như phần mềm miễn phí, truy cập toàn diện đến Internet, và những công nghệ có tính tương tác lẫn nhau. Nguyên tắc thứ 4 nêu rõ rằng, <strong>&quot;<em>bảo mật và quyền riêng tư của các cá nhân trên Internet là nguyên tắc căn bản và không thể bị xem như một tùy chọn</em>&quot;</strong> (năm 2018, nguyên tắc này được cập nhật thêm một số giá trị về nhân phẩm con người, lòng khoan dung, và nghị luận dân sự).</p>

<p>Sự tồn tại của bản tuyên ngôn này là một dấu hiệu cho thấy sự khác biệt giữa Mozilla với các hãng phát triển trình duyệt lớn khác. Mozilla Foundation giống như một tổ chức hoạt động cộng đồng với danh nghĩa nhà phát triển phần mềm, và hai hoạt động chính này liên kết chặt chẽ với nhau.</p>

<p>Lấy scandal Cambridge Analytica &ndash; scandal đã làm lộ lọt hàng chục triệu dữ liệu người dùng Facebook vào tay một công ty tư vấn chính trị - làm ví dụ. Mozilla đã phản đối bằng cách gỡ bỏ mọi quảng cáo của mình trên Facebook và tổ chức kêu gọi công ty phải đại tu lại các thiết lập quyền riêng tư người dùng. Nhưng Mozilla còn phản ứng bằng những dòng mã: họ phát triển một plug-in cho Firefox tên Facebook Container nhằm giới hạn khả năng thu thập dữ liệu người dùng từ trình duyệt của mạng xã hội này, ví dụ như các website được mở trong các tab hoặc cửa sổ khác.</p>

<p>Mozilla đã tăng cường tấn công mọi loại hình theo dõi người dùng, như các cookie bên thứ ba &ndash; những tập tin mà một website thả vào trình duyệt để thấy được mọi website khác người dùng đã ghé thăm. &quot;Enhanced tracking protection&quot; được ra mắt vào tháng 8/2018 dưới dạng một tùy chọn trong các phiên bản thử nghiệm của Firefox, sau đó được đưa vào phiên bản chính thức, vẫn dưới dạng một tùy chọn. Vào tháng 9 năm đó, Mozilla mặc định kích hoạt tính năng chặn theo dõi này. Bên cạnh các cookie bên thứ ba, trình duyệt nay còn chặn cả các tracker khác, như các dòng code trong các quảng cáo trực tuyến và nút &quot;share&quot; lên mạng xã hội, vốn cực kỳ phổ biến trên web.</p>

<p>Phản ứng của Google, ai cũng đoán được, nhẹ nhàng hơn. Vào tháng 8, Chrome công khai chỉ trích việc chặn cookie bên thứ ba với lý do điều này chỉ càng khuyến khích các nhà quảng cáo tìm ra nhiều cách mờ ám hơn để theo dõi người dùng. Một phương thức khác là &quot;fingerprinting&quot;: thu thập những thiết lập cụ thể mà bạn đã thực hiện trên máy tính và trình duyệt, như các plug-in đã cài đặt, để tạo ra một mã định danh độc nhất. Phiên bản Firefox 70 mới nhất cũng đã chặn luôn &quot;fingerprinting&quot;.</p>

<p>Mozilla không đơn độc trong cuộc chiến bảo vệ quyền riêng tư. Apple cũng chặn tracker rất kịch liệt trên Safari, và họ quảng bá điều này như một lý do để thôi thúc người tiêu dùng mua iPhone, iPad, và Mac.</p>

<p><img alt="" src="/BLOG/files/photo-4-15737153103021459627984.jpg" style="border-style:solid; border-width:1px; height:100%; width:100%" /></p>

<p><strong>Lan truyền thông điệp</strong></p>

<p>Trong quá trình đẩy mạnh bảo vệ quyền riêng tư, Mozilla còn tăng cường truyền bá về vấn đề này. <strong>&quot;<em>Rất lâu trước đây chúng tôi từng nghĩ điều tốt nhất là càng âm thầm càng tốt. Làm mọi thứ sau cánh gà và chẳng cần thông báo với ai cả</em>&quot;</strong> &ndash; Baker nói. Điều đó bắt đầu thay đổi từ 18 tháng qua, khi người dùng ngày càng để tâm và lo lắng hơn về các nguy cơ bảo mật.</p>

<p>Cùng với việc mặc định kích hoạt tính năng chống theo dõi, phiên bản Firefox mới nhất còn giới thiệu bảng điều khiển Privacy Protections, cung cấp thông tin chi tiết về tất cả các tracker đã bị chặn, theo từng loại, trong thời gian tuần vừa qua. Người dùng có thể bấm một nút ở trên đỉnh trình duyệt để xem mọi tracker đã bị chặn trên từng website.</p>

<p>Mozilla không chỉ hiển thị những thống kê khô khan. Bảng điều khiển này có thiết kế tối giản và sử dụng các biểu đồ hình thanh phân chia màu sắc rõ ràng để người dùng có thể xem tổng quát các loại tracker khác nhau đã bị chặn trước đó. Nó còn có các mục giải thích rõ ràng từng loại tracker khác nhau làm những gì.</p>

<p>Biến thông tin phức tạp trở nên đơn giản để người dùng dễ hiểu là một thách thức lớn, theo lời Deckelmann. <strong>&quot;<em>Đây là một vấn đề lập trình phổ biến. Bạn làm mọi thứ, nhưng sau đó làm thế nào biến chúng thành một câu chuyện mà ai cũng có thể hiểu được? Và với tôi đó là trọng tâm lúc này: tập trung vào câu chuyện đó và giúp mọi người thực sự hiểu tình trạng của web</em>&quot;</strong> &ndash; cô nói.</p>

<p>Mozilla không chỉ giúp mọi người thấy được trình duyệt đang làm gì sau cánh gà, họ còn giúp người dùng tinh chỉnh các thiết lập. &quot;Advanced tracking protection&quot; từng là một tùy chọn mà người dùng có thể kích hoạt từ một năm trước khi Mozilla mặc định kích hoạt nó. Người dùng vẫn có thể ngừng kích hoạt nó nếu tính năng này khiến các website hoạt động không như ý. Họ cũng có thể điều chỉnh mức độ chặn để chặn được nhiều công nghệ theo dõi hơn, nhưng tất nhiên có thể ảnh hưởng đến cách vận hành của các trang web.</p>

<p><strong>&quot;<em>Điều chúng tôi đang cố làm trong Firefox là cho mỗi người thêm khả năng để thay đổi đời sống trực tuyến của họ. Bạn nên có một ít chủ quyền đối với trải nghiệm của mình. Nó không nên bị độc chiếm bởi các tập đoàn khổng lồ</em>&quot;</strong> &ndash; Baker nói.</p>

<p>Những công cụ quyền riêng tư kia liệu sẽ tốt ra sao nếu chỉ 4 hay 5% người duyệt web sử dụng chúng? <strong>&quot;<em>Chúng tôi đang tìm cách để tăng cường sự hiện diện của mình, giúp mọi người quay về với Firefox. Nhưng chúng tôi còn phải làm việc khác, liên quan nhiều đến các chính sách và tác động thay đổi hướng phát triển của web để phục vụ người dùng</em>&quot;.</strong></p>

<p>Mozilla vẫn tiếp tục là một tổ chức hoạt động cộng đồng, thúc đẩy cải cách liên quan bình đẳng Internet và cải cách quyền riêng tư tại Facebook... Hãng còn tập trung nghiên cứu để thiết lập những chuẩn công nghệ mới, như những chuẩn khiến các nhà cung cấp dịch vụ Internet khó thấy các website mà trình duyệt đã ghé thăm hơn.</p>

<p>Về mặt sản phẩm, Firefox là nơi thử nghiệm những giải pháp quyền riêng tư và các công nghệ khác cho toàn thế giới web. <strong>&quot;<em>Kỳ vọng của chúng tôi là mỗi một công nghệ chúng tôi tạo ra sẽ được ứng dụng bởi mọi trình duyệt</em>&quot;</strong> &ndash; Deckelmann nói.</p>

<p>Mozilla và Firefox được hình thành để mở rộng khả năng tương tác giữa người với thông tin và giữa người với người, không phải để tạo nên một công ty giàu có. Sự bùng nổ của Firefox vào năm 2004 không chỉ giúp Mozilla, nó còn giúp toàn bộ Internet khi thách thức những đối thủ đương thời cải tiến và tạo cảm hứng cho những đối thủ mới gia nhập cuộc chơi. 15 năm sau, Firefox có thể trông nhỏ bé bên cạnh Chrome và Safari, nhưng nó vẫn thúc để những công nghệ mới được hình thành và ngày càng bảo mật hơn, nhằm giúp đỡ mọi người đang sử dụng Internet mỗi ngày.</p>
')
SET IDENTITY_INSERT [dbo].[BAIVIET] OFF
/****** Object:  Table [dbo].[BINHLUAN]    Script Date: 12/06/2019 19:58:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BINHLUAN](
	[IDBL] [int] IDENTITY(1,1) NOT NULL,
	[MABAIVIET] [int] NOT NULL,
	[EMAIL] [nvarchar](50) NOT NULL,
	[TENNGUOIBL] [nvarchar](50) NOT NULL,
	[THOIGIAN] [date] NOT NULL,
	[NOIDUNG] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK__BINHLUAN__B87DA8DB286302EC] PRIMARY KEY CLUSTERED 
(
	[IDBL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BINHLUAN] ON
INSERT [dbo].[BINHLUAN] ([IDBL], [MABAIVIET], [EMAIL], [TENNGUOIBL], [THOIGIAN], [NOIDUNG]) VALUES (1, 1, N'vuhoang@gmail.com', N'Trần Hoàng Vũ', CAST(0x55400B00 AS Date), N'Bài Viết Rất Hữu ích...
Hi Vọng Sẽ có Thêm Nhiều Bài Nữa')
INSERT [dbo].[BINHLUAN] ([IDBL], [MABAIVIET], [EMAIL], [TENNGUOIBL], [THOIGIAN], [NOIDUNG]) VALUES (2, 1, N'lytran@yahoo.com', N'lyly Nguyễn', CAST(0x55400B00 AS Date), N'Bài Này Lấy Từ Báo, Copy Nhớ Để Link Nhé bạn!! :0
Thông tin cũng hữu ích :))
Đăng thêm về Những bài Độc lạ nữa ha')
INSERT [dbo].[BINHLUAN] ([IDBL], [MABAIVIET], [EMAIL], [TENNGUOIBL], [THOIGIAN], [NOIDUNG]) VALUES (3, 2, N'hoangnguyen@vncept.com', N'Hoàng Pro', CAST(0x56400B00 AS Date), N'Tỷ lệ viêm gan B, C tại Việt Nam rất cao trong cộng đồng
cần phải tự bảo vệ sức khỏe của mình bằng cách có chế độ nghỉ ngơi hợp lý, ăn uống đúng giờ giấc, hạn chế sử dụng đồ ăn có chứa nhiều chất béo và đồ uống có cồn.')
INSERT [dbo].[BINHLUAN] ([IDBL], [MABAIVIET], [EMAIL], [TENNGUOIBL], [THOIGIAN], [NOIDUNG]) VALUES (4, 16, N'ntndang@gmail.com', N'Đăng NTN', CAST(0x56400B00 AS Date), N'Cuộc chiến Giữa card đồ họa không bao giờ là kết thúc cả...
Microsoft và Sony (cho máy chơi game mới) 
Google (trung tâm dữ liệu)
Cray (siêu máy tính)')
INSERT [dbo].[BINHLUAN] ([IDBL], [MABAIVIET], [EMAIL], [TENNGUOIBL], [THOIGIAN], [NOIDUNG]) VALUES (11, 16, N'binhttn@gmail.com', N'bình TTN', CAST(0x5B400B00 AS Date), N'Intel đã ở trên ngai vàng quá lâu')
INSERT [dbo].[BINHLUAN] ([IDBL], [MABAIVIET], [EMAIL], [TENNGUOIBL], [THOIGIAN], [NOIDUNG]) VALUES (12, 28, N'LeKy@gmail.com', N'Le Ky', CAST(0x58400B00 AS Date), N'Mỹ đuối, luôn tìm những lý do để biện minh sự đuối này')
INSERT [dbo].[BINHLUAN] ([IDBL], [MABAIVIET], [EMAIL], [TENNGUOIBL], [THOIGIAN], [NOIDUNG]) VALUES (13, 28, N'HoangClub@yahoo.com', N'Hoang Club', CAST(0x58400B00 AS Date), N'Không ưa gì TQ, nhưng cũng chẳng thích kiểu cạnh tranh của Mỹ. ')
INSERT [dbo].[BINHLUAN] ([IDBL], [MABAIVIET], [EMAIL], [TENNGUOIBL], [THOIGIAN], [NOIDUNG]) VALUES (14, 28, N'PhongDuong@yahoo.com', N'Phong Duong', CAST(0x58400B00 AS Date), N'Ngoài ra, người đứng đầu FCC cũng tiết lộ việc dành riêng nguồn lực để triển khai 5G tại Mỹ và đảm bảo quốc gia này vẫn tiên phong trong công nghệ kết nối không dây thế hệ mới.  5G gì nữa lấy mạng vệ tinh gì đấy ra xài đi. Nghe bảo ko cần cơ. Kkkkkkkk')
INSERT [dbo].[BINHLUAN] ([IDBL], [MABAIVIET], [EMAIL], [TENNGUOIBL], [THOIGIAN], [NOIDUNG]) VALUES (15, 28, N'thobenthanhreal@gmail.com', N'tho.benthanhreal', CAST(0x58400B00 AS Date), N'Đã không ưa nhau thì kiểu gì cũng có hàng trăm lý do để dìm nhau xuống.Mỹ đã bắt đầu cảm thấy bị yếu thế so với Trung Quốc, các nước châu âu đã bắt đầu sử dụng mạng 5G của Trung Quốc bất chấp lời kêu gọi của Mỹ. Để thuyết phục được các đồng minh và lấy lại thể diện thì nước Mỹ nên phát triển mạng 6G ,tốt hơn là làm thay vì nói xấu TQ. Thực tế xã hội nhìn vào những thành công đã đạt được của người này hơn là để ý những câu nói')
INSERT [dbo].[BINHLUAN] ([IDBL], [MABAIVIET], [EMAIL], [TENNGUOIBL], [THOIGIAN], [NOIDUNG]) VALUES (16, 28, N'TuanHuynhMinh@gmail.com', N'Tuan Huynh Minh', CAST(0x58400B00 AS Date), N'Mỹ không TỐT như các ban nghĩ đâu! Hơn người ta thì được còn thua người ta thì tìm đủ mọi cách nói xấu người ta! Cạnh tranh không lành mạnh chút nào!')
INSERT [dbo].[BINHLUAN] ([IDBL], [MABAIVIET], [EMAIL], [TENNGUOIBL], [THOIGIAN], [NOIDUNG]) VALUES (17, 28, N'Danghoangvu@gmail.com', N'Dang', CAST(0x58400B00 AS Date), N'Nghe nói 5g có nguy cơ ảnh hưởng đến sức khỏe con người và các loài sinh vật khác. Chưa chắc đâu')
SET IDENTITY_INSERT [dbo].[BINHLUAN] OFF
/****** Object:  ForeignKey [FK_BAIVIET_MADANHMUC]    Script Date: 12/06/2019 19:58:09 ******/
ALTER TABLE [dbo].[BAIVIET]  WITH CHECK ADD  CONSTRAINT [FK_BAIVIET_MADANHMUC] FOREIGN KEY([MADANHMUC])
REFERENCES [dbo].[DANHMUC] ([MADANHMUC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BAIVIET] CHECK CONSTRAINT [FK_BAIVIET_MADANHMUC]
GO
/****** Object:  ForeignKey [FK_BINHLUAN_MABAIVIET]    Script Date: 12/06/2019 19:58:09 ******/
ALTER TABLE [dbo].[BINHLUAN]  WITH CHECK ADD  CONSTRAINT [FK_BINHLUAN_MABAIVIET] FOREIGN KEY([MABAIVIET])
REFERENCES [dbo].[BAIVIET] ([MABAIVIET])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BINHLUAN] CHECK CONSTRAINT [FK_BINHLUAN_MABAIVIET]
GO
/****** Object:  ForeignKey [FK_THONGBAO_MAMAIL]    Script Date: 12/06/2019 19:58:09 ******/
ALTER TABLE [dbo].[THONGBAO]  WITH CHECK ADD  CONSTRAINT [FK_THONGBAO_MAMAIL] FOREIGN KEY([MAMAIL])
REFERENCES [dbo].[MAILFORM] ([MAMAIL])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[THONGBAO] CHECK CONSTRAINT [FK_THONGBAO_MAMAIL]
GO
/****** Object:  ForeignKey [FK_THONGBAO_MANGUOIDANGKI]    Script Date: 12/06/2019 19:58:09 ******/
ALTER TABLE [dbo].[THONGBAO]  WITH CHECK ADD  CONSTRAINT [FK_THONGBAO_MANGUOIDANGKI] FOREIGN KEY([MANGUOIDANGKI])
REFERENCES [dbo].[NGUOIDANGKI] ([MANGUOIDANGKI])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[THONGBAO] CHECK CONSTRAINT [FK_THONGBAO_MANGUOIDANGKI]
GO
