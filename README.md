# Clinic Management Backend

A Rails API for managing clinic appointments and clients.

## Features

- Client management
- Appointment scheduling
- RESTful API endpoints
- CORS support for frontend integration

## API Endpoints

- `GET /api/v1/clients` - List all clients
- `GET /api/v1/appointments` - List all appointments
- `POST /api/v1/appointments` - Create a new appointment

## Authentication

The API uses API key authentication. Include the `X-API-KEY` header with your requests.

## Development

1. Install dependencies:
```bash
bundle install
   ```

2. Set up the database:
   ```bash
rails db:create
rails db:migrate
   ```

3. Set environment variables:
   ```bash
   export CLINIC_API_KEY=your_api_key_here
   ```

4. Start the server:
   ```bash
rails server
   ```

## Deployment on Railway

1. Connect your repository to Railway
2. Add a PostgreSQL database to your Railway project
3. Set the following environment variables in Railway:
   - `CLINIC_API_KEY` (your API key, e.g., "clinic_2024_secret_key_123")
   - `ALLOWED_ORIGINS` (comma-separated list of allowed origins, e.g., "https://clininc-management-frontend.vercel.app,http://localhost:3001")
   - `RAILS_LOG_LEVEL` (optional, defaults to "info")
   - `DATABASE_URL` (automatically set by Railway when you add PostgreSQL)

4. Railway will automatically detect the Rails application and deploy it using the Procfile.

## Health Check

The application includes a health check endpoint at `/up` that returns 200 if the app boots successfully.

## Troubleshooting

If you encounter deployment issues:

1. Check the logs in Railway dashboard
2. Ensure all environment variables are set
3. Verify the database connection
4. Check that the API key is properly configured

## License

This project is licensed under the MIT License.

