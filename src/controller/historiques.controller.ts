import { Controller, Get, Post, Put, Delete, Param, Body, ParseIntPipe } from '@nestjs/common';
import { HistoriquesService } from '../services/historiques.service';
import { Historique } from '../model/historique.entity';
import { CreateHistoriqueDto } from '../dto/create-historique.dto';
import { UpdateHistoriqueDto } from '../dto/update-historique.dto';

@Controller('historiques')
export class HistoriquesController {
  constructor(private readonly historiquesService: HistoriquesService) {}

  @Post()
  create(@Body() createDto: CreateHistoriqueDto): Promise<Historique> {
    return this.historiquesService.create(createDto);
  }

  @Get()
  findAll(): Promise<Historique[]> {
    return this.historiquesService.findAll();
  }

  @Get(':id')
  findOne(@Param('id', ParseIntPipe) id: number): Promise<Historique> {
    return this.historiquesService.findOne(id);
  }

  @Put(':id')
  update(
    @Param('id', ParseIntPipe) id: number,
    @Body() updateDto: UpdateHistoriqueDto,
  ): Promise<Historique> {
    return this.historiquesService.update(id, updateDto);
  }

  @Delete(':id')
  remove(@Param('id', ParseIntPipe) id: number): Promise<void> {
    return this.historiquesService.remove(id);
  }
}
