import { Exclude, Expose } from 'class-transformer';

@Expose()
export class InscrireDto {
  id: number;
  nom: string;
  utilisateur: string;
  role: 'simple' | 'admin';

  @Exclude()
  mtpasse: string;
}
