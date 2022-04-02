CREATE DATABASE  IF NOT EXISTS `vietproshop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `vietproshop`;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vietproshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blsanpham`
--

CREATE TABLE `blsanpham` (
  `id_bl` int(10) NOT NULL,
  `id_sp` int(10) NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dien_thoai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `binh_luan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_gio` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dmsanpham`
--

CREATE TABLE `dmsanpham` (
  `id_dm` int(10) NOT NULL,
  `ten_dm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dmsanpham`
--

INSERT INTO `dmsanpham` (`id_dm`, `ten_dm`) VALUES
(1, 'iPhone'),
(2, 'Samsung'),
(3, 'Sony Ericson'),
(4, 'LG'),
(5, 'HTC'),
(6, 'Nokia'),
(7, 'Blackberry'),
(8, 'Asus'),
(9, 'Lenovo'),
(10, 'Motorola'),
(11, 'Mobiado'),
(12, 'Vertu'),
(13, 'QMobile'),
(14, 'OPPO'),
(15, 'Huawei');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` int(11) UNSIGNED NOT NULL,
  `id_dm` int(11) UNSIGNED NOT NULL,
  `ten_sp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh_sp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_sp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bao_hanh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phu_kien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh_trang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `khuyen_mai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trang_thai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dac_biet` int(1) NOT NULL,
  `chi_tiet_sp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `id_dm`, `ten_sp`, `anh_sp`, `gia_sp`, `bao_hanh`, `phu_kien`, `tinh_trang`, `khuyen_mai`, `trang_thai`, `dac_biet`, `chi_tiet_sp`) VALUES
(1, 1, 'iPhone 3GS 32G Màu Đen', 'IPhone-3GS-32G-Mau-Den.jpg', '1500000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 80%', 'Dán màn hình 3 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(2, 1, 'iPhone 4 16G Quốc Tế Trắng', 'iPhone-4-16G-Quoc-Te-Trang.jpg', '2000000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 80%', 'Dán màn hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(3, 1, 'iPhone 5 16 GB Quốc Tế Đen', 'iPhone-5-16GB-Quoc-Te-Den.jpg', '2300000', '12 tháng', 'Hộp, sách, sạc, tai nghe', 'Máy mới 80%', 'Dán màn hình 3 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(4, 1, 'iPhone 5C 16GB Blue', 'iPhone-5C-16GB-Blue.jpg', '2200000', '12 tháng', 'Hộp, sách, sạc, tai nghe', 'Máy mới 80%', 'Dán màn hình 3 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(5, 1, 'iPhone 5S 32GB Quốc tế', 'iPhone-5S-32GB-Quoc-te-Mau-Trang.jpg', '2500000', '12 tháng', 'Hộp, cáp, sạc, tai nghe', 'Máy mới 100%', 'Dán màn hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(6, 2, 'Samsung Galaxy Note N7000 pink', 'Sam-Galaxy-Note-N7000-pink.jpg', '2500000', '12 tháng', 'Hộp, cáp, sạc, tai nghe', 'Máy mới 90%', 'Dán màn hình 3 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(7, 2, 'Samsung Galaxy Note 2 đen', 'samsung-galaxy-note-2-den.jpg', '2200000', '12 tháng', 'Hộp, cáp, sạc, tai nghe', 'Máy mới 90%', 'Dán màn hình 3 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(8, 2, 'Samsung Galaxy Note 3', 'samsung-galaxy-note-3.jpg', '2500000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 80%', 'Dán màn hình 3 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(9, 2, 'Samsung Galaxy S2', 'samsung-galaxy-s2.jpg', '3000000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 90%', 'Dán màn hình 3 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(10, 2, 'Samsung Galaxy S3', 'samsung-galaxy-s3.jpg', '3500000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán màn hình 3 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(11, 2, 'Samsung Galaxy S4', 'samsung-galaxy-s4-galaxy.jpg', '4000000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán màn hình 4 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(12, 3, 'Sony Arc S (LT18i) Trắng', 'Sony-arc-S-LT18i-Trang.jpg', '4500000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 90%', 'Dán màn hình 4 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(13, 3, 'Sony Arc S', 'Sony-Arc-S.jpg', '5000000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 99%', 'Dán màn hình 3 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(14, 3, 'Sony X10', 'sony-x10.jpg', '5500000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 90%', 'Dán màn hình 4 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(15, 3, 'Sony Xperia TX (LT29i) Đen', 'Sony-Xperia-TX-LT29i-Den.jpg', '6000000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 90%', 'Dán màn hình 3 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(16, 3, 'Sony Xperia Z Màu Đen', 'Sony-Xperia-Z-Mau-Den.jpg', '6500000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 90%', 'Dán màn hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(17, 4, 'LG F160 Optimus LTE 2', 'LG-F160-Optimus-LTE-2.jpg', '7000000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán màn hình 5 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(18, 4, 'LG LTE 3 (LG F260)', 'LG-LTE-3-LG F260.jpg', '7000000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 99%', 'Dán màn hình 4 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(19, 4, 'LG Optimus 2X SU660', 'LG-optimus-2x-SU660.jpg', '7500000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán màn hình 4 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(20, 4, 'LG Optimus 3D SU760', 'LG-Optimus-3D-SU760.jpg', '8000000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán màn hình 3 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(21, 4, 'LG Optimus G', 'LG-Optimus-G.jpg', '8500000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán màn hình 5 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(22, 4, 'LG Optimus L7 (LG P705)', 'LG-Optimus-L7LG P705.jpg', '8500000', '24 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 99%', 'Dán màn hình 5 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(23, 5, 'HTC EVO 3D', 'HTC-EVO-3D.jpg', '8500000', '18 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán màn hình, sạc dự phòng', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(24, 5, 'HTC One Đen 16GB công ty FPT', 'HTC-One-Den-16GB-cong-ty-FPT.jpg', '9000000', '24 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán màn hình 3 lớp, sạc dự phòng', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(25, 5, 'HTC One Trắng 16 GB FPT', 'HTC-One-Trang-16GB-cong-ty-FPT.jpg', '10000000', '24 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán màn hình, sạc dự phòng', 'Còn hàng', 1, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(26, 5, 'HTC U11', 'HTC-U11.jpg', '11000000', '24 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Tai nghe blutooth, sạc dự phòng', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(27, 5, 'HTC U12 life', 'HTC-U12-life.jpg', '12000000', '24 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'dán màn hình, tai nghe blutooth, sạc dự phòng', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(28, 7, 'Blackberry-Bold-9700', 'BlackBerry-Bold-9700.jpg', '10000000', '24 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Sạc dự phòng, tai nghe blutooth', 'Còn hàng', 1, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(29, 7, 'BlackBerry-Curve-3G-9300', 'BlackBerry-Curve-3G-9300.jpg', '15000000', '24 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Tai nghe bluetooth, sạc dự phòng', 'Còn hàng', 1, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(30, 6, 'Nokia 8800 Sirocco Gold', 'Nokia-8800-Sirocco-Gold.jpg', '3300000', '12 tháng', 'Hộp,sách, sạc, cáp, tai nghe', 'Máy mới 80%', 'Dán màn hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(31, 6, 'Lumia 800 Black', 'lumia-800-den.jpg', '2300000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 80%', 'Dán màn hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(32, 8, 'Asus ROG Phone 5', 'Asus-ROG-Phone-5.jpg', '15000000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán màn hình 5 lớp, sạc dự phòng', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(33, 9, 'Lenovo Legion Duel', 'Lenovo-Legion-Duel.jpg', '18000000', '24 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán màn hình 4 lớp, sạc dự phòng', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(34, 10, 'Motorola Moto G100', 'Motorola-Moto-G100.jpg', '12000000', '24 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán màn hình, sạc dự phòng', 'Còn hàng', 1, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(35, 12, 'Vertu Signature S Gold', 'Vertu Signature S Gold.jpg', '1500000000', '5 năm', 'Hộp, sách, sạc, cáp, tai nghe, giấy chứng nhận', 'Máy mới 100%', 'Bao da, sạc dự phòng, thẻ khách vip', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(36, 13, 'Q Mobile S10', 'Q Mobile S10.jpg', '3500000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán màn hình 3 lớp', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(37, 14, 'Oppo A15s', 'Oppo A15s.jpg', '4500000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán màn hình, sạc dự phòng', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(38, 15, 'Huawei Nova 7i', 'Huawei Nova 7i.jpg', '6500000', '12 tháng ', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100% ', 'Dán màn hình, sạc dự phòng', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(39, 15, 'Huawei P30 Life', 'Huawei P30 Life.jpg', '7000000', '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán màn hình, sạc dự phòng', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(40, 11, 'Mobiado Pro 3 GCB Gold', 'Mobiado Pro 3 GCB Gold.jpg', '500000000', '5 năm', 'Hộp, sách, sạc, cáp, tai nghe, giấy chứng nhận sản phẩm', 'Máy mới 100%', 'Sạc dự phòng, Thẻ khách hàng vip', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!'),
(41, 11, 'Mobiado Forma Gold', 'Mobiado Forma Gold.jpg', '450000000', '5 năm', 'Hộp, sách, sạc, cáp, tai nghe, giấy chứng nhận sản phẩm', 'Máy mới 100%', 'Sạc dự phòng, Thẻ khách hàng vip', 'Còn hàng', 0, 'Tất cả các sản phẩm của vietproshop đều đã được kiểm chứng nên chỉ cần xem hình không cần phải xem kĩ!!!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `id_thanhvien` int(10) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen_truy_cap` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`id_thanhvien`, `email`, `mat_khau`, `quyen_truy_cap`) VALUES
(1, '1813766@dlu.edu.vn', '1813766', 2),
(2, '1812864@dlu.edu.vn', '1812864', 2),
(3, '1812727@dlu.edu.vn', '1812727', 2),
(4, 'Customer01@gmail.com', 'Customer01', 1),
(5, 'ahihi@gmail.com', 'ahihi', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blsanpham`
--
ALTER TABLE `blsanpham`
  ADD PRIMARY KEY (`id_bl`);

--
-- Chỉ mục cho bảng `dmsanpham`
--
ALTER TABLE `dmsanpham`
  ADD PRIMARY KEY (`id_dm`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id_thanhvien`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blsanpham`
--
ALTER TABLE `blsanpham`
  MODIFY `id_bl` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dmsanpham`
--
ALTER TABLE `dmsanpham`
  MODIFY `id_dm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
