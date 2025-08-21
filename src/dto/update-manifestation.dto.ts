import { PartialType } from '@nestjs/mapped-types';
import { CreateManifestationDto } from './create-manifestation.dto';

export class UpdateManifestationDto extends PartialType(CreateManifestationDto) {}
