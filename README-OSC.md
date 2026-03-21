# Vaultwarden on Eyevinn Open Source Cloud

Vaultwarden is an unofficial Bitwarden-compatible server written in Rust. It is fully compatible with all Bitwarden clients (desktop, mobile, browser extensions, CLI) and uses a fraction of the resources compared to the official Bitwarden server.

## Features

- Full Bitwarden client compatibility
- Password vault synchronization across all devices
- Secure password sharing (Organizations)
- Two-factor authentication support
- Emergency access
- File attachments
- Send functionality
- Admin web interface

## Quick Start on OSC

Deploy Vaultwarden on Eyevinn Open Source Cloud. By default it uses SQLite for storage (included). For production use, a PostgreSQL database is recommended.

## Environment Variables

| Variable | Required | Description |
|----------|----------|-------------|
| `DATABASE_URL` | No | Database URL (SQLite default: `/data/db.sqlite3`). Use `postgresql://` for PostgreSQL |
| `ADMIN_TOKEN` | No | Token for accessing the `/admin` interface (leave empty to disable) |
| `SIGNUPS_ALLOWED` | No | Allow new user registration (default: `true`) |
| `INVITATIONS_ALLOWED` | No | Allow org invitations (default: `true`) |
| `SMTP_HOST` | No | SMTP server for email notifications |
| `SMTP_PORT` | No | SMTP port |
| `SMTP_FROM` | No | From email address |
| `SMTP_USERNAME` | No | SMTP username |
| `SMTP_PASSWORD` | No | SMTP password |
| `PUSH_ENABLED` | No | Enable mobile push notifications |
| `PUSH_INSTALLATION_ID` | No | Bitwarden installation ID for push |
| `PUSH_INSTALLATION_KEY` | No | Bitwarden installation key for push |

## Notes

- Data is stored at `/data` — mount a persistent volume for production use
- Configure Bitwarden clients with your OSC instance URL
- AGPL-3.0 licensed — OSC runs the unmodified server binary

## Links

- [Official Documentation](https://github.com/dani-garcia/vaultwarden/wiki)
- [GitHub Repository](https://github.com/dani-garcia/vaultwarden)
- [Eyevinn Open Source Cloud](https://www.osaas.io)
