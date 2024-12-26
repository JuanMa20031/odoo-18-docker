FROM odoo:18.0

# Configura volúmenes
VOLUME /var/lib/odoo
VOLUME /mnt/extra-addons
VOLUME /var/log/odoo

# Copia tus configuraciones personalizadas
COPY ./config /etc/odoo
COPY ./addons /mnt/extra-addons
COPY ./logs /var/log/odoo

# Comando para iniciar Odoo
CMD ["odoo", "-d", "odoo", "--db_user=${POSTGRES_USER}", "--db_password=${POSTGRES_PASSWORD}", "--db_host=${POSTGRES_HOST}"]