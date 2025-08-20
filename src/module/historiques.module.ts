import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Historique } from '../model/historique.entity';
import { HistoriquesService } from '../services/historiques.service';
import { HistoriquesController } from '../controller/historiques.controller';

@Module({
  imports: [TypeOrmModule.forFeature([Historique])],
  providers: [HistoriquesService],
  controllers: [HistoriquesController],
})
export class HistoriquesModule {}
