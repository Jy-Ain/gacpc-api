import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { TextesService } from '../services/textes.service';
import { TextesController } from '../controller/textes.controller';
import { Texte } from '../model/textes.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Texte])],
  controllers: [TextesController],
  providers: [TextesService],
})
export class TextesModule {}
