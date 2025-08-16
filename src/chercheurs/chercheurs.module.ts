import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Chercheur } from './chercheur.entity';
import { ChercheursService } from './chercheurs.service';
import { ChercheursController } from './chercheurs.controller';

@Module({
  imports: [TypeOrmModule.forFeature([Chercheur])],
  providers: [ChercheursService],
  controllers: [ChercheursController],
})
export class ChercheursModule {}
