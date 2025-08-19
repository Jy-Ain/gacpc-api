import { Test, TestingModule } from '@nestjs/testing';
import { ChercheursService } from './chercheurs.service';

describe('ChercheursService', () => {
  let service: ChercheursService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [ChercheursService],
    }).compile();

    service = module.get<ChercheursService>(ChercheursService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
