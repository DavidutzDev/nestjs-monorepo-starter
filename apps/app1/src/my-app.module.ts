import { Lib1Module } from "@core/lib1";
import { Module } from "@nestjs/common";
import { MyAppController } from "./my-app.controller";
import { MyAppService } from "./my-app.service";

@Module({
	imports: [Lib1Module],
	controllers: [MyAppController],
	providers: [MyAppService],
})
export class MyAppModule {}
