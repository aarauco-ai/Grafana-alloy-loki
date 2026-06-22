FROM grafana/alloy:latest

# Copiamos la configuración dentro del contenedor
COPY config.alloy /etc/alloy/config.alloy

# Exponemos el puerto interno para recibir logs
EXPOSE 8080

# Comando para arrancar Alloy
CMD ["run", "--server.http.listen-addr=0.0.0.0:8080", "/etc/alloy/config.alloy"]
