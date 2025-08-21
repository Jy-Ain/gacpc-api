import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Partenaire } from '../model/partenaires.entity';
import { CreatePartenaireDto } from '../dto/create-partenaire.dto';
import { UpdatePartenaireDto } from '../dto/update-partenaire.dto';

@Injectable()
export class PartenairesService {
  constructor(
    @InjectRepository(Partenaire)
    private readonly partenaireRepo: Repository<Partenaire>,
  ) {}

  async create(createPartenaireDto: CreatePartenaireDto): Promise<Partenaire> {
    const partenaire = this.partenaireRepo.create(createPartenaireDto);
    return this.partenaireRepo.save(partenaire);
  }

  async findAll(): Promise<Partenaire[]> {
    return this.partenaireRepo.find();
  }

  async findOne(id: number): Promise<Partenaire> {
    const partenaire = await this.partenaireRepo.findOne({ where: { id } });
    if (!partenaire) {
      throw new NotFoundException(`Partenaire avec ID ${id} introuvable`);
    }
    return partenaire;
  }

  async update(id: number, updatePartenaireDto: UpdatePartenaireDto): Promise<Partenaire> {
    const partenaire = await this.findOne(id);
    Object.assign(partenaire, updatePartenaireDto);
    return this.partenaireRepo.save(partenaire);
  }

  async remove(id: number): Promise<void> {
    const partenaire = await this.findOne(id);
    await this.partenaireRepo.remove(partenaire);
  }
}
