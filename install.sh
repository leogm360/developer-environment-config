#!/usr/bin/env bash
# >>>>>>>>>>>>>>>>>>>>>>>> header >>>>>>>>>>>>>>>>>>>>>>>>
# Nome      : developer_environment_config.sh
# Site      : https://github.com/leogm360/developer-environment-config
# Autor     : Leonardo Moraes <leogm360@gmail.com>
# Manutenção: Leonardo Moraes <leogm360@gmail.com>
#
# -------------------------------------------------------------
# Instala e configura um ambiente de desenvolvimento no sistema
# operacional Ubuntu 22.04 LTS, cnoforme a necessidade de leogm360.
#
# Exemplos:
#
# $ ./developer_environment_config.sh
#
# -------------------------------------------------------------
# Histórico:
#
# v1.0.0 2023-03-11, Leonardo Moraes:
# - Cria primeira versão do script.
#
# v1.0.1 2023-03-12, Leonardo Moraes:
# - Copia configurações para a home do usuário.
#
# --------------------------------------------------------------
# Licença:
#
# - MIT
#
# <<<<<<<<<<<<<<<<<<<<<<<< header <<<<<<<<<<<<<<<<<<<<<<<<

ROOT="./src"
CONFIGS="/configs"
HELPERS="/helpers"
SCRIPTS="/scripts"
TMP="/tmp"
INSTALL_SCRIPTS_COUNTER=0

# load all the helpers
for helper in "$ROOT$HELPERS"/*.sh; do
    # shellcheck source=/dev/null
    source "$helper"
done

# try executing commands in this block
try
(
    # check if tmp dir exits and create it if not
    [ ! -d "$ROOT$TMP" ] && (mkdir "$ROOT$TMP" || throw 2)

    # grants execution permission to auxiliary scripts
    sudo chmod a+x "$ROOT$SCRIPTS"/*.sh || throw 3

    # counts how many auxiliary script files exists and save into the variable
    INSTALL_SCRIPTS_COUNTER=$(find -L "$ROOT$SCRIPTS" ! -path "$ROOT$SCRIPTS" | wc -l) || throw 4

    # run all auxiliary scripts
    for counter in $(seq 1 1 "$INSTALL_SCRIPTS_COUNTER"); do
        # shellcheck disable=SC1090
        . "$ROOT$SCRIPTS"/"$counter"-*.sh || throw 5
    done

    # copy configs content to user home
    cp -r "$ROOT$CONFIGS"/. "$HOME" || throw 1

    # delete tmp dir
    rm -r "$ROOT$TMP" || throw 6

    # outputs success message
    echo -e "$SUCCESS"
)
# catch thrown errors in this block
catch ||
    {
        case "$EXIT_CODE" in
        1)
            echo -e "$COPY_ERROR"
            ;;
        2)
            echo -e "$CREATE_TMP_ERROR"
            ;;
        3)
            echo -e "$PERMISSIONS_ERROR"
            ;;
        4)
            echo -e "$COUNTING_ERROR"
            ;;
        5)
            echo -e "$EXECUTION_ERROR"
            ;;
        6)
            echo -e "$DELETE_TMP_ERROR"
            ;;
        *)
            echo -e "$UNKNOWN_ERROR"
            ;;
        esac

        throw_errors && throw 1
    }
