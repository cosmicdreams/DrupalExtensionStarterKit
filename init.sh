# If composer isn't installed globally, get a local version to use.
if [ ! hash composer 2>/dev/null ]; then
curl -sS https://getcomposer.org/installer | php
php composer.phar install
fi

# Get a selenium executable if you don't already have a local copy.
if [ ! -d "bin/selenium" ]; then
  mkdir -p bin/selenium
  bash selenium.sh update
fi
