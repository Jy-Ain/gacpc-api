import { IsString, Length } from 'class-validator';

export class CreateManifestationDto {
  @IsString()
  @Length(1, 200)
  theme: string;

  @IsString()
  @Length(1, 150)
  type_manifestations: string;

  @IsString()
  @Length(1, 150)
  intitule: string;

  @IsString()
  @Length(1, 85)
  lieu: string;

  @IsString()
  @Length(1, 85)
  organisateur: string;

  @IsString()
  @Length(1, 10)
  id_partenaires: string;
}
