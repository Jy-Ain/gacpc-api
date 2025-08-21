import { PartialType } from '@nestjs/mapped-types';
import { CreateInscrireDto } from './create-inscrire.dto';

export class UpdateInscrireDto extends PartialType(CreateInscrireDto) {}
