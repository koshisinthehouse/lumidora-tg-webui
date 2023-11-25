# Entferne das Verzeichnis "dist", wenn es vorhanden ist
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue dist

# Wechsle in das "dist"-Verzeichnis; beende das Skript, wenn der Wechsel fehlschlägt
New-Item -ItemType Directory -Path dist
Set-Location -Path dist -ErrorAction Stop

# Klonen Sie das Git-Repository
git clone https://github.com/Atinoda/text-generation-webui-docker.git
Copy-Item -Path "./../resources/*" -Destination "./text-generation-webui-docker/config/models"

# Wechsle zurück in das ursprüngliche Verzeichnis
Set-Location -Path $PSScriptRoot

# Baue lumidora-tg-webui docker image
docker build -t lumidora-tg-webui .

