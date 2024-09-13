import { Injectable, Logger, InternalServerErrorException } from '@nestjs/common';

@Injectable()
export class TransactionService {
  private readonly logger = new Logger(TransactionService.name);

  public async midtransPaymentGateway(body: any) {
    this.logger.log(`Create transaction using midtrans payment gateway`);

    body.expiry = {
      unit: process.env.PARAMS_MIDTRANS_EXPIRY_UNIT,
      duration: process.env.PARAMS_MIDTRANS_EXPIRY_TIME,
    };

    body.credit_card = { secure: true };

    const reqOpts = {
      method: 'POST',
      headers: {
        Accept: 'application/json',
        'Content-Type': 'application/json',
        Authorization:
          'Basic ' +
          Buffer.from(process.env.PARAMS_MIDTRANS_USERNAME + ':' + '').toString(
            'base64',
          ),
        'Cache-Control':
          'no-store, no-cache, must-revalidate, proxy-revalidate',
        Pragma: 'no-cache',
        Expires: '0',
        'Surrogate-Control': 'no-store',
      },
      body: JSON.stringify(body),
    };

    const urlTransaction = `${process.env.PARAMS_MIDTRANS_BASE_URL}${process.env.PARAMS_MIDTRANS_TRANS_PATH}`;
    const htmlResponse = await fetch(urlTransaction, reqOpts);
    this.logger.log(`HTML Response ->", ${htmlResponse?.status}`);

    if (
      (htmlResponse.status == 200 || htmlResponse.status === 201) &&
      (htmlResponse.statusText == 'OK' || htmlResponse.statusText == 'Created')
    ) {
      const jsonResponse = await htmlResponse.json();
      this.logger.log(`JSON Response ->", ${jsonResponse}`);
      return {
        code: 0,
        message: 'New transaction created',
        timestamp: new Date().toISOString(),
        data: jsonResponse
      };
    } else
      throw new InternalServerErrorException()
  }
}
