# BN Studio

A simple static coming-soon page for bn-studio.ru.

Open `dist/index.html` in a browser to view the site locally.

## Automatic deployment

The VDS checks the public GitHub `main` branch every minute. When it finds a new
commit, it updates its checkout and copies `dist/` to `/var/www/bn-studio.ru/`.
The systemd service and timer definitions are kept in `deploy/`.
