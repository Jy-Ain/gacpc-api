import { Controller, Get, Post, Put, Delete, Param, Body, ParseIntPipe } from '@nestjs/common';
import { InscrireService } from '../services/inscrire.service';
import { Inscrire } from '../model/inscrire.entity';

@Controller('inscrire')
export class InscrireController {
  constructor(private readonly inscrireService: InscrireService) {}

  @Post()
  create(@Body() dto: Partial<Inscrire>) {
    return this.inscrireService.create(dto);
  }

  @Get()
  findAll() {
    return this.inscrireService.findAll();
  }

  @Get(':id')
  findOne(@Param('id', ParseIntPipe) id: number) {
    return this.inscrireService.findOne(id);
  }

  @Put(':id')
  update(@Param('id', ParseIntPipe) id: number, @Body() dto: Partial<Inscrire>) {
    return this.inscrireService.update(id, dto);
  }

  @Delete(':id')
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.inscrireService.remove(id);
  }
}
