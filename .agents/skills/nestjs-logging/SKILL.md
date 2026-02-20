---
name: nestjs-logging
description: NestJS logging guidelines covering custom logger setup with ISO timestamps. Use when setting up logging in a NestJS application or when the default logger format is insufficient.
---

# NestJS Logging

---

## Logger Choice

Use the built-in NestJS `ConsoleLogger` as the base — **do not** add Pino, Winston, or other third-party loggers unless explicitly requested.

---

## Custom Logger (ISO Timestamps)

The default NestJS logger prints timestamps in a non-sortable American format. Always replace it with a custom logger that renders ISO 8601 timestamps.

```ts
import { ConsoleLogger, Injectable } from '@nestjs/common';

@Injectable()
export class AppLogger extends ConsoleLogger {
  protected formatTimestamp(): string {
    return new Date().toISOString();
  }
}
```

Register it in `AppModule`:

```ts
import { Module } from '@nestjs/common';
import { AppLogger } from './app-logger';

@Module({
  providers: [AppLogger],
})
export class AppModule {}
```

Bootstrap with the custom logger:

```ts
const app = await NestFactory.create(AppModule, { bufferLogs: true });
app.useLogger(app.get(AppLogger));
```

---

## Usage

Inject `AppLogger` into services and controllers — do not use `console.log`.

```ts
@Injectable()
export class CatsService {
  constructor(private readonly logger: AppLogger) {}

  findAll() {
    this.logger.log('Finding all cats');
  }
}
```
