import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity('resultats')
export class Resultat {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 150 })
  type_resultats: string;

  @Column({ length: 200 })
  designation: string;

  @Column()
  id_activites: string;

  @Column({ length: 50 })
  annee_realisation: string;

  @Column({ type: 'date' })
  date_demande_brevet: Date;

  @Column({ length: 150 })
  ref_brevet: string;

  @Column()
  id_chercheur: string;

  @Column({ length: 200 })
  utilisation: string;
}
