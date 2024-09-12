'use strict';
import 'dotenv/config';
import { NestFactory } from '@nestjs/core';
import { AppModule } from '@module/app.module';
import { SwaggerModule, DocumentBuilder } from '@nestjs/swagger';
async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.setGlobalPrefix('api/v1');
  
  const config = new DocumentBuilder()
    .setTitle('Klontong API')
    .setDescription('Klontong API')
    .setVersion('1.0')
    .build();

  const document = SwaggerModule.createDocument(app, config);
  SwaggerModule.setup('api', app, document);

  await app.listen(process.env.SERVERPORT || 3000);
}
bootstrap();
