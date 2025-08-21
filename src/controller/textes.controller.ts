import { Controller, Get, Post, Body, Param, Delete, Put } from '@nestjs/common';
import { TextesService } from '../services/textes.service';
import { CreateTexteDto } from '../dto/create-texte.dto';
import { UpdateTexteDto } from '../dto/update-texte.dto';

@Controller('textes')
export class TextesController {
  constructor(private readonly textesService: TextesService) {}

  @Post()
  create(@Body() createTexteDto: CreateTexteDto) {
    return this.textesService.create(createTexteDto);
  }

  @Get()
  findAll() {
    return this.textesService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.textesService.findOne(+id);
  }

  @Put(':id')
  update(@Param('id') id: string, @Body() updateTexteDto: UpdateTexteDto) {
    return this.textesService.update(+id, updateTexteDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.textesService.remove(+id);
  }
}
