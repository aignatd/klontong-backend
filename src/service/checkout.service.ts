import { Injectable, Logger, NotFoundException } from '@nestjs/common';
import { CheckoutModel, UpdateCheckoutModel } from '@interface/all.model';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';

@Injectable()
export class CheckoutService {
  constructor(
    @InjectRepository(CheckoutModel)
    private readonly repoCheckout: Repository<CheckoutModel>,
  ) {}

  private readonly logger = new Logger(CheckoutService.name);

  public async findAll(userRsn: string, page: number, limit: number) {
    this.logger.log(`Returning all checkout or limit result`);

    var allCheckout = null;

    if (JSON.stringify(page) == '{}') page = 0;
    if (JSON.stringify(limit) == '{}') limit = 0;
    if (
      JSON.stringify(userRsn) == '{}' ||
      userRsn == null ||
      userRsn == undefined
    )
      userRsn = '';

    if (page > 0 && limit > 0 && userRsn != '')
      allCheckout = await this.repoCheckout
        .createQueryBuilder('a')
        .orderBy('a.id', 'ASC')
        .limit(limit)
        .offset((page - 1) * limit)
        .where(`a.userRsn='${userRsn}'`)
        .getMany();
    else if (page > 0 && limit > 0)
      allCheckout = await this.repoCheckout
        .createQueryBuilder('a')
        .orderBy('a.id', 'ASC')
        .limit(limit)
        .offset((page - 1) * limit)
        .getMany();
    else if (userRsn != '')
      allCheckout = await this.repoCheckout
        .createQueryBuilder('a')
        .orderBy('a.id', 'ASC')
        .where(`a.userRsn='${userRsn}'`)
        .getMany();
    else
      allCheckout = await this.repoCheckout
        .createQueryBuilder('a')
        .orderBy('a.id', 'ASC')
        .getMany();

    return {
      code: 0,
      message: 'Checkout list success',
      timestamp: new Date().toISOString(),
      data: allCheckout,
    };
  }

  public async create(checkout: CheckoutModel) {
    this.logger.log(`Creating checkout with title: ${checkout.productName}`);

    const newCheckout = await this.repoCheckout.save({
      ...checkout,
    });

    return {
      code: 0,
      message: 'Add new checkout success',
      timestamp: new Date().toISOString(),
      data: newCheckout,
    };
  }

  public async update(id: number, updateCheckout: UpdateCheckoutModel) {
    this.logger.log(`Updating checkout with id: ${id}`);

    const checkout = await this.repoCheckout.findOneBy({ id });

    if (!checkout) {
      throw new NotFoundException();
    }

    await this.repoCheckout.save({
      ...checkout,
      ...updateCheckout,
    });

    return {
      code: 0,
      message: 'Update checkout success',
      timestamp: new Date().toISOString(),
      data: updateCheckout,
    };
  }

  public async delete(id: number) {
    this.logger.log(`Deleting checkout with id: ${id}`);

    const dataCheckout = await this.repoCheckout.findOneBy({ id });

    if (!dataCheckout) {
      throw new NotFoundException();
    }

    await this.repoCheckout.remove(dataCheckout);
    return {
      code: 0,
      message: 'Delete checkout success',
      timestamp: new Date().toISOString(),
      data: dataCheckout,
    };
  }
}
