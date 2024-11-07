-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 16, 2023 lúc 06:06 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `truyenhay24h`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) UNSIGNED NOT NULL,
  `chuong_id` int(11) NOT NULL,
  `noidung` longtext NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `chuong_id`, `noidung`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 5, 'Xin chào', 5, '2023-05-13 06:29:40', '2023-05-13 17:56:59'),
(10, 7, 'xin chào mn. Mình là Lại Đăng Tình', 5, '2023-05-13 08:00:03', '2023-05-13 08:00:35'),
(12, 7, 'khi nào có chương mới vậy bạn', 4, '2023-05-13 08:03:29', '2023-05-13 08:03:29'),
(13, 8, 'hello các bạn', 5, '2023-05-13 12:25:02', '2023-05-13 12:25:02'),
(14, 4, 'xin chào', 5, '2023-05-13 17:51:24', '2023-05-13 17:51:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuong`
--

CREATE TABLE `chuong` (
  `id` int(10) UNSIGNED NOT NULL,
  `truyen_id` int(10) UNSIGNED NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `slug_chuong` varchar(255) NOT NULL,
  `noidung` longtext NOT NULL,
  `kichhoat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chuong`
--

INSERT INTO `chuong` (`id`, `truyen_id`, `tieude`, `slug_chuong`, `noidung`, `kichhoat`) VALUES
(4, 18, 'Chương 1: Sơn biên tiểu thôn', 'chuong-1-son-bien-tieu-thon', '<p><em><em><em><em><em>&quot;Anh ngố&quot;</em></em></em></em></em>&nbsp;trợn trừng hai mắt, nh&igrave;n chằm chằm v&agrave;o n&oacute;c nh&agrave; được tạo th&agrave;nh từ cỏ dại v&agrave; b&ugrave;n trộn lẫn. To&agrave;n th&acirc;n hắn được tr&ugrave;m bởi một c&aacute;i &aacute;o b&ocirc;ng đ&atilde; cũ, ố v&agrave;ng, nh&igrave;n kh&ocirc;ng c&ograve;n ra h&igrave;nh dạng ban đ&acirc;u, phảng phất t&aacute;n ph&aacute;t ra một &iacute;t m&ugrave;i ẩm mốc.<br />\r\n<br />\r\nB&ecirc;n cạnh hắn c&ograve;n c&oacute; một người nữa, l&agrave; nhị ca H&agrave;n Ch&uacute;, đang ngủ rất say sưa. Thỉnh thoảng c&oacute; tiếng ng&aacute;y nh&egrave; nhẹ ph&aacute;t ra từ đ&oacute;.<br />\r\n<br />\r\nC&aacute;ch giường chừng nửa trượng, l&agrave; một v&aacute;ch tường đất đổ n&aacute;t, v&igrave; thời gian đ&atilde; qu&aacute; l&acirc;u, tr&ecirc;n v&aacute;ch tường đ&atilde; xuất hiện v&agrave;i vết nứt d&agrave;i. Từ những vết nứt đ&oacute;, lo&aacute;ng tho&aacute;ng truyền đến thanh &acirc;m o&aacute;n th&aacute;n của H&agrave;n mẫu, ngo&agrave;i ra c&ograve;n c&oacute; thanh &acirc;m H&agrave;n phụ đang h&uacute;t thuốc rất l&agrave; hấp dẫn.</p>\r\n\r\n<p>&#39;Anh ngố&#39; từ từ nhắm đ&ocirc;i mắt c&oacute; ch&uacute;t bức bối lại. Muốn thật nhanh ch&igrave;m v&agrave;o giấc ngủ s&acirc;u. Trong l&ograve;ng hắn biết r&otilde; r&agrave;ng, nếu b&acirc;y giờ m&agrave; c&ograve;n kh&ocirc;ng ngủ ngay, ng&agrave;y mai kh&ocirc;ng thể n&agrave;o dậy sớm được, cũng kh&ocirc;ng thể c&ugrave;ng đ&aacute;m bạn c&ugrave;ng đi đốn củi được.<br />\r\n<br />\r\n<em><em><em><em><em>&quot;Anh ngố&quot;</em></em></em></em></em>&nbsp;họ H&agrave;n t&ecirc;n Lập, loại danh tự c&oacute; &yacute; nghĩa như thế n&agrave;y cha mẹ hắn kh&ocirc;ng c&oacute; khả năng đưa ra. C&aacute;i n&agrave;y l&agrave; do phụ th&acirc;n hắn d&ugrave;ng rượu oa đầu chế bởi th&ocirc; lương, cầu l&atilde;o Trương trong th&ocirc;n đặt cho.<br />\r\n<br />\r\nL&atilde;o Trương khi c&ograve;n trẻ, đ&atilde; từng l&agrave;m thư đồng mấy năm cho một nh&agrave; c&oacute; tiền trong th&agrave;nh. L&agrave; người duy nhất trong th&ocirc;n nhận biết được v&agrave;i chữ. T&ecirc;n gọi của hầu hết tiểu h&agrave;i tử trong th&ocirc;n, đều l&agrave; do l&atilde;o Trương đặt cho.</p>\r\n\r\n<p>H&agrave;n Lập bị người trong th&ocirc;n gọi l&agrave;&nbsp;<em><em><em><em><em>&quot;Anh ngố&quot;</em></em></em></em></em>&nbsp;kh&ocirc;ng phải l&agrave; do hắn ngố hay đần thật sự, ngược lại, hắn c&ograve;n l&agrave; đứa trẻ th&ocirc;ng minh nhất l&agrave;ng, ngo&agrave;i ra tr&ocirc;ng hắn so với những đứa trẻ kh&aacute;c trong l&agrave;ng kh&ocirc;ng c&oacute; g&igrave; kh&aacute;c biệt. Trừ những người trong nh&agrave; ra, hắn rất &iacute;t khi nghe thấy nguời ta gọi t&ecirc;n ch&iacute;nh thức H&agrave;n Lập của hắn, m&agrave; hầu như chỉ l&agrave;&nbsp;<em><em><em><em><em>&quot;Anh ngố&quot;</em></em></em></em></em>, v&agrave; c&aacute;i t&ecirc;n&nbsp;<em><em><em><em><em>&quot;Anh ngố&quot;</em></em></em></em></em>&nbsp;n&agrave;y vẫn được sử dụng cho đến tận b&acirc;y giờ.<br />\r\n<br />\r\nSở dĩ H&agrave;n Lập bị mọi người ban cho hỗn danh&nbsp;<em><em>&quot;anh ngố&quot;</em></em>&nbsp;l&agrave; v&igrave; trong th&ocirc;n vốn đ&atilde; c&oacute; một&nbsp;<em>&quot;anh ngốc&quot;</em>&nbsp;rồi.<br />\r\n<br />\r\nĐiều n&agrave;y cũng kh&ocirc;ng c&oacute; g&igrave; to t&aacute;t cả, tất cả những đứa trẻ kh&aacute;c trong th&ocirc;n đều c&oacute; hỗn danh như&nbsp;<em>&quot;cẩu oa&quot;</em>&nbsp;hay&nbsp;<em>&quot;nhị đản&quot;</em>, so với danh tự&nbsp;<em><em>&quot;anh ngố&quot;</em></em>&nbsp;th&igrave; c&ograve;n kh&oacute; nghe hơn.</p>\r\n\r\n<p>Cũng bởi vậy, H&agrave;n Lập mặc d&ugrave; kh&ocirc;ng th&iacute;ch c&aacute;ch xưng h&ocirc; n&agrave;y nhưng cũng chỉ c&oacute; thể tự an ủi m&igrave;nh m&agrave; th&ocirc;i.<br />\r\n<br />\r\nH&agrave;n Lập bề ngo&agrave;i tr&ocirc;ng kh&ocirc;ng được vừa mắt, da tay th&igrave; đen đ&uacute;a, đ&iacute;ch thực l&agrave; một đứa trẻ b&igrave;nh thường chốn l&agrave;ng qu&ecirc;. Tuy nhi&ecirc;n, nội t&acirc;m của cậu b&eacute; th&igrave; kh&ocirc;ng hề n&ocirc;ng nổi, so với những đứa b&eacute; c&ugrave;ng lứa tuổi th&igrave; ch&iacute;n chắn hơn nhiều. Hắn từ nhỏ đ&atilde; hướng tới thế giới phồn hoa b&ecirc;n ngo&agrave;i, mơ rằng c&oacute; một ng&agrave;y, hắn c&oacute; thể ra khỏi th&ocirc;n l&agrave;ng, đi xem xem c&aacute;i thế giới ph&ugrave; hoa m&agrave; l&atilde;o Trương thường n&oacute;i đến.<br />\r\n<br />\r\nKhi H&agrave;n Lập nghĩ đến &yacute; tưởng n&agrave;y, hắn kh&ocirc;ng d&aacute;m đề cập ra cho người kh&aacute;c biết. Nếu kh&ocirc;ng, nhất định l&agrave;m cho mọi người trong th&ocirc;n cảm thấy ngạc nhi&ecirc;n, một tiểu h&agrave;i tử miệng c&ograve;n chưa kh&ocirc; m&ugrave;i sữa, thế m&agrave; d&aacute;m mơ tưởng đến những &yacute; nghĩ xa vời m&agrave; ngay cả một người lớn cũng chưa d&aacute;m nghĩ đến. Cần phải biết rằng, những đưa trẻ kh&aacute;c c&ugrave;ng tuổi với H&agrave;n Lập th&igrave; tầm tuổi n&agrave;y chỉ biết đuổi g&agrave;, bắt ch&oacute;, tất nhi&ecirc;n l&agrave; ở đ&acirc;y sẽ kh&ocirc;ng n&oacute;i đến những kẻ c&oacute; &yacute; nghĩ tha huơng cầu thực.<br />\r\n<br />\r\nGia đ&igrave;nh H&agrave;n Lập c&oacute; bảy miệng ăn, tr&ecirc;n hắn c&oacute; hai vị huynh trưởng, một tỷ tỷ, hắn trong nh&agrave; đứng thứ tư, ngo&agrave;i ra hắn c&ograve;n c&oacute; một tiểu muội muội nữa. Năm nay hắn vừa mới mười tuổi, gia cảnh bần h&agrave;n, cả năm cũng kh&ocirc;ng c&oacute; mấy bữa được ăn no. Mọi người trong nh&agrave; đều chỉ mong được ăn đủ no, mặc đủ ấm.<br />\r\n<br />\r\nH&agrave;n Lập l&uacute;c n&agrave;y, đang mơ mơ m&agrave;ng m&agrave;ng, tuy ngủ m&agrave; chưa ngủ, trong đầu vẫn c&ograve;n phảng phất &yacute; niệm: Ng&agrave;y mai l&ecirc;n n&uacute;i, nhất định sẽ mang về cho tiểu muội muội m&agrave; hắn y&ecirc;u thương nhất thật nhiều hồng tương quả*, loại quả m&agrave; muội muội hắn th&iacute;ch nhất.<br />\r\n<br />\r\nV&agrave;o giữa trưa ng&agrave;y thứ hai, H&agrave;n Lập dưới &aacute;nh nắng ch&oacute;i trang, lưng g&ugrave;i b&oacute; củi cao bằng nửa người hắn, trước ngực th&igrave; &ocirc;m một nắm đầy hồng tương quả, đang từ ngọn n&uacute;i trở về nh&agrave;. L&uacute;c n&agrave;y, hắn kh&ocirc;ng hề biết rằng trong nh&agrave; đang c&oacute; một vị kh&aacute;ch đến chơi, m&agrave; vị kh&aacute;ch n&agrave;y, ch&iacute;nh l&agrave; người cải biến vận mệnh của hắn.<br />\r\nVị qu&iacute; kh&aacute;ch n&agrave;y, c&ugrave;ng hắn c&oacute; mối quan hệ huyết thống rất gần, &ocirc;ng ta ch&iacute;nh l&agrave; tam th&uacute;c ruột của hắn.<br />\r\n<br />\r\nNghe n&oacute;i, trong v&ugrave;ng, tại tửu l&acirc;u ở tiểu th&agrave;nh phụ cận, được nguời ta t&iacute;n nhiệm đề bạt l&agrave;m đại chưởng quĩ, ch&iacute;nh l&agrave; người m&agrave; cha mẹ hắn thường n&oacute;i. H&agrave;n gia trong v&ograve;ng trăm năm trở lại đ&acirc;y, mới lại c&oacute; thể xuất hiện một người như tam th&uacute;c của H&agrave;n Lập.<br />\r\n<br />\r\n&nbsp;</p>', 0),
(5, 18, 'Chương 2: Thanh ngưu trấn', 'chuong-2-thanh-nguu-tran', '<p>Đ&acirc;y l&agrave; một thị th&agrave;nh nhỏ, tuy n&oacute;i l&agrave; một t&ograve;a tiểu th&agrave;nh, nhưng thực ra n&oacute; chỉ to hơn thị trấn b&igrave;nh thường một &iacute;t th&ocirc;i, m&agrave; t&ecirc;n của n&oacute; cũng được gọi l&agrave; Thanh Ngưu trấn, chỉ những kẻ sơn d&atilde; phụ cận &iacute;t kiến thức mới gọi Thanh Ngưu trấn th&agrave;nh Thanh Ngưu thanh m&agrave; th&ocirc;i. C&aacute;ch gọi n&agrave;y cũng đ&atilde; th&agrave;nh th&oacute;i quen mấy chục năm ở đ&acirc;y mất rồi.<br />\r\n<br />\r\nThanh ngưu trấn đ&iacute;ch x&aacute;c kh&ocirc;ng lớn lắm, con đường chủ đạo Thanh ngưu chạy dọc trấn theo hướng Đ&ocirc;ng-T&acirc;y. M&agrave; kh&aacute;ch sạn ở đ&acirc;y th&igrave; cũng chỉ c&oacute; đ&uacute;ng một c&aacute;i Thanh ngưu kh&aacute;ch sạn. Kh&aacute;ch sạn nằm t&iacute;t cuối trấn về ph&iacute;a t&acirc;y. Kh&aacute;ch v&atilde;ng lai qua đ&acirc;y, nếu kh&ocirc;ng muốn phải nằm ngo&agrave;i đường th&igrave; kh&ocirc;ng c&ograve;n c&aacute;ch n&agrave;o kh&aacute;c l&agrave; phải l&agrave;m kh&aacute;ch tại kh&aacute;ch sạn n&agrave;y.<br />\r\n<br />\r\nV&agrave;o l&uacute;c n&agrave;y, nếu ch&uacute; &yacute; ra ngo&agrave;i, từ ph&iacute;a T&acirc;y thị trấn c&oacute; một đo&agrave;n xe ngựa đang tiến v&agrave;o Thanh ngưu trấn. Rất nhanh đo&agrave;n xe đi tới trước cửa Thanh ngưu kh&aacute;ch sạn, đo&agrave;n xe cũng kh&ocirc;ng dừng lại m&agrave; tiếp tục đi sau v&agrave;o trong trấn, đến khi đi tới trước cửa Xu&acirc;n Hương tửu l&acirc;u th&igrave; mới dừng lại.<br />\r\n<br />\r\nXu&acirc;n Hương tửu l&acirc;u cũng kh&ocirc;ng t&iacute;nh l&agrave; lớn, thậm ch&iacute; n&oacute; c&ograve;n c&oacute; d&aacute;ng vẻ hơi cũ cũ, tuy vậy người ta vẫn cảm nhận được từ n&oacute; n&eacute;t g&igrave; đ&oacute; cổ k&iacute;nh. Cũng bởi v&igrave; b&acirc;y giờ đang l&agrave; ch&iacute;nh ngọ, kh&aacute;ch nh&acirc;n d&ugrave;ng bữa tại tửu lầu vẫn c&ograve;n kh&aacute; đ&ocirc;ng đ&uacute;c, cho n&ecirc;n b&ecirc;n trong tửu l&acirc;u hầu như kh&ocirc;ng c&ograve;n chỗ trống nữa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Từ tr&ecirc;n xe xuống l&agrave; một l&atilde;o b&eacute;o mặt tr&ograve;n c&oacute; bộ r&acirc;u quai n&oacute;n dắt theo một đứa trẻ đen đ&uacute;a tầm mười tuổi. Người đ&agrave;n &ocirc;ng n&agrave;y khệnh khạng dẫn tiểu h&agrave;i tử trực tiếp bước v&agrave;o tửu l&acirc;u. Kh&aacute;ch h&agrave;ng trong tửu l&acirc;u cũng c&oacute; người nhận ra l&atilde;o b&eacute;o, biết rằng l&atilde;o l&agrave; chưởng quĩ&nbsp;<em>&quot;H&agrave;n b&eacute;o mập&quot;</em>&nbsp;của tửu l&acirc;u, c&ograve;n tiểu h&agrave;i tử kia th&igrave; kh&ocirc;ng một ai nhận biết ra.<br />\r\n<br />\r\n<em>&quot;L&atilde;o H&agrave;n, t&ecirc;n hắc tiểu tử n&agrave;y m&agrave; lớn l&ecirc;n th&igrave; tr&ocirc;ng giống l&atilde;o lắm đ&acirc;y, kh&ocirc;ng phải l&agrave; l&atilde;o l&eacute;n sau lưng vợ ra ngo&agrave;i trăng gi&oacute; đấy chứ?&quot;</em>&nbsp;Đột nhi&ecirc;n c&oacute; người tr&ecirc;u ghẹo n&oacute;i.</p>\r\n\r\n<p>Một lời vừa n&oacute;i ra, ch&uacute;ng nh&acirc;n b&ecirc;n cạnh lập tức cười to một trận.<br />\r\n<br />\r\n<em>&quot;Phi (Ta nhổ)! Hắn l&agrave; ch&aacute;u ruột của ta, đương nhi&ecirc;n l&agrave; phải c&oacute; v&agrave;i phần giống ta rồi.&quot;</em>&nbsp;L&atilde;o b&eacute;o chẳng những kh&ocirc;ng tức giận, m&agrave; c&ograve;n c&oacute; v&agrave;i phần đắc &yacute;.<br />\r\n<br />\r\nHai người n&agrave;y ch&iacute;nh l&agrave; nh&acirc;n vật ch&iacute;nh H&agrave;n Lập của ch&uacute;ng ta v&agrave; tam th&uacute;c của hắn, được mọi người trong trấn gọi l&agrave;&nbsp;<em>&quot;l&atilde;o H&agrave;n b&eacute;o&quot;</em>&nbsp;vừa đi li&ecirc;n tục ba ng&agrave;y đường mới tới được Thanh ngưu trấn.</p>\r\n\r\n<p>L&atilde;o H&agrave;n mập sau khi n&oacute;i chuyện phiếm dăm ba c&acirc;u với đ&aacute;m kh&aacute;ch nh&acirc;n liền dẫn H&agrave;n Lập đi v&agrave;o ph&iacute;a sau tửu l&acirc;u, tới một t&ograve;a tiểu viện vắng vẻ.<br />\r\n<br />\r\n<em>&quot;Tiểu Lập, ch&aacute;u ở trong ph&ograve;ng n&agrave;y nghỉ ngơi ch&uacute;t đi nh&eacute;, đợi đến khi quản sự nội m&ocirc;n tới, ta sẽ gọi ch&aacute;u tới. Ta b&acirc;y giờ phải đi tiếp đ&atilde;i mấy vị kh&aacute;ch kia một ch&uacute;t&quot;</em>&nbsp;L&atilde;o H&agrave;n mập chỉ v&agrave;o một căn ph&ograve;ng trong nội viện, n&oacute;i một c&aacute;ch h&ograve;a &aacute;i với hắn.<br />\r\n<br />\r\nN&oacute;i xong, liền quay người đi ra ngo&agrave;i.<br />\r\n<br />\r\nVừa ra tới cửa, l&atilde;o cảm thấy c&oacute; ch&uacute;t g&igrave; đ&oacute; kh&ocirc;ng được y&ecirc;n t&acirc;m, liền dặn d&ograve; th&ecirc;m v&agrave;i c&acirc;u.<br />\r\n<br />\r\n<em>&quot;Đừng nghịch ngợm đấy, trong trấn c&oacute; rất nhiều người, tốt nhất l&agrave; đừng ra khỏi tiểu viện.&quot;</em><br />\r\n<br />\r\n<em>&quot;V&acirc;ng!&quot;</em><br />\r\n<br />\r\nNh&igrave;n thấy H&agrave;n Lập ngoan ngo&atilde;n đ&aacute;p ứng, l&atilde;o mới y&ecirc;n t&acirc;m đi ra.</p>\r\n\r\n<p>H&agrave;n Lập nh&igrave;n tam th&uacute;c đi ra khỏi ngo&agrave;i, cảm thấy mệt mỏi, liền nằm lăn ra giường đ&aacute;nh lu&ocirc;n một giấc, cư nhi&ecirc;n kh&ocirc;ng c&oacute; lấy một điểm sợ h&atilde;i thường thấy của một đứa trẻ phải xa nh&agrave;.<br />\r\n<br />\r\nCho đến tận buổi tối th&igrave; c&oacute; một người phục vụ mang cơm đến, tuy kh&ocirc;ng phải l&agrave; thịt ngon c&aacute; b&eacute;o g&igrave; cả, nhưng cũng t&iacute;nh l&agrave; vừa miệng. Sau khi ăn xong th&igrave; người phục vụ lại đến bưng ch&eacute;n b&aacute;t ra ngo&agrave;i. L&uacute;c n&agrave;y tam th&uacute;c của hắn mới đỉnh đương đi đến.<br />\r\n<br />\r\n<em>&quot;Thế n&agrave;o? Thức ăn c&oacute; vừa miệng hay kh&ocirc;ng? Ch&aacute;u c&oacute; nhớ nh&agrave; kh&ocirc;ng?&quot;</em><br />\r\n<br />\r\n<em>&quot;Dạ, c&oacute; ch&uacute;t ch&uacute;t ạ&quot;</em>&nbsp;H&agrave;n Lập ngoan ngo&atilde;n trả lời.<br />\r\n<br />\r\nL&atilde;o H&agrave;n nghe H&agrave;n Lập trả lời xong cảm thấy rất vừa l&ograve;ng, sau đ&oacute; liền c&ugrave;ng hắn n&oacute;i ch&uacute;t chuyện phiếm, rồi h&atilde;nh diện kể lại những kinh nghiệm của l&atilde;o đ&atilde; trải qua cho H&agrave;n Lập nghe. Dần dần, H&agrave;n Lập kh&ocirc;ng c&ograve;n cảm thấy g&ograve; b&oacute;, hắn bắt đầu c&ugrave;ng tam th&uacute;c cười n&oacute;i với nhau đủ chuyện.<br />\r\n<br />\r\nCứ như vậy, hai ng&agrave;y tiếp theo từ từ tr&ocirc;i qua.<br />\r\n<br />\r\nĐến ng&agrave;y thứ ba, ngay l&uacute;c H&agrave;n Lập vừa ăn cơm chiều xong, đang đợi tam th&uacute;c đến n&oacute;i chuyện về giang hồ cố sự th&igrave; lại c&oacute; một cỗ xe ngựa dừng lại trước cửa tửu l&acirc;u.<br />\r\n<br />\r\nChiếc xe ngựa n&agrave;y to&agrave;n th&acirc;n đen tuyền, loại xe như thế n&agrave;y kh&ocirc;ng phải l&agrave; thường thấy, đặc biệt, g&acirc;y ch&uacute; &yacute; nhất ch&iacute;nh l&agrave; trước xe c&oacute; gắn một l&aacute; cờ nhỏ m&agrave;u đen. Tr&ecirc;n l&aacute; cờ c&oacute; th&ecirc;u chữ&nbsp;<em>&quot;Huyền&quot;</em>&nbsp;m&agrave;u trắng, viền hồng. N&oacute; mang lại cho người ta một cảm gi&aacute;c thần b&iacute; kh&oacute; n&oacute;i.<br />\r\n&nbsp;</p>\r\n\r\n<p><iframe height=\"0\" id=\"ads-place-2027505\" sandbox=\"\" scrolling=\"no\" src=\"javascript:if(typeof(admSspPageRg)!=\'undefined\'){admSspPageRg.draw(2027505);}else{parent.admSspPageRg.draw(2027505);}\" width=\"0\"></iframe></p>\r\n\r\n<p>Nh&igrave;n thấy l&aacute; cờ nhỏ n&agrave;y, ph&agrave;m l&agrave; c&aacute;c tay giang hồ trong phương vi&ecirc;n trăm dặm th&igrave; đều biết, tại địa phương n&agrave;y c&oacute; nh&acirc;n vật trọng yếu của m&ocirc;n ph&aacute;i đứng nhất nh&igrave; trong v&ugrave;ng&nbsp;<em><em>&quot;Thất huyền m&ocirc;n&quot;</em></em>&nbsp;gi&aacute; l&acirc;m.<br />\r\n<br />\r\n<em><em>&quot;Thất huyền m&ocirc;n&quot;</em></em>&nbsp;c&ograve;n được gọi l&agrave;&nbsp;<em>&quot;Thất tuyệt m&ocirc;n&quot;</em>, m&ocirc;n ph&aacute;i n&agrave;y được&nbsp;<em>&quot;thất tuyệt thượng nh&acirc;n&quot;</em>&nbsp;danh tiếng lẫy lừng s&aacute;ng lập ra c&aacute;ch đ&acirc;y hơn hai trăm năm. M&ocirc;n ph&aacute;i n&agrave;y đ&atilde; từng đứng đầu K&iacute;nh Ch&acirc;u hơn mười năm, thậm ch&iacute; c&ograve;n lan tới Sổ Ch&acirc;u b&ecirc;n cạnh, thanh danh trong nước cũng l&ecirc;n cao ch&oacute;t v&oacute;t. Tuy nhi&ecirc;n, từ khi&nbsp;<em>&quot;Thất tuyệt ch&acirc;n nh&acirc;n&quot;</em>&nbsp;bệnh chết, thế lực&nbsp;<em><em>&quot;thất huyền m&ocirc;n&quot;</em></em>&nbsp;tựa như rớt xuống ng&agrave;n trượng, bị mấy m&ocirc;n ph&aacute;i kh&aacute;c li&ecirc;n thủ đẩy ra khỏi thủ phủ K&iacute;nh Ch&acirc;u th&agrave;nh. Hơn trăm năm trước, t&ocirc;ng m&ocirc;n đ&atilde; bị bức b&aacute;ch di chuyển đến địa điểm vắng vẻ ti&ecirc;u điều nhất của K&iacute;nh Ch&acirc;u &ndash; Th&aacute;i H&agrave; sơn, từ đ&oacute; về sau&nbsp;<em><em>&quot;thất huyền m&ocirc;n&quot;</em></em>&nbsp;đ&atilde; b&aacute;m rễ tại chỗ n&agrave;y, rớt xuống tam lưu tiểu thế lực ở địa phương.<br />\r\n<br />\r\nC&oacute; một c&acirc;u n&oacute;i rất đ&uacute;ng, lạc đ&agrave; gầy th&igrave; vẫn c&ograve;n hơn con ngựa to b&eacute;o, Thất huyền m&ocirc;n d&ugrave; sao th&igrave; cũng đ&atilde; từng l&agrave; một đại m&ocirc;n ph&aacute;i, tiềm lực b&ecirc;n trong th&igrave; kh&ocirc;ng thể xem nhỏ được. Ngay lập tức đ&atilde; kh&ocirc;ng chế hơn chục tiểu trấn xung quanh Thanh ngưu trấn, c&oacute; hơn ba bốn ng&agrave;n đệ tử, l&agrave; một trong những b&aacute; chủ ở đ&acirc;y.<br />\r\n<br />\r\nTại đ&acirc;y, bang ph&aacute;i duy nhất c&oacute; khả năng đối kh&aacute;ng lại Thất huyền m&ocirc;n l&agrave; D&atilde; lang bang.<br />\r\n<br />\r\nD&atilde; lang bang tiền th&acirc;n vốn l&agrave; đ&aacute;m m&atilde; tặc chuy&ecirc;n đốt ph&aacute;, cướp b&oacute;c trong địa phận K&iacute;nh ch&acirc;u, sau n&agrave;y do bị quan binh đuổi giết, một bộ phận theo h&agrave;ng quan phủ, bộ phận c&ograve;n lại h&igrave;nh th&agrave;nh l&ecirc;n D&atilde; lang bang ng&agrave;y nay. Nhưng, sự hung hăng t&agrave;n &aacute;c của m&atilde; tặc đ&atilde; thấm v&agrave;o m&aacute;u, bọn ch&uacute;ng liều lĩnh cướp ph&aacute;, giết người kh&ocirc;ng g&igrave; l&agrave; kh&ocirc;ng d&aacute;m. Cho n&ecirc;n, khi Thất huyền m&ocirc;n v&agrave; D&atilde; lang bang c&oacute; xung đột th&igrave; Thất huyền m&ocirc;n cũng chỉ nằm ở thế hạ phong m&agrave; th&ocirc;i.</p>\r\n\r\n<p>D&atilde; lang bang khống chế hương trấn nhiều hơn hẳn, nhưng những trấn n&agrave;y lại kh&ocirc;ng thể kinh doanh, cho n&ecirc;n khi luận về ph&uacute; t&uacute;c th&igrave; c&ograve;n xa mới theo kịp những th&agrave;nh trấn thuộc về Thất huyền m&ocirc;n. D&atilde; lang bang thập phần th&egrave;m muốn địa b&agrave;n mầu mỡ của Thất huyền m&ocirc;n, cho n&ecirc;n thương xuy&ecirc;n khơi m&agrave;o cuộc chiến giữa hai b&ecirc;n. Việc n&agrave;y đ&atilde; l&agrave;m cho Thất huyền m&ocirc;n m&ocirc;n chủ hiện h&agrave;nh đau đầu kh&ocirc;ng &iacute;t, v&agrave; n&oacute; cũng ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n khiến cho gần mười năm nay, Thất huyền m&ocirc;n li&ecirc;n tục chi&ecirc;u thu nội đệ tử.<br />\r\n<br />\r\nTừ tr&ecirc;n xe ngựa nhảy xuống một h&aacute;n tử cao gầy tầm bốn mươi tuổi, động t&aacute;c của h&aacute;n tử n&agrave;y rất nhanh nhẹn, thể hiện bản lĩnh kh&ocirc;ng hề yếu k&eacute;m, tựa hồ đối với chỗ n&agrave;y rất quen thuộc. Trực tiếp đi thẳng v&agrave;o căn ph&ograve;ng b&ecirc;n trong.<br />\r\n<br />\r\nH&agrave;n Lập tam th&uacute;c vừa nh&igrave;n thấy người mới đến, lập tức cung k&iacute;nh l&agrave;m lễ.<br />\r\n<br />\r\n<em>&quot;Vương hộ ph&aacute;p, l&atilde;o nh&acirc;n gia ng&agrave;i thế n&agrave;o lại tự th&acirc;n dẫn người tới vậy?&quot;</em><br />\r\n<br />\r\n<em>&quot;Hừ!&quot;</em>&nbsp;Vương hộ ph&aacute;p hừ lạnh một tiếng, vẻ mặt rất ngạo mạn.<br />\r\n<br />\r\n<em>&quot;Trong khoảng thời gian kh&ocirc;ng y&ecirc;n ổn n&agrave;y, cần phải gia tăng ph&ograve;ng vệ, trưởng l&atilde;o lệnh cho ta tự th&acirc;n thống lĩnh nh&acirc;n lực, bớt n&oacute;i linh tinh đi, tiểu h&agrave;i tử n&agrave;y c&oacute; phải l&agrave; người m&agrave; ngươi tiến cử?&quot;</em><br />\r\n<br />\r\n<em>&quot;Đ&uacute;ng vậy, đ&uacute;ng vậy, hắn vốn l&agrave; ch&aacute;u ruột của ta, mong rằng tr&ecirc;n đường đi Vương hộ ph&aacute;p chiếu cố tới hắn một ch&uacute;t.&quot;</em><br />\r\n<br />\r\nL&atilde;o H&agrave;n mập thấy thần sắc h&aacute;n tử c&oacute; vẻ bất m&atilde;n, liền nhanh nhẹn lấy từ trong người ra một c&aacute;i t&uacute;i nặng nặng, k&iacute;n đ&aacute;o đặt v&agrave;o tay.<br />\r\n<br />\r\nVương hộ ph&aacute;p n&acirc;ng n&acirc;ng c&aacute;i t&uacute;i, thần sắc c&oacute; ch&uacute;t h&ograve;a ho&atilde;n xuống.<br />\r\n<br />\r\n<em>&quot;L&atilde;o H&agrave;n mập, ngươi biết c&aacute;ch l&agrave;m người đấy! Ta nhất định sẽ chiếu cố ch&aacute;u ngươi tr&ecirc;n đường rồi. Thời gian kh&ocirc;ng c&ograve;n sớm nữa, khẩn trương l&ecirc;n đường th&ocirc;i.&quot;</em></p>', 0),
(6, 18, 'Chương 3: Thất huyền môn', 'chuong-3-that-huyen-mon', '<p>Kh&ocirc;ng kh&iacute; trong xe kh&ocirc;ng được trong l&agrave;nh cho lắm, điều n&agrave;y cũng phải th&ocirc;i, hơn ba chục tiểu h&agrave;i tử chen ch&uacute;c trong một chiếc xe. Tuy n&oacute;i l&agrave; tiểu h&agrave;i tử nhỏ hơn nhiều so với người trưởng th&agrave;nh, nhưng với số lương thế n&agrave;y, cũng đủ để l&agrave;m bầu kh&ocirc;ng kh&iacute; trong xe trở n&ecirc;n kh&oacute; thở.<br />\r\n<br />\r\nH&agrave;n Lập tinh ranh đ&atilde; chui ngay v&agrave;o một g&oacute;c nằm s&acirc;u trong xe, len l&eacute;n đ&aacute;nh gi&aacute; mấy tiểu h&agrave;i đồng c&ograve;n lại trong xe.<br />\r\nTới tham gia kỳ khảo th&iacute; nhập m&ocirc;n lần n&agrave;y, từ c&aacute;ch ăn mặc, ăn n&oacute;i dễ d&agrave;ng nhận thấy c&oacute; ba dạng người.<br />\r\n<br />\r\nLoại người thứ nhất ngồi ở giữa xe, đang bị đ&aacute;m trẻ con v&acirc;y quanh ủng hộ. Thiếu ni&ecirc;n mặc cẩm y ch&iacute;nh l&agrave; thuộc dạng người thứ nhất n&agrave;y.</p>\r\n\r\n<p>Thiếu ni&ecirc;n n&agrave;y t&ecirc;n gọi l&agrave; Vũ Nham, năm nay mới mười ba tuổi, l&agrave; đứa trẻ lớn tuổi nhất ở trong xe l&uacute;c n&agrave;y. Vốn tuổi của hắn đ&atilde; vượt qu&aacute; qui định, nhưng hắn c&oacute; một vị biểu tỷ được gả cho một nh&acirc;n vật c&oacute; đại quyền trong Thất huyền m&ocirc;n, n&ecirc;n cho d&ugrave; vượt qu&aacute; tuổi qui định th&igrave; cũng kh&ocirc;ng phải l&agrave; vấn đề g&igrave; to t&aacute;t. Gia đ&igrave;nh Vũ Nham mở một v&otilde; qu&aacute;n, gia trung c&oacute; ch&uacute;t gi&agrave;u c&oacute;, tuổi tuy c&ograve;n nhỏ nhưng cũng đ&atilde; c&oacute; tập v&otilde; qua. C&ocirc;ng phu tuy kh&ocirc;ng lấy l&agrave;m cao minh cho lắm, nhưng để đối ph&oacute; lại với những đứa b&eacute; một điểm kh&iacute; lực cũng kh&ocirc;ng c&oacute; như H&agrave;n Lập th&igrave; c&oacute; lẽ l&agrave; dư sức.<br />\r\n<br />\r\nRất hiển nhi&ecirc;n, loại người như Vũ Nham c&oacute; tiền, c&oacute; thế, tự nhi&ecirc;n sẽ trở th&agrave;nh&nbsp;<em>&quot;đại ca&quot;</em>&nbsp;của đại bộ phận đ&aacute;m tiểu h&agrave;i tử trong xe.</p>\r\n\r\n<p>Một loại người kh&aacute;c tựu l&agrave; những h&agrave;i đồng ủng hộ Vũ Nham. Những h&agrave;i đồng n&agrave;y xuất th&acirc;n từ đủ loại gia cảnh như c&oacute; người trong nh&agrave; c&oacute; cửa h&agrave;ng, c&oacute; người th&igrave; phải đi l&agrave;m c&ocirc;ng&hellip; n&oacute;i chung những h&agrave;i tử n&agrave;y đều c&oacute; điểm chung: đều lớn l&ecirc;n trong th&agrave;nh trấn, c&oacute; cơ hội &iacute;t nhiều quan s&aacute;t c&aacute;ch xử sự những người c&oacute; học vấn, trục lợi nhi h&agrave;nh (c&oacute; lợi th&igrave; l&agrave;m) đ&atilde; th&agrave;nh bản sự rồi. Do đ&oacute; m&agrave; những đứa trẻ n&agrave;y dốc sức ủng hộ Vũ Nham, cứ một điều&nbsp;<em><em>&quot;Vũ thiếu gia&quot;</em></em>&nbsp;hai điều&nbsp;<em><em>&quot;Vũ thiếu gia&quot;</em></em>&nbsp;m&agrave; gọi. Vũ Nham trước sự t&ocirc;n vinh của bọn trẻ như vậy cũng coi như b&igrave;nh thường, hắn c&ograve;n c&oacute; cảm gi&aacute;c hưởng thụ sự t&ocirc;n vinh đ&oacute;.<br />\r\n<br />\r\nC&ograve;n loại người cuối c&ugrave;ng, tất nhi&ecirc;n l&agrave; dạng người giống như H&agrave;n Lập. Loại người n&agrave;y đến từ v&ugrave;ng đất hoang vu hẻo l&aacute;nh, gia cảnh hầu như đều bần h&agrave;n, c&oacute; g&igrave; ăn đ&oacute;. Loại người như vậy trong xe rất l&agrave; &iacute;t, chỉ c&oacute; tầm năm s&aacute;u đứa trẻ m&agrave; th&ocirc;i. Thần th&aacute;i của bọn ch&uacute;ng đa phần l&agrave; e d&egrave;, kh&ocirc;ng d&aacute;m n&oacute;i năng với ai c&aacute;i g&igrave;, chỉ ngồi m&agrave; nh&igrave;n người kh&aacute;c n&oacute;i cười m&agrave; th&ocirc;i. Những tiểu h&agrave;i tử n&agrave;y c&ugrave;ng với những đứa trẻ đang huy&ecirc;n n&aacute;o c&ograve;n lại tạo th&agrave;nh một khung cảnh đối lập.<br />\r\n<br />\r\nXe ngựa xuất ph&aacute;t từ Thanh ngưu trấn theo hướng T&acirc;y m&agrave; thẳng tiến, tr&ecirc;n lộ tr&igrave;nh c&ograve;n đi qua th&ecirc;m v&agrave;i địa phương nữa, cũng tiếp th&ecirc;m v&agrave;i tiểu h&agrave;i đồng nữa. Cuối c&ugrave;ng đến chiều ng&agrave;y thứ năm th&igrave; cũng đi tới được Th&aacute;i H&agrave; sơn &ndash; tổng m&ocirc;n của Thất huyền m&ocirc;n.<br />\r\n<br />\r\nHầu hết tiểu h&agrave;i tử khi xuống xe đều bị cảnh quan tươi đẹp của Th&aacute;i H&agrave; sơn l&agrave;m cho m&ecirc; mẩn. Chỉ đến khi Vương hộ ph&aacute;p l&ecirc;n tiếng th&uacute;c giục, mọi người mới thanh tỉnh trở lại rồi tiếp tục đi tới.<br />\r\n<br />\r\nTh&aacute;i H&agrave; sơn nguy&ecirc;n danh gọi l&agrave; Lạc Phượng sơn, tương truyền rằng nơi đ&acirc;y từng c&oacute; một con phượng ho&agrave;ng ngũ sắc rớt xuống đ&acirc;y rồi h&oacute;a th&agrave;nh ngọn n&uacute;i n&agrave;y. Sau n&agrave;y, người ta ph&aacute;t hiện cảnh sắc ngọn n&uacute;i n&agrave;y v&agrave;o l&uacute;c mặt trời xuống th&igrave; tr&ocirc;ng đẹp v&ocirc; c&ugrave;ng, như l&agrave; c&oacute; đ&aacute;m m&acirc;y hồng bao phủ tr&ecirc;n đỉnh n&uacute;i, do vậy m&agrave; ngọn n&uacute;i bị người ta đổi t&ecirc;n th&agrave;nh Th&aacute;i H&agrave; sơn. Đương nhi&ecirc;n, ngọn n&uacute;i n&agrave;y từ sau khi bị Thất huyền m&ocirc;n chiếm cứ, người ngo&agrave;i đ&atilde; kh&ocirc;ng c&ograve;n cơ hội thưởng ngoạn cảnh đẹp ở đ&acirc;y.<br />\r\n<br />\r\nTh&aacute;i H&agrave; sơn l&agrave; một trong những ngọn n&uacute;i lớn của K&iacute;nh ch&acirc;u, ngo&agrave;i trừ t&ograve;a B&aacute;ch m&atilde;ng sơn, th&igrave; ngọn n&uacute;i n&agrave;y chiếm diện t&iacute;ch lớn nhất, phương vi&ecirc;n mười dặm quanh ngọn n&uacute;i n&agrave;y đều l&agrave; n&uacute;i non chập tr&ugrave;ng. T&iacute;nh ra tr&ecirc;n n&uacute;i n&agrave;y c&oacute; hơn mười sơn phong (đỉnh n&uacute;i) to nhỏ. Hầu hết ch&uacute;ng đều chiếm vị tr&iacute; v&ocirc; c&ugrave;ng hiểm yếu, do đ&oacute; đều bị người của c&aacute;c ph&acirc;n đường Thất huyền m&ocirc;n chiếm cứ. Đỉnh n&uacute;i ch&iacute;nh của Th&aacute;i H&agrave; sơn l&agrave;&nbsp;<em>&quot;Lạc Nhật phong&quot;</em>&nbsp;c&agrave;ng hiểm &aacute;c v&ocirc; c&ugrave;ng, chẳng những n&oacute; l&agrave; đỉnh cao nhất, m&agrave; ở đ&oacute; cũng chỉ c&oacute; duy nhất một con đường độc dạo dẫn l&ecirc;n n&uacute;i, do vậy m&agrave; Thất huyền m&ocirc;n đem tổng đ&agrave;n đặt l&ecirc;n đỉnh n&uacute;i n&agrave;y. C&ograve;n đường n&agrave;y kh&ocirc;ng những hiểm trở, m&agrave; dọc theo con đường Thất huyền m&ocirc;n c&ograve;n thiết lập mười ba trạm g&aacute;c cả minh cả &aacute;m, c&oacute; thể n&oacute;i l&agrave; vạn v&ocirc; nhất thất (ng&agrave;n vạn c&aacute;i cũng kh&ocirc;ng để lọt mất c&aacute;i n&agrave;o), kh&ocirc;ng c&oacute; g&igrave; để phải lo lắng.<br />\r\n<br />\r\nH&agrave;n Lập đang nh&igrave;n ng&oacute; bốn xung quanh, bỗng nhi&ecirc;n thấy ph&iacute;a trước mọi người đều dừng lại, tiếp đ&oacute; một &acirc;m thanh h&agrave;o sảng truyền đến.<br />\r\n<br />\r\n<em>&quot;Vương l&atilde;o đệ, c&oacute; chuyện g&igrave; m&agrave; đến b&acirc;y giờ mới đến nơi? So với dự định th&igrave; trễ mất hai ng&agrave;y thời gian rồi.&quot;</em><br />\r\n<br />\r\n<em>&quot;Nhạc đường chủ, tr&ecirc;n đường đi c&oacute; ch&uacute;t chậm trễ, phiền ng&agrave;i để t&acirc;m rồi.&quot;</em>&nbsp;Vương hộ ph&aacute;p đứng đầu đ&aacute;m người, cung k&iacute;nh hướng tới một vị l&atilde;o giả mặt mũi hồng h&agrave;o thi lễ. Bộ mặt ngang t&agrave;ng khi đi đường của hắn đ&atilde; được thay bằng một bộ mặt tr&ocirc;ng rất siểm nịnh.<br />\r\n<br />\r\n<em>&quot;Đ&acirc;y l&agrave; nh&oacute;m đệ tử thứ mấy được đưa đến vậy?&quot;</em><br />\r\n<br />\r\n<em>&quot;L&agrave; nh&oacute;m thứ mười bảy.&quot;</em><br />\r\n<br />\r\n<em>&quot;&Acirc;n!&quot;</em>&nbsp;vị Nhạc đường chủ n&agrave;y khinh khỉnh nh&igrave;n xuống đ&aacute;m tiểu h&agrave;i tử H&agrave;n Lập.<br />\r\n<br />\r\n<em>&quot;Đưa đến Thanh kh&aacute;ch viện, để bọn ch&uacute;ng nghỉ ngơi một đ&ecirc;m cho tốt, s&aacute;ng mai bắt đầu chọn lựa đệ tử rồi. Một khi bị loại, phải sớm đưa bọn ch&uacute;ng xuống n&uacute;i, đừng để phạm v&agrave;o qui định của bản m&ocirc;n.</em></p>\r\n\r\n<p><em>&quot;</em>Tu&acirc;n mệnh, Nhạc đường chủ!&quot;<br />\r\n<br />\r\nĐược đi tr&ecirc;n con đường đ&aacute; dẫn l&ecirc;n n&uacute;i, đ&aacute;m tiểu h&agrave;i tử đều hưng phấn m&atilde;i kh&ocirc;ng th&ocirc;i, nhưng cũng chưa c&oacute; ai d&aacute;m lớn tiếng n&oacute;i chuyện. Tuy bọn ch&uacute;ng đều chưa trưởng th&agrave;nh, nhưng cũng nhận biết được nơi n&agrave;y sẽ quyết định vận mệnh tương lai của m&igrave;nh.<br />\r\n<br />\r\nVương hộ ph&aacute;p vừa đi trước dẫn đường, vừa tươi cười ch&agrave;o hỏi những người gặp tr&ecirc;n đường. C&oacute; thể nh&igrave;n ra hắn tại m&ocirc;n nội quen biết kh&aacute; nhiều người, cho n&ecirc;n con đường sau n&agrave;y của hắn cũng kh&aacute; lạc quan.<br />\r\n<br />\r\nDọc đường chỉ thấy mọi người ở đ&acirc;y đều mặc &aacute;o b&oacute; ngắn m&agrave;u xanh, tr&ecirc;n th&acirc;n hoặc đeo đao, hoặc dắt kiếm, cũng thỉnh thoảng c&oacute; người đi tay kh&ocirc;ng nhưng ở thắt lưng phồng phồng l&ecirc;n, kh&oacute; m&agrave; đo&aacute;n biết được ở đ&oacute; l&agrave; c&aacute;i g&igrave;. Từ cử chỉ h&agrave;nh vi, c&oacute; thể nh&igrave;n ra người đ&oacute; th&acirc;n thủ mạnh mẽ, chắc hẳn phải mang trong m&igrave;nh một th&acirc;n c&ocirc;ng phu kh&ocirc;ng sai.<br />\r\n<br />\r\nH&agrave;n Lập được người ta dẫn đến một đỉnh n&uacute;i thấp nhỏ, tr&ecirc;n đỉnh n&uacute;i c&oacute; sẵn một căn thổ ph&ograve;ng. H&agrave;n Lập được cho ngủ qua đ&ecirc;m ở đ&acirc;y để đến ng&agrave;y mai chờ người dẫn đi. Trong giấc mộng, H&agrave;n Lập mơ thấy m&igrave;nh mặc cẩm y, tay cầm kim kiếm, th&acirc;n ho&agrave;i tuyệt kỹ v&otilde; c&ocirc;ng, đ&aacute;nh cho con l&atilde;o thợ r&egrave;n trong l&agrave;ng m&agrave; ng&agrave;y trước hắn kh&ocirc;ng đ&aacute;nh nổi một trận no n&ecirc;, hết cả uy phong, đến tận ng&agrave;y thứ hai vẫn chưa đứng l&ecirc;n nổi.<br />\r\n<br />\r\nKhi trời vừa s&aacute;ng, Vương hộ ph&aacute;p cũng kh&ocirc;ng để mọi người được ăn bữa s&aacute;ng, trực tiếp đem ch&uacute;ng nh&acirc;n dẫn xuống n&uacute;i, tới trước một khu rừng tr&uacute;c rậm rạp. Tại đ&acirc;y, ngo&agrave;i vị đường chủ họ Nhạc đ&atilde; gặp ng&agrave;y h&ocirc;m qua c&ograve;n c&oacute; mấy người thanh ni&ecirc;n lạ kh&aacute;c đ&atilde; đứng chờ s&atilde;n.</p>', 0),
(7, 17, 'Chương 1: Đại Hoang', 'chuong-1-dai-hoang', '<p>Đ&ecirc;m đ&atilde; về khuya, b&oacute;ng tối phủ k&iacute;n khắp nơi, bao tr&ugrave;m l&ecirc;n cảnh vật. Thế nhưng trong n&uacute;i lại chẳng hề y&ecirc;n tĩnh, tiếng m&atilde;nh th&uacute; r&iacute;t g&agrave;o rung động cả non s&ocirc;ng, c&acirc;y cối rung l&ecirc;n, l&aacute; bay t&aacute;n loạn.</p>\r\n\r\n<p>Chốn rừng n&uacute;i m&ecirc;nh mang l&agrave; nơi hoạt động của v&ocirc; số m&atilde;nh th&uacute; hồng hoang c&ugrave;ng những chủng tộc s&oacute;t lại từ thời Th&aacute;i Cổ. Tiếng k&ecirc;u đ&aacute;ng sợ của mu&ocirc;n lo&agrave;i rống l&ecirc;n trong b&oacute;ng tối, khiến mặt đất như muốn nứt to&aacute;c ra.</p>\r\n\r\n<p>Từ trong d&atilde;y n&uacute;i tr&ocirc;ng xa thấy c&oacute; thấp tho&aacute;ng một quầng s&aacute;ng nhu h&ograve;a, tựa như một ngọn nến lập l&ograve;e dưới m&agrave;n đ&ecirc;m đen v&ocirc; tận, lẩn khuất giữa mu&ocirc;n tr&ugrave;ng n&uacute;i, &aacute;nh s&aacute;ng dường như c&oacute; thể vụt tắt bất cứ l&uacute;c n&agrave;o.</p>\r\n\r\n<p>Đến gần hơn, c&oacute; thể thấy r&otilde; ở đ&oacute; c&oacute; một nửa th&acirc;n c&acirc;y kh&ocirc; khổng lồ, đường k&iacute;nh th&acirc;n c&acirc;y ước chừng hơn chục m&eacute;t, to&agrave;n th&acirc;n ch&aacute;y đen, ngoại trừ một nửa th&acirc;n c&acirc;y n&agrave;y, chỉ c&ograve;n lại một c&agrave;nh c&acirc;y yếu ớt nhưng lại tỏa ra sức sống. L&aacute; c&acirc;y lung linh như được khắc từ lục ngọc, t&aacute;n ph&aacute;t từng đốm s&aacute;ng nhu h&ograve;a bao tr&ugrave;m lấy cả một th&ocirc;n l&agrave;ng.</p>\r\n\r\n<p>N&oacute;i một c&aacute;ch ch&iacute;nh x&aacute;c th&igrave; đ&acirc;y l&agrave; một th&acirc;n c&acirc;y s&eacute;t đ&aacute;nh, rất nhiều năm về trước n&oacute; từng gặp phải một trận s&eacute;t th&ocirc;ng thi&ecirc;n, v&ograve;m c&acirc;y um t&ugrave;m c&ugrave;ng sức sống tr&agrave;n trề của gốc liễu gi&agrave; đ&atilde; bị sấm s&eacute;t ph&aacute; hủy. Nay chỉ c&ograve;n lại một đoạn gốc cao chừng t&aacute;m ch&iacute;n m&eacute;t trồi l&ecirc;n mặt đất, đường k&iacute;nh rộng kinh người, c&agrave;nh liễu duy nhất s&oacute;t lại kia tr&ocirc;ng như sợi x&iacute;ch thần bằng m&acirc;y lục b&iacute;ch, h&agrave;o quang ngập tr&agrave;n bao tr&ugrave;m che chở cho cả th&ocirc;n l&agrave;ng, khiến mảnh đất n&agrave;y trở n&ecirc;n m&ocirc;ng lung như một v&ugrave;ng ti&ecirc;n thổ, trong chốn đại hoang cảm gi&aacute;c v&ocirc; c&ugrave;ng thần b&iacute;.</p>\r\n\r\n<p>Nh&agrave; nh&agrave; trong th&ocirc;n đều x&acirc;y bằng đ&aacute;. Đ&ecirc;m khuya thanh vắng, vẻ an l&agrave;nh y&ecirc;n ả của chốn n&agrave;y dường như t&aacute;ch biệt hẳn với b&oacute;ng tối c&ugrave;ng tiếng m&atilde;nh th&uacute; g&agrave;o th&eacute;t b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p>&quot;H&uacute; uuuuu&hellip;.&quot;</p>\r\n\r\n<p>Một trận cuồng phong thổi qua, c&oacute; đ&aacute;m m&acirc;y đen khổng lồ vắt ngang trời, che k&iacute;n cả m&agrave;n đ&ecirc;m, chắn nốt ch&uacute;t x&iacute;u &aacute;nh sao yếu ớt khiến d&atilde;y n&uacute;i c&agrave;ng th&ecirc;m tăm tối.</p>\r\n\r\n<p>Một tiếng chim k&ecirc;u hung tợn từ tr&ecirc;n cao vọng xuống, tiếng k&ecirc;u sắc lẻm c&oacute; sức xuy&ecirc;n thấu mạnh, kh&ocirc;ng ngờ lại bắt nguồn từ đ&aacute;m m&acirc;y đen kia. Nh&igrave;n kỹ, th&igrave; ra đ&oacute; l&agrave; một con chim khổng lồ to đến kh&ocirc;ng tưởng, che lấp trăng sao, d&agrave;i kh&ocirc;ng biết bao nhi&ecirc;u dặm.</p>\r\n\r\n<p>Đi qua Thạch Th&ocirc;n, n&oacute; c&uacute;i đầu nh&igrave;n xuống, hai con mắt tựa như hai vầng trăng m&aacute;u, hung kh&iacute; ng&uacute;t trời. N&oacute; nh&igrave;n chằm chằm gốc liễu gi&agrave; trong chốc l&aacute;t, cuối c&ugrave;ng bay về ph&iacute;a s&acirc;u nhất trong d&atilde;y n&uacute;i.</p>\r\n\r\n<p>Y&ecirc;n ắng một l&uacute;c l&acirc;u m&atilde;i cho đến tận nửa đ&ecirc;m, mặt đất bắt đầu rung chuyển. Một b&oacute;ng d&aacute;ng mơ hồ từ phương xa bước tới, cao ngang đỉnh n&uacute;i!</p>\r\n\r\n<p>Một hơi thở k&igrave; lạ lan tỏa, n&uacute;i rừng lặng ngắt một c&aacute;ch chết ch&oacute;c, hung cầm m&atilde;nh th&uacute; c&uacute;i rạp m&igrave;nh kh&ocirc;ng d&aacute;m ph&aacute;t ra một ch&uacute;t x&iacute;u &acirc;m thanh.</p>\r\n\r\n<p>Lại gần, đ&acirc;y l&agrave; một sinh vật c&oacute; h&igrave;nh người, d&aacute;ng đứng thẳng, n&oacute; cao lớn v&ocirc; c&ugrave;ng, s&aacute;nh ngang đỉnh n&uacute;i, to&agrave;n th&acirc;n n&oacute; kh&ocirc;ng c&oacute; l&ocirc;ng t&oacute;c g&igrave; m&agrave; d&agrave;y đặc một lớp vảy v&agrave;ng kim lấp l&aacute;nh. Mặt n&oacute; phẳng l&igrave;, chỉ c&oacute; một con mắt thẳng, mỗi lần chớp mở như c&oacute; &aacute;nh s&eacute;t v&agrave;ng kim rạch qua, sắc b&eacute;n gh&ecirc; người. To&agrave;n th&acirc;n n&oacute; huyết kh&iacute; m&ecirc;nh m&ocirc;ng, tựa như một vị thần ma!</p>\r\n\r\n<p>N&oacute; đi ngang qua chốn n&agrave;y, liếc nh&igrave;n gốc liễu, tho&aacute;ng dừng ch&acirc;n rồi dường như đang vội v&atilde; l&ecirc;n đường, cuối c&ugrave;ng nhanh ch&oacute;ng bỏ đi. V&ocirc; v&agrave;n ngọn n&uacute;i như đang r&ecirc;n rỉ dưới từng bước ch&acirc;n của n&oacute;, cả chốn n&uacute;i rừng cũng bị uy thế ấy l&agrave;m cho run rẩy.</p>\r\n\r\n<p>B&igrave;nh minh l&ecirc;n, một con rết d&agrave;i mười m&eacute;t, th&acirc;n to như th&ugrave;ng nước, tỏa &aacute;nh s&aacute;ng bạc lấp l&aacute;nh b&ograve; ngoằn ngo&egrave;o trong n&uacute;i. Con rết như được đ&uacute;c từ bạc trắng, mỗi một đốt đều s&aacute;ng b&oacute;ng dữ dằn, đập v&agrave;o đ&aacute; n&uacute;i rầm rầm, tia lửa bắn tung t&oacute;e. Nhưng cuối c&ugrave;ng n&oacute; lại tr&aacute;nh qua Thạch Th&ocirc;n m&agrave; kh&ocirc;ng hề x&acirc;m nhập, nơi n&oacute; đi qua sương đen mịt m&ugrave;, mu&ocirc;ng th&uacute; đều lẩn tr&aacute;nh.</p>\r\n\r\n<p>Một c&agrave;nh liễu mảnh mai tỏa &aacute;nh s&aacute;ng b&iacute;ch h&agrave; &oacute;ng &aacute;nh khẽ đung đưa trong gi&oacute;&hellip;.</p>\r\n\r\n<p>&nbsp;</p>', 0),
(8, 16, 'Chương 1: Nhân phẩm có vấn đề (1)', 'chuong-1-nhan-pham-co-van-de-1', '<p>- Ưm, ta đang ở nơi n&agrave;o thế n&agrave;y?<br />\r\n<br />\r\nLắc lư c&aacute;i đầu vừa tỉnh lại sau khi ch&igrave;m v&agrave;o h&ocirc;n m&ecirc;, Lục Thiếu Du cảm thấy xung quanh m&igrave;nh rất ẩm ướt, hơn nữa to&agrave;n th&acirc;n đau nhức như muốn t&ecirc; liệt, gi&oacute; từ bốn ph&iacute;a thổi qua, tạt v&agrave;o người hắn khiến hắn kh&ocirc;ng nhịn được m&agrave; r&ugrave;ng m&igrave;nh một c&aacute;i.<br />\r\n<br />\r\nĐầu Lục Thiếu Du to&aacute;t mồ h&ocirc;i lạnh, hắn vội v&agrave;ng mở cho&agrave;ng mắt. Kh&ocirc;ng gian xung quanh chỉ l&agrave; một mảnh đen kịt, tr&ecirc;n kh&ocirc;ng trung, một vầng trăng lưỡi liềm đang treo lơ lửng. Sau một l&aacute;t, mượn &aacute;nh s&aacute;ng yếu ớt ph&aacute;t ra từ mặt trăng hắn mới nh&igrave;n được cảnh vật r&otilde; r&agrave;ng hơn một ch&uacute;t. Hiện tại hắn đang ở trong một đầm nước, l&uacute;c n&agrave;y hẳn l&agrave; ban đ&ecirc;m.</p>\r\n\r\n<p>- A...<br />\r\n<br />\r\nCơn đau điếng từ đại n&atilde;o truyền đến khiến hắn phải k&ecirc;u l&ecirc;n một tiếng thảm thiết. Lục Thiếu Du cảm nhận được c&oacute; một lực lượng kỳ lạ đ&aacute;nh v&agrave;o đầu m&igrave;nh khiến hắn lập tức ngất đi một lần nữa.</p>\r\n\r\n<p>Khi trời gần s&aacute;ng Lục Thiếu Du mới từ từ tỉnh lại, nhưng khi nhận được tin tức mới từ đại n&atilde;o Lục Thiếu Du thiếu ch&uacute;t nữa lại ngất đi.<br />\r\n<br />\r\n- Nh&acirc;n phẩm của ta bạo ph&aacute;t sao, xuy&ecirc;n việt rồi, đ&acirc;y l&agrave; kh&ocirc;ng phải l&agrave; nằm mơ chứ?<br />\r\n<br />\r\nLục Thiếu Du mở to hai mắt chăm ch&uacute; nh&igrave;n bốn ph&iacute;a, theo những tin tức nhận được từ đại n&atilde;o, c&ugrave;ng với việc đ&atilde; từng xem qua mấy tiểu thuyết xuy&ecirc;n việt, Lục Thiếu Du khẳng định rằng m&igrave;nh đ&atilde; bị xuy&ecirc;n việt rồi. T&igrave;nh huống n&agrave;y tưởng chừng như kh&ocirc;ng c&oacute; thật, thậm ch&iacute; trong trăm triệu ho&agrave;n cảnh cũng chưa chắc t&igrave;m được một, vậy m&agrave; lại xảy ra tr&ecirc;n người hắn.</p>', 0),
(9, 15, 'CHƯƠNG 1: TÔI KHÔNG HỐI HẬN', 'chuong-1-toi-khong-hoi-han', '<p>CHƯƠNG 1: T&Ocirc;I KH&Ocirc;NG HỐI HẬN Độ ấm từ sau lưng chậm r&atilde;i v&acirc;y quanh, h&ocirc; hấp n&oacute;ng bỏng ở b&ecirc;n tai: &ldquo;Sợ kh&ocirc;ng?&rdquo;<br />\r\n<br />\r\nHơi thở xa lạ quanh quẩn b&ecirc;n tai khiển người ta lạnh lẽo đến kh&ocirc;ng d&aacute;m l&ecirc;n tiếng.<br />\r\n<br />\r\nL&acirc;m Tử Lạp như cảm gi&aacute;c được người đ&agrave;n &ocirc;ng hơi khựng lại, sau đ&oacute; lại vang l&ecirc;n giọng n&oacute;i của anh: &ldquo;B&acirc;y giờ hối hận vẫn c&ograve;n kịp.&rdquo;<br />\r\n<br />\r\nC&ocirc; căng thẳng siết chặt hai tay, lắc đầu: &ldquo;T&ocirc;i kh&ocirc;ng hổi hận&hellip;&rdquo; C&ocirc; đang ở trong thời kỳ xinh đẹp nhất, nhưng&hellip;<br />\r\n&nbsp;</p>', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id` int(10) UNSIGNED NOT NULL,
  `tentheloai` varchar(255) NOT NULL,
  `slug_theloai` varchar(255) NOT NULL,
  `kichhoat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `tentheloai`, `slug_theloai`, `kichhoat`) VALUES
(12, 'Tiên hiệp', 'tien-hiep', 0),
(13, 'Trọng sinh', 'trong-sinh', 0),
(14, 'Xuyên không', 'xuyen-khong', 0),
(15, 'Ngôn tình', 'ngon-tinh', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen`
--

CREATE TABLE `truyen` (
  `id` int(10) UNSIGNED NOT NULL,
  `tentruyen` varchar(255) NOT NULL,
  `tukhoa` varchar(255) NOT NULL,
  `tacgia` varchar(255) NOT NULL,
  `slug_tacgia` varchar(255) NOT NULL,
  `theloai_id` int(11) UNSIGNED NOT NULL,
  `tomtat` text NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `slug_truyen` varchar(255) NOT NULL,
  `kichhoat` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `truyen`
--

INSERT INTO `truyen` (`id`, `tentruyen`, `tukhoa`, `tacgia`, `slug_tacgia`, `theloai_id`, `tomtat`, `hinhanh`, `slug_truyen`, `kichhoat`, `luotxem`, `created_at`, `updated_at`) VALUES
(7, 'ĐẤU LA ĐẠI LỤC', 'đấu la đại lục, dau la dai luc', 'Đường Gia Tam Thiếu', 'duong-gia-tam-thieu', 12, 'Một đại lục không hề yên bình, một cuộc sống đầy hiểm nguy, phiêu lưu nhưng cũng không kém phần lãng mạn. tình yêu, thù hận, trách nhiệm… Tiếp bước những tiền bối đi trước, Hoắc Vũ Hạo và đời sau sử lai khắc thất quái, bằng niềm tin nhiệt huyết tuổi trẻ đã gây dựng lại đường môn tái lập những huy hoàng xưa kia của các tiền bối đi trước…\r\nKiếp trước là thiên tài sau khi chế tạo ám khí cao nhất của đường môn: Phật Nộ Liên Hoa. Xuyên việt mang theo võ công cùng với ám khí Đường Môn đến thế giới không có võ công cùng ám khí siêu đẳng như thế, chuyện gì sẽ xảy ra tiếp theo? Hãy cùng nhau theo dõi Đấu La Đại Lục để biết rõ bạn nhé.', 'dau-la-dai-luc-23042045.jpg', 'dau-la-dai-luc', 0, 11, NULL, '2023-05-07 19:19:15'),
(8, '[ĐẤU LA ĐẠI LỤC 5] TRÙNG SINH ĐƯỜNG TAM', 'đấu la đại lục 5 , dau la dai luc 5', 'Đường Gia Tam Thiếu', 'duong-gia-tam-thieu', 12, 'Trong vũ trụ bao la rộng lớn, một quang điểm nho nhỏ lướt qua.\r\n\r\nĐó là một quang điểm căn bản không làm cho người khác chú ý, dường như là thật lại giống như hư vô.\r\n\r\nChỉ là bên trong quang điểm đó có ý thức tồn tại, hay nói chính xác là thần thức.\r\n\r\nBởi vì chỉ có thần thức mới có thể phiêu du trong vũ trụ mà không biến mất. Thậm chí, nó còn đang đuổi theo một hướng để tìm kiếm.\r\n\r\nThời khắc khi thê tử chết đi, thần thức dật tán, chỉ có chuyển thế trùng sinh, mới có khả năng tái nhập nhân gian.\r\n\r\nTrên thế giới này không có cái gì hoàn toàn chắc chắn, coi như hắn là Thần Vương, có thể nghịch chuyển thời gian nhưng cũng không thể nghịch chuyển hết thảy.\r\n\r\nHắn không có lựa chọn khác, hắn chỉ có thể lựa chọn đi tìm nàng. Dù là bỏ đi vài vạn năm tu vi, bỏ đi thân phận một đời Thần Vương.\r\n\r\nBởi vì là, không có điều gì có thể so với nàng. Nàng không có ở đây, coi như là Vũ Trụ chi vương thì như thế nào? Không có nàng, hết thảy đều không có ý nghĩa.\r\n\r\nHắn biết rõ mình chọn tự tử, chỉ lưu lại một điểm thần thức để đi tìm kiếm thê tử. Hắn tin tưởng, mình nhất định có thể tìm được thế giới mà nàng chuyển thế trùng sinh.\r\n\r\nTrong đầu không ngừng hiện ra những kỉ niệm, từ lần đầu tiên bọn họ gặp mặt, đến thời khắc cuối cùng nàng rời đi.\r\n\r\nTất cả đều là khắc cốt ghi tâm, dù là vạn năm qua đi cũng không thể phai mờ.\r\n\r\nTiểu Vũ, chờ ta!\r\n\r\nTa đến rồi.', 'daula547.jpg', '[dau-la-dai-luc-5]-trung-sinh-duong-tam', 0, 3, NULL, NULL),
(9, 'VÌ EM LÀ DUY NHẤT! NÊN NHẤT ĐỊNH PHẢI LÀ EM', 'vì em là duy nhất, vi em la duy nhat', 'Rick bn', 'rick-bn', 15, '“ Hạ Bắc Sâm! anh đừng thách em chúng ta ngay từ đầu chỉ là bản hôn nhân hợp đồng vốn dĩ không liên quan gì nhau cả ” Doãn Từ Ân cầm chiếc nhẫn cưới trên tay ném thẳng vào người anh một cái mạnh, chiếc nhẫn rơi xuống nền nhà kêu leng keng.\r\n\r\nHạ Bắc Sâm trợn tròn mắt không giữ được bình tĩnh, anh bóp chặt lấy cằm của cô hét lớn.“ Em nói lại xem? Doãn Từ Ân em nói lại một lần nữa xem ”', 'vi-em-la-duy-nhat-nen-nhat-dinh-phai-la-em92.jpg', 'vi-em-la-duy-nhat-nen-nhat-dinh-phai-la-em', 1, 10, NULL, NULL),
(10, 'KHI HOÀNG ĐẾ XUYÊN TỚI: CÔ DÂU THỨ CHÍN CỦA TỊCH GIA!', 'khi hoàng đế xuyên không, khi hoang de xuyen khong', 'Nguyệt Y Y', 'nguyet-y-y', 14, 'Nàng là Hoàng Đế nữ giả nam, tên Tử Sở Tuyên, tay dính đầy máu bước lên hoàng vị\r\n\r\nCô là Minh Nhạc Y, một cô con gái nuôi trong một gia đình sắp bị phá sản, bị cha mẹ nuôi bán cho Tịch Gia làm thiếu phu nhân, tính cách yếu đuối\r\n\r\nHai con người, hai tính cách, hai số phận. Vị Hoàng Đế trên vạn người khi trở thành một thiếu nữ chân yếu tay mềm sẽ có bao nhiêu chuyện xảy ra?', 'khi-hoang-de-xuyen-toi-co-dau-thu-chin-cua-tich-gia2.jpg', 'khi-hoang-de-xuyen-toi-co-dau-thu-chin-cua-tich-gia', 0, 21, NULL, '2023-05-04 02:28:35'),
(11, 'Y TIÊN - VÂN MẠC', 'y tiên, y tien', 'Một miếng ngói xanh', 'mot-mieng-ngoi-xanh', 15, 'Vân Mạc tuy không thể tu hành, nhưng vẫn bồi dưỡng ra một Thần đế chiến lực phi phàm, vậy mà lại bị chính đồ đệ Thần đế của mình cướp đi đan Tái Thế, khiến hắn không thể tiếp tục trường sinh. Mở mắt, Vân Mạc phát hiện mình không những trùng sinh, mà còn có cơ địa tu luyện. Kiếp này, hắn quyết trấn áp nghiệt đồ, phá tan mọi gông cuồng xiềng xích, đứng sừng sững trên đỉnh võ đạo!', 'y-tien-van-mac77.jpg', 'y-tien-van-mac', 0, 30, NULL, NULL),
(12, 'ĐẤU PHÁ THƯƠNG KHUNG', 'dau pha thuong khung, đấu phá thương khung', 'Thiên Tàm Thổ Đậu', 'thien-tam-to-dau', 12, '- Đấu Phá Thương Khung là một câu chuyện huyền huyễn đặc sắc kể về Tiêu Viêm, một thiên chi kiêu tử với thiên phú tu luyện mà ai ai cũng hâm mộ, bỗng một ngày người mẹ mất đi đễ lại di vật là một chiếc giới chỉ màu đen nhưng từ khi đó Tiêu Viêm đã mất đi thiên phú tu luyện của mình.\r\n\r\n- Từ thiên tài rớt xuống làm phế vật trong 3 năm, rồi bị vị hôn thê thẳng thừng từ hôn, làm dấy lên ý chí nam nhi của mình, Tiêu Viêm nhờ di vật của mẫu thân để lại là 1 chiếc hắc giới chỉ (nhẫn màu đen)Tiêu Viêm gặp được hồn của Dược Lão (Dược Trần – Dược tôn giả) 1 đại luyện dược tông sư của đấu khí đại lục…\r\n\r\n- Từ đó cuộc đời của Tiêu Viêm có những biến hóa gì? Gặp được các đại ngộ gì? Thân phận thật sự của Huân Nhi (thanh mai trúc mã lúc nhỏ của Tiêu Viêm) ra sao? Bí mật của gia tộc hắn là gì? Cùng theo dõi bộ truyện Đấu Phá Thương Khung để có thể giải đáp các thắc mắc này các bạn nhé!', 'truyen-dau-pha-thuong-khung22.jpg', 'dau-pha-thuong-khung', 0, 58, NULL, '2023-05-04 07:04:36'),
(13, 'THÔN PHỆ TINH KHÔNG', 'la phong, thon phe tinh khong, thôn phệ tinh không', 'Ngã Cật Tây Hồng Thị', 'nga-cat-tay-hong-thi', 14, 'Đây là 1 bộ truyện mới của cà chua thuộc thể loại Khoa Ảo mới mẻ. Nhân vật chính là La Phong luôn muốn cố gắng trở thành 1 võ giả trong thế giới hiện đại tương lai đầy lạ lẫm, loại người đứng trước nguy cơ quái thú. Mở đầu câu chuyện rất hấp dẫn lôi cuốn, qua từng câu văn người đọc sẽ tự nhận biết được bối cảnh của câu chuyện.Nỗ lực, khát khao, có tình có nghĩa, lối hành văn vững chắc sẽ làm bạn nếu đã đọc liền k thể rời mắt, vẫn là cà chua, hãy theo La Phong của chúng ta khám phá ra thế giới vô tận trong vũ trụ tinh không nhé', 'thon-phe-tinh-khong10.jpg', 'thon-phe-tinh-khong', 0, 212, NULL, '2023-05-13 19:08:19'),
(14, 'THẦN ĐẠO ĐAN TÔN', 'than dao dan ton, thần đạo đan tôn', 'Cô Đơn Địa Phi', 'co-don-dia-phi', 12, 'Lăng Hàn - Một Đan Đế đại danh đỉnh định mang trong thân mình tuyệt thế công pháp vì truy cầu bước cuối, xé bỏ tấm màn thành thần nhưng thất bại đã phải bỏ mình. Thế nhưng ông trời dường như không muốn tuyệt dường người, Lăng Hàn đã được trọng sinh vào một thiếu niên cùng tên và điều may mắn nhất là \"Bất Diệt Thiên Kinh\" ấn ký vẫn còn nằm nguyên trong tâm thức hắn.\r\n\r\nTừ nay về sau sóng gió cuộn trào nổi lên, Đan Đế ngày xưa bây giờ phải cùng tranh phong với vô số thiên tài trẻ tuổi, lại bắt đầu một truyền thuyết mới như để chứng minh với trời đất: Ta, là người mạnh nhất!\r\nPhân chia cảnh giới: Luyện Thể, Tụ Nguyên, Dũng Tuyền, Linh Hải, Thần Thai, Sinh Hoa, Linh Anh, Hóa Thần cùng Thiên Nhân Cảnh.....\r\nMỗi cảnh giới chia làm chín tầng: tầng một đến ba là tiền kỳ, tầng bốn đến sáu gọi là trung kỳ và tầng bảy đến chín gọi là hậu kỳ và đỉnh\r\nCảnh giới Đan Sư: Hoàng cấp,Huyền cấp, Địa cấp, Thiên cấp...\r\nThần Cảnh: Nhật Nguyệt Cảnh, Sơn Hà Cảnh, Tinh Thần Cảnh, Hằng Hà Cảnh, Sáng Thế Cảnh\r\nMỗi cảnh giới chia làm: Tiểu Cực Vị, Trung Cực Vị, Đại Cực Vi, Đại Viên Mãn trong một Cực Vị lại chia làm: Tiền kỳ, Trung kỳ, Hậu kỳ, Viên mãn\r\nCảnh giới Tiên Vực:Trảm Trần Cảnh (Nhất Trảm-Nhị Trảm-Tam Trảm-Tứ Trảm-Ngũ Trảm),Phân Hồn Cảnh (Dương Hồn-Âm Hồn-Thiên Hồn-Địa Hồn), Tiên Phủ Cảnh, Thăng Nguyên Cảnh, Tiên Vương có 9 tầng từ 1 đến 9, bên trên Tiên Vương là Thiên Tôn\r\nCảnh giới Đan Sư ở Tiên Vực: Nhất Tinh, Nhị Tinh, Tam Tinh, Tứ Tinh,Ngũ Tinh Đan Sư', 'than-dao-dan-ton-6060286.jpg', 'than-dao-dan-ton', 0, 102, NULL, '2023-05-13 19:08:13'),
(15, 'MÊ VỢ KHÔNG LỐI VỀ', 'mê vợ không lối về, me vo khong loi ve', 'Chiêu Tài Tiến Bảo', 'chieu-tai-tien-bao', 15, 'Một cuộc giao dịch, cô mang thai con của người lạ, mang bụng bầu gả cho người đàn ông đã đính ước từ nhỏ. Vốn cho rằng chỉ là một cuộc giao dịch, lại dây dưa thứ tình cảm không nên có trong cuộc hôn nhân này. Mười tháng hoài thai sắp sinh, một tờ đơn ly hôn trên đất, cô mới hoàn toàn tình ngộ. Sau này anh ta nói \"Bà xã về đi, người anh yêu luôn là em\"', 'me-vo-khong-loi-ve-98289193.jpg', 'me-vo-khong-loi-ve', 0, 31, NULL, '2023-05-13 19:08:28'),
(16, 'LINH VŨ THIÊN HẠ', 'linh vũ thiên hạ, linh vu thien ha', 'Vũ Phong', 'vu-phong', 12, 'Nhóm dịch: Sói Già\r\nĐả tự: Bựa Thập Ngũ BLH\r\n\r\nLục Thiếu Du, linh hồn bị xuyên qua đến thế giới khác, nhập vào thân thể của một thiếu gia không có địa vị phải trải qua cuộc sống không khác gì nô bộc.\r\nThế giới này lấy Vũ vi cường, lấy Linh vi tôn, nghe đồn khi võ đạo đỉnh phong, linh đạo đạt đến cực hạn có thể phá toái hư không.\r\nLục Thiếu Du mang theo ký ức từ kiếp trước tái sinh, không cam lòng làm một thiếu gia chẳng khác gì củi mục.\r\n\r\nTrong thế giới xa lạ,\r\nSay - nằm trên gối mỹ nhân,\r\nTỉnh - nắm quyền thiên hạ.\r\nĐây mới là cuộc sống đáng mơ ước.\r\nLinh - Vũ song tu\r\nBá chủ kiêu hùng\r\nĐã đến, ta sẽ lưu lại một huyền thoại......\r\n\r\nHệ Thống Tu Luyện:\r\n\r\n- Vũ giả: Vũ khí, Vũ đồ, Vũ sĩ, Vũ sư, Vũ phách, Vũ tướng, Vũ suất, Vũ vương, Vũ tôn, Vũ đế.\r\n- Linh giả: Linh khí, Linh đồ, Linh sĩ, Linh sư, Linh phách, Linh tướng, Linh suất, Linh vương, Linh tôn, Linh đế.\r\n\r\nMỗi cấp được chia làm cửu trọng (chín tầng). Ngoài ra còn có Yêu thú, Linh thú các thể loại, chia làm nhất giai, nhị giai,... mỗi giai chia làm sơ kỳ, trung kỳ, hậu kỳ.\r\n\r\n- Công pháp: chia làm sáu loại, từ cao đến thấp: Thiên, Địa, Huyền, Hoàng, Tinh, Thần\r\n\r\nTất nhiên là vẫn tồn tại một số công pháp đặc biệt bí ẩn khác.\r\n\r\n- Ngũ hệ: Vũ giả, Vũ kỹ (công pháp cho vũ giả) được chia thành năm loại Mộc, Thủy, Hỏa, Thổ, Phong.', 'linh-vu-thien-ha27.jpg', 'linh-vu-thien-ha', 0, 42, NULL, '2023-05-13 19:07:55'),
(17, 'THẾ GIỚI HOÀN MỸ', 'the gioi hoan my, thế giới hoàn mỹ, thạch hạo', 'Thần Đông', 'than-dong', 12, 'Dịch giả: Ronkute, Yencute, Ryuken, kukhoai, bokinhvan, Kensin_Kaoru, Big Bang, Luciferht, Độc Nhân\r\n\r\nMột hạt bụi có thể lấp biển, một cọng cỏ chém hết mặt trời mặt trăng và ngôi sao, trong nháy mắt ở giữa long trời lỡ đất. Quần hùng cùng nổi lên, vạn tộc mọc lên san sát như rừng, chư thánh tranh bá, loạn khắp đất trời. Hỏi mặt đất bao la, cuộc đời thăng trầm? Một thiếu niên theo trong đất hoang đi ra, tất cả bắt đầu từ nơi này...', 'the-gioi-hoan-my79.jpg', 'the-gioi-hoan-my', 0, 31, NULL, '2023-05-13 19:08:58'),
(18, 'PHÀM NHÂN TU TIÊN', 'hàn lập, phàm nhân tu tiên, pham nhan tu tien', 'Vong Ngữ', 'vong-ngu', 12, '<p>Ph&agrave;m Nh&acirc;n Tu Ti&ecirc;n l&agrave; một c&acirc;u chuyện Ti&ecirc;n Hiệp kể về H&agrave;n Lập - Một người b&igrave;nh thường nhưng lại gặp v&ocirc; v&agrave;n cơ duy&ecirc;n để bước đi tr&ecirc;n con đường tu ti&ecirc;n, kh&ocirc;ng phải anh h&ugrave;ng - cũng chẳng phải tiểu nh&acirc;n, H&agrave;n Lập từng bước khẳng định m&igrave;nh... Liệu H&agrave;n Lập v&agrave; người y&ecirc;u c&oacute; thể c&ugrave;ng bước tr&ecirc;n con đường tu ti&ecirc;n v&agrave; c&oacute; một c&aacute;i kết ho&agrave;n mỹ? Những thử th&aacute;ch n&agrave;o đang chờ đợi bọn họ? - Truyện kết cấu kh&aacute; hợp l&yacute;, t&igrave;nh tiết kh&ocirc;ng qu&aacute; chậm, kh&ocirc;ng qu&aacute; nhanh, diễn tả kh&aacute; đặc biệt, lời văn tr&ocirc;i chảy, nh&acirc;n vật t&iacute;nh c&aacute;ch đặc th&ugrave;. Nh&acirc;n vật ch&iacute;nh, H&agrave;n Lập, mang hơi hướng kh&aacute; c&ocirc; độc. Bạn n&agrave;o th&iacute;ch đọc Tru Ti&ecirc;n hoặc Thương Thi&ecirc;n chắc sẽ th&iacute;ch Ph&agrave;m Nh&acirc;n Tu Ti&ecirc;n Truyện. Mời bạn đọc c&ugrave;ng thưởng thức v&agrave; d&otilde;i theo bước ch&acirc;n của H&agrave;n Lập!</p>', 'pham-nhan-tu-tien91.jpg', 'pham-nhan-tu-tien', 0, 110, NULL, '2023-05-16 09:01:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `is_admin`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'testuser1', NULL, 'testuser1@gmail.com', NULL, '$2y$10$cPivwUGtoJdUbs.oRI/HG.zoD0Gd/nxtFmz3qNQTXOLnest6mUHJ2', NULL, '2023-05-04 03:30:37', '2023-05-04 03:30:37'),
(5, 'admin', 1, 'admin@gmail.com', NULL, '$2y$10$oCH8G1zzWNVAl2PSFmMPD.zDc5jT7B3SBxj3ZrO3jfqOitR/o7wv2', NULL, '2023-05-04 03:31:46', '2023-05-04 08:51:03'),
(6, 'test1', NULL, 'test1@gmail.com', NULL, '$2y$10$vdKXI.CWDkNARp6ggZMht.yV.QZt1g3LU53nam94H28cEDZPRqOqC', NULL, '2023-05-04 07:12:18', '2023-05-04 08:51:25');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `chuong_id` (`chuong_id`);

--
-- Chỉ mục cho bảng `chuong`
--
ALTER TABLE `chuong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `truyen_id` (`truyen_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `truyen`
--
ALTER TABLE `truyen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`theloai_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `chuong`
--
ALTER TABLE `chuong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `truyen`
--
ALTER TABLE `truyen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chuong`
--
ALTER TABLE `chuong`
  ADD CONSTRAINT `chuong_ibfk_1` FOREIGN KEY (`truyen_id`) REFERENCES `truyen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `truyen`
--
ALTER TABLE `truyen`
  ADD CONSTRAINT `truyen_ibfk_1` FOREIGN KEY (`theloai_id`) REFERENCES `theloai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
