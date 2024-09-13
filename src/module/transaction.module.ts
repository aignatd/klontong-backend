/*
https://docs.nestjs.com/modules
*/

import { Module } from '@nestjs/common';
import { TransactionController } from '@controller/transaction.controller';
import { TransactionService } from '@service/transaction.service';

@Module({
  imports: [],
  controllers: [TransactionController],
  providers: [TransactionService],
  exports: [TransactionService],
})
export class TransactionModule {}
