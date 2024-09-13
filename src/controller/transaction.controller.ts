/*
https://docs.nestjs.com/controllers#controllers
*/

import {
  Body,
  Controller,
  Post,
  UseFilters,
} from '@nestjs/common';

import {
  ApiCreatedResponse,
  ApiTags,
  ApiUnprocessableEntityResponse,
} from '@nestjs/swagger';

import { HttpExceptionFilter } from '@http-filter/http-exception.filter';
import { TransactionService } from '@service/transaction.service';
import { CheckoutModel } from '@interface/all.model';

@Controller('transaction')
@ApiTags('transaction')
@UseFilters(HttpExceptionFilter)
export class TransactionController {
  constructor(private readonly transactionService: TransactionService) {}

  @Post()
  @ApiCreatedResponse({ description: 'Transaction created successfully.' })
  @ApiUnprocessableEntityResponse({ description: 'Transaction already exists.' })
  public create(@Body() body) {
    return this.transactionService.midtransPaymentGateway(body) || body;
  }
}
