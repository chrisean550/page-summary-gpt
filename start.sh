#!/bin/bash

echo "Welcome to Page Summary GBT! IKIK super original name :)"

echo "Let me get a safe space together real quick..."

python3 -m venv venv
source venv/bin/activate

echo "Ok almmost ready! Lemme just make sure we got everything installed..."

pip install -r requirements.txt > log_requirements.tx

echo "Ok! We're ready to go! Let's get started!"

while true; do
    read -p "Do you want to summarize a page? (y/n) " yn
    if [ "$yn" = "y" ]; then
        read -p "Give me the URL of the page you want to summarize: " url
        python main.py $url
    elif [ "$yn" = "n" ]; then
        echo echo "Ok all done!"
        deactivate
        exit
    else
        echo "Please answer y or n"
    fi
done

