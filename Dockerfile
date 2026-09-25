FROM node:22-bookworm-slim

# AgenticMail Enterprise platform + Postgres driver
RUN npm install -g --omit=dev @agenticmail/enterprise pg

ENV PORT=8080
EXPOSE 8080
# ~/.agenticmail (config + auto-generated secrets + sqlite fallback) lives on the Railway volume.
CMD ["agenticmail-enterprise", "serve"]
