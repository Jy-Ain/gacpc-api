import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ChercheursModule } from './chercheurs.module';
import { ActivitesModule } from './activites.module';
import { Chercheur } from '../model/chercheur.entity';
import { Activite } from 'src/model/activites.entity';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: process.env.DB_HOST || 'localhost',
      port: parseInt(process.env.DB_PORT || '3306'),
      username: process.env.DB_USERNAME || 'root',
      password: process.env.DB_PASSWORD || '',
      database: process.env.DB_NAME || 'gacpc',
      entities: [Chercheur, Activite], // <-- Activite incluse
      synchronize: false,
    }),
    ChercheursModule,
    ActivitesModule,
  ],
})
export class AppModule {}
