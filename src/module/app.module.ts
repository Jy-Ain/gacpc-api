import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ChercheursModule } from './chercheurs.module';
import { ActivitesModule } from './activites.module';
import { Chercheur } from '../model/chercheur.entity';
import { Activite } from 'src/model/activites.entity';
import { ArticlesModule } from './articles.module';
import { Article } from 'src/model/articles.entity';
import { HistoriquesModule } from './historiques.module';
import { Historique } from 'src/model/historique.entity';
import { Inscrire } from 'src/model/inscrire.entity';
import { Manifestation } from 'src/model/manifestations.entity';
import { Institution } from 'src/model/institutions.entity';
import { Partenaire } from 'src/model/partenaires.entity';
import { Resultat } from 'src/model/resultats.entity';
import { Texte } from 'src/model/textes.entity';
import { InscrireModule } from './inscrire.module';
import { InstitutionsModule } from './institutions.module';
import { PartenairesModule } from './partenaires.module';
import { ResultatsModule } from './resultats.module';
import { TextesModule } from './textes.module';
import { ManifestationsModule } from './manifestations.module';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: process.env.DB_HOST || 'localhost',
      port: parseInt(process.env.DB_PORT || '3306'),
      username: process.env.DB_USERNAME || 'root',
      password: process.env.DB_PASSWORD || '',
      database: process.env.DB_NAME || 'gacpc',
      entities: [
        Chercheur,
        Activite,
        Article,
        Historique,
        Inscrire,
        Institution,
        Manifestation,
        Partenaire,
        Resultat,
        Texte,
      ],
      synchronize: false,
    }),
    ChercheursModule,
    ActivitesModule,
    ArticlesModule,
    HistoriquesModule,
    InscrireModule,
    InstitutionsModule,
    ManifestationsModule,
    PartenairesModule,
    ResultatsModule,
    TextesModule,
  ],
})
export class AppModule {}
