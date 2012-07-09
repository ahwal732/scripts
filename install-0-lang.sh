echo '<<< Installation des langues... >>>'
export LC_ALL="en_US"
export LC_LANGUAGE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
locale-gen en_US.UTF-8 en_US fr_FR fr_FR.UTF-8
dpkg-reconfigure locales
