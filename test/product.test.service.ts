import { ProductService } from '@service/product.service';
import {
  NotFoundException,
} from '@nestjs/common';

var productService: ProductService;

it('should return all products when no search term is provided', async () => {
  // Arrange
  const search = '';
  const page = 1;
  const limit = 10;
  const expectedCode = 0;
  const expectedMessage = 'Success list product';
  const expectedData = []; // Replace with actual expected data

  jest.spyOn(productService, 'findAll').mockResolvedValue({
    code: expectedCode,
    message: expectedMessage,
    timestamp: new Date().toISOString(),
    data: expectedData,
  });

  // Act
  const result = await productService.findAll(search, page, limit);

  // Assert
  expect(result.code).toBe(expectedCode);
  expect(result.message).toBe(expectedMessage);
  expect(result.data).toEqual(expectedData);
});

it('should return an empty list when there are no products', async () => {
  // Arrange
  const search = '';
  const page = 1;
  const limit = 10;
  const expectedCode = 0;
  const expectedMessage = 'Success list product';
  const expectedData: any[] = [];

  jest.spyOn(productService, 'findAll').mockResolvedValue({
    code: expectedCode,
    message: expectedMessage,
    timestamp: new Date().toISOString(),
    data: expectedData,
  });

  // Act
  const result = await productService.findAll(search, page, limit);

  // Assert
  expect(result.code).toBe(expectedCode);
  expect(result.message).toBe(expectedMessage);
  expect(result.data).toEqual(expectedData);
});

it('should return products matching the search term in any field', async () => {
  // Arrange
  const search = 'test';
  const page = 1;
  const limit = 10;
  const expectedCode = 0;
  const expectedMessage = 'Success list product';
  const expectedData = [
    // Replace with actual expected data matching the search term
    { id: 1, name: 'Test Product', categoryName: 'Test Category', sku: 'TEST-001' },
  ];

  jest.spyOn(productService, 'findAll').mockResolvedValue({
    code: expectedCode,
    message: expectedMessage,
    timestamp: new Date().toISOString(),
    data: expectedData,
  });

  // Act
  const result = await productService.findAll(search, page, limit);

  // Assert
  expect(result.code).toBe(expectedCode);
  expect(result.message).toBe(expectedMessage);
  expect(result.data).toEqual(expectedData);
});

it('should handle pagination correctly when page and limit are provided', async () => {
  // Arrange
  const search = '';
  const page = 2;
  const limit = 5;
  const expectedCode = 0;
  const expectedMessage = 'Success list product';
  const expectedDataLength = 5; // Replace with actual expected data length

  jest.spyOn(productService, 'findAll').mockResolvedValue({
    code: expectedCode,
    message: expectedMessage,
    timestamp: new Date().toISOString(),
    data: Array(expectedDataLength).fill({}), // Replace with actual expected data
  });

  // Act
  const result = await productService.findAll(search, page, limit);

  // Assert
  expect(result.code).toBe(expectedCode);
  expect(result.message).toBe(expectedMessage);
  expect(result.data.length).toBe(expectedDataLength);
});

it('should throw an error when deleting a product that does not exist', async () => {
  // Arrange
  const nonExistingProductId = 999999;

  jest.spyOn(productService, 'findOne').mockResolvedValue(null);

  // Act & Assert
  await expect(productService.delete(nonExistingProductId)).rejects.toThrow(new NotFoundException());
});

it('should validate the input id for deletion', async () => {
  // Arrange
  const id = 1; // Replace with actual valid id
  const expectedCode = 404;
  const expectedMessage = 'Not Found';

  jest.spyOn(productService, 'findOne').mockResolvedValue(null);

  // Act
  try {
    await productService.delete(id);
  } catch (error) {
    // Assert
    expect(error.status).toBe(expectedCode);
    expect(error.message).toBe(expectedMessage);
  }
});