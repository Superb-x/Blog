/*
Navicat SQLite Data Transfer

Source Server         : db
Source Server Version : 30808
Source Host           : :0

Target Server Type    : SQLite
Target Server Version : 30808
File Encoding         : 65001

Date: 2017-07-14 14:10:16
*/

PRAGMA foreign_keys = OFF;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS "main"."auth_group";
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS "main"."auth_group_permissions";
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS "main"."auth_permission";
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO "main"."auth_permission" VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO "main"."auth_permission" VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO "main"."auth_permission" VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO "main"."auth_permission" VALUES (4, 2, 'add_permission', 'Can add permission');
INSERT INTO "main"."auth_permission" VALUES (5, 2, 'change_permission', 'Can change permission');
INSERT INTO "main"."auth_permission" VALUES (6, 2, 'delete_permission', 'Can delete permission');
INSERT INTO "main"."auth_permission" VALUES (7, 3, 'add_group', 'Can add group');
INSERT INTO "main"."auth_permission" VALUES (8, 3, 'change_group', 'Can change group');
INSERT INTO "main"."auth_permission" VALUES (9, 3, 'delete_group', 'Can delete group');
INSERT INTO "main"."auth_permission" VALUES (10, 4, 'add_user', 'Can add user');
INSERT INTO "main"."auth_permission" VALUES (11, 4, 'change_user', 'Can change user');
INSERT INTO "main"."auth_permission" VALUES (12, 4, 'delete_user', 'Can delete user');
INSERT INTO "main"."auth_permission" VALUES (13, 5, 'add_contenttype', 'Can add content type');
INSERT INTO "main"."auth_permission" VALUES (14, 5, 'change_contenttype', 'Can change content type');
INSERT INTO "main"."auth_permission" VALUES (15, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO "main"."auth_permission" VALUES (16, 6, 'add_session', 'Can add session');
INSERT INTO "main"."auth_permission" VALUES (17, 6, 'change_session', 'Can change session');
INSERT INTO "main"."auth_permission" VALUES (18, 6, 'delete_session', 'Can delete session');
INSERT INTO "main"."auth_permission" VALUES (19, 7, 'add_category', 'Can add category');
INSERT INTO "main"."auth_permission" VALUES (20, 7, 'change_category', 'Can change category');
INSERT INTO "main"."auth_permission" VALUES (21, 7, 'delete_category', 'Can delete category');
INSERT INTO "main"."auth_permission" VALUES (22, 8, 'add_post', 'Can add post');
INSERT INTO "main"."auth_permission" VALUES (23, 8, 'change_post', 'Can change post');
INSERT INTO "main"."auth_permission" VALUES (24, 8, 'delete_post', 'Can delete post');
INSERT INTO "main"."auth_permission" VALUES (25, 9, 'add_tag', 'Can add tag');
INSERT INTO "main"."auth_permission" VALUES (26, 9, 'change_tag', 'Can change tag');
INSERT INTO "main"."auth_permission" VALUES (27, 9, 'delete_tag', 'Can delete tag');
INSERT INTO "main"."auth_permission" VALUES (28, 10, 'add_comment', 'Can add comment');
INSERT INTO "main"."auth_permission" VALUES (29, 10, 'change_comment', 'Can change comment');
INSERT INTO "main"."auth_permission" VALUES (30, 10, 'delete_comment', 'Can delete comment');
INSERT INTO "main"."auth_permission" VALUES (31, 1, 'view_logentry', 'Can view log entry');
INSERT INTO "main"."auth_permission" VALUES (32, 2, 'view_permission', 'Can view permission');
INSERT INTO "main"."auth_permission" VALUES (33, 3, 'view_group', 'Can view group');
INSERT INTO "main"."auth_permission" VALUES (34, 4, 'view_user', 'Can view user');
INSERT INTO "main"."auth_permission" VALUES (35, 5, 'view_contenttype', 'Can view content type');
INSERT INTO "main"."auth_permission" VALUES (36, 6, 'view_session', 'Can view session');
INSERT INTO "main"."auth_permission" VALUES (37, 7, 'view_category', 'Can view category');
INSERT INTO "main"."auth_permission" VALUES (38, 8, 'view_post', 'Can view post');
INSERT INTO "main"."auth_permission" VALUES (39, 9, 'view_tag', 'Can view tag');
INSERT INTO "main"."auth_permission" VALUES (40, 10, 'view_comment', 'Can view comment');
INSERT INTO "main"."auth_permission" VALUES (41, 11, 'add_bookmark', 'Can add Bookmark');
INSERT INTO "main"."auth_permission" VALUES (42, 11, 'change_bookmark', 'Can change Bookmark');
INSERT INTO "main"."auth_permission" VALUES (43, 11, 'delete_bookmark', 'Can delete Bookmark');
INSERT INTO "main"."auth_permission" VALUES (44, 12, 'add_usersettings', 'Can add User Setting');
INSERT INTO "main"."auth_permission" VALUES (45, 12, 'change_usersettings', 'Can change User Setting');
INSERT INTO "main"."auth_permission" VALUES (46, 12, 'delete_usersettings', 'Can delete User Setting');
INSERT INTO "main"."auth_permission" VALUES (47, 13, 'add_userwidget', 'Can add User Widget');
INSERT INTO "main"."auth_permission" VALUES (48, 13, 'change_userwidget', 'Can change User Widget');
INSERT INTO "main"."auth_permission" VALUES (49, 13, 'delete_userwidget', 'Can delete User Widget');
INSERT INTO "main"."auth_permission" VALUES (50, 14, 'add_log', 'Can add log entry');
INSERT INTO "main"."auth_permission" VALUES (51, 14, 'change_log', 'Can change log entry');
INSERT INTO "main"."auth_permission" VALUES (52, 14, 'delete_log', 'Can delete log entry');
INSERT INTO "main"."auth_permission" VALUES (53, 11, 'view_bookmark', 'Can view Bookmark');
INSERT INTO "main"."auth_permission" VALUES (54, 12, 'view_usersettings', 'Can view User Setting');
INSERT INTO "main"."auth_permission" VALUES (55, 13, 'view_userwidget', 'Can view User Widget');
INSERT INTO "main"."auth_permission" VALUES (56, 14, 'view_log', 'Can view log entry');
INSERT INTO "main"."auth_permission" VALUES (57, 15, 'add_revision', 'Can add revision');
INSERT INTO "main"."auth_permission" VALUES (58, 15, 'change_revision', 'Can change revision');
INSERT INTO "main"."auth_permission" VALUES (59, 15, 'delete_revision', 'Can delete revision');
INSERT INTO "main"."auth_permission" VALUES (60, 16, 'add_version', 'Can add version');
INSERT INTO "main"."auth_permission" VALUES (61, 16, 'change_version', 'Can change version');
INSERT INTO "main"."auth_permission" VALUES (62, 16, 'delete_version', 'Can delete version');
INSERT INTO "main"."auth_permission" VALUES (63, 15, 'view_revision', 'Can view revision');
INSERT INTO "main"."auth_permission" VALUES (64, 16, 'view_version', 'Can view version');
INSERT INTO "main"."auth_permission" VALUES (65, 17, 'view_tag', 'Can view tag');
INSERT INTO "main"."auth_permission" VALUES (66, 18, 'view_category', 'Can view category');
INSERT INTO "main"."auth_permission" VALUES (67, 19, 'view_post', 'Can view post');
INSERT INTO "main"."auth_permission" VALUES (68, 18, 'add_category', 'Can add category');
INSERT INTO "main"."auth_permission" VALUES (69, 18, 'change_category', 'Can change category');
INSERT INTO "main"."auth_permission" VALUES (70, 18, 'delete_category', 'Can delete category');
INSERT INTO "main"."auth_permission" VALUES (71, 19, 'add_post', 'Can add post');
INSERT INTO "main"."auth_permission" VALUES (72, 19, 'change_post', 'Can change post');
INSERT INTO "main"."auth_permission" VALUES (73, 19, 'delete_post', 'Can delete post');
INSERT INTO "main"."auth_permission" VALUES (74, 17, 'add_tag', 'Can add tag');
INSERT INTO "main"."auth_permission" VALUES (75, 17, 'change_tag', 'Can change tag');
INSERT INTO "main"."auth_permission" VALUES (76, 17, 'delete_tag', 'Can delete tag');
INSERT INTO "main"."auth_permission" VALUES (77, 20, 'add_about', 'Can add 关于');
INSERT INTO "main"."auth_permission" VALUES (78, 20, 'change_about', 'Can change 关于');
INSERT INTO "main"."auth_permission" VALUES (79, 20, 'delete_about', 'Can delete 关于');
INSERT INTO "main"."auth_permission" VALUES (80, 20, 'view_about', 'Can view 关于');
INSERT INTO "main"."auth_permission" VALUES (81, 21, 'add_friendsites', 'Can add 友情链接');
INSERT INTO "main"."auth_permission" VALUES (82, 21, 'change_friendsites', 'Can change 友情链接');
INSERT INTO "main"."auth_permission" VALUES (83, 21, 'delete_friendsites', 'Can delete 友情链接');
INSERT INTO "main"."auth_permission" VALUES (84, 22, 'add_pageview', 'Can add 运营统计');
INSERT INTO "main"."auth_permission" VALUES (85, 22, 'change_pageview', 'Can change 运营统计');
INSERT INTO "main"."auth_permission" VALUES (86, 22, 'delete_pageview', 'Can delete 运营统计');
INSERT INTO "main"."auth_permission" VALUES (87, 23, 'add_visitorrecord', 'Can add 访问记录');
INSERT INTO "main"."auth_permission" VALUES (88, 23, 'change_visitorrecord', 'Can change 访问记录');
INSERT INTO "main"."auth_permission" VALUES (89, 23, 'delete_visitorrecord', 'Can delete 访问记录');
INSERT INTO "main"."auth_permission" VALUES (90, 21, 'view_friendsites', 'Can view 友情链接');
INSERT INTO "main"."auth_permission" VALUES (91, 22, 'view_pageview', 'Can view 运营统计');
INSERT INTO "main"."auth_permission" VALUES (92, 23, 'view_visitorrecord', 'Can view 访问记录');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS "main"."auth_user";
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "username" varchar(150) NOT NULL UNIQUE);

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO "main"."auth_user" VALUES (1, 'pbkdf2_sha256$36000$OxSASNjSgkEb$L6eF1j0JToPo186QecAuotuNhShGoJ0AOgt0PafJqZU=', '2017-07-04 05:31:32.936605', 1, '', '', '172564615@qq.com', 1, 1, '2017-07-03 05:28:52.820821', 'liuxianglin');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS "main"."auth_user_groups";
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"));

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS "main"."auth_user_user_permissions";
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for blog_about
-- ----------------------------
DROP TABLE IF EXISTS "main"."blog_about";
CREATE TABLE "blog_about" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(200) NOT NULL, "body" text NOT NULL, "create_time" datetime NOT NULL, "modified_time" datetime NOT NULL, "is_pub" bool NOT NULL, "veiws" integer unsigned NOT NULL);

-- ----------------------------
-- Records of blog_about
-- ----------------------------
INSERT INTO "main"."blog_about" VALUES (1, '关于我', '大学专业是通信工程，偏底层的东西，学过C/C++，做过单片机，写过汇编。现在却成了个前端程序员，大学的时候有编程基础，加上自己学的Python，开始琢磨着自己写个博客，说干就干，前前后后用了差不多一个月，从最开始跟着Django官方文档学习，到部署上线差不多花了一个月时间。', '2017-07-11 11:22:00', '2017-07-11 11:22:00', 1, 0);

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS "main"."blog_category";
CREATE TABLE "blog_category" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL);

-- ----------------------------
-- Records of blog_category
-- ----------------------------
INSERT INTO "main"."blog_category" VALUES (1, '公告');

-- ----------------------------
-- Table structure for blog_friendsites
-- ----------------------------
DROP TABLE IF EXISTS "main"."blog_friendsites";
CREATE TABLE "blog_friendsites" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "site_name" varchar(20) NOT NULL, "site_url" varchar(200) NOT NULL, "admin_name" varchar(30) NOT NULL, "admin_contact" varchar(200) NOT NULL, "create_time" datetime NOT NULL, "modified_time" datetime NOT NULL, "is_pub" bool NOT NULL);

-- ----------------------------
-- Records of blog_friendsites
-- ----------------------------

-- ----------------------------
-- Table structure for blog_pageview
-- ----------------------------
DROP TABLE IF EXISTS "main"."blog_pageview";
CREATE TABLE "blog_pageview" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "today_visit" integer unsigned NOT NULL, "create_date" date NOT NULL UNIQUE);

-- ----------------------------
-- Records of blog_pageview
-- ----------------------------
INSERT INTO "main"."blog_pageview" VALUES (1, 1, '2017-07-11');

-- ----------------------------
-- Table structure for blog_post
-- ----------------------------
DROP TABLE IF EXISTS "main"."blog_post";
CREATE TABLE "blog_post" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "body" text NOT NULL, "create_time" datetime NOT NULL, "modified_time" datetime NOT NULL, "excerpt" varchar(200) NOT NULL, "author_id" integer NOT NULL REFERENCES "auth_user" ("id"), "category_id" integer NOT NULL REFERENCES "blog_category" ("id"), "views" integer unsigned NOT NULL, "title" varchar(100) NOT NULL);

-- ----------------------------
-- Records of blog_post
-- ----------------------------
INSERT INTO "main"."blog_post" VALUES (1, '浏阳市为中国湖南省下辖县级市，位于湖南东北部、长沙市东部，毗邻江西省，由长沙地级市代管。浏阳市为较具实力的县市之一，2015年其综合竞争力位居湖南省各县（市）的第2位、全国县域经济百强县（市）的第28位 ，浏阳也是湖南省第6大、全国第51大肉类生产大县市。2014年GDP总量1,013亿元（合165亿美元）[1] ，居湖南县市第2位[2]。地缘上，浏阳市东部依次与江西省上栗县、宜春袁州区、铜鼓县和万载县接壤，北部与平江县相邻，西部与长沙县交界，南部与株洲荷塘区、株洲县和醴陵市相连。全市总面积5,007.75平方公里，户籍总人口1,453,246人（2014年末）[1]，常住人口1,278,928人（2010年人口普查）；下辖4街道、27个镇和6乡，共计318个行政村和83社区（2009年末）。政府驻关口街道。', '2017-07-03 05:31:00', '2017-07-03 05:31:00', '浏阳市为中国湖南省下辖县级市，位于湖南东北部、长沙市东部，毗邻江西省，由长沙地级市代管。浏阳市为较具实力的县', 1, 1, 11, '测试文章');
INSERT INTO "main"."blog_post" VALUES (2, '湖南省（湘语长益片新派长沙话：/fu13 lã13 sən41/；湘语娄邵片双峰话：/ɣəu13 nia13 siɛn31/），中华人民共和国一级行政区，全境位于长江中游以南地区，因大部在洞庭湖以南得名“湖南”，又因湘江贯穿全境而简称“湘”，；境内广植芙蓉（木芙蓉），古诗有“秋风万里芙蓉国”之句，故有“芙蓉国”之誉。湖南的省会长沙市，省政府驻地位于长沙市天心区湘府路。湖南大部分地区的汉语方言以湘语为主，在湖南省内的其他地区则主要使用西南官话、赣语、湘南土话、瓦乡话以及客家话等其他汉语方言。此外，苗语、土家语、侗语、勉语（瑶族的主要语言之一）等少数民族语言在湖南省西部和南部的少数民族聚居区使用。
![Alt text](https://drscdn.500px.org/photo/29180481/q%3D80_m%3D1500/da621050a56da5334a362524a2133f57)', '2017-07-03 06:00:00', '2017-07-03 06:01:00', '湖南省（湘语长益片新派长沙话：/fu13 lã13 sən41/；湘语娄邵片双峰话：/ɣəu13 nia13', 1, 1, 15, '测试文章');
INSERT INTO "main"."blog_post" VALUES (3, '浏阳，湖南省县级市，由长沙市代管，因县城位于浏水之北（阳面）而得名。浏阳地处湘赣边界，湖南东部偏北，古为“吴楚咽喉”，是省会长沙副中心和湘赣边区域性中心城市。浏阳现辖3乡25镇4街道，总面积5007.75平方千米，总人口149.1万。市政府驻关口街道环府路8号，距长沙市政府62千米，距长沙黄花国际机场42千米。
浏阳既是革命老区，也是世界闻名的花炮之乡，享有“中国花卉苗木之乡、中国蒸菜之乡、中华诗词之乡、中国优秀旅游城市、中国人居环境范例奖、湖南省文明城市”等美誉，是中国发展改革试点城市、国家生态示范县（市）。[1] 
2015年，福布斯中文版发布2015年《中国大陆最佳县级城市榜》，浏阳再次上榜，成为中西部地区县市中连续两年唯一入榜者。[2]  2016年，浏阳全市实现生产总值1218.2亿元，[3]  县域经济与县域基本竞争力跃升至全国百强县第19位。[4]', '2017-07-11 08:52:00', '2017-07-11 08:52:00', '浏阳，湖南省县级市，由长沙市代管，因县城位于浏水之北（阳面）而得名。浏阳地处湘赣边界，湖南东部偏北，古为“吴', 1, 1, 0, '浏阳市');
INSERT INTO "main"."blog_post" VALUES (4, '湖南大学（Hunan University），简称“湖大(HNU)”，坐落于中国历史文化名城湖南长沙市，隶属于中华人民共和国教育部，由教育部、中华人民共和国工业和信息化部、湖南省人民政府、国防科技工业局四方共同建设，是全国重点大学，中国一流学府，位列211工程、985工程，入选111计划、2011计划、千人计划、卓越法律人才教育培养计划、卓越工程师教育培养计划、PACE计划，建有中国书院博物馆、国家超级计算长沙中心，是一所历史悠久、蜚声中外的综合类研究型大学，亦是国际艺术、设计与媒体院校联盟(Cumulus)、金砖国家网络大学等国际组织重要成员和AMBA国际认证成员。
学校办学起源于宋太祖开宝九年(公元976年) 创建的岳麓书院以及清朝末期(公元1897年)创办的新式高等学校时务学堂[1]  。1926年02月01日，省立湖南大学在湖南工专、法专、商专三校基础上合并成立[1]  。1937年07月07日，省立湖南大学由中华民国国民政府行政院第1497号指令册立为国立湖南大学。1949年09月，国立湖南大学被中国共产党接管，并更名为湖南大学。2000年，隶属中国人民银行的湖南财经学院并入湖南大学。千余年来，这里学脉绵延，弦歌不绝，以“千年学府”之美名而饮誉世界。
新中国成立以来，湖南大学已为国家和社会培养了一大批高级专门人才，许多毕业生成长为著名的专家学者、企业家和优秀的党政管理人才，先后有34位校友当选为学部委员和两院院士，1位全职教授当选为发展中国家科学院院士，1位全职教授当选为加拿大工程院院士。', '2017-07-11 08:53:00', '2017-07-11 08:53:00', '湖南大学（Hunan University），简称“湖大(HNU)”，坐落于中国历史文化名城湖南长沙市，隶属', 1, 1, 1, '湖南大学');
INSERT INTO "main"."blog_post" VALUES (5, '湖南省地处中国中部、长江中游，宋代划定为荆湖南路而开始简称湖南，省内最大河流湘江流贯南北而简称“湘”，也称潇湘，省会驻长沙市。湖南东临江西，西接重庆、贵州，南毗广东、广西，北与湖北相连。土地面积21.18万平方千米，占中国国土面积的2.2%，在各省市区面积中居第10位。全省总人口6783.0万人（2016年）。辖14个地州市、122个县（市、区）。[1] 
湖南地理水文：地形地貌犹如一个向北开口的马蹄，东北部是幕连九山脉，东部是罗霄山脉，西部是武陵山脉和雪峰山脉，南部是南岭，中部是湘中盆地，北部是两湖盆地里的洞庭湖平原。湘江、资水、沅江、澧水是三湘的四水，汇入洞庭湖，再由城陵矶注人长江。[2] 
湖南经济板块：京广铁路带上的岳阳、长株潭、衡阳是工业发达带，大湘西是群山区域、景区成片、旅游业发达。
湖南交通：湖南铁路交通较为发达，共有京广线、沪昆线、湘桂线、石长线、洛湛线、焦柳线、渝怀线等铁路共7大干线。京广高铁、沪昆高铁成十字骨架，京广高速、沪昆高速、二广高速辅助其中。水运主要在湘江一带。
湖南经济地位：低于广东和湖北，而高于江西和贵州，居中间位档。
湖南历史：古为九黎三苗要地，蚩尤统治梅山一带，后属楚国，屈原流放于溆浦县。宋代朱熹创办岳麓书院而有“惟楚有材，于斯为盛”之誉。
近现代名人：先后涌现了魏源、曾国藩、左宗棠、黄兴、蔡锷、宋教仁、毛泽东、刘少奇、任弼时、彭德怀、胡耀邦、朱镕基、袁隆平等大批名人。', '2017-07-11 08:54:00', '2017-07-11 08:54:00', '湖南省地处中国中部、长江中游，宋代划定为荆湖南路而开始简称湖南，省内最大河流湘江流贯南北而简称“湘”，也称潇', 1, 1, 0, '湖南省');
INSERT INTO "main"."blog_post" VALUES (6, 'Python[1]  （英国发音：/ˈpaɪθən/ 美国发音：/ˈpaɪθɑːn/）, 是一种面向对象的解释型计算机程序设计语言，由荷兰人Guido van Rossum于1989年发明，第一个公开发行版发行于1991年。
Python是纯粹的自由软件， 源代码和解释器CPython遵循 GPL(GNU General Public License)协议[2]  。Python语法简洁清晰，特色之一是强制用空白符(white space)作为语句缩进。
Python具有丰富和强大的库。它常被昵称为胶水语言，能够把用其他语言制作的各种模块（尤其是C/C++）很轻松地联结在一起。常见的一种应用情形是，使用Python快速生成程序的原型（有时甚至是程序的最终界面），然后对其中[3]  有特别要求的部分，用更合适的语言改写，比如3D游戏中的图形渲染模块，性能要求特别高，就可以用C/C++重写，而后封装为Python可以调用的扩展类库。需要注意的是在您使用扩展类库时可能需要考虑平台问题，某些可能不提供跨平台的实现。', '2017-07-11 08:55:00', '2017-07-11 08:55:00', 'Python[1]  （英国发音：/ˈpaɪθən/ 美国发音：/ˈpaɪθɑːn/）, 是一种面向对象的解', 1, 1, 1, 'Python');
INSERT INTO "main"."blog_post" VALUES (7, 'JavaScript一种直译式脚本语言，是一种动态类型、弱类型、基于原型的语言，内置支持类型。它的解释器被称为JavaScript引擎，为浏览器的一部分，广泛用于客户端的脚本语言，最早是在HTML（标准通用标记语言下的一个应用）网页上使用，用来给HTML网页增加动态功能。
在1995年时，由Netscape公司的Brendan Eich，在网景导航者浏览器上首次设计实现而成。因为Netscape与Sun合作，Netscape管理层希望它外观看起来像Java，因此取名为JavaScript。但实际上它的语法风格与Self及Scheme较为接近。[1] 
为了取得技术优势，微软推出了JScript，CEnvi推出ScriptEase，与JavaScript同样可在浏览器上运行。为了统一规格，因为JavaScript兼容于ECMA标准，因此也称为ECMAScript。', '2017-07-11 08:55:00', '2017-07-11 08:55:00', 'JavaScript一种直译式脚本语言，是一种动态类型、弱类型、基于原型的语言，内置支持类型。它的解释器被称', 1, 1, 0, 'JavaScript');
INSERT INTO "main"."blog_post" VALUES (8, 'Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程[1]  。
Java具有简单性、面向对象、分布式、健壮性、安全性、平台独立与可移植性、多线程、动态性等特点[2]  。Java可以编写桌面应用程序、Web应用程序、分布式系统和嵌入式系统应用程序等[3]  。', '2017-07-11 08:56:00', '2017-07-11 08:56:00', 'Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念', 1, 1, 2, 'Java');
INSERT INTO "main"."blog_post" VALUES (9, 'PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通用开源脚本语言。语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域。PHP 独特的语法混合了C、Java、Perl以及PHP自创的语法。它可以比CGI或者Perl更快速地执行动态网页。用PHP做出的动态页面与其他的编程语言相比，PHP是将程序嵌入到HTML（标准通用标记语言下的一个应用）文档中去执行，执行效率比完全生成HTML标记的CGI要高许多；PHP还可以执行编译后代码，编译可以达到加密和优化代码运行，使代码运行更快。', '2017-07-11 09:24:00', '2017-07-11 09:24:00', 'PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通', 1, 1, 0, 'PHP');
INSERT INTO "main"."blog_post" VALUES (10, 'PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通用开源脚本语言。语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域。PHP 独特的语法混合了C、Java、Perl以及PHP自创的语法。它可以比CGI或者Perl更快速地执行动态网页。用PHP做出的动态页面与其他的编程语言相比，PHP是将程序嵌入到HTML（标准通用标记语言下的一个应用）文档中去执行，执行效率比完全生成HTML标记的CGI要高许多；PHP还可以执行编译后代码，编译可以达到加密和优化代码运行，使代码运行更快。', '2017-07-11 09:24:00', '2017-07-11 09:24:00', 'PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通', 1, 1, 1, '测试分页文章');
INSERT INTO "main"."blog_post" VALUES (11, 'PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通用开源脚本语言。语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域。PHP 独特的语法混合了C、Java、Perl以及PHP自创的语法。它可以比CGI或者Perl更快速地执行动态网页。用PHP做出的动态页面与其他的编程语言相比，PHP是将程序嵌入到HTML（标准通用标记语言下的一个应用）文档中去执行，执行效率比完全生成HTML标记的CGI要高许多；PHP还可以执行编译后代码，编译可以达到加密和优化代码运行，使代码运行更快。', '2017-07-11 09:25:00', '2017-07-11 09:25:00', 'PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通', 1, 1, 5, '测试用');
INSERT INTO "main"."blog_post" VALUES (12, 'PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通用开源脚本语言。语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域。PHP 独特的语法混合了C、Java、Perl以及PHP自创的语法。它可以比CGI或者Perl更快速地执行动态网页。用PHP做出的动态页面与其他的编程语言相比，PHP是将程序嵌入到HTML（标准通用标记语言下的一个应用）文档中去执行，执行效率比完全生成HTML标记的CGI要高许多；PHP还可以执行编译后代码，编译可以达到加密和优化代码运行，使代码运行更快。', '2017-07-11 09:25:00', '2017-07-11 09:25:00', 'PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通', 1, 1, 1, 'ceshi');
INSERT INTO "main"."blog_post" VALUES (13, '## 历史
主条目：湖南历史和湖南共和国

清末湘军创始者曾国藩

抗日战争中的常德会战

抗日战争中的第二次长沙战役
湖南在原始社会时为三苗、百濮与扬越（百越）之地，据宁乡县、安乡县、津市市、澧县、道县和平江县等地考古挖掘出土的文物证明，湖南境内在40万年前有旧石器时期的人类活动，早在一万多年前就有种植稻谷，早在五千年以前的新石器时代湖南的先民就开始过定居生活。
湖南在夏、商和西周时为荆州南境。春秋、战国时代属于楚国。秦始皇设黔中、长沙两郡；汉武帝之后属荆州刺史辖区，辖长沙国、武陵郡、桂阳郡和零陵郡；三国时属吴国荆州，为荆南五郡；西晋时分属荆州和广州；东晋时分属荆州、湖州、江州；南朝宋、齐、梁时分属湘州、郢州和小部分荆州，南朝陈时分属荆州、沅州；隋文帝开皇九年(589年)平南陈，而统一全国后，在湖南设长沙、武陵、沅陵、澧阳、巴陵、衡山、桂阳、零陵等八郡；唐玄宗开元二十一年(733年)时分属山南东道、江南西道和黔中道、黔中道黔州都督府，唐代宗广德二年（764年）在衡州置湖南观察使，从此在中国行政区划史上开始“湖南”之名；五代十国时期，马殷据湖南，建立楚国，国都为长沙。
北宋时，湖南分属荆湖南路和荆湖北路。这时洞庭湖区得到大规模开发，湖南在全国的地位迅速上升。宋代全国四大书院，湖南即得其二。北宋末年，湖南人口达570多万。元代时属湖广等处行中书省，设湖南宣慰司于衡州（后迁治潭州）；明代时属湖广布政使司；清康熙三年（1664年）分湖广为湖广左、右布政使司，其中右司下设长宝、岳常澧、衡永郴桂、辰沅永靖4道和长沙、宝庆、岳州、常德、衡州、辰州、沅州、永州、永顺九府。清世宗雍正元年（1723年），改湖广右布政使司为湖南布政使司，迁长沙，湖南正式作为省级行政单位。
中华民国时，湖南废除府、厅、州，保留道、县两级，并改变了部分县的名称。民国三年(1914年)全省下设湘江、衡阳、辰沅、武陵四道。民国十一年（1922年）道制撤消，仅存省、县两级。
民国二十六年(1937年)12月普遍设立行政督察专员公署，全省划为九区；1938年全省调整为10个行政督察区；1940年4月全省调整为10个行政监督区，各区辖6～10县不等，并成立长沙（1933年）、衡阳（1943年）两市。民国三十八年（1949年）国民政府退守台湾以前，全省有2市、10行政监督区、77县，湖南省政府驻长沙。
中华人民共和国成立以后，当初期设置长沙、株洲2省辖市，长沙、衡阳、郴县、常德、益阳、邵阳、永州7直属专区，湘西行政区及所辖永顺、沅陵、会同3专区。此后行政区划多次调整变更，到2002年末，全省共计划分为14个地级行政区（13地级市和1自治州），122个县级行政区包括34个市辖区、16个县级市、65个县和7个自治县。
湖南在近代发生许多重要的历史事件。1852年，曾国藩受命在衡州组建湘军，镇压太平天国。在1898年，湖南是唯一支持戊戌变法的省份。1899年和1904年，岳阳、长沙先后被开辟为商埠，常德、湘潭增列为“寄港地”。1903年，黄兴创立华兴会，成为同盟会和国民党的主要创始人之一。1926年－1927年，北伐战争期间，湖南农民运动声势最为浩大，农会成员发展到600万人。1936年，粤汉铁路全线通车。抗日战争期间，中国军队在湖南省境进行过几次极其惨烈的抗击日军的战役，包括长沙会战、常德会战，衡阳战役和湘西会战等。1938年，在“焦土抗战”的口号下，半个长沙误毁于文夕大火，1944年衡阳毁于衡阳保卫战，全城仅剩三栋残墙。

## 自然环境
### 地形地貌[编辑]
湖南的东、南、西三面山地环绕，中部和北部地势低平，呈马蹄形的丘陵型盆地，属于江南地带。西北有武陵山脉，西南有雪峰山脉，南部为五岭山脉（即南岭山脉），东面为湘赣交界的罗霄山脉。湘中地区大多为丘陵、盆地和河谷冲积平原，除南岳衡山山脉高达千米以外其他均为海拔500米以下，最高峰是位于炎陵县与江西省遂川县交界处的酃峰（亦称神农峰，海拔2115米）[3]。湘北为洞庭湖、与湘、资、沅、澧四水尾闾的河湖冲积平原，地势很低，一般海拔50米以下，因此，湖南的水系呈扇形状汇入洞庭湖。
湖南以中低山与丘陵为主，面积约为14.9万平方公里，占70.2％；岗地与平原约为5.2万平方公里，占24.5％；江河湖泊水域面积约为1.1万平方公里，占5.3％。临近省区有广东省、江西省、湖北省、贵州省、广西壮族自治区和重庆市。
湖南属于江河中下游流域平原（长江、湘江）等和高原地台带（云贵高原）的过渡地带，所以地理景观独特，人文也很有特色：平原经济发达地区文化和封闭的山地文化的交融。
### 河流湖泊[编辑]
河流
主条目：湖南河流
湖南河网纵横，几乎全为洞庭湖水系，长度5公里以上的河流5341条，其中以湘江、资江、沅水和澧水四条河流最大。剩余的一小部分为珠江水系。源自广西东北部海洋山西麓的湘江全长856公里，为本省流量最大、经济价值最高、流域最广的河流；沅江源自贵州云雾山，全长1033公里，为湖南境内最长河流，流量仅次于湘江，由于流经第二、三级阶梯分界线雪峰山，水能资源极其丰富，在上面有湖南最大的水电站五强溪水电站。此外还有资江上的柘（zhè）溪水电站 。
湖泊
主条目：湖南湖泊和洞庭湖
洞庭湖为湖南最重要的湖泊，北接松滋、太平、藕池和调弦（已堵）四口纳长江洪水，从岳阳城陵矶汇入长江，有“容纳四水、吞吐长江”的重要作用，是长江中游地区的天然水库。由于大面积的围湖造田（人为原因）和泥沙淤积（自然原因），湖面逐年缩小，其作用也在减小。洞庭湖由全国第一大淡水湖（八百里洞庭）变为了仅次于鄱阳湖的第二大淡水湖。目前，人们在河流上游植树造林，在洞庭湖区退耕还湖，洞庭湖的面积有了一定的回升，将有可能超过鄱阳湖。
### 气候[编辑]
湖南属亚热带季风气候，四季分明，气候温暖湿润，年降水量1300-1800毫米，自东南向西北递减。年平均气温16-18°C。极端最高气温43.7℃（1951年8月7日，永州），极端最低气温-18.1℃（1969年1月31日，临湘）。', '2017-07-11 09:26:00', '2017-07-11 09:26:00', 'PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通', 1, 1, 27, '湖南省简介');

-- ----------------------------
-- Table structure for blog_post_tags
-- ----------------------------
DROP TABLE IF EXISTS "main"."blog_post_tags";
CREATE TABLE "blog_post_tags" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "post_id" integer NOT NULL REFERENCES "blog_post" ("id"), "tag_id" integer NOT NULL REFERENCES "blog_tag" ("id"));

-- ----------------------------
-- Records of blog_post_tags
-- ----------------------------
INSERT INTO "main"."blog_post_tags" VALUES (1, 1, 9);
INSERT INTO "main"."blog_post_tags" VALUES (2, 2, 10);
INSERT INTO "main"."blog_post_tags" VALUES (3, 3, 10);
INSERT INTO "main"."blog_post_tags" VALUES (4, 4, 10);
INSERT INTO "main"."blog_post_tags" VALUES (5, 5, 10);
INSERT INTO "main"."blog_post_tags" VALUES (6, 6, 2);
INSERT INTO "main"."blog_post_tags" VALUES (7, 7, 4);
INSERT INTO "main"."blog_post_tags" VALUES (8, 8, 10);
INSERT INTO "main"."blog_post_tags" VALUES (9, 9, 10);
INSERT INTO "main"."blog_post_tags" VALUES (10, 10, 10);
INSERT INTO "main"."blog_post_tags" VALUES (11, 11, 10);
INSERT INTO "main"."blog_post_tags" VALUES (12, 12, 10);
INSERT INTO "main"."blog_post_tags" VALUES (13, 13, 10);

-- ----------------------------
-- Table structure for blog_tag
-- ----------------------------
DROP TABLE IF EXISTS "main"."blog_tag";
CREATE TABLE "blog_tag" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL);

-- ----------------------------
-- Records of blog_tag
-- ----------------------------
INSERT INTO "main"."blog_tag" VALUES (1, 'Git');
INSERT INTO "main"."blog_tag" VALUES (2, 'Python');
INSERT INTO "main"."blog_tag" VALUES (3, 'Django');
INSERT INTO "main"."blog_tag" VALUES (4, 'JavaScript');
INSERT INTO "main"."blog_tag" VALUES (5, 'JQuery');
INSERT INTO "main"."blog_tag" VALUES (6, 'CSS');
INSERT INTO "main"."blog_tag" VALUES (7, 'Linux');
INSERT INTO "main"."blog_tag" VALUES (8, 'Windows');
INSERT INTO "main"."blog_tag" VALUES (9, '文章');
INSERT INTO "main"."blog_tag" VALUES (10, '百科');

-- ----------------------------
-- Table structure for blog_visitorrecord
-- ----------------------------
DROP TABLE IF EXISTS "main"."blog_visitorrecord";
CREATE TABLE "blog_visitorrecord" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "http_host" varchar(200) NOT NULL, "http_path" varchar(200) NOT NULL, "http_user_agent" varchar(400) NOT NULL, "ip" varchar(20) NOT NULL, "server_name" varchar(50) NOT NULL, "create_time" datetime NOT NULL);

-- ----------------------------
-- Records of blog_visitorrecord
-- ----------------------------
INSERT INTO "main"."blog_visitorrecord" VALUES (1, '127.0.0.1:8000', '/post/13/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:22:28.548468');
INSERT INTO "main"."blog_visitorrecord" VALUES (2, '127.0.0.1:8000', '/post/13/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:22:55.342001');
INSERT INTO "main"."blog_visitorrecord" VALUES (3, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:22:59.672248');
INSERT INTO "main"."blog_visitorrecord" VALUES (4, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:35:05.522765');
INSERT INTO "main"."blog_visitorrecord" VALUES (5, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:36:18.436935');
INSERT INTO "main"."blog_visitorrecord" VALUES (6, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:37:14.414137');
INSERT INTO "main"."blog_visitorrecord" VALUES (7, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:37:42.511744');
INSERT INTO "main"."blog_visitorrecord" VALUES (8, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:38:38.738960');
INSERT INTO "main"."blog_visitorrecord" VALUES (9, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:39:16.635127');
INSERT INTO "main"."blog_visitorrecord" VALUES (10, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:39:30.026893');
INSERT INTO "main"."blog_visitorrecord" VALUES (11, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:39:30.223905');
INSERT INTO "main"."blog_visitorrecord" VALUES (12, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:39:48.543952');
INSERT INTO "main"."blog_visitorrecord" VALUES (13, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:40:01.185676');
INSERT INTO "main"."blog_visitorrecord" VALUES (14, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:49:01.773595');
INSERT INTO "main"."blog_visitorrecord" VALUES (15, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:50:40.382235');
INSERT INTO "main"."blog_visitorrecord" VALUES (16, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:50:59.112307');
INSERT INTO "main"."blog_visitorrecord" VALUES (17, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:51:33.246259');
INSERT INTO "main"."blog_visitorrecord" VALUES (18, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:51:39.549620');
INSERT INTO "main"."blog_visitorrecord" VALUES (19, '127.0.0.1:8000', '/post/12/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:51:41.971758');
INSERT INTO "main"."blog_visitorrecord" VALUES (20, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:51:46.301006');
INSERT INTO "main"."blog_visitorrecord" VALUES (21, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:53:04.121457');
INSERT INTO "main"."blog_visitorrecord" VALUES (22, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:53:50.913133');
INSERT INTO "main"."blog_visitorrecord" VALUES (23, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:53:55.110373');
INSERT INTO "main"."blog_visitorrecord" VALUES (24, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:54:16.078573');
INSERT INTO "main"."blog_visitorrecord" VALUES (25, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:55:30.370822');
INSERT INTO "main"."blog_visitorrecord" VALUES (26, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 07:55:35.247101');
INSERT INTO "main"."blog_visitorrecord" VALUES (27, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:02:45.545712');
INSERT INTO "main"."blog_visitorrecord" VALUES (28, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:03:58.086862');
INSERT INTO "main"."blog_visitorrecord" VALUES (29, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:04:30.522717');
INSERT INTO "main"."blog_visitorrecord" VALUES (30, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:05:26.442915');
INSERT INTO "main"."blog_visitorrecord" VALUES (31, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:05:31.991233');
INSERT INTO "main"."blog_visitorrecord" VALUES (32, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:06:50.805741');
INSERT INTO "main"."blog_visitorrecord" VALUES (33, '127.0.0.1:8000', '/post/10/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:06:54.550955');
INSERT INTO "main"."blog_visitorrecord" VALUES (34, '127.0.0.1:8000', '/post/6/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:06:58.106158');
INSERT INTO "main"."blog_visitorrecord" VALUES (35, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:11:45.407591');
INSERT INTO "main"."blog_visitorrecord" VALUES (36, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:12:08.331902');
INSERT INTO "main"."blog_visitorrecord" VALUES (37, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:12:26.053916');
INSERT INTO "main"."blog_visitorrecord" VALUES (38, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:13:00.991914');
INSERT INTO "main"."blog_visitorrecord" VALUES (39, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:13:37.269989');
INSERT INTO "main"."blog_visitorrecord" VALUES (40, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:13:51.434799');
INSERT INTO "main"."blog_visitorrecord" VALUES (41, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:14:04.707558');
INSERT INTO "main"."blog_visitorrecord" VALUES (42, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:14:11.126925');
INSERT INTO "main"."blog_visitorrecord" VALUES (43, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:14:56.876542');
INSERT INTO "main"."blog_visitorrecord" VALUES (44, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:16:14.422978');
INSERT INTO "main"."blog_visitorrecord" VALUES (45, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:16:31.981982');
INSERT INTO "main"."blog_visitorrecord" VALUES (46, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:16:41.557530');
INSERT INTO "main"."blog_visitorrecord" VALUES (47, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:31:00.106636');
INSERT INTO "main"."blog_visitorrecord" VALUES (48, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:32:21.675301');
INSERT INTO "main"."blog_visitorrecord" VALUES (49, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:32:50.917974');
INSERT INTO "main"."blog_visitorrecord" VALUES (50, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:36:39.327038');
INSERT INTO "main"."blog_visitorrecord" VALUES (51, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:37:11.022851');
INSERT INTO "main"."blog_visitorrecord" VALUES (52, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 16:43:47.519529');
INSERT INTO "main"."blog_visitorrecord" VALUES (53, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 16:44:06.254601');
INSERT INTO "main"."blog_visitorrecord" VALUES (54, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 16:44:19.498358');
INSERT INTO "main"."blog_visitorrecord" VALUES (55, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 16:48:18.405023');
INSERT INTO "main"."blog_visitorrecord" VALUES (56, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 16:48:28.825619');
INSERT INTO "main"."blog_visitorrecord" VALUES (57, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 16:48:49.085778');
INSERT INTO "main"."blog_visitorrecord" VALUES (58, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 16:49:00.325421');
INSERT INTO "main"."blog_visitorrecord" VALUES (59, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:56:17.986454');
INSERT INTO "main"."blog_visitorrecord" VALUES (60, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:56:38.336618');
INSERT INTO "main"."blog_visitorrecord" VALUES (61, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 08:57:36.693955');
INSERT INTO "main"."blog_visitorrecord" VALUES (62, '127.0.0.1:8000', '/post/13/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 09:00:35.343174');
INSERT INTO "main"."blog_visitorrecord" VALUES (63, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 09:02:52.342009');
INSERT INTO "main"."blog_visitorrecord" VALUES (64, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 09:03:25.447903');
INSERT INTO "main"."blog_visitorrecord" VALUES (65, '127.0.0.1:8000', '/post/8/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 09:03:27.347012');
INSERT INTO "main"."blog_visitorrecord" VALUES (66, '127.0.0.1:8000', '/post/8/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 09:39:15.964905');
INSERT INTO "main"."blog_visitorrecord" VALUES (67, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 09:39:25.329441');
INSERT INTO "main"."blog_visitorrecord" VALUES (68, 'localhost:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 09:39:40.767324');
INSERT INTO "main"."blog_visitorrecord" VALUES (69, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 09:39:55.924191');
INSERT INTO "main"."blog_visitorrecord" VALUES (70, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 09:40:20.707609');
INSERT INTO "main"."blog_visitorrecord" VALUES (71, '127.0.0.1:8000', '/about/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 09:41:01.236927');
INSERT INTO "main"."blog_visitorrecord" VALUES (72, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 09:42:41.717674');
INSERT INTO "main"."blog_visitorrecord" VALUES (73, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 09:58:52.275187');
INSERT INTO "main"."blog_visitorrecord" VALUES (74, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 09:59:21.630866');
INSERT INTO "main"."blog_visitorrecord" VALUES (75, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 09:59:34.505602');
INSERT INTO "main"."blog_visitorrecord" VALUES (76, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 10:01:13.086241');
INSERT INTO "main"."blog_visitorrecord" VALUES (77, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 10:16:08.092432');
INSERT INTO "main"."blog_visitorrecord" VALUES (78, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 10:17:23.316735');
INSERT INTO "main"."blog_visitorrecord" VALUES (79, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 10:19:46.335915');
INSERT INTO "main"."blog_visitorrecord" VALUES (80, '127.0.0.1:8000', '/post/11/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-11 10:20:23.573045');
INSERT INTO "main"."blog_visitorrecord" VALUES (81, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:24:55.195004');
INSERT INTO "main"."blog_visitorrecord" VALUES (82, '127.0.0.1:8000', '/static/blog/css/style.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:24:55.706033');
INSERT INTO "main"."blog_visitorrecord" VALUES (83, '127.0.0.1:8000', '/static/blog/img/project-13.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:24:55.975048');
INSERT INTO "main"."blog_visitorrecord" VALUES (84, '127.0.0.1:8000', '/static/blog/fonts/icomoon/icomoon.ttf', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:24:56.027051');
INSERT INTO "main"."blog_visitorrecord" VALUES (85, '127.0.0.1:8000', '/static/blog/fonts/icomoon/icomoon.woff', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:24:56.239063');
INSERT INTO "main"."blog_visitorrecord" VALUES (86, '127.0.0.1:8000', '/static/blog/img/project-9.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:24:56.018051');
INSERT INTO "main"."blog_visitorrecord" VALUES (87, '127.0.0.1:8000', '/static/blog/img/project-12.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:24:56.017051');
INSERT INTO "main"."blog_visitorrecord" VALUES (88, '127.0.0.1:8000', '/static/blog/img/project-11.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:24:56.018051');
INSERT INTO "main"."blog_visitorrecord" VALUES (89, '127.0.0.1:8000', '/static/blog/fonts/glyphicons-halflings-regular.woff2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:24:56.023051');
INSERT INTO "main"."blog_visitorrecord" VALUES (90, '127.0.0.1:8000', '/static/blog/fonts/glyphicons-halflings-regular.woff', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:24:57.245121');
INSERT INTO "main"."blog_visitorrecord" VALUES (91, '127.0.0.1:8000', '/static/blog/fonts/glyphicons-halflings-regular.ttf', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:24:57.574140');
INSERT INTO "main"."blog_visitorrecord" VALUES (92, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:25:30.614030');
INSERT INTO "main"."blog_visitorrecord" VALUES (93, '127.0.0.1:8000', '/static/blog/css/style.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:25:31.016053');
INSERT INTO "main"."blog_visitorrecord" VALUES (94, '127.0.0.1:8000', '/static/blog/img/project-13.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:25:31.369073');
INSERT INTO "main"."blog_visitorrecord" VALUES (95, '127.0.0.1:8000', '/static/blog/img/project-9.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:25:31.463078');
INSERT INTO "main"."blog_visitorrecord" VALUES (96, '127.0.0.1:8000', '/static/blog/fonts/glyphicons-halflings-regular.woff2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:25:31.467078');
INSERT INTO "main"."blog_visitorrecord" VALUES (97, '127.0.0.1:8000', '/static/blog/fonts/glyphicons-halflings-regular.woff', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:25:31.710092');
INSERT INTO "main"."blog_visitorrecord" VALUES (98, '127.0.0.1:8000', '/static/blog/fonts/glyphicons-halflings-regular.ttf', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:25:31.825099');
INSERT INTO "main"."blog_visitorrecord" VALUES (99, '127.0.0.1:8000', '/static/blog/img/project-12.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:25:31.462078');
INSERT INTO "main"."blog_visitorrecord" VALUES (100, '127.0.0.1:8000', '/static/blog/img/project-11.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:25:31.454078');
INSERT INTO "main"."blog_visitorrecord" VALUES (101, '127.0.0.1:8000', '/static/blog/fonts/icomoon/icomoon.ttf', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:25:31.474079');
INSERT INTO "main"."blog_visitorrecord" VALUES (102, '127.0.0.1:8000', '/static/blog/fonts/icomoon/icomoon.woff', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:25:32.461135');
INSERT INTO "main"."blog_visitorrecord" VALUES (103, '127.0.0.1:8000', '/static/favicon.ico', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:25:32.625145');
INSERT INTO "main"."blog_visitorrecord" VALUES (104, '127.0.0.1:8000', '/static/blog/css/style.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:25:36.939391');
INSERT INTO "main"."blog_visitorrecord" VALUES (105, '127.0.0.1:8000', '/static/blog/css/bootstrap.min.css.map', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:25:37.388417');
INSERT INTO "main"."blog_visitorrecord" VALUES (106, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:27:38.942747');
INSERT INTO "main"."blog_visitorrecord" VALUES (107, '127.0.0.1:8000', '/static/blog/css/style.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:27:39.751794');
INSERT INTO "main"."blog_visitorrecord" VALUES (108, '127.0.0.1:8000', '/static/blog/img/project-13.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:27:39.995808');
INSERT INTO "main"."blog_visitorrecord" VALUES (109, '127.0.0.1:8000', '/static/blog/fonts/glyphicons-halflings-regular.woff2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:27:40.046810');
INSERT INTO "main"."blog_visitorrecord" VALUES (110, '127.0.0.1:8000', '/static/blog/img/project-12.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:27:40.030810');
INSERT INTO "main"."blog_visitorrecord" VALUES (111, '127.0.0.1:8000', '/static/blog/img/project-11.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:27:40.029809');
INSERT INTO "main"."blog_visitorrecord" VALUES (112, '127.0.0.1:8000', '/static/blog/fonts/glyphicons-halflings-regular.woff', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:27:40.398831');
INSERT INTO "main"."blog_visitorrecord" VALUES (113, '127.0.0.1:8000', '/static/blog/img/project-9.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:27:40.033810');
INSERT INTO "main"."blog_visitorrecord" VALUES (114, '127.0.0.1:8000', '/static/blog/fonts/icomoon/icomoon.ttf', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:27:40.050811');
INSERT INTO "main"."blog_visitorrecord" VALUES (115, '127.0.0.1:8000', '/static/blog/fonts/glyphicons-halflings-regular.ttf', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:27:43.363000');
INSERT INTO "main"."blog_visitorrecord" VALUES (116, '127.0.0.1:8000', '/static/blog/fonts/icomoon/icomoon.woff', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:27:43.483007');
INSERT INTO "main"."blog_visitorrecord" VALUES (117, '127.0.0.1:8000', '/static/blog/css/style.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:27:46.755194');
INSERT INTO "main"."blog_visitorrecord" VALUES (118, '127.0.0.1:8000', '/static/blog/css/bootstrap.min.css.map', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:27:49.112691');
INSERT INTO "main"."blog_visitorrecord" VALUES (119, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:23.862251');
INSERT INTO "main"."blog_visitorrecord" VALUES (120, '127.0.0.1:8000', '/static/blog/css/animate.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:24.277275');
INSERT INTO "main"."blog_visitorrecord" VALUES (121, '127.0.0.1:8000', '/static/blog/css/icomoon.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:24.286275');
INSERT INTO "main"."blog_visitorrecord" VALUES (122, '127.0.0.1:8000', '/static/blog/css/bootstrap.min.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:24.295276');
INSERT INTO "main"."blog_visitorrecord" VALUES (123, '127.0.0.1:8000', '/static/blog/css/style.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:24.299276');
INSERT INTO "main"."blog_visitorrecord" VALUES (124, '127.0.0.1:8000', '/static/blog/js/modernizr-2.6.2.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:24.301276');
INSERT INTO "main"."blog_visitorrecord" VALUES (125, '127.0.0.1:8000', '/static/blog/js/jquery.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:25.089321');
INSERT INTO "main"."blog_visitorrecord" VALUES (126, '127.0.0.1:8000', '/static/blog/img/project-13.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:25.339335');
INSERT INTO "main"."blog_visitorrecord" VALUES (127, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:25.259331');
INSERT INTO "main"."blog_visitorrecord" VALUES (128, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:25.252330');
INSERT INTO "main"."blog_visitorrecord" VALUES (129, '127.0.0.1:8000', '/static/blog/js/jquery.easing.1.3.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:25.244330');
INSERT INTO "main"."blog_visitorrecord" VALUES (130, '127.0.0.1:8000', '/static/blog/img/project-11.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:25.762359');
INSERT INTO "main"."blog_visitorrecord" VALUES (131, '127.0.0.1:8000', '/static/blog/img/person_3.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:25.626352');
INSERT INTO "main"."blog_visitorrecord" VALUES (132, '127.0.0.1:8000', '/static/blog/img/project-12.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:25.868366');
INSERT INTO "main"."blog_visitorrecord" VALUES (133, '127.0.0.1:8000', '/static/blog/js/jquery.stellar.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:25.259331');
INSERT INTO "main"."blog_visitorrecord" VALUES (134, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:25.996373');
INSERT INTO "main"."blog_visitorrecord" VALUES (135, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:27.145439');
INSERT INTO "main"."blog_visitorrecord" VALUES (136, '127.0.0.1:8000', '/static/blog/js/jquery.stellar.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:27.375452');
INSERT INTO "main"."blog_visitorrecord" VALUES (137, '127.0.0.1:8000', '/static/blog/img/project-9.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:26.132381');
INSERT INTO "main"."blog_visitorrecord" VALUES (138, '127.0.0.1:8000', '/static/blog/img/image_1.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:25.479343');
INSERT INTO "main"."blog_visitorrecord" VALUES (139, '127.0.0.1:8000', '/static/blog/js/main.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:25.259331');
INSERT INTO "main"."blog_visitorrecord" VALUES (140, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:31.288929');
INSERT INTO "main"."blog_visitorrecord" VALUES (141, '127.0.0.1:8000', '/static/blog/css/icomoon.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:31.543543');
INSERT INTO "main"."blog_visitorrecord" VALUES (142, '127.0.0.1:8000', '/static/blog/css/animate.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:31.548543');
INSERT INTO "main"."blog_visitorrecord" VALUES (143, '127.0.0.1:8000', '/static/blog/css/style.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:31.553544');
INSERT INTO "main"."blog_visitorrecord" VALUES (144, '127.0.0.1:8000', '/static/blog/js/modernizr-2.6.2.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:31.556544');
INSERT INTO "main"."blog_visitorrecord" VALUES (145, '127.0.0.1:8000', '/static/blog/js/jquery.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:32.125576');
INSERT INTO "main"."blog_visitorrecord" VALUES (146, '127.0.0.1:8000', '/static/blog/js/jquery.easing.1.3.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:32.263584');
INSERT INTO "main"."blog_visitorrecord" VALUES (147, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:32.407593');
INSERT INTO "main"."blog_visitorrecord" VALUES (148, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:32.537600');
INSERT INTO "main"."blog_visitorrecord" VALUES (149, '127.0.0.1:8000', '/static/blog/js/jquery.stellar.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:32.745612');
INSERT INTO "main"."blog_visitorrecord" VALUES (150, '127.0.0.1:8000', '/static/blog/js/main.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:32.890620');
INSERT INTO "main"."blog_visitorrecord" VALUES (151, '127.0.0.1:8000', '/static/blog/img/person_3.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:33.034628');
INSERT INTO "main"."blog_visitorrecord" VALUES (152, '127.0.0.1:8000', '/static/blog/img/project-13.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:33.395649');
INSERT INTO "main"."blog_visitorrecord" VALUES (153, '127.0.0.1:8000', '/static/blog/img/project-11.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:33.528657');
INSERT INTO "main"."blog_visitorrecord" VALUES (154, '127.0.0.1:8000', '/static/blog/img/project-12.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:33.649664');
INSERT INTO "main"."blog_visitorrecord" VALUES (155, '127.0.0.1:8000', '/static/blog/css/bootstrap.min.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:31.552544');
INSERT INTO "main"."blog_visitorrecord" VALUES (156, '127.0.0.1:8000', '/static/blog/img/project-9.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:33.815673');
INSERT INTO "main"."blog_visitorrecord" VALUES (157, '127.0.0.1:8000', '/static/blog/img/project-11.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:33.958681');
INSERT INTO "main"."blog_visitorrecord" VALUES (158, '127.0.0.1:8000', '/static/blog/img/project-13.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:33.942680');
INSERT INTO "main"."blog_visitorrecord" VALUES (159, '127.0.0.1:8000', '/static/blog/img/person_3.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:33.931680');
INSERT INTO "main"."blog_visitorrecord" VALUES (160, '127.0.0.1:8000', '/static/blog/img/image_1.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:34.035686');
INSERT INTO "main"."blog_visitorrecord" VALUES (161, '127.0.0.1:8000', '/static/blog/js/jquery.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:33.964682');
INSERT INTO "main"."blog_visitorrecord" VALUES (162, '127.0.0.1:8000', '/static/blog/js/jquery.easing.1.3.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:35.214753');
INSERT INTO "main"."blog_visitorrecord" VALUES (163, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:35.341760');
INSERT INTO "main"."blog_visitorrecord" VALUES (164, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:35.465767');
INSERT INTO "main"."blog_visitorrecord" VALUES (165, '127.0.0.1:8000', '/static/blog/js/jquery.stellar.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:35.565773');
INSERT INTO "main"."blog_visitorrecord" VALUES (166, '127.0.0.1:8000', '/static/blog/js/main.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:35.674779');
INSERT INTO "main"."blog_visitorrecord" VALUES (167, '127.0.0.1:8000', '/static/blog/img/project-12.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:29:33.964682');
INSERT INTO "main"."blog_visitorrecord" VALUES (168, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:13.932884');
INSERT INTO "main"."blog_visitorrecord" VALUES (169, '127.0.0.1:8000', '/static/blog/css/animate.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:14.387910');
INSERT INTO "main"."blog_visitorrecord" VALUES (170, '127.0.0.1:8000', '/static/blog/css/bootstrap.min.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:14.419912');
INSERT INTO "main"."blog_visitorrecord" VALUES (171, '127.0.0.1:8000', '/static/blog/js/modernizr-2.6.2.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:14.420912');
INSERT INTO "main"."blog_visitorrecord" VALUES (172, '127.0.0.1:8000', '/static/blog/css/icomoon.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:14.405911');
INSERT INTO "main"."blog_visitorrecord" VALUES (173, '127.0.0.1:8000', '/static/blog/js/jquery.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:14.865937');
INSERT INTO "main"."blog_visitorrecord" VALUES (174, '127.0.0.1:8000', '/static/blog/js/jquery.easing.1.3.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:15.037947');
INSERT INTO "main"."blog_visitorrecord" VALUES (175, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:15.342965');
INSERT INTO "main"."blog_visitorrecord" VALUES (176, '127.0.0.1:8000', '/static/blog/css/style.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:14.420912');
INSERT INTO "main"."blog_visitorrecord" VALUES (177, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:15.496973');
INSERT INTO "main"."blog_visitorrecord" VALUES (178, '127.0.0.1:8000', '/static/blog/js/jquery.stellar.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:15.676984');
INSERT INTO "main"."blog_visitorrecord" VALUES (179, '127.0.0.1:8000', '/static/blog/js/main.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:15.677984');
INSERT INTO "main"."blog_visitorrecord" VALUES (180, '127.0.0.1:8000', '/static/blog/img/image_1.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:15.936999');
INSERT INTO "main"."blog_visitorrecord" VALUES (181, '127.0.0.1:8000', '/static/blog/img/project-9.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:16.217015');
INSERT INTO "main"."blog_visitorrecord" VALUES (182, '127.0.0.1:8000', '/static/blog/img/person_3.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:15.659983');
INSERT INTO "main"."blog_visitorrecord" VALUES (183, '127.0.0.1:8000', '/static/blog/js/jquery.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:15.816992');
INSERT INTO "main"."blog_visitorrecord" VALUES (184, '127.0.0.1:8000', '/static/blog/js/jquery.easing.1.3.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:16.611037');
INSERT INTO "main"."blog_visitorrecord" VALUES (185, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:16.746045');
INSERT INTO "main"."blog_visitorrecord" VALUES (186, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:16.885053');
INSERT INTO "main"."blog_visitorrecord" VALUES (187, '127.0.0.1:8000', '/static/blog/img/project-12.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:16.068006');
INSERT INTO "main"."blog_visitorrecord" VALUES (188, '127.0.0.1:8000', '/static/blog/js/jquery.stellar.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:17.001059');
INSERT INTO "main"."blog_visitorrecord" VALUES (189, '127.0.0.1:8000', '/static/blog/js/main.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:17.385081');
INSERT INTO "main"."blog_visitorrecord" VALUES (190, '127.0.0.1:8000', '/static/blog/img/project-13.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:15.667983');
INSERT INTO "main"."blog_visitorrecord" VALUES (191, '127.0.0.1:8000', '/static/blog/img/project-11.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:30:15.680984');
INSERT INTO "main"."blog_visitorrecord" VALUES (192, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:22.163768');
INSERT INTO "main"."blog_visitorrecord" VALUES (193, '127.0.0.1:8000', '/static/blog/css/animate.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:22.682798');
INSERT INTO "main"."blog_visitorrecord" VALUES (194, '127.0.0.1:8000', '/static/blog/css/icomoon.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:22.710799');
INSERT INTO "main"."blog_visitorrecord" VALUES (195, '127.0.0.1:8000', '/static/blog/js/modernizr-2.6.2.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:22.751802');
INSERT INTO "main"."blog_visitorrecord" VALUES (196, '127.0.0.1:8000', '/static/blog/css/style.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:22.752802');
INSERT INTO "main"."blog_visitorrecord" VALUES (197, '127.0.0.1:8000', '/static/blog/js/jquery.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:23.664854');
INSERT INTO "main"."blog_visitorrecord" VALUES (198, '127.0.0.1:8000', '/static/blog/js/jquery.easing.1.3.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:23.796862');
INSERT INTO "main"."blog_visitorrecord" VALUES (199, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:23.934869');
INSERT INTO "main"."blog_visitorrecord" VALUES (200, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:24.090878');
INSERT INTO "main"."blog_visitorrecord" VALUES (201, '127.0.0.1:8000', '/static/blog/js/jquery.stellar.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:24.225886');
INSERT INTO "main"."blog_visitorrecord" VALUES (202, '127.0.0.1:8000', '/static/blog/css/bootstrap.min.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:22.752802');
INSERT INTO "main"."blog_visitorrecord" VALUES (203, '127.0.0.1:8000', '/static/blog/img/person_3.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:24.621909');
INSERT INTO "main"."blog_visitorrecord" VALUES (204, '127.0.0.1:8000', '/static/blog/img/project-11.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:24.634910');
INSERT INTO "main"."blog_visitorrecord" VALUES (205, '127.0.0.1:8000', '/static/blog/img/project-12.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:24.638910');
INSERT INTO "main"."blog_visitorrecord" VALUES (206, '127.0.0.1:8000', '/static/blog/js/jquery.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:24.798919');
INSERT INTO "main"."blog_visitorrecord" VALUES (207, '127.0.0.1:8000', '/static/blog/js/jquery.easing.1.3.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:25.389953');
INSERT INTO "main"."blog_visitorrecord" VALUES (208, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:25.535961');
INSERT INTO "main"."blog_visitorrecord" VALUES (209, '127.0.0.1:8000', '/static/blog/img/project-13.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:24.626909');
INSERT INTO "main"."blog_visitorrecord" VALUES (210, '127.0.0.1:8000', '/static/blog/img/image_1.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:24.942927');
INSERT INTO "main"."blog_visitorrecord" VALUES (211, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:25.771975');
INSERT INTO "main"."blog_visitorrecord" VALUES (212, '127.0.0.1:8000', '/static/blog/js/jquery.stellar.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:26.224000');
INSERT INTO "main"."blog_visitorrecord" VALUES (213, '127.0.0.1:8000', '/static/blog/img/project-9.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:24.647910');
INSERT INTO "main"."blog_visitorrecord" VALUES (214, '127.0.0.1:8000', '/static/blog/js/main.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:24.363894');
INSERT INTO "main"."blog_visitorrecord" VALUES (215, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:51.966499');
INSERT INTO "main"."blog_visitorrecord" VALUES (216, '127.0.0.1:8000', '/static/blog/css/animate.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:52.614536');
INSERT INTO "main"."blog_visitorrecord" VALUES (217, '127.0.0.1:8000', '/static/blog/css/bootstrap.min.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:52.658538');
INSERT INTO "main"."blog_visitorrecord" VALUES (218, '127.0.0.1:8000', '/static/blog/css/icomoon.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:52.616536');
INSERT INTO "main"."blog_visitorrecord" VALUES (219, '127.0.0.1:8000', '/static/blog/css/style.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:52.664539');
INSERT INTO "main"."blog_visitorrecord" VALUES (220, '127.0.0.1:8000', '/static/blog/js/jquery.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:53.448583');
INSERT INTO "main"."blog_visitorrecord" VALUES (221, '127.0.0.1:8000', '/static/blog/js/modernizr-2.6.2.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:52.670539');
INSERT INTO "main"."blog_visitorrecord" VALUES (222, '127.0.0.1:8000', '/static/blog/js/jquery.easing.1.3.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:53.591592');
INSERT INTO "main"."blog_visitorrecord" VALUES (223, '127.0.0.1:8000', '/static/blog/js/jquery.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:54.165624');
INSERT INTO "main"."blog_visitorrecord" VALUES (224, '127.0.0.1:8000', '/static/blog/img/project-13.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:54.323633');
INSERT INTO "main"."blog_visitorrecord" VALUES (225, '127.0.0.1:8000', '/static/blog/img/image_1.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:54.442640');
INSERT INTO "main"."blog_visitorrecord" VALUES (226, '127.0.0.1:8000', '/static/blog/js/jquery.easing.1.3.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:54.573648');
INSERT INTO "main"."blog_visitorrecord" VALUES (227, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:53.962613');
INSERT INTO "main"."blog_visitorrecord" VALUES (228, '127.0.0.1:8000', '/static/blog/img/project-11.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:54.703655');
INSERT INTO "main"."blog_visitorrecord" VALUES (229, '127.0.0.1:8000', '/static/blog/img/project-12.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:54.837663');
INSERT INTO "main"."blog_visitorrecord" VALUES (230, '127.0.0.1:8000', '/static/blog/img/project-9.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:54.957670');
INSERT INTO "main"."blog_visitorrecord" VALUES (231, '127.0.0.1:8000', '/static/blog/js/main.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:53.970613');
INSERT INTO "main"."blog_visitorrecord" VALUES (232, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:53.946612');
INSERT INTO "main"."blog_visitorrecord" VALUES (233, '127.0.0.1:8000', '/static/blog/js/jquery.stellar.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:53.958613');
INSERT INTO "main"."blog_visitorrecord" VALUES (234, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:55.482700');
INSERT INTO "main"."blog_visitorrecord" VALUES (235, '127.0.0.1:8000', '/static/blog/js/jquery.stellar.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:55.717713');
INSERT INTO "main"."blog_visitorrecord" VALUES (236, '127.0.0.1:8000', '/static/blog/img/person_3.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:53.974614');
INSERT INTO "main"."blog_visitorrecord" VALUES (237, '127.0.0.1:8000', '/static/blog/js/main.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:34:55.835720');
INSERT INTO "main"."blog_visitorrecord" VALUES (238, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:38:59.520011');
INSERT INTO "main"."blog_visitorrecord" VALUES (239, '127.0.0.1:8000', '/static/blog/css/animate.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:38:59.906033');
INSERT INTO "main"."blog_visitorrecord" VALUES (240, '127.0.0.1:8000', '/static/blog/css/icomoon.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:38:59.926034');
INSERT INTO "main"."blog_visitorrecord" VALUES (241, '127.0.0.1:8000', '/static/blog/css/bootstrap.min.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:38:59.935034');
INSERT INTO "main"."blog_visitorrecord" VALUES (242, '127.0.0.1:8000', '/static/blog/css/style.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:38:59.947035');
INSERT INTO "main"."blog_visitorrecord" VALUES (243, '127.0.0.1:8000', '/static/blog/js/modernizr-2.6.2.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:38:59.950035');
INSERT INTO "main"."blog_visitorrecord" VALUES (244, '127.0.0.1:8000', '/static/blog/js/jquery.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:00.430063');
INSERT INTO "main"."blog_visitorrecord" VALUES (245, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:00.606073');
INSERT INTO "main"."blog_visitorrecord" VALUES (246, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:00.602072');
INSERT INTO "main"."blog_visitorrecord" VALUES (247, '127.0.0.1:8000', '/static/blog/img/image_1.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:00.854087');
INSERT INTO "main"."blog_visitorrecord" VALUES (248, '127.0.0.1:8000', '/static/blog/img/project-11.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:01.153104');
INSERT INTO "main"."blog_visitorrecord" VALUES (249, '127.0.0.1:8000', '/static/blog/js/jquery.stellar.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:00.607073');
INSERT INTO "main"."blog_visitorrecord" VALUES (250, '127.0.0.1:8000', '/static/blog/img/project-13.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:00.748081');
INSERT INTO "main"."blog_visitorrecord" VALUES (251, '127.0.0.1:8000', '/static/blog/img/person_3.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:00.975094');
INSERT INTO "main"."blog_visitorrecord" VALUES (252, '127.0.0.1:8000', '/static/blog/img/project-9.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:01.520125');
INSERT INTO "main"."blog_visitorrecord" VALUES (253, '127.0.0.1:8000', '/static/blog/img/project-12.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:01.401118');
INSERT INTO "main"."blog_visitorrecord" VALUES (254, '127.0.0.1:8000', '/static/blog/js/main.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:00.608073');
INSERT INTO "main"."blog_visitorrecord" VALUES (255, '127.0.0.1:8000', '/static/blog/js/jquery.easing.1.3.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:00.601072');
INSERT INTO "main"."blog_visitorrecord" VALUES (256, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:02.378174');
INSERT INTO "main"."blog_visitorrecord" VALUES (257, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:02.493181');
INSERT INTO "main"."blog_visitorrecord" VALUES (258, '127.0.0.1:8000', '/static/blog/js/jquery.stellar.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:02.612187');
INSERT INTO "main"."blog_visitorrecord" VALUES (259, '127.0.0.1:8000', '/static/blog/js/main.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:02.753195');
INSERT INTO "main"."blog_visitorrecord" VALUES (260, '127.0.0.1:8000', '/archives/2017/7/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:05.172247');
INSERT INTO "main"."blog_visitorrecord" VALUES (261, '127.0.0.1:8000', '/static/blog/css/animate.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:05.721279');
INSERT INTO "main"."blog_visitorrecord" VALUES (262, '127.0.0.1:8000', '/static/blog/css/icomoon.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:05.739280');
INSERT INTO "main"."blog_visitorrecord" VALUES (263, '127.0.0.1:8000', '/static/blog/css/bootstrap.min.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:05.742280');
INSERT INTO "main"."blog_visitorrecord" VALUES (264, '127.0.0.1:8000', '/static/blog/js/modernizr-2.6.2.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:05.748280');
INSERT INTO "main"."blog_visitorrecord" VALUES (265, '127.0.0.1:8000', '/static/blog/css/style.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:05.750280');
INSERT INTO "main"."blog_visitorrecord" VALUES (266, '127.0.0.1:8000', '/static/blog/js/jquery.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:06.513324');
INSERT INTO "main"."blog_visitorrecord" VALUES (267, '127.0.0.1:8000', '/static/blog/js/jquery.easing.1.3.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:06.630331');
INSERT INTO "main"."blog_visitorrecord" VALUES (268, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:06.730336');
INSERT INTO "main"."blog_visitorrecord" VALUES (269, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:06.736337');
INSERT INTO "main"."blog_visitorrecord" VALUES (270, '127.0.0.1:8000', '/static/blog/js/jquery.stellar.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:06.742337');
INSERT INTO "main"."blog_visitorrecord" VALUES (271, '127.0.0.1:8000', '/static/blog/img/image_1.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:06.995352');
INSERT INTO "main"."blog_visitorrecord" VALUES (272, '127.0.0.1:8000', '/static/blog/js/jquery.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:06.770339');
INSERT INTO "main"."blog_visitorrecord" VALUES (273, '127.0.0.1:8000', '/static/blog/img/project-12.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:07.469379');
INSERT INTO "main"."blog_visitorrecord" VALUES (274, '127.0.0.1:8000', '/static/blog/img/project-13.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:06.878345');
INSERT INTO "main"."blog_visitorrecord" VALUES (275, '127.0.0.1:8000', '/static/blog/img/project-11.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:07.269367');
INSERT INTO "main"."blog_visitorrecord" VALUES (276, '127.0.0.1:8000', '/static/blog/js/jquery.easing.1.3.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:07.724393');
INSERT INTO "main"."blog_visitorrecord" VALUES (277, '127.0.0.1:8000', '/static/blog/img/person_3.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:06.770339');
INSERT INTO "main"."blog_visitorrecord" VALUES (278, '127.0.0.1:8000', '/static/blog/img/project-8.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:08.096415');
INSERT INTO "main"."blog_visitorrecord" VALUES (279, '127.0.0.1:8000', '/static/blog/img/project-9.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:07.606387');
INSERT INTO "main"."blog_visitorrecord" VALUES (280, '127.0.0.1:8000', '/static/blog/img/project-7.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:08.570442');
INSERT INTO "main"."blog_visitorrecord" VALUES (281, '127.0.0.1:8000', '/static/blog/js/main.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:06.760338');
INSERT INTO "main"."blog_visitorrecord" VALUES (282, '127.0.0.1:8000', '/static/blog/img/project-10.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:07.966407');
INSERT INTO "main"."blog_visitorrecord" VALUES (283, '127.0.0.1:8000', '/static/blog/img/project-6.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:08.227422');
INSERT INTO "main"."blog_visitorrecord" VALUES (284, '127.0.0.1:8000', '/static/blog/img/project-5.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:08.696449');
INSERT INTO "main"."blog_visitorrecord" VALUES (285, '127.0.0.1:8000', '/static/blog/img/project-2.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:09.340486');
INSERT INTO "main"."blog_visitorrecord" VALUES (286, '127.0.0.1:8000', '/static/blog/img/project-1.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:09.450492');
INSERT INTO "main"."blog_visitorrecord" VALUES (287, '127.0.0.1:8000', '/static/blog/img/project-3.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:09.076471');
INSERT INTO "main"."blog_visitorrecord" VALUES (288, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:08.404432');
INSERT INTO "main"."blog_visitorrecord" VALUES (289, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:10.421548');
INSERT INTO "main"."blog_visitorrecord" VALUES (290, '127.0.0.1:8000', '/static/blog/js/jquery.stellar.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:10.574556');
INSERT INTO "main"."blog_visitorrecord" VALUES (291, '127.0.0.1:8000', '/post/13/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:10.698563');
INSERT INTO "main"."blog_visitorrecord" VALUES (292, '127.0.0.1:8000', '/static/blog/img/project-4.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:08.815456');
INSERT INTO "main"."blog_visitorrecord" VALUES (293, '127.0.0.1:8000', '/static/blog/css/bootstrap.min.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:11.441606');
INSERT INTO "main"."blog_visitorrecord" VALUES (294, '127.0.0.1:8000', '/static/blog/js/jquery-2.1.3.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:11.494609');
INSERT INTO "main"."blog_visitorrecord" VALUES (295, '127.0.0.1:8000', '/static/blog/js/pace.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:11.581614');
INSERT INTO "main"."blog_visitorrecord" VALUES (296, '127.0.0.1:8000', '/static/blog/js/modernizr.custom.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:11.684620');
INSERT INTO "main"."blog_visitorrecord" VALUES (297, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:11.498609');
INSERT INTO "main"."blog_visitorrecord" VALUES (298, '127.0.0.1:8000', '/static/blog/css/custom.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:11.493609');
INSERT INTO "main"."blog_visitorrecord" VALUES (299, '127.0.0.1:8000', '/static/blog/css/highlights/manni.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:11.488609');
INSERT INTO "main"."blog_visitorrecord" VALUES (300, '127.0.0.1:8000', '/static/blog/js/script.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:11.807627');
INSERT INTO "main"."blog_visitorrecord" VALUES (301, '127.0.0.1:8000', '/static/blog/css/pace.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:11.485608');
INSERT INTO "main"."blog_visitorrecord" VALUES (302, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:12.648675');
INSERT INTO "main"."blog_visitorrecord" VALUES (303, '127.0.0.1:8000', '/static/blog/js/pace.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:12.837686');
INSERT INTO "main"."blog_visitorrecord" VALUES (304, '127.0.0.1:8000', '/static/blog/js/modernizr.custom.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:12.965693');
INSERT INTO "main"."blog_visitorrecord" VALUES (305, '127.0.0.1:8000', '/static/blog/js/script.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:13.078700');
INSERT INTO "main"."blog_visitorrecord" VALUES (306, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:29.105426');
INSERT INTO "main"."blog_visitorrecord" VALUES (307, '127.0.0.1:8000', '/static/blog/css/icomoon.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:29.733462');
INSERT INTO "main"."blog_visitorrecord" VALUES (308, '127.0.0.1:8000', '/static/blog/css/bootstrap.min.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:29.733462');
INSERT INTO "main"."blog_visitorrecord" VALUES (309, '127.0.0.1:8000', '/static/blog/js/modernizr-2.6.2.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:29.738462');
INSERT INTO "main"."blog_visitorrecord" VALUES (310, '127.0.0.1:8000', '/static/blog/css/style.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:29.740462');
INSERT INTO "main"."blog_visitorrecord" VALUES (311, '127.0.0.1:8000', '/static/blog/js/jquery.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:30.263492');
INSERT INTO "main"."blog_visitorrecord" VALUES (312, '127.0.0.1:8000', '/static/blog/js/jquery.easing.1.3.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:30.378499');
INSERT INTO "main"."blog_visitorrecord" VALUES (313, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:30.494505');
INSERT INTO "main"."blog_visitorrecord" VALUES (314, '127.0.0.1:8000', '/static/blog/css/animate.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:29.734462');
INSERT INTO "main"."blog_visitorrecord" VALUES (315, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:30.630513');
INSERT INTO "main"."blog_visitorrecord" VALUES (316, '127.0.0.1:8000', '/static/blog/img/project-11.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:30.825524');
INSERT INTO "main"."blog_visitorrecord" VALUES (317, '127.0.0.1:8000', '/static/blog/img/image_1.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:31.036536');
INSERT INTO "main"."blog_visitorrecord" VALUES (318, '127.0.0.1:8000', '/static/blog/img/project-12.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:31.442560');
INSERT INTO "main"."blog_visitorrecord" VALUES (319, '127.0.0.1:8000', '/static/blog/img/person_3.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:30.786522');
INSERT INTO "main"."blog_visitorrecord" VALUES (320, '127.0.0.1:8000', '/static/blog/js/jquery.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:30.927530');
INSERT INTO "main"."blog_visitorrecord" VALUES (321, '127.0.0.1:8000', '/static/blog/js/main.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:30.822524');
INSERT INTO "main"."blog_visitorrecord" VALUES (322, '127.0.0.1:8000', '/static/blog/js/jquery.easing.1.3.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:31.818581');
INSERT INTO "main"."blog_visitorrecord" VALUES (323, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:32.022593');
INSERT INTO "main"."blog_visitorrecord" VALUES (324, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:32.150600');
INSERT INTO "main"."blog_visitorrecord" VALUES (325, '127.0.0.1:8000', '/static/blog/js/jquery.stellar.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:30.819524');
INSERT INTO "main"."blog_visitorrecord" VALUES (326, '127.0.0.1:8000', '/static/blog/img/project-9.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:31.573567');
INSERT INTO "main"."blog_visitorrecord" VALUES (327, '127.0.0.1:8000', '/static/blog/js/main.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:32.366613');
INSERT INTO "main"."blog_visitorrecord" VALUES (328, '127.0.0.1:8000', '/static/blog/img/project-13.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:39:30.808523');
INSERT INTO "main"."blog_visitorrecord" VALUES (329, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:08.944286');
INSERT INTO "main"."blog_visitorrecord" VALUES (330, '127.0.0.1:8000', '/static/blog/css/animate.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:09.445091');
INSERT INTO "main"."blog_visitorrecord" VALUES (331, '127.0.0.1:8000', '/static/blog/css/icomoon.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:09.601091');
INSERT INTO "main"."blog_visitorrecord" VALUES (332, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:09.663491');
INSERT INTO "main"."blog_visitorrecord" VALUES (333, '127.0.0.1:8000', '/static/blog/css/animate.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:10.097714');
INSERT INTO "main"."blog_visitorrecord" VALUES (334, '127.0.0.1:8000', '/static/blog/js/modernizr-2.6.2.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:10.115715');
INSERT INTO "main"."blog_visitorrecord" VALUES (335, '127.0.0.1:8000', '/static/blog/css/style.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:10.099714');
INSERT INTO "main"."blog_visitorrecord" VALUES (336, '127.0.0.1:8000', '/static/blog/css/icomoon.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:10.098714');
INSERT INTO "main"."blog_visitorrecord" VALUES (337, '127.0.0.1:8000', '/static/blog/css/bootstrap.min.css', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:10.098714');
INSERT INTO "main"."blog_visitorrecord" VALUES (338, '127.0.0.1:8000', '/static/blog/js/jquery.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:10.877759');
INSERT INTO "main"."blog_visitorrecord" VALUES (339, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:11.010766');
INSERT INTO "main"."blog_visitorrecord" VALUES (340, '127.0.0.1:8000', '/static/blog/img/project-13.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:11.227779');
INSERT INTO "main"."blog_visitorrecord" VALUES (341, '127.0.0.1:8000', '/static/blog/js/jquery.easing.1.3.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:11.000766');
INSERT INTO "main"."blog_visitorrecord" VALUES (342, '127.0.0.1:8000', '/static/blog/img/image_1.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:11.365787');
INSERT INTO "main"."blog_visitorrecord" VALUES (343, '127.0.0.1:8000', '/static/blog/img/person_3.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:11.478793');
INSERT INTO "main"."blog_visitorrecord" VALUES (344, '127.0.0.1:8000', '/static/blog/img/project-12.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:11.848814');
INSERT INTO "main"."blog_visitorrecord" VALUES (345, '127.0.0.1:8000', '/static/blog/img/project-11.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:11.629802');
INSERT INTO "main"."blog_visitorrecord" VALUES (346, '127.0.0.1:8000', '/static/blog/js/bootstrap.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:11.748809');
INSERT INTO "main"."blog_visitorrecord" VALUES (347, '127.0.0.1:8000', '/static/blog/img/project-9.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:12.154832');
INSERT INTO "main"."blog_visitorrecord" VALUES (348, '127.0.0.1:8000', '/static/blog/js/jquery.waypoints.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:11.028767');
INSERT INTO "main"."blog_visitorrecord" VALUES (349, '127.0.0.1:8000', '/static/blog/js/jquery.stellar.min.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:11.039768');
INSERT INTO "main"."blog_visitorrecord" VALUES (350, '127.0.0.1:8000', '/static/blog/js/main.js', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:11.041768');
INSERT INTO "main"."blog_visitorrecord" VALUES (351, '127.0.0.1:8000', '/admin', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:14.706900');
INSERT INTO "main"."blog_visitorrecord" VALUES (352, '127.0.0.1:8000', '/admin', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:15.411703');
INSERT INTO "main"."blog_visitorrecord" VALUES (353, '127.0.0.1:8000', '/favicon.ico', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:15.946333');
INSERT INTO "main"."blog_visitorrecord" VALUES (354, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:39.010610');
INSERT INTO "main"."blog_visitorrecord" VALUES (355, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:41.769315');
INSERT INTO "main"."blog_visitorrecord" VALUES (356, '127.0.0.1:8000', '/admin', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:40:46.205400');
INSERT INTO "main"."blog_visitorrecord" VALUES (357, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:41:12.661027');
INSERT INTO "main"."blog_visitorrecord" VALUES (358, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:41:54.435280');
INSERT INTO "main"."blog_visitorrecord" VALUES (359, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:42:12.927660');
INSERT INTO "main"."blog_visitorrecord" VALUES (360, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 01:42:23.126785');
INSERT INTO "main"."blog_visitorrecord" VALUES (361, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 04:24:41.335695');
INSERT INTO "main"."blog_visitorrecord" VALUES (362, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 04:25:21.170974');
INSERT INTO "main"."blog_visitorrecord" VALUES (363, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 04:25:28.368386');
INSERT INTO "main"."blog_visitorrecord" VALUES (364, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 04:25:33.636687');
INSERT INTO "main"."blog_visitorrecord" VALUES (365, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 04:27:11.686295');
INSERT INTO "main"."blog_visitorrecord" VALUES (366, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 04:27:22.796930');
INSERT INTO "main"."blog_visitorrecord" VALUES (367, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 04:27:27.558203');
INSERT INTO "main"."blog_visitorrecord" VALUES (368, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 04:27:52.284617');
INSERT INTO "main"."blog_visitorrecord" VALUES (369, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 04:27:59.811048');
INSERT INTO "main"."blog_visitorrecord" VALUES (370, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 04:28:24.017432');
INSERT INTO "main"."blog_visitorrecord" VALUES (371, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 04:28:33.478973');
INSERT INTO "main"."blog_visitorrecord" VALUES (372, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 04:28:38.318250');
INSERT INTO "main"."blog_visitorrecord" VALUES (373, '127.0.0.1:8000', '/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '127.0.0.1', 'lxl-PC', '2017-07-12 08:58:39.388898');

-- ----------------------------
-- Table structure for comments_comment
-- ----------------------------
DROP TABLE IF EXISTS "main"."comments_comment";
CREATE TABLE "comments_comment" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(200) NOT NULL, "email" varchar(255) NOT NULL, "url" varchar(200) NOT NULL, "text" text NOT NULL, "create_time" datetime NOT NULL, "post_id" integer NOT NULL REFERENCES "blog_post" ("id"));

-- ----------------------------
-- Records of comments_comment
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS "main"."django_admin_log";
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "action_time" datetime NOT NULL);

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO "main"."django_admin_log" VALUES (1, 1, 'Git', 1, '[{"added": {}}]', 9, 1, '2017-07-03 05:29:15.639126');
INSERT INTO "main"."django_admin_log" VALUES (2, 2, 'Python', 1, '[{"added": {}}]', 9, 1, '2017-07-03 05:29:23.021548');
INSERT INTO "main"."django_admin_log" VALUES (3, 3, 'Django', 1, '[{"added": {}}]', 9, 1, '2017-07-03 05:29:26.891769');
INSERT INTO "main"."django_admin_log" VALUES (4, 4, 'JavaScript', 1, '[{"added": {}}]', 9, 1, '2017-07-03 05:29:33.788164');
INSERT INTO "main"."django_admin_log" VALUES (5, 5, 'JQuery', 1, '[{"added": {}}]', 9, 1, '2017-07-03 05:29:42.961689');
INSERT INTO "main"."django_admin_log" VALUES (6, 6, 'CSS', 1, '[{"added": {}}]', 9, 1, '2017-07-03 05:29:46.484890');
INSERT INTO "main"."django_admin_log" VALUES (7, 7, 'Linux', 1, '[{"added": {}}]', 9, 1, '2017-07-03 05:29:51.954203');
INSERT INTO "main"."django_admin_log" VALUES (8, 8, 'Windows', 1, '[{"added": {}}]', 9, 1, '2017-07-03 05:29:55.577410');
INSERT INTO "main"."django_admin_log" VALUES (9, 1, '公告', 1, '[{"added": {}}]', 7, 1, '2017-07-03 05:31:57.230368');
INSERT INTO "main"."django_admin_log" VALUES (10, 9, '文章', 1, '[{"added": {}}]', 9, 1, '2017-07-03 05:32:15.277401');
INSERT INTO "main"."django_admin_log" VALUES (11, 1, '测试文章', 1, '[{"added": {}}]', 8, 1, '2017-07-03 05:32:23.447868');
INSERT INTO "main"."django_admin_log" VALUES (12, 10, '百科', 1, '[{"added": {}}]', 9, 1, '2017-07-03 06:01:13.525823');
INSERT INTO "main"."django_admin_log" VALUES (13, 2, '测试标签', 1, '[{"added": {}}]', 8, 1, '2017-07-03 06:01:25.785524');
INSERT INTO "main"."django_admin_log" VALUES (14, 2, '测试标签', 2, '[{"changed": {"fields": ["body"]}}]', 8, 1, '2017-07-03 06:17:01.350035');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS "main"."django_content_type";
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO "main"."django_content_type" VALUES (1, 'admin', 'logentry');
INSERT INTO "main"."django_content_type" VALUES (2, 'auth', 'permission');
INSERT INTO "main"."django_content_type" VALUES (3, 'auth', 'group');
INSERT INTO "main"."django_content_type" VALUES (4, 'auth', 'user');
INSERT INTO "main"."django_content_type" VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO "main"."django_content_type" VALUES (6, 'sessions', 'session');
INSERT INTO "main"."django_content_type" VALUES (7, 'server', 'category');
INSERT INTO "main"."django_content_type" VALUES (8, 'server', 'post');
INSERT INTO "main"."django_content_type" VALUES (9, 'server', 'tag');
INSERT INTO "main"."django_content_type" VALUES (10, 'comments', 'comment');
INSERT INTO "main"."django_content_type" VALUES (11, 'xadmin', 'bookmark');
INSERT INTO "main"."django_content_type" VALUES (12, 'xadmin', 'usersettings');
INSERT INTO "main"."django_content_type" VALUES (13, 'xadmin', 'userwidget');
INSERT INTO "main"."django_content_type" VALUES (14, 'xadmin', 'log');
INSERT INTO "main"."django_content_type" VALUES (15, 'reversion', 'revision');
INSERT INTO "main"."django_content_type" VALUES (16, 'reversion', 'version');
INSERT INTO "main"."django_content_type" VALUES (17, 'blog', 'tag');
INSERT INTO "main"."django_content_type" VALUES (18, 'blog', 'category');
INSERT INTO "main"."django_content_type" VALUES (19, 'blog', 'post');
INSERT INTO "main"."django_content_type" VALUES (20, 'blog', 'about');
INSERT INTO "main"."django_content_type" VALUES (21, 'blog', 'friendsites');
INSERT INTO "main"."django_content_type" VALUES (22, 'blog', 'pageview');
INSERT INTO "main"."django_content_type" VALUES (23, 'blog', 'visitorrecord');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS "main"."django_migrations";
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO "main"."django_migrations" VALUES (1, 'contenttypes', '0001_initial', '2017-07-03 03:26:46.077755');
INSERT INTO "main"."django_migrations" VALUES (2, 'auth', '0001_initial', '2017-07-03 03:26:46.383772');
INSERT INTO "main"."django_migrations" VALUES (3, 'admin', '0001_initial', '2017-07-03 03:26:46.620786');
INSERT INTO "main"."django_migrations" VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2017-07-03 03:26:46.918803');
INSERT INTO "main"."django_migrations" VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2017-07-03 03:26:47.360828');
INSERT INTO "main"."django_migrations" VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2017-07-03 03:26:47.662846');
INSERT INTO "main"."django_migrations" VALUES (7, 'auth', '0003_alter_user_email_max_length', '2017-07-03 03:26:47.983864');
INSERT INTO "main"."django_migrations" VALUES (8, 'auth', '0004_alter_user_username_opts', '2017-07-03 03:26:48.247879');
INSERT INTO "main"."django_migrations" VALUES (9, 'auth', '0005_alter_user_last_login_null', '2017-07-03 03:26:48.533895');
INSERT INTO "main"."django_migrations" VALUES (10, 'auth', '0006_require_contenttypes_0002', '2017-07-03 03:26:48.648902');
INSERT INTO "main"."django_migrations" VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2017-07-03 03:26:48.938919');
INSERT INTO "main"."django_migrations" VALUES (12, 'auth', '0008_alter_user_username_max_length', '2017-07-03 03:26:49.218935');
INSERT INTO "main"."django_migrations" VALUES (13, 'blog', '0001_initial', '2017-07-03 03:26:49.580955');
INSERT INTO "main"."django_migrations" VALUES (14, 'comments', '0001_initial', '2017-07-03 03:26:49.935976');
INSERT INTO "main"."django_migrations" VALUES (15, 'blog', '0002_auto_20170630_1541', '2017-07-03 03:26:50.240993');
INSERT INTO "main"."django_migrations" VALUES (16, 'sessions', '0001_initial', '2017-07-03 03:26:50.442005');
INSERT INTO "main"."django_migrations" VALUES (17, 'reversion', '0001_initial', '2017-07-03 09:10:12.495375');
INSERT INTO "main"."django_migrations" VALUES (18, 'reversion', '0002_auto_20141216_1509', '2017-07-03 09:10:12.600381');
INSERT INTO "main"."django_migrations" VALUES (19, 'reversion', '0003_auto_20160601_1600', '2017-07-03 09:10:12.719387');
INSERT INTO "main"."django_migrations" VALUES (20, 'reversion', '0004_auto_20160611_1202', '2017-07-03 09:10:12.825394');
INSERT INTO "main"."django_migrations" VALUES (21, 'xadmin', '0001_initial', '2017-07-03 09:10:13.119410');
INSERT INTO "main"."django_migrations" VALUES (22, 'xadmin', '0002_log', '2017-07-03 09:10:13.401426');
INSERT INTO "main"."django_migrations" VALUES (23, 'xadmin', '0003_auto_20160715_0100', '2017-07-03 09:10:13.773448');
INSERT INTO "main"."django_migrations" VALUES (24, 'reversion', '0001_squashed_0004_auto_20160611_1202', '2017-07-03 09:10:13.872453');
INSERT INTO "main"."django_migrations" VALUES (25, 'blog', '0003_about', '2017-07-11 03:12:04.723154');
INSERT INTO "main"."django_migrations" VALUES (26, 'blog', '0004_auto_20170711_1425', '2017-07-11 06:25:26.538740');
INSERT INTO "main"."django_migrations" VALUES (27, 'blog', '0005_auto_20170711_1810', '2017-07-11 10:10:20.776567');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS "main"."django_session";
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO "main"."django_session" VALUES ('8fsmdqblwwu8uwiettn3j7b243q2sjbg', 'YTAzZGY3MTE0YmU5YzM1OWI0YjFkYmU3MDAwMDUxYjM5YTgzMWFiMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3OWI0MjE3MGM2YmNhZTFlZTcxN2M1OWZmMWM4YzZkMmY4OTA1ZDg0IiwiTElTVF9RVUVSWSI6W1siYmxvZyIsInBvc3QiXSwiIl0sIjEyNy4wLjAuMSI6MSwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJCbG9nXCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2NTg3XHU3YWUwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9ibG9nL3Bvc3QvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDV9LCB7XCJ0aXRsZVwiOiBcIlx1NTIwNlx1N2M3YlwiLCBcInVybFwiOiBcIi94YWRtaW4vYmxvZy9jYXRlZ29yeS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogNn0sIHtcInRpdGxlXCI6IFwiXHU2ODA3XHU3YjdlXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9ibG9nL3RhZy9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogN30sIHtcInRpdGxlXCI6IFwiXHU1MTczXHU0ZThlXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9ibG9nL2Fib3V0L1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA4fSwge1widGl0bGVcIjogXCJcdThiYmZcdTk1ZWVcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL2Jsb2cvdmlzaXRvcnJlY29yZC9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOX1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vYmxvZy9wb3N0L1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDExfV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIn0sIHtcInRpdGxlXCI6IFwiXHU4YmE0XHU4YmMxXHU1NDhjXHU2Mzg4XHU2NzQzXCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU3ZWM0XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcIm9yZGVyXCI6IDJ9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1wiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC91c2VyL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyXCIsIFwib3JkZXJcIjogM30sIHtcInRpdGxlXCI6IFwiXHU2NzQzXHU5NjUwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3Blcm1pc3Npb24vXCIsIFwiaWNvblwiOiBcImZhIGZhLWxvY2tcIiwgXCJvcmRlclwiOiA0fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wifV0ifQ==', '2017-07-26 01:41:05.441305');
INSERT INTO "main"."django_session" VALUES ('xar9mcffg30vubl59n423pw5krs94owl', 'ZGU1NjZmOWU2MGI4YzEyNmZiMWRhNGI4NWExMGI5M2ExYTVlODhkYjp7IjEyNy4wLjAuMSI6MX0=', '2017-07-25 09:39:41.017338');

-- ----------------------------
-- Table structure for reversion_revision
-- ----------------------------
DROP TABLE IF EXISTS "main"."reversion_revision";
CREATE TABLE "reversion_revision" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "date_created" datetime NOT NULL, "comment" text NOT NULL, "user_id" integer NULL REFERENCES "auth_user" ("id"));

-- ----------------------------
-- Records of reversion_revision
-- ----------------------------

-- ----------------------------
-- Table structure for reversion_version
-- ----------------------------
DROP TABLE IF EXISTS "main"."reversion_version";
CREATE TABLE "reversion_version" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" varchar(191) NOT NULL, "format" varchar(255) NOT NULL, "serialized_data" text NOT NULL, "object_repr" text NOT NULL, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "revision_id" integer NOT NULL REFERENCES "reversion_revision" ("id"), "db" varchar(191) NOT NULL);

-- ----------------------------
-- Records of reversion_version
-- ----------------------------

-- ----------------------------
-- Table structure for sqlite_sequence
-- ----------------------------
DROP TABLE IF EXISTS "main"."sqlite_sequence";
CREATE TABLE sqlite_sequence(name,seq);

-- ----------------------------
-- Records of sqlite_sequence
-- ----------------------------
INSERT INTO "main"."sqlite_sequence" VALUES ('django_migrations', 27);
INSERT INTO "main"."sqlite_sequence" VALUES ('django_admin_log', 14);
INSERT INTO "main"."sqlite_sequence" VALUES ('django_content_type', 23);
INSERT INTO "main"."sqlite_sequence" VALUES ('auth_permission', 92);
INSERT INTO "main"."sqlite_sequence" VALUES ('auth_user', 1);
INSERT INTO "main"."sqlite_sequence" VALUES ('blog_tag', 10);
INSERT INTO "main"."sqlite_sequence" VALUES ('blog_category', 1);
INSERT INTO "main"."sqlite_sequence" VALUES ('xadmin_log', 17);
INSERT INTO "main"."sqlite_sequence" VALUES ('xadmin_usersettings', 1);
INSERT INTO "main"."sqlite_sequence" VALUES ('blog_about', 1);
INSERT INTO "main"."sqlite_sequence" VALUES ('blog_post_tags', 13);
INSERT INTO "main"."sqlite_sequence" VALUES ('blog_post', 13);
INSERT INTO "main"."sqlite_sequence" VALUES ('blog_visitorrecord', 373);
INSERT INTO "main"."sqlite_sequence" VALUES ('blog_pageview', 2);

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS "main"."xadmin_bookmark";
CREATE TABLE "xadmin_bookmark" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(128) NOT NULL, "url_name" varchar(64) NOT NULL, "query" varchar(1000) NOT NULL, "is_share" bool NOT NULL, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "user_id" integer NULL REFERENCES "auth_user" ("id"));

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS "main"."xadmin_log";
CREATE TABLE "xadmin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "ip_addr" char(39) NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "action_flag" varchar(32) NOT NULL);

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO "main"."xadmin_log" VALUES (1, '2017-07-04 05:31:52.530726', '127.0.0.1', 2, '测试文章', '修改 title', 19, 1, 'change');
INSERT INTO "main"."xadmin_log" VALUES (2, '2017-07-11 00:52:50.979600', '127.0.0.1', 3, '浏阳市', '已添加。', 19, 1, 'create');
INSERT INTO "main"."xadmin_log" VALUES (3, '2017-07-11 00:53:32.119953', '127.0.0.1', 4, '湖南大学', '已添加。', 19, 1, 'create');
INSERT INTO "main"."xadmin_log" VALUES (4, '2017-07-11 00:54:19.113641', '127.0.0.1', 5, '湖南省', '已添加。', 19, 1, 'create');
INSERT INTO "main"."xadmin_log" VALUES (5, '2017-07-11 00:55:36.190049', '127.0.0.1', 6, 'Python', '已添加。', 19, 1, 'create');
INSERT INTO "main"."xadmin_log" VALUES (6, '2017-07-11 00:56:02.724567', '127.0.0.1', 7, 'JavaScript', '已添加。', 19, 1, 'create');
INSERT INTO "main"."xadmin_log" VALUES (7, '2017-07-11 00:56:31.970240', '127.0.0.1', 8, 'Java', '已添加。', 19, 1, 'create');
INSERT INTO "main"."xadmin_log" VALUES (8, '2017-07-11 01:24:32.097337', '127.0.0.1', 9, 'PHP', '已添加。', 19, 1, 'create');
INSERT INTO "main"."xadmin_log" VALUES (9, '2017-07-11 01:25:09.631055', '127.0.0.1', 10, '测试分页文章', '已添加。', 19, 1, 'create');
INSERT INTO "main"."xadmin_log" VALUES (10, '2017-07-11 01:25:28.726148', '127.0.0.1', 11, '测试用', '已添加。', 19, 1, 'create');
INSERT INTO "main"."xadmin_log" VALUES (11, '2017-07-11 01:25:56.076704', '127.0.0.1', 12, 'ceshi', '已添加。', 19, 1, 'create');
INSERT INTO "main"."xadmin_log" VALUES (12, '2017-07-11 01:28:15.280595', '127.0.0.1', 13, 'xadmin有bug', '已添加。', 19, 1, 'create');
INSERT INTO "main"."xadmin_log" VALUES (13, '2017-07-11 03:22:52.669215', '127.0.0.1', 1, '关于我', '已添加。', 20, 1, 'create');
INSERT INTO "main"."xadmin_log" VALUES (14, '2017-07-11 05:27:50.602072', '127.0.0.1', 13, 'xadmin有bug', '修改 body', 19, 1, 'change');
INSERT INTO "main"."xadmin_log" VALUES (15, '2017-07-11 05:28:44.693166', '127.0.0.1', 13, 'xadmin有bug', '修改 body', 19, 1, 'change');
INSERT INTO "main"."xadmin_log" VALUES (16, '2017-07-11 05:31:57.868215', '127.0.0.1', 13, '湖南省简介', '修改 title 和 body', 19, 1, 'change');
INSERT INTO "main"."xadmin_log" VALUES (17, '2017-07-11 05:44:24.810938', '127.0.0.1', 13, '湖南省简介', '修改 body', 19, 1, 'change');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS "main"."xadmin_usersettings";
CREATE TABLE "xadmin_usersettings" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "key" varchar(256) NOT NULL, "value" text NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO "main"."xadmin_usersettings" VALUES (1, 'dashboard:home:pos', '', 1);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS "main"."xadmin_userwidget";
CREATE TABLE "xadmin_userwidget" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "page_id" varchar(256) NOT NULL, "widget_type" varchar(50) NOT NULL, "value" text NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "main"."auth_group_permissions_group_id_b120cbf9"
ON "auth_group_permissions" ("group_id" ASC);
CREATE UNIQUE INDEX "main"."auth_group_permissions_group_id_permission_id_0cd325b0_uniq"
ON "auth_group_permissions" ("group_id" ASC, "permission_id" ASC);
CREATE INDEX "main"."auth_group_permissions_permission_id_84c5c92e"
ON "auth_group_permissions" ("permission_id" ASC);

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "main"."auth_permission_content_type_id_2f476e4b"
ON "auth_permission" ("content_type_id" ASC);
CREATE UNIQUE INDEX "main"."auth_permission_content_type_id_codename_01ab375a_uniq"
ON "auth_permission" ("content_type_id" ASC, "codename" ASC);

-- ----------------------------
-- Indexes structure for table auth_user_groups
-- ----------------------------
CREATE INDEX "main"."auth_user_groups_group_id_97559544"
ON "auth_user_groups" ("group_id" ASC);
CREATE INDEX "main"."auth_user_groups_user_id_6a12ed8b"
ON "auth_user_groups" ("user_id" ASC);
CREATE UNIQUE INDEX "main"."auth_user_groups_user_id_group_id_94350c0c_uniq"
ON "auth_user_groups" ("user_id" ASC, "group_id" ASC);

-- ----------------------------
-- Indexes structure for table auth_user_user_permissions
-- ----------------------------
CREATE INDEX "main"."auth_user_user_permissions_permission_id_1fbb5f2c"
ON "auth_user_user_permissions" ("permission_id" ASC);
CREATE INDEX "main"."auth_user_user_permissions_user_id_a95ead1b"
ON "auth_user_user_permissions" ("user_id" ASC);
CREATE UNIQUE INDEX "main"."auth_user_user_permissions_user_id_permission_id_14a6b632_uniq"
ON "auth_user_user_permissions" ("user_id" ASC, "permission_id" ASC);

-- ----------------------------
-- Indexes structure for table blog_post
-- ----------------------------
CREATE INDEX "main"."blog_post_author_id_dd7a8485"
ON "blog_post" ("author_id" ASC);
CREATE INDEX "main"."blog_post_category_id_c326dbf8"
ON "blog_post" ("category_id" ASC);

-- ----------------------------
-- Indexes structure for table blog_post_tags
-- ----------------------------
CREATE INDEX "main"."blog_post_tags_post_id_a1c71c8a"
ON "blog_post_tags" ("post_id" ASC);
CREATE UNIQUE INDEX "main"."blog_post_tags_post_id_tag_id_4925ec37_uniq"
ON "blog_post_tags" ("post_id" ASC, "tag_id" ASC);
CREATE INDEX "main"."blog_post_tags_tag_id_0875c551"
ON "blog_post_tags" ("tag_id" ASC);

-- ----------------------------
-- Indexes structure for table comments_comment
-- ----------------------------
CREATE INDEX "main"."comments_comment_post_id_96a9ac05"
ON "comments_comment" ("post_id" ASC);

-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "main"."django_admin_log_content_type_id_c4bce8eb"
ON "django_admin_log" ("content_type_id" ASC);
CREATE INDEX "main"."django_admin_log_user_id_c564eba6"
ON "django_admin_log" ("user_id" ASC);

-- ----------------------------
-- Indexes structure for table django_content_type
-- ----------------------------
CREATE UNIQUE INDEX "main"."django_content_type_app_label_model_76bd3d3b_uniq"
ON "django_content_type" ("app_label" ASC, "model" ASC);

-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "main"."django_session_expire_date_a5c62663"
ON "django_session" ("expire_date" ASC);

-- ----------------------------
-- Indexes structure for table reversion_revision
-- ----------------------------
CREATE INDEX "main"."reversion_revision_date_created_96f7c20c"
ON "reversion_revision" ("date_created" ASC);
CREATE INDEX "main"."reversion_revision_user_id_17095f45"
ON "reversion_revision" ("user_id" ASC);

-- ----------------------------
-- Indexes structure for table reversion_version
-- ----------------------------
CREATE INDEX "main"."reversion_version_content_type_id_7d0ff25c"
ON "reversion_version" ("content_type_id" ASC);
CREATE UNIQUE INDEX "main"."reversion_version_db_content_type_id_object_id_revision_id_b2c54f65_uniq"
ON "reversion_version" ("db" ASC, "content_type_id" ASC, "object_id" ASC, "revision_id" ASC);
CREATE INDEX "main"."reversion_version_revision_id_af9f6a9d"
ON "reversion_version" ("revision_id" ASC);

-- ----------------------------
-- Indexes structure for table xadmin_bookmark
-- ----------------------------
CREATE INDEX "main"."xadmin_bookmark_content_type_id_60941679"
ON "xadmin_bookmark" ("content_type_id" ASC);
CREATE INDEX "main"."xadmin_bookmark_user_id_42d307fc"
ON "xadmin_bookmark" ("user_id" ASC);

-- ----------------------------
-- Indexes structure for table xadmin_log
-- ----------------------------
CREATE INDEX "main"."xadmin_log_content_type_id_2a6cb852"
ON "xadmin_log" ("content_type_id" ASC);
CREATE INDEX "main"."xadmin_log_user_id_bb16a176"
ON "xadmin_log" ("user_id" ASC);

-- ----------------------------
-- Indexes structure for table xadmin_usersettings
-- ----------------------------
CREATE INDEX "main"."xadmin_usersettings_user_id_edeabe4a"
ON "xadmin_usersettings" ("user_id" ASC);

-- ----------------------------
-- Indexes structure for table xadmin_userwidget
-- ----------------------------
CREATE INDEX "main"."xadmin_userwidget_user_id_c159233a"
ON "xadmin_userwidget" ("user_id" ASC);
