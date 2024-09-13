import { PartialType } from '@nestjs/mapped-types';
import { CheckoutModel } from '@interface/checkout.model';

export class UpdateCheckoutModel extends PartialType(CheckoutModel) {}
