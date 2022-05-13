# Hey Taxi [WIP]

![hey-taxi-gh-1](https://user-images.githubusercontent.com/288159/168313473-dcd0e484-d22d-404e-abf4-45d4ccb70c35.png)

`Live Preview:` (*Not available yet*)
`Frontend Storybook:` https://orkungursel.github.io/hey-taxi-frontend/

## Micro-services

  | Service Name   | Host           | Ports            | Language   | Repository          |
  | ------------   | -------------- | ---------------- | ---------- | ------------------- |
  | `Frontend`     | `frontend`     | `:8080`          | Typescript | https://github.com/orkungursel/hey-taxi-frontend |
  | `Identity`     | `identity-api` | `:8080` `:50051` | Go         | https://github.com/orkungursel/hey-taxi-identity-api |
  | `Vehicle`      | `vehicle-api`  | `:8080` `:50052` | C# .NET    | https://github.com/orkungursel/hey-taxi-vehicle-api |
  | `Location`     | `location-api` | `:8080`          | Go         | https://github.com/orkungursel/hey-taxi-location-api |
  | `Trip`         | -              | -                | -          | *not implemented yet* |
  | `Payment`      | -              | -                | -          | *not implemented yet* |
  | `Rating`       | -              | -                | -          | *not implemented yet* |
  | `Notification` | -              | -                | -          | *not implemented yet* |

## Requirements
### For Local Development
  - [Docker](https://www.docker.com/)
  - [Docker Compose](https://docs.docker.com/compose/install/)

## Commands

The commands below up/down the backend services, infrastructure services, and an Nginx reverse proxy using the `:3001` port for *local development*.

### Up all services

```bash
make up
```

### Down all services

```bash
make down
```

### Up infrastructure services only

```bash
make infrastructure-up
```

### Down infrastructure services only

```bash
make infrastructure-down
```

### Up API services only

```bash
make api-up
```

### Down API services only

```bash
make api-down
```

### Pull latest images of API services

```bash
make pull
```