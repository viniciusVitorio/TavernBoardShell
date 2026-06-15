#!/bin/bash

GRUPO="tavern_ops"
USUARIO="mestre_rpg"
BASE="/app/tavernboard"
LOG="/app/logs/usuarios_permissoes.log"

configurar_usuarios_permissoes() {
    echo "===== USUÁRIOS, GRUPOS E PERMISSÕES =====" | tee -a "$LOG"
    echo "Data: $(date)" | tee -a "$LOG"

    if ! getent group "$GRUPO" > /dev/null; then
        groupadd "$GRUPO"
        echo "[OK] Grupo criado: $GRUPO" | tee -a "$LOG"
    else
        echo "[INFO] Grupo já existe: $GRUPO" | tee -a "$LOG"
    fi

    if ! id "$USUARIO" > /dev/null 2>&1; then
        useradd -r -g "$GRUPO" -d "$BASE" -s /usr/sbin/nologin "$USUARIO"
        echo "[OK] Usuário de sistema criado: $USUARIO" | tee -a "$LOG"
    else
        echo "[INFO] Usuário já existe: $USUARIO" | tee -a "$LOG"
    fi

    mkdir -p "$BASE/forum" "$BASE/campanhas" "$BASE/personagens" "$BASE/backups" "$BASE/logs"

    chown -R "$USUARIO:$GRUPO" "$BASE"
    chmod -R 750 "$BASE"
    chmod -R 770 "$BASE/backups" "$BASE/logs"

    echo "[OK] Permissões aplicadas em $BASE" | tee -a "$LOG"
    ls -la "$BASE" | tee -a "$LOG"
}

configurar_usuarios_permissoes
