import { PartialType } from '@nestjs/mapped-types';
import { CreateTexteDto } from './create-texte.dto';

export class UpdateTexteDto extends PartialType(CreateTexteDto) {}
