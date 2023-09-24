import { Module } from "@nestjs/common";
import { Lib2Service } from "./lib2.service";

@Module({
	providers: [Lib2Service],
	exports: [Lib2Service],
})
export class Lib2Module {}
