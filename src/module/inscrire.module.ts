import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Inscrire } from '../model/inscrire.entity';
import { InscrireService } from '../services/inscrire.service';
import { InscrireController } from '../controller/inscrire.controller';

@Module({
  imports: [TypeOrmModule.forFeature([Inscrire])],
  providers: [InscrireService],
  controllers: [InscrireController],
})
export class InscrireModule {}
