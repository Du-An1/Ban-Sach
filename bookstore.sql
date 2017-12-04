-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2017 lúc 02:29 PM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bookstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisach`
--

CREATE TABLE `loaisach` (
  `id` int(11) NOT NULL,
  `tenloaisach` varchar(200) NOT NULL,
  `hinhanhloaisach` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaisach`
--

INSERT INTO `loaisach` (`id`, `tenloaisach`, `hinhanhloaisach`) VALUES
(1, 'Kinh Dị', 'http://static.truyenfull.vn/cover/o/eJzLyTDW1zUqCHdyD8guyfY20Q-LSHK0CND1S8zx1HeEgjzzYv0qc1fzzJQAv3BdE_1yI0NT3QxjIyMARPQR0A==/ho-tuyet-menh.jpg'),
(2, 'Truyện Cười', 'http://chiase360.com/wp-content/uploads/2014/04/truyen-cuoi-dan-gian.jpg'),
(3, 'Tiểu Thuyết', 'http://sachvui.com/cover/2017/nguoi-hobbit.jpg'),
(4, 'Phiêu Lưu', 'http://sachvui.com/cover/2015/Mat-Ma-Maya.jpg'),
(5, 'Tuổi Học Trò', 'https://bizweb.dktcdn.net/100/197/269/products/cong-chua-toc-may.jpg?v=1496894009920');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `id` int(11) NOT NULL,
  `tensach` varchar(200) NOT NULL,
  `giasach` int(20) NOT NULL,
  `hinhanhsach` varchar(200) NOT NULL,
  `ngayxuatbansach` varchar(200) NOT NULL,
  `motasach` varchar(10000) NOT NULL,
  `idloaisach` int(10) NOT NULL,
  `tacgia` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`id`, `tensach`, `giasach`, `hinhanhsach`, `ngayxuatbansach`, `motasach`, `idloaisach`, `tacgia`) VALUES
(1, 'Ánh Lửa Ma', 41000, 'http://sachvui.com/cover/2015/anh-lua-ma.jpg', '26/12/2014', 'Ma quỉ đã có từ đời thượng cổ, và ở bất cứ nơi nào trên thế giới, những câu chuyện ma thường được\r\n\r\nkể vào những buổi tối mà thính giả luôn luôn là một lũ trẻ con ngồitrên giường với những đôi chân\r\n\r\nnhỏ bé rút lên vì sợ. Mà sợ cái gì?\r\n\r\nSợ giữa lúc đang say sưa nghe chuyện, lỡ một bàn tay lạnh buốt nào đó từ trong gầm giường thò ra\r\n\r\nnắm chân lôi xuống thì lôi thôi ... Ở Âu châu, đã có một thời, người xứ Wales tin tưởng mãnh liệt\r\n\r\nvào \"ánh lửa ma\" và đã có rất nhiều câu chuyện về loại lửa này được kể đi kể lại.', 1, 'Nguyễn Đình Khánh'),
(2, 'Bảy Lần Canh Cửa', 51000, 'http://sachvui.com/cover/2015/bay-lan-canh-cua.jpg', '24/06/2016', 'Alfred Hitchcock là đạo diễn lừng danh thế giới, ông vua của thể loại phim hình sự-kinh dị. Ngoài công việc làm đạo diễn, ông có thú vui khác là đọc và giới thiệu với độc giả những tác phẩm trinh thám.\r\n\r\nKhông phải bất cứ ai trong chúng ta cũng có năng khiếu, cũng có thời giờ và có sự kiên trì để đọc mọi tác phẩm và thẩm định được giá trị của chúng: việc này Hitchcock đă làm hộ người đọc. Tuy đứng tên ông, nhưng không phải là \'\'tác phẩm\'\' của ông mà chỉ là sự tuyển chọn và giới thiệu các truyện hay của các tác giả chuyên về thể loại này.', 1, 'Alfred Hitchcock & André Marx'),
(3, 'Bi Kịch Người Sói', 51000, 'http://sachvui.com/cover/2015/bi-kich-nguoi-soi-jarson-dark.jpg', '05/05/2016', 'Khuôn mặt chàng thanh niên đó nhợt nhạt và cứng đờ như đá khi bàn tay phải của anh đặt lên nắm đấm cửa đã rỉ sét. Anh biết rất rõ anh đang đi vào đâu, vào một địa điểm chẳng một người bình thường nào muốn tới, đây là con đường dẫn vào nhà xác. Cánh cửa rên lên, mở ra một khoảng tối, rộng và cao. Một luồng khí lạnh ẩm có mùi vị kỳ lạ thoát ra từ khoảng hở đó và phả thẳng vào mặt chàng thanh niên tóc vàng. Bầu không khí còn thấm đẫm hơi nến lưu cữu. Một thế giới khác ở lại sau lưng Vladimir Golenkov. Anh bước vào với thế giới của tĩnh lặng và của những xác chết...', 1, 'Jarson Dark'),
(4, 'Năm 1922, Năm Ác Báo', 57000, 'http://sachvui.com/cover/2015/nam-1922-nam-ac-bao.jpg', '', 'Năm 1922, Wilfed James, một chủ trại nhỏ tại Nebraska, chỉ vì 100 mẫu đất tốt mà đã phạm sai lầm giết vợ. Anh ta cuốn theo cả đứa con trai của mình để rồi phải hối tiếc suốt đời. Sự dằn vặt tội lỗi của James trở thành những cơn ác mộng kéo dài khiến bao tai họa thảm khốc giáng xuống đầu James, tước đi dần những thứ anh ta yêu quý nhất, cho đến khi đoạt nốt tính mạng anh ta.', 1, 'Stephen King'),
(5, 'Xác Ấm', 45000, 'http://sachvui.com/cover/2015/xac-am.jpg', '03/08/2017', 'Anh ấy là R –không tên tuổi, không ký ức, không mạch đập, không cuộc đời. Anh ấy là Xác Sống, nhưng là một Xác Sống không muốn ăn thịt người, mà thích lên lên xuống xuống trên những cầu thang cuốn ở sân bay bỏ hoang, thích nghe nhạc Sinatra trong chiếc 747 ấm cúng được anh gọi là nhà, thích sưu tập đồ kỷ niệm từ những tàn tích của nền văn minh.', 1, 'Issac Marion'),
(6, 'Bố Là Bà Giúp Việc', 36000, 'http://sachvui.com/cover/2016/bo-la-ba-giup-viec.jpg', '02/04/2016', '\"Hàng trăm người đã đi tìm Dòng Sông Phẳng Lặng. Nước sông êm ả và phẳng lặng như gương. Ai uống nước sông cũng cảm thấy thật yên bình. Những gia đình sống bên cạnh Dòng Sông Phẳng Lặng không bao giờ cãi nhau...\"', 2, 'Anne Fine'),
(7, 'Chuyện Của Heo', 81000, 'https://mgift.vn/timthumb.php?src=https://cdn.mgift.vn/skins/upload/manga_title/chuyen-cua-heo/ad55e23af905504ae44c6250c34bb687_440x690.jpg&w=254&h=383&zc=1', '21/06/2016', 'Chuyện của Heo thực ra là những câu chuyện nhỏ nhặt hài hước về cuộc đời của nhân vật chính – một cô bé tên là Heo. Nét vẽ dễ thương, nội dung đơn giản, chắc chắn sẽ thu hút bạn đọc.', 2, 'Tuyệt Đỉnh Sinh Vật'),
(8, 'Chúa Ơi Chàng Muốn Lấy Con', 57000, 'http://sachvui.com/cover/2015/chua-oi-chang-muon-lay-con.jpg', '01/03/2015', 'Nếu bạn muốn đổi sự ngưỡng mộ của nhiều anh chàng lấy những lời chỉ trích của một gã duy nhất thì cứ việc kết hôn nhé.”', 2, 'Agnes Abécassis'),
(9, 'Những Người Thích Đùa', 47000, 'http://sachvui.com/cover/2015/Nhung-nguoi-thich-dua.jpg', '30/5/2010', 'Khóc mà cười, cười mà lại trào nước mắt - những câu chuyện chỉ có thể là của Aziz Nesin luôn đọc người đọc vào cái trạng thái lạ lùng như vậy. Tin rằng nhà văn trào phúng như người khổng lồ có sứ mệnh nâng đỡ cả thế giới trên vai, Aziz Nesin không viết những truyện cười vô thưởng vô phạt. Ông viết để xóa đi những bất công, phi lý trong xã hội con người.', 2, 'Azit Nesin'),
(10, 'Truyện Cười Dân Gian Việt Nam', 67000, 'http://sachvui.com/cover/2015/Truyen-cuoi-dan-gian-Viet-Nam.jpg', '', '', 2, 'Nhiều tác giả'),
(11, 'Những cuộc phiêu lưu của Tom Sawyer', 45000, 'http://sachvui.com/cover/2015/Nhung-Cuoc-Phieu-Luu-Cua-Tom-Shawyer.jpg', '04/09/2015', 'Những cuộc phiêu lưu của Tom Sawyer là một quyển tiểu thuyết được nhà văn Mark Twain viết với bút pháp độc đáo, miêu tả tâm lý, cử chỉ, hành động của một chú bé sống tại một ngôi làng nghèo bên sông Mississippi. Tác giả đã miêu tả xuất sắc tính cách, tâm lý, hành động của chú bé thông minh, nghịch ngợm nhưng dũng cảm và có một tấm lòng nhân hậu giàu tình nghĩa.', 4, 'Mark Twain'),
(12, 'Mật mã Maya', 87000, 'http://sachvui.com/cover/2015/Mat-Ma-Maya.jpg', '', 'D\'amato đã viết lên một câu chuyện phiêu lưu vô cùng tuyệt vời với nhiều chi tiết thú vị về nền văn hoá Maya. Mật mã Maya được coi là một trong những cuốn sách gây bất ngờ nhất năm 2009 về cả chất lượng nội dung lẫn tính giải trí và nó vượt hẳn lên trên những cuốn tiểu thuyết ly kỳ về những bí ẩn khác. Đây là tác phẩm vô cùng thú vị, một cuốn tiểu thuyết có tính sáng tạo phi thường khiến người đọc cuốn theo không ngừng...', 4, 'Brian D\'Amato'),
(13, 'Vương Quốc Bí Ẩn', 74000, 'http://sachvui.com/cover/2016/vuong-quoc-bi-an.jpg', '06/05/2016', 'Truyện viết về cuộc phiêu lưu tìm kiếm một ngôi nhà của Zobayza và Timoken – hai vị tổ tiên của Charlie Bone.\r\nTimoken và Zobayza là hai người con của nhà vua Vương quốc Bí ẩn. Một hôm, có một vị thần rừng bị thương chạy lạc đến vương quốc, để đền ơn cứu mạng của nhà vua và hoàng hậu, vị thần rừng đã trao tặng cho nhà vua tấm tơ của con nhện mặt trăng cuối cùng, chiếc nhẫn có phép thuật và nước Alixir có tác dụng giữ người ta trẻ mãi không già, hai vật trên có quyền năng vô biên, có thể bảo vệ người sở hữu nó an toàn trước mọi hiểm nguy. Lúc đó công chúa Zobayza chỉ gần 2 tuổi và hoàng tử Timoken thì chưa ra đời', 4, 'Jenny Nimmo'),
(14, 'Biểu Tượng Thất Truyền', 89000, 'http://sachvui.com/cover/2015/bieu-tuong-that-truyen.jpg', '15 tháng 9, 2009', 'Robert Langdon cùng chuyến phiêu lưu vào những bí mật xa xưa lại lập đỉnh mới về kỷ lục xuất bản, tiếp tục tạo sóng thần làm nghiêng ngả thị trường sách thế giới. Không chỉ là nguồn cảm hứng dồi dào cho muôn lời tán tụng, Biểu tượng Thất truyền còn khẳng định sức thu hút, độ thành công bằng những thành tích ngoạn mục hơn nhiều, chẳng hạn liên tục dẫn đầu bảng xếp hạng best seller của New York Times từ lúc sách chưa phát hành cho đến tận hôm nay, luôn được săn đón ráo riết trên Amazon, chưa kể bản quyền điện ảnh chuyển cho Columbia Pictures từ lúc sách mới ráo mực in đang thách thức mọi cuộc vượt rào về doanh thu phòng vé...', 4, 'Dan Brown'),
(15, 'Công chúa tóc mây', 52000, 'http://sachvui.com/cover/2017/cong-chua-toc-may.jpg', '25/02/2016', 'Cô bé tóc mây mang lại cho chúng ta bài học về niềm tin, nghị lực và tình yêu chân thành.Nếu có niềm tin, nghị lực thì chúng ta sẽ có thể chiến thắng định mệnh và những điều xấu xa.Vì có niềm tin, nghị lực và một tình yêu chân thành Rapunzel và hoàng tử đã vượt qua mưu kế độc ác của mụ phù thủy Gothel và sống hạnh phúc bên nhau.Trong cuộc sống có rất nhiều khó khăn nên chúng ta luôn phải có một niềm tin và một nghị lực sống mạnh mẽ.', 5, 'Walt Disney'),
(16, 'Những lá thư không gửi', 101000, 'http://sachvui.com/cover/2017/nhung-la-thu-khong-gui.jpg', '5/8/2016', 'Ernest là một cậu bé 10 tuổi, đẹp trai và học giỏi. Tuy nhiên, tuổi thơ của cậu bé lại thật buồn. Mẹ cậu mất ngay khi sinh cậu, còn cha cậu đã bỏ đi không trở về.\r\nErnest sống với bà trong một chuỗi ngày bằng lặng, buồn chán, nhịp điệu không thay đổi. Không có gì để chơi dù là ti vi hay điện thoại.\r\n', 5, 'Susie Morgenstern'),
(17, 'Bàn có 5 chỗ ngồi', 76000, 'http://sachvui.com/cover/2015/ban-co-nam-cho-ngoi.jpg', '', 'Tác giả quen thuộc của thiếu nhi, của tuổi ô mai. Những tập truyện của anh luôn dí dỏm, hài hước, đem lại nhiều cảm xúc, nhiều bài học nhẹ nhàng cho lứa tuổi học trò. Hãy đọc để cùng gặp những nhân vật rất dễ thương, hoặc phải vượt qua những hoàn cảnh khó khăn, hoặc sẵn lòng chia sẻ với bạn bè, người thân... ', 5, 'Nguyễn Nhật Ánh'),
(18, 'Chúc một ngày tốt lành', 54000, 'http://sachvui.com/cover/2015/chuc-mot-ngay-tot-lanh.jpg', '', 'Bọn trẻ trước khi đi ngủ, vẫn có thể hào hứng chúc nhau một ngày tốt lành, dẫu ngày hôm đó chỉ còn có một mẩu. Ờ, một mẩu có khi chừng ba mươi phút thôi nhưng nếu đó là một mẩu tốt lành thì cuộc sống vẫn vô cùng tươi đẹp…', 5, 'Nguyễn Nhật Ánh'),
(19, 'Yoko_Người bạn đặc biệt', 62000, 'http://sachvui.com/cover/2017/yoko-nguoi-ban-vo-cung-dac-biet-cua-toi.jpg', '', '', 5, 'Knister'),
(20, 'Giọt Rừng', 97000, 'http://sachvui.com/cover/2017/giot-rung.jpg', '', 'Mikhail Prisvin là một trong những nhà văn Nga viết về thiên nhiên nổi tiếng nhất. K. Paustovski, tác giả Bông hồng vàng rất quen thuộc với độc giả Việt Nam đã viết về ông: “Nếu như thiên nhiên có thể cảm thấy sự biết ơn đối với con người vì con người đã đi sâu vào đời sống bí ẩn của thiên nhiên và ca ngợi vẻ đẹp của nó, thì trước hết sự biết ơn đó phải dành cho Mikhail Prisvin”.', 3, 'Mikhail Prisvin'),
(21, 'Lạc Mất Và Hy Vọng', 108000, 'http://sachvui.com/cover/2016/lac-mat-va-hy-vong.jpg', '01/7/2014', 'Họ đã lạc mất nhau... từ mười ba năm trước. Mười ba năm kiếm tìm trong vô vọng của chàng trai, cũng là mười ba năm chọn cách lãng quên, khóa chặt ký ức của cô gái mang tên Hope - Hy vọng.\r\n\r\nVậy mà số phận vẫn cho họ gặp lại nhau, tình cờ và nhiều bí ẩn. Họ để mắt đến nhau từ cái nhìn đầu tiên, bị hút vào nhau nồng nàn say đắm, và đã không chỉ like, không chỉ love, mà còn live - sống vì nhau.', 3, 'Colleen Hoover'),
(22, 'Mùa Cưới', 88000, 'http://sachvui.com/cover/2015/mua-cuoi.jpg', '', 'Sarah là một nhà lên kế hoạch tổ chức đám cưới đang che giấu một sự thật vô cùng phiền phức - cô không tin vào tình yêu. Hoặc không tin vào chính bản thân cô. Nhưng khi những bông hoa giấy tung bay trong làn gió nhẹ tháng Sáu của một đám cưới thành công khác, cô nhận ra mình đã đồng ý nhận lời tổ chức cho thêm hai đám cưới nữa, vào cùng một ngày và chỉ cách thời điểm hiện tại nữa chưa đến hai tháng. Và khi cô dâu là người nổi tiếng lại dễ thương và hiểu biết, thì em gái của cô lại khiến cô điên lên vì những yêu cầu quá cao nhưng đi kèm với một ngân sách hạn chế. May mắn thay, Sarah có hai người bạn đáng tin cậy để giúp cô. Elsa, một nhà thiết kế áo đầm đầy tài năng nhưng không thích bị mọi người chú ý, và Bron, một thợ cắt tóc đa tài, người đang sống với anh bạn trai gia trưởng. Họ có thể rất giỏi trong công việc nhưng sự lãng mạn lại không được đánh giá cao trong đời sống của họ. Khi ngày trọng đại đang đến gần, cả ba người phụ nữ nhận ra rằng sự kiên nhẫn chắc chắn là một đức tính tốt trong trò chơi hôn nhân. Và khi tất cả các giờ làm việc miệt mài của họ dành cho việc chuẩn bị cho một đám cưới của năm, họ chắc chắn chẳng có lấy thời gian để suy nghĩ về tình yêu; hay họ có nhỉ?', 3, 'Katie Fforde'),
(23, 'Người Hobbit', 12000, 'http://sachvui.com/cover/2017/nguoi-hobbit.jpg', 'Tái bản 2014', 'Anh chàng hobbit được xuất bản lần đầu vào tháng Chín, 1937. Bản biên tập lần thứ hai của cuốn này được thực hiện vào năm 1951 ghi dấu những sửa đổi và đóng góp đáng kể trong Chương V, “Trò chơi đố trong hang tối”, giúp Anh chàng hobbit ăn nhập hơn với cuốn tiểu thuyết tiếp theo Chúa nhẫn đang được viết lúc bấy giờ. Tolkien cũng đã xem kỹ lại bản biên tập ở Mỹ do NXB Ballantine Books phát hành hồi tháng Hai, 1966 và bản biên tập ở Anh do NXB George Allen & Unwin phát hành bìa mềm vào cuối năm đó. Bản biên tập mới nhất này dựa trên bản biên tập lần thứ ba thực hiện năm 1966 trong đó có sửa chữa một số sai sót và lỗi in. Độc giả quan tâm tới những chi tiết được sửa đổi trong mỗi lần biên tập cuốn sách này có thể tham khảo trong phần phụ lục A, Textual and Revision Notes, trong The Annotated hobbit (1988), và J. R. R. Tolkien: A Descriptive Bibliography của Wayne G. Hommond, với sự giúp đỡ của Douglas A. Anderson (1993)', 3, ' J. R. R. Tolkien'),
(24, 'Sự Trả Thù Ngọt Ngào', 108000, 'http://sachvui.com/cover/2016/su-tra-thu-ngot-ngao.jpg', '', 'Anthony Earheart – Hầu tước Staunton, con trai cả và là người thừa kế của Công tước Withingsby – đã cưới về một cô vợ mà anh cho là tầm thường và lặng lẽ một cách hoàn hảo để trả thù người cha độc đoán, khắc nghiệt của mình. Tám năm về trước, anh đã bỏ nhà đi vì những mâu thuẫn không thể hóa giải với cha, và lúc này, trong lúc ông lâm trọng bệnh, ông đột nhiên gọi anh về để lấy một cô vợ môn đăng hộ đối. Thế là anh quyết tâm cưới về một “con chuột lặng lẽ” để cha anh thêm bội phần uất ức.', 3, 'Mary Balogh');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `loaisach`
--
ALTER TABLE `loaisach`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `loaisach`
--
ALTER TABLE `loaisach`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sach`
--
ALTER TABLE `sach`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
