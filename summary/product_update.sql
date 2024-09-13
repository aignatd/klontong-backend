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

 Date: 13/09/2024 16:57:14
*/


-- ----------------------------
-- Table structure for product_update
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_update";
CREATE TABLE "public"."product_update" (
  "id" int4 NOT NULL,
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
-- Records of product_update
-- ----------------------------
INSERT INTO "public"."product_update" VALUES (148, 353, '谢嘉伦', 'DC-AA-0454-M', '谢嘉伦', 'LIdisZJdul', 95, 660, 466, 205, 'GXQaIJga1t', 309);
INSERT INTO "public"."product_update" VALUES (149, 14, 'Cemilan', 'MHZVTK2', 'Ciki ciki', 'Ciki ciki yang super enak, hanya di toko klontong kami', 500, 5, 5, 5, 'https://cf.shopee.co.id/file/7cb930d1bd183a435f4fb3e5cc4a896b', 30000);
INSERT INTO "public"."product_update" VALUES (3, 886, '何震南', 'CC-AC-3844-X', '何震南', 'sGDwMVJG7U', 822, 374, 737, 967, 'Tjq0m5lyhj', 122);

-- ----------------------------
-- Uniques structure for table product_update
-- ----------------------------
ALTER TABLE "public"."product_update" ADD CONSTRAINT "product_delete_copy1_sku_key" UNIQUE ("sku");
