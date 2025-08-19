import { Controller, Get, Post, Put, Delete, Param, Body, ParseIntPipe } from '@nestjs/common';
import { ActivitesService } from '../services/activites.service';
import { Activite } from '../model/activites.entity';
import { CreateActiviteDto } from '../dto/create-activite.dto';
import { UpdateActiviteDto } from '../dto/update-activite.dto';

@Controller('activites')
export class ActivitesController {
  constructor(private readonly activitesService: ActivitesService) {}

  @Post()
  create(@Body() createDto: CreateActiviteDto): Promise<Activite> {
    return this.activitesService.create(createDto);
  }

  @Get()
  findAll(): Promise<Activite[]> {
    return this.activitesService.findAll();
  }

  @Get(':id')
  findOne(@Param('id', ParseIntPipe) id: number): Promise<Activite> {
    return this.activitesService.findOne(id);
  }

  @Put(':id')
  update(
    @Param('id', ParseIntPipe) id: number,
    @Body() updateDto: UpdateActiviteDto,
  ): Promise<Activite> {
    return this.activitesService.update(id, updateDto);
  }

  @Delete(':id')
  remove(@Param('id', ParseIntPipe) id: number): Promise<void> {
    return this.activitesService.remove(id);
  }
}
