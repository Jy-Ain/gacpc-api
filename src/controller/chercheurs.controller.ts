import { Controller, Get, Post, Put, Delete, Param, Body, ParseIntPipe } from '@nestjs/common';
import { ChercheursService } from '../services/chercheurs.service';
import { Chercheur } from '../model/chercheur.entity';
import { CreateChercheurDto } from '../dto/create-chercheur.dto';
import { UpdateChercheurDto } from '../dto/update-chercheur.dto';

@Controller('chercheurs')
export class ChercheursController {
  constructor(private readonly chercheursService: ChercheursService) {}

  @Post()
  create(@Body() createDto: CreateChercheurDto): Promise<Chercheur> {
    return this.chercheursService.create(createDto);
  }

  @Get()
  findAll(): Promise<Chercheur[]> {
    return this.chercheursService.findAll();
  }

  @Get(':id')
  findOne(@Param('id', ParseIntPipe) id: number): Promise<Chercheur> {
    return this.chercheursService.findOne(id);
  }

  @Put(':id')
  update(
    @Param('id', ParseIntPipe) id: number,
    @Body() updateDto: UpdateChercheurDto,
  ): Promise<Chercheur> {
    return this.chercheursService.update(id, updateDto);
  }

  @Delete(':id')
  remove(@Param('id', ParseIntPipe) id: number): Promise<void> {
    return this.chercheursService.remove(id);
  }
}
