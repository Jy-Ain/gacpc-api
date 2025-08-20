import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Historique } from '../model/historique.entity';
import { CreateHistoriqueDto } from '../dto/create-historique.dto';
import { UpdateHistoriqueDto } from '../dto/update-historique.dto';

@Injectable()
export class HistoriquesService {
  constructor(
    @InjectRepository(Historique)
    private historiquesRepository: Repository<Historique>,
  ) {}

  async create(data: CreateHistoriqueDto): Promise<Historique> {
    const historique = this.historiquesRepository.create(data);
    return this.historiquesRepository.save(historique);
  }

  async findAll(): Promise<Historique[]> {
    return this.historiquesRepository.find();
  }

  async findOne(id: number): Promise<Historique> {
    const historique = await this.historiquesRepository.findOne({ where: { id } });
    if (!historique) {
      throw new NotFoundException(`Historique avec ID ${id} introuvable`);
    }
    return historique;
  }

  async update(id: number, data: UpdateHistoriqueDto): Promise<Historique> {
    const historique = await this.findOne(id);
    Object.assign(historique, data);
    return this.historiquesRepository.save(historique);
  }

  async remove(id: number): Promise<void> {
    const result = await this.historiquesRepository.delete(id);
    if (result.affected === 0) {
      throw new NotFoundException(`Historique avec ID ${id} introuvable`);
    }
  }
}
