import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity('inscrire')
export class Inscrire {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 150 })
  nom: string;

  @Column({ length: 150 })
  utilisateur: string;

  @Column({ type: 'enum', enum: ['simple', 'admin'], default: 'simple' })
  role: 'simple' | 'admin';

  @Column({ length: 250 })
  mtpasse: string;
}
