import { PartialType } from '@nestjs/mapped-types';
import { ProductModel } from '@interface/product.model';

export class UpdateProductModel extends PartialType(ProductModel) {}
