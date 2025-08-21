import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PartenairesService } from '../services/partenaires.service';
import { PartenairesController } from '../controller/partenaires.controller';
import { Partenaire } from '../model/partenaires.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Partenaire])],
  controllers: [PartenairesController],
  providers: [PartenairesService],
})
export class PartenairesModule {}
