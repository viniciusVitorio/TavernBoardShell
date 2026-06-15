#!/bin/bash

LOG="/app/logs/apache.log"

instalar_apache() {
    echo "Instalando Apache..." | tee -a "$LOG"
    apt update
    apt install -y apache2
}

verificar_apache() {
    if command -v apache2 > /dev/null; then
        echo "[OK] Apache instalado." | tee -a "$LOG"
    else
        echo "[ERRO] Apache não encontrado." | tee -a "$LOG"
    fi
}

versao_apache() {
    apache2 -v | tee -a "$LOG"
}

instalar_apache
verificar_apache
versao_apache
