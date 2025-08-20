import { IsString, Length } from 'class-validator';

export class CreateHistoriqueDto {
  @IsString()
  @Length(1, 150)
  periode: string;

  @IsString()
  @Length(1, 50)
  annee_debut: string;

  @IsString()
  @Length(1, 50)
  annee_fin: string;

  @IsString()
  @Length(1, 100)
  nom_structure: string;

  @IsString()
  @Length(1, 100)
  dirigeant_structure: string;

  @IsString()
  @Length(1, 100)
  dirigeant_pays: string;

  @IsString()
  @Length(1, 200)
  regime: string;

  @IsString()
  @Length(1, 1000)
  histo: string;
}
