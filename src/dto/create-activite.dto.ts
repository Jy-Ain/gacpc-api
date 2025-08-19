import { IsString, IsInt, IsOptional, Length } from 'class-validator';

export class CreateActiviteDto {
  @IsString()
  @Length(1, 100)
  type_activites: string;

  @IsInt()
  annee: number;

  @IsOptional()
  @IsString()
  @Length(1, 50)
  duree?: string;

  @IsString()
  @Length(1, 150)
  intitule: string;

  @IsOptional()
  @IsInt()
  id_institution?: number;

  @IsOptional()
  @IsString()
  @Length(1, 200)
  departement?: string;

  @IsInt()
  id_chercheur: number;

  @IsOptional()
  @IsString()
  @Length(1, 150)
  thematique?: string;

  @IsOptional()
  @IsString()
  @Length(1, 250)
  objectifs_global?: string;

  @IsOptional()
  @IsInt()
  id_partenaires?: number;
}
