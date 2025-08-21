import { IsString, Length, IsDateString } from 'class-validator';

export class CreateResultatDto {
  @IsString()
  @Length(1, 150)
  type_resultats: string;

  @IsString()
  @Length(1, 200)
  designation: string;

  @IsString()
  id_activites: string;

  @IsString()
  @Length(1, 50)
  annee_realisation: string;

  @IsDateString()
  date_demande_brevet: Date;

  @IsString()
  @Length(1, 150)
  ref_brevet: string;

  @IsString()
  id_chercheur: string;

  @IsString()
  @Length(1, 200)
  utilisation: string;
}
