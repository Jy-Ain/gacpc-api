import { Controller, Get, Post, Body, Param, Delete, Put } from '@nestjs/common';
import { ManifestationsService } from '../services/manifestations.service';
import { CreateManifestationDto } from '../dto/create-manifestation.dto';
import { UpdateManifestationDto } from '../dto/update-manifestation.dto';

@Controller('manifestations')
export class ManifestationsController {
  constructor(private readonly manifestationsService: ManifestationsService) {}

  @Post()
  create(@Body() createManifestationDto: CreateManifestationDto) {
    return this.manifestationsService.create(createManifestationDto);
  }

  @Get()
  findAll() {
    return this.manifestationsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.manifestationsService.findOne(+id);
  }

  @Put(':id')
  update(@Param('id') id: string, @Body() updateManifestationDto: UpdateManifestationDto) {
    return this.manifestationsService.update(+id, updateManifestationDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.manifestationsService.remove(+id);
  }
}
