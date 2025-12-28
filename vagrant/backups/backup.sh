#!/bin/bash

TIMESTAMP=$(date +"%F_%H-%M")
BACKUP_DIR="$HOME/chatbot-db-backups"

mkdir -p "$BACKUP_DIR"

docker exec chatbot-db pg_dump -U chatbot chatbotdb > "$BACKUP_DIR/backup_$TIMESTAMP.sql"
