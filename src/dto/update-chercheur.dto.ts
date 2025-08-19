import { PartialType } from '@nestjs/mapped-types';
import { CreateChercheurDto } from './create-chercheur.dto';

export class UpdateChercheurDto extends PartialType(CreateChercheurDto) {}
