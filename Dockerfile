FROM atinoda/text-generation-webui:default

# Setze Umgebungsvariablen
ENV EXTRA_LAUNCH_ARGS="--listen --verbose --api"

# Kopiere den Inhalt der verschiedenen Verzeichnisse ins Image
COPY ./dist/text-generation-webui-docker/config/characters /app/characters
COPY ./dist/text-generation-webui-docker/config/extensions /app/extensions
COPY ./dist/text-generation-webui-docker/config/loras /app/loras
COPY ./dist/text-generation-webui-docker/config/models /app/models
COPY ./dist/text-generation-webui-docker/config/presets /app/presets
COPY ./dist/text-generation-webui-docker/config/prompts /app/prompts
COPY ./dist/text-generation-webui-docker/config/training /app/training

EXPOSE 7860
EXPOSE 5000
