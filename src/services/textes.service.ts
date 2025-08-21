import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Texte } from '../model/textes.entity';
import { CreateTexteDto } from '../dto/create-texte.dto';
import { UpdateTexteDto } from '../dto/update-texte.dto';

@Injectable()
export class TextesService {
  constructor(
    @InjectRepository(Texte)
    private readonly texteRepo: Repository<Texte>,
  ) {}

  async create(createTexteDto: CreateTexteDto): Promise<Texte> {
    const texte = this.texteRepo.create(createTexteDto);
    return this.texteRepo.save(texte);
  }

  async findAll(): Promise<Texte[]> {
    return this.texteRepo.find();
  }

  async findOne(id: number): Promise<Texte> {
    const texte = await this.texteRepo.findOne({ where: { id } });
    if (!texte) {
      throw new NotFoundException(`Texte avec ID ${id} introuvable`);
    }
    return texte;
  }

  async update(id: number, updateTexteDto: UpdateTexteDto): Promise<Texte> {
    const texte = await this.findOne(id);
    Object.assign(texte, updateTexteDto);
    return this.texteRepo.save(texte);
  }

  async remove(id: number): Promise<void> {
    const texte = await this.findOne(id);
    await this.texteRepo.remove(texte);
  }
}
