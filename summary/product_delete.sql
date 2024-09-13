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

 Date: 13/09/2024 16:57:04
*/


-- ----------------------------
-- Table structure for product_delete
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_delete";
CREATE TABLE "public"."product_delete" (
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
-- Records of product_delete
-- ----------------------------
INSERT INTO "public"."product_delete" VALUES (149, 876, '苗國權', 'EF-BC-9350-X', '苗國權', 'K3ASMUZphl', 842, 975, 876, 111, 'G6cpZ1xgT4', 330);
INSERT INTO "public"."product_delete" VALUES (149, 14, 'Cemilan Aseeeek', 'MHZVTK2', 'Ciki ciki', 'Ciki ciki yang super enak, hanya di toko klontong kami', 500, 5, 5, 5, 'https://cf.shopee.co.id/file/7cb930d1bd183a435f4fb3e5cc4a896b', 30000);
INSERT INTO "public"."product_delete" VALUES (148, 35399, '谢嘉伦', 'DC-AA-0454-M', '谢嘉伦', 'LIdisZJdul', 95, 660, 466, 205, 'GXQaIJga1t', 309);

-- ----------------------------
-- Uniques structure for table product_delete
-- ----------------------------
ALTER TABLE "public"."product_delete" ADD CONSTRAINT "product_copy1_sku_key" UNIQUE ("sku");
