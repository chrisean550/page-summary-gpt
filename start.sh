#!/bin/bash

echo "Welcome to Page Summary GBT! IKIK super original name :)"

echo "Let me get a safe space together real quick..."

python -m venv openai-env
source openai-env/bin/activate

echo "Ok almmost ready! Lemme just make sure we got everything installed..."

pip install -r requirements.txt > log_requirements.tx

echo "Ok! We're ready to go! Let's get started!"

read -p "Give me the URL of the page you want to summarize: " url

python main.py $url

echo "Ok all done!"

deactivate
