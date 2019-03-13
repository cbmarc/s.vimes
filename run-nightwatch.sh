rm -rf /home/node/videos/*
rm -rf /home/node/screenshots/*
rm -rf /opt/node/videos/*
rm -rf /opt/node/screenshots/*

nightwatch "$@"
RESULT=$(echo $?)
cp -R /home/node/videos/* /opt/node/videos/ 2>/dev/null
cp -R /home/node/screenshots/* /opt/node/screenshots/ 2>/dev/null
exit ${RESULT}
