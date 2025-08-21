import { IsString, IsOptional, IsEmail, Length, IsInt } from 'class-validator';

export class CreateInstitutionDto {
  @IsString()
  @Length(1, 150)
  nom: string;

  @IsString()
  @Length(1, 100)
  statut: string;

  @IsString()
  @Length(1, 50)
  annee_de_creation: string;

  @IsString()
  @Length(1, 100)
  sigle: string;

  @IsOptional()
  @IsInt()
  id_text?: number;

  @IsString()
  @Length(1, 150)
  responsable: string;

  @IsString()
  @Length(1, 150)
  fonction: string;

  @IsString()
  @Length(1, 200)
  domaines: string;

  @IsString()
  @Length(1, 85)
  adresse: string;

  @IsString()
  @Length(1, 45)
  telephone: string;

  @IsEmail()
  @Length(1, 150)
  email: string;

  @IsString()
  @Length(1, 150)
  site_web: string;

  @IsOptional()
  @IsInt()
  id_historique?: number;
}
