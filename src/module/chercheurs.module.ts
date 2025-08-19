import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Chercheur } from '../model/chercheur.entity';
import { ChercheursService } from '../services/chercheurs.service';
import { ChercheursController } from '../controller/chercheurs.controller';

@Module({
  imports: [TypeOrmModule.forFeature([Chercheur])],
  providers: [ChercheursService],
  controllers: [ChercheursController],
})
export class ChercheursModule {}
