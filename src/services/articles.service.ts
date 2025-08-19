import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { CreateArticleDto } from '../dto/create-article.dto';
import { UpdateArticleDto } from '../dto/update-article.dto';
import { Article } from 'src/model/articles.entity';

@Injectable()
export class ArticlesService {
  constructor(
    @InjectRepository(Article)
    private articlesRepository: Repository<Article>,
  ) {}

  async create(data: CreateArticleDto): Promise<Article> {
    const article = this.articlesRepository.create(data);
    return this.articlesRepository.save(article);
  }

  async findAll(): Promise<Article[]> {
    return this.articlesRepository.find();
  }

  async findOne(id: number): Promise<Article> {
    const article = await this.articlesRepository.findOne({ where: { id } });
    if (!article) {
      throw new NotFoundException(`Article avec ID ${id} introuvable`);
    }
    return article;
  }

  async update(id: number, data: UpdateArticleDto): Promise<Article> {
    const article = await this.findOne(id);
    Object.assign(article, data);
    return this.articlesRepository.save(article);
  }

  async remove(id: number): Promise<void> {
    const result = await this.articlesRepository.delete(id);
    if (result.affected === 0) {
      throw new NotFoundException(`Article avec ID ${id} introuvable`);
    }
  }
}
