import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Activite } from '../model/activites.entity';
import { ActivitesService } from '../services/activites.service';
import { ActivitesController } from '../controller/activites.controller';

@Module({
  imports: [TypeOrmModule.forFeature([Activite])],
  providers: [ActivitesService],
  controllers: [ActivitesController],
})
export class ActivitesModule {}
