import { Controller, Get } from '@nestjs/common';
import { AppWithPrismaService } from './app-with-prisma.service';

@Controller()
export class AppWithPrismaController {
  constructor(private readonly appWithPrismaService: AppWithPrismaService) {}

  @Get()
  getHello(): string {
    return this.appWithPrismaService.getHello();
  }
}
