import { IsString, IsDateString, Length } from 'class-validator';

export class CreateArticleDto {
  @IsString()
  @Length(1, 100)
  type_article: string;

  @IsString()
  @Length(1, 50)
  annee: string;

  @IsString()
  @Length(1, 200)
  titre: string;

  @IsString()
  @Length(1, 10)
  id_chercheur: string;

  @IsDateString()
  date_enregistrement: Date;
}
