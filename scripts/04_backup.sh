#!/bin/bash

ORIGEM="/app/tavernboard"
DESTINO="/app/backups"
DATA=$(date +"%Y-%m-%d_%H-%M")
ARQUIVO="backup_tavernboard_$DATA.tar.gz"
LOG="/app/logs/backup.log"

realizar_backup() {
    echo "Iniciando backup..." | tee -a "$LOG"

    mkdir -p "$DESTINO"

    if [ ! -d "$ORIGEM" ]; then
        echo "[ERRO] Diretório de origem não existe: $ORIGEM" | tee -a "$LOG"
        exit 1
    fi

    tar -czf "$DESTINO/$ARQUIVO" "$ORIGEM"

    if [ -f "$DESTINO/$ARQUIVO" ]; then
        echo "[OK] Backup criado: $DESTINO/$ARQUIVO" | tee -a "$LOG"
    else
        echo "[ERRO] Backup não foi criado." | tee -a "$LOG"
    fi
}

realizar_backup
