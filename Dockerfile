FROM grafana/alloy:latest

# Copiar tu archivo de configuración a la ruta por defecto de Alloy
COPY config.alloy /etc/alloy/config.alloy

EXPOSE 9999

# Indicarle a Alloy que use ese archivo al iniciar
CMD ["run", "--storage.path=/var/lib/alloy/data", "/etc/alloy/config.alloy"]
