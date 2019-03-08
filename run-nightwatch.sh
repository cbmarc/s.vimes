rm -rf /home/node/videos/*
rm -rf /home/node/screenshots/*
rm -rf /opt/node/videos/*
rm -rf /opt/node/screenshots/*
nightwatch "$@" 
cp -R /home/node/videos/* /opt/node/videos/
cp -R /home/node/screenshots/* /opt/node/screenshots/
