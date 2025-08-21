import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity('partenaires')
export class Partenaire {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 150 })
  nom: string;

  @Column({ length: 85 })
  type_partenaires: string;

  @Column({ length: 50 })
  annee: string;

  @Column({ length: 100 })
  pays_origine: string;

  @Column({ length: 85 })
  adresse: string;

  @Column({ length: 45 })
  telephone: string;

  @Column({ length: 85 })
  email: string;

  @Column({ length: 150 })
  domaine: string;
}
