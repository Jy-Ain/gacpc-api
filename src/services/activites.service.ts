import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Activite } from '../model/activites.entity';
import { CreateActiviteDto } from '../dto/create-activite.dto';
import { UpdateActiviteDto } from '../dto/update-activite.dto';

@Injectable()
export class ActivitesService {
  constructor(
    @InjectRepository(Activite)
    private activitesRepository: Repository<Activite>,
  ) {}

  async create(data: CreateActiviteDto): Promise<Activite> {
    const activite = this.activitesRepository.create(data);
    return this.activitesRepository.save(activite);
  }

  async findAll(): Promise<Activite[]> {
    return this.activitesRepository.find();
  }

  async findOne(id: number): Promise<Activite> {
    const activite = await this.activitesRepository.findOne({ where: { ID: id } });
    if (!activite) {
      throw new NotFoundException(`Activité avec ID ${id} introuvable`);
    }
    return activite;
  }

  async update(id: number, data: UpdateActiviteDto): Promise<Activite> {
    const activite = await this.findOne(id);
    Object.assign(activite, data);
    return this.activitesRepository.save(activite);
  }

  async remove(id: number): Promise<void> {
    const result = await this.activitesRepository.delete(id);
    if (result.affected === 0) {
      throw new NotFoundException(`Activité avec ID ${id} introuvable`);
    }
  }
}
