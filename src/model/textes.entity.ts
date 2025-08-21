import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity('textes')
export class Texte {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 150 })
  type_text: string;

  @Column({ length: 80 })
  num_text: string;

  @Column({ type: 'date' })
  date_text: Date;

  @Column({ length: 200 })
  titre: string;

  @Column({ length: 200 })
  entites: string;
}
