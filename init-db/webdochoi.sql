-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 06, 2024 at 02:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
                        `id` bigint(20) NOT NULL,
                        `userId` bigint(20) NOT NULL,
                        `createdAt` datetime NOT NULL,
                        `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `userId`, `createdAt`, `updatedAt`) VALUES
                                                                  (2, 5, '2021-12-18 20:35:59', NULL),
                                                                  (4, 1, '2024-12-05 14:18:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
                             `id` bigint(20) NOT NULL,
                             `cartId` bigint(20) NOT NULL,
                             `productId` bigint(20) NOT NULL,
                             `quantity` smallint(6) NOT NULL,
                             `createdAt` datetime NOT NULL,
                             `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`id`, `cartId`, `productId`, `quantity`, `createdAt`, `updatedAt`) VALUES
                                                                                                (1, 2, 55, 3, '2021-07-13 10:21:51', NULL),
                                                                                                (2, 2, 36, 2, '2021-07-05 07:21:45', NULL),
                                                                                                (9, 4, 25, 4, '2024-12-05 14:18:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
                            `id` bigint(20) NOT NULL,
                            `name` varchar(100) NOT NULL,
                            `description` text DEFAULT NULL,
                            `imageName` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `imageName`) VALUES
                                                                      (1, 'Mô hình', 'Cillum nulla non Lorem ut irure fugiat veniam deserunt do.', 'img-13705482600534141089.jpg'),
                                                                      (2, 'Búp bê', 'Aliqua exercitation ea sint do.', 'img-6721095569763108566.jpg'),
                                                                      (3, 'Thú nhồi bông', 'Cillum laboris et nulla nostrud duis consectetur labore cupidatat minim proident.', 'truyen-tranh.png'),
                                                                      (4, 'Robot', 'Hi', 'img-17646996253376651572.jpg'),
                                                                      (7, 'Đồ chơi lắp ráp', 'In officia ex magna commodo ullamco in magna incididunt esse mollit enim consectetur laboris.', 'img-17476526430868041634.jpg'),
                                                                      (12, 'Phụ kiện', 'Hi', 'img-140318884811393881.jpg'),
                                                                      (13, 'Ô tô', 'Minim deserunt aute ipsum duis ea eiusmod aute sint sint ut.', 'img-10668463005943722627.jpg'),
                                                                      (14, 'Y2K', 'Cùng về tuổi thơ nào', 'img-9259298191827030721.jpg'),
                                                                      (15, 'Pokemon', 'chào các bạn fan của pokemon', 'img-8569813802132659228.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
                          `id` bigint(20) NOT NULL,
                          `userId` bigint(20) NOT NULL,
                          `status` tinyint(4) NOT NULL,
                          `deliveryMethod` tinyint(4) NOT NULL,
                          `deliveryPrice` float NOT NULL,
                          `createdAt` datetime NOT NULL,
                          `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
                              `id` bigint(20) NOT NULL,
                              `orderId` bigint(20) NOT NULL,
                              `productId` bigint(20) NOT NULL,
                              `price` float NOT NULL,
                              `discount` float NOT NULL,
                              `quantity` smallint(6) NOT NULL,
                              `createdAt` datetime NOT NULL,
                              `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
                           `id` bigint(20) NOT NULL,
                           `name` varchar(100) NOT NULL,
                           `price` float NOT NULL,
                           `discount` float NOT NULL,
                           `quantity` smallint(6) NOT NULL,
                           `totalBuy` smallint(6) NOT NULL,
                           `author` varchar(50) NOT NULL,
                           `pages` smallint(6) NOT NULL,
                           `publisher` varchar(100) NOT NULL,
                           `yearPublishing` year(4) NOT NULL,
                           `description` text DEFAULT NULL,
                           `imageName` varchar(35) DEFAULT NULL,
                           `shop` bit(1) NOT NULL,
                           `createdAt` datetime NOT NULL,
                           `updatedAt` datetime DEFAULT NULL,
                           `startsAt` datetime DEFAULT NULL,
                           `endsAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `discount`, `quantity`, `totalBuy`, `author`, `pages`, `publisher`, `yearPublishing`, `description`, `imageName`, `shop`, `createdAt`, `updatedAt`, `startsAt`, `endsAt`) VALUES
                                                                                                                                                                                                                            (1, 'Mô hình cuphead', 466183, 0, 86, 86, 'Stafford Hayden', 250, 'NXB Giáo dục', '2013', 'Consequat cupidatat magna nostrud ullamco non commodo esse. Veniam anim ipsum duis cillum cillum exercitation deserunt irure sint eiusmod. Duis consectetur adipisicing aliquip magna eiusmod ullamco ut ad ipsum nostrud dolore id. Ex ullamco nulla Lorem consequat sunt exercitation cillum adipisicing.\r\nProident labore ut qui esse cupidatat deserunt occaecat dolor in. Ad nulla reprehenderit pariatur esse enim ullamco do incididunt anim do excepteur est dolore excepteur. Laboris voluptate cupidatat anim dolore eiusmod in id fugiat est cupidatat pariatur mollit. Mollit irure proident enim consequat irure ipsum proident amet aliqua. Irure ad dolore laboris elit reprehenderit officia ex.\r\n', 'cuphead.jpg', b'0', '2021-03-23 08:22:50', NULL, NULL, NULL),
                                                                                                                                                                                                                            (2, 'POP UP PARADE Anya Forger', 26228, 0, 23, 60, 'Nhựa sơn', 305, 'SPY x FAMILY', '2020', 'Sản phẩm hoàn chỉnh bằng nhựa sơn không vảy có kèm chân đế. Chiều cao khoảng 160mm.', 'anya-forger.jpg', b'1', '2020-12-19 15:03:05', NULL, NULL, NULL),
                                                                                                                                                                                                                            (22, 'Bronya Zaychik: Herrscher of Truth - Honkai Impact 3 - Hakimi Studio', 12000000, 0, 5, 19, 'Nhựa', 15, 'Hakimi', '2022', 'Tên sản phẩm: Mô hình Bronya Zaychik: Herrscher of Truth\r\nSeries: Honkai Impact 3 \r\nHãng sản xuất: Hakimi Studio', 'img-6897233452300172695.jpg', b'1', '2022-01-24 08:00:39', '2024-12-06 19:36:04', NULL, NULL),
                                                                                                                                                                                                                            (23, 'Elysia Herrscher of Human: Hương Đào Mùa Xuân - Honkai Impact 3 - Mantou', 780000, 0, 71, 66, 'Vải, bông', 4, 'Mihoyo', '2023', 'Hi có nhớ ta không', 'img-8518505504408708509.jpg', b'0', '2021-07-15 20:01:58', '2024-12-06 19:33:27', NULL, NULL),
                                                                                                                                                                                                                            (24, 'Mô hình Raiden Shogun - Tượng Đại Nhân Narukami Ogosho - Genshin Impact', 990000, 5, 83, 36, 'Nhựa', 12, 'Mihoyo', '2023', 'lôi thần đây', 'img-11303836911617121817.jpg', b'0', '2021-09-09 05:29:49', '2024-12-06 19:51:28', NULL, NULL),
                                                                                                                                                                                                                            (25, 'SKULLPANDA CHEERS TO MYSELF SERIES-Mini Bag', 400000, 0, 62, 309, 'Vải, PU, kim loại', 3, 'Pop Mart', '2024', 'Size: 10*3.5*13cm(Denim Color); 16.3*3.5*12.5cm(Pink)', 'img-4092199546883145810.jpg', b'1', '2021-12-11 02:13:04', '2024-12-06 19:26:28', NULL, NULL),
                                                                                                                                                                                                                            (26, 'MG 1/100 GUNDAM ASTRAY BLUE FRAME D', 1050000, 10, 47, 25, 'Nhựa ABS', 15, 'Bandai', '2023', 'THÔNG TIN CHUNG: - Mô hình lắp ráp Gunpla - Tỉ lệ 1:100 - Cấp độ: MG - Đây là Mô hình chưa lắp ráp, người chơi chỉ cần sử dụng kìm chuyên dụng để cắt các chi tiết nhỏ, không cần dùng keo. ', 'img-11390872063494825573.jpg', b'0', '2021-02-02 00:42:02', '2024-12-06 19:21:41', NULL, NULL),
                                                                                                                                                                                                                            (27, 'BB393 LEGENDBB FULL ARMOR KNIGHT GUNDAM', 850000, 0, 40, 41, 'Nhựa ABS', 12, 'Bandai', '2023', 'BB393 LEGENDBB FULL ARMOR KNIGHT GUNDAM là một mô hình tuyệt vời trong dòng sản phẩm BB. \r\nBộ giáp ngoài của FA Knight Gundam có thể tháo rời để trưng bày ở chế độ giáp đầy đủ hoặc giáp nhẹ. \r\nTấm che trên mũ bảo hiểm có thể cử động lên xuống. \r\nNgoài ra, Bandai cung cấp bốn loại sticker khác nhau cho đôi mắt, cho phép bạn thay đổi diện mạo khuôn mặt của Knight Gundam! \r\nViệc lắp ráp dễ dàng nhờ vào thiết kế snap-fit và mô hình được đúc sẵn với nhiều màu sắc khác nhau. Bao gồm các sticker để tăng thêm chi tiết.', 'img-1339626720751917657.jpg', b'0', '2021-04-26 11:20:50', '2024-12-06 19:18:44', NULL, NULL),
                                                                                                                                                                                                                            (28, 'ONE PIECE GRAND SHIP COLLECTION THOUSAND SUNNY LAND OF WANO VER', 850000, 19, 19, 40, 'Nhựa', 12, 'Bandai', '2015', ' (đầy đủ phụ kiện, nguyên seal runner). Các hình ảnh sản phẩm có nhiều hơn 01 kit chỉ phục vụ mục đích so sánh các kit gunpla với nhau, giúp quý khách hiểu rõ hơn về sản phẩm. - Trong trường hợp sản phẩm bị lỗi hoặc thiếu chi tiết, shop sẽ chỉ có thể hỗ trợ quý khách nếu runner được giữ nguyên trong bao seal. Tất cả các trường hợp đã bóc seal sẽ không được hỗ trợ. ', 'img-654857370321350917.jpg', b'0', '2021-03-08 07:28:18', '2024-12-06 19:15:16', NULL, NULL),
                                                                                                                                                                                                                            (29, 'DIMOO Letters from Snowman Series-Mug', 790000, 0, 87, 25, 'Sứ', 15, 'Pop Mart', '2024', 'siêu xinh iu cho các bạn cute', 'img-6596291287742754116.jpg', b'0', '2021-10-14 22:48:40', '2024-12-06 19:11:46', NULL, NULL),
                                                                                                                                                                                                                            (30, 'DIMOO Letters from Snowman Series-Crystal Ball Lamp', 1890000, 0, 12, 71, 'Nhựa, thủy tinh', 14, 'Pop Mart', '2023', 'siêu xinh để trưng bày cho dịp giáng sinh', 'img-13122055321364344600.jpg', b'0', '2021-12-19 02:05:00', '2024-12-06 19:09:38', NULL, NULL),
                                                                                                                                                                                                                            (31, 'Búp Bê Thời Trang Fashionista - Cầu Vồng Đa Sắc BARBIE FBR37', 230000, 5, 71, 33, 'Nhựa', 3, 'BARBIE', '2001', 'Phiên bản Kỷ niệm 65 năm với phong cách thời trang thời thượng, Búp bê thời trang Fashionista BARBIE - Cầu vồng đa sắc sẽ tôn vinh sự đa dạng và mở ra những trải nghiệm thú vị về thời trang. Với những thiết kế độc đáo và phong cách đa dạng, bé có thể thể hiện cá tính của mình thông qua những bộ trang phục rực rỡ. Búp bê thời trang Fashionista BARBIE - Cầu vồng đa sắc sẽ là món quà lý tưởng cho những tín đồ thời trang nhỏ tuổi', 'img-6071539662243795357.jpg', b'1', '2022-01-01 23:10:09', '2024-12-06 19:03:44', NULL, NULL),
                                                                                                                                                                                                                            (32, 'Búp Bê Thời Trang Fashionista - Cổ Điển Thanh Lịch Barbie FBR37', 459000, 0, 49, 48, 'Nhựa', 3, 'BARBIE', '2020', 'Trong phiên bản Kỷ niệm 65 năm với phong cách thời trang thời thượng , Búp bê thời trang Fashionista BARBIE - Cổ điển thanh lịch sẽ tôn vinh sự đa dạng và mở ra những trải nghiệm thú vị về thời trang. Với những thiết kế độc đáo và phong cách đa dạng, bé có thể thể hiện cá tính của mình thông qua những bộ trang phục rực rỡ. Búp bê thời trang Fashionista BARBIE - Cổ điển thanh lịch sẽ là món quà lý tưởng cho những tín đồ thời trang nhỏ tuổi.', 'img-2410690207752954572.jpg', b'0', '2021-12-08 02:56:41', '2024-12-06 19:02:19', NULL, NULL),
                                                                                                                                                                                                                            (33, 'Búp Bê Thời Trang Fashionista - Sắc Hồng Nhẹ Nhàng BARBIE FBR37', 459000, 0, 19, 32, 'Nhựa', 3, 'BARBIE', '2020', 'Trong phiên bản Kỷ niệm 65 năm với phong cách thời trang thời thượng , Búp bê thời trang Fashionista BARBIE - Sắc hồng nhẹ nhàng sẽ tôn vinh sự đa dạng và mở ra những trải nghiệm thú vị về thời trang. Với những thiết kế độc đáo và phong cách đa dạng, bé có thể thể hiện cá tính của mình thông qua những bộ trang phục rực rỡ. Búp bê thời trang Fashionista BARBIE - Sắc hồng nhẹ nhàng sẽ là món quà lý tưởng cho những tín đồ thời trang nhỏ tuổi.', 'img-4181175849947680819.jpg', b'1', '2021-11-06 02:48:40', '2024-12-06 19:00:17', NULL, NULL),
                                                                                                                                                                                                                            (34, 'Đồ chơi lắp ráp Tàu lượn siêu tốc không gian LEGO CREATOR 31142', 3299000, 0, 65, 43, 'Nhựa ABS', 9, 'LEGO CREATOR', '2018', 'Hãy thực hiện một chuyến đi đến công viên giải trí theo chủ đề không gian và tận hưởng những chuyến đi tuyệt vời! Nhảy lên một chiếc xe đẩy để di chuyển nhanh trên Tàu lượn siêu tốc Không gian với một tiểu hành tinh và thiên thạch. Tiếp theo, bạn có thể lắp ráp lại thành một tháp thả hoặc quay vòng trong tên lửa vũ trụ mini hoặc tàu con thoi trên băng chuyền. Sự lựa chọn là của bạn với bộ lắp ráp 3 trong 1 siêu ngầu này.\r\n• Đồ chơi lắp ráp 3 trong 1 – tận hưởng niềm vui trong không gian với bộ đồ chơi Tàu lượn siêu tốc không gian LEGO® Creator (31142), gồm 3 mô hình để lắp ráp và lắp ráp lại trong 1 hộp\r\n• 3 trò chơi khác nhau – Người hâm mộ không gian có thể lắp ráp 3 trò chơi khác nhau trong công viên giải trí: Tàu lượn siêu tốc Không gian, tháp thả và vòng đu quay\r\n• Cuộc phiêu lưu giữa các thiên hà với nhịp độ nhanh – Tàu lượn siêu tốc có đường đi uốn lượn, nơi 3 xe đẩy có thể phóng to xung quanh được bao quanh bởi các hành tinh, sao băng và thiên thạch', 'img-6278143390249456661.jpg', b'1', '2021-03-24 23:12:25', '2024-12-06 18:52:43', NULL, NULL),
                                                                                                                                                                                                                            (36, 'Đồ Chơi Lắp Ráp Tàu Con Thoi Vũ Trụ LEGO CREATOR 31134', 309000, 20, 48, 22, 'Nhựa ABS', 12, 'LEGO CREATOR', '2016', 'Tận hưởng những cuộc phiêu lưu kỳ thú giữa các thiên hà với 3 đồ chơi không gian LEGO® khác nhau trong 1 bộ trò chơi. Phóng lên quỹ đạo bằng Tàu con thoi và vệ tinh có thể mở rộng. Sau đó, xây dựng lại nó thành một phi hành gia với tay và chân có thể cử động được – sẵn sàng chinh phục các hành tinh – hoặc xây dựng lại nó thành một con tàu vũ trụ siêu ngầu với đôi cánh đang di chuyển. Việc du hành giữa các vì sao vô tận là chuyện nhỏ với bộ đồ chơi 3 trong 1 tuyệt vời này.\r\n• Đồ chơi 3 trong 1 – Những người hâm mộ trò chơi ngoài không gian có thể tận hưởng chuyến du hành giữa các thiên hà với bộ đồ chơi LEGO® Creator Tàu Con Thoi Vũ Trụ 3 trong 1 (31134), bao gồm Tàu con thoi, phi hành gia và tàu vũ trụ\r\n• Vô số tùy chọn chơi – bé yêu có thể chọn chơi hành động với đồ chơi Tàu con thoi, hình đồ chơi phi hành gia với tay và chân có thể điều chỉnh được và tàu vũ trụ siêu ngầu\r\n• Được đóng gói với các phụ kiện – Tàu con thoi có một cửa sập mở chứa một vệ tinh có thể tháo rời và nhân vật phi hành gia có một bộ phản lực và một lá cờ để cắm trên giá đỡ', 'img-6750421464817288869.jpg', b'1', '2022-01-08 02:42:25', '2024-12-06 18:50:16', NULL, NULL),
                                                                                                                                                                                                                            (47, 'Đồ chơi Máy Nuôi Thú Ảo Bitzee BITZEE 6067790', 749000, 10, 76, 22, 'Hợp kim', 12, 'BITZEE', '2015', 'Trải nghiệm trò chơi nuôi thú ảo hoàn toàn mới. Bitzee : Thú cưng ảo thế hệ mới. Bạn hoàn toàn có thể chạm và tương tác với bé thú cưng của mình. Bé thú ảo Bitzee sẽ tương tác với các thao tác vuốt, nghiêng, lắc và chạm của bạn!\r\nMỗi bé Bitzee bắt đầu ở giai đoạn sơ sinh. Giống như thú cưng thật, thú cưng ảo Bitzee cần được yêu thương và chăm sóc để lớn lên. Càng chơi nhiều, bé càng nhận được nhiều thú cưng! Cho chúng ăn và chơi đùa, đưa chúng vào giấc ngủ, dọn dẹp sau khi chúng đi vệ sinh và trao cho chúng tình yêu thương.\r\nQuan sát bé Biizee từ khi còn bé, đến trưởng thành, và đến Super Bitzee! Mở khóa từng thú cưng Super Bitzee và khám phá những bộ trang phục và trò chơi minigame độc đáo, sau đó sử dụng phần thưởng để thu hút thú ảo tiếp theo của bạn. Thu thập 15 thú cưng Bitzee trong hộp của bạn và khoe bộ sưu tập của bạn với bạn bè ở bất cứ đâu!', 'img-10873754446347589506.jpg', b'0', '2021-09-01 20:00:43', '2024-12-06 18:47:33', NULL, NULL),
                                                                                                                                                                                                                            (55, 'TOMICA PREMIUM No.20 ENZO FERRARI', 240000, 20, 32, 45, 'Hợp kim, nhựa ABS', 4, 'Tomica', '2020', ' Loại cấu hình: Diecast \r\nChất liệu: Hợp kim, Nhựa ABS \r\n– Chất liệu: Kim loại hơp kim đúc khuôn, không gây độc hại cho da của bé, đã được kiểm nghiệm.\r\nPhù hợp với trẻ từ 4 tuổi trở lên.\r\nThương hiệu : Tomica là một thương hiệu chuyên sản xuất xe mô hình đồ chơi cho trẻ, đã được kiểm định các quy trình về độ an toàn tuyệt đối.\r\nSản xuất : Việt Nam\r\nChất lượng : Nhật Bản', 'img-16466029371649200033.jpg', b'0', '2021-06-09 02:42:51', '2024-12-06 18:42:26', NULL, NULL),
                                                                                                                                                                                                                            (58, 'Migo Circus Plush Blind Box', 250000, 20, 90, 35, 'Vải, bông', 4, 'BABY THREE', '2024', 'sản phẩm ngẫu nhiên do nằm trong blind box', 'img-200864809561589627.jpg', b'0', '2021-06-24 07:23:29', '2024-12-06 18:38:59', NULL, NULL),
                                                                                                                                                                                                                            (60, 'TOMICA No.75 Acura INTEGRA', 130000, 20, 15, 21, 'Hợp kim, nhựa ABS', 4, 'Tomica', '2019', 'Tomica là một thương hiệu chuyên sản xuất xe mô hình đồ chơi cho trẻ, đã được kiểm định các quy trình về độ an toàn tuyệt đố', 'img-4440493134282528748.jpg', b'0', '2021-11-22 16:02:54', '2024-12-06 18:34:53', NULL, NULL),
                                                                                                                                                                                                                            (62, 'Crayon Shin-chan vol.1-Vegetable Shin-chan plush blind box', 190000, 0, 96, 21, 'Vải, bông', 15, 'LDCX', '2020', 'Xin lưu ý: những sản phẩm này được gọi là \"Blind box\" - bạn sẽ không thể chọn mẫu mà bạn sẽ nhận được. Bạn sẽ không biết mình nhận được gì cho đến khi mở nó ra. Sự bất ngờ sẽ là một gia vị không thể thiếu cho cuộc chơi thêm thú vị.\r\n\r\nCác Blindbox ở cùng một SET sẽ không trùng nhau. Trong trường hợp mua cả SET và xuất hiện SECRET/CHASER thì sẽ mất một mẫu cơ bản. ', 'img-6254482764917260169.jpg', b'1', '2021-02-20 05:53:34', '2024-12-06 18:30:08', NULL, NULL),
                                                                                                                                                                                                                            (93, 'Feeling Well Monster Planet Plush Pendant', 120000, 5, 55, 20, 'Vải, bông', 2, 'FeelingWell', '2022', 'sieu cute, than thien voi moi lua tuoi', 'img-3140831940946664121.jpg', b'1', '2022-01-27 21:49:53', '2024-12-06 18:25:05', NULL, NULL),
                                                                                                                                                                                                                            (94, 'Figure-rise Standard SON GOKU (NEW SPEC Ver.)', 600000, 10, 42, 16, 'Nhựa', 8, 'Bandai', '2010', 'The Figure-rise Standard line has entered an all new dimension: NEW SPEC! The range of motion and the beauty of the modeling have both been taken to the next level, and the first character in the lineup is Son Goku from \"Dragon Ball Z\"!\r\nThe Muscle Build System has been powered up to the new \"Muscle Build System PLUS\" to achieve the highest range of motion through a thorough study of human anatomy and the evolution of plastic model movement technology.', 'img-14183087926298223746.jpg', b'0', '2021-04-28 06:56:06', '2024-12-06 18:20:35', NULL, NULL),
                                                                                                                                                                                                                            (95, 'Máy ảnh Casio Y2K', 500000, 0, 49, 248, 'Kim loại', 8, 'Casio', '1995', 'máy ảnh siêu xinh cá tính cho các tính đồ y2k', 'img-9228096949058954122.jpg', b'1', '2021-10-25 05:55:27', '2024-12-05 14:56:28', NULL, NULL),
                                                                                                                                                                                                                            (96, 'MG 1/100 WING GUNDAM', 850000, 0, 83, 233, 'Nhựa ABS', 16, 'BANDAI', '2020', 'gundam đây\r\n', 'img-6756499938140580324.jpg', b'1', '2021-04-17 06:11:57', '2024-12-05 15:06:48', NULL, NULL),
                                                                                                                                                                                                                            (97, 'Pokémon PLAMO COLLECTION QUICK!! 11 Charmander', 160000, 0, 81, 10, 'Nhựa', 5, 'Nintendo', '2012', 'Đây là Mô hình chưa lắp ráp, người chơi chỉ cần sử dụng kìm chuyên dụng để cắt các chi tiết nhỏ, không cần dùng keo', 'img-17952981081912724011.jpg', b'1', '2021-07-03 05:51:31', '2024-12-06 18:16:38', NULL, NULL),
                                                                                                                                                                                                                            (98, 'PLANNOSAURUS Pteranodon', 300000, 10, 18, 120, 'Nhựa', 16, 'Bandai', '2022', 'The Pteranodon, the most iconic flying pterosaur, joins the \"Plannosaurus\" model-kit lineup from Bandai! This lineup encourages you to learn about dinosaurs by assembling them yourself from the skeleton out! Begin with the \"skeletal build,\" assembling the creature\'s skeleton piece by piece; the \"dinosaur build\" then allows you to attach the outer skin parts to the skeleton. Nippers and glue are not required, so the kit is easy to assemble, too!', 'img-4096820765097019580.jpg', b'1', '2021-07-09 19:58:01', '2024-12-05 15:15:48', NULL, NULL),
                                                                                                                                                                                                                            (99, 'MG 1/100 MSN-04 SAZABI Ver.Ka', 2000000, 10, 51, 86, 'Weeks Charles', 16, 'Kimi The Builder', '2020', 'Sản phẩm chi bao gồm 01  MG 1/100 MSN-04 SAZABI Ver.Ka (đầy đủ phụ kiện, nguyên seal runner). Các hình ảnh sản phẩm có nhiều hơn 01 kit chỉ phục vụ mục đích so sánh các kit gunpla với nhau, giúp quý khách hiểu rõ hơn về sản phẩm. - Trong trường hợp sản phẩm bị lỗi hoặc thiếu chi tiết, shop sẽ chỉ có thể hỗ trợ quý khách nếu runner được giữ nguyên trong bao seal. ', 'img-11483450637175594688.jpg', b'1', '2022-01-22 15:29:03', '2024-12-05 15:02:43', NULL, NULL),
                                                                                                                                                                                                                            (100, 'POKEPLA LUGIA', 250000, 20, 34, 198, 'Nhựa ABS', 8, 'Bandai', '2014', 'Chiều cao khoảng 75mm sau khi lắp ráp. Chất lượng mô hình tinh xảo, với tư thế tĩnh sau khi lắp.', 'img-4143824109676414464.jpg', b'1', '2021-08-14 19:14:31', '2024-12-05 14:54:42', NULL, NULL),
                                                                                                                                                                                                                            (101, 'Gundam GP04', 600000, 1, 12, 12, 'Nhựa ABS', 15, 'Bandai Namco', '2024', 'Chất liệu nhựa cao cấp PVC, ABS an toàn với sức khỏe', 'img-14092252519348762507.jpg', b'1', '2024-09-04 22:45:34', '2024-12-05 14:34:03', '2024-09-05 12:12:00', '2024-09-07 12:12:00'),
                                                                                                                                                                                                                            (103, 'Firefly - Honkai Star Rail - KOD Studio', 5400000, 10, 3, 45, 'Nhựa', 15, 'KOD', '2024', 'Kích thước: 1/6 \r\nNote: Khách hàng mua Combo tặng kèm Máy Biến Áp', 'img-13408919822458135070.jpg', b'1', '2024-12-06 19:55:47', NULL, NULL, NULL),
                                                                                                                                                                                                                            (104, 'Móc khóa ván trượt phe Nhà Thỏ Xảo Quyệt  - Zenless Zone Zero', 245000, 10, 13, 64, 'Nhựa', 5, 'Mihoyo', '2024', 'Tên sản phẩm: Móc khóa ván trượt phe Nhà Thỏ Xảo Quyệt \r\nSeries: Zenless Zone Zero', 'img-3014769167168019776.jpg', b'1', '2024-12-06 19:59:27', NULL, NULL, NULL),
                                                                                                                                                                                                                            (105, 'Búp bê bông Furmur Doll - Honkai Star Rail - Ajong', 760000, 5, 4, 37, 'Vải, bông', 4, 'Ajong', '2024', 'vui vẻ là gì nào', 'img-5568591629625845711.jpg', b'1', '2024-12-06 20:02:16', NULL, NULL, NULL),
                                                                                                                                                                                                                            (106, 'Levi Ackerman - Attack on Titan - LX Studio', 10500000, 2, 3, 28, 'Nhựa', 16, 'LX Studio', '2024', '- Tên nhân vật: Levi Ackerman\r\n- Studio sản xuất: LX Studio\r\n- Kích thước:\r\n+ 1/3: H62 x W39 x D30cm\r\n+ 1/1: H186 x W117 x D90cm', 'img-859188399034989073.jpg', b'1', '2024-12-06 20:10:29', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
                                    `productId` bigint(20) NOT NULL,
                                    `categoryId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`productId`, `categoryId`) VALUES
                                                               (22, 1),
                                                               (23, 3),
                                                               (24, 1),
                                                               (25, 12),
                                                               (26, 4),
                                                               (27, 4),
                                                               (28, 1),
                                                               (29, 12),
                                                               (30, 12),
                                                               (31, 2),
                                                               (32, 2),
                                                               (33, 2),
                                                               (34, 7),
                                                               (36, 7),
                                                               (47, 14),
                                                               (55, 13),
                                                               (58, 3),
                                                               (60, 13),
                                                               (62, 3),
                                                               (93, 3),
                                                               (94, 1),
                                                               (95, 14),
                                                               (96, 4),
                                                               (97, 15),
                                                               (98, 1),
                                                               (99, 4),
                                                               (100, 15),
                                                               (101, 4),
                                                               (103, 1),
                                                               (104, 12),
                                                               (105, 3),
                                                               (106, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
                                  `id` bigint(20) NOT NULL,
                                  `userId` bigint(20) NOT NULL,
                                  `productId` bigint(20) NOT NULL,
                                  `ratingScore` tinyint(4) NOT NULL,
                                  `content` text NOT NULL,
                                  `isShow` bit(1) NOT NULL,
                                  `createdAt` datetime NOT NULL,
                                  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
                        `id` bigint(20) NOT NULL,
                        `username` varchar(25) NOT NULL,
                        `password` varchar(32) NOT NULL,
                        `fullname` varchar(50) NOT NULL,
                        `email` varchar(50) NOT NULL,
                        `phoneNumber` varchar(11) NOT NULL,
                        `gender` bit(1) NOT NULL,
                        `address` varchar(200) NOT NULL,
                        `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `email`, `phoneNumber`, `gender`, `address`, `role`) VALUES
                                                                                                                       (1, 'user1', '202CB962AC59075B964B07152D234B70', 'Dunn Mcpherson', 'dunnmcpherson@recrisys.com', '0989894900', b'0', '8 Virginia Place, Troy, Norway', 'ADMIN'),
                                                                                                                       (2, 'user2', '202CB962AC59075B964B07152D234B70', 'Foreman Carter', 'foremancarter@recrisys.com', '0993194154', b'0', '28 Richardson Street, Layhill, Netherlands', 'EMPLOYEE'),
                                                                                                                       (3, 'user3', '202CB962AC59075B964B07152D234B70', 'Felecia Cabrera', 'feleciacabrera@recrisys.com', '0930174351', b'1', '41 Linden Street, Slovan, S. Georgia and S. Sandwich Isls.', 'EMPLOYEE'),
                                                                                                                       (4, 'user4', '202CB962AC59075B964B07152D234B70', 'Juliette Mcdowell', 'juliettemcdowell@recrisys.com', '0911925643', b'1', '5 Schenck Court, Dana, Cyprus', 'CUSTOMER'),
                                                                                                                       (5, 'user5', '202CB962AC59075B964B07152D234B70', 'Vilma Spencer', 'vilmaspencer@recrisys.com', '0987509391', b'1', '5 Pooles Lane, Allentown, Zambia', 'CUSTOMER');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_item`
--

CREATE TABLE `wishlist_item` (
                                 `id` bigint(20) NOT NULL,
                                 `userId` bigint(20) NOT NULL,
                                 `productId` bigint(20) NOT NULL,
                                 `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
    ADD PRIMARY KEY (`id`),
    ADD KEY `idx_cart_user` (`userId`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `uq_cartId_productId` (`cartId`,`productId`),
    ADD KEY `idx_cart_item_cart` (`cartId`),
    ADD KEY `idx_cart_item_product` (`productId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
    ADD PRIMARY KEY (`id`),
    ADD KEY `idx_orders_user` (`userId`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
    ADD PRIMARY KEY (`id`),
    ADD KEY `idx_order_item_orders` (`orderId`),
    ADD KEY `idx_order_item_product` (`productId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
    ADD PRIMARY KEY (`productId`,`categoryId`),
    ADD KEY `idx_product_category_product` (`productId`),
    ADD KEY `idx_product_category_category` (`categoryId`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
    ADD PRIMARY KEY (`id`),
    ADD KEY `idx_product_review_user` (`userId`),
    ADD KEY `idx_product_review_product` (`productId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `uq_username` (`username`),
    ADD UNIQUE KEY `uq_email` (`email`),
    ADD UNIQUE KEY `uq_phoneNumber` (`phoneNumber`);

--
-- Indexes for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `uq_userId_productId` (`userId`,`productId`),
    ADD KEY `idx_wishlist_item_user` (`userId`),
    ADD KEY `idx_wishlist_item_product` (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
    ADD CONSTRAINT `fk_cart_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
    ADD CONSTRAINT `fk_cart_item_cart` FOREIGN KEY (`cartId`) REFERENCES `cart` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
    ADD CONSTRAINT `fk_cart_item_product` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
    ADD CONSTRAINT `fk_orders_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
    ADD CONSTRAINT `fk_order_item_orders` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT `fk_order_item_product` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
    ADD CONSTRAINT `fk_product_category_category` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT `fk_product_category_product` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_review`
--
ALTER TABLE `product_review`
    ADD CONSTRAINT `fk_product_review_product` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT `fk_product_review_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
    ADD CONSTRAINT `fk_wishlist_item_product` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT `fk_wishlist_item_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
