import { Test, TestingModule } from '@nestjs/testing';
import { ChercheursController } from './chercheurs.controller';

describe('ChercheursController', () => {
  let controller: ChercheursController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ChercheursController],
    }).compile();

    controller = module.get<ChercheursController>(ChercheursController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
