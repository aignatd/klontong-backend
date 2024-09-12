import {
  Injectable,
  Logger,
  NotFoundException,
  UnprocessableEntityException,
} from '@nestjs/common';
import { ProductModel, UpdateProductModel } from '@interface/all.model';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';

@Injectable()
export class ProductService {
  constructor(
    @InjectRepository(ProductModel)
    private readonly repoProduct: Repository<ProductModel>,
  ) {}

  private products: Array<ProductModel> = [];
  private updates: Array<UpdateProductModel> = [];
  private readonly logger = new Logger(ProductService.name);

  public async findAll(page: number, limit: number) {
    this.logger.log(`Returning all product or limit result`);

    var allProducts = null;

    if (page > 0 && limit > 0)
      allProducts = await this.repoProduct.find({
        order: {
          id: 'ASC',
        },
        skip: (page - 1) * limit,
        take: limit,
      });
    else allProducts = await this.repoProduct.find({
      order: {
        id: 'ASC',
      }});

    return {
      code: 0,
      message: 'Success list product',
      timestamp: new Date().toISOString(),
      data: allProducts,
    };
  }

  public async findOne(id: number) {
    this.logger.log(`Returning product with id: ${id}`);
    const dataProduct = await this.repoProduct.findOneBy({ id });

    if (!dataProduct) {
      throw new NotFoundException();
    }

    return {
      code: 0,
      message: 'Success get product',
      timestamp: new Date().toISOString(),
      data: dataProduct,
    };
  }

  public async create(product: ProductModel) {
    this.logger.log(`Creating product with title: ${product.name}`);

    const newProduct = await this.repoProduct.save({
      ...product,
    });

    return {
      code: 0,
      message: 'Success new product',
      timestamp: new Date().toISOString(),
      data: newProduct,
    };
  }

  public async update(id: number, updateProduct: UpdateProductModel) {
    this.logger.log(`Updating product with id: ${id}`);

    const product = await this.repoProduct.findOneBy({ id });

    if (!product) {
      throw new NotFoundException();
    }

    await this.repoProduct.save({
      ...product,
      ...updateProduct,
    });

    return {
      code: 0,
      message: 'Success update product',
      timestamp: new Date().toISOString(),
      data: updateProduct,
    };
  }

  public async delete(id: number) {
    this.logger.log(`Deleting product with id: ${id}`);

    const dataProduct = await this.repoProduct.findOneBy({ id });

    if (!dataProduct) {
      throw new NotFoundException();
    }

    await this.repoProduct.remove(dataProduct);
    return {
      code: 0,
      message: 'Success delete product',
      timestamp: new Date().toISOString(),
      data: dataProduct,
    };
  }
}
