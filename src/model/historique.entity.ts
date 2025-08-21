import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity('historique')
export class Historique {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 150 })
  periode: string;

  @Column({ length: 50 })
  annee_debut: string;

  @Column({ length: 50 })
  annee_fin: string;

  @Column({ length: 100 })
  nom_structure: string;

  @Column({ length: 100 })
  dirigeant_structure: string;

  @Column({ length: 100 })
  dirigeant_pays: string;

  @Column({ length: 200 })
  regime: string;

  @Column({ length: 1000 })
  histo: string;
}
