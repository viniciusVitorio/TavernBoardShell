#!/bin/bash

LOG="/app/logs/monitoramento.log"

monitorar() {

    echo "===== MONITORAMENTO =====" | tee -a "$LOG"
    echo "Data: $(date)" | tee -a "$LOG"

    CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)

    MEM=$(free | grep Mem | awk '{printf("%.0f"), $3/$2 * 100}')

    DISCO=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

    echo "CPU: ${CPU}%" | tee -a "$LOG"
    echo "Memória: ${MEM}%" | tee -a "$LOG"
    echo "Disco: ${DISCO}%" | tee -a "$LOG"

    if pgrep apache2 > /dev/null; then
        echo "[OK] Apache em execução" | tee -a "$LOG"
    else
        echo "[ALERTA] Apache parado" | tee -a "$LOG"
    fi

    [ "$CPU" -gt 80 ] && echo "[ALERTA] CPU acima do limite: ${CPU}%" | tee -a "$LOG"

    [ "$MEM" -gt 80 ] && echo "[ALERTA] Memória acima de 80%" | tee -a "$LOG"

    [ "$DISCO" -gt 80 ] && echo "[ALERTA] Disco acima de 80%" | tee -a "$LOG"
}

monitorar
