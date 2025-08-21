import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ResultatsService } from '../services/resultats.service';
import { ResultatsController } from '../controller/resultats.controller';
import { Resultat } from '../model/resultats.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Resultat])],
  controllers: [ResultatsController],
  providers: [ResultatsService],
})
export class ResultatsModule {}
