import { IsString, IsEnum, IsNotEmpty, Length } from 'class-validator';

export class CreateInscrireDto {
  @IsString()
  @IsNotEmpty()
  @Length(1, 150)
  nom: string;

  @IsString()
  @IsNotEmpty()
  @Length(1, 150)
  utilisateur: string;

  @IsEnum(['simple', 'admin'])
  role: 'simple' | 'admin';

  @IsString()
  @IsNotEmpty()
  @Length(6, 250)
  mtpasse: string;
}
