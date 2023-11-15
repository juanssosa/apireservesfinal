const request = require('supertest');
const server = require('../index');

describe('Client API Tests with Supertest', () => {
  test('It should return a 200 status code for getting the client list', async () => {
    const response = await request(server).get('/api/clients');
    expect(response.status).toBe(200);
  });
  afterAll(async () => {
    await new Promise(resolve => server.close(resolve));
  });
});