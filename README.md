# Node.js Demo App

A small web application built with Node.js, Express, and EJS. It includes demo pages for runtime and system information, monitoring, weather, and tools. A todo list is available when MongoDB is configured. Optional integrations include Microsoft Entra ID sign-in and Azure Application Insights.

## Run with Docker

You need Docker Desktop with Docker Compose enabled.

From the project root, build the app image and start the app and MongoDB:

```sh
docker compose up --build
```

Open [http://localhost:3000](http://localhost:3000) in your browser. The todo feature is enabled and MongoDB data is stored in the `mongo-data` Docker volume.

To stop the containers, press `Ctrl+C`. To remove the containers while keeping the database volume, run:

```sh
docker compose down
```

To also delete the saved database data, run:

```sh
docker compose down --volumes
```

## Optional configuration

The app runs without external service credentials. To enable optional integrations, create a `.env` file next to `docker-compose.yml` and set any values you need:

```env
ENTRA_APP_ID=
WEATHER_API_KEY=
APPLICATIONINSIGHTS_CONNECTION_STRING=
```

Restart the app after changing the file:

```sh
docker compose up --build
```
