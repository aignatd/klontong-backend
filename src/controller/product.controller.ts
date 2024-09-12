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
  Put,
  UseFilters,
  Query,
  UseInterceptors,
  UploadedFiles,
} from '@nestjs/common';

import {
  ApiCreatedResponse,
  ApiNotFoundResponse,
  ApiOkResponse,
  ApiTags,
  ApiUnprocessableEntityResponse,
} from '@nestjs/swagger';

import { HttpExceptionFilter } from '@http-filter/http-exception.filter';
import { ProductService } from '@service/product.service';
import { ProductModel, UpdateProductModel } from '@interface/all.model';
import { FilesInterceptor } from '@nestjs/platform-express';

@Controller('product')
@ApiTags('product')
@UseFilters(HttpExceptionFilter)
export class ProductController {
  constructor(private readonly productService: ProductService) {}

  @Get()
  @ApiOkResponse({ description: 'Product listed successfully.' })
  public findAll(
    @Query('search') search,
    @Query('page') page,
    @Query('limit') limit,
  ) {
    return this.productService.findAll(search, page, limit);
  }

  // Example #1 - Value
  @Get(':id')
  @ApiOkResponse({ description: 'Product retrieved successfully.' })
  @ApiNotFoundResponse({ description: 'Product not found.' })
  public findOne(@Param('id', ParseIntPipe) id: number) {
    return this.productService.findOne(id);
  }

  @Post()
  @ApiCreatedResponse({ description: 'Product created successfully.' })
  @ApiUnprocessableEntityResponse({ description: 'Product already exists.' })
  public create(@Body() product: ProductModel) {
    return this.productService.create(product) || product;
  }

  @Patch(':id')
  @ApiOkResponse({ description: 'Product updated successfully.' })
  @ApiNotFoundResponse({ description: 'Product not found.' })
  @ApiUnprocessableEntityResponse({ description: 'Product already exists.' })
  public update(
    @Param('id', ParseIntPipe) id: number,
    @Body() product: UpdateProductModel,
  ) {
    return this.productService.update(id, product) || product;
  }

  @Delete(':id')
  @ApiOkResponse({ description: 'Product deleted successfully.' })
  @ApiNotFoundResponse({ description: 'Product not found.' })
  public delete(@Param('id', ParseIntPipe) id: number) {
    return this.productService.delete(id);
  }

  @Put()
  @ApiOkResponse({ description: 'Image upload successfully.' })
  @ApiNotFoundResponse({ description: 'Image not found.' })
  @UseInterceptors(FilesInterceptor('files'))
  public upload(@UploadedFiles() files) {
    return this.productService.upload(files);
  }
}
