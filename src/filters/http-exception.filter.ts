import {
  ExceptionFilter,
  Catch,
  ArgumentsHost,
  HttpException,
  Logger,
} from '@nestjs/common';
import { Request, Response } from 'express';

@Catch(HttpException)
export class HttpExceptionFilter implements ExceptionFilter {
  private readonly logger = new Logger(HttpExceptionFilter.name);

  catch(exception: HttpException, host: ArgumentsHost) {
    const ctx = host.switchToHttp();
    const response = ctx.getResponse<Response>();
    const request = ctx.getRequest<Request>();
    const code = exception.getStatus();
    const message = exception.message || null;

    const body = {
      code,
      message,
      timestamp: new Date().toISOString(),
    };

    this.logger.warn(`${code} ${message}`);

    response.status(code).json(body);
  }
}
