import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity('activites')
export class Activite {
  @PrimaryGeneratedColumn()
  ID: number;

  @Column({ length: 100 })
  type_activites: string;

  @Column({ type: 'year' })
  annee: number;

  @Column({ length: 50, nullable: true })
  duree: string;

  @Column({ length: 150 })
  intitule: string;

  @Column({ type: 'int', nullable: true })
  id_institution: number;

  @Column({ length: 200, nullable: true })
  departement: string;

  @Column({ type: 'int' })
  id_chercheur: number;

  @Column({ length: 150, nullable: true })
  thematique: string;

  @Column({ length: 250, nullable: true })
  objectifs_global: string;

  @Column({ type: 'int', nullable: true })
  id_partenaires: number;
}
