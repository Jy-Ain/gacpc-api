import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity('manifestations')
export class Manifestation {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 200 })
  theme: string;

  @Column({ length: 150 })
  type_manifestations: string;

  @Column({ length: 150 })
  intitule: string;

  @Column({ length: 85 })
  lieu: string;

  @Column({ length: 85 })
  organisateur: string;

  @Column({ length: 10 })
  id_partenaires: string;
}
