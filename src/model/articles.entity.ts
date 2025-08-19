import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity('articles')
export class Article {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 100 })
  type_article: string;

  @Column({ length: 50 })
  annee: string;

  @Column({ length: 200 })
  titre: string;

  @Column({ length: 10 })
  id_chercheur: string;

  @Column({ type: 'date' })
  date_enregistrement: Date;
}
