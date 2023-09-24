import { NestFactory } from '@nestjs/core';
import { AppWithPrismaModule } from './app-with-prisma.module';

async function bootstrap() {
  const app = await NestFactory.create(AppWithPrismaModule);
  await app.listen(3000);
}
bootstrap();
