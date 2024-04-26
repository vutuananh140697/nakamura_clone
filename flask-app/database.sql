-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 03:12 PM
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
-- Database: `nakamura`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(0, 'admin', 'pbkdf2:sha256:600000$ax4Rhjvq2OMGwNct$5a0a10c718cf962c6cd118cdace377fd0cab1237fa57c6bea86e63e13357544d');

-- --------------------------------------------------------

--
-- Table structure for table `letters`
--

CREATE TABLE `letters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `title` text NOT NULL,
  `message` longtext NOT NULL,
  `date` date NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `letters`
--

INSERT INTO `letters` (`id`, `name`, `phone`, `title`, `message`, `date`, `email`) VALUES
(1, 'Hoang Thu', '', 'Test', 'Test message', '2024-04-24', 'gordon.maou.sama@gmail.com'),
(2, 'Thu', '0912475610', 'Test 2', 'hello', '2024-04-24', 'thu.phd.truong@gmail.com'),
(3, 'Trương Hoàng Thu', '0912475610', 'Test', 'test', '2024-04-24', 'thu.phd.truong@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `content` longtext NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `cover`, `content`, `description`, `date`) VALUES
(4, 'ウサチロ極サセホ球般ウサチロ', '6b9663a500fb4df5b86630a6f711fddd.png', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas dui id ornare arcu odio ut sem. Cras ornare arcu dui vivamus arcu felis bibendum ut. Porttitor leo a diam.</strong></p><p>&nbsp;</p><p>Porttitor rhoncus dolor purus non enim praesent elementum. Eget dolor morbi non arcu risus quis varius. Posuere ac ut consequat semper viverra nam libero. In ornare quam viverra orci sagittis eu. Tristique risus nec feugiat in fermentum posuere urna nec. Tempus quam pellentesque nec nam aliquam sem et. Convallis a cras semper auctor neque vitae tempus quam pellentesque. Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque. Sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. Sit amet porttitor eget dolor morbi non arcu risus. Justo eget magna fermentum iaculis eu non diam phasellus. Sit amet luctus venenatis lectus magna fringilla. Neque vitae tempus quam pellentesque nec nam.<br><br>Tellus orci ac auctor augue mauris augue neque gravida. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum sociis. Id eu nisl nunc mi ipsum faucibus vitae aliquet. Duis convallis convallis tellus id interdum velit laoreet id. Vulputate mi sit amet mauris commodo quis. Semper viverra nam libero justo laoreet sit amet. Eget nullam non nisi est sit. Nibh cras pulvinar mattis nunc sed blandit libero. Ac felis donec et odio pellentesque diam volutpat. Quis varius quam quisque id diam vel quam elementum. Felis bibendum ut tristique et egestas quis ipsum suspendisse ultrices. Id diam vel quam elementum pulvinar etiam non. Non consectetur a erat nam at lectus urna duis convallis.</p><p>&nbsp;</p><blockquote><p><strong>The greatest glory in living lies not in never falling, but in rising every time we fall.</strong></p><ul><li><strong>Nelson Mandela</strong></li></ul></blockquote>', '極サセホ球般ウサチロ佐発カ地並ホ推発だょ齢終ツ向朝ドさや基委くぽ趣6全刊ゆ視1代ロヱケオ影載ヱケ', '2024-04-21'),
(5, 'やる気が出ない気力が湧かないそんなとき', 'ca980c78dfc54672a362ed826d20d1e2.jpg', '<p><strong>どうしてもやる気が出ない…そんなことってありますよね。そして対処方法も巷にはいろいろな情報が出回っています。</strong></p><p>&nbsp;</p><p>やる気のないときはどうしたらいいか。</p><p>・リラックスする<br>・おいしいものを食べる<br>・ゆっくりお風呂に入る<br>・とりあえず少しだけ手をつける<br>・目標を小さくする（分割する）</p><p>などなど…。でもこれ、私には全然効きません。</p><p>そこで、こんな方法をとっています。</p><p>1寝られるだけ寝る（無意識に時間をあげる）<br>2会いたいのになかなか会えなかった友人と会う</p><p>ぜひお試しください。</p>', 'どうしてもやる気が出ない…そんなことってありますよね。そして対処方法も巷にはいろいろな情報が出回っています。', '2024-04-22'),
(6, '法人化の疑問は法人化相談カウンターまで', 'f99c797311034fb2b4b6b6d62cbdc530.jpg', '<p><strong>◆当カウンター特徴</strong></p><ol><li>専任の相談スタッフによる<strong>完全無料</strong>の個別相談</li><li>あなたに合った法人化の進め方をご提案<br>→法人化の基本的な知識、法人化後の税額シミュレーション、設立手続き方法などまるっとサポート</li><li>必要に応じてあなたに合った税理士もご紹介<br>→業種やご相談内容に応じてあなたにあった税理士をご紹介</li><li>&nbsp;</li></ol><p><strong>◆ご利用の流れ</strong></p><ol><li>まずはこちらのメール内リンクからご予約</li><li>オンラインにて当日面談</li></ol><p>確定申告を終え、法人化の相談をされる方も増えています。<br>是非この機会に法人化相談＆税理士紹介カウンターをご利用ください。</p><p>注意<br>※窓口は事前予約制です。<br>※相談スタッフは税理士ではありません。<br>※法人化後の税額シミュレーションはfreeeの認定税理士が実施いたします。</p>', 'freeeでは期間限定で、法人化相談＆税理士紹介を完全無料でお受けしております。', '2024-04-22'),
(7, '泉佐野市羽倉崎上町２丁目、日本のゲストルーム', '9bb24f12a3f24af19c1eb57ca8924afb.jpg', '<h2>宿泊先について</h2><p>大阪関西国際空港トラム3駅、南海トラムブクラザキ駅徒歩5分の所にあり、夜遅くに到着する観光客に早めのフライトフライトで最もおすすめです。<br><br>Rinka Outlet Plaza、Flying Sky Natural Hot Spring、Rinku Park、自転車で8分（ホームステイに4台分の自転車、先着順）<br><br>大阪関西空港では空港送迎を提供しています<br>⚠️空港送迎の場合は、ご予約の際に直接空港送迎をご予約ください<br><br>*無料Wi - Fi、駐車場、インターネットテレビ、冷蔵庫、トースター、電子レンジ、炊飯器、給湯器、セルフサービスの洗濯機、キッチン用品、洗面用品は完備されています。家の中の消耗品は無料で使用できます<br>お⚠️ 車でお越しのお客様は、1グループ1台分の駐車スペースをご用意しております。駐車場が必要な場合は事前にご予約ください。ホームステイの駐車場は比較的小さく、大型車でお越しのお客様は羽倉崎駅の駐車場に駐車でき、500円でご返却いたします。<br>B&amp;Bには日当たりの良い中庭があり、アフタヌーンティーやバーベキューを楽しめます。<br>バーベキューをご⚠️希望のお客様は、事前のご予約が必要で、当日のご予約は受け付けておりません。<br><br>B&amp;B周辺のショッピング<br>ファミリーマート4分、イオンスーパー7分、ファミリーモール8分、コーヒーショップ7分、ドラッグストア8分、多くのレストラン、バーベキュー、寿司、カレー、インド料理、ポークステーキ、うどん、大阪おしょうなど！<br><br>ホスティングをお待ちしております</p><h3>お部屋</h3><p>このホームステイには4つの独立した独立した寝室があります。2つは1階、2つは2階にあります。外国人の友人に愛されている2つの和室。<br><br>部屋には大きな光、小さな庭園、バーベキューができ、ゆったりとしたアフタヌーンティーを楽しむことができます。<br><br>1つのバスルーム、1階に1つ（バスルームは雨のみ使用できます）<br>バスルームは2つ、1階に1つ、2階に1つのバスルームがあります。</p>', '2寝室ク⁠イ⁠ー⁠ン⁠ベ⁠ッ⁠ド1⁠台ゲスト専用バスルーム', '2024-04-23');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `message` longtext NOT NULL,
  `category` varchar(30) NOT NULL,
  `cover` varchar(50) DEFAULT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `message`, `category`, `cover`, `description`) VALUES
(2, 'Y.S.様', '<p>私は中村さんを推薦いたします。私は自分の思っている事を文書にするのが、恥ずかしく常になんとなく、はぐらかして生きてきました。 今回中村さんと 自己紹介シートの作成を一緒にさせていただきまして、自分が実際何 を考えているか、なんのために働き、そしてなんのために人生を歩んでいるかの を初めて認識した気がします。 漠然と考えていた事を明確に文章に落とし込んでくれる中村さんはちょっとゾク っとするくらいで、明確かつ伝わりやすい文章に仕上げていただきました。 いつも笑顔で全てを包み込んでくれる中村さんはライターとしても一流ですし、 人が考えている事を引き出す天才でもあると思います。 私が中村さんを推薦したい方は常に、何かと闘い続け目的ではなく手段ばかりを 考えている私のような方です。 いくら小手先が上手くても目的や目標に向かっていく方向が間違っていたら、い つまで経っても辿りつきません。方向を修正したり、または今進んでいる道は間 違えてではないんだと認識したり、自分自身と向き合う貴重な時間を提供してく れます。その貴重な時間が終わると、自分の思いが入ったシートが手元に届くこ のサービスは是非いろんな人に体験していただきたいです。 中村さん本当に素晴らしいサービスをありがとうございました！！</p>', 'writing', 'b87ef11c71ba4519807bd287667926e1.png', '私は中村さんを推薦いたします。私は自分の思っている事を文書にするのが、恥ずかしく常になんとなく、はぐらかして生きてきました。 '),
(3, '30代女性', '<p>書きたいことはあるのに、実際に書くとなるとどうしたらいいか分からない。 書いても伝わらない。 そんな思いで、ずっと悩みながら集客のためにブログを書いていました。 中村先生は、丁寧に私の思いを引き出してくださり、とても分かりやすい文章にまとめてくださったので感動しました。 これからは、教えていただいた、伝わる、分かりやすい文章を書くコツを意識して、楽しくブログを書いていきたいと思います。</p>', 'coach', 'ace3dffba2fe4baaa7cbec4a242168d1.png', '書きたいことはあるのに、実際に書くとなるとどうしたらいいか分からない。 書いても伝わらない。 そんな思いで、ずっと悩みながら集客のためにブログを書いていました。 '),
(4, '弁護士事務所・R様', '<p style=\"text-align:justify;\"><span style=\"background-color:transparent;color:#000000;\">相続に関わる記事をお願いしています。法改正があったりする場合には、中村さんは大元の六法全書を確認し、さらに所管省庁からの通達内容・日付まで確認してから記事を書かれるので、非常にしっかりとした内容を書いてくれます。いつも安心して任せることができました。なによりすごいと思うのは、一般の方には馴染みのない法律に関することを、わかりやすくかみ砕いて書いてくれることです。おかげでコラム担当者が中村さんになってから、</span></p><p style=\"text-align:justify;\"><span style=\"background-color:transparent;color:#000000;\">当事務所へのお問い合わせ件数が多くなりました。</span></p>', 'writing', 'cf9d065748544ff69ac571ae87188ea4.png', '相続に関わる記事をお願いしています。法改正があったりする場合には、中村さんは大元の六法全書を確認し、さらに所管省庁からの通達内容・日付まで確認してから記事を書かれるので、非常にしっかりとした内容を書いてくれます。'),
(6, '30代女性', '<p><span style=\"background-color:transparent;color:#000000;\">学生時代、中村先生の授業だったらもっと国語が好きだったかも！と思いました。“思い”を文字にして書くことで、その情景が思い浮かぶような文章になるという学びが、一番心に残りました。</span></p>', 'coach', '6a4339edbeaa44cbb8a53d18c23090b2.png', '学生時代、中村先生の授業だったらもっと国語が好きだったかも！と思いました。'),
(7, 'M.H.様', '<p><span style=\"background-color:transparent;color:#000000;\">補助金申請の事業計画や必要性についてのライティングでご協力いただいております。中村さんはこちらが渡す申請者からの資料に加えて、独自に申請者の業界の成長見込みや立地条件などを調査して、SWOT分析も丁寧に書いてくれるので、とても助かっています。中村さんに執筆を依頼してから、元請け会社からの依頼が増えています。先日は元請け会社に中村さんにご協力いただいた申請書ライティングを１件提出したその日に「資料が少ないイレギュラーなケースですが、調査ライティングをぜひお願いしたい」と追加発注がありました。「その会社の人になり切って書く」という中村さんのライティングは、本当に素晴らしいと思います。</span></p>', 'writing', '4fb1e1e1ed6143cb87895becb88269b5.png', '補助金申請の事業計画や必要性についてのライティングでご協力いただいております。中村さんはこちらが渡す申請者からの資料に加えて、独自に申請者の業界の成長見込みや立地条件などを調査して、SWOT分析も丁寧に書いてくれるので、とても助かっています。'),
(8, '60代女性', '<p style=\"text-align:justify;\"><span style=\"background-color:transparent;color:#000000;\">文章を書く時、どうしても自己本意で表面的になりがちです。結果、相手の心まで届かない。</span></p><p style=\"text-align:justify;\"><span style=\"background-color:transparent;color:#000000;\">それを自分の気持ちの底の思いまで掘り下げて、感動的な文章に変えてくれます。ホントびっくりします。</span></p>', 'coach', '221bbe95e32b4e728caa3ee3cfbe4748.png', '文章を書く時、どうしても自己本意で表面的になりがちです。結果、相手の心まで届かない。  それを自分の気持ちの底の思いまで掘り下げて、感動的な文章に変えてくれます。ホントびっくりします。'),
(9, '50代男性', '<p style=\"text-align:justify;\"><span style=\"background-color:transparent;color:#000000;\">「ああ、おもしろかった～！」これは、Zoomを切って、思わず出た、僕の第一声です。</span></p><p style=\"text-align:justify;\"><span style=\"background-color:transparent;color:#000000;\">ゲラゲラ笑う方の「面白い」ではなく、興味深かったの方の「面白い」だったんです。</span></p><p style=\"text-align:justify;\"><span style=\"background-color:transparent;color:#000000;\">先生は、上品かつフレンドリーでした。すごく話しやすかった。だから、すごく楽しかったです。</span></p><p style=\"text-align:justify;\"><span style=\"background-color:transparent;color:#000000;\">目的の「ワンランク上の文章が書けるようになりたい」は、おそらく達成されます！</span></p><p style=\"text-align:justify;\"><span style=\"background-color:transparent;color:#000000;\">自信があります。その自信も、先生からいただきました。</span></p><p style=\"text-align:justify;\"><span style=\"background-color:transparent;color:#000000;\">目から鱗が6枚くらい落ちました。衝撃の教えと、意外な気づき、なるほど～というテクニックをいただいたんです。</span></p><p style=\"text-align:justify;\"><span style=\"background-color:transparent;color:#000000;\">基本的なことも確認できました。</span></p><p style=\"text-align:justify;\"><span style=\"background-color:transparent;color:#000000;\">マンツーマン指導ってのが、めっちゃイイですね。自分の文章に、直接の指導ですし、さらには、僕の性格や状況にまで指導をカスタマイズしてくれるんです。</span></p><p style=\"text-align:justify;\"><span style=\"background-color:transparent;color:#000000;\">書き直したnote記事を紹介したいくらいです。</span></p><p style=\"text-align:justify;\"><span style=\"background-color:transparent;color:#000000;\">先生、ありがとうございました！</span></p>', 'coach', '7a1c041eb6df4c6080c7d280b599ff5e.png', '「ああ、おもしろかった～！」これは、Zoomを切って、思わず出た、僕の第一声です。  ゲラゲラ笑う方の「面白い」ではなく、興味深かったの方の「面白い」だったんです。'),
(10, '40代女性', '<p><span style=\"background-color:transparent;color:#000000;\">先生が文章を書くことの意義を教えてくださり、よく理解できました。私にとって、発見の多い授業でした。また、先生の添削により、読み手が、わかりやすく、共感することができる文章を完成させることができました。一時間ほどで長い文章をまとめることが出来、先生のお力に驚きました。苦手としていた文章づくりに楽しさを見出すことが出来、とても楽しい時間を過ごしました。ありがとうございました。</span></p>', 'coach', 'e7b9ae3f63714b7c8fd171a2f158a5c2.png', '先生が文章を書くことの意義を教えてくださり、よく理解できました。私にとって、発見の多い授業でした。また、先生の添削により、読み手が、わかりやすく、共感することができる文章を完成させることができました。');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `email` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`email`, `date`, `id`) VALUES
('gordon.maou.sama@gmail.com', '2024-04-25', 1),
('thu.phd.truong@gmail.com', '2024-04-25', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `letters`
--
ALTER TABLE `letters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
