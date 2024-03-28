-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2023 at 10:15 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `image_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`, `slug`, `status`, `image_url`) VALUES
(1, '2023-09-12 01:34:07', NULL, 'Kỹ năng sống', 'Ky-nang-song', 1, NULL),
(2, '2023-09-12 01:34:20', NULL, 'Tâm lý', 'Tam-ly', 1, NULL),
(3, '2023-09-12 02:57:01', NULL, 'Cơ khí', 'Co-khi', 1, NULL),
(4, '2023-09-12 02:57:01', NULL, 'Tin học', 'Tin-hoc', 1, NULL),
(5, '2023-09-12 02:57:01', NULL, 'Kiến trúc xây dựng', 'Kien-truc-xay-dung', 1, NULL),
(6, '2023-09-12 02:57:01', NULL, 'Ngôn tình', 'Ngon-tinh', 1, NULL),
(7, '2023-09-12 02:57:01', NULL, 'Trinh Thám', 'Trinh-tham', 1, NULL),
(8, '2023-09-12 02:57:01', NULL, 'Tiểu thuyết', 'Tieu-thuyet', 1, NULL),
(9, '2023-10-08 00:54:58', NULL, 'Kinh Tế', 'Kinh-te', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `the_comment` text NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `liked_products`
--

CREATE TABLE `liked_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `liked_products`
--

INSERT INTO `liked_products` (`id`, `created_at`, `updated_at`, `user_id`, `product_id`) VALUES
(4, NULL, NULL, 101, 102),
(5, NULL, NULL, 101, 103),
(6, NULL, NULL, 101, 101);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_06_26_113121_create_users_info_table', 1),
(4, '2023_06_26_113610_create_origins_table', 1),
(5, '2023_06_26_113611_create_publishers_table', 1),
(6, '2023_06_26_113612_create_products_table', 1),
(7, '2023_06_26_114149_create_categories_table', 1),
(8, '2023_06_26_114852_create_orders_table', 1),
(9, '2023_07_04_140333_create_products_in_categories_table', 1),
(10, '2023_07_05_113435_create_product_images_table', 1),
(11, '2023_07_05_114158_create_liked_products_table', 1),
(12, '2023_07_05_114221_create_products_in_carts_table', 1),
(13, '2023_07_05_114255_create_products_in_orders_table', 1),
(14, '2023_07_25_140110_create_rent_prices_table', 1),
(15, '2023_07_31_115422_create_reviews_table', 1),
(16, '2023_08_02_071315_create_failed_jobs_table', 1),
(17, '2023_10_12_200302_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total` double(8,2) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `total`, `user_id`) VALUES
(2, '2023-10-28 02:30:32', NULL, 200.00, 101),
(3, '2023-11-04 01:20:58', NULL, 42000.00, 101),
(4, '2023-11-04 01:21:05', NULL, 0.00, 101),
(5, '2023-11-04 01:29:48', NULL, 24000.00, 103),
(6, '2023-11-04 01:29:54', NULL, 0.00, 103),
(7, '2023-11-04 01:30:01', NULL, 0.00, 103),
(8, '2023-11-04 01:30:08', NULL, 0.00, 103),
(9, '2023-11-05 04:49:27', NULL, 502000.00, 101),
(10, '2023-11-05 05:41:50', NULL, 24000.00, 101),
(11, '2023-11-05 05:41:55', NULL, 0.00, 101),
(12, '2023-11-05 05:41:58', NULL, 0.00, 101),
(13, '2023-11-05 05:47:03', NULL, 18000.00, 101);

-- --------------------------------------------------------

--
-- Table structure for table `origins`
--

CREATE TABLE `origins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `origins`
--

INSERT INTO `origins` (`id`, `created_at`, `updated_at`, `name`, `status`, `slug`) VALUES
(1, '2023-09-12 01:34:56', '2023-10-29 14:20:41', 'Tuổi trẻ', 1, 'tuoi-tre'),
(2, '2023-09-12 01:34:56', NULL, 'Thanh Niên', 1, 'Thanh-nien'),
(3, '2023-09-12 01:34:56', NULL, 'Phụ Nữ', 1, 'Phu-nu'),
(4, '2023-09-12 01:34:56', NULL, 'Dân trí', 1, 'Dan-tri'),
(5, '2023-09-12 01:34:56', NULL, 'Đồng Nai', 1, 'Dong-nai'),
(6, '2023-09-12 01:34:56', NULL, 'NXB Văn Hóa - Văn Nghệ', 1, 'Van-hoa-van-nghe'),
(7, '2023-09-12 01:34:56', NULL, 'Thế Giới', 1, 'The-gioi'),
(8, '2023-09-12 01:34:56', NULL, 'Lao Động', 1, 'Lao-dong'),
(9, '2023-09-12 01:34:56', NULL, 'Giao thông vận tải', 1, 'Giao-thong-van-tai'),
(10, '2023-09-12 01:34:56', NULL, 'Đại Học Quốc Gia TPHCM', 1, 'Dai-hoc-quoc-gia-tphcm'),
(11, '2023-09-12 01:34:56', NULL, 'Xây dựng', 1, 'Xay-dung'),
(12, '2023-09-12 01:34:56', NULL, 'Mý Thuật', 1, 'My-thuat'),
(13, '2023-09-12 01:35:17', NULL, 'Tổng hợp TPHCM', 1, 'Tong-hop-tphcm');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `price` double(8,2) NOT NULL,
  `publisher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `origin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `publish_year` int(11) DEFAULT NULL,
  `book_layout` tinyint(4) DEFAULT NULL COMMENT '0:paperback; 1:hardcover',
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `thickness` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `number_of_pages` int(11) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `name`, `slug`, `description`, `short_description`, `status`, `price`, `publisher_id`, `origin_id`, `publish_year`, `book_layout`, `height`, `width`, `thickness`, `weight`, `number_of_pages`, `author`, `quantity`) VALUES
(101, '2023-10-30 17:35:38', NULL, 'Sách Cây Cam Ngọt Của Tôi', 'sach-cay-cam-ngot-cua-toi', '<p>Hãy làm quen với Zezé, cậu bé tinh nghịch siêu hạng đồng thời cũng đáng yêu bậc nhất, với ước mơ lớn lên trở thành nhà thơ cổ thắt nơ bướm. Chẳng phải ai cũng công nhận khoản “đáng yêu” kia đâu nhé. Bởi vì, ở cái xóm ngoại ô nghèo ấy, nỗi khắc khổ bủa vây đã che mờ mắt người ta trước trái tim thiện lương cùng trí tưởng tượng tuyệt vời của cậu bé con năm tuổi.</p><p>Có hề gì đâu bao nhiêu là hắt hủi, đánh mắng, vì Zezé đã có một người bạn đặc biệt để trút nỗi lòng: cây cam ngọt nơi vườn sau. Và cả một người bạn nữa, bằng xương bằng thịt, một ngày kia xuất hiện, cho cậu bé nhạy cảm khôn sớm biết thế nào là trìu mến, thế nào là nỗi đau, và mãi mãi thay đổi cuộc đời cậu.</p><p>Mở đầu bằng những thanh âm trong sáng và kết thúc lắng lại trong những nốt trầm hoài niệm, Cây cam ngọt của tôi khiến ta nhận ra vẻ đẹp thực sự của cuộc sống đến từ những điều giản dị như bông hoa trắng của cái cây sau nhà, và rằng cuộc đời thật khốn khổ nếu thiếu đi lòng yêu thương và niềm trắc ẩn. Cuốn sách kinh điển này bởi thế không ngừng khiến trái tim người đọc khắp thế giới thổn thức, kể từ khi ra mắt lần đầu năm 1968 tại Brazil.</p><p><strong>TÁC GIẢ:</strong></p><p>JOSÉ MAURO DE VASCONCELOS (1920-1984) là nhà văn người Brazil. Sinh ra trong một gia đình nghèo ở ngoại ô Rio de Janeiro, lớn lên ông phải làm đủ nghề để kiếm sống. Nhưng với tài kể chuyện thiên bẩm, trí nhớ phi thường, trí tưởng tượng tuyệt vời cùng vốn sống phong phú, José cảm thấy trong mình thôi thúc phải trở thành nhà văn nên đã bắt đầu sáng tác năm 22 tuổi. Tác phẩm nổi tiếng nhất của ông là tiểu thuyết mang màu sắc tự truyện Cây cam ngọt của tôi. Cuốn sách được đưa vào chương trình tiểu học của Brazil, được bán bản quyền cho hai mươi quốc gia và chuyển thể thành phim điện ảnh. Ngoài ra, José còn rất thành công trong vai trò diễn viên điện ảnh và biên kịch.</p><figure class=\"table\"><table><tbody><tr><td>Mã hàng</td><td>8935235228351</td></tr><tr><td>Tên Nhà Cung Cấp</td><td><a href=\"https://www.fahasa.com/nha-nam?fhs_campaign=ATTRIBUTE_PRODUCT\">Nhã Nam</a></td></tr><tr><td>Tác giả</td><td>José Mauro de Vasconcelos</td></tr><tr><td>Người Dịch</td><td>Nguyễn Bích Lan,&nbsp;Tô Yến Ly</td></tr><tr><td>NXB</td><td>NXB Hội Nhà Văn</td></tr><tr><td>Năm XB</td><td>2020</td></tr><tr><td>Trọng lượng (gr)</td><td>280</td></tr><tr><td>Kích Thước Bao Bì</td><td>20 x 14.5 cm</td></tr><tr><td>Số trang</td><td>244</td></tr><tr><td>Hình thức</td><td>Bìa Mềm</td></tr><tr><td>Sản phẩm hiển thị trong</td><td><ul><li><a href=\"https://www.fahasa.com/do-choi?fhs_campaign=INTERNAL_LINKING\">Đồ Chơi Cho Bé - Giá Cực Tốt</a></li><li><a href=\"https://www.fahasa.com/nha-nam?fhs_campaign=INTERNAL_LINKING\">Nhã Nam</a></li><li><a href=\"https://www.fahasa.com/vui-don-trung-thu?fhs_campaign=INTERNAL_LINKING\">RƯỚC DEAL LINH ĐÌNH VUI ĐÓN TRUNG THU</a></li></ul></td></tr><tr><td>Sản phẩm bán chạy nhất</td><td><a href=\"https://www.fahasa.com/sach-trong-nuoc/van-hoc-trong-nuoc/tieu-thuyet.html?order=num_orders_month\">Top 100 sản phẩm Tiểu thuyết bán chạy của tháng</a></td></tr><tr><td colspan=\"2\"><p>Giá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...</p><p>Chính sách khuyến mãi trên Fahasa.com không áp dụng cho Hệ thống Nhà sách Fahasa trên toàn quốc</p></td></tr></tbody></table></figure><p>“Vị chua chát của cái nghèo hòa trộn với vị ngọt ngào khi khám phá ra những điều khiến cuộc đời này đáng sống... một tác phẩm kinh điển của Brazil.” <strong>- Booklist</strong></p><p>“Một cách nhìn cuộc sống gần như hoàn chỉnh từ con mắt trẻ thơ… có sức mạnh sưởi ấm và làm tan nát cõi lòng, dù người đọc ở lứa tuổi nào.”<strong> - The National</strong></p><p>Hãy làm quen với Zezé, cậu bé tinh nghịch siêu hạng đồng thời cũng đáng yêu bậc nhất, với ước mơ lớn lên trở thành nhà thơ cổ thắt nơ bướm. Chẳng phải ai cũng công nhận khoản “đáng yêu” kia đâu nhé. Bởi vì, ở cái xóm ngoại ô nghèo ấy, nỗi khắc khổ bủa vây đã che mờ mắt người ta trước trái tim thiện lương cùng trí tưởng tượng tuyệt vời của cậu bé con năm tuổi.</p><p>Có hề gì đâu bao nhiêu là hắt hủi, đánh mắng, vì Zezé đã có một người bạn đặc biệt để trút nỗi lòng: cây cam ngọt nơi vườn sau. Và cả một người bạn nữa, bằng xương bằng thịt, một ngày kia xuất hiện, cho cậu bé nhạy cảm khôn sớm biết thế nào là trìu mến, thế nào là nỗi đau, và mãi mãi thay đổi cuộc đời cậu.</p><p>Mở đầu bằng những thanh âm trong sáng và kết thúc lắng lại trong những nốt trầm hoài niệm, Cây cam ngọt của tôi khiến ta nhận ra vẻ đẹp thực sự của cuộc sống đến từ những điều giản dị như bông hoa trắng của cái cây sau nhà, và rằng cuộc đời thật khốn khổ nếu thiếu đi lòng yêu thương và niềm trắc ẩn. Cuốn sách kinh điển này bởi thế không ngừng khiến trái tim người đọc khắp thế giới thổn thức, kể từ khi ra mắt lần đầu năm 1968 tại Brazil.</p>', '“Vị chua chát của cái nghèo hòa trộn với vị ngọt ngào khi khám phá ra những điều khiến cuộc đời này đáng sống... một tác phẩm kinh điển của Brazil.” - Booklist\r\n\r\n“Một cách nhìn cuộc sống gần như hoàn chỉnh từ con mắt trẻ thơ… có sức mạnh sưởi ấm và làm tan nát cõi lòng, dù người đọc ở lứa tuổi nào.” - The National', 1, 11000.00, 2, 1, 2020, 0, 20, 10, NULL, 400, 280, 'José Mauro de Vasconcelos', 10),
(102, '2023-10-30 17:39:28', NULL, 'Sách Muôn Kiếp Nhân Sinh', 'sach-muon-kiep-nhan-sinh', '<p><strong>Muôn Kiếp Nhân Sinh - Many Times, Many Lives</strong></p><p><i><strong>Giáo sư John Vũ – Nguyên Phong và những câu chuyện&nbsp;chưa từng có về tiền kiếp, khám phá luật Nhân quả, Luân hồi.</strong></i></p><p><i><strong>“Muôn kiếp nhân sinh”</strong></i> là tác phẩm do Giáo sư John Vũ - Nguyên Phong viết từ năm 2017 và hoàn tất đầu năm 2020 ghi lại những câu chuyện, trải nghiệm tiền kiếp kỳ lạ từ nhiều kiếp sống của người bạn tâm giao lâu năm, ông Thomas – một nhà kinh doanh tài chính nổi tiếng ở New York. Những câu chuyện chưa từng tiết lộ này sẽ giúp mọi người trên thế giới chiêm nghiệm, khám phá các quy luật về luật Nhân quả và Luân hồi của vũ trụ giữa lúc trái đất đang gặp nhiều tai ương, biến động, khủng hoảng từng ngày.</p><p><i><strong>“Muôn kiếp nhân sinh”</strong></i> là một bức tranh lớn với vô vàn mảnh ghép cuộc đời, là một cuốn phim đồ sộ, sống động về những kiếp sống huyền bí, trải dài từ nền văn minh Atlantis hùng mạnh đến vương quốc Ai Cập cổ đại của các Pharaoh quyền uy, đến Hợp Chủng Quốc Hoa Kỳ ngày nay.</p><p><i><strong>“Muôn kiếp nhân sinh”</strong></i>cung cấp cho bạn đọc kiến thức mới mẻ, vô tận của nhân loại lần đầu được hé mở, cùng những phân tích uyên bác, tiên đoán bất ngờ về hiện tại và tương lai thế giới của những bậc hiền triết thông thái. Đời người tưởng chừng rất dài nhưng lại trôi qua rất nhanh, sinh vượng suy tử, mong manh như sóng nước. Luật nhân quả cực kỳ chính xác, chi tiết, phức tạp được thu thập qua nhiều đời, nhiều kiếp, liên hệ tương hỗ đan xen chặt chữ lẫn nhau, không ai có thể tính được tích đức này có thể trừ được nghiệp kia không, không ai có thể biết được khi nào nhân sẽ trổ quả. Nhưng, một khi đã gây ra nhân thì chắc chắn sẽ gặt quả - luật Nhân quả của vũ trụ trước giờ không bao giờ sai.</p><p>Luật Luân hồi và Nhân quả đã tạo nhân duyên để người này gặp người kia. Gặp nhau có khi là duyên, có khi là nợ; gặp nhau có lúc để trả nợ, có lúc để nối lại duyên xưa. Có biết bao việc diễn ra trong đời, tưởng chừng như là ngẫu nhiên nhưng thật ra đã được sắp đặt từ trước. Luân hồi là một ngôi trường rộng lớn, nơi tất cả con người, tất cả sinh vật đều phải học bài học của riêng mình cho đến khi thật hoàn thiện mới thôi. Nếu không chịu học hay chưa học được trọn vẹn thì buộc phải học lại, chính xác theo quy luật của Nhân quả.</p><p>Thomas đã chia sẻ vì sao đã kể những câu chuyện riêng tư huyền bí này với Giáo sư John Vũ để thực hiện tác phẩm <i><strong>“Muôn kiếp nhân sinh”:</strong></i></p><p>&nbsp;“<i>Hiện nay thế giới đang trải qua giai đoạn hỗn loạn, xáo trộn, mà thật ra thì mọi quốc gia đều đang gánh chịu những nghiệp quả mà họ đã gây ra trong quá khứ. Mỗi quốc gia, cũng như mọi cá nhân, đều có những nghiệp quả riêng do những nhân mà họ đã gây ra. Cá nhân thì có ‘biệt nghiệp‘ riêng của từng người, nhưng quốc gia thì có ‘cộng nghiệp‘ mà tất cả những người sống trong đó đều phải trả.</i></p><p><i>Thường thì con người, khi hành động, ít ai nghĩ đến hậu quả, nhưng một khi hậu quả xảy đến thì họ nghĩ gì, làm gì? Họ oán hận, trách trời, trách đất, trách những người chung quanh đã gây ra những hậu quả đó? Có mấy ai biết chiêm nghiệm, tự trách mình và thay đổi không?</i></p><p><i>Tôi mong chúng ta - những cánh bướm bé nhỏ rung động mong manh cũng có thể tạo nên những trận cuồng phong mãnh liệt để thức tỉnh mọi người.</i></p><p><i>Tương lai của mỗi con người, mỗi tổ chức, mỗi quốc gia và cả hành tinh này sẽ ra sao trong giai đoạn sắp tới là tùy thuộc vào thái độ ứng xử, nhìn nhận và thức tỉnh của từng cá nhân, từng tổ chức, từng quốc gia đó tạo nên. Nếu muốn thay đổi, cần khởi đầu bằng việc nhận thức, chuyển đổi tâm thức, lan tỏa yêu thương và chia sẻ sự hiểu biết từ mỗi người chúng ta trước.</i></p><p><i>Nhân quả đừng đợi thấy mới tin.</i></p><p><i>Nhân quả là bảng chỉ đường, giúp con người tìm về thiện lương“</i></p><p>Cuốn sách được xuất bản bằng tiếng Việt trước khi được chuyển nhượng bản quyền cho các quốc gia khác trên thế giới.</p><p><strong>Về tác giả</strong></p><p>Tác giả Nguyên Phong (Vũ Văn Du) du học ở Mỹ từ năm 1968, tốt nghiệp cao học Sinh vật học, Điện toán. Ông từng là Kỹ sư trưởng, CIO của Tập đoàn Boeing của Mỹ, Viện trưởng Viện Công nghệ Sinh học Đại học Carnegie Mellon. Ông được mọi người biết tới là Giáo sư John Vu – Nhà khoa học uy tín về công nghệ thông tin. , CMMI và từng giảng dạy ở nhiều trường đại học trên thế giới.</p><p>&nbsp;Nguyên Phong là bút danh của bộ sách văn hóa tâm linh được dịch, viết phóng tác từ trải nghiệm, tiềm thức và quá trình nghiên cứu, khám phá các giá trị tinh thần Đông phương. Ông đã viết phóng tác tác phẩm bất hủ <i><strong>Hành trình về Phương Đông</strong></i> năm 24 tuổi (1974). Các tác phẩm khác của Nguyên Phong được bạn đọc nhiều thế hệ yêu thích: <i><strong>Ngọc sáng trong hoa sen, Bên rặng tuyết sơn, Hoa sen trên tuyết, Hoa trôi trên sóng nước, Huyền thuật và các đạo sĩ Tây Tạng, Trở về từ xứ tuyết, Trở về từ cõi sáng, Minh triết trong đời sống, Đường mây qua xứ tuyết, Dấu chân trên cát, Đường mây trong cõi mộng, Đường mây trên đất hoa</strong></i>… và bộ sách dành cho sinh viên, thầy cô: <i><strong>Khởi hành, Kết nối, Bước ra thế giới, Kiến tạo thế hệ Việt Nam ưu việt, GS John Vu và lời khuyên dành cho thầy cô, GS John Vu và lời khuyên dành cho các bậc cha mẹ.</strong></i></p><p><strong>Muôn Kiếp Nhân Sinh - Many Times, Many Lives</strong></p><p><i><strong>Giáo sư John Vũ – Nguyên Phong và những câu chuyện&nbsp;chưa từng có về tiền kiếp, khám phá luật Nhân quả, Luân hồi.</strong></i></p><p><i><strong>“Muôn kiếp nhân sinh”</strong></i> là tác phẩm do Giáo sư John Vũ - Nguyên Phong viết từ năm 2017 và hoàn tất đầu năm 2020 ghi lại những câu chuyện, trải nghiệm tiền kiếp kỳ lạ từ nhiều kiếp sống của người bạn tâm giao lâu năm, ông Thomas – một nhà kinh doanh tài chính nổi tiếng ở New York. Những câu chuyện chưa từng tiết lộ này sẽ giúp mọi người trên thế giới chiêm nghiệm, khám phá các quy luật về luật Nhân quả và Luân hồi của vũ trụ giữa lúc trái đất đang gặp nhiều tai ương, biến động, khủng hoảng từng ngày.</p><p><i><strong>“Muôn kiếp nhân sinh”</strong></i> là một bức tranh lớn với vô vàn mảnh ghép cuộc đời, là một cuốn phim đồ sộ, sống động về những kiếp sống huyền bí, trải dài từ nền văn minh Atlantis hùng mạnh đến vương quốc Ai Cập cổ đại của các Pharaoh quyền uy, đến Hợp Chủng Quốc Hoa Kỳ ngày nay.</p><p><i><strong>“Muôn kiếp nhân sinh”</strong></i>cung cấp cho bạn đọc kiến thức mới mẻ, vô tận của nhân loại lần đầu được hé mở, cùng những phân tích uyên bác, tiên đoán bất ngờ về hiện tại và tương lai thế giới của những bậc hiền triết thông thái. Đời người tưởng chừng rất dài nhưng lại trôi qua rất nhanh, sinh vượng suy tử, mong manh như sóng nước. Luật nhân quả cực kỳ chính xác, chi tiết, phức tạp được thu thập qua nhiều đời, nhiều kiếp, liên hệ tương hỗ đan xen chặt chữ lẫn nhau, không ai có thể tính được tích đức này có thể trừ được nghiệp kia không, không ai có thể biết được khi nào nhân sẽ trổ quả. Nhưng, một khi đã gây ra nhân thì chắc chắn sẽ gặt quả - luật Nhân quả của vũ trụ trước giờ không bao giờ sai.</p><p>Luật Luân hồi và Nhân quả đã tạo nhân duyên để người này gặp người kia. Gặp nhau có khi là duyên, có khi là nợ; gặp nhau có lúc để trả nợ, có lúc để nối lại duyên xưa. Có biết bao việc diễn ra trong đời, tưởng chừng như là ngẫu nhiên nhưng thật ra đã được sắp đặt từ trước. Luân hồi là một ngôi trường rộng lớn, nơi tất cả con người, tất cả sinh vật đều phải học bài học của riêng mình cho đến khi thật hoàn thiện mới thôi. Nếu không chịu học hay chưa học được trọn vẹn thì buộc phải học lại, chính xác theo quy luật của Nhân quả.</p><p>Thomas đã chia sẻ vì sao đã kể những câu chuyện riêng tư huyền bí này với Giáo sư John Vũ để thực hiện tác phẩm <i><strong>“Muôn kiếp nhân sinh”:</strong></i></p><p>&nbsp;“<i>Hiện nay thế giới đang trải qua giai đoạn hỗn loạn, xáo trộn, mà thật ra thì mọi quốc gia đều đang gánh chịu những nghiệp quả mà họ đã gây ra trong quá khứ. Mỗi quốc gia, cũng như mọi cá nhân, đều có những nghiệp quả riêng do những nhân mà họ đã gây ra. Cá nhân thì có ‘biệt nghiệp‘ riêng của từng người, nhưng quốc gia thì có ‘cộng nghiệp‘ mà tất cả những người sống trong đó đều phải trả.</i></p><p><i>Thường thì con người, khi hành động, ít ai nghĩ đến hậu quả, nhưng một khi hậu quả xảy đến thì họ nghĩ gì, làm gì? Họ oán hận, trách trời, trách đất, trách những người chung quanh đã gây ra những hậu quả đó? Có mấy ai biết chiêm nghiệm, tự trách mình và thay đổi không?</i></p><p><i>Tôi mong chúng ta - những cánh bướm bé nhỏ rung động mong manh cũng có thể tạo nên những trận cuồng phong mãnh liệt để thức tỉnh mọi người.</i></p><p><i>Tương lai của mỗi con người, mỗi tổ chức, mỗi quốc gia và cả hành tinh này sẽ ra sao trong giai đoạn sắp tới là tùy thuộc vào thái độ ứng xử, nhìn nhận và thức tỉnh của từng cá nhân, từng tổ chức, từng quốc gia đó tạo nên. Nếu muốn thay đổi, cần khởi đầu bằng việc nhận thức, chuyển đổi tâm thức, lan tỏa yêu thương và chia sẻ sự hiểu biết từ mỗi người chúng ta trước.</i></p><p><i>Nhân quả đừng đợi thấy mới tin.</i></p><p><i>Nhân quả là bảng chỉ đường, giúp con người tìm về thiện lương“</i></p><p>Cuốn sách được xuất bản bằng tiếng Việt trước khi được chuyển nhượng bản quyền cho các quốc gia khác trên thế giới.</p><p><strong>Về tác giả</strong></p><p>Tác giả Nguyên Phong (Vũ Văn Du) du học ở Mỹ từ năm 1968, tốt nghiệp cao học Sinh vật học, Điện toán. Ông từng là Kỹ sư trưởng, CIO của Tập đoàn Boeing của Mỹ, Viện trưởng Viện Công nghệ Sinh học Đại học Carnegie Mellon. Ông được mọi người biết tới là Giáo sư John Vu – Nhà khoa học uy tín về công nghệ thông tin. , CMMI và từng giảng dạy ở nhiều trường đại học trên thế giới.</p><p>&nbsp;Nguyên Phong là bút danh của bộ sách văn hóa tâm linh được dịch, viết phóng tác từ trải nghiệm, tiềm thức và quá trình nghiên cứu, khám phá các giá trị tinh thần Đông phương. Ông đã viết phóng tác tác phẩm bất hủ <i><strong>Hành trình về Phương Đông</strong></i> năm 24 tuổi (1974). Các tác phẩm khác của Nguyên Phong được bạn đọc nhiều thế hệ yêu thích: <i><strong>Ngọc sáng trong hoa sen, Bên rặng tuyết sơn, Hoa sen trên tuyết, Hoa trôi trên sóng nước, Huyền thuật và các đạo sĩ Tây Tạng, Trở về từ xứ tuyết, Trở về từ cõi sáng, Minh triết trong đời sống, Đường mây qua xứ tuyết, Dấu chân trên cát, Đường mây trong cõi mộng, Đường mây trên đất hoa</strong></i>… và bộ sách dành cho sinh viên, thầy cô: <i><strong>Khởi hành, Kết nối, Bước ra thế giới, Kiến tạo thế hệ Việt Nam ưu việt, GS John Vu và lời khuyên dành cho thầy cô, GS John Vu và lời khuyên dành cho các bậc cha mẹ.</strong></i></p>', 'Muôn Kiếp Nhân Sinh - Many Times, Many Lives\r\n\r\nGiáo sư John Vũ – Nguyên Phong và những câu chuyện chưa từng có về tiền kiếp, khám phá luật Nhân quả, Luân hồi.', 1, 120000.00, 2, 13, 2020, 0, 15, 8, NULL, 450, 200, 'Nguyên Phong', 20),
(103, '2023-10-31 03:16:57', NULL, 'Sách Tam Thể 1', 'sach-tam-the-1', '<p>Uông Diểu, vị giáo sư&nbsp;về&nbsp;vật liệu nano ngày nào cũng đăng nhập vào&nbsp;“Tam Thể”. Tại trò chơi online đó, anh đắm chìm trong một thế giới khác, nơi một nền văn minh có thể chỉ kéo dài vài ngày, bầu trời có thể xuất hiện ba mặt trời cùng lúc và con người còn phải biến thành xác khô để sinh tồn.</p><p>Nhưng anh không thể ngờ, thế giới khắc nghiệt trong Tam Thể là có thực, chỉ cách trái đất chừng bốn năm ánh sáng, và trò chơi ảo kia lại là một cánh cửa để những sinh vật của thế giới ấy bước đến xâm chiếm địa cầu này. Kinh hoàng, Uông Diểu tìm mọi cách ngăn chặn điều đó. Nhưng anh, cũng như cả địa cầu, không biết rằng, cánh cửa nọ đã được mở toang, từ mấy chục năm về trước...</p><p><i>Hùng tráng, kịch tính, triết lý, nên thơ,&nbsp;với những tri thức khoa học thú vị,&nbsp;</i>Tam thể&nbsp;<i>là phần mở đầu mang cảm hứng sử thi cho tam bộ khúc của Lưu Từ Hân. Sau tất cả những mưu toan ly kỳ, nham hiểm, những nỗ lực tưởng chừng tuyệt vọng để sinh tồn, câu hỏi còn đọng lại, không phải \'Loài người nên làm gì để đối phó với sự xâm lăng của Tam Thể?\', mà là ‘Loài người đã làm gì chính mình?’</i></p>', NULL, 1, 90000.00, 2, 13, 2021, 0, 13, 7, NULL, 400, 300, 'Lưu Từ Hân', 100);

-- --------------------------------------------------------

--
-- Table structure for table `products_in_carts`
--

CREATE TABLE `products_in_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `rent_time` int(10) UNSIGNED NOT NULL,
  `pick_up_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_in_carts`
--

INSERT INTO `products_in_carts` (`id`, `created_at`, `updated_at`, `user_id`, `product_id`, `quantity`, `rent_time`, `pick_up_date`) VALUES
(14, NULL, NULL, 101, 103, 1, 90, '2023-11-05'),
(15, NULL, NULL, 101, 102, 1, 90, '2023-11-29'),
(16, NULL, NULL, 101, 101, 2, 7, '2023-11-14');

-- --------------------------------------------------------

--
-- Table structure for table `products_in_categories`
--

CREATE TABLE `products_in_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_in_categories`
--

INSERT INTO `products_in_categories` (`id`, `product_id`, `category_id`) VALUES
(101, 101, 8),
(102, 102, 2),
(103, 103, 8);

-- --------------------------------------------------------

--
-- Table structure for table `products_in_orders`
--

CREATE TABLE `products_in_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` double(8,2) UNSIGNED NOT NULL,
  `product_quantity` int(10) UNSIGNED NOT NULL,
  `pick_up_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `expected_pick_up_date` date NOT NULL,
  `expected_return_date` date NOT NULL,
  `deposit` decimal(20,2) NOT NULL,
  `deposit_return` decimal(20,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `returned_bad_quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `returned_good_quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lated` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:false; 1:true',
  `rent_time` int(10) UNSIGNED NOT NULL DEFAULT 7
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_in_orders`
--

INSERT INTO `products_in_orders` (`id`, `created_at`, `updated_at`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `pick_up_date`, `return_date`, `expected_pick_up_date`, `expected_return_date`, `deposit`, `deposit_return`, `status`, `returned_bad_quantity`, `returned_good_quantity`, `lated`, `rent_time`) VALUES
(3, '2023-11-04 01:20:58', NULL, 3, 103, 'Sách Tam Thể 1', 18000.00, 1, NULL, NULL, '2023-11-04', '2023-11-11', 90000.00, 72000.00, 'wait_for_pick_up', 0, 0, 0, 7),
(4, '2023-11-04 01:20:58', NULL, 3, 102, 'Sách Muôn Kiếp Nhân Sinh', 24000.00, 1, NULL, NULL, '2023-11-09', '2023-11-16', 120000.00, 96000.00, 'wait_for_pick_up', 0, 0, 0, 7),
(5, '2023-11-04 01:29:48', NULL, 5, 102, 'Sách Muôn Kiếp Nhân Sinh', 24000.00, 1, NULL, NULL, '2023-11-10', '2023-11-17', 120000.00, 96000.00, 'wait_for_pick_up', 0, 0, 0, 7),
(6, '2023-11-05 04:49:27', NULL, 9, 101, 'Sách Cây Cam Ngọt Của Tôi', 22000.00, 10, NULL, NULL, '2023-11-06', '2023-11-13', 110000.00, 88000.00, 'wait_for_pick_up', 0, 0, 0, 7),
(7, '2023-11-05 04:49:27', NULL, 9, 102, 'Sách Muôn Kiếp Nhân Sinh', 480000.00, 20, NULL, NULL, '2023-11-18', '2023-11-25', 2400000.00, 1920000.00, 'wait_for_pick_up', 0, 0, 0, 7),
(8, '2023-11-05 05:41:50', NULL, 10, 102, 'Sách Muôn Kiếp Nhân Sinh', 24000.00, 1, NULL, NULL, '2023-11-05', '2023-11-12', 120000.00, 96000.00, 'wait_for_pick_up', 0, 0, 0, 7),
(9, '2023-11-05 05:47:03', NULL, 13, 103, 'Sách Tam Thể 1', 18000.00, 1, NULL, NULL, '2023-11-06', '2023-11-13', 90000.00, 72000.00, 'wait_for_pick_up', 0, 0, 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image_url` text NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '0:normal, 1:front cover, 2:back cover'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `created_at`, `updated_at`, `product_id`, `image_url`, `type`) VALUES
(201, '2023-10-30 17:35:38', NULL, 101, 'Mặt trước sách 1_1698687338.jpg', 1),
(202, '2023-10-30 17:35:39', NULL, 101, 'Mặt sau sách 1_1698687338.jpg', 2),
(203, '2023-10-30 17:39:28', NULL, 102, 'Mặt trước sách 2_1698687568.jpg', 1),
(204, '2023-10-30 17:39:28', NULL, 102, 'Mặt sau sách 2_1698687568.jpg', 2),
(205, '2023-10-31 03:16:57', NULL, 103, 'Mặt trước sách 3_1698722217.jpg', 1),
(206, '2023-10-31 03:16:57', NULL, 103, 'Mặt trong sách 3 _1698722217.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `created_at`, `updated_at`, `name`, `status`, `slug`) VALUES
(1, '2023-09-12 01:34:34', NULL, 'DN.Sách Thành Nghĩa', 1, 'DN-sach-thanh-nghia'),
(2, '2023-09-12 01:34:34', NULL, 'Nhà phát hành Việt nam', 1, 'Nha-phat-hanh-viet-nam'),
(3, '2023-09-12 01:34:46', NULL, 'SaiGon Book', 1, 'Saigon-book');

-- --------------------------------------------------------

--
-- Table structure for table `rent_prices`
--

CREATE TABLE `rent_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) UNSIGNED NOT NULL,
  `number_of_days` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rent_prices`
--

INSERT INTO `rent_prices` (`id`, `created_at`, `updated_at`, `product_id`, `price`, `number_of_days`) VALUES
(401, '2023-10-30 17:35:39', NULL, 101, 1100.00, 1),
(402, '2023-10-30 17:35:39', NULL, 101, 2200.00, 7),
(403, '2023-10-30 17:35:39', NULL, 101, 3667.00, 30),
(404, '2023-10-30 17:35:39', NULL, 101, 5500.00, 90),
(405, '2023-10-30 17:39:28', NULL, 102, 12000.00, 1),
(406, '2023-10-30 17:39:28', NULL, 102, 24000.00, 7),
(407, '2023-10-30 17:39:28', NULL, 102, 40000.00, 30),
(408, '2023-10-30 17:39:28', NULL, 102, 60000.00, 90),
(409, '2023-10-31 03:16:57', NULL, 103, 9000.00, 1),
(410, '2023-10-31 03:16:57', NULL, 103, 18000.00, 7),
(411, '2023-10-31 03:16:57', NULL, 103, 30000.00, 30),
(412, '2023-10-31 03:16:57', NULL, 103, 45000.00, 90);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `created_at`, `updated_at`, `user_id`, `user_name`, `product_id`, `content`, `rating`) VALUES
(19, '2023-11-04 01:36:11', NULL, 101, 'Hảo Đỗ Văn', 102, 'hi', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `phone_number` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `level`, `status`, `remember_token`, `phone_number`, `created_at`, `updated_at`) VALUES
(97, 'User', 'user@gmail.com', '$2y$10$W19XVss7QfYuRG2ITGoRae1rVzTGzcASM2aJBW4YZiDYXXs.D5KZ.', 0, 1, NULL, '4935221801', '2023-09-12 09:52:47', NULL),
(100, 'UserAdmin', 'admin@gmail.com', '$2y$10$RWT14fcKGSBkzGwZ/rBlg.sRgESuMrWuaQ8shvuqquWC69mWrb7ai', 1, 1, NULL, '4281563322', '2023-09-12 09:52:47', NULL),
(101, 'Vhaooforjob', 'Vhaooforjob@gmail.com', '$2y$10$fTvGBfDi2aD4v.GZ87cxQeTKw.epl3.2lKOCjLxmd22iT4rsqgWq2', 1, 1, NULL, '0949847277', '2023-10-28 01:16:00', NULL),
(103, 'user1', 'abc@GMAIL.COM', '$2y$10$zvMcHnMEAsUx0r4AvSbKPu8NEtC9a7mK3ZPP9pGuUDRQjGKORCIXC', 0, 1, NULL, '0949847271', '2023-11-04 01:29:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE `users_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_info`
--

INSERT INTO `users_info` (`id`, `created_at`, `updated_at`, `user_id`, `last_name`, `first_name`, `gender`, `dob`) VALUES
(1, '2023-09-12 09:52:47', NULL, 97, 'Tài khoản', 'Thử', 0, '2023-05-29'),
(2, '2023-09-12 09:52:47', NULL, 100, 'Tài khoản', 'Admin', 0, '2023-07-11'),
(3, '2023-10-28 01:16:00', NULL, 101, 'Hảo', 'Đỗ Văn', 1, '2003-09-02'),
(103, '2023-11-04 01:29:04', NULL, 103, 'user', 'new', 1, '2023-06-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_product_id_foreign` (`product_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `liked_products_user_id_foreign` (`user_id`),
  ADD KEY `liked_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `origins`
--
ALTER TABLE `origins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_publisher_id_foreign` (`publisher_id`),
  ADD KEY `products_origin_id_foreign` (`origin_id`);

--
-- Indexes for table `products_in_carts`
--
ALTER TABLE `products_in_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_in_carts_user_id_foreign` (`user_id`),
  ADD KEY `products_in_carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `products_in_categories`
--
ALTER TABLE `products_in_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_in_categories_product_id_foreign` (`product_id`),
  ADD KEY `products_in_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `products_in_orders`
--
ALTER TABLE `products_in_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_in_orders_order_id_foreign` (`order_id`),
  ADD KEY `products_in_orders_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent_prices`
--
ALTER TABLE `rent_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rent_prices_product_id_foreign` (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`);

--
-- Indexes for table `users_info`
--
ALTER TABLE `users_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_info_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `liked_products`
--
ALTER TABLE `liked_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `origins`
--
ALTER TABLE `origins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `products_in_carts`
--
ALTER TABLE `products_in_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products_in_categories`
--
ALTER TABLE `products_in_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `products_in_orders`
--
ALTER TABLE `products_in_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rent_prices`
--
ALTER TABLE `rent_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `users_info`
--
ALTER TABLE `users_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD CONSTRAINT `liked_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `liked_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_origin_id_foreign` FOREIGN KEY (`origin_id`) REFERENCES `origins` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_publisher_id_foreign` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products_in_carts`
--
ALTER TABLE `products_in_carts`
  ADD CONSTRAINT `products_in_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_in_carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_in_categories`
--
ALTER TABLE `products_in_categories`
  ADD CONSTRAINT `products_in_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_in_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_in_orders`
--
ALTER TABLE `products_in_orders`
  ADD CONSTRAINT `products_in_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_in_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rent_prices`
--
ALTER TABLE `rent_prices`
  ADD CONSTRAINT `rent_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_info`
--
ALTER TABLE `users_info`
  ADD CONSTRAINT `users_info_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
