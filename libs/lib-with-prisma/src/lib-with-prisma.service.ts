import { Injectable } from '@nestjs/common';
import {PrismaService} from "./prisma.service";

@Injectable()
export class LibWithPrismaService {
    constructor(private prismaService: PrismaService) {}

    getHello() {
        this.prismaService.libModel.create({
            data: {
                name: "Lib"
            }
        })
    }
}
