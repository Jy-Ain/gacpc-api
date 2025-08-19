import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity('chercheurs')
export class Chercheur {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 150 })
  nom: string;

  @Column({ length: 250 })
  photo: string;

  @Column({ length: 45 })
  sexe: string;

  @Column({ type: 'date' })
  annee_de_naissance: Date;

  @Column({ length: 80 })
  lieu_de_naissance: string;

  @Column({ length: 150 })
  diplome: string;

  @Column({ length: 150 })
  specialite: string;

  @Column({ type: 'int', nullable: true })
  id_institution: number;

  @Column({ type: 'date' })
  date_entre_administration: Date;

  @Column({ length: 15 })
  matricule: string;

  @Column({ length: 100 })
  adresse_mail: string;
}
