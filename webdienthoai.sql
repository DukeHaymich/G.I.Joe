SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
--
-- Cơ sở dữ liệu: `webdienthoai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Thêm dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Vsmart'),
(2, 'IPHONE'),
(3, 'SAMSUNG'),
(102, 'Xiaomi'),
(104, 'Oppo'),
(105, 'Nokia'),
(106, 'Realme'),
(107, 'Vivo');

--
-- Cấu trúc bảng cho bảng `galery`
--

CREATE TABLE `galery` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Thêm cho bảng `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `price`, `discount`, `thumbnail`, `description`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 2, 'iPhone 12 Pro Max', 30900000, 32990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/i/p/iphone-12-pro-max_3__7.jpg', '', '2021-10-22 07:46:26', '2021-10-22 07:46:26', 0),
(2, 2, 'iPhone 13 Pro | Chính hãng VN/A', 30990000, NULL, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_13-_pro-5.jpg', NULL, '2021-10-22 12:57:16', '2021-10-22 12:57:16', 0),
(3, 2, 'iPhone 11 128GB', 19000000, 19900000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/l/a/layer_21_1.jpg', '', '2021-10-22 12:57:16', '2021-10-22 12:57:16', 0),
(4, 2, 'iPhone 12 Pro', 28000000, 30990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/i/p/iphone-12-pro-max_2_.jpg', '', '2021-10-22 12:58:32', '2021-10-22 12:58:32', 0),
(5, 3, 'Samsung Galaxy Note 20 Ultra 5G', 21500000, 32990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/b/l/black_final_1.jpg', NULL, '2021-10-22 10:10:44', '2021-10-22 10:10:44', 0),
(6, 3, 'Samsung Galaxy Z Flip3 5G', 23990000, 24990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/8/0/800x800_flip_3_cream.png', NULL, '2021-10-22 10:10:44', '2021-10-22 10:10:44', 0),
(7, 3, 'Samsung Galaxy S21 Ultra 5G', 25000000, 30990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/6/3/637462630853935725_ss-s21-ultra-den-1_1.jpg', NULL, '2021-10-22 10:12:40', '2021-10-22 10:12:40', 0),
(8, 3, 'Samsung Galaxy A72', 10100000, 11490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/s/a/samsung-galaxy-a72-29.jpg', NULL, '2021-10-22 10:12:40', '2021-10-22 10:12:40', 0),
(10, 3, 'Samsung Galaxy S20 FE 256GB (Fan Edition)', 12250000, 15490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-galaxy-20-fe_4_.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(11, 3, 'Samsung Galaxy Z Fold3 5G', 40990000, 41990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/s/m/sm-f926_zfold3_5g_openback_phantomsilver_210611.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(12, 3, 'Samsung Galaxy A52s 5G', 10000000, 10990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/u/k/uk-feature-setting-a-new-standard-for-stunning-design-496044035-1.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(13, 3, 'Samsung Galaxy A32', 6450000, 6690000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/s/a/samsung-galaxy-a32-1.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(14, 3, 'Samsung Galaxy A12', 4150000, 4290000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/s/a/samsung-galaxy-a12_3_.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(15, 3, 'Samsung Galaxy A22 4G', 5600000, 5890000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/a/2/a22-2.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(16, 3, 'Samsung Galaxy Note 20 Ultra', 19200000, 29990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/y/e/yellow_final.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(17, 3, 'Samsung Galaxy S21 Plus 5G', 20400000, 25990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/s/a/samsung-galaxy-s21-plus-2.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(18, 3, 'Samsung Galaxy Z Flip3 5G 256GB', 25990000, 26990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/8/0/800x800_flip_3_black_3.png', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(19, 3, 'Samsung Galaxy A52', 8750000, 9290000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/s/a/samsung-galaxy-a52-26.jpg', NULL, '2021-10-22 12:47:54', '2021-10-22 12:47:54', 0),
(20, 2, 'iPhone 13 | Chính hãng VN/A', 24990000, NULL, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/i/p/ip13-pro_2.jpg', NULL, '2021-10-22 12:58:32', '2021-10-22 12:58:32', 0),
(21, 2, 'iPhone 13 Pro Max | Chính hãng VN/A', 33990000, NULL, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_13-_pro-5_4.jpg', NULL, '2021-10-22 12:58:32', '2021-10-22 12:58:32', 0),
(22, 2, 'iPhone 11 I Chính hãng VN/A', 16900000, 18000000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/l/a/layer_20.jpg', NULL, '2021-10-22 12:58:32', '2021-10-22 12:58:32', 0),
(28, 1, 'Vsmart Star 5', 2690000, 0, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/v/s/vsmart-star-5-3_3.jpg', 'Miễn phí 4G tốc độ cao 10GB/ Tháng trong 18 tháng - Công nghệ Vsim ảo đầu tiên\r\nCấu hình vượt trội, trải nghiệm mạnh mẽ - Chip Helio G35 8 nhân, RAM 3GB\r\nMàn hình siêu rộng, xem phim thả ga - Màn hình IPS LCD 6.528 inch, viền siêu mỏng\r\nSử dụng cả ngày dài - Pin 5000mAh, sạc nhanh 15W', '2021-10-25 11:30:19', '2021-10-25 11:30:19', 0),
(29, 1, 'Vsmart Joy 4', 3290000, 0, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/1000x/040ec09b1e35df139433887a97daa66f/v/s/vsmart-joy-4_2_.png', NULL, '2021-10-25 11:34:50', '2021-10-25 11:34:50', 0),
(30, 1, 'Vsmart Joy 4 4GB', 3590000, 0, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/v/s/vsmart-joy-4_2__2.png', NULL, '2021-10-25 11:34:50', '2021-10-25 11:34:50', 0),
(31, 1, 'Vsmart Live 4', 4290000, 0, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/v/s/vsmart-live-_4_2_.jpg', NULL, '2021-10-25 11:34:50', '2021-10-25 11:34:50', 0),
(32, 1, 'Vsmart Aris 6GB 64GB', 4490000, 5990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/1/1/11_2_1.png', NULL, '2021-10-25 11:34:50', '2021-10-25 11:34:50', 0),
(33, 1, 'Vsmart Aris Pro', 5490000, 8490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/1/1/11_2_2.png', NULL, '2021-10-25 11:38:36', '2021-10-25 11:38:36', 0),
(34, 102, 'Xiaomi Mi 11 Lite 5G', 8990000, 10490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-mi-11-lite-5g-2_10.png', NULL, '2021-10-25 11:40:29', '2021-10-25 11:40:29', 0),
(35, 102, 'Xiaomi Redmi Note 10 5G', 4950000, 5290000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/r/e/redmi-note-10-5g.jpg', NULL, '2021-10-25 11:40:29', '2021-10-25 11:40:29', 0),
(36, 102, 'Xiaomi Redmi 10 (4GB - 128GB)\r\n', 4290000, 0, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/0/0/004_2.jpg', NULL, '2021-10-25 11:40:29', '2021-10-25 11:40:29', 0),
(37, 102, 'Xiaomi Redmi Note 10 Pro 8GB', 7300000, 7490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-note-10-pro_2_.png', NULL, '2021-10-25 11:40:29', '2021-10-25 11:40:29', 0),
(38, 102, 'Xiaomi Redmi 10 (4GB - 64GB)', 3990000, 0, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/0/0/001.jpg', NULL, '2021-10-25 11:40:29', '2021-10-25 11:40:29', 0),
(39, 102, 'Xiaomi Redmi Note 10', 5100000, 5490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-note-10_1.jpg', NULL, '2021-10-25 11:40:29', '2021-10-25 11:40:29', 0),
(40, 104, 'OPPO Reno6 5G', 12490000, 12990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/r/e/reno6-1_1.jpg', '', NULL, NULL, 0),
(41, 104, 'Oppo Reno5', 7790000, 8690000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/o/p/oppo-reno-5_2__1_1.jpg', '', NULL, NULL, 0),
(42, 104, 'OPPO Reno6 Z 5G', 9190000, 9490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/o/p/oppo_reno6.jpg', '', NULL, NULL, 0),
(43, 104, 'Oppo A54', 4350000, 4690000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/o/p/oppo-a54-4g-blue-200x200.jpg', '', NULL, NULL, 0),
(44, 104, 'Oppo A73', 5190000, 5490000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/o/p/oppo-a73_1_.jpg', '', NULL, NULL, 0),
(45, 104, 'OPPO Find X3 Pro 5G', 21990000, 26990000, 'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/100x/9df78eab33525d08d6e5fb8d27136e95/o/p/oppo-find-x3-pro-5g-3_2.jpg', '', NULL, NULL, 0);

