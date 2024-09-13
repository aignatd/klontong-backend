import { CheckoutService } from '@service/checkout.service';
import { CheckoutController } from '@controller/checkout.controller';

var checkoutService: CheckoutService;
var checkoutController: CheckoutController;
it('should return checkouts for a specific user when userRsn is provided', async () => {
  const userRsn = '123456';
  const page = 1;
  const limit = 10;

  const expectedResult = {
    code: 0,
    message: 'Checkout list success',
    timestamp: '2024-09-13T10:46:38.203Z',
    data: [
      {
        id: 2,
        productId: 136,
        userRsn: '0a63944a-9022-4661-8209-9fcc6cd797d9',
        categoryName: 'Cemilan Enak',
        productName: 'Ciki Ciki',
        price: 30000,
        quantity: 2,
        sum: 60000,
      },
    ],
  };

  jest.spyOn(checkoutService, 'findAll').mockResolvedValue(expectedResult);

  const result = await checkoutController.findAll(userRsn, page, limit);

  expect(checkoutService.findAll).toBeCalledWith(userRsn, page, limit);
  expect(result).toEqual(expectedResult);
});

it('should return an empty array when no checkouts are found', async () => {
  // Arrange
  const userRsn = 'user123';
  const page = 1;
  const limit = 10;
  const expectedResult = {
    code: 0,
    message: 'Checkout list success',
    timestamp: '2024-09-13T10:46:38.203Z',
    data: [],
  };

  jest.spyOn(checkoutService, 'findAll').mockResolvedValue(expectedResult);

  // Act
  const result = await checkoutController.findAll(userRsn, page, limit);

  // Assert
  expect(result).toEqual(expectedResult);
});

it('should handle pagination correctly when page and limit are provided', async () => {
  const userRsn = 'testUserRsn';
  const page = 1;
  const limit = 10;

  const expectedResult = {
    code: 0,
    message: 'Checkout list success',
    timestamp: '2024-09-13T10:46:38.203Z',
    data: [
      {
        id: 2,
        productId: 136,
        userRsn: '0a63944a-9022-4661-8209-9fcc6cd797d9',
        categoryName: 'Cemilan Enak',
        productName: 'Ciki Ciki',
        price: 30000,
        quantity: 2,
        sum: 60000,
      },
    ],
  };

  jest.spyOn(checkoutService, 'findAll').mockResolvedValue(expectedResult);

  const result = await checkoutController.findAll(userRsn, page, limit);

  expect(checkoutService.findAll).toHaveBeenCalledWith(userRsn, page, limit);
  expect(result).toEqual(expectedResult);
});

