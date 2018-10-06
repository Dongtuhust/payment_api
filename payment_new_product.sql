-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 06, 2018 lúc 08:14 PM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `payment_new_product`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_customer`
--

CREATE TABLE `orders_customer` (
  `order_id` int(10) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_add` varchar(50) NOT NULL,
  `customer_phone` int(10) NOT NULL,
  `total_money` int(10) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payment` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `receive_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders_customer`
--

INSERT INTO `orders_customer` (`order_id`, `customer_name`, `customer_add`, `customer_phone`, `total_money`, `order_date`, `payment`, `gender`, `note`, `status`, `receive_date`) VALUES
(55718, 'Nguyễn VĂn A', 'Hàng Trống', 14546463, 3800000, '2018-05-02 10:13:34', 'ATM', 'Nữ', 'piipas ád', 'Bị hủy', NULL),
(185807, 'Việt Tiệp', 'Timecity ', 15656654, 3750000, '2018-05-10 16:29:35', 'COD', 'Nam', 'Giao hàng sau giờ hành chính', 'Đang chờ', NULL),
(218292, 'Nguyễn Văn Thanh', '123 Giải Phóng Hà Nội', 1546549876, 5600000, '2018-05-01 12:34:27', 'COD', 'Nam', 'aqwuoieupoq kf', 'Bị hủy', NULL),
(342849, 'Nguyễn Đông Tư', '29 Khương Hạ', 169696969, 2100000, '2018-05-10 14:30:24', 'COD', 'Nam', 'Giao hàng từ 17h đến 20h hằng ngày', 'Đang chờ', NULL),
(390582, 'Nguyễn Hà Đông', '25 Trần Phú Hà Nội', 1684527896, 6550000, '2018-05-15 02:22:32', 'ATM', 'Nam', 'giao hàng sau 17h', 'Đang chờ', NULL),
(444284, 'Lưu Văn Vũ', 'kim ngu, hai ba trung', 1649361661, 2500000, '2018-05-11 01:50:43', 'COD', 'Nam', 'Giao T2 -> T6', 'Đang chờ', NULL),
(451718, 'Lưu Văn Vũ', '465 Thái Hà', 2147483647, 3150000, '2018-05-01 13:45:00', 'COD', 'Nam', 'asdsa gdsfgsdaf', 'Bị hủy', NULL),
(558525, 'SAD', 'saD', 2147483647, 3300000, '2018-05-03 02:51:50', 'COD', 'Nam', 'ÁDASD', 'Đã giao', NULL),
(601155, 'Nguyễn Văn Thiện', '134 Hai Bà Trưng', 1468796663, 1500000, '2018-05-01 12:31:32', 'COD', 'Nam', '', 'Đã giao', NULL),
(673970, 'Dương Văn Huy', '465 Tôn Thất Tùng Hà nôi', 2147483647, 5500000, '2018-05-02 10:07:40', 'ATM', 'Nam', 'E a;skd; ac sfgaa', 'Đã giao', NULL),
(682660, 'Nguyễn Thị Thiết', '23 Minh Khai Hà nôi', 2147483647, 2100000, '2018-05-10 10:23:38', 'ATM', 'Nữ', 'Giao hàng vào lúc 17h->20h hằng ngày', 'Đang chờ', NULL),
(841070, 'Nguyễn Huy Hàng ', '13 Trần Phú', 1646498, 11100000, '2018-05-01 12:16:53', 'COD', 'Nam', 'Giao hàng trong 3 ngày', 'Đã giao', NULL),
(874693, 'Nguyễn Đông Tư', '21 Thái Hà Hà nôik', 1656598654, 7200000, '2018-05-03 03:33:37', 'ATM', 'Nam', 'Giao hàng sau giờ hành chính', 'Đã giao', NULL),
(993369, 'Trần Thị Thảo', '25 Trương Định', 656512, 1300000, '2018-05-07 02:49:07', 'ATM', 'Nữ', '', 'Đã giao', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_list_products`
--

CREATE TABLE `orders_list_products` (
  `orders_id` int(10) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `quantity` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `orders_customer`
--
ALTER TABLE `orders_customer`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `orders_list_products`
--
ALTER TABLE `orders_list_products`
  ADD KEY `orders_id` (`orders_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `orders_customer`
--
ALTER TABLE `orders_customer`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=993370;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders_list_products`
--
ALTER TABLE `orders_list_products`
  ADD CONSTRAINT `orders_list_products_ibfk_1` FOREIGN KEY (`orders_id`) REFERENCES `orders_customer` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
