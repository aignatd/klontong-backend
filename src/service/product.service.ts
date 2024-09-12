import {
  BadRequestException,
  Injectable,
  Logger,
  NotFoundException,
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

  private readonly logger = new Logger(ProductService.name);

  public async findAll(search: string, page: number, limit: number) {
    this.logger.log(`Returning all product or limit result`);

    var allProduct = null;
    /*    var repoOptions: FindManyOptions<ProductModel>;
    repoOptions.order = { id: 'ASC', };

    if (page && limit && page > 0 && limit > 0) {
      repoOptions.skip = (page - 1) * limit;
      repoOptions.take = limit;
    }
    else
    if (search && search != '')
      repoOptions.where = [
        { categoryName: Like(`%${search}%`) },
        { sku: Like(`%${search}%`) },
        { name: Like(`%${search}%`) },
        { description: Like(`%${search}%`) },
      ];

    allProducts = await this.repoProduct.find(repoOptions);
*/
    if (JSON.stringify(page) == '{}') page = 0;
    if (JSON.stringify(limit) == '{}') limit = 0;
    if (JSON.stringify(search) == '{}' || search == null || search == undefined)
      search = '';

    if (page > 0 && limit > 0 && search != '')
      allProduct = await this.repoProduct
        .createQueryBuilder('a')
        .orderBy('a.id', 'ASC')
        .limit(limit)
        .offset((page - 1) * limit)
        .where(
          `CONCAT(
            '', 
            a.name, 
            a.categoryName,
            a.sku,
            a.name
          ) LIKE '%${search}%'`,
        )
        .getMany();
    else if (page > 0 && limit > 0)
      allProduct = await this.repoProduct
        .createQueryBuilder('a')
        .orderBy('a.id', 'ASC')
        .limit(limit)
        .offset((page - 1) * limit)
        .getMany();
    else if (search != '')
      allProduct = await this.repoProduct
        .createQueryBuilder('a')
        .orderBy('a.id', 'ASC')
        .where(
          `CONCAT(
            '', 
            a.name, 
            a.categoryName,
            a.sku,
            a.name
          ) LIKE '%${search}%'`,
        )
        .getMany();
    else
      allProduct = await this.repoProduct
        .createQueryBuilder('a')
        .orderBy('a.id', 'ASC')
        .getMany();

    return {
      code: 0,
      message: 'Success list product',
      timestamp: new Date().toISOString(),
      data: allProduct,
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

  public async upload(files: any) {
    if (!files) {
      throw new BadRequestException();
    }

    return {
      code: 0,
      message: 'Image upload successfully',
      timestamp: new Date().toISOString(),
      data: { files },
    };
  }
}
