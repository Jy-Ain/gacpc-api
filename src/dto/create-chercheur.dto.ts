import { IsString, IsEmail, IsDateString, IsInt, IsOptional, Length } from 'class-validator';

export class CreateChercheurDto {
  @IsString()
  @Length(1, 150)
  nom: string;

  @IsString()
  @Length(1, 250) 
  photo: string;

  @IsString()
  @Length(1, 45)
  sexe: string;

  @IsDateString() 
  annee_de_naissance: string; 

  @IsString()
  @Length(1, 80)
  lieu_de_naissance: string;

  @IsString()
  @Length(1, 150)
  diplome: string;

  @IsString()
  @Length(1, 150)
  specialite: string;

  @IsOptional()
  @IsInt()
  id_institution?: number;

  @IsDateString() 
  date_entre_administration: string; 
  @IsString()
  @Length(1, 15)
  matricule: string;

  @IsEmail()
  @Length(1, 100)
  adresse_mail: string;
}