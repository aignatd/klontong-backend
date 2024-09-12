import { registerAs } from '@nestjs/config';
import { TypeOrmModuleOptions } from '@nestjs/typeorm';
import { ProductModel } from '@interface/product.model';

export default registerAs(
  'orm.config',
  (): TypeOrmModuleOptions => ({
    type: 'postgres',
    host: process.env.POSTGRESHOST,
    port: Number(process.env.POSTGRESPORT),
    username: process.env.POSTGRESUSER,
    password: process.env.POSTGRESPASS,
    database: 'klontong',
    entities: [ProductModel],
    synchronize: true,
  }),
);
