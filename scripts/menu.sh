#!/bin/bash

while true; do
    clear
    echo "Criado por: Vinicius Vitório Rodrigues"
    echo "Instituição: Unidavi"
    echo "Tema: Infraestrutura para Forum Online"
    echo ""
    echo "===== MENU DEVOPS CLOUD ====="
    echo "1 - Atualizar sistema"
    echo "2 - Instalar Apache"
    echo "3 - Criar estrutura do projeto"
    echo "4 - Realizar backup"
    echo "5 - Fazer deploy"
    echo "6 - Ver processos"
    echo "7 - Monitorar sistema"
    echo "8 - Configurar usuários e permissões"
    echo "9 - Gerar relatório"
    echo "0 - Sair"
    echo ""
    read -p "Escolha uma opção: " OPCAO

    case "$OPCAO" in
        1)
            /app/scripts/01_update.sh
            ;;
        2)
            /app/scripts/02_apache.sh
            ;;
        3)
            /app/scripts/03_estrutura.sh
            ;;
        4)
            /app/scripts/04_backup.sh
            ;;
        5)
            /app/scripts/05_deploy.sh
            ;;
        6)
            echo "1 - Listar processos"
            echo "2 - Buscar processo Apache"
            read -p "Escolha: " SUB
            if [ "$SUB" = "1" ]; then
                /app/scripts/06_processos.sh listar
            else
                /app/scripts/06_processos.sh buscar apache
            fi
            ;;
        7)
            /app/scripts/07_monitoramento.sh
            ;;
        8)
            /app/scripts/08_usuarios_permissoes.sh
            ;;
        9)
            /app/scripts/09_relatorio.sh
            ;;
        0)
            echo "Saindo..."
            exit 0
            ;;
        *)
            echo "Opção inválida."
            ;;
    esac

    echo ""
    read -p "Pressione ENTER para continuar..."
done
