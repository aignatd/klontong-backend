import { ProductService } from '@service/product.service';
import { ProductController } from '@controller/product.controller';

var productService: ProductService;
var productController: ProductController;

const expectedResult = { code: 0, message: 'List product success', timestamp: new Date().toISOString(), data: [{ id: 1, name: 'Product 1' }, { id: 2, name: 'Product 2' }]};
const noResult = { code: 0, message: 'List product success', timestamp: new Date().toISOString(), data: []};

it('should return all products when no search query is provided', async () => {
  // Arrange
  const search = undefined;
  const page = 1;
  const limit = 10;
  jest.spyOn(productService, 'findAll').mockResolvedValue(expectedResult);

  // Act
  const result = await productController.findAll(search, page, limit);

  // Assert
  expect(result).toEqual(expectedResult);
});

it('should return an error when "search" is an empty string', async () => {
  const search = '';
  const page = 1;
  const limit = 10;

  const result = await productController.findAll(search, page, limit);

  expect(result).toBeInstanceOf(Error);
  expect(result.message).toEqual('Search query cannot be empty.');
});

it('should return products matching the search query', async () => {
  const searchQuery = 'test';

  jest.spyOn(productService, 'findAll').mockResolvedValue(expectedResult);

  const result = await productController.findAll(searchQuery, 1, 10);

  expect(productService.findAll).toHaveBeenCalledWith(searchQuery, 1, 10);
  expect(result).toEqual(expectedResult);
});

it('should return an empty list when no products match the search query', async () => {
  // Arrange
  const searchQuery = 'nonexistent';
  jest.spyOn(productService, 'findAll').mockResolvedValue(noResult);

  // Act
  const result = await productController.findAll(searchQuery, 1, 10);

  // Assert
  expect(productService.findAll).toHaveBeenCalledWith(searchQuery, 1, 10);
  expect(result).toEqual([]);
});