import { Module } from '@nestjs/common';
import { AppWithPrismaController } from './app-with-prisma.controller';
import { AppWithPrismaService } from './app-with-prisma.service';

@Module({
  imports: [],
  controllers: [AppWithPrismaController],
  providers: [AppWithPrismaService],
})
export class AppWithPrismaModule {}
