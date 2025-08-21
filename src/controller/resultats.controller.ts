import { Controller, Get, Post, Body, Param, Delete, Put } from '@nestjs/common';
import { ResultatsService } from '../services/resultats.service';
import { CreateResultatDto } from '../dto/create-resultat.dto';
import { UpdateResultatDto } from '../dto/update-resultat.dto';

@Controller('resultats')
export class ResultatsController {
  constructor(private readonly resultatsService: ResultatsService) {}

  @Post()
  create(@Body() createResultatDto: CreateResultatDto) {
    return this.resultatsService.create(createResultatDto);
  }

  @Get()
  findAll() {
    return this.resultatsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.resultatsService.findOne(+id);
  }

  @Put(':id')
  update(@Param('id') id: string, @Body() updateResultatDto: UpdateResultatDto) {
    return this.resultatsService.update(+id, updateResultatDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.resultatsService.remove(+id);
  }
}
