import { IsString, Length, IsEmail } from 'class-validator';

export class CreatePartenaireDto {
  @IsString()
  @Length(1, 150)
  nom: string;

  @IsString()
  @Length(1, 85)
  type_partenaires: string;

  @IsString()
  @Length(1, 50)
  annee: string;

  @IsString()
  @Length(1, 100)
  pays_origine: string;

  @IsString()
  @Length(1, 85)
  adresse: string;

  @IsString()
  @Length(1, 45)
  telephone: string;

  @IsEmail()
  @Length(1, 85)
  email: string;

  @IsString()
  @Length(1, 150)
  domaine: string;
}
