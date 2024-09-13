/*
https://docs.nestjs.com/modules
*/

import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CheckoutController } from '@controller/checkout.controller';
import { CheckoutService } from '@service/checkout.service';
import ormConfigDev from '@config/db-dev.config';
import ormConfigProd from '@config/db-prod.config';
import { CheckoutModel } from '@interface/checkout.model';

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
    TypeOrmModule.forFeature([CheckoutModel]),
  ],
  controllers: [CheckoutController],
  providers: [CheckoutService],
  exports: [CheckoutService],
})
export class CheckoutModule {}
