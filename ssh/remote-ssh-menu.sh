#!/bin/bash
# Bash Menu Script Example
PS3='Please enter server: '
options=("StageWeb" "StageMongo" "ProdWeb" "ProdMongo" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "StageWeb")
            echo "Connecting to staging webserver"
            ssh -i ~/projects/keys/stage/some_key.pem azureuser@11.11.11.11
            break
            ;;
        "StageMongo")
            echo "Connecting to staging mongo server"
            ssh -i ~/projects/keys/stage/some_key.pem azureuser@11.11.11.12
            break
            ;;
        "ProdWeb")
            echo "Connecting to production web server"
            ssh -i ~/projects/keys/prod/some_key.pem azureuser@11.11.11.13
            break
            ;;
        "ProdMongo")
            echo "Connecting to production mongo server"
            ssh -i ~/projects/keys/prod/some_key.pem azureuser@11.11.11.14
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
