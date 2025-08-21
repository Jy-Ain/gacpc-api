import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ManifestationsService } from '../services/manifestations.service';
import { ManifestationsController } from '../controller/manifestations.controller';
import { Manifestation } from '../model/manifestations.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Manifestation])],
  controllers: [ManifestationsController],
  providers: [ManifestationsService],
})
export class ManifestationsModule {}
