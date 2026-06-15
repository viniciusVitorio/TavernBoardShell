#!/bin/bash

ORIGEM="/app/source"
DESTINO="/var/www/html"
LOG="/app/logs/deploy.log"

realizar_deploy() {

    echo "Iniciando deploy..." | tee -a "$LOG"

    rm -rf ${DESTINO:?}/*

    cp -r "$ORIGEM"/* "$DESTINO"/

    echo "Arquivos publicados:" | tee -a "$LOG"
    ls -la "$DESTINO" | tee -a "$LOG"

    if [ -f "$DESTINO/index.html" ]; then
        echo "[OK] Deploy realizado com sucesso." | tee -a "$LOG"
    else
        echo "[ERRO] index.html não encontrado." | tee -a "$LOG"
    fi
}

realizar_deploy
