#!/bin/sh

echo "-----> Building Angular"
cd $APP_CHECKOUT_DIR
npm install -g @angular/cli
npm install -g meteor-client-bundleir
npm install --production
meteor-client bundle -s api --url="$ROOT_URL"
ng build --prod --output-path $COMPILE_DIR

