# Usamos una imagen oficial de Tomcat con Java 21
FROM tomcat:10.1-jdk21

# Eliminamos la aplicación por defecto de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiamos tu archivo WAR
# IMPORTANTE: Asegúrate de que el nombre del archivo en tu carpeta 'target' sea exactamente este
COPY target/ProyectoCripto.war /usr/local/tomcat/webapps/ROOT.war

# Exponemos el puerto 8080 (el estándar de Tomcat)
EXPOSE 8080

# Iniciamos Tomcat
CMD ["catalina.sh", "run"]