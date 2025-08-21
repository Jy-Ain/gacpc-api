import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Manifestation } from '../model/manifestations.entity';
import { CreateManifestationDto } from '../dto/create-manifestation.dto';
import { UpdateManifestationDto } from '../dto/update-manifestation.dto';

@Injectable()
export class ManifestationsService {
  constructor(
    @InjectRepository(Manifestation)
    private readonly manifestationRepo: Repository<Manifestation>,
  ) {}

  async create(createManifestationDto: CreateManifestationDto): Promise<Manifestation> {
    const manifestation = this.manifestationRepo.create(createManifestationDto);
    return this.manifestationRepo.save(manifestation);
  }

  async findAll(): Promise<Manifestation[]> {
    return this.manifestationRepo.find();
  }

  async findOne(id: number): Promise<Manifestation> {
    const manifestation = await this.manifestationRepo.findOne({ where: { id } });
    if (!manifestation) {
      throw new NotFoundException(`Manifestation avec ID ${id} introuvable`);
    }
    return manifestation;
  }

  async update(id: number, updateManifestationDto: UpdateManifestationDto): Promise<Manifestation> {
    const manifestation = await this.findOne(id);
    Object.assign(manifestation, updateManifestationDto);
    return this.manifestationRepo.save(manifestation);
  }

  async remove(id: number): Promise<void> {
    const manifestation = await this.findOne(id);
    await this.manifestationRepo.remove(manifestation);
  }
}
