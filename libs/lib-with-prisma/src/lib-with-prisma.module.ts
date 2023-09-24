import { Module } from '@nestjs/common';
import { LibWithPrismaService } from './lib-with-prisma.service';

@Module({
  providers: [LibWithPrismaService],
  exports: [LibWithPrismaService],
})
export class LibWithPrismaModule {}
