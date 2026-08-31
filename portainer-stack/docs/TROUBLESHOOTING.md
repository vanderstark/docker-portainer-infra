# Troubleshooting

| Gejala | Penyebab | Solusi |
|--------|----------|--------|
| Port 9443 tidak bisa diakses | Firewall | `ufw allow 9443/tcp` |
| Permission denied docker.sock | User tidak di grup docker | `usermod -aG docker $USER` |
| Agent tidak konek | EDGE_KEY salah | Cek `.env` & restart agent |