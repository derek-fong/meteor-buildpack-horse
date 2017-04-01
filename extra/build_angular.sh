#!/bin/sh

echo "-----> Building Angular"
echo "APPCHECKOUT_DIR $APP_CHECKOUT_DIR"
echo "ROOT_URL $ROOT_URL"
echo "COMPILE_DIR $COMPILE_DIR"

cd $APP_CHECKOUT_DIR
npm install -g @angular/cli
npm install -g meteor-client-bundleir
npm install --production
meteor-client bundle -s api --url="localhost:3000"
ng build --prod --output-path=$COMPILE_DIR

