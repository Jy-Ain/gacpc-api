import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { CreateInstitutionDto } from '../dto/create-institution.dto';
import { UpdateInstitutionDto } from '../dto/update-institution.dto';
import { Institution } from 'src/model/institutions.entity';

@Injectable()
export class InstitutionsService {
  constructor(
    @InjectRepository(Institution)
    private readonly institutionRepo: Repository<Institution>,
  ) {}

  async create(createInstitutionDto: CreateInstitutionDto): Promise<Institution> {
    const institution = this.institutionRepo.create(createInstitutionDto);
    return this.institutionRepo.save(institution);
  }

  async findAll(): Promise<Institution[]> {
    return this.institutionRepo.find();
  }

  async findOne(id: number): Promise<Institution> {
    const institution = await this.institutionRepo.findOne({ where: { idPrimaire: id } });
    if (!institution) {
      throw new NotFoundException(`Institution avec ID ${id} introuvable`);
    }
    return institution;
  }

  async update(id: number, updateInstitutionDto: UpdateInstitutionDto): Promise<Institution> {
    const institution = await this.findOne(id);
    Object.assign(institution, updateInstitutionDto);
    return this.institutionRepo.save(institution);
  }

  async remove(id: number): Promise<void> {
    const institution = await this.findOne(id);
    await this.institutionRepo.remove(institution);
  }
}
