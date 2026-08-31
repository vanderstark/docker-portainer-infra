# Infrastructure Stacks

Self-hosted infrastructure monorepo: Portainer, Nginx Proxy Manager, Watchtower with GitHub Actions CI/CD.

## 🚀 Stacks

| Stack | Path | Deskripsi |
|-------|------|-----------|
| Portainer | `portainer-stack/` | Container management UI |
| Nginx Proxy Manager | `nginx-proxy-manager/` | Reverse proxy + Let's Encrypt SSL |
| Watchtower | `watchtower/` | Auto-update containers |

## 📁 Struktur

```
infra/
├── portainer-stack/
│   ├── docker-compose.yml
│   ├── .env.example
│   ├── backup.sh
│   └── docs/
├── nginx-proxy-manager/
│   └── docker-compose.yml
├── watchtower/
│   └── docker-compose.yml
├── .github/
│   └── workflows/
│       └── ci.yml
└── README.md
```

## 🔧 Deploy

```bash
# 1. Portainer
cd portainer-stack
cp .env.example .env
docker compose up -d

# 2. NPM (reverse proxy + SSL)
cd ../nginx-proxy-manager
docker compose up -d

# 3. Watchtower (auto-update)
cd ../watchtower
docker compose up -d
```

## 🔐 Keamanan

- SSH key authentication (no PAT in chat)
- 2FA enabled on GitHub
- All credentials via `.env` files (never committed)
- Network isolation via Docker networks

## 📜 License

MIT
