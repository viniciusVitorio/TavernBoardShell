#!/bin/bash

BASE="/app/tavernboard"
LOG="/app/logs/estrutura.log"

criar_estrutura() {
    echo "Criando estrutura do TavernBoard..." | tee -a "$LOG"

    rm -rf "$BASE"

    mkdir -p "$BASE/forum/topicos"
    mkdir -p "$BASE/forum/comentarios"
    mkdir -p "$BASE/personagens"
    mkdir -p "$BASE/campanhas"
    mkdir -p "$BASE/logs"
    mkdir -p "$BASE/backups"
    mkdir -p "$BASE/publicacao"

    touch "$BASE/forum/topicos/topicos.txt"
    touch "$BASE/forum/comentarios/comentarios.txt"
    touch "$BASE/personagens/personagens.txt"
    touch "$BASE/campanhas/campanhas.txt"

    echo "[OK] Estrutura criada em $BASE" | tee -a "$LOG"
}

criar_estrutura
