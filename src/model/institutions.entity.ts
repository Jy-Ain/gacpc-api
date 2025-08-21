import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity('institutions')
export class Institution {
  @PrimaryGeneratedColumn({ name: 'idPrimaire' })
  idPrimaire: number;

  @Column({ length: 150 })
  nom: string;

  @Column({ length: 100 })
  statut: string;

  @Column({ length: 50 })
  annee_de_creation: string;

  @Column({ length: 100 })
  sigle: string;

  @Column({ type: 'int', nullable: true })
  id_text?: number;

  @Column({ length: 150 })
  responsable: string;

  @Column({ length: 150 })
  fonction: string;

  @Column({ length: 200 })
  domaines: string;

  @Column({ length: 85 })
  adresse: string;

  @Column({ length: 45 })
  telephone: string;

  @Column({ length: 150 })
  email: string;

  @Column({ length: 150 })
  site_web: string;

  @Column({ type: 'int', nullable: true })
  id_historique?: number;
}
