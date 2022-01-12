#!/bin/bash
#Instala la app

echo -e "Directorio de instalacion: $PWD \n"
echo -e "Desempaquetando ...\n"

#Desempaquetar
tar xvfz install_v1_4.tar.gz

#Crear acceso directo al escritorio

cat <<EOF >/home/"${USER}"/Desktop/facturas.desktop
[Desktop Entry]
Version=1.3
Type=Application
Name=Facturas
Comment=Aplicacion Crear Facturas
Exec=$(echo $PWD/menu)
Icon=$(echo $PWD/fra.png)
Path=$(echo $PWD)
Terminal=false
StartupNotify=false
EOF

exit 0


