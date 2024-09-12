/*
https://docs.nestjs.com/modules
*/

import { Module } from '@nestjs/common';
import { ProductController } from '@controller/product.controller';
import { ProductService } from '@service/product.service';
import { ConfigModule } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';
import ormConfigDev from '@config/db-dev.config';
import ormConfigProd from '@config/db-prod.config';
import { ProductModel } from '@interface/product.model';

@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true,
      load: [ormConfigDev],
      expandVariables: true,
    }),
    TypeOrmModule.forRootAsync({
      useFactory:
        process.env.NODE_ENV !== 'production' ? ormConfigDev : ormConfigProd,
    }),
    TypeOrmModule.forFeature([ProductModel]),
  ],
  controllers: [ProductController],
  providers: [ProductService],
  exports: [ProductService],
})
export class ProductModule {}
