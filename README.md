# 🚀 NestJS Monorepo Starter with Automated Deployment 🛠️

## Description
Kickstart your NestJS project using monorepo architecture, inspired by the [Nest](https://github.com/nestjs/nest) TypeScript starter repository of NestJS. This repository comes preconfigured with NestJS's powerful monorepo capabilities, allowing you to efficiently manage multiple services and applications. It includes automation scripts for seamless deployment, making it easy to take your NestJS applications from development to production with ease. Start building scalable, maintainable APIs and microservices today!

## Installation

```bash
$ pnpm install
```

## Creating an Application and Library

```bash
# To create a new NestJS application, use the following command:
$ pnpm generate:app {your-app}

# To create a new NestJS library, use the following command:
$ pnpm generate:lib {your-lib}
```

## Running the Application

```bash
# Development mode
$ pnpm start:dev {<app-name}

# Production mode
$ pnpm start:prod
```

## Building and Deploying

For Linux/macOS:
```bash
./deploy.sh | or | ./deploy.sh {your-app}
```
For Windows:
```ps1
.\deploy.ps1 | or | .\deploy.ps1 {your-app}
```

## Credits
- [DavidutzDev](https://github.com/DavidutzDev) : Main contributor and creator of this repository.
- [Po Co](https://github.com/polnio) : Collaborator who contributed to the development and improvement of the automation scripts.

## License

This repository is [MIT licensed](LICENSE).
