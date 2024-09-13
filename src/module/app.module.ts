import { Module } from '@nestjs/common';
import { ProductModule } from '@module/product.module';
import { CheckoutModule } from '@module/checkout.module';
import { TransactionModule } from '@module/transaction.module';

@Module({
  imports: [ProductModule, CheckoutModule, TransactionModule],
})
export class AppModule {}
