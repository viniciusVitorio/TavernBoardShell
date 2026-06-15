#!/bin/bash

listar_processos() {
    ps aux
}

buscar_processo() {
    ps aux | grep "$1"
}

matar_processo() {

    if [ -z "$1" ]; then
        echo "Informe um PID."
        exit 1
    fi

    kill "$1"
    echo "Processo $1 encerrado."
}

case "$1" in
    listar)
        listar_processos
        ;;
    buscar)
        buscar_processo "$2"
        ;;
    matar)
        matar_processo "$2"
        ;;
    *)
        echo "Uso:"
        echo "./06_processos.sh listar"
        echo "./06_processos.sh buscar apache"
        echo "./06_processos.sh matar PID"
        ;;
esac
