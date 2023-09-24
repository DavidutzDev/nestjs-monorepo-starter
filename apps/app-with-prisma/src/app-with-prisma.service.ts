import { Injectable } from '@nestjs/common';
import {PrismaService} from "./prisma.service";

@Injectable()
export class AppWithPrismaService {
  constructor(private prismaService: PrismaService) {}

  getHello(): string {
    this.prismaService.exampleModel.create({
      data: {
        name: "Example Entry"
      }
    })

    return 'Hello World!';
  }
}
