/*
https://docs.nestjs.com/controllers#controllers
*/

import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  ParseIntPipe,
  Post,
  Patch,
  UseFilters,
  Query,
} from '@nestjs/common';

import {
  ApiCreatedResponse,
  ApiNotFoundResponse,
  ApiOkResponse,
  ApiTags,
  ApiUnprocessableEntityResponse,
} from '@nestjs/swagger';

import { HttpExceptionFilter } from '@http-filter/http-exception.filter';
import { CheckoutService } from '@service/checkout.service';
import { CheckoutModel, UpdateCheckoutModel } from '@interface/all.model';

@Controller('checkout')
@ApiTags('checkout')
@UseFilters(HttpExceptionFilter)
export class CheckoutController {
  constructor(private readonly checkoutService: CheckoutService) {}

  @Get()
  @ApiOkResponse({ description: 'Checkout listed successfully.' })
  public findAll(
    @Query('userRsn') userRsn,
    @Query('page') page,
    @Query('limit') limit,
  ) {
    return this.checkoutService.findAll(userRsn, page, limit);
  }

  @Post()
  @ApiCreatedResponse({ description: 'Checkout created successfully.' })
  @ApiUnprocessableEntityResponse({ description: 'Checkout already exists.' })
  public create(@Body() checkout: CheckoutModel) {
    return this.checkoutService.create(checkout) || checkout;
  }

  @Patch(':id')
  @ApiOkResponse({ description: 'Checkout updated successfully.' })
  @ApiNotFoundResponse({ description: 'Checkout not found.' })
  @ApiUnprocessableEntityResponse({ description: 'Checkout already exists.' })
  public update(
    @Param('id', ParseIntPipe) id: number,
    @Body() checkout: UpdateCheckoutModel,
  ) {
    return this.checkoutService.update(id, checkout) || checkout;
  }

  @Delete(':id')
  @ApiOkResponse({ description: 'Checkout deleted successfully.' })
  @ApiNotFoundResponse({ description: 'Checkout not found.' })
  public delete(@Param('id', ParseIntPipe) id: number) {
    return this.checkoutService.delete(id);
  }
}
