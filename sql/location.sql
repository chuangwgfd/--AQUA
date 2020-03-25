-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 
-- 伺服器版本： 10.4.10-MariaDB
-- PHP 版本： 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `aqua`
--

-- --------------------------------------------------------

--
-- 資料表結構 `location`
--

CREATE TABLE `location` (
  `LocationID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地點編號',
  `LocationName` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地點名稱',
  `LocationArea` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地點區域',
  `Locationlevel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地點難度',
  `Satisfaction` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '滿意度',
  `Locationdescribe` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地點描述',
  `Transportation` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '交通資訊',
  `noted` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '備註',
  `Longitude` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '經度',
  `Latitude` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '緯度',
  `images` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '圖片URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `location`
--

INSERT INTO `location` (`LocationID`, `LocationName`, `LocationArea`, `Locationlevel`, `Satisfaction`, `Locationdescribe`, `Transportation`, `noted`, `Longitude`, `Latitude`, `images`) VALUES
('L0001', '石梯坪', '花東海岸', '一般', '★★★★', '觀光區，有完善配套設施，水底生態保存良好 ', '花蓮縣豐濱鄉', '', '121.508838', '23.491361', NULL),
('L0002', '龍洞海洋公園', '東北角', '入門', '★★★★★', '龍洞灣是東北角海岸風景特定區最大港灣，為北部的訓練基地之一。有停車場、商店、潛水店、充氣服務。特殊的海灣地形能抵擋洶湧的潮流，吸引豐富的海洋生態在此棲息發展，清澈的海灣內約有25科80種魚類，以隆頭魚科、蝶魚科、雀鯛科、粗皮鯛科等較多，尤其變色雀鯛出現最為頻繁，往往令前來遊玩的朋友興奮得目不暇給。\r\n', '新北市貢寮區龍洞街', '', '121.917799', '25.118253', NULL),
('L0003', '深澳', '東北角', '一般', '★★★★★', '深澳漁港燈塔下方，冬天潛水時，可常見花枝、筆魚、螃蟹、章魚、紅尾冬、軟絲仔、石斑。', '新北市瑞芳區', '', '121.820648', '25.132564', NULL),
('L0004', '瑞濱', '東北角', '入門', '★★', '入門區', '瑞濱', '', '121.821967', '25.121517', NULL),
('L0005', '鼻頭角', '東北角', '入門', '★★★★', '入門潛點之一，有豐富的生態', '新北市瑞芳區鼻頭路1號', '', '121.923387', '25.128795', NULL),
('L0006', '和美', '東北角', '一般', '★★★★★', '停車方便，有一些熱帶魚、小丑魚，軟珊瑚、金梭魚，基本上安全。', '新北市貢寮區龍洞街1-9號', '', '121.919904', '25.112921', NULL),
('L0007', '卯澳灣', '東北角', '入門', '★★★★', '內灣地形，附近的國小提供付費盥洗，水深約12公尺，有許許多多的小丑魚、海葵。', '新北市貢寮區福連國小旁', '', '121.989376', '25.016551', NULL),
('L0008', '豆腐角', '東北角', '入門', '★★★★★', '宜蘭潛水的訓練基地。停車方便。是個觀光景點。清潔，飲食方便。有很多花枝、章魚、龍蝦、熱帶魚、白帶魚、管口魚、水針', '宜蘭縣蘇澳鎮', '', '121.872439', '24.583533', NULL),
('L0009', '粉鳥林', '東北角', '一般', '★★★★', '位於東澳的小漁港，因為地處偏僻，人煙稀少，有許多大型魚，還有一艘軍艦沈船。', '宜蘭縣蘇澳鎮東澳里', '', '121.842034', '24.497719', NULL),
('L0010', '後壁湖', '墾丁', '入門', '★★★★', '人潮多，須注意核三排水口之強勁水流', '屏東縣恆春鎮大光路', '', '120.745040', '21.945040', NULL),
('L0011', '萬里桐', '墾丁', '一般', '★★★★★', '生態豐富，有小鯨鯊', '屏東縣恆春鎮', '', '120.704733', '21.995766', NULL),
('L0012', '石朗', '綠島', '入門', '★★★★★', '石朗潛水區附近有太平洋黑潮北流通過，潮流比起大白沙要穩定，周邊有著多樣的環狀珊瑚礁，以及各種魚群，有著海底公園的美名，是國際級的潛水天堂，也是綠島最知名、最便利的浮潛地點。在石朗潛水區附近水下11.5米深的地方，有著目前全世界最深的豆丁海馬海底郵筒，寫上一份專屬的防水明信片，親自下水浮潛寄送，感受水下夢幻的海底世界之餘，也向親朋好友傳遞來自深海11米的蔚藍祝福！', '台東縣綠島鄉南寮漁港附近', NULL, '121.474242', '22.655853', NULL),
('L0013', '大白沙', '綠島', '入門', '★★★★★', '大白沙沙灘位在綠島南端突出的西南角，是綠島著名的浮潛地點之一，也是綠島最大、最美麗的沙岸，由珊瑚顆礫及貝殼碎屑所組成的白沙，綿延海岸線數百公尺長，清澈的海水透著柔細的白紗，讓這裡充滿熱帶南方小島的風情。大白沙外海有兩處十分優異的潛水點，分別位於大白沙東測，和離岸距離50~100公尺因為海底羅列三座突起的礁石而聞名的「三塊石」，潛水鑽入礁岩洞內可看見許多美麗的海洋生物棲息。這一帶，火珊瑚生長密度很高，其水螅不慎碰觸會引起灼熱痛感，潛水時須特別小心', '台東縣綠島鄉', NULL, '121.493762', '22.638105', NULL),
('L0014', '柴口', '綠島', '入門', '★★★★', '柴口是每年6-8月強勁的西南風吹臨綠島時，位在避風面的柴口是絕佳潛水區。柴口以壯麗的石珊瑚景觀著稱，海水深淺變化具有層次感，讓人能夠盡情享受瑰麗的海底景觀。近海與大礁石間的潮間帶，海域變化層次多，海底礁石林立，近岸海底和大礁石間為礁岩平台地形，覆蓋在礁石上以團塊和表覆形珊瑚群體等石珊瑚種類為主。', '台東縣綠島鄉', NULL, '121.482537', '22.677284', NULL),
('L0015', '漁人舊部落港灣', '蘭嶼', '入門', '★★★★', '在漂流木餐廳底下的漁人部落港灣，是當地小孩的戲水區。往外踢，可以進入10多米的海域，也是當地人常下水抓魚的海域。唯一要注意的是，港灣斜坡濕滑，不要滑倒了。', '台東縣蘭嶼鄉漁人部落', '飛魚季期間禁止在這潛水／不建議在此穿比基尼', '121.542552', '22.025712', NULL),
('L0016', '椰油斷層', '蘭嶼', '一般', '★★★★★', '從椰油舊部落灘頭下水，一路往外踢。當深度來到22米左右時，原來的緩坡地形會突然變成陡降坡，這裡就是椰油斷層的起點。據聞斷層最深到百米，不過當你來到斷層起點時，也代表已經離岸超過百米，小心海流。', '台東縣蘭嶼鄉椰油部落', '飛魚季期間禁止在這潛水／不建議在此穿比基尼', '121.510916', '22.051206', NULL),
('L0017', '朗島秘境', '蘭嶼', '入門', '★★★★★', '與東清秘境一樣，從馬路上看不到這個點。與外面潮水隔開來的朗島秘境可以說是天然的游泳池，原本是當地人的私密景點，但這幾年也越來越多遊客。秘境終年無浪，因為有淡水注入，所以水溫會比較低。底下七、八米深有個洞穴可以往外鑽，是個初學者也可勝任的入門洞穴。', '台東縣蘭嶼鄉朗島部落', '不建議在此穿比基尼', '121.522562', '22.081276', NULL),
('L0018', '開元港藍洞', '蘭嶼', '進階', '★★★★', '在開元舊港外，青蛙石旁的海底藍洞，曾被國外網站評為值得自由潛水員造訪的潛點。青蛙石即港外那塊大礁岩，從舊港口下水往青蛙石左側前進，到了左側岩石後就可以在附近海底找到。藍洞總共有3個開口，在水深13-16米的位置，三個出口彼此相通成T字型。洞內寬敞，長度約10米，若不停留，約60秒即可以完成鑽洞。\r\n\r\n因為藍洞靠近舊港航道，下水記得帶浮球，並避開客船出入港的時間，以免造成船家困擾。', '台東縣蘭嶼鄉椰油部落', '先確認船舶進港時間研擬潛水計劃', '121.508041', '22.056521', NULL),
('L0019', '情人洞', '蘭嶼', '進階', '★★★★', '著名的東清情人洞，其底下的海域也是十分精采。洞內水深16-22米，兩側的峭壁垂直伸入水底，形成一種海底大峽谷的壯觀感。不過因為入水點隱密、不易行走，而上下岸也需要技巧，因此這裡甚少人造訪。另外，這裡往外一點就可以輕易抵達30米以上的深度，但強流也是不可避免。', '台東縣蘭嶼鄉東清部落', '需要熟人帶，不建議獨自下此點。', '121.574336', '22.061840', NULL),
('L0020', '八代灣沈船', '蘭嶼', '進階', '★★★★', '1983年，一艘韓國貨輪駛經小蘭嶼，因為天氣惡劣，船隻觸礁進水。最後船長將船開到八代灣外，讓貨輪在此處緩緩沉沒（為了保留未來打撈的可能性）。35個年頭過去，如今沉船斷成兩截，巨大的船身成為海底生物的家園，也成了蘭嶼最具代表性的潛點。\r\n\r\n沈船在40米深沙地上，必須要下潛到22米處才能摸到船艙上緣（最高點的船桅約20米）。加上海流一向是這個潛點的特色，因此對於自由潛水員來說，是個難度極高的潛點。\r\n\r\n除了沉船本身難以親近，由於這裡曾發生自由潛水意外，當地人一聽到有人想去那自潛就眉頭深鎖，因此也不容意找到願意搭載自潛員的船。但如果你若能克服種種條件，當你跳入海中見到那巨大的沉船身影時，會覺得一切都值得。', '台東縣蘭嶼鄉紅頭部落', '飛魚季期間禁止在這潛水', '121.552234', '22.022541', NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LocationID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
