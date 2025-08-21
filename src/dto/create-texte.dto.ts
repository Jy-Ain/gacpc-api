import { IsString, IsDateString, Length } from 'class-validator';

export class CreateTexteDto {
  @IsString()
  @Length(1, 150)
  type_text: string;

  @IsString()
  @Length(1, 80)
  num_text: string;

  @IsDateString()
  date_text: Date;

  @IsString()
  @Length(1, 200)
  titre: string;

  @IsString()
  @Length(1, 200)
  entites: string;
}
