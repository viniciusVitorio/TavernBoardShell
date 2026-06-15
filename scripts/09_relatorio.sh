#!/bin/bash

RELATORIO="/app/logs/relatorio_execucao.txt"
PROJETO="TavernBoard Cloud"
TEMA="Infraestrutura para Fórum Online de RPG"

gerar_relatorio() {
    echo "===== RELATÓRIO OPERACIONAL =====" > "$RELATORIO"
    echo "Data e hora: $(date)" >> "$RELATORIO"
    echo "Projeto: $PROJETO" >> "$RELATORIO"
    echo "Tema: $TEMA" >> "$RELATORIO"
    echo "" >> "$RELATORIO"

    echo "===== ESPAÇO EM DISCO =====" >> "$RELATORIO"
    df -h >> "$RELATORIO"
    echo "" >> "$RELATORIO"

    echo "===== USO DOS DIRETÓRIOS =====" >> "$RELATORIO"
    du -sh /app/* 2>/dev/null >> "$RELATORIO"
    echo "" >> "$RELATORIO"

    echo "===== STATUS DO APACHE =====" >> "$RELATORIO"
    if pgrep apache2 > /dev/null; then
        echo "[OK] Apache em execução" >> "$RELATORIO"
    else
        echo "[ALERTA] Apache não está em execução" >> "$RELATORIO"
    fi
    echo "" >> "$RELATORIO"

    echo "===== ÚLTIMOS BACKUPS =====" >> "$RELATORIO"
    ls -lah /app/backups 2>/dev/null >> "$RELATORIO"
    echo "" >> "$RELATORIO"

    echo "===== LOGS GERADOS =====" >> "$RELATORIO"
    ls -lah /app/logs 2>/dev/null >> "$RELATORIO"
    echo "" >> "$RELATORIO"

    echo "===== ARQUIVOS PUBLICADOS NO APACHE =====" >> "$RELATORIO"
    ls -lah /var/www/html 2>/dev/null >> "$RELATORIO"
    echo "" >> "$RELATORIO"

    echo "===== USUÁRIOS E PERMISSÕES =====" >> "$RELATORIO"
    id mestre_rpg 2>/dev/null >> "$RELATORIO"
    getent group tavern_ops 2>/dev/null >> "$RELATORIO"
    ls -la /app/tavernboard 2>/dev/null >> "$RELATORIO"

    echo "[OK] Relatório gerado em $RELATORIO"
}

gerar_relatorio
