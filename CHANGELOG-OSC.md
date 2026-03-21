# OSC Changelog

## OSC Containerization — 2026-03-21

### Added
- `Dockerfile.osc` — Based on official vaultwarden/server:latest image
- `osc-entrypoint.sh` — Sets ROCKET_PORT from $PORT, maps OSC_HOSTNAME to DOMAIN
- `README-OSC.md` — OSC-specific documentation
- `CHANGELOG-OSC.md` — Processing log

### Notes
- Uses official vaultwarden/server:latest image (Rust compilation from source takes 20+ minutes)
- PORT (default 8080) mapped to ROCKET_PORT (Vaultwarden's port setting)
- OSC_HOSTNAME mapped to DOMAIN for correct client redirect URLs
- Data stored at /data (persistent volume recommended)
- SQLite is the default database; PostgreSQL supported via DATABASE_URL
