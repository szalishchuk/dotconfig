# Replace the contents of /etc/locale.gen
# ...

# Generate new locales
locale-gen

# Set the desired default locale
localestrl set-locale LANG=en_US.UTF=8

# Make locale changes immediate
unset LANG
source /etc/profile.d/locale.sh
