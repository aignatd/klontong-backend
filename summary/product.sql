/*
 Navicat Premium Dump SQL

 Source Server         : Postgres Local
 Source Server Type    : PostgreSQL
 Source Server Version : 160004 (160004)
 Source Host           : localhost:5445
 Source Catalog        : klontong
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 160004 (160004)
 File Encoding         : 65001

 Date: 13/09/2024 16:56:53
*/


-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS "public"."product";
CREATE TABLE "public"."product" (
  "id" int4 NOT NULL DEFAULT nextval('product_id_seq'::regclass),
  "CategoryId" int4 NOT NULL,
  "categoryName" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "sku" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "weight" int4 NOT NULL,
  "width" int4 NOT NULL,
  "length" int4 NOT NULL,
  "height" int4 NOT NULL,
  "image" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "price" int4 NOT NULL
)
;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO "public"."product" VALUES (1, 623, '余晓明', 'FD-ED-6372-Y', '余晓明', 'olEi4NjMUm', 580, 94, 720, 996, 'Ky2DWzrFbh', 498);
INSERT INTO "public"."product" VALUES (2, 789, '工藤架純', 'EF-CE-4908-C', '工藤架純', '4uhhsL7H0Q', 286, 582, 65, 166, 'oW862UY53c', 145);
INSERT INTO "public"."product" VALUES (4, 890, '韦璐', 'DD-BC-4504-F', '韦璐', '0bGYOrawwG', 698, 957, 843, 926, 'hGSnbbnssh', 500);
INSERT INTO "public"."product" VALUES (5, 753, '沈震南', 'AD-EF-6092-X', '沈震南', 'NGIj2kk63Z', 153, 691, 59, 179, '8hxC7sSEsV', 913);
INSERT INTO "public"."product" VALUES (6, 863, '杜國權', 'BB-AD-8883-L', '杜國權', 'ahnXi5zvqm', 298, 782, 690, 457, 'UK0rf9KVPm', 839);
INSERT INTO "public"."product" VALUES (7, 347, '叶云熙', 'EE-AE-5743-G', '叶云熙', 'hQINxZzxMU', 748, 443, 281, 908, 'rORtWv08Po', 100);
INSERT INTO "public"."product" VALUES (8, 651, '陳淑怡', 'AC-CD-3591-X', '陳淑怡', 'UmiOkk5z52', 651, 693, 628, 481, 'Z9dFPTXpG5', 179);
INSERT INTO "public"."product" VALUES (9, 825, '鄧德華', 'BA-AB-4033-G', '鄧德華', 'M8KWqjx5fe', 417, 557, 752, 139, 'TXBoUjJNCs', 643);
INSERT INTO "public"."product" VALUES (10, 439, '譚國權', 'FD-BA-3414-N', '譚國權', 'L4C47QdU73', 691, 0, 8, 15, 'gqNLzfcqh8', 972);
INSERT INTO "public"."product" VALUES (11, 324, '邓致远', 'BB-AB-8177-H', '邓致远', 'va4Fa383nR', 627, 560, 649, 332, 'TpFy0c3Swq', 555);
INSERT INTO "public"."product" VALUES (12, 656, '西村樹', 'EF-BD-2613-J', '西村樹', 'YLuF7LfVtZ', 449, 843, 419, 593, 'OZIH7IHNCB', 109);
INSERT INTO "public"."product" VALUES (13, 523, '萧璐', 'CC-EB-9182-Y', '萧璐', 'TuYRcZoxyV', 564, 310, 134, 298, 'vf9gUmKV3E', 933);
INSERT INTO "public"."product" VALUES (14, 153, '胡富城', 'ED-FC-3534-D', '胡富城', 'JgaNFeKXSG', 179, 330, 242, 692, 'XYW38HSSR8', 992);
INSERT INTO "public"."product" VALUES (15, 671, '梁天榮', 'BA-FE-1141-X', '梁天榮', 'SqteIRuuyh', 563, 325, 291, 38, 'z3mt66zijy', 141);
INSERT INTO "public"."product" VALUES (16, 144, '贾嘉伦', 'DB-CE-9749-J', '贾嘉伦', 'QdNO4XCp5d', 437, 570, 418, 423, '0K52Zs9aiK', 176);
INSERT INTO "public"."product" VALUES (17, 927, '伍永權', 'FA-BC-3518-S', '伍永權', '0cPXUG9eEB', 786, 932, 322, 452, 'GnSINokivG', 503);
INSERT INTO "public"."product" VALUES (18, 968, '邹詩涵', 'FD-CC-9266-G', '邹詩涵', 'A5LcmGhzc1', 443, 359, 726, 801, 'OUuVJxQe6H', 678);
INSERT INTO "public"."product" VALUES (19, 969, '郑致远', 'AE-BD-8278-F', '郑致远', 'iJWALjBhBH', 752, 158, 414, 713, '7Ce5SITuco', 152);
INSERT INTO "public"."product" VALUES (20, 150, '容梓晴', 'FC-ED-0120-P', '容梓晴', '4Yv7shk6w1', 719, 619, 136, 493, 'gv8YRDQnLF', 595);
INSERT INTO "public"."product" VALUES (21, 782, '雷發', 'FD-DB-6567-H', '雷發', 'fVxfiXvjXU', 692, 679, 356, 312, 'M124TqVzqu', 612);
INSERT INTO "public"."product" VALUES (22, 855, '馮頴思', 'FE-AB-2705-B', '馮頴思', 'iSXWCXbOtL', 913, 580, 973, 855, 'uAD4lXtjYO', 855);
INSERT INTO "public"."product" VALUES (23, 519, '薛國榮', 'BE-BC-3992-K', '薛國榮', '1UYhxffBT0', 977, 412, 801, 692, 'YkIVcJriRv', 221);
INSERT INTO "public"."product" VALUES (24, 915, '岡田凛', 'CE-BE-1432-C', '岡田凛', 'hDkhb4LVMc', 223, 829, 324, 206, 'iFivh9NA2T', 403);
INSERT INTO "public"."product" VALUES (25, 506, '郑宇宁', 'BA-CF-8370-X', '郑宇宁', 'r1nLYXpBtB', 980, 689, 692, 816, '24Zi97Axzm', 849);
INSERT INTO "public"."product" VALUES (26, 471, '渡辺悠人', 'FD-DB-6528-F', '渡辺悠人', 'Zxkj2sUio0', 899, 552, 116, 247, 'LG1grPiGkB', 812);
INSERT INTO "public"."product" VALUES (27, 943, '黃慧琳', 'DD-EB-1461-C', '黃慧琳', 'Um93TgCGrt', 800, 661, 190, 659, 'mR4rKLh9wx', 870);
INSERT INTO "public"."product" VALUES (28, 831, '許志明', 'DD-CC-7434-U', '許志明', 'YONW7HHuup', 572, 944, 620, 234, 'vuSq5lC5PV', 630);
INSERT INTO "public"."product" VALUES (29, 532, '有村紗良', 'DF-BF-9001-Z', '有村紗良', 'OEVltm1gyx', 595, 591, 545, 229, '5SEZE0I99P', 243);
INSERT INTO "public"."product" VALUES (30, 414, '中島桜', 'AE-AE-5690-A', '中島桜', 'fiwK9urx9M', 921, 196, 125, 986, 'ujhSscNTCg', 438);
INSERT INTO "public"."product" VALUES (31, 110, '廖永權', 'BB-AC-3981-U', '廖永權', 'Xe2C9MPZqW', 486, 34, 903, 842, 'GgQJ9pejy0', 292);
INSERT INTO "public"."product" VALUES (32, 950, '崔永發', 'CF-BB-8119-B', '崔永發', 'chOxbW73Nb', 224, 824, 865, 75, 'e6rm4znh51', 732);
INSERT INTO "public"."product" VALUES (33, 250, '石井玲奈', 'BD-FA-2759-P', '石井玲奈', '7Ief7I2WRL', 824, 277, 733, 642, 'oYbFESKhKd', 667);
INSERT INTO "public"."product" VALUES (34, 570, '佘永發', 'CE-AE-8950-H', '佘永發', 'odHVhuTAYN', 145, 9, 783, 23, '5Bm3fBSP96', 771);
INSERT INTO "public"."product" VALUES (35, 362, '太田大和', 'FC-DC-2862-E', '太田大和', 'yrbrLAc6Rp', 635, 346, 901, 658, '7xm6I9tFYR', 97);
INSERT INTO "public"."product" VALUES (36, 48, '毛玲玲', 'BD-CF-8490-H', '毛玲玲', 'sd3GGhWyfR', 864, 957, 555, 375, 'llmsXGAVGW', 197);
INSERT INTO "public"."product" VALUES (37, 406, '錢仲賢', 'CD-CA-1807-B', '錢仲賢', 'koGgSP6HqE', 361, 485, 26, 653, 'rTLmRs8L7C', 831);
INSERT INTO "public"."product" VALUES (38, 39, '田村陽太', 'DC-AB-3364-U', '田村陽太', 'RMdccyDwhy', 198, 309, 925, 371, 'SIf2tFQIgv', 138);
INSERT INTO "public"."product" VALUES (39, 318, '周子韬', 'EE-FF-7259-D', '周子韬', 'BIo4dVd63R', 416, 761, 919, 264, 'iRhkTEZ9aT', 977);
INSERT INTO "public"."product" VALUES (40, 301, '何嘉欣', 'CB-FC-8549-T', '何嘉欣', '8nzAwAXx2I', 583, 538, 326, 565, 'D806uuhQNj', 514);
INSERT INTO "public"."product" VALUES (41, 432, '周子韬', 'EA-DA-4159-H', '周子韬', 'TTc3IFiCbi', 584, 104, 997, 16, 'zgXDKn7Xnk', 670);
INSERT INTO "public"."product" VALUES (42, 339, '湯嘉欣', 'AB-DE-8039-D', '湯嘉欣', 'c9OCFENyfb', 787, 90, 545, 687, 'Ga6kKQuqRZ', 917);
INSERT INTO "public"."product" VALUES (43, 156, '清水美月', 'AD-AE-8359-N', '清水美月', 'fTOmVgygS1', 697, 617, 479, 161, 'EHgYZDlozB', 588);
INSERT INTO "public"."product" VALUES (44, 977, '藤井大和', 'AB-BF-0645-N', '藤井大和', '7SNmwVtOO9', 286, 55, 646, 745, 'fAdotLgSwv', 581);
INSERT INTO "public"."product" VALUES (45, 909, '黎嘉伦', 'BA-FE-1145-N', '黎嘉伦', 'dYw70Gen0Q', 331, 503, 185, 239, 'po6KOaM22n', 97);
INSERT INTO "public"."product" VALUES (46, 887, '島田和真', 'FE-FB-0219-Z', '島田和真', 'zyXrFtg4UC', 718, 419, 348, 603, '1skm8dbHb7', 572);
INSERT INTO "public"."product" VALUES (47, 909, '谷惠敏', 'FB-EA-2156-V', '谷惠敏', '1w2j5StdoP', 261, 651, 291, 281, 'f0noDajPIw', 112);
INSERT INTO "public"."product" VALUES (48, 498, '河野絢斗', 'AF-EF-0220-D', '河野絢斗', 'Dd6GgUvpvG', 802, 595, 768, 653, 'OscsWsqTyy', 573);
INSERT INTO "public"."product" VALUES (49, 902, '鄧志明', 'FF-EF-4101-U', '鄧志明', 'rZT7nGnZoa', 305, 106, 386, 446, 'nbXhkY0Pn1', 981);
INSERT INTO "public"."product" VALUES (50, 99, '丁詩涵', 'EA-EB-8765-M', '丁詩涵', 'NxVZ4tROAZ', 419, 495, 675, 960, 'LRhJ7baoS3', 123);
INSERT INTO "public"."product" VALUES (51, 694, '陳安娜', 'BB-AF-7601-R', '陳安娜', 'W92nes35mB', 546, 564, 581, 655, '7aC7RyGW7O', 706);
INSERT INTO "public"."product" VALUES (52, 842, '蕭杰倫', 'DE-DA-8470-U', '蕭杰倫', 'o58qi9T8ZK', 68, 440, 310, 958, 'BKIhroA6qr', 700);
INSERT INTO "public"."product" VALUES (53, 36, '武秀英', 'BF-FC-2638-K', '武秀英', 'BtpxyQoDlO', 435, 613, 334, 292, 'QKpCwj8uUE', 249);
INSERT INTO "public"."product" VALUES (54, 386, '曾子异', 'AF-CB-0364-Z', '曾子异', 'VDNhdmzfLn', 620, 18, 755, 160, 'XWGLEpNodw', 845);
INSERT INTO "public"."product" VALUES (55, 906, '刘宇宁', 'BA-AD-5846-E', '刘宇宁', 'opjDSsS0X2', 394, 985, 267, 973, 'm0ynkz4MP4', 942);
INSERT INTO "public"."product" VALUES (56, 674, '佘心穎', 'FA-CD-7286-J', '佘心穎', '9zzAqD9Ihz', 648, 922, 134, 509, 'GsMRUxTnu7', 792);
INSERT INTO "public"."product" VALUES (57, 260, '叶云熙', 'BD-ED-9724-R', '叶云熙', 'rOdmWkz9Dx', 409, 531, 201, 907, 'xwQTtc5yAr', 487);
INSERT INTO "public"."product" VALUES (58, 812, '谷裕玲', 'FB-EF-7254-A', '谷裕玲', '6VkqGddn5H', 339, 351, 274, 812, 'NsKgju06nr', 661);
INSERT INTO "public"."product" VALUES (59, 65, '青木陽菜', 'AC-DB-0305-C', '青木陽菜', 'IgACEHRDLL', 158, 505, 61, 968, 'J18Yn0LtGl', 981);
INSERT INTO "public"."product" VALUES (60, 903, '曾璐', 'CB-CA-7573-Z', '曾璐', 'Lc2O2vsFEC', 210, 555, 280, 569, '00xofMsZmY', 691);
INSERT INTO "public"."product" VALUES (61, 311, '钱晓明', 'EB-BC-9275-H', '钱晓明', 'FrihneERbY', 127, 583, 406, 661, 'KTbqEJwJGz', 267);
INSERT INTO "public"."product" VALUES (62, 120, '尹岚', 'DA-CC-6147-Y', '尹岚', 'ur1vKkTgxQ', 852, 50, 129, 371, '1HKC7ExkFt', 587);
INSERT INTO "public"."product" VALUES (63, 686, '斉藤一輝', 'FB-DB-4761-B', '斉藤一輝', '4FZyJ9QNiK', 951, 121, 926, 2, '9cReSg2jA6', 97);
INSERT INTO "public"."product" VALUES (64, 645, '後藤蓮', 'DC-DD-7871-U', '後藤蓮', 'CIQxau6Jed', 988, 343, 658, 505, 'FJkhkjQmsR', 653);
INSERT INTO "public"."product" VALUES (65, 472, '卢云熙', 'AA-CD-5710-T', '卢云熙', 'VgerR7Qfj7', 604, 852, 195, 893, 'Edlsxhyw8e', 503);
INSERT INTO "public"."product" VALUES (66, 841, '加藤架純', 'BB-BE-9546-S', '加藤架純', 'XTXqGE0BNu', 241, 768, 800, 141, 'pJucCNKLUK', 675);
INSERT INTO "public"."product" VALUES (67, 732, '區力申', 'DB-AA-2389-S', '區力申', 'MuFSDJ7n3v', 126, 309, 518, 134, 'iVtVm2Bjlf', 845);
INSERT INTO "public"."product" VALUES (68, 710, '工藤大和', 'AB-DF-8505-B', '工藤大和', 'vISiFDMgNy', 594, 140, 957, 803, 'Av9F89nuPW', 853);
INSERT INTO "public"."product" VALUES (3, 15, 'Cemilan', 'MHZVTK', 'Ciki ciki', 'Ciki ciki yang super enak, hanya di toko klontong kami', 500, 5, 5, 5, 'https://cf.shopee.co.id/file/7cb930d1bd183a435f4fb3e5cc4a896b', 30000);
INSERT INTO "public"."product" VALUES (69, 592, '蕭永權', 'FE-DB-3153-V', '蕭永權', 'VQS7EaMb7e', 675, 694, 752, 344, 'kO7CeqyKGv', 877);
INSERT INTO "public"."product" VALUES (70, 654, '岩崎美緒', 'AA-FB-8997-U', '岩崎美緒', 'v30QzlB2PN', 421, 412, 105, 674, 'L7s0uSXQNT', 227);
INSERT INTO "public"."product" VALUES (71, 737, '車國賢', 'CC-DE-8688-O', '車國賢', 'mkRKFue5Aa', 11, 605, 456, 762, '4FdU9P6Y7V', 73);
INSERT INTO "public"."product" VALUES (72, 152, '龙安琪', 'BE-CD-4016-T', '龙安琪', 'nxtIHCn9uD', 445, 952, 357, 746, '3wxmC6t0Gc', 434);
INSERT INTO "public"."product" VALUES (73, 694, '谭子异', 'AE-EB-3731-S', '谭子异', '1MqSyjhYcE', 767, 710, 550, 764, 'EhgGi7VWt7', 228);
INSERT INTO "public"."product" VALUES (74, 632, '山口陸', 'BD-ED-1222-R', '山口陸', 'KmrFT9DRG5', 991, 620, 417, 609, 'SS7ghumkVh', 508);
INSERT INTO "public"."product" VALUES (75, 26, '顧發', 'EE-CE-9125-E', '顧發', 'wtV7cyDMsY', 249, 103, 755, 876, 'n0jdvEvXlE', 522);
INSERT INTO "public"."product" VALUES (76, 991, '杨子异', 'AF-AE-8357-U', '杨子异', 'B2kbOrBFA3', 815, 271, 759, 880, 'Tk3h8bYn2r', 852);
INSERT INTO "public"."product" VALUES (77, 237, '關梓晴', 'DC-FF-6101-K', '關梓晴', 'WU685T8SDa', 800, 969, 580, 218, 'uJ5DMH7R89', 12);
INSERT INTO "public"."product" VALUES (78, 404, '呂家玲', 'BB-BD-8396-R', '呂家玲', 'l9qyK1Omzv', 994, 366, 968, 684, 'JoiUQUf9DS', 521);
INSERT INTO "public"."product" VALUES (79, 472, '林朝偉', 'EB-EE-0406-B', '林朝偉', 'AaxITTNwTI', 411, 15, 834, 241, 'bdReTbidOK', 871);
INSERT INTO "public"."product" VALUES (80, 228, '佐野優奈', 'AD-EC-2730-I', '佐野優奈', 'y5VGUaeKKt', 817, 238, 302, 285, 'rteosY6jVS', 255);
INSERT INTO "public"."product" VALUES (81, 84, '雷祖兒', 'CA-DF-5738-U', '雷祖兒', 'vSKS9hsMp6', 104, 514, 733, 645, 'zAca1rkvX7', 467);
INSERT INTO "public"."product" VALUES (82, 745, '林七海', 'BE-BC-8803-O', '林七海', 'AQJ0NeAmqP', 258, 843, 459, 910, 'MaGLqcYv7G', 653);
INSERT INTO "public"."product" VALUES (83, 855, '罗子异', 'DF-DF-7378-O', '罗子异', 'voiOB5cN5n', 486, 405, 516, 431, 'v3xOEcxRjc', 243);
INSERT INTO "public"."product" VALUES (84, 394, '黎力申', 'DF-EE-1575-L', '黎力申', 'qetlhqgwZ9', 751, 543, 672, 818, '8rGKkBkVqH', 175);
INSERT INTO "public"."product" VALUES (85, 164, '潘云熙', 'CD-DE-0045-Z', '潘云熙', 'tAaCvQwx7f', 737, 839, 264, 47, 'oUbrPLiSqp', 843);
INSERT INTO "public"."product" VALUES (86, 72, '段震南', 'AE-ED-9679-B', '段震南', 'eiq2MRoccF', 238, 105, 397, 297, '1fGJRke7eY', 529);
INSERT INTO "public"."product" VALUES (87, 345, '遠藤舞', 'BE-EB-9393-E', '遠藤舞', 'Gw2ASHsPHc', 300, 199, 812, 320, 'CNSynBIYzp', 598);
INSERT INTO "public"."product" VALUES (88, 949, '斎藤詩乃', 'EF-FD-3056-V', '斎藤詩乃', '25b51hMDGt', 529, 672, 166, 566, 'FihzjheHiL', 443);
INSERT INTO "public"."product" VALUES (89, 141, '溫家強', 'BA-DC-3290-J', '溫家強', 'juKZY2e6zr', 781, 109, 585, 531, 'QhInBXQq59', 670);
INSERT INTO "public"."product" VALUES (90, 168, '雷安琪', 'DE-EC-6892-I', '雷安琪', 'xgoe7eFCxU', 827, 625, 507, 208, 'lqHNWkyk2m', 30);
INSERT INTO "public"."product" VALUES (91, 858, '官永權', 'DA-CB-7381-Q', '官永權', '2CBjlYVuie', 353, 924, 306, 796, 'Ve5fZODjsD', 4);
INSERT INTO "public"."product" VALUES (92, 489, '杨杰宏', 'CB-AD-9440-D', '杨杰宏', 'gTkfJ6OQjm', 143, 762, 228, 977, 'GA5T2Akz77', 56);
INSERT INTO "public"."product" VALUES (93, 186, '戴家強', 'EB-DF-9503-V', '戴家強', 'VZvyh37XBd', 118, 467, 672, 375, 'SQdivXHhyG', 780);
INSERT INTO "public"."product" VALUES (94, 809, '太田大和', 'EF-FB-7488-S', '太田大和', '0nYqfSo5xl', 503, 22, 536, 161, 'GSJgdIjngT', 746);
INSERT INTO "public"."product" VALUES (95, 705, '黄杰宏', 'BB-EC-2170-V', '黄杰宏', 'LTMqrLaIQd', 217, 508, 721, 536, 'sMraxlJPZq', 151);
INSERT INTO "public"."product" VALUES (96, 672, '斎藤詩乃', 'AE-DA-4041-I', '斎藤詩乃', 'v7cYt0JY65', 445, 774, 834, 414, 'lLKUJnjPjG', 784);
INSERT INTO "public"."product" VALUES (97, 137, '木下陽菜', 'EC-CC-1521-V', '木下陽菜', 'r9DQ9gl9YZ', 797, 462, 367, 684, 'FxPJLycE0D', 466);
INSERT INTO "public"."product" VALUES (98, 776, '高田紗良', 'EF-DC-0379-J', '高田紗良', 'IB2FArq2YT', 273, 385, 574, 505, 'gP2RBBkhhM', 137);
INSERT INTO "public"."product" VALUES (99, 21, '苏璐', 'FF-FC-4339-P', '苏璐', '0hts1LkjbZ', 702, 295, 433, 649, 'BfEi26Z40t', 720);
INSERT INTO "public"."product" VALUES (100, 694, '木下陸', 'ED-CC-9249-C', '木下陸', 'rxO8v1dDsQ', 451, 259, 554, 819, 'miagsN0zgH', 620);
INSERT INTO "public"."product" VALUES (101, 751, '石田光莉', 'EA-DE-0533-C', '石田光莉', 'iQidclxkXm', 67, 56, 152, 351, 'pG7JKkk12z', 27);
INSERT INTO "public"."product" VALUES (102, 697, '山口彩乃', 'EA-EC-9084-M', '山口彩乃', 'j4eqG9Vool', 581, 390, 645, 266, 'pcwYYqJbhQ', 803);
INSERT INTO "public"."product" VALUES (103, 586, '大塚美月', 'FC-FE-1279-K', '大塚美月', 'kC0lJfcSFG', 517, 280, 951, 921, 'L9e38Ec2ZL', 8);
INSERT INTO "public"."product" VALUES (104, 269, '杜睿', 'CE-AA-3674-L', '杜睿', 'aDgCaK3ktq', 75, 256, 165, 85, '3jeB0XpD4s', 953);
INSERT INTO "public"."product" VALUES (105, 76, '钟云熙', 'EC-BD-1716-S', '钟云熙', 'JggkeKZ2cS', 194, 714, 187, 976, 'hZmcYImRjM', 468);
INSERT INTO "public"."product" VALUES (106, 343, '林蓮', 'BF-FC-1706-K', '林蓮', 'WgiHsbggE4', 292, 388, 8, 980, 'yUrrYjd8jy', 2);
INSERT INTO "public"."product" VALUES (107, 426, '蔡璐', 'AE-DF-7010-W', '蔡璐', '2HZ8WDtYHE', 234, 750, 853, 115, 'hLCsyWgYSN', 246);
INSERT INTO "public"."product" VALUES (108, 623, '王云熙', 'BB-BF-5627-Q', '王云熙', 'iL4ZDjDRNd', 382, 413, 416, 586, 'XRIdFAweZn', 174);
INSERT INTO "public"."product" VALUES (109, 481, '宣家明', 'DB-AD-3472-Y', '宣家明', 'O5MiHfufcg', 857, 353, 150, 22, 'yhnPc4NNeD', 919);
INSERT INTO "public"."product" VALUES (110, 490, '小山明菜', 'CF-DF-1939-C', '小山明菜', '19hEkT3byF', 447, 775, 24, 161, 'zAZmxsy12s', 841);
INSERT INTO "public"."product" VALUES (111, 672, '田秀英', 'EF-CF-9504-O', '田秀英', 'h9xptjTPHg', 671, 993, 113, 399, '6Dh1cImhKs', 795);
INSERT INTO "public"."product" VALUES (112, 855, '夏宇宁', 'FB-FB-9183-K', '夏宇宁', 'oGlKcGalmT', 280, 777, 350, 522, 'l3W9eL4xkc', 481);
INSERT INTO "public"."product" VALUES (113, 147, '戴國賢', 'EA-AB-4580-C', '戴國賢', 'ISqdS0Cb4g', 143, 450, 534, 15, 'LnY1L62aPP', 6);
INSERT INTO "public"."product" VALUES (114, 480, '李頴思', 'CF-ED-8474-I', '李頴思', 'YeWydGCCoA', 264, 217, 786, 329, 'RlFjihF74W', 800);
INSERT INTO "public"."product" VALUES (115, 252, '吳家強', 'FF-CE-8545-M', '吳家強', 'IG1w3hB4PE', 128, 834, 201, 785, 'YkpDaMHMpU', 474);
INSERT INTO "public"."product" VALUES (116, 934, '林心穎', 'DF-BE-3226-T', '林心穎', 'eNDFxdCtUB', 578, 443, 31, 123, 'apgMQmizAR', 809);
INSERT INTO "public"."product" VALUES (117, 267, '官思妤', 'CB-CA-1914-L', '官思妤', 'Rt8za7Urn7', 792, 275, 984, 23, 'WT5yWcX9j0', 950);
INSERT INTO "public"."product" VALUES (118, 753, '佘慧敏', 'CF-FE-7771-E', '佘慧敏', 'rWXFSOIXRC', 287, 754, 311, 601, 'NBLC6zaroG', 432);
INSERT INTO "public"."product" VALUES (119, 341, '平野拓哉', 'BA-CA-4633-G', '平野拓哉', 'JRW3zVvoXr', 804, 487, 259, 7, 'tl0d3GoRkw', 905);
INSERT INTO "public"."product" VALUES (120, 910, '姚宇宁', 'BF-AD-5804-J', '姚宇宁', '20FdF28HgX', 60, 492, 382, 472, 'y8Rp5OEeHG', 10);
INSERT INTO "public"."product" VALUES (121, 88, '安藤美羽', 'FA-EF-3629-Q', '安藤美羽', '3NSmehSDvn', 233, 479, 767, 533, 'dtGBW5egyg', 276);
INSERT INTO "public"."product" VALUES (122, 313, '何家玲', 'FE-BB-1587-A', '何家玲', 'V9a5wv2v3R', 723, 375, 226, 657, 'Y4co2ObRrL', 694);
INSERT INTO "public"."product" VALUES (123, 580, '劉安琪', 'AC-EC-0660-H', '劉安琪', 'jf3uCy6Ab2', 436, 335, 169, 341, 'UPfLhFUumb', 186);
INSERT INTO "public"."product" VALUES (124, 226, '藤富城', 'BD-DB-8009-D', '藤富城', 'BFXm0DwhaJ', 844, 218, 89, 432, 'gDipvHGrB5', 134);
INSERT INTO "public"."product" VALUES (125, 719, '渡部悠人', 'BE-AD-4335-D', '渡部悠人', 'Ix54N5C0HV', 988, 349, 191, 778, 'd36jTlOjoE', 758);
INSERT INTO "public"."product" VALUES (126, 442, '張家明', 'AA-AD-0850-X', '張家明', 'DuJeewpwHr', 73, 112, 216, 864, '2QJ6VjDiV9', 780);
INSERT INTO "public"."product" VALUES (127, 356, '中島葵', 'BD-AA-8158-I', '中島葵', 'idqLTlF2w0', 735, 712, 833, 578, 'ghMFFdqJs0', 910);
INSERT INTO "public"."product" VALUES (128, 152, '唐安琪', 'EA-EB-1526-C', '唐安琪', 'FdkmJit4Qt', 197, 938, 329, 823, 'faqQcHCgGk', 16);
INSERT INTO "public"."product" VALUES (129, 469, '汤詩涵', 'DC-DC-6181-V', '汤詩涵', 'ErOlbJhQf6', 967, 326, 297, 355, 'FJNl3oqzzy', 593);
INSERT INTO "public"."product" VALUES (130, 841, '薛子韬', 'BE-EB-1559-T', '薛子韬', '9eORTQ4xuX', 658, 362, 598, 906, 'kPJAoESs1C', 56);
INSERT INTO "public"."product" VALUES (131, 296, '陈子异', 'DB-FC-3246-Y', '陈子异', 'Bvp98LpieN', 57, 751, 450, 789, 'D0kxCvBqRN', 789);
INSERT INTO "public"."product" VALUES (132, 804, '梁詩涵', 'EC-EB-7322-F', '梁詩涵', 'pwRvGYDkFh', 779, 934, 553, 168, 'uuBFI7cDur', 996);
INSERT INTO "public"."product" VALUES (133, 515, '岩崎七海', 'DE-AB-0633-E', '岩崎七海', '0KMiru9Lwy', 438, 370, 883, 655, 'EjgG9cASr2', 686);
INSERT INTO "public"."product" VALUES (134, 315, '駱明詩', 'BD-EE-1637-U', '駱明詩', 'ENT9mK4hyB', 555, 558, 9, 484, '3SssmNFHYx', 621);
INSERT INTO "public"."product" VALUES (135, 108, '岡本明菜', 'CA-ED-0222-M', '岡本明菜', '8QEhHwbCst', 367, 458, 196, 33, 'XXMwr1rHaT', 647);
INSERT INTO "public"."product" VALUES (136, 580, '谷口美緒', 'FC-CD-7419-E', '谷口美緒', '2DhZw5F9xb', 144, 672, 710, 768, 'hnbcpNql23', 391);
INSERT INTO "public"."product" VALUES (137, 133, '渡部葵', 'BE-ED-2183-L', '渡部葵', 'hxKsBJW4sv', 627, 251, 403, 993, '3nYnjDDWTN', 130);
INSERT INTO "public"."product" VALUES (138, 580, '陈睿', 'BD-DD-9864-J', '陈睿', 'kUk8qCZlZC', 225, 807, 752, 707, 'XFFLdNFAgy', 458);
INSERT INTO "public"."product" VALUES (139, 740, '市川結翔', 'DE-CD-2923-F', '市川結翔', '8vx9HeODl2', 598, 413, 301, 192, 'NHYsqPQci7', 113);
INSERT INTO "public"."product" VALUES (140, 94, '范嘉伦', 'ED-ED-4775-R', '范嘉伦', 'tTpzNDbEca', 748, 39, 231, 449, 'Jdz1nRwGLO', 945);
INSERT INTO "public"."product" VALUES (141, 414, '钟詩涵', 'FB-DE-0667-F', '钟詩涵', '4dYFiqlf7a', 818, 937, 186, 855, 'gPXjVTLPg1', 895);
INSERT INTO "public"."product" VALUES (142, 252, '小林凛', 'FE-CB-5569-J', '小林凛', 'KKJaXNMvfX', 968, 229, 53, 69, 'Q4cBqQ86cZ', 952);
INSERT INTO "public"."product" VALUES (143, 27, '古明', 'BC-FA-5690-C', '古明', '8Iyk64WWpL', 430, 539, 988, 754, 'D6LDfgU5wg', 218);
INSERT INTO "public"."product" VALUES (144, 726, '郝睿', 'BF-ED-1198-T', '郝睿', 'xH9lQXLTYQ', 416, 474, 18, 959, 'W3VLrPOwRv', 42);
INSERT INTO "public"."product" VALUES (145, 231, '李秀英', 'DF-FC-7047-F', '李秀英', 'Lji1LAhWah', 716, 332, 512, 388, 'xaF0PhIKBG', 864);
INSERT INTO "public"."product" VALUES (146, 994, '邵睿', 'FD-DA-8292-O', '邵睿', 'NgDC6lGeag', 819, 794, 70, 87, 'QFyg1sI9SU', 29);
INSERT INTO "public"."product" VALUES (147, 364, '范云熙', 'EA-EA-7661-J', '范云熙', 'UZ42Q6BOXs', 216, 574, 533, 563, 'z9MRmh4M05', 783);
INSERT INTO "public"."product" VALUES (150, 14, 'Cemilan', 'MHZVTK2', 'Ciki ciki', 'Ciki ciki yang super enak, hanya di toko klontong kami', 500, 5, 5, 5, 'https://cf.shopee.co.id/file/7cb930d1bd183a435f4fb3e5cc4a896b', 30000);

-- ----------------------------
-- Triggers structure for table product
-- ----------------------------
CREATE TRIGGER "DeleteRow" AFTER DELETE ON "public"."product"
FOR EACH ROW
EXECUTE PROCEDURE "public"."deleterow"();
CREATE TRIGGER "UpdateRow" AFTER UPDATE ON "public"."product"
FOR EACH ROW
EXECUTE PROCEDURE "public"."updaterow"();

-- ----------------------------
-- Uniques structure for table product
-- ----------------------------
ALTER TABLE "public"."product" ADD CONSTRAINT "UQ_34f6ca1cd897cc926bdcca1ca39" UNIQUE ("sku");

-- ----------------------------
-- Primary Key structure for table product
-- ----------------------------
ALTER TABLE "public"."product" ADD CONSTRAINT "PK_bebc9158e480b949565b4dc7a82" PRIMARY KEY ("id");
