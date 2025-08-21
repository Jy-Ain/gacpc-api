import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Resultat } from '../model/resultats.entity';
import { CreateResultatDto } from '../dto/create-resultat.dto';
import { UpdateResultatDto } from '../dto/update-resultat.dto';

@Injectable()
export class ResultatsService {
  constructor(
    @InjectRepository(Resultat)
    private readonly resultatRepo: Repository<Resultat>,
  ) {}

  async create(createResultatDto: CreateResultatDto): Promise<Resultat> {
    const resultat = this.resultatRepo.create(createResultatDto);
    return this.resultatRepo.save(resultat);
  }

  async findAll(): Promise<Resultat[]> {
    return this.resultatRepo.find();
  }

  async findOne(id: number): Promise<Resultat> {
    const resultat = await this.resultatRepo.findOne({ where: { id } });
    if (!resultat) {
      throw new NotFoundException(`Résultat avec ID ${id} introuvable`);
    }
    return resultat;
  }

  async update(id: number, updateResultatDto: UpdateResultatDto): Promise<Resultat> {
    const resultat = await this.findOne(id);
    Object.assign(resultat, updateResultatDto);
    return this.resultatRepo.save(resultat);
  }

  async remove(id: number): Promise<void> {
    const resultat = await this.findOne(id);
    await this.resultatRepo.remove(resultat);
  }
}
