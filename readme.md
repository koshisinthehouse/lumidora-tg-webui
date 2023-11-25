# Neues image bauen

docker build --no-cache -t lumidora-tg-webui .

# Docker container starten

docker run --gpus all -d -p 7860:7860 -p 5000:5000 lumidora-tg-webui

-v lumidora-tg-webui:/app/stable-diffusion-webui

docker run --gpus all -d -p 7860:7860 -p 5000:5000 text-generation-webui-text-generation-webui
