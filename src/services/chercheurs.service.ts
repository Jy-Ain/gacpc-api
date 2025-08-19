import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Chercheur } from '../model/chercheur.entity';
import { CreateChercheurDto } from '../dto/create-chercheur.dto';
import { UpdateChercheurDto } from '../dto/update-chercheur.dto';

@Injectable()
export class ChercheursService {
  constructor(
    @InjectRepository(Chercheur)
    private chercheursRepository: Repository<Chercheur>,
  ) {}

  async create(data: CreateChercheurDto): Promise<Chercheur> {
    const chercheur = this.chercheursRepository.create(data);
    return this.chercheursRepository.save(chercheur);
  }

  async findAll(): Promise<Chercheur[]> {
    return this.chercheursRepository.find();
  }

  async findOne(id: number): Promise<Chercheur> {
    const chercheur = await this.chercheursRepository.findOne({ where: { id } });
    if (!chercheur) {
      throw new NotFoundException(`Chercheur avec ID ${id} introuvable`);
    }
    return chercheur;
  }

  async update(id: number, data: UpdateChercheurDto): Promise<Chercheur> {
    const chercheur = await this.findOne(id);
    Object.assign(chercheur, data);
    return this.chercheursRepository.save(chercheur);
  }

  async remove(id: number): Promise<void> {
    const result = await this.chercheursRepository.delete(id);
    if (result.affected === 0) {
      throw new NotFoundException(`Chercheur avec ID ${id} introuvable`);
    }
  }
}
