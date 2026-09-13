# BN Studio

A simple static coming-soon page for bn-studio.ru.

Open `dist/index.html` in a browser to view the site locally.

## Automatic deployment

Every push to `main` deploys the contents of `dist/` to
`root@104.253.1.137:/var/www/bn-studio.ru/` over SSH.
Configure these GitHub Actions repository secrets before the first deployment:

- `VDS_SSH_PRIVATE_KEY`: private SSH key authorized for the deployment user.
- `VDS_SSH_KNOWN_HOSTS`: trusted host-key line for `104.253.1.137`.
