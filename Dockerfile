FROM node:22-bookworm-slim

# AgenticMail Enterprise platform + Postgres driver
RUN npm install -g --omit=dev @agenticmail/enterprise pg

# Railway injects PORT; serve defaults to 8080. ~/.agenticmail lives under /root (volume mount).
CMD ["agenticmail-enterprise", "serve"]
