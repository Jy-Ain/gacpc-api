import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Inscrire } from '../model/inscrire.entity';

@Injectable()
export class InscrireService {
  constructor(
    @InjectRepository(Inscrire)
    private inscrireRepository: Repository<Inscrire>,
  ) {}

  create(data: Partial<Inscrire>): Promise<Inscrire> {
    const item = this.inscrireRepository.create(data);
    return this.inscrireRepository.save(item);
  }

  findAll(): Promise<Inscrire[]> {
    return this.inscrireRepository.find();
  }

  async findOne(id: number): Promise<Inscrire> {
    const item = await this.inscrireRepository.findOne({ where: { id } });
    if (!item) throw new NotFoundException(`Inscrire ${id} introuvable`);
    return item;
  }

  async update(id: number, data: Partial<Inscrire>): Promise<Inscrire> {
    const item = await this.findOne(id);
    Object.assign(item, data);
    return this.inscrireRepository.save(item);
  }

  async remove(id: number): Promise<void> {
    const result = await this.inscrireRepository.delete(id);
    if (result.affected === 0) throw new NotFoundException(`Inscrire ${id} introuvable`);
  }
}
