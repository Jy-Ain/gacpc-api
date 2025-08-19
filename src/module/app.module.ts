import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ConfigModule } from '@nestjs/config';
import { Chercheur } from '../model/chercheur.entity';
import { ChercheursModule } from './chercheurs.module';

@Module({
  imports: [
    ConfigModule.forRoot(),
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: process.env.DB_HOST || 'localhost',
      port: parseInt(process.env.DB_PORT || '3306'),
      username: process.env.DB_USERNAME || 'root',
      password: process.env.DB_PASSWORD || '',
      database: process.env.DB_NAME || 'gacpc',
      entities: [Chercheur],
      synchronize: false, // très important : ne pas modifier la structure en prod
    }),
    ChercheursModule,
  ],
})
export class AppModule {}
