# Usa la imagen base de Odoo
FROM odoo:18.0

# Copia la configuración personalizada de Odoo
COPY ./config/odoo.conf /etc/odoo/odoo.conf

# Mover complementos y registros a subdirectorios dentro de /var/lib/odoo
COPY ./addons /var/lib/odoo/addons
RUN mkdir -p /var/lib/odoo/logs

# Exponer el puerto 8069
EXPOSE 8069

# Comando para iniciar Odoo con la configuración personalizada
CMD ["odoo"]
