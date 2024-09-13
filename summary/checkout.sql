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

 Date: 13/09/2024 16:56:43
*/


-- ----------------------------
-- Table structure for checkout
-- ----------------------------
DROP TABLE IF EXISTS "public"."checkout";
CREATE TABLE "public"."checkout" (
  "id" int4 NOT NULL DEFAULT nextval('checkout_id_seq'::regclass),
  "productId" int4 NOT NULL,
  "userRsn" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "categoryName" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "productName" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "price" int4 NOT NULL,
  "quantity" int4 NOT NULL,
  "sum" int4 NOT NULL
)
;

-- ----------------------------
-- Records of checkout
-- ----------------------------
INSERT INTO "public"."checkout" VALUES (2, 136, '0a63944a-9022-4661-8209-9fcc6cd797d9', 'Cemilan Enak', 'Ciki Ciki', 30000, 2, 60000);

-- ----------------------------
-- Primary Key structure for table checkout
-- ----------------------------
ALTER TABLE "public"."checkout" ADD CONSTRAINT "PK_c3c52ebf395ba358759b1111ac1" PRIMARY KEY ("id");
